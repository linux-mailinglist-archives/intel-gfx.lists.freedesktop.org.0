Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5516ACBF88B
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Dec 2025 20:24:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7AC510E4C0;
	Mon, 15 Dec 2025 19:24:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="U6aC2EYU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CF7810E4CB;
 Mon, 15 Dec 2025 19:24:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765826668; x=1797362668;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=Mub4zu0VUlStkptGxBW/mf6bvO3TslpZUJgnPoj9mqU=;
 b=U6aC2EYUMAx2TxeHN2AGAIicoUMV6PZY4HTOH9RIpDelW4UVG61ZvNy/
 VdTacJeQ4zA/LdcrhKnZRHoY64e5Q0PiPzIMO/Uqaq0mf3nujLEsnSwB+
 KbHZlH9tZm9/W4oRVyF7HcdfgEXevLMiMcI02giN9PUvjL60+b8sxyETB
 NyKye8RzaeZsB+90dcOeBCYhQ6wgBXBAurvL0JozxULKmBwbUxjS9M+qm
 iKM/Cy1v2RZUkoRoxkY3v4Rztm3+L5o+ChDQv3ZcRRGtyUZupL+FTw22P
 VSbSXhSyBrRsb065mc2kVWt7LRZK4Whr2maJ4rJgtgPuEHhurJMZUTpZ/ A==;
X-CSE-ConnectionGUID: 5/OhBmhhTEi6YBIrX+9soQ==
X-CSE-MsgGUID: gNL6T/w6RSmG7YWP9gPyGA==
X-IronPort-AV: E=McAfee;i="6800,10657,11643"; a="71593705"
X-IronPort-AV: E=Sophos;i="6.21,151,1763452800"; d="scan'208";a="71593705"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2025 11:24:27 -0800
X-CSE-ConnectionGUID: CoWq7VVQQlqXWFTkK0/vAg==
X-CSE-MsgGUID: QCFMt5daQBOOxdzEiFQCuQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,151,1763452800"; d="scan'208";a="202301172"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2025 11:24:27 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 15 Dec 2025 11:24:26 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 15 Dec 2025 11:24:26 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.36) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 15 Dec 2025 11:24:26 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LOIMzuTfMl2cH8NQrc54nK53T6RqzkWProwlxTliIi72Ptd2/3PaMpZ6A6ntz76m0bzVzxcen2osKl8Bjj2RoZEI8siyZfKafgrhmIqB1hXB69ZV/f5ENxN2fJ3VS/PWHaARVzia/xNv5Gb5Cma1cwk+IUlJQMm80tMRAxDeQ1f7i9+GE8XmNsFS2kyOcfaE1GfHmHq9QeEv2RFtiwc8ocGSf5ETPbVF2oJNVtXdw+57aviYQKCBKnmbdbWhAOnYDVNTZZUmUtWiAqvU11DJxzHHufPK6TR7t6LyZWxBPMGQjFmHfosqmyBOfxHnUXQqcBhNtPLCk2lNXiFc8lnAtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YL9Z4Xi8RweEkRSLKU//YFF5k2AhsRP7T06vPyOU5qY=;
 b=FCSmagxfGQvjcnilWURGMv8hK9J+1bm28fJ60LK/X4uhBYnEIB69BmHTd99t2cSekr63LzBNO9yjgto+nv9jYxRSV0hSfKehmqsLqXU8D1PIzJrKk/wNnQ5zsL6DuyoLygyP3eFXlsjb0nryDktndfO7TLk6Y41zZuldJD2FO0y+Vbt4Ko5zEg4YpLFErMfXJeshSHEIE1EBD2cuUopmwQi9OAcgyUZQjHgHRYq31kAWnIQyzjw0gu9XEvpGmt9F2gnVxyWWKeknhAb1xslVqaiM+UoxlyraGTRUX3LA0CjVSmZonA/Ff1prI3kyTg02ZCb2DLPaXuPBhxBY6EMSKQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH0PR11MB5112.namprd11.prod.outlook.com (2603:10b6:510:3b::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.13; Mon, 15 Dec
 2025 19:24:25 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9412.011; Mon, 15 Dec 2025
 19:24:24 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Vinod Govindapillai <vinod.govindapillai@intel.com>, Luca Coelho
 <luciano.coelho@intel.com>
Subject: [PATCH 15/16] drm/i915/dp: Fail state computation for invalid max
 sink compressed BPP value
Date: Mon, 15 Dec 2025 21:23:55 +0200
Message-ID: <20251215192357.172201-16-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251215192357.172201-1-imre.deak@intel.com>
References: <20251215192357.172201-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO4P265CA0093.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:2bc::18) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|PH0PR11MB5112:EE_
X-MS-Office365-Filtering-Correlation-Id: 485692a3-b3fe-48c2-532e-08de3c0f8e83
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|10070799003|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?aHp3Z4nthBQRReFj8KWG933PyzqqUFNNU/H4tq8Hbw8s6OiOfbxoXDicbDJ1?=
 =?us-ascii?Q?yqN2l1uDJDR3kCi0OXGcAVQIvtZg69ktFbaOpBCjvhVK+x2ZZ8f4OwV8WDaU?=
 =?us-ascii?Q?E1lNaWUg3aHzO9zwUc2UM3Yht8usUclxj5QCYyNsVMe66Mpq9CF+6xdVJKk1?=
 =?us-ascii?Q?oYFNtJJbe+89e5rc59ggTpKuLjoovaxEJ+BwBSTcQkN23vtrJqdi+DTTLUOQ?=
 =?us-ascii?Q?H/QVhNJwUtKVWhAHIfZxq0ed0PruBkC/O7ilalTIIMl1ZMJSD2ygnp5NH/VY?=
 =?us-ascii?Q?xGTKRbLuHWO1iM/b1T7q4RKjMnSuiJcasi+aVj2zp1FJwzVBicPNl9FOglTK?=
 =?us-ascii?Q?G0yuCoJW99Rnz4UknxbK+EBAuKYpU9f4Pi06Foq/H+2F/4yT0oZQg3kHZzUH?=
 =?us-ascii?Q?Jd9qXLa5Ce51ZDU6lIl36jS0mZ0xa9tS6c+hFrQ6nffym3FvyDh6dX5VMSI+?=
 =?us-ascii?Q?CgzKX4nt4nA74q5NjL1zYeT1fJdqQjAM2K+JloWErqB33tPPWD1UCXj/e8dA?=
 =?us-ascii?Q?/vALZQnfDUZlXRXJShmict3q1QIN0auyPSPwkGlhtVckzeKaWtIAkkr0JnYT?=
 =?us-ascii?Q?j/he/tALophqUDCwC8cJiMol6KPs6WAaTBtzRfZAWtkcNgi2C+vHABIfb2NQ?=
 =?us-ascii?Q?N/nrBhFZVu0xerJELYSJQRv6M9KekxZA2H/rxUKxCxTqpoEOMo6l+OW8C0BT?=
 =?us-ascii?Q?QXXTyI4IejbACNIYkQYebnkaHc9EypIlLeB+jJC1QET2yDOGIMG7dGr1IXUE?=
 =?us-ascii?Q?c+brF0y7tgcSdBPe4gffRstwtzwd2s59z8ukijA2MlaDHi8DhIHuTxp7eY41?=
 =?us-ascii?Q?oUli5O4ZUGBeWGtGvAGyZJM5m4KaespM4b+gI/N0qFW/n4SGwka2vwNXqtB3?=
 =?us-ascii?Q?69ur0d19WKbdrgprq02BY6n5KNPNE+CxhvGmYT7vl87q8gV1sX3kFYY3WGLg?=
 =?us-ascii?Q?SQbiXnNEhOwwNsQLEWFNhau+LcCNjIGjNkhOFra6X8MxiXmzwRSOfaM89+Bm?=
 =?us-ascii?Q?pJUMrS7aujVfXhhR558uFRQF7ysrGaoxbR+2nE7mpDnvCYapOCK6uG5ooY9N?=
 =?us-ascii?Q?KNE15eYk3+czSy1dKGLfmeODY7Fdkyg1kPiHV8Qu6Eopr+sEa9Fz0LgoXDK2?=
 =?us-ascii?Q?jEtk/1BJWpQ0dhKxsMbojqry/VREMwsJQxFdea7y5O3jz721DEX+thed11JS?=
 =?us-ascii?Q?u8jgsEFSw9+9gHIU5uRCMPr5DiHpxMPuMQka2PjBVodnCcxVh/mVXCuSU3dD?=
 =?us-ascii?Q?g4tb9yI7bX/eLtq7JBdda0j/FgBU0GvW9Ri+MdrXJR46CqFYS7DZi0UBx3mm?=
 =?us-ascii?Q?uDofyCT3+dBiSIwCD70svOE8zjv6y4pJ7m9nmJqGsEuzSG2auX2elT2tzgzK?=
 =?us-ascii?Q?v/U+5GbiIWY0ie5FvrYhfAZ4ZpLTyW2P1PZ2l2YKBdomKjRxTqNsc34diyku?=
 =?us-ascii?Q?C+qQ3zY3eTpSRuiwZa3U+IK/80hlEKnI?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(10070799003)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?LXYUVnk7uoxMoBecf0aU1cVv6LWTmDkkdu0kcVyTQYoX2wCvy2dW6NcM1Jgc?=
 =?us-ascii?Q?oDBOjW8Gcz8pQc4ByKpjrPBcr6F30HUF0JtWjThhU8UZZM+prlD+gByWtmqa?=
 =?us-ascii?Q?TmPN7GU+KYmvJ54Rw08dk6AhaajfM77h6Cd8ci/pCftq+fBBRHpmo/aQmrMc?=
 =?us-ascii?Q?rgfMTF8Fu4wI3Z3uP7HCjHbDn4alNnJjLL6B+Em+tMIKdsvcgGs7/xSaQi/c?=
 =?us-ascii?Q?/90xdFub9sxWg1/BgSNQkAHzK+ux2Wx7jZeMDw3Lu2miMxW+rFLfKcLPfE/Q?=
 =?us-ascii?Q?917Nr6gYgoIHXuFGP2+D2w297Ynfxz6ERes9iO6ATrbD2LenDL4drKReEH7Y?=
 =?us-ascii?Q?fkOz+1HywKoX727MBxOmCLku6Q4i5jv32dmGJKeA/rJ4UowK+3QdGscGonwA?=
 =?us-ascii?Q?NYAuC8crZEJdHFFwGOJFlTzxjfphXpjjdSc7KIzochZRbEgMKCNubCc3bfyP?=
 =?us-ascii?Q?mhbtCaQK5DBQIFldw/o72b/s4/fbY0CVMLhiV19+Vale8ndJ9XCJ+LpSd2ot?=
 =?us-ascii?Q?ZYh2p7gen0ukXJPguTE1RPv+PkQoyi0wv29tsukAouQoXiEUSUrwT9j6GpDv?=
 =?us-ascii?Q?l3L32pX6vopQ9PwvTqRad40Td/TTQG6rjdaxqsCV2ezypMp9nc6Ah8TrV1W2?=
 =?us-ascii?Q?+noXFMH50qhntWOzgtnYhElY6Pm8ecxEvfAd9YVXl+M6T5lXI93VFPKwjpAb?=
 =?us-ascii?Q?iZAh8tHCe7XDWoEdwqi7g1I7p4VkBHCbVMg0mzb10gJ7f2oeM+bv31Yk16ap?=
 =?us-ascii?Q?HAjdIxEp46nth4uatrAOfWbi3kkQA+iQyE5fr/6WOn92k8s3ncw7H9GwUya/?=
 =?us-ascii?Q?Sf0Uahh4SnYfKECXgh19vVgGPpWV1PVQix8MbtRoWICLEZjlPMDhghFRVnjM?=
 =?us-ascii?Q?P1VSGdnxVMMp0yoET9vkbLkoW7dHWtY6uCATWqfakOofvs+mFR4BGIMBL7Bf?=
 =?us-ascii?Q?gl6cP7YmaBaqqpxi4hgWE/oMeZK86/LDMjitVrgyP5DvdGskAYY/XFycVY9q?=
 =?us-ascii?Q?gPcmAyNdnfh8gwcSLbCTI4TB5HaWHMqRd31Gn6E5u12QHtHRE1q3gWZxIsmw?=
 =?us-ascii?Q?Ibd09dcSfcOto7jmcrw2CMnpTTEZOnPqNMYNIbomzqg8lcbbwYx98moR/bwC?=
 =?us-ascii?Q?K4uWHth3VSPTVMPjuD/YZr2Jbo9RZdNyO0WcGSpJlpdjxLHx4vgpNX+iSoc0?=
 =?us-ascii?Q?7p5dWfmnxjMdtDwuT0i9jZLBc8DGrrX03EWJlk0L/8PXsPi3/oM0NZBcb801?=
 =?us-ascii?Q?ZL93itemoxnRKy9RlH3gJ2Zo3mhcHZcgaNQK5H75DsRFFO2ixReTqciddZl4?=
 =?us-ascii?Q?GscuzRaneEYRkoVTsJ6lhxHJFl8PTEbyCKPe3ploRiSoh4PXz3lshjaFQA77?=
 =?us-ascii?Q?SMnSTZm5QlmtpUowJz5EDlzkCE7WYG8DvZDIif++AYUI4OZ6Otv9anfW//OM?=
 =?us-ascii?Q?h4gKmTDwNNEvncDt32RzI3nADBi1IAdr9UxxBq4JkbVKIGYnHaGrf0i6ZoYX?=
 =?us-ascii?Q?0DExNoSJ0YQGeBx9ZGEgfk7ad4CYJd9InGO/1YOFfDSKxQhI0QdDfSV1nfTA?=
 =?us-ascii?Q?yOd81+9kv+Z8ZCQDIEvGV8FMDjMxpzNsX5mTDBwaH7L6iOCdtU88wIOWXImV?=
 =?us-ascii?Q?BMVwPN1Bmp8lAkz7YXH1VJ7rOV44D3OrtM+FqpxYza7s?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 485692a3-b3fe-48c2-532e-08de3c0f8e83
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Dec 2025 19:24:24.9197 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: W4KWwARHOBKP7Clx9OAzZVsWsGCWvKiASePCDTVA7edbabPk/rUYcZdaK+3vHJiqIDlNte7o6Xs6p7iNuYendA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5112
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

There is no reason to accept an invalid maximum sink compressed BPP
value (i.e. 0), fail the state computation in this case.

Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index dc2486aa12010..074aa472d33c8 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2622,8 +2622,7 @@ intel_dp_compute_config_link_bpp_limits(struct intel_dp *intel_dp,
 		dsc_sink_max_bpp = intel_dp_dsc_sink_max_compressed_bpp(connector,
 									crtc_state,
 									limits->pipe.max_bpp / 3);
-		dsc_max_bpp = dsc_sink_max_bpp ?
-			      min(dsc_sink_max_bpp, dsc_src_max_bpp) : dsc_src_max_bpp;
+		dsc_max_bpp = min(dsc_sink_max_bpp, dsc_src_max_bpp);
 		dsc_max_bpp = min(dsc_max_bpp, joiner_max_bpp);
 
 		max_link_bpp_x16 = min(max_link_bpp_x16, fxp_q4_from_int(dsc_max_bpp));
-- 
2.49.1

