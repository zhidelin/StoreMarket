package com.huangyuan3h.StoreMarket.sinaAPI;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;


/**
 * 针对股票的实时查询
 * 
 * @author huangyuan
 * 
 */
public class SinaAPI {
	private static String SinaStoreMarketURL = "http://hq.sinajs.cn/list=";//sh601006
	private static String StoreCode;
	
	/**
	 * 使用这个方法获取当前数据
	 * @param StoreCode
	 * @return
	 */
	public static String[] GetStoreData(String StoreCode){
		SinaAPI.StoreCode=StoreCode;
		return formatStore(getData());
	}
	
	
	/**
	 * 获取数据或error返回null
	 * @param Data
	 * @return
	 */
 	private static String[] formatStore(String Data) {
		String[] x = Data.split("\"");
		if (x.length > 2)
			return x[1].split(",");
		else
			return null;
	}

	/**
	 * 获得股票的基本信息，用string
	 * 
	 * @return
	 */
	private static String getData() {

		String result = null;
		StringBuilder responseBuilder = null;
		BufferedReader reader = null;
		OutputStreamWriter wr = null;
		URL url;

		try {
			url = new URL(SinaStoreMarketURL+StoreCode);
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setDoOutput(true);
			conn.setConnectTimeout(1000 * 5);
			conn.setRequestProperty("contentType", "GBK");
			conn.setRequestMethod("GET");
			wr = new OutputStreamWriter(conn.getOutputStream());
			wr.write("");
			wr.flush();
			reader = new BufferedReader(new InputStreamReader(
					conn.getInputStream(), "GBK"));
			responseBuilder = new StringBuilder();
			String line = null;
			while ((line = reader.readLine()) != null) {
				responseBuilder.append(line + "\n");
			}
			wr.close();
			reader.close();
			result = responseBuilder.toString();
		} catch (IOException e) {
			e.printStackTrace();
		}

		return result;
	}

	
	
	/***
	 * 股票名字
	 * 今日开盘价
	 * 昨日收盘价
	 * 当前价格
	 * 今日最高价
	 * 今日最低价
	 * 买一
	 * 卖一
	 * 成交的股票数
	 * 成交金额
	 * 
	 * @param args
	 */
	public static void main(String[] args) {
		String []x=GetStoreData("hk00493");	
		
		int i=1;
		for (String string : x) {
			System.out.println(i+":"+string);
			i++;
		}

	}

}
