package com.controller;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Map;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

import com.utils.ValidatorUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.annotation.IgnoreAuth;
import com.entity.OrdersEntity;
import com.service.OrdersService;

import com.entity.ChanpinxinxiEntity;
import com.entity.view.ChanpinxinxiView;

import com.service.ChanpinxinxiService;
import com.service.TokenService;
import com.utils.PageUtils;
import com.utils.R;
import com.utils.MD5Util;
import com.utils.MPUtil;
import com.utils.CommonUtil;
import com.service.StoreupService;
import com.entity.StoreupEntity;

/**
 * 产品信息
 * 后端接口
 * @author 
 * @email 
 * @date 2023-05-15 20:28:39
 */
@RestController
@RequestMapping("/chanpinxinxi")
public class ChanpinxinxiController {
    @Autowired
    private ChanpinxinxiService chanpinxinxiService;


    @Autowired
    private StoreupService storeupService;

    @Autowired
    private OrdersService ordersService;
    


    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,ChanpinxinxiEntity chanpinxinxi, 
                @RequestParam(required = false) Double pricestart,
                @RequestParam(required = false) Double priceend,
		HttpServletRequest request){

        EntityWrapper<ChanpinxinxiEntity> ew = new EntityWrapper<ChanpinxinxiEntity>();
                if(pricestart!=null) ew.ge("price", pricestart);
                if(priceend!=null) ew.le("price", priceend);

    	PageUtils page = chanpinxinxiService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, chanpinxinxi), params), params));
		request.setAttribute("data", page);
        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,ChanpinxinxiEntity chanpinxinxi, 
                @RequestParam(required = false) Double pricestart,
                @RequestParam(required = false) Double priceend,
		HttpServletRequest request){
        EntityWrapper<ChanpinxinxiEntity> ew = new EntityWrapper<ChanpinxinxiEntity>();
                if(pricestart!=null) ew.ge("price", pricestart);
                if(priceend!=null) ew.le("price", priceend);

    	PageUtils page = chanpinxinxiService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, chanpinxinxi), params), params));
		request.setAttribute("data", page);
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( ChanpinxinxiEntity chanpinxinxi){
       	EntityWrapper<ChanpinxinxiEntity> ew = new EntityWrapper<ChanpinxinxiEntity>();
      	ew.allEq(MPUtil.allEQMapPre( chanpinxinxi, "chanpinxinxi")); 
        return R.ok().put("data", chanpinxinxiService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(ChanpinxinxiEntity chanpinxinxi){
        EntityWrapper< ChanpinxinxiEntity> ew = new EntityWrapper< ChanpinxinxiEntity>();
 		ew.allEq(MPUtil.allEQMapPre( chanpinxinxi, "chanpinxinxi")); 
		ChanpinxinxiView chanpinxinxiView =  chanpinxinxiService.selectView(ew);
		return R.ok("查询产品信息成功").put("data", chanpinxinxiView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        ChanpinxinxiEntity chanpinxinxi = chanpinxinxiService.selectById(id);
		chanpinxinxi.setClicktime(new Date());
		chanpinxinxiService.updateById(chanpinxinxi);
        return R.ok().put("data", chanpinxinxi);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        ChanpinxinxiEntity chanpinxinxi = chanpinxinxiService.selectById(id);
		chanpinxinxi.setClicktime(new Date());
		chanpinxinxiService.updateById(chanpinxinxi);
        return R.ok().put("data", chanpinxinxi);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody ChanpinxinxiEntity chanpinxinxi, HttpServletRequest request){
    	chanpinxinxi.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(chanpinxinxi);

        chanpinxinxiService.insert(chanpinxinxi);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody ChanpinxinxiEntity chanpinxinxi, HttpServletRequest request){
    	chanpinxinxi.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(chanpinxinxi);

        chanpinxinxiService.insert(chanpinxinxi);
        return R.ok();
    }


    /**
     * 修改
     */
    @RequestMapping("/update")
    @Transactional
    public R update(@RequestBody ChanpinxinxiEntity chanpinxinxi, HttpServletRequest request){
        //ValidatorUtils.validateEntity(chanpinxinxi);
        chanpinxinxiService.updateById(chanpinxinxi);//全部更新
        return R.ok();
    }


    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        chanpinxinxiService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
	
	
	/**
     * 前端智能排序
     */
	@IgnoreAuth
    @RequestMapping("/autoSort")
    public R autoSort(@RequestParam Map<String, Object> params,ChanpinxinxiEntity chanpinxinxi, HttpServletRequest request,String pre){
        EntityWrapper<ChanpinxinxiEntity> ew = new EntityWrapper<ChanpinxinxiEntity>();
        Map<String, Object> newMap = new HashMap<String, Object>();
        Map<String, Object> param = new HashMap<String, Object>();
		Iterator<Map.Entry<String, Object>> it = param.entrySet().iterator();
		while (it.hasNext()) {
			Map.Entry<String, Object> entry = it.next();
			String key = entry.getKey();
			String newKey = entry.getKey();
			if (pre.endsWith(".")) {
				newMap.put(pre + newKey, entry.getValue());
			} else if (StringUtils.isEmpty(pre)) {
				newMap.put(newKey, entry.getValue());
			} else {
				newMap.put(pre + "." + newKey, entry.getValue());
			}
		}
		params.put("sort", "clicktime");
        params.put("order", "desc");
		PageUtils page = chanpinxinxiService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, chanpinxinxi), params), params));
        return R.ok().put("data", page);
    }

        /**
     * 协同算法（按用户购买推荐）
     */
    @RequestMapping("/autoSort2")
    public R autoSort2(@RequestParam Map<String, Object> params,ChanpinxinxiEntity chanpinxinxi, HttpServletRequest request){
        String userId = request.getSession().getAttribute("userId").toString();
        String goodtypeColumn = "chanpinleixing";
        List<OrdersEntity> orders = ordersService.selectList(new EntityWrapper<OrdersEntity>().eq("userid", userId).eq("tablename", "chanpinxinxi").orderBy("addtime", false));
        List<String> goodtypes = new ArrayList<String>();
        Integer limit = params.get("limit")==null?10:Integer.parseInt(params.get("limit").toString());
        List<ChanpinxinxiEntity> chanpinxinxiList = new ArrayList<ChanpinxinxiEntity>();
	//去重
    	List<OrdersEntity> ordersDist = new ArrayList<OrdersEntity>();
    	for(OrdersEntity o1 : orders) {
    		boolean addFlag = true;
    		for(OrdersEntity o2 : ordersDist) {
    			if(o1.getGoodid()==o2.getGoodid()|| o1.getGoodtype().equals(o2.getGoodtype())) {
    				addFlag = false;
    				break;
    			}
    		}
    		if(addFlag) ordersDist.add(o1);
    	}
        if(ordersDist!=null && ordersDist.size()>0) {
                for(OrdersEntity o : ordersDist) {
                        chanpinxinxiList.addAll(chanpinxinxiService.selectList(new EntityWrapper<ChanpinxinxiEntity>().eq(goodtypeColumn, o.getGoodtype())));
                }
        }
        EntityWrapper<ChanpinxinxiEntity> ew = new EntityWrapper<ChanpinxinxiEntity>();
	params.put("sort", "id");
	params.put("order", "desc");
        PageUtils page = chanpinxinxiService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, chanpinxinxi), params), params));
        List<ChanpinxinxiEntity> pageList = (List<ChanpinxinxiEntity>)page.getList();
        if(chanpinxinxiList.size()<limit) {
                int toAddNum = (limit-chanpinxinxiList.size())<=pageList.size()?(limit-chanpinxinxiList.size()):pageList.size();
                for(ChanpinxinxiEntity o1 : pageList) {
                    boolean addFlag = true;
                    for(ChanpinxinxiEntity o2 : chanpinxinxiList) {
                        if(o1.getId().intValue()==o2.getId().intValue()) {
                            addFlag = false;
                            break;
                        }
                    }
                    if(addFlag) {
                        chanpinxinxiList.add(o1);
                        if(--toAddNum==0) break;
                    }
                }
        } else if(chanpinxinxiList.size()>limit) {
            chanpinxinxiList = chanpinxinxiList.subList(0, limit);
        }
        page.setList(chanpinxinxiList);
        return R.ok().put("data", page);
    }







}
