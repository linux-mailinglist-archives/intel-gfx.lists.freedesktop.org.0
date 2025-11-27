Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A80AAC8FCB1
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Nov 2025 18:52:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E678E10E8A3;
	Thu, 27 Nov 2025 17:52:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IdjIkiOw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FE6110E8A3;
 Thu, 27 Nov 2025 17:52:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764265927; x=1795801927;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=+O2sAv9Ks6KhrlIsliiM9iIxp2w2iC2lT81xQl+2E9c=;
 b=IdjIkiOw3wa0GpHRm9OCbNlbmmLXup0wYd1dTFXy1USyoqHRA9NgBBl0
 YEPpnI9Vgl+HlXh4MbJ2+06Y6mYyZYyC6iDIxLws7I6J0wWnO2GqAXlnY
 6fBXcgWJUQalZqgQQ69/SJmMVXz+4Pruee4Eajn2H1jZ2kn9pykDLDrGh
 bIkSV2iLKfh9+BJx4tZnUt/wrvBvIU5A2um/qXBXbJmYU4z8bwoa8wFZp
 1LROCOqoS3oWx1uOYZvQzfWNfapw4T82NigUudPPl1MQoxctk9Famdc+a
 NJulsV0ARhvW9Dc/k83VZDVMNzSH60uJywGxtjCQLsLOolbKwpSfCLXS7 g==;
X-CSE-ConnectionGUID: mCQXrAK3Qfqx/PuKAuQ39g==
X-CSE-MsgGUID: wbTKJRzETUCyJAXuiJZtxg==
X-IronPort-AV: E=McAfee;i="6800,10657,11626"; a="66204023"
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="66204023"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 09:52:06 -0800
X-CSE-ConnectionGUID: 6a8SPwrkTlmxI+Qgbynpyw==
X-CSE-MsgGUID: PYsR+asfTHaiyOCh0FDNcw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="198230516"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 09:52:06 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 09:52:05 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 27 Nov 2025 09:52:05 -0800
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.1) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 09:52:05 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sxHE81vRJ0v2eKC+iEIm78tDXUSNrUTTC3YfkmauVbci0AC+BbgDrZpu2bTMalFOBKmJr+IPNcT+/XUW/VL007H4JnoaNk75+g6DwEKo1bv6QdAHN8HDjja3tL1FoMvl4yr4H6uRCP/pIwuuNODBDbgJuUUbV5caRQqQKG6ZbCIj1yCpJ7aV320jL66KwZAEXKxjG9X+ZfbfTgXgo/vbi3+fm9snDD4+lT7P8+e3m9XTdMPXmZnsbFtj9xq18kb6xRxTJVvYdD42EgLqogdi0ca72DnczKQFRlExZ629v6DwnkoC8mlntWA5RpgTBPMwRQhnez87BDwfbmMm7Ibg4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FpnXAD9ja8S36o9J11W73iHJ8Fvq87W5iN9NU0D8luo=;
 b=KSe5kCLL/94kxChBMyRvc9uIrHPMPek4ANCBrupexjlSJcOfB9nGq6RzioI6Ll4x3NT1XtkKZUp0/3tYvAkOFW06OKrHXuIAqkgN7AGIOnuvC7KeGAefUBTUidIcOPrhS742xvgAu9nrwNBifdsj6kgYXmF1so2WggoHlB9PJZQA9k6qKGYzHpllZlLI8nLXhkJza5YkYcAGEHC0mgCuvY3EEMlbuzNwBsn2z4j4t6KOTA9MxsTmMhJUyYfk5+x2uA6TVYY+sURBkUmNRvmUGUP6YLUa2AvPHNu8o67NzgU3XQLvmKg7/8asKx3zbkaOt+gGFhhAV/jO+aro61N8/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH7PR11MB8550.namprd11.prod.outlook.com (2603:10b6:510:30c::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.11; Thu, 27 Nov
 2025 17:52:01 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9366.012; Thu, 27 Nov 2025
 17:52:01 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 40/50] drm/i915/dp: Track the detailed DSC slice configuration
Date: Thu, 27 Nov 2025 19:50:13 +0200
Message-ID: <20251127175023.1522538-41-imre.deak@intel.com>
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
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|PH7PR11MB8550:EE_
X-MS-Office365-Filtering-Correlation-Id: 3ca96e3b-45fd-4edd-e7d1-08de2ddd9e8e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|1800799024|376014|10070799003|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?HqGiftgz8c2/Xo2bf8uJVK0GcXTfGe0O8DD/BL2iJR88Gabi28JLanamKp9M?=
 =?us-ascii?Q?INyEH70eGg8NVqDinImUi714AYPivvYQEDxuoPgnnyFe31Yd7JzFTD4hqQAd?=
 =?us-ascii?Q?amXChTKZZUJ471AZ1OOxJbsfsSAsT66Ruci3psZ4b8mtIvUaC/96Z72kkXPz?=
 =?us-ascii?Q?yzM+kiJTWES6UmQ43hxik+5Eo8VVSTNuB6UyulEmd6EvrW2U0AZ7/EAaX50b?=
 =?us-ascii?Q?/JlmGWqLoyvbLEX6WYKumGLq8OGnN3FOJpOUbEaSi/186ZlMFrTKqfe7MlLM?=
 =?us-ascii?Q?rcYewAAbvfu6z6OrrhM9T0iV7JXMA6q62BHOxIP5SU8LOSQElRNAVedEf06l?=
 =?us-ascii?Q?bfSfJHOb+g3g9AW1VvgU5ilFP9jbeogt4A0Uh2uXu7vxzC1cgGGTWMjI9YkE?=
 =?us-ascii?Q?QhUf2O6i5YKPL/zpaMbnp0ucFYzMQ4dePxj+E5ui7JLi1fYHkF0El2cnKEA2?=
 =?us-ascii?Q?FSshVlJDBF6BlKJUr127/9k5KYcHPWQq8lYPmh5PprcxZ4fV6O9cXmu9ZZC4?=
 =?us-ascii?Q?vMARuJx3w+Ti9u+gi4Z3Bz6+RyxOJXf9OsspbX0Fn9SgDqcJ3LhZ/1gIFG1+?=
 =?us-ascii?Q?H4xpMR4ucO5M6LULRZf0M3BlJyvK+0kYPpio9jNDrkj5Tu0U1q5SS/J3HuEm?=
 =?us-ascii?Q?JUwEk/0frTPOMponznrzCHoyCUp1Pwj3vHYzzV9PwWML9ZMnKtiZq9lVBm5h?=
 =?us-ascii?Q?HlmF3DQs7mw7NPzJB81Ts7Pryh4oVzBc81gFudR/QGVl6MRI1e6ZpC8G2jPc?=
 =?us-ascii?Q?DKmQWR9Uclba2isQyy/nsilnlTrmoNsk9ZuPj7u73MRn+0H4FPsh5meg3Y/J?=
 =?us-ascii?Q?wZ0QM8aSf+u7gCMbR4s8ZdVkoCnOKkJZoW4paULXYiW2FR1PEfeASo3FrUcN?=
 =?us-ascii?Q?3ET4JjNT0HKth6ZXUanMgqNq3wdk52qwDIl3/LuC+5B+LvnO9x+sQZCwMDT3?=
 =?us-ascii?Q?+IZg7hVxgDOVTDkzURVfLXJXzXOWb53Y04uDPyt8RTlbL79zEcmKsLtR50+E?=
 =?us-ascii?Q?9bDRYxiv0h65PnFwIPWYfNFD6u9FBqiZPTyfEdjiUbFWA5cZko3ir1hvqFwn?=
 =?us-ascii?Q?6tI3fKPqbO7zBs4c+BRF2Lpp72qoaa5qzto4TWG2kbqNBm6N7sQuNp8SAdma?=
 =?us-ascii?Q?wY6e8jggu2hXE3E9mRJnOKS8JmbJJCy7aF3ARE29+p0mbdT0opX2VOkNrNhJ?=
 =?us-ascii?Q?GBjsBzWQkb2bpQRJXAJoBv/dXGLdseZkdYALpdULNCbgnneAAQqRPt8GNf6J?=
 =?us-ascii?Q?pUwr6/j3Bo6NLyXAQ+P/KVCUxmN29WGItHlJorqj0mHXY09GVsKiJRtv8QZs?=
 =?us-ascii?Q?//vzKwj/K0d0CHq+oY8GQnjgf4TutpNLlAxuqyj0t30AAc/xibYnz9IxbGjj?=
 =?us-ascii?Q?kxKQ0hUxDLjJZ2oj/JMKNCs1YLOdegcL02x2VKzzwidlIoNHbpsw/WbrYzjx?=
 =?us-ascii?Q?v7r5o8c4V2HYuX2EW7Y3iMRXj+xWlt28?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(10070799003)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?A6pLlg+QLh4BYo2uyJAj1oyOgDhB3WhxZlte7Ac7Mn+MgDGBFKi6g4LpIr95?=
 =?us-ascii?Q?3ipOrkOEYEta7sk7C5jjS8K7VIL5Ie+RRXWNV2mcv4yojIGQT81LJt2u3RfK?=
 =?us-ascii?Q?PTy63271W9yTeTvItoScOMuLi1u3oHwmpTBqmyD+szb9WS77tfttcW1J63Vd?=
 =?us-ascii?Q?omlltKluumMNvQtyRbsXGqJREL0rdooJw0Pwt8eTBALIy05RNrY5ftu+BVlt?=
 =?us-ascii?Q?aw3BSiAJfFapXZyq2ZGMS1On5asGKwnjC5pKawhVPlx3RWgQmUOdhHSKGRp3?=
 =?us-ascii?Q?pQdLgs5ysKHs7YMVmzL15pc+l2c3WLyaEe1ROX+4H8ewySQpr2XHqcCWMBiU?=
 =?us-ascii?Q?/G+wx/rFfS62AdrYH8ZouD6KxmCt3J3+3JV8IL4YicvnKjNgjY5wK7pKv1Dz?=
 =?us-ascii?Q?W+KINVJ3nXrJRXckGheVGH2zyzJwso4QN7ddO5y094nkhND9QGTYwhU+smD5?=
 =?us-ascii?Q?7BtxTcrMrtSfDqCM5yL+DBo6nUXq9YR6tylL7GHnj2GmLojzTgkOVbbA5Dx8?=
 =?us-ascii?Q?KpoBafXwpiyLtgFcRZyArN4HhvFp+7Pt63/6rsJHFZGoQ7l9G64ZrA6oLO3O?=
 =?us-ascii?Q?PtuqkXxBdiEchrCKGeCrm56etLGGWYXellhFzpMkbHwHqOUOc+lM087P5sQP?=
 =?us-ascii?Q?i9t6UeuHbj9yLpPfHDwFMHcFEeM91P1yvZH8Rwu7lzmDUhqJxJsT7xadu7BK?=
 =?us-ascii?Q?6jEOS+RS6wXqY3MJtUlCUzFM5pc7ufOVzai8lnuEnbV0myNhlZ5LsfF3omwo?=
 =?us-ascii?Q?2Ilvg2KCDRx9xmfbgD/fGciwIycu0q0QpO20TyDitEILHLMlTQxRWRQdKOiB?=
 =?us-ascii?Q?nk187btBX01Z1iy+fIrf7268cDrYlMMIEKcDssYfVAxzXkkcpq7cS/QIm3VY?=
 =?us-ascii?Q?+7qXrdLoHjkONK0mRis9Tb55K+OFwl14GFMarH2JucS4FQAGXa96NZotGRdW?=
 =?us-ascii?Q?/UCch31gDBpHQwhWT/yUzEOELTBkBa8QUfWZpKrRjEYeux3F0VO4FQP82U8e?=
 =?us-ascii?Q?IWmgbMqKGxTcHxdBCLscq4I1HYcyLwuTUnR2pHZYBWr/c/f4zqZqEu1pnGkq?=
 =?us-ascii?Q?klkASvvloMW2oEh0y5zHjX9O9c7w2GipAJ31oaOy1oRfF9p/AmheHHNLiNUv?=
 =?us-ascii?Q?ilp0/qr8EjNa++NWH1KVf7dHS6kBmaBNGcgMVD/Hp3dWXvTfAQTk0C6w3OX9?=
 =?us-ascii?Q?gNMm2NjnrfH8FSlgJy39W7q6s9pQlJ1W9D3UO7AndAEAB5qJcXgA8PJsOa9N?=
 =?us-ascii?Q?9teTi+TGZmA8ToaXrP01DQ5Ze2D+PouSzNAnGc+bP6kt6nN9j188HGDvRB3A?=
 =?us-ascii?Q?kKyLemELcDMjP1P13rK+UyFAlPDKVW26agVf46GxSZ7NCby2YnTVW0PDnSMB?=
 =?us-ascii?Q?IGU+5uTEcHWae8KMzU1pGfsd7TNYMJ42VTUOhcYjPI8yNnB3d/F0zSZCOWUu?=
 =?us-ascii?Q?qC6QwM49OLUWyrD4e/O+F9KiOXTqdEO8LmkPEo7RPfW1O1Bso5z4JJya15yo?=
 =?us-ascii?Q?nESmU1/OC3Ic5YBJujLNqbDG7m9yFO89f33Js4zeg36Iy1kbICjfoJYOoooD?=
 =?us-ascii?Q?5o+y+XfhtT+wUWnWHUW6xPxwuewEwv8lIcjkK7bRM87e7C7+pt+Pv3FXaJN/?=
 =?us-ascii?Q?hAHF1gIEJjsoFWtNvmelMv5d+s4TI8L3lEqnsIvvBpif?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3ca96e3b-45fd-4edd-e7d1-08de2ddd9e8e
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Nov 2025 17:51:40.5838 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2QZtgcz452St5xLubTsMY2Q80ZE7JgydsU/hiY/suW8YkbBz04DGzIitHd3YIU0PnTiAqU1UeD3B6O70EQXJrg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8550
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

Add tracking for the DP DSC pipes-per-line and slices-per-stream value
in the slice config state and compute the current slices-per-line
(slice_count) value using this slice config. The slices-per-line value
used atm will be removed by a follow-up change after converting all the
places using it to use the slice config instead.

For now the slices-per-stream value is calculated based on the
slices-per-line value (slice_count) calculated by the
drm_dp_dsc_sink_max_slice_count() / intel_dp_dsc_get_slice_count()
functions. In a follow-up change these functions will be converted to
calculate the slices-per-stream value directly, along with the detailed
slice configuration.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 32 ++++++++++++++++---------
 1 file changed, 21 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 03266511841e2..d17afc18fcfa7 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2356,6 +2356,7 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 		&pipe_config->hw.adjusted_mode;
 	int num_joined_pipes = intel_crtc_num_joined_pipes(pipe_config);
 	bool is_mst = intel_crtc_has_type(pipe_config, INTEL_OUTPUT_DP_MST);
+	int slices_per_line;
 	int ret;
 
 	/*
@@ -2383,30 +2384,26 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 
 	/* Calculate Slice count */
 	if (intel_dp_is_edp(intel_dp)) {
-		pipe_config->dsc.slice_count =
+		slices_per_line =
 			drm_dp_dsc_sink_max_slice_count(connector->dp.dsc_dpcd,
 							true);
-		if (!pipe_config->dsc.slice_count) {
+		if (!slices_per_line) {
 			drm_dbg_kms(display->drm,
 				    "Unsupported Slice Count %d\n",
-				    pipe_config->dsc.slice_count);
+				    slices_per_line);
 			return -EINVAL;
 		}
 	} else {
-		u8 dsc_dp_slice_count;
-
-		dsc_dp_slice_count =
+		slices_per_line =
 			intel_dp_dsc_get_slice_count(connector,
 						     adjusted_mode->crtc_clock,
 						     adjusted_mode->crtc_hdisplay,
 						     num_joined_pipes);
-		if (!dsc_dp_slice_count) {
+		if (!slices_per_line) {
 			drm_dbg_kms(display->drm,
 				    "Compressed Slice Count not supported\n");
 			return -EINVAL;
 		}
-
-		pipe_config->dsc.slice_count = dsc_dp_slice_count;
 	}
 	/*
 	 * VDSC engine operates at 1 Pixel per clock, so if peak pixel rate
@@ -2415,14 +2412,27 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 	 * In case of Ultrajoiner along with 12 slices we need to use 3
 	 * VDSC instances.
 	 */
+	pipe_config->dsc.slice_config.pipes_per_line = num_joined_pipes;
+
 	if (pipe_config->joiner_pipes && num_joined_pipes == 4 &&
-	    pipe_config->dsc.slice_count == 12)
+	    slices_per_line == 12)
 		pipe_config->dsc.slice_config.streams_per_pipe = 3;
-	else if (pipe_config->joiner_pipes || pipe_config->dsc.slice_count > 1)
+	else if (pipe_config->joiner_pipes || slices_per_line > 1)
 		pipe_config->dsc.slice_config.streams_per_pipe = 2;
 	else
 		pipe_config->dsc.slice_config.streams_per_pipe = 1;
 
+	pipe_config->dsc.slice_config.slices_per_stream =
+		slices_per_line /
+		pipe_config->dsc.slice_config.pipes_per_line /
+		pipe_config->dsc.slice_config.streams_per_pipe;
+
+	pipe_config->dsc.slice_count =
+		intel_dsc_line_slice_count(&pipe_config->dsc.slice_config);
+
+	drm_WARN_ON(display->drm,
+		    pipe_config->dsc.slice_count != slices_per_line);
+
 	ret = intel_dp_dsc_compute_params(connector, pipe_config);
 	if (ret < 0) {
 		drm_dbg_kms(display->drm,
-- 
2.49.1

