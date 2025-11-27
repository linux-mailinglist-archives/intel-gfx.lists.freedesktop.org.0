Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B5091C8FC5C
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Nov 2025 18:51:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2731810E863;
	Thu, 27 Nov 2025 17:51:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TNXdEXSm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A810710E863;
 Thu, 27 Nov 2025 17:51:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764265874; x=1795801874;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=KLr9qaZeJ/8yWQDT0JeR3ERwRWgj9mM4IpnoXN0DqRQ=;
 b=TNXdEXSmxBRkdSjcnIiOtv5gk9ic1a2ygqWuIGmD5vu4ObJ7JUGLMmwR
 kN0Sa0GPQxswkhK1jEIX6ov+eeATehcyvHNoYgp/rGo+S8Ifa+1TDhUvk
 CMyouvge5O/Ks2rYbc+oJDODc9FVpWvn0VdsjeACdrhosCpJqz1jkXX6T
 h+xuTUxZno2CABgLcFCBX33sauveS+/KZkHPyxUFo54iIGsbWHSZ7fHZz
 lP18fPcJe7P4zbqSvbwoQvnYx5SF/PUkBvMHEORRets8/z/5C3Y7EUTZH
 //wDycusMr4UfhhkFQ74bFGtQ+uNh3/XFGAwqbl64PwvvugyeQaNADPfg w==;
X-CSE-ConnectionGUID: CCBYGkmZT3qCKzaFFSWZDQ==
X-CSE-MsgGUID: cU2z/QPGSzafu0BTn6DQZQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11626"; a="70174599"
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="70174599"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 09:51:14 -0800
X-CSE-ConnectionGUID: esf8fs/hT86Hwzpkq9vQgw==
X-CSE-MsgGUID: xSQCpGUCQJ6pwe+x+O81eQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="192409326"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 09:51:15 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 09:51:14 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 27 Nov 2025 09:51:14 -0800
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.23) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 09:51:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=e7tXW/IFYhvjK4SnNom8NDlLOltxp7MLK/jvLh9KHe9T5zWLgfooU0/DnI9SPGm3GDiEy+4FlxxVQJEaWAX2+fGI+zQ6fUMfZye4BIHJuUW2KooP63N3J5qEvHoRtxmlwgvyIh/whN8tIX+QU3ahkeFL4LpeeDFW/kbVp7sOJ/e4AsZ7zOr5Kf0b3QIZe/uIplz3E5LB/6gzH48SgVBI2nIQTaSWHhGvEk9rRU2OI8nfKIsPuOKmz0qlRwrM72lc30kr845w5HbJeZcDUQKCTe+zrkttNTU7x+AP/9VOrPuMxzXCfA1EG4yjHU1zvBSSkTIxKql2miZwdaVhvLFsmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=D9H9wqzR4WPNLDHOZ3J+gvqruWmuDnQj8P4CNBEtstk=;
 b=njEUPHhSPdOQu3xp4ZH5mQvIaciSTN88ce5Zl1YUBlBHU7BPJAQNNLnexjblkGb3qMxOJpjUYWLdUHIZoPlGOclIzquTVgwRBG752euNygpDSIbQSskJBJvThT1nvwJrZZWvZkNdn6D6pcMajcYFpMN9nuFausF7KVfgjdmhqTWhTt+TM80D2aP3SKpROqcodBlin9SL7KW9Jd9adVtfTENDPaZLG6w7G/utFMB+C3vniVpi8Js7bAFjL2L/j8TJivAq1qiNBd/+fL/cqVB/WzEOLDTkRTbIpyAlvxYZSdULgsXbsr4uDIiuTL1FRZjtBV2q6ySf96wbp13aw/+smQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CH3PR11MB7842.namprd11.prod.outlook.com (2603:10b6:610:128::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.12; Thu, 27 Nov
 2025 17:51:04 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9366.012; Thu, 27 Nov 2025
 17:51:04 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 12/50] drm/i915/dp: Account with pipe joiner max compressed
 BPP limit for DP-MST and eDP
Date: Thu, 27 Nov 2025 19:49:45 +0200
Message-ID: <20251127175023.1522538-13-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251127175023.1522538-1-imre.deak@intel.com>
References: <20251127175023.1522538-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO4P265CA0255.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:37c::20) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CH3PR11MB7842:EE_
X-MS-Office365-Filtering-Correlation-Id: 014b41df-9628-4c6a-9fe1-08de2ddd8943
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|1800799024|10070799003|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?hSogT82WoohEGbtVqGoE98GtnL/C41y6i5Uom09Y8ZDB68oXMFcCuu8bycpA?=
 =?us-ascii?Q?xZaH4rTg8VEyoCTU1LDw1uhwg5B3UmEZ/AwlmtoxU6PFA6VT32ki4WxspHYI?=
 =?us-ascii?Q?VfCRrVzjJ0xLy0UgTpdvY+qeJzYRy7aQlXk4R0W6xuJOikGGAknHJVtAbTIE?=
 =?us-ascii?Q?d9LPShhIrT3WkeO3U/FLVUzZPukkfEglBd3xfk/T+Kz9MsFlb4WGWPW9jF1A?=
 =?us-ascii?Q?da6Mzfc/2xoy+RekVPQ06qCluEB5cm7yKR+3nAO22ieAbE8c/O7GXXr+qXPZ?=
 =?us-ascii?Q?eDt8/sqrQj1cE9SkPpjyyPf43uVKWjWhjZuSiSFvbOd1gJk5t6W4SNfCto0F?=
 =?us-ascii?Q?JnQyNNA+z8WPH0KfRdOTBRW7M18Pszjnwosut/0eJm/hVXSpVMi12Yb/RHLr?=
 =?us-ascii?Q?Qfvq44qGU9++FY2P3S4ewvxGYuCcuH16Nv5QaYzyEBMi3ceh1uIMUM6+0ZnQ?=
 =?us-ascii?Q?dnVzm5jGpRwwBAUeNrnAGFUwDNdXaKPmQRP9yZz5t6f75Lr9YTCPm/t5nbi4?=
 =?us-ascii?Q?wabwMjHFbvMwGmHN80UxBuXd6j2+keaZYfiFyeilODg0cbCx7RSUi/6XVRH1?=
 =?us-ascii?Q?QT35eJXhXg50ApJZ6z9m3GfR2M1Vj5KJeAt1sP3kaHaC9V/VNMnPxblyPLH1?=
 =?us-ascii?Q?yQNvQumxr7Tdbe2SNNgHTLBAoFBvqOSfhR9g317mGHknoE8R0nv0TugeoVB8?=
 =?us-ascii?Q?HgjpzFjJxfg9aPP1QDbgWilSmqIZsJyv7PVpRbV9muvCZy3GtAJ0XhZF75jF?=
 =?us-ascii?Q?jySwWafahmWQc+/KRQsCFw9qewcO91acXHczaldO/vj0bhZhOD4pNQ3No6PY?=
 =?us-ascii?Q?ltkn3uRz46ai+2XeCx9GTzboMy/D2SUpklK7GpBDptcmHhunXKF3n7j8MR0y?=
 =?us-ascii?Q?sDKI9iJIzuS+fO40fHh6AV6+G/wRDV8hggM1hEfSW7SJMFR2IZynK8RqIPWR?=
 =?us-ascii?Q?hsx4/1JhQ9ujg+A2S6vPHsYKrhI8FBn5tGmaVCxZnPL5RzYPjrG3laaRsfNF?=
 =?us-ascii?Q?GZZUA5GicL2X/S2oQAwLzW3+oUH9MJm4BFYMZDYz77e9tWqLWbki8RivcAn2?=
 =?us-ascii?Q?4TOEHDKH+oJOKZUkIVLxRqrFSnDcWZsMGBJi82GpgEss3BQ99F9CTy3/5pLP?=
 =?us-ascii?Q?LVTQToso3bQFY2F5JVUEIsSXNtuNQKkqeyaC/NYYqZqyiWbnft/bBdBQfuop?=
 =?us-ascii?Q?rtmmI8K69/jZfjhoSQFicOXUcKip14pcOKf8tDqtICH5DKB+daOpDXVBj+fa?=
 =?us-ascii?Q?mhyPN2v24Pnh193pq3VOuuwzz2XyuZLSbK+ReFStIVksjneJ0KhkBWFq+v2B?=
 =?us-ascii?Q?pUNOb+IDizBWKYE7En3ednBjTBg7GJ5ssKOtlkpfLXk6POPpJygbaFYU4QDC?=
 =?us-ascii?Q?sbsXP6E0wqd0SYK0x6mAduandIip6oehTAW/vGElX3+DetMHPi10ewRAjioK?=
 =?us-ascii?Q?/ytWPwzppmzlyR0pr1d6vX4olEWUgT9i?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(10070799003)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?JS8dq9ug/VQtIdz+in8lpmUXnLWgWwEHtEz3337mrw2ikcQJ8lw31yR+JM+l?=
 =?us-ascii?Q?CmifqI9+yHBDL39A+M0v6ht4VVH5y1pctvnImB4hSQb7wmkdHdKTyy0JTK3F?=
 =?us-ascii?Q?GhIQXV1WGR5+Gn9VR1Z8xA2nHGLueFXwY81puKf8lBYmVgeW55FpnN/zKaxP?=
 =?us-ascii?Q?xJZEZ6HfP+yd0z93nRsBh8OnkBgk/IGPtfJRD44zJdY746sE/iuF+8VSW5yX?=
 =?us-ascii?Q?G+dwIx8L9o+b37ooqJ7/E3bvlpqvpzB5yo9qDk9rCrYb/ax+dQEqOywlVj+E?=
 =?us-ascii?Q?IxOd/LmvVDvToDAJwNGTZFOIQKR+qLkjGMa2CJ1NEGLZTOKIa8NYe4jIC8BZ?=
 =?us-ascii?Q?zQqe+owfSKkchsr2D0KV3gKd6AUVDqxw7JG5G1oMD7MCSeAVW1s5wgSNWM/S?=
 =?us-ascii?Q?iOZ6Es95VTVocxqhYlYmDp1obxV8GCyw93fqwznqzmt2tcUQlD4E0dPblrUr?=
 =?us-ascii?Q?erQjUNAJicYs5WTZSOtkYXU0YuCIKPCDi6L7jAQ5oMgH3csX6GSsFJIBHIgD?=
 =?us-ascii?Q?rZySj1qHimn/IZgR+513GUEUtbEY0B04PQI+FosmVafNx8glOa4iGS6EeBFS?=
 =?us-ascii?Q?GZxQYNFq+6jpY3RYqRw5dpUdIfpxplXSgetznvSx7ZjMmRGQAdmRRpXbrSbm?=
 =?us-ascii?Q?N5Tao9q6IPYfwM1htipG/chlYVtwFaCtNOaMVypBlEqolub0L6di/uqI7/2s?=
 =?us-ascii?Q?e9feO8eAh12goioh4AAV3wcRHk92orbJmLHhfDNGpX+QGeub+wzrwabNsxIY?=
 =?us-ascii?Q?rZwAx7fkCklAW2kSaSzx9r786mM77AAvhkMfWs94pp3L+BBSfs/HdBzutuzb?=
 =?us-ascii?Q?VLMnDwuiUGr/m/pOE6H7Twf4om8u5pBKDlEKEf9pG6tIlbAsIkvXRmLfneEi?=
 =?us-ascii?Q?f/9HKoHO+fZ2g8W54gsnx8YLXOBkF8W+SiGWiJ3BZwQEee6HhbNI5IpewQ/7?=
 =?us-ascii?Q?BDJLZ3faqY4fKwFNJQJoABckIS6UYNgbV+Sw/7SAXKedktCcie+V+8u0UgDp?=
 =?us-ascii?Q?oHCJ/DbnwGwfRKwN8YQFbTRBB76pqrm9F4xPSvvX5YDIZR61FwZ0V9dr9GHN?=
 =?us-ascii?Q?h9ugREloOgJ6IbETYUlQQYKV9i/eWhcd8vujxoEBM/zgVRF5eQYVu7pAnoPc?=
 =?us-ascii?Q?/HTbxv80WzC0KS1fEagyMIRF/+yCTwFN0Z3ri/Noz+Ktae/LUhR2DMO85nJn?=
 =?us-ascii?Q?GFoQoQJqMN4SgSqvZfmaTU0/hJoQogmh128Hk/gUCed7Boha9bHTQ1df3RzN?=
 =?us-ascii?Q?6+A9USKV9EdhQqG+1RrgMsnzG4IIVIfKhZSOkLrlYYyFNh/1uJOKi96+kPxO?=
 =?us-ascii?Q?cVPqRfFy/XVhXkJBHpoBYHweSJpvfAC72JZ9+d71lUthZjXT2HndvQ9MiVLA?=
 =?us-ascii?Q?tTTeGwmkQS5N1HBovpwNu1VToUpmI3alARSJjaRQgjh3ZpiAj07UCXnl1y3C?=
 =?us-ascii?Q?4Po4TX1+FGx5yIdwI4/RGNHRugAT4atFmaAnqBCxDOd+SVWYDPXHE1eJ0mxT?=
 =?us-ascii?Q?kM6C+Gp7eIOf9Rsz/Xo9OCxrsAZ23XNHfwcsil1SLHH+1bpkagS7NqeoKYyT?=
 =?us-ascii?Q?WjjvXSOj7xCuFCEyGZst930Aou6D2uE2bIFmFtDywT8eDp9i7BCn9qnzg5Rv?=
 =?us-ascii?Q?W2Eqyz8lrMUJwgMhzd2wtSRhluMstYTvcukBCOzP14X6?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 014b41df-9628-4c6a-9fe1-08de2ddd8943
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Nov 2025 17:51:04.8322 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UXkNHcDfLX4JFhlJ63xBGGM4dnNk3iTHSRv78luyn4dEf0BGm6dCtzh8t5wvG8PFriPz/fvAvNQsVKxTzReGvw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7842
X-OriginatorOrg: intel.com
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The pipe joiner maximum compressed BPP must be limited based on the pipe
joiner memory size and BW, do that for all DP outputs by adjusting the
max compressed BPP value already in
intel_dp_compute_config_link_bpp_limits() (which is used by all output
types).

This way the BPP doesn't need to be adjusted in
dsc_compute_compressed_bpp() (called for DP-SST after the above limits
were computed already), so remove the adjustment from there.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 55be648283b19..def1f869febc2 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2245,19 +2245,12 @@ static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 	const struct intel_connector *connector = to_intel_connector(conn_state->connector);
-	const struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
 	int min_bpp_x16, max_bpp_x16, bpp_step_x16;
-	int dsc_joiner_max_bpp;
-	int num_joined_pipes = intel_crtc_num_joined_pipes(pipe_config);
 	int link_bpp_x16;
 	int bpp_x16;
 	int ret;
 
-	dsc_joiner_max_bpp = get_max_compressed_bpp_with_joiner(display, adjusted_mode->crtc_clock,
-								adjusted_mode->hdisplay,
-								num_joined_pipes);
-	max_bpp_x16 = min(fxp_q4_from_int(dsc_joiner_max_bpp), limits->link.max_bpp_x16);
-
+	max_bpp_x16 = limits->link.max_bpp_x16;
 	bpp_step_x16 = intel_dp_dsc_bpp_step_x16(connector);
 
 	/* Compressed BPP should be less than the Input DSC bpp */
@@ -2613,6 +2606,7 @@ intel_dp_compute_config_link_bpp_limits(struct intel_dp *intel_dp,
 		int dsc_src_min_bpp, dsc_sink_min_bpp, dsc_min_bpp;
 		int dsc_src_max_bpp, dsc_sink_max_bpp, dsc_max_bpp;
 		int throughput_max_bpp_x16;
+		int joiner_max_bpp;
 
 		dsc_src_min_bpp = intel_dp_dsc_min_src_compressed_bpp();
 		dsc_sink_min_bpp = intel_dp_dsc_sink_min_compressed_bpp(crtc_state);
@@ -2620,11 +2614,17 @@ intel_dp_compute_config_link_bpp_limits(struct intel_dp *intel_dp,
 		limits->link.min_bpp_x16 = fxp_q4_from_int(dsc_min_bpp);
 
 		dsc_src_max_bpp = dsc_src_max_compressed_bpp(intel_dp);
+		joiner_max_bpp =
+			get_max_compressed_bpp_with_joiner(display,
+							   adjusted_mode->crtc_clock,
+							   adjusted_mode->hdisplay,
+							   intel_crtc_num_joined_pipes(crtc_state));
 		dsc_sink_max_bpp = intel_dp_dsc_sink_max_compressed_bpp(connector,
 									crtc_state,
 									limits->pipe.max_bpp / 3);
 		dsc_max_bpp = dsc_sink_max_bpp ?
 			      min(dsc_sink_max_bpp, dsc_src_max_bpp) : dsc_src_max_bpp;
+		dsc_max_bpp = min(dsc_max_bpp, joiner_max_bpp);
 
 		max_link_bpp_x16 = min(max_link_bpp_x16, fxp_q4_from_int(dsc_max_bpp));
 
-- 
2.49.1

