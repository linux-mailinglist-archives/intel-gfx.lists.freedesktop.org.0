Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BE16C8FC7B
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Nov 2025 18:51:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF4F510E882;
	Thu, 27 Nov 2025 17:51:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="C7++I2OH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE0BB10E863;
 Thu, 27 Nov 2025 17:51:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764265875; x=1795801875;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=eMjwTS0mLrAKPtp58UtYUSO13SdZ2msb8CvdMTOL8IM=;
 b=C7++I2OHHDvwEvWVpgB+JDy9O5FIWvaFT93HGeDBHlmynYpXV4vnDHqW
 LVnyv9CM9hulH9EROHz/Exqx7DR3d6K4u5NoVNB48foWPt9xzeJNOMtKT
 SDINi3fVb4miRWeIbQRA7yiaDK6lycXcOcUUtWpBy3TUx60U4GiFKKR/N
 HMad7GPQtwH8ao8bBg+B8LB8IM9tfV3cSz2c1KkaF/QVGjNBKLshMyrVZ
 yAUCtAJy6X3gWkG1CH3eVeKhm54SaMJnsGqGvHtLGdO/SjKsdAOYKbM4a
 Pe2JMMNxbEc7P66X5JjO0p4QVggLxW4wKLtbMVQHaex4lZV3O7exLJpD4 Q==;
X-CSE-ConnectionGUID: 3Exhx3fXRE6o63R3mgdJWg==
X-CSE-MsgGUID: 6ZjNSKIKSCeCWRnAYvOT0g==
X-IronPort-AV: E=McAfee;i="6800,10657,11626"; a="70174600"
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="70174600"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 09:51:15 -0800
X-CSE-ConnectionGUID: a/eQ4iW4Qsqo+iQurTVEkA==
X-CSE-MsgGUID: cgSQqL9jST+FQaXv2xiF/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="192409328"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 09:51:16 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 09:51:15 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 27 Nov 2025 09:51:15 -0800
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.23) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 09:51:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MgQhWtUunxNe3qsdgzMzLbpVvtXJ8zYTq6qyLDdQFys+XDxb7r2dLh6fM10xHqRZ38XjbK5721UFuaL7yivvpeYo98JHMEQbkKbZE6/SP5E0Ep01q97gY2xkQVx245bd/ugbUfbktwtW1eWEaB+/QLaTMdqhZWdZthZWVlqthHSm7u2E1voP4P9ES8I41Ij9qRgWc2dTL7Y1y1jDfsh0BGzwVbt+EbZcfG0CX60whl4jglrBnfiHU0Wrm5bXl1wVrCypHb/OxnVVsd3eMCyoivEwEuriG/vb9OHrr7VIZOO7RBRAPCawSt5vO4QvOOtiW8xe/Ly45MJEhpssQQbGyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MkmNCbg4GZU3Jtm8/VvHX4OTJ+PD7x/DvOHDDjnHxls=;
 b=CxlCPq9NQ2MrFUyTyKq4Ry0qHouP4VkMPR4CoCik3HO4ZO7+l/Y7wALckDfOVPUMbu77d8w1FktW5gnSANJ2yCd0KyyJOAYH1mQBzpI6MN0lEQaKOdDhkBkVaqeI1SduZ8BZOJIdRWVM3HFf1NZdXNUwBHH56o8suVf3TrJ5DdV4LpalEU9KUZizRxea8RW8RgMRn5GHed53GoI5ZW+2MT1RwhyvwD9CvVNWdXDis5Jj93WtU76V8I5sbcnlKPXIbdyyNLFoJ8PrHqQwU/7O/5giMGuQxraCUzYDD54x3+Z5k7Zp3Ho0c7DmKoaNiAadGfAM4yyE7q50Eg98aLcIUA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CH3PR11MB7842.namprd11.prod.outlook.com (2603:10b6:610:128::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.12; Thu, 27 Nov
 2025 17:51:08 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9366.012; Thu, 27 Nov 2025
 17:51:08 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 15/50] drm/i915/dp: Factor out
 align_max_vesa_compressed_bpp_x16()
Date: Thu, 27 Nov 2025 19:49:48 +0200
Message-ID: <20251127175023.1522538-16-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: e43cb931-c4e2-4e1b-3095-08de2ddd8b81
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|1800799024|10070799003|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?8U08fmmIKGc+fKvTjSmk6WOL70E+Y+QaybXvnUd1Ii5rOSA3/wqPEuVayBaO?=
 =?us-ascii?Q?SYwyn+F/jc47UErCfqoaRrYuG5SvIG5mAVdhzxcJM2IwUSXdwDPTwLS1Pg0Y?=
 =?us-ascii?Q?zGT2XAu+TS/WK2MdGd7cynyxmud81/VCYA8DvOIkq9+cRMqsvYOyCKMmYM5e?=
 =?us-ascii?Q?LsheIDOOAERLLr5DwOyJDHWi5dDGhtq1H46zyGb0cwgVTKhEqiFq1wEcgNfH?=
 =?us-ascii?Q?ufcp9nhm0trKKLT+LhSHauueI9GW5yPDVDYL7NMSx+Ddi1ApvTTrVGhzk1kM?=
 =?us-ascii?Q?NT42rjS+M2Ro1vzbgeLj/QKP56ebvSR7i2KKSou3YbJPg+uJpvJQ5jHJNUMT?=
 =?us-ascii?Q?KaVHgPQip++0pzmYgiHbJkU53cV3esGEhJ/kHIhKJtH+v+njoqgzeiAF/XcJ?=
 =?us-ascii?Q?HN6qhIJkUZfKG+aDrwDy4YcBPhatURB2+VMYylESw9pi4lxtyNikK717Bi0X?=
 =?us-ascii?Q?hD19G+J2+O/HJ3Qhl8+xNStG1AuDa0q5M0eY3bX9shVEj9qWVboibJsJTiEs?=
 =?us-ascii?Q?fKQs7v/QEAXdIFKQ3x6AFbf6qEg35kO9KGiRkIfgA2xbFOnbBqcp9dwrUm6I?=
 =?us-ascii?Q?VUj6r/NCoblPgAaPY62Hie2uf9awTcGJcg2nyrOhmAhzsGQ+21r1C5vdEZLU?=
 =?us-ascii?Q?5tEtyQKFaAmyILkgtrPfuaDhghEE8XwfYGPlPPnI0soKxJiDFQwkWhun4oWq?=
 =?us-ascii?Q?AqsYoGj+Bi5qntw90u3xcHCPmx3s1IVCNmWZ7YR4QPBVg+Egp7+6EDh2hgR2?=
 =?us-ascii?Q?V8Cs3EBGlbMv0WQIQX3z6ApVlwpX4s3Fc2ct4ZpMRG0IIy3YvJkkfkW8LxrA?=
 =?us-ascii?Q?RVV1V0fG/Vmg2g/rQgSqRKZJmSsw93jYL+pdMDzMJQlXIsK53hNWqF/vpdmi?=
 =?us-ascii?Q?BngRLTDnCTym5ZEgpORMTb6d4rHJ8jE2ykKQE8UyPxd03j0Ijy3bOn9RiAIa?=
 =?us-ascii?Q?6lT5oSWV9pyK4UkU8fxTYIxj0ZlmbeU0MXF0DRsiEstf7uMrlxzj0uD+eyHr?=
 =?us-ascii?Q?u9YIxJ3bAC+QmwJYyo3dFXKB4Qy3E0JpFkxJX9i7FLiE5s1owBUBc5MZ4PA/?=
 =?us-ascii?Q?Xw4lg1FMucWRqohuuTLnEGEG0EVhcrP+2nnDpSo7Yxwv2JsXAnkN36hpNRjS?=
 =?us-ascii?Q?XHsftvC34N+3mf8mvvrwADu+zhP8TBqxZ0Lsrg0Tn4KxtubR75m8yEZTjYi4?=
 =?us-ascii?Q?dsHIZrRR6Os71mBExpR5obcRxW4xnwLGEJvEJwQ4N5GEiLKN91jMh3CO+pGz?=
 =?us-ascii?Q?DJMq2C5p7UFJZJMIkkPMOgd62sIg32hq7QyBGYPUgIOVlGJ+lSZCM50Y2zOH?=
 =?us-ascii?Q?PVo/Q4jyOVRxsjhhse5qZDwDux8n3aa/JerKPkQp2c2fDDLAFzeW/oSjREao?=
 =?us-ascii?Q?HEIxvdXxvjMTpOhiRqg2CwnOjfGk9cx0L/8CC6S8PFaEBaMwukVa2f2ErVPZ?=
 =?us-ascii?Q?izfpZgdEOtbFPE9HqfZ/ghRFGtmK03il?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(10070799003)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?aV65fHrBRFKumJZAColzQFuVIxSZi4YJtIrwNpFPw4yoRLwQ8atu0sNSb5M3?=
 =?us-ascii?Q?pv01iV9WBC6Xqr64R51YDuiV9YZvTtUEPcBQ9bAjW2hsir0vyBcgQlApzybR?=
 =?us-ascii?Q?axD4LNPXtts30oSbIVuWbcrrLQfocl/PVC9p5D9KKNC66P3ragioQ/m8myhe?=
 =?us-ascii?Q?zeHcSLIDX436GZWqX8yHm7cWig2sneOdW7IwUsbDGpSrCcZeb6M2ix75LEx7?=
 =?us-ascii?Q?onCy/pVXymK7YkPv2HoEvS0pOwzuWGoJnZ2TTVJ1Gtg5Dtqie/Y7OcdlU54v?=
 =?us-ascii?Q?bZHKDpBU6Tlh/mI6KeMGTtaBtQnUUOlNlp4mKwfpnord9fYe4VI4unLGBPV3?=
 =?us-ascii?Q?0473918r2BEMV59UUh/SlfQJ/p8hiNJhBFmUiEqcrQ0AD6a0YqVugo6KImCs?=
 =?us-ascii?Q?er8ZRqRoreSHbyIlzVPRfT4Zl9k/2QgEWR7MUh9QDH5C1owSsOEam6/P0f+1?=
 =?us-ascii?Q?FRr8XDMsE5TXf/lO4sxN0ABBHqnjiaTr/05Slqo/eEHrYumozLvqb7zqRiSO?=
 =?us-ascii?Q?ofa6zi2aL3os0zMgy2gDkiwDWUzCgXzaV/KqF1t6bDaT7ywb+cBBwHEjg4Hc?=
 =?us-ascii?Q?Nbf1+5nLTM0+tqBeNGC5EmkBS4oO5Mts55WLaiohylwbu2H5OzQxZihOTFT7?=
 =?us-ascii?Q?fH10Y30U9XyrS/qEM/pzWeAwHLN68icryz9S0Rn38AtLKtoBUB9bW6EyYyfF?=
 =?us-ascii?Q?gYxtvouA5KFa58GE6fdfMZQEeNmtrrzettMCffs2QRjDl2591SJ0wPMcUT4O?=
 =?us-ascii?Q?H2yOpIEhoq9IDvgujrX/uv4y0OoveSMnro9B32Z3hcREly31DQqMLjT5AOqB?=
 =?us-ascii?Q?X1qdpXJbAwzIrkpT4CcSZVlF1B3CKcZi4bfgtg0LzhD1QyUN43+hR9jecclu?=
 =?us-ascii?Q?v2YzDkoQ5d0+NuX7QU5hKP0nJ2XwnGg4Sokv8//NRXhPgAgZL0UhsfBgoA68?=
 =?us-ascii?Q?IQSqdj6nGfDnFB8r+wyMhObsnx7p6hu2qxr2/KGKmXjGvqAlppUJY9nimfgH?=
 =?us-ascii?Q?EhVtwVv1xWSPx7cclSpTJ3mHMZy4K0tWxFU6ijmJMkhMYsnodAXxumF5q8eG?=
 =?us-ascii?Q?F0VwFtAG9rKbN3DlQ9OpLJHKdWtJk/5ot/vbYBeDDyRCjPR4iDbd4EGZzQyf?=
 =?us-ascii?Q?Mj+lJ7MOee/KfqZaRFuLsB1iUfRBy2LwsXExQruVXSELyvUgiazzEj1xYzbY?=
 =?us-ascii?Q?PHN2oUW3FBZ7bumaYotAjitoyITVJEiwhT/8RudpJermE5yaLhpi4kSkDD/Q?=
 =?us-ascii?Q?YfMiVzQnln/A9fGo45SzKj8yD+qta0QqOUgIHb05g5tKVsrjc5qB7SfjEww1?=
 =?us-ascii?Q?YFD27V4ztk6G8Spo0AlDEtelT0sUL32wsn0NRWDSRJdOUy94FVDmGR//0iI0?=
 =?us-ascii?Q?Xevo4D4trTXDRhMaDPkXh4vblrPwbjBYKXs4wRmRh5cVavjgY0WGD/MwNPOY?=
 =?us-ascii?Q?UkwzMbKVkWPcGhFLHGRZygTD8Dw3uFEMAGzWGB85gDEJ1epy2fN5ERHnG+nS?=
 =?us-ascii?Q?nHfe1Q6NP92ev2wurgdJ98aRPGc0i4+TkWwZIHrU/R75YAOUicw/KnIGZYqf?=
 =?us-ascii?Q?z8nd80sf83Iwg56kLGrLDE0BFe+Wslt5i1cyqeLD3t5F3Mc4H2riXdam3tiM?=
 =?us-ascii?Q?eZdyShaVXWvPUJC9AWxwUMf99t3+suP5StNHzgkqxJib?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e43cb931-c4e2-4e1b-3095-08de2ddd8b81
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Nov 2025 17:51:08.7352 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: f6ZO8oIVT0GBVd9GUZQDl6Jj5SXCykeW/HHrtuyNrMSyLW2OeYUgzoW6tz2OokQNYQ7e4MYGDpHrni39pwrS4A==
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

Factor out align_max_vesa_compressed_bpp_x16(), also used later for
computing the maximum DSC compressed BPP limit.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 35 ++++++++++++++-----------
 1 file changed, 20 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index dcb9bc11e677b..3111758578d6c 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -867,10 +867,23 @@ small_joiner_ram_size_bits(struct intel_display *display)
 		return 6144 * 8;
 }
 
+static int align_max_vesa_compressed_bpp_x16(int max_link_bpp_x16)
+{
+	int i;
+
+	for (i = ARRAY_SIZE(valid_dsc_bpp) - 1; i >= 0; i--) {
+		int vesa_bpp_x16 = fxp_q4_from_int(valid_dsc_bpp[i]);
+
+		if (vesa_bpp_x16 <= max_link_bpp_x16)
+			return vesa_bpp_x16;
+	}
+
+	return 0;
+}
+
 static u32 intel_dp_dsc_nearest_valid_bpp(struct intel_display *display, u32 bpp, u32 pipe_bpp)
 {
 	u32 bits_per_pixel = bpp;
-	int i;
 
 	/* Error out if the max bpp is less than smallest allowed valid bpp */
 	if (bits_per_pixel < valid_dsc_bpp[0]) {
@@ -899,15 +912,13 @@ static u32 intel_dp_dsc_nearest_valid_bpp(struct intel_display *display, u32 bpp
 		}
 		bits_per_pixel = min_t(u32, bits_per_pixel, 27);
 	} else {
+		int link_bpp_x16 = fxp_q4_from_int(bits_per_pixel);
+
 		/* Find the nearest match in the array of known BPPs from VESA */
-		for (i = 0; i < ARRAY_SIZE(valid_dsc_bpp) - 1; i++) {
-			if (bits_per_pixel < valid_dsc_bpp[i + 1])
-				break;
-		}
-		drm_dbg_kms(display->drm, "Set dsc bpp from %d to VESA %d\n",
-			    bits_per_pixel, valid_dsc_bpp[i]);
+		link_bpp_x16 = align_max_vesa_compressed_bpp_x16(link_bpp_x16);
 
-		bits_per_pixel = valid_dsc_bpp[i];
+		drm_WARN_ON(display->drm, fxp_q4_to_frac(link_bpp_x16));
+		bits_per_pixel = fxp_q4_to_int(link_bpp_x16);
 	}
 
 	return bits_per_pixel;
@@ -2219,7 +2230,6 @@ int intel_dp_dsc_bpp_step_x16(const struct intel_connector *connector)
 bool intel_dp_dsc_valid_compressed_bpp(struct intel_dp *intel_dp, int bpp_x16)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
-	int i;
 
 	if (DISPLAY_VER(display) >= 13) {
 		if (intel_dp->force_dsc_fractional_bpp_en && !fxp_q4_to_frac(bpp_x16))
@@ -2231,12 +2241,7 @@ bool intel_dp_dsc_valid_compressed_bpp(struct intel_dp *intel_dp, int bpp_x16)
 	if (fxp_q4_to_frac(bpp_x16))
 		return false;
 
-	for (i = 0; i < ARRAY_SIZE(valid_dsc_bpp); i++) {
-		if (fxp_q4_to_int(bpp_x16) == valid_dsc_bpp[i])
-			return true;
-	}
-
-	return false;
+	return align_max_vesa_compressed_bpp_x16(bpp_x16) == bpp_x16;
 }
 
 /*
-- 
2.49.1

