Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25253CA40D2
	for <lists+intel-gfx@lfdr.de>; Thu, 04 Dec 2025 15:38:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AAA4910E1F2;
	Thu,  4 Dec 2025 14:38:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aufuwtxm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E544210E1EF
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Dec 2025 14:38:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764859124; x=1796395124;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=DScAXXDuHwYfViz8DWC39uaSVdf61eEjmDBLvGPqVkw=;
 b=aufuwtxm+4iw0I256qiAVDHDv9tcNnvQr8LM0eF/en3piaG1SRAJuJkW
 p9AJgrR3aCIOS0wzuQaSwXs3u/W7FTCom/c5fN60F3EjWEwAKC0xhnti3
 IR8SQGDPLo0Y62r5Vu2Olh3A5BLe/A/Ca6Rk/Jc0cSqiYFUsVXuhoD5i4
 7eApGPxu1qKPLwaD3YNVBXYtQbjZcrKIRgzEWJe1y7zmTiah6ZgdpS9m9
 neFpAPTqwslldMMk1/fPZtUJ3SzMvq8rhGqI2zBKJkeYdMSjxNPHQxJqa
 aawo/2N02oIu3p60InRUcZvjzOFW1ORQA4FLNU7JgXkVSilMSd9Q2N7cz A==;
X-CSE-ConnectionGUID: P31FvG2UTvSX3jFPMmsn4Q==
X-CSE-MsgGUID: YIryrzTsRD6u1bLtRTmnHQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11632"; a="78229454"
X-IronPort-AV: E=Sophos;i="6.20,249,1758610800"; d="scan'208";a="78229454"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2025 06:38:42 -0800
X-CSE-ConnectionGUID: moLi+o/VRVmKZUfsY2NciQ==
X-CSE-MsgGUID: lA/f7dcsSyeDYruYwhekOg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,249,1758610800"; d="scan'208";a="232336589"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2025 06:38:42 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 4 Dec 2025 06:38:42 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 4 Dec 2025 06:38:42 -0800
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.53) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 4 Dec 2025 06:38:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qpG5YFwMvsCV1Be0Gz9Eykt952kb02CfGs8JWHlY09tmOWY0PCFLFTMEKNA4JA5jS49bItcWDCkPXgt8oK2Q5oxObteq1CVqr9T3bJIw4KaneQaXdZ4YBsnD+3kXFFLOgCOR55vmAg+tEHH/bvVQOgqBWGWvb+BELzvqJukoZ/xbMeJhbKVVlXzFwWwN2acsP/FQCKNg5dk2SE9WDx1qBEgGfTlkMfkDMTof2BPPMDQyMOtROG1zKYwVSCkbl/PFwaXFgJkWK+TrOJ7zdYSFAItTE+Jcn7IOKNG+dvWKASk9gEnjCgfDzoHjl7YBYLwYnlpAfAfNUP4KLWQwTEDtZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cMUvFsvpIeJsAxbc3NC2J5WnBepDkbXh4e/dwmLlOMc=;
 b=n4KzZB3hIlPVd6+6BOjbSzCrTYVnmTOB6KAjl/Ni6ggsWtmp7O2SnSuQpzPImZuaF1NvxWycHVnnXPqHj5wGSJLfhaBCPHGK0uXDk9GI6k8kY1BTUopQoZzL8//bU5Dlw+8NiwSFuOjspne1f9wdH1g4DFfv6WIXVJ85peGXEyfEOyNrJ5jY8F9Fs9QvgdFNxdrBa6vz/LjwfhMGkBVviVrKysRASoTbBJjE03igy7ECCz+W86MTqRflilp2a6Wph7hdGWmA+qhoPbobrtgUX75/sQ5F5DOinjNSdYSPDCRFEog1+3+WZiHjeq1zwnGCPpYtH/hKPS8W07L0U7BfOw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH0PR11MB5064.namprd11.prod.outlook.com (2603:10b6:510:3b::15)
 by SJ1PR11MB6180.namprd11.prod.outlook.com (2603:10b6:a03:459::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.17; Thu, 4 Dec
 2025 14:38:39 +0000
Received: from PH0PR11MB5064.namprd11.prod.outlook.com
 ([fe80::33e9:2b0b:5259:ff9e]) by PH0PR11MB5064.namprd11.prod.outlook.com
 ([fe80::33e9:2b0b:5259:ff9e%5]) with mapi id 15.20.9388.003; Thu, 4 Dec 2025
 14:38:38 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Andi Shyti <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Jani Nikula <jani.nikula@linux.intel.com>,
 Krzysztof Karas <krzysztof.karas@intel.com>
Subject: [PATCH v5 1/3] drm: Warn and return before division by 0
Date: Thu, 4 Dec 2025 14:38:25 +0000
Message-ID: <20251204143827.111428-2-krzysztof.karas@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251204143827.111428-1-krzysztof.karas@intel.com>
References: <20251204143827.111428-1-krzysztof.karas@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO6P123CA0014.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:338::17) To PH0PR11MB5064.namprd11.prod.outlook.com
 (2603:10b6:510:3b::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB5064:EE_|SJ1PR11MB6180:EE_
X-MS-Office365-Filtering-Correlation-Id: db3969a3-9860-481c-7850-08de3342d01f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?hr0dMgY11FYZG8gWEbiNoK50SGnjtkPaLkBk5U/HjKlejAhWN5U6fJxrl2nH?=
 =?us-ascii?Q?T+CqGN1xHO9YbnrF0prg2Sr4B9QWoNhTna+LrCCc16qjbHFF1IxzkNheo8WK?=
 =?us-ascii?Q?c3Aslqbvq95+21Rtmwq1NUiyC4n8rfd2brTALgZ5dP1lnQWFmwKJr05SG2uw?=
 =?us-ascii?Q?Q3QB51V+WBYmZof9AiP59NVL7SoWLkoHhiAHRtXzj9h1tJpTLCNKswgeD0wj?=
 =?us-ascii?Q?ps7Rg13b+BU0WGTAOUkJ0/OUai+ClI3bxsDoUtBaeceaOcoRXIdf89YDmv7Q?=
 =?us-ascii?Q?r+6vomwOiRIBMOaS9g05+xIOEB7FTYQTK2zDJALy3wAzbIw+Cxx5BN9RSUPt?=
 =?us-ascii?Q?6no3dKyAqPQH0XOHGBcP/1E4PX+wIF6NTVntBi44GeH917/A7+/tso0mVQNT?=
 =?us-ascii?Q?tFRLxKFi6APkTo5Y8kbYCB8q44LmSYg+bvH1kYVQ2EIaGTHuVhuhr7Cvlxbo?=
 =?us-ascii?Q?jM6JvRuPW/XNi4crPYXU/xFAx+sxQO5dFkLhtTPWsVyyTd1H+e8stPgUw0h8?=
 =?us-ascii?Q?qtVrJ1O0gHUxWitbbppDZi4HxBlDPn7Z6vds1aSovcggYn6wuGG1tw4CYQsA?=
 =?us-ascii?Q?VO5tP+wUjLHIJYn/4QzgLvHBl9Wbnh4WT5G7mRcY3TazDTlkRoRKmj+bZgMG?=
 =?us-ascii?Q?hWQIUIj4l+OsNOvi3ew50LdSiKi2Ug6T19/lGz9fDhIMWCE4Wc5gIburad95?=
 =?us-ascii?Q?E0y6KBWo5W3sV15dFeGWVwdyVH/skmF/60SMkJ/KznybvG2krLXYh6wB9tX4?=
 =?us-ascii?Q?85zBh+jC0OT8TX66VCecIa6IcXp964crXY6OW7ycAr90B0bluKvw2/xV5CDc?=
 =?us-ascii?Q?4OxEbNgLL/hfO6DQMe16aOjrcCAoqWjPqENfh57pa/cLj4qiNPVXokbd44ws?=
 =?us-ascii?Q?anpnY3WxRDAvGjghhezzPxzZgR2mbP//a5a5RLp8R6YBivInPfn62mUD351l?=
 =?us-ascii?Q?wkS07gtt1X1S/6rr2k3ixFZxJudY/2SAclvET2x1A5P8NdncSay+EpfgrG/Q?=
 =?us-ascii?Q?jNhpcFRFLoejRXJTwVC7AGS4sfmg5l1mfmzaSTBbpkblhtVyFMJP0SVp9Cn2?=
 =?us-ascii?Q?TP2qEiX91eE+FWUoIl62tx7Wd15sZWK5KzKQjs8orgH1FeChs3BCc5nLH01I?=
 =?us-ascii?Q?DlLUyWHUX6PCtcQYGmgytWR36H1ZdHIgFp5s/lPHfsnk076v9Ry+Ln55VJWB?=
 =?us-ascii?Q?ikEh7Byxz2Ka+v4MKkI9PN4o2OWUug4hVgLm6ll7uNzJ5Z/yeb64NXXDjsWE?=
 =?us-ascii?Q?O+yWN+cUc+/L5L0naM2MHS6deEANDIb1yBdZaXpaukCEj+c7RyxEbWRlGziI?=
 =?us-ascii?Q?sKNq4b1l0s51jo0W18nH7lX+OrsFAansokVai+AmaoBuoIrvurUOgS0JnNYa?=
 =?us-ascii?Q?52ydeNmN7PbfbxUpmPAuliJkf3usl62VeJ//25ANw9SIi+Yk3Og2u9umTkNA?=
 =?us-ascii?Q?NMMlfFgy3oGyAHBpKWTGMRymAwbhV6TS?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5064.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?PVXI2XZE/CDuNrXECl/6Kg+IMvrhOcALSrd/zR9rv1UVTPUuz6o7fCoqegZ9?=
 =?us-ascii?Q?2kd37Hy7OP5EsvOQg0K6hc1l/0ysproET5SI+vJ4MupfnYQ281FxN4vF0dNE?=
 =?us-ascii?Q?1IVfIGAgqE9yFedE8d/g/g2B95vpGAMoMch8MzQ07Eu4pDagWj8DpLqNs5rU?=
 =?us-ascii?Q?usJIBza3ft2oFgxgMCReKXfRusddsQbrmHdLktguAwMJbiIbhpk9KpvoCNIw?=
 =?us-ascii?Q?M24BUCsxoR2JeeS2XwZb38nCfbodpCo3feXaR/fsr4KSbE1xZEG3lnkFcV3J?=
 =?us-ascii?Q?hb5a6/ncM4hm0lJRxkA24iHbM4n27HHIIteTai/6yJCLbtdm1XJl7pX0EOGS?=
 =?us-ascii?Q?Oip2YVTHARHOVojc62xd2bTT2Q/6OQ/K1ig6zR14LmWalwZ63rY3ino6l104?=
 =?us-ascii?Q?YZqPiPF1T0QwDZdwTwf9khYRM1k2YwZIO9oDRa8BZh/+VWANxVsN+5FhJUbg?=
 =?us-ascii?Q?fr/7WJS/61n6M4KsALv8EqdKhyEEKbfrCh6UraMq49vIvA585EAUKrKIoBf3?=
 =?us-ascii?Q?VmfioDrk3K28VpQhhjbtbvUzqNwrFzjlC04xo6PpN6hXittKIolZwsqEKG1u?=
 =?us-ascii?Q?tMTBm0+jRPhhKEud1VJh0XWTJOAsOBxLQKs7KPCfGfWDgUCDF5X+I4mSu+jA?=
 =?us-ascii?Q?9e/+KYFa3CfbgIwUGbar6IBz5hP7VwN0aCHeep6LxQbK5t8Qk3XMEV5KYZ61?=
 =?us-ascii?Q?N8vnxDY+KdRD/nH+VOJTb/s6uIHth+DqO/B5zTGUBhmPk0vQg8/XFQsdgsfZ?=
 =?us-ascii?Q?hd6iYFoM+2ieDlM38fy3N2v+WNJ0faTYJBZBXd/8+gb7inFycNuFTPDNbIXV?=
 =?us-ascii?Q?0tIU/VstP61/dHJLuCD+3U45nhSPC6r2SEMmPZ/dfNiON8UE/msSwMq6M2ye?=
 =?us-ascii?Q?C0ILlLSvI0zGPTLaBWGkOAgio/pa3lw5vWZ+BhzPoHZGUT6GiCKtDJyqOgSU?=
 =?us-ascii?Q?22ktgbuH9if4WolNVlk7VyFzjT3+4VssIivgx6oy70ziJcz/eLaheX2Pkr6A?=
 =?us-ascii?Q?l7pdZwdEDNZHHz16zOkFezt6xuiCAkqAue61V50dHIsdqrgqGU6ZDcwDP759?=
 =?us-ascii?Q?rMWVnZ0PGqEWxeOp3f5Wv3GUEwHIVcaGQCuCEVoOaNgac2X8ESMP6XCDGvRD?=
 =?us-ascii?Q?cBpSKlki3O6Wwpm97n074qkJj30upkUg5X/wMSbq3GTG/94IRN4ImjUSk3Qe?=
 =?us-ascii?Q?TDXS/WTAr63b12pmbzQ/TsK5JY43BZHWQBmI3EKdwHISX+uT6in0UmJ51cbF?=
 =?us-ascii?Q?XH3v3LLuQsTW1a4SmjS5XijX+riw9/FDr8CuetJVHsI+tIWG93R+VUq0P07A?=
 =?us-ascii?Q?2DX0UCsktl8/hMWATYyCvzusN1oqmgAgAn3fmdB+y4iuXsEfLCMnLNv9gL3H?=
 =?us-ascii?Q?ea1RV3XnsthVbphlajPq0NR4Qi226RDPFrr0UGUDnxH2OcUHStTpCge4grIq?=
 =?us-ascii?Q?JXsB1S5dScruVK3rC/wXu5LGE+OCAESgrP6O2jxsMVBiiIutTm0dmbZdJLZ6?=
 =?us-ascii?Q?90RPY1bmfhz+H4otMSQrk7ZHmDPqBbIRGeGeg341u088/bYr2BXdzWAbeJ8J?=
 =?us-ascii?Q?QpEWlODeQMFfxqCgw8rGerCawdtypiGsmfyC5ShS462J2U9/8D/l4p/S95uY?=
 =?us-ascii?Q?RA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: db3969a3-9860-481c-7850-08de3342d01f
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5064.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Dec 2025 14:38:38.8687 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BOpot4uD/oXFv07PQsoou4A//yfxYP+Xi1Xo/yyMV8ttM3VT7T3b8uRuJ/kEix1YWF7u3PUy4Xai8P5xn6dHIvTW4xBwB/57w/pqT5MJ9qg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6180
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

drm_format_info_block_width/height() may return 0 and cause
division by 0 down the line. Warn and return early if any of
these values are 0.

Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
---
v5 (Jani):
* split first two patches and revert back to early return;

v4 (Andi):
* use WARN_ON_ONCE() instead of returning early;

 drivers/gpu/drm/drm_fb_dma_helper.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/drm_fb_dma_helper.c b/drivers/gpu/drm/drm_fb_dma_helper.c
index fd71969d2fb1..2b2513188001 100644
--- a/drivers/gpu/drm/drm_fb_dma_helper.c
+++ b/drivers/gpu/drm/drm_fb_dma_helper.c
@@ -85,6 +85,9 @@ dma_addr_t drm_fb_dma_get_gem_addr(struct drm_framebuffer *fb,
 	u32 block_start_y;
 	u32 num_hblocks;
 
+	if (WARN_ON_ONCE(block_w == 0 || block_h == 0))
+		return 0;
+
 	obj = drm_fb_dma_get_gem_obj(fb, plane);
 	if (!obj)
 		return 0;
-- 
2.34.1

