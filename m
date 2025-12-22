Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6157BCD6921
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Dec 2025 16:36:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72C8610E6DC;
	Mon, 22 Dec 2025 15:36:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gRvluw4o";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05F9810E6D7;
 Mon, 22 Dec 2025 15:36:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766417776; x=1797953776;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=tvJ1aTSx7g9XxDblXSdYVgG4sHjXF6QEO0DPsIdAs14=;
 b=gRvluw4ojyf8c+TZFgUKihqnu0JRKXTabbUHhhxMBp0C6voVTLqg1UGg
 IKzyZ3ioKf1ewT3hlp/Mpy9XtcGo1/ivNPcqIFwOIvDJiA/rnuZBZjVU0
 7aDV0exZTii4CE7vfIzSx/DhI589cMDiI7X//KR6ryKJhs33xgKN+kWTP
 BxXDfrVaC4K3EBnsBjcGbiCMQbF35fIAy7XE7h1ymVNWiTYhaUt+HYOwt
 XcwTgn+GzHekH37PPosNou2xG5HJdCEIo+rTB6oKDRk3zzmu6G7NLnfKD
 M01Oe8W7FkjM4FBtljArAM5XLML2sO9bl7GkF9QM0dI6ujwLEgkI7PcYG Q==;
X-CSE-ConnectionGUID: rrHczWZTTV+udbIIMKFxaw==
X-CSE-MsgGUID: pW3FX4AyR/KPE6QmALL0AA==
X-IronPort-AV: E=McAfee;i="6800,10657,11650"; a="79636587"
X-IronPort-AV: E=Sophos;i="6.21,168,1763452800"; d="scan'208";a="79636587"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2025 07:36:16 -0800
X-CSE-ConnectionGUID: l+Bu55YjR8yWEV44oQHfkw==
X-CSE-MsgGUID: T1nEbwDRSBG0p1RhJJRKnw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,168,1763452800"; d="scan'208";a="199320008"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2025 07:36:16 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 22 Dec 2025 07:36:15 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 22 Dec 2025 07:36:15 -0800
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.46)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 22 Dec 2025 07:36:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jYA8ZeHp/jucPa8BhwqvB+ovtkQ/vKeDbCTYVL4R+pKVharELdyraiZN6Qze2l504eG0P3/FBrIBQxDp95IzYiZHjqWralTBGjHamJymTJ3no3D7CivSWaUKluva6yoDiXQfY7RyVA0qzSPNH3h4BN5xl60zJgNh/SVP+PHE6gD/jWSg1uahY0sS4If8+s20td6EZaVReGS6GoClFdWe0Bjur60O/z8Zh7iFsilF+aNbR1W/xL9CUCBJbAv1b1+Kjf//qQhIv0AeSyxToMiNP6W+KPqc7dbvww6ZdhXs0vgXW54T9MKS48A9Ql++cd1+hWzVPSikdfvo0ldq5hSuHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6N1hCrjEABMhpB3tUOqzzZrp2I3hYjHkhcNtRj00EUI=;
 b=Q1n8W9HU74GgF6ZuFocbMPMirBI2G1Qh8rCSVE/ZCwxORG5zhva/qGR7vaTzf+S2OocVpRafhO0+qksNFk0gt1oqlvtOuQYqmZ9VgXORRSBoqCt3wro9uKzdQ41hv4HqSsnVjsnFrsfqIpzyyxlIJghIs8vVc1Pvq+Dg/JjKoZycI8hVelgu9ECck5mxeXbt25yiCiZDJgoF1QYgBW1hPp2P+K0zTI1OW75lF6kCttSEu6mtdy6bUnvVpj5CojmUdFPBUBXD3QJ7YTJJ3KYSzrQJoMXPZ1YkrD0nqxvHOTxGVHs4Deb7GrXU7lojSXVgVb7YyUR2NhIUoapJmuC+og==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by MW4PR11MB6912.namprd11.prod.outlook.com (2603:10b6:303:22a::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9434.9; Mon, 22 Dec
 2025 15:36:09 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9434.009; Mon, 22 Dec 2025
 15:36:09 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Vinod Govindapillai <vinod.govindapillai@intel.com>
Subject: [PATCH] drm/i915/dp: Fail state computation for invalid DSC source
 input BPP values
Date: Mon, 22 Dec 2025 17:35:29 +0200
Message-ID: <20251222153547.713360-3-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251222153547.713360-1-imre.deak@intel.com>
References: <20251222153547.713360-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO4P123CA0569.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:276::9) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|MW4PR11MB6912:EE_
X-MS-Office365-Filtering-Correlation-Id: b1ea515c-7346-48b6-3030-08de416fd362
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|1800799024|376014|10070799003|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?EhqMygR+4j7U/faiEbDkli6F1z6IGFAdQpDt7alZCdkV2Ea2uPrXJ0U8hScT?=
 =?us-ascii?Q?d5bHTr/evMk5gcsU58EzxrMkKyLXNQ9Le06b1R2aAnnxnbfRE/9VN1N0T/3a?=
 =?us-ascii?Q?SUdb8/WxpXSFhru3qjZA8fbLZ6rKbhmbVWZ7ZspfpSixm5RRTPPoyw5sMpGZ?=
 =?us-ascii?Q?5uqOGhxSSRpQnupZ55VsD5pCeU0Qj0mC21v8uaqUQIxSxGz2xK/s8pE11gcm?=
 =?us-ascii?Q?2jQREoiSY6jTAj8HY1J1D904GAzvZauy3b1kqFWmUZmtFPK+j9yvHIRPGzbE?=
 =?us-ascii?Q?BZRX5y04Lump8kRXDG6juhnKTQkl8fAReWjITQIVr440laC+K8C0O6EYGhbK?=
 =?us-ascii?Q?AIXxJbxLwcnu8oV0aqLQYzMlhoV90YXuWovgGFP+2l3qfqU52Eo0CPDs0TRT?=
 =?us-ascii?Q?ZsCV50EISVJthNccGFm78d4Vr/Lb/6rgjHav8mrcxTMgdLuWrg1GoITYE+JY?=
 =?us-ascii?Q?Yv648XpkfZnI2K2JJIQfgldsAuXnRe23h9Up8bkC5s3xiHnGqN9Bo+esLUqM?=
 =?us-ascii?Q?xeNMcubSBqn493yC91aKwxjkMtwC2AioHBTeZDvNW24V8FUEa4Vq94aAf+lp?=
 =?us-ascii?Q?iisI7qPiyw4M8cfhubPmAYLxZyViSHKzv5zrlSZ7s4nvED8RB4LMAYaxdDch?=
 =?us-ascii?Q?A4268HHz9+zXX8QLQGoZT3ZjrGWhVyfMjkA22G9gxYdNtvCMQs1jrN03vm7Q?=
 =?us-ascii?Q?08e+07jOsrOEJZFGnb0gcEAx3rXz5JxrEJHg6IW1uqhOnb5kxHg3FUN3XUoa?=
 =?us-ascii?Q?8ZvXfU6wyvtHR8CRRvJAVhMOc1mLHOslZABWHilJNlFA2qpjNYWFVgZKLqeD?=
 =?us-ascii?Q?LAnRnzEiU1mBkG6YvqFd21yQotvRrbMsD44rxOPPhgv+GGLBCBgDk9wGkf2C?=
 =?us-ascii?Q?ZIoA6pZkq+9Jqar8TlNlbit7CeXHO4GBgffkfqOVkoA7syWtpqr2aqrxRJ5L?=
 =?us-ascii?Q?dBIHUIvOnYfiVnJzXK+vioHMTCtWxEBy8FfGvnRrufHYrvVdDAdmxGcUnAG4?=
 =?us-ascii?Q?5HCy+bu9QVKdvUD601keW9bVvw+CdY7QCHcuS1+sco/47mOzaXhSYRo3K8AU?=
 =?us-ascii?Q?fOqH1bPh2XHxFs1hu+bARnnTizx7y8cb2ZQOzUixLftrJ2S3ZHxzQW+flygc?=
 =?us-ascii?Q?0W65SGwDTWPoQEtEhWq/oabUAVHV4SARPLQC/GJq6wrAJ8gsMsZ6h/57eWeP?=
 =?us-ascii?Q?oZyR9vtnaCOY2X+FQMMZmymmzPjyr10Nj33ljgc0HVeFbWnONC6lEnSyOYFk?=
 =?us-ascii?Q?mPuwLV28hgcUqGMQYxGPW22m1SjSr/CHCTmZNygIC6i+29nHl8eYdQ8Ooyk2?=
 =?us-ascii?Q?uBoBzOljsvI9BLKjmX9SrpR3hGEz2uHbh89FLTg+daxWzaj+YKQNdLDQMzYO?=
 =?us-ascii?Q?ZvMP6Ij9jCZZw2jZqcZGc1gyulY1LObW96n7TZ27G0VU/22MNZ5ZsZkWmPIP?=
 =?us-ascii?Q?KAHZpUhuk015T5MOTAhcfeOKkgN/WWM0?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(10070799003)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?XxG76J9bcmcmsqqavJEdWTyCVDNAYE/8YknP6Gu6c1SVGQm7HWcFIXWqzLFK?=
 =?us-ascii?Q?DYipeXiMcI8WEhiIV7mdflfQutFFNV73Kuhk6q5KrR6RhKe5png17NhZbyb6?=
 =?us-ascii?Q?GMklgBzL6UkaRAZej6uvN3fD1RraYZnpuEwxzGXTLizSDoIDqcfiVYl8WS0/?=
 =?us-ascii?Q?EtFoBdrqMvaAqn75Y1Cz8ycecKGaVP6v5flua9rbVg/U+91ISoCuO45+5ZHS?=
 =?us-ascii?Q?+r7ah4w//uMmdndP5nmF2QHJ3PM/wn6LF0auTsL8oc6l4RQVKHCTiuh6fMaA?=
 =?us-ascii?Q?QS5vu86aBkYmBavRXMV/Wp/UXWxTUM4ORYNsE3coHfxaZnpkFCtWjTWM5CiE?=
 =?us-ascii?Q?wqTXYpZ5NM0mqaeSQIegn3+KKqhgqtOunLecFrmlJpYUc6fZGbjUvGMuDPu+?=
 =?us-ascii?Q?Ghhp5mTeKtuh08fV3Gn7rl587Ql7lpuB1GOFESaU46ZC0lySh1U5yeUH8wbQ?=
 =?us-ascii?Q?oQqQo0Q+qBKl1c4bXH2nlQdEyGFrYRq5E0lxeTnt9I570nvh9zoEWr1AT3tp?=
 =?us-ascii?Q?jAwlObMZ81o6c5SjRzUaWk9moTSq2aRP6qKo4mT88KrBSVKmfjHK5xh4Yh2D?=
 =?us-ascii?Q?fXCEq8HsoDgWma14BH3EMNM8+hXh4sgHy+DM35NLwlJuDIzJJ189hPltAE6x?=
 =?us-ascii?Q?75LuCh7cURmSxY+ORJYPnlgGjDX0M78endihC7+KzirT4Gtq+vnJxM33zrbd?=
 =?us-ascii?Q?w8OrWPsblTiGv7AyE5R4D135Qkzd1t/JkV0AE0j5G+vStAMPl0tMqTwZKUuo?=
 =?us-ascii?Q?azh17VESLNC71bsJnsLlvHxcbBymMatBmfrI/qhcwoPRAKqaiZypBI5j04ED?=
 =?us-ascii?Q?KsmunSG35hdMmXDvxlHzrRMvkw8/RjGCDQKEjp3Jy3e2jj5HWzna9hjh1tDN?=
 =?us-ascii?Q?hW5NkE5EmVKuFSp0iztyPdhmkX7sYgCb0Q1F7dQ6X+rZdnyKKvSz4sSfbBZj?=
 =?us-ascii?Q?G3llZ69LfillsuMkqd8/c0nlA777vlpg485FxvqbX8UzFE4Iz6VR6qWfN+Ks?=
 =?us-ascii?Q?dQlcJN440JW2WBx/ESLLIrlJv5XxnULohPQOqhliDHDA76K2v8NjsgsMBKdU?=
 =?us-ascii?Q?14tAT2f01YS06CdZ1GaHfodYt3lkNv/UYiqDd3wVNJB6JOGhTqCG/79+pB4/?=
 =?us-ascii?Q?/0QoodDuFynGQ3XYVGMoSdcxIRzS9vxXGHn5GpGh7lkMGkJmji6KPtNmX32J?=
 =?us-ascii?Q?H+bH/nRZdstR6VH1YTH1kzCgGiXRg5gwbA62G4Ru+1J7bZb1gTdlaolb+vl5?=
 =?us-ascii?Q?pt23QtDlr/0WDRfR3D42OLdGCfJ8ZdJ5gLUknOgH+J1muEzCqrn8Cdn1QXVp?=
 =?us-ascii?Q?9EPUd7VjKqSn3ukz9PbjQW5tw29xOO99K0ezQEYroprXNEpfu6NgzL5dGkeo?=
 =?us-ascii?Q?1/SVRKJ1x7VxLrgVB1rxfhNZabkU8JZ/j6WDD/HcIZ2Fq8JMqt150cVn1m8l?=
 =?us-ascii?Q?CL5AdSXT2iUAaP2b3E9slEPx70Fvo0zxRYVGKjLMX5uSaLLiJRnLx25pNkx9?=
 =?us-ascii?Q?ozMOOPyWcfpaVvoH/8tIQCswPmudLp1VxV+UEJzVrtk2OWlooUnqvosFFdwY?=
 =?us-ascii?Q?RO7EzaoNzHm2XivhhQ/d4U+nyq1+0xu046r6xGlEvewo35RSUAPp4uzylkz+?=
 =?us-ascii?Q?GpjUI3xry2PcGu3XWeBi9B5p8zi0Wgr6qBfM843xlEOm/NlmY3KMPUXb7cDL?=
 =?us-ascii?Q?822sFf/AEu6amz1hv7psX/kHItEq8xfWeZOTdyTpqJ6vlujy/LjwqbbaLoVE?=
 =?us-ascii?Q?edjgAzHj/FxMEObQZNMsSRl4dQbm2B+IBnJveoA027Pd7jLKtTQpVgbTbAu9?=
X-MS-Exchange-AntiSpam-MessageData-1: i738OLJ5PIvKaQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: b1ea515c-7346-48b6-3030-08de416fd362
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Dec 2025 15:36:07.8655 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XEzpYSKsgPs7KgXMcxLzoHaeTTvU4UDOp1x+ne429uHmD2vjL4XrorZHEQ7eXgcID+ZESMRJod+BZVXIsDsU1g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6912
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

There is no reason to accept an invalid minimum/maximum DSC source input
BPP value (i.e a minimum DSC input BPP value above the maximum pipe BPP
or a maximum DSC input BPP value below the minimum pipe BPP value), fail
the state computation in these cases.

Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 28 ++++++++++++++++++-------
 1 file changed, 21 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 074aa472d33c8..dd2c774bb9202 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2660,16 +2660,30 @@ intel_dp_compute_config_link_bpp_limits(struct intel_dp *intel_dp,
 	return true;
 }
 
-static void
-intel_dp_dsc_compute_pipe_bpp_limits(struct intel_dp *intel_dp,
+static bool
+intel_dp_dsc_compute_pipe_bpp_limits(struct intel_connector *connector,
 				     struct link_config_limits *limits)
 {
-	struct intel_display *display = to_intel_display(intel_dp);
+	struct intel_display *display = to_intel_display(connector);
+	const struct link_config_limits orig_limits = *limits;
 	int dsc_min_bpc = intel_dp_dsc_min_src_input_bpc();
 	int dsc_max_bpc = intel_dp_dsc_max_src_input_bpc(display);
 
-	limits->pipe.max_bpp = clamp(limits->pipe.max_bpp, dsc_min_bpc * 3, dsc_max_bpc * 3);
-	limits->pipe.min_bpp = clamp(limits->pipe.min_bpp, dsc_min_bpc * 3, dsc_max_bpc * 3);
+	limits->pipe.min_bpp = max(limits->pipe.min_bpp, dsc_min_bpc * 3);
+	limits->pipe.max_bpp = min(limits->pipe.max_bpp, dsc_max_bpc * 3);
+
+	if (limits->pipe.min_bpp <= 0 ||
+	    limits->pipe.min_bpp > limits->pipe.max_bpp) {
+		drm_dbg_kms(display->drm,
+			    "[CONNECTOR:%d:%s] Invalid DSC src/sink input BPP (src:%d-%d pipe:%d-%d)\n",
+			    connector->base.base.id, connector->base.name,
+			    dsc_min_bpc * 3, dsc_max_bpc * 3,
+			    orig_limits.pipe.min_bpp, orig_limits.pipe.max_bpp);
+
+		return false;
+	}
+
+	return true;
 }
 
 bool
@@ -2709,8 +2723,8 @@ intel_dp_compute_config_limits(struct intel_dp *intel_dp,
 							respect_downstream_limits);
 	}
 
-	if (dsc)
-		intel_dp_dsc_compute_pipe_bpp_limits(intel_dp, limits);
+	if (dsc && !intel_dp_dsc_compute_pipe_bpp_limits(connector, limits))
+		return false;
 
 	if (is_mst || intel_dp->use_max_params) {
 		/*
-- 
2.49.1

