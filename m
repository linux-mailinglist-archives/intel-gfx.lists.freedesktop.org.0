Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F379CC8FCB4
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Nov 2025 18:52:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4237410E8AA;
	Thu, 27 Nov 2025 17:52:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hMZxcY8u";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C526810E8A3;
 Thu, 27 Nov 2025 17:52:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764265928; x=1795801928;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=ht8srqlO/iyVQumtogoJlOckCR71fJzZQaQE61UGBv0=;
 b=hMZxcY8uHQt9hbTK1S2emGYewax94odBHsL5snT2Bxt0r7FEIJQCX7DF
 UPe3Ztsjlknzpp7u5Jgmud2Hkmsimpy4rvERCZBH6xjltJ1pqY0SypsCo
 y02feAOwFwMSbPlafKg3Sfs8T3EV5cW3G6SD0+3/eiMnVeOdyolToPx/i
 FCVjurQGzm6dMPYW/4x/ksIBW3y4PAcDAgeMsOTeGKJBpZYgi1GIanK6C
 2VLGtQAUcPAKAWbHbaemH6axZfMN46o4U9pc8Al7/einWXuqRFIs7aTVn
 6/tVPsOGfAqlaBl5mFhxusX2oWlNtU+eLVHOU0yJPg5AbmKMoDc6hJ5zg A==;
X-CSE-ConnectionGUID: SETUblHGTL6vGuunZp97dQ==
X-CSE-MsgGUID: 3elgj6IkQkerwcis4f9d4A==
X-IronPort-AV: E=McAfee;i="6800,10657,11626"; a="66276802"
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="66276802"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 09:52:08 -0800
X-CSE-ConnectionGUID: GN3KInoxR3CBx0rQ14eo+Q==
X-CSE-MsgGUID: 5a/SOgThRhCL2eLtjC+/HQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="230562135"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 09:52:07 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 09:52:07 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 27 Nov 2025 09:52:07 -0800
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.27) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 09:52:06 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JSMn6S8jEP760IOJiMpUoUWuMDu1u0+tn/4/WOuPQ1qK2ZQ1J3TyNV4VmOI9LpxXwNG92hAV+1vU7OFJ1BIIGK5SZbhNrFblOvpfDCTCCve9gsrjfq9GdeUUvJLdK3jHTKwUgVhNNsEn8N28i8UuUrFplEwsBzyL/pjwl9cMWSdlaNSpMc/Ofu1MAa2arWK/s64T0y/z+vR+thTbWM5gnZvqp2iR3E7YW4eDdArC7FtdXK8fgp+NIYNyQ45ByKJJOVJ5CZfbRjpK+uJGyRGAufekNqYc3jX/qzF9CV81o8clYccu25hETT3PyI3ZsIRLtL5G9sDTyKt4Su/6Soqpgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3mRMQHUdqfg3Wc4PvvVeiHIHVtLVknzTke9QO0em8Sg=;
 b=Br6a+cceI9uSHccaN8LWKwQex4mZKYGjKLJL3s08mVXcZ0rfWx2HYGTVT25XISB5hHxHK+P0/s883Fan0zL8BE9Ybf4iNuxjEcuQcHGgSGUqgL7Bi6ljlNpa6cYiqzpjR1VJU3aqfsuwkMwq6CMsXnMeBRW0W1rCINOt3kmhAOtHyDCFm19Qipd5VMBYNvO2f7LMq/KCt80EPeGlHwG3iJt8u/L5lnkUOYngLXehSzYTErVkGgZ6pXHjucqlMGjBDAdy+V6I9lIwDSrcSZGwkuztfM+rwN7j9uqE+MbKf0FnF0B0ehUHg5qOpmzeZsghdsV1FefCtMXePm5R3uCI+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DS7PR11MB7887.namprd11.prod.outlook.com (2603:10b6:8:e2::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.14; Thu, 27 Nov
 2025 17:52:03 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9366.012; Thu, 27 Nov 2025
 17:52:02 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 44/50] drm/i915/dp: Rename test_slice_count to slices_per_line
Date: Thu, 27 Nov 2025 19:50:17 +0200
Message-ID: <20251127175023.1522538-45-imre.deak@intel.com>
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
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DS7PR11MB7887:EE_
X-MS-Office365-Filtering-Correlation-Id: 682082cf-915c-4f0b-cce9-08de2ddda165
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|366016|1800799024|376014|10070799003;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?CBXXgME9QN0I0cdRuFMr+stpauBcTO+fbWRFIhJFgntwm6oGpHDFUpSjMkte?=
 =?us-ascii?Q?5yj0aBIJbAePu8+ld+15qFz7OLJa2AQZH0CAsTRkyJIEqxm6hhP0CsjI3/xf?=
 =?us-ascii?Q?R0v+yonEfJGM09poK7Qab6wQjotYunkkf2CeL3R3VB4YU/PRgCmx9Lxxxnkf?=
 =?us-ascii?Q?yY2SJfYZlC11H6AQBwSc2Sp3Y6ihUaWS6tOjAUjBeQn+9etEGKxDS8wSOVRe?=
 =?us-ascii?Q?7jMnxvSKCrOKdAEsK7NR5MPKrEqrDnwEGfIyF3b6zP4H8DFoJKkAe8Mz1RCo?=
 =?us-ascii?Q?Abw7SF9d7hxuUFlQvZ1rMFIbt0d5Q+rOKvXw0FV2hqZ28/rhlLz4Si9Ce3nS?=
 =?us-ascii?Q?XqiY0eQ0dyMUwY23VLtMy/9tcUGfa5Clzu2MSP4MaY3Di/j1DVeNsPUvMVPO?=
 =?us-ascii?Q?dQw+n1ko20W3ZlEV8ubD6TZcajIlx7Dwuc/tBwItuuZm3RgtaUxO2xQ4Bx82?=
 =?us-ascii?Q?IbdPfQeTYzYvMLE/1nmAyIaPynJrEXt1JJZ0RuVlkLnFSl3lZja+PUeOWwuI?=
 =?us-ascii?Q?KOQRCzEG75baK5jj5uOpcqF570c+vME6YakIImUcz5D3IwNZETZUquzktSVN?=
 =?us-ascii?Q?mBgfWs8mr6NSh9rzXm961mxNtYWpcC2+fNyw0R6AfQ7IUmlfAHf63M0e/FxM?=
 =?us-ascii?Q?0tmcNmk11LdodF5BCWX4WR9Sn6+jLub6qurAV4ce5/kPNpJaG6K6HAH3i6RK?=
 =?us-ascii?Q?xT9uvMQor7L4TuV8ZxxL87c310kBws+uX14/0upyC4sxWJjsuq6pEcb0ZMYA?=
 =?us-ascii?Q?iAJs4+CKOEIwbUzzJyCD+TJpZjAm0HeC9g5M+RJceam5vyQfA2VlWGsf9neq?=
 =?us-ascii?Q?vSBIZ6MG6qjqZKWuEq8xglSqJ5+tzmytsMpeQclnPGH0ptj2E4kTtTzp1xEX?=
 =?us-ascii?Q?tghKkuuvc02iu7f6HLmKfEDOJLD9eVPGgfDVfORezImH4yF+cWMNYu7gORAX?=
 =?us-ascii?Q?V1SDiybuMQK+lL3I5zLv25QSAKoo72SNyg6+exQQcbobl6pQnBtd4103tro/?=
 =?us-ascii?Q?egjs7znLB8+CQxIZwsiNAMCsQ7IcxVVqWjvTFOYY0p+MVggC+bz10+hb6lv6?=
 =?us-ascii?Q?VsCnkdLMTM1kGxahI4AKeGjdHETa87Rb7S6JjkbjrRopTzr0iZ40Ac6ohOLs?=
 =?us-ascii?Q?l1TIyWW6lrfWVbRZ5JYy9uRAvz7lkoXjevPg6KOhZ1P8mjhNOSY1gPR10y0f?=
 =?us-ascii?Q?x4pBIfFlyoONaMfJ34gu+RdXlVtxwUo+JiU8213SXOS9ObRLJ3cTksn8bC75?=
 =?us-ascii?Q?bZrOGY28JxpDbdZDGXOLxkRM+hFL2C2e9fdN9WPEPFj7gFyeYbWnvwPIOQl+?=
 =?us-ascii?Q?lSWpprNJVsQxOCLvm/VTs7/k08Do1l8dN2TUHA8G8wSF/VQ+h8+NM/2E2PLk?=
 =?us-ascii?Q?icluvO7+8iezlh8D8XbKlVTkPw8+fQvy5MwJfZIoKqemBKu/MLBImTGCnLpK?=
 =?us-ascii?Q?BB8DKjptICWqWCtZApSM4iovROF31RF1?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(10070799003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?J49TS8m5CD1JZ8lXDyqH4Keyi9hd6vrqT9mpA67aAtGC29jZvIAIGfHc344S?=
 =?us-ascii?Q?5Se9h9q2sYQZqvKRyxojYTYCyh4v9SJ5Pm4pE0qaCWsj6zrFaU8ZUd+HPRC5?=
 =?us-ascii?Q?Ph8tN0pusgrsQdzpvp3URelXIxZQIHYKNCx4uZLrc7wHeAxdypTwXdoOyJUk?=
 =?us-ascii?Q?cr1KWEFxjCajwzG6LV4yGSCLdGzryWA593or6A/AK2ErXixivYSlgcPWxj6d?=
 =?us-ascii?Q?4rqd/IgEAP5qVBCM9ZXMV0EPgrNouozyxvt6X0mZ0uccKwnZYK4P55uu0BV9?=
 =?us-ascii?Q?cSCGPMlO5MctthzyDGmRJIMvCdmhFRlSccXWAoKYinsjyQx5ly19JtTzY46O?=
 =?us-ascii?Q?NCPGyDbTKCoziAeCIYO1O/+kZhpFh8W+XxOUKKI692bgfbu8FQsCUrIxrlPR?=
 =?us-ascii?Q?K5HBFZ39AzK1NtIK+AqkEyQmOS3d2Ef4Sk9L0McAKlgk2Mt9yWgd9qjRQePR?=
 =?us-ascii?Q?dKVgMjAq0GzFBkyy0r/Ym2bnlTxbG4XjB09JVnwSil/7dnXpGQvzYuN0lZYy?=
 =?us-ascii?Q?FL4AyJnK0TSRJM9gZRS0VMkQOaVEDk/SInNaSkSGAgJ1t5Y9J+dAIakjwBbv?=
 =?us-ascii?Q?XXd5TStWMRNr74kIhFbg3gtgrop88gvEreo9b7zSFhCgAlUnMgLQ2tbZ+SED?=
 =?us-ascii?Q?QWyHOYzH4G7G8oCw4c23m3UMTDW14QZRd041kapKLsh9Cy46KFDc+YrgH213?=
 =?us-ascii?Q?JZdecymSh7BevoV+it7xBluJDN/UVklOkiIXVwEo4P3Bb4QdFnGBZjNXh51z?=
 =?us-ascii?Q?8Q6iwLKUN+qHiD4oiBcv/8aZiltj1qaaxbh0UgUGZ7gUGGyP4/mkJ1Z97Rz6?=
 =?us-ascii?Q?ZhUUuOc/7ibtjknvg07kagtakM6mN51NEl+0ArrGhjRy9ItgjG3rhOBLE6Xf?=
 =?us-ascii?Q?wDnMZ91DcWcm8SpwDIZFFpxhc2lD4he7LoxhRhYyyWwvv1z9ic7QWHAn/Xhg?=
 =?us-ascii?Q?I88Nx1g3ggxkoCnnKD7FAvupNBb20X47hRiRapSUEsQI2Uv/7m0C5m35t1Zu?=
 =?us-ascii?Q?lKnm1S+2EDZdfpZk0j11MnqPUKMOUZ7nl5tiNH5gyFWjugMUWQTJYsSPtSqm?=
 =?us-ascii?Q?83yqY5HQfBdbLhXRE7ql47hvYcDHiVwjy1kyGKna8Ea1o70scbyCyi+gFxND?=
 =?us-ascii?Q?X8Zy8wEnUZX0NCI/4rKn1UpkPsO28pLzaVBM9giq9Lqt5pi0u+5q7a7X/adj?=
 =?us-ascii?Q?1jIh1P4HTsALTmxeDvCaEI07VtDed818gclEzqXNite0qoKsjDTQZuSJ9Bel?=
 =?us-ascii?Q?USOFunqXhJISJMiI7z3zoPObDPurxpcF70lnW82er+GcsM19CrTlmvAFpbJn?=
 =?us-ascii?Q?4OZoOy7+zR0Fnjgd/ir5vvfxuMO7+C/ShP/wrkFRFg4QCziwQvfiD5n9RoDP?=
 =?us-ascii?Q?cAGvKunIwc6quYzmsSKBUNnHvYNdw8sfYBZGvFxgVQd8Af8x5g4j0qc2nVOe?=
 =?us-ascii?Q?6xcdtoPY3zT1WkDyKlsWxarJ9PU31sFMRZx0DzLW/bYku6mfjAv41rwRKAeG?=
 =?us-ascii?Q?Pc/NxRq9tAJIAuNELoh+/iJ1syQ9c3vLWw6g6NrR09wlR1PHfnEhwqlx5+/w?=
 =?us-ascii?Q?H3Tghhyhk7Y9IAkt/r9VA3d0pimPWmXEnnZW3PoEQz4zPwY7tC/NJNhqaBDe?=
 =?us-ascii?Q?okzE/6nhIgBFW0u8CJsRo477ZgJ7VTRfrYjejhwiawWL?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 682082cf-915c-4f0b-cce9-08de2ddda165
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Nov 2025 17:51:45.3469 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uzXSEGPP3KJKC3rSrgo/SSgPW0nD/rFgh8JTleI3gnrvrk1kqL0Mq7prLMss9EZUJlYewjQ9o4w71+6IGGDJ1Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7887
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

Rename test_slice_count to slices_per_line for clarity.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 1d9a130bd4060..650b339fd73bc 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1036,7 +1036,7 @@ u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
 
 	/* Find the closest match to the valid slice count values */
 	for (i = 0; i < ARRAY_SIZE(valid_dsc_slicecount); i++) {
-		int test_slice_count = valid_dsc_slicecount[i] * num_joined_pipes;
+		int slices_per_line = valid_dsc_slicecount[i] * num_joined_pipes;
 
 		/*
 		 * 3 DSC Slices per pipe need 3 DSC engines, which is supported only
@@ -1046,7 +1046,7 @@ u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
 		    (!HAS_DSC_3ENGINES(display) || num_joined_pipes != 4))
 			continue;
 
-		if (!(drm_dp_dsc_slice_count_to_mask(test_slice_count) &
+		if (!(drm_dp_dsc_slice_count_to_mask(slices_per_line) &
 		      sink_slice_count_mask))
 			continue;
 
@@ -1058,11 +1058,11 @@ u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
 		if (num_joined_pipes > 1 && valid_dsc_slicecount[i] < 2)
 			continue;
 
-		if (mode_hdisplay % test_slice_count)
+		if (mode_hdisplay % slices_per_line)
 			continue;
 
-		if (min_slice_count <= test_slice_count)
-			return test_slice_count;
+		if (min_slice_count <= slices_per_line)
+			return slices_per_line;
 	}
 
 	/* Print slice count 1,2,4,..24 if bit#0,1,3,..23 is set in the mask. */
-- 
2.49.1

