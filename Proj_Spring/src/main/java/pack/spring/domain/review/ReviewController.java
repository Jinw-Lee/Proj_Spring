package pack.spring.domain.review;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import pack.spring.domain.product.ProdService;

@Controller
public class ReviewController {
	
	@Autowired
	ReviewService reviewService;
	
	@Autowired
	ProdService prodService;
	
	@RequestMapping(value = "/reviewPost", method = RequestMethod.GET)
	public ModelAndView reviewPost(HttpSession session, @RequestParam("prodNum") int prodNum) {
		ModelAndView mav = new ModelAndView();
		if (session.getAttribute("user") != null) {
			mav.setViewName("review/reviewPost");
		} else {
			mav.setViewName("redirect:/");
		}
		return mav;
	}
	
	@RequestMapping(value = "/reviewPost", method = RequestMethod.POST)
	public ModelAndView reviewPost(MultipartFile imgFile, ReviewBoardBean ReviewBoardBean,
			HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();

		if (imgFile != null) {
			String oriFileName = imgFile.getOriginalFilename();
			int fileSize = (int) imgFile.getSize();
			String sysFileName = this.prodService.fileUpload(imgFile);
			ReviewBoardBean.setOriFileName(oriFileName);
			ReviewBoardBean.setFileSize(fileSize);
			ReviewBoardBean.setSysFileName(sysFileName);
		}

		String ip = request.getRemoteAddr();
		ReviewBoardBean.setIp(ip);
		
		String post_OK = reviewService.post(ReviewBoardBean);
		if (post_OK == null) {
			mav.setViewName("redirect:/reviewPost");
		} else {
			mav.setViewName("redirect:/reviewList");
		}
		return mav;
	}
	
}