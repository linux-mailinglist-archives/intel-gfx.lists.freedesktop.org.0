Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E24D3CBF86A
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Dec 2025 20:24:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09A5410E4F3;
	Mon, 15 Dec 2025 19:24:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PDf/3WqQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7ED5B10E4EE;
 Mon, 15 Dec 2025 19:24:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765826656; x=1797362656;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=aYkZasmDw/rxOjHATlT55/H+0fSztFw3Azmi6/tfVtQ=;
 b=PDf/3WqQfAW2x6HpZDybgF/AyjrJ9P8871reXF9naey6Ymc10+5X88yt
 VY16gCnVtai/vLD2iXIEpIjZLyW7GE9k1+n5P63d9i4mH/K7rBPpO+zNq
 ru4akqta8ubxulXv5YAayZ4a7ln/fSllw7WvuD4JQQs3IEUiMY2Q07vt1
 88cD36N95LLGoAc43TdzUQLQOxnJwWQNyx0veXkSIlLs2nzBlDFyGguXl
 9ivsrk3Sqdpvr2z4p92QdJ7u1Vg/39Ns+kHxNPJ9k/IsY42wikv7tjlJD
 0nk6ky2tMIY/+AnxytrDqlvNHmLQehOlzMQCRlmD0yF7F4YOkL7q4IFsV A==;
X-CSE-ConnectionGUID: hz+1tWj1RWiH2oVV5ynx9w==
X-CSE-MsgGUID: LzW75Pf2SJm+6zU9nZ9wYA==
X-IronPort-AV: E=McAfee;i="6800,10657,11643"; a="85150018"
X-IronPort-AV: E=Sophos;i="6.21,151,1763452800"; d="scan'208";a="85150018"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2025 11:24:15 -0800
X-CSE-ConnectionGUID: VYcVnc1qSjyHErtqv45LYw==
X-CSE-MsgGUID: 22VqLpv+S/+ffIhwzoZ5Wg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,151,1763452800"; d="scan'208";a="197079253"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2025 11:24:14 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 15 Dec 2025 11:24:13 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 15 Dec 2025 11:24:13 -0800
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.52) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 15 Dec 2025 11:24:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rfDNpl4jzAtsJuPpiJ6tk/68RfjCx8oR9G94yPUgaw6Kt+efALOcyRDQPwgt/9diXbYfmdM3HXzoejlSls0+0NNqgNol6wMQCEMbKWtmWLgjXD1FYM3mZqhFwxIVH8NEgp52IbrBX4cOqOSxJQqFFfc1h0aVJiXCKqQqxDyHc39ruYPGeKELC4/wsZCJ7hg6CVUg+ggyfMtBb2v4EEukGHpxQq+ysIuq0C39hTwsKZX/6+Ai0xZFO6etsD0GIwrq4K+zPi4hlqtActMcfAO1hu2JWkZ/h5R7NBBofnMxvuMa6zDIjx4mFpLcXMb60QePdsNCmMDmGyzkaJ1kKznq0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jh8/862W8W6bRzMc6NHxUmgSRE0rbHToYqqa7Zm+ZUo=;
 b=T3rcX9fFDKJaQ4Tqv1dEtjsOeRNfYgQbKWdT0+ajohBtofcHLBHT9kmI+MuNEPRwdpCV5hi8vva6UUQ4Kx5Y1naP+QRUOVvsnU7lReGRwAUfzJZKjPUzmcC/mcSo0kZ2sXHSYlglc8GsE5KZl7x05zVjQyocVTOh3CPnOJuOWejP63zT9FNfs0a8/KxxXAbg+EIaxxfiFTlkGHQG7MidguJRSJSVfiLBiA/vGVPLK33XD4KqUVpfOxyOBN5XxmdpXCV3zL8WkZZ+KHZlayENx+FoC57JHUw+9urI/UV3SLdBXOT4tC2kbi9kIHI3XXepoAqYyPinRiW69FXVH9edxA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH0PR11MB5128.namprd11.prod.outlook.com (2603:10b6:510:39::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.13; Mon, 15 Dec
 2025 19:24:11 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9412.011; Mon, 15 Dec 2025
 19:24:11 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Luca Coelho <luciano.coelho@intel.com>
Subject: [PATCH 06/16] drm/i915/dp: Factor out intel_dp_link_bw_overhead()
Date: Mon, 15 Dec 2025 21:23:46 +0200
Message-ID: <20251215192357.172201-7-imre.deak@intel.com>
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
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|PH0PR11MB5128:EE_
X-MS-Office365-Filtering-Correlation-Id: 214daff1-c81a-404d-5c1f-08de3c0f868c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|366016|376014|1800799024|10070799003;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?xIF4qcJnv2oQVLkNb6Ttv2nhpIZwJPsB+NgOCNVD6AASeAoRaN3Hf3H51/25?=
 =?us-ascii?Q?Bv+Siv1uJ30Bb3419msK7ADUp4GQRBixV8Dk9orlq1sW4f5jh1ux+S4PtJCw?=
 =?us-ascii?Q?xanb/MKDJIATrT6tjulll+3WziiCDZ7gz02DWbtdihscjb0NsblHnXV9M1IO?=
 =?us-ascii?Q?VDdGXsTo9cIbkryWlaJUhfB/0ACn4tigIhprkw1k7HxMgDHDR2M5HLVxvWeE?=
 =?us-ascii?Q?v2JPUXOOth63KYHwFPewy3g6+uZD1ZSonWoalM/lcokt32EbCRl7zzUKHdXn?=
 =?us-ascii?Q?YlyWD2fSvzQpDp/imIKwS5FMsh/dy9LkMEv/btuuPZBc908SdPGMt/JIx61t?=
 =?us-ascii?Q?nzGLyDIG457ODsLSj3u4Vfkbb1aUDUFre266LbwLcECvk5HTxHWhY9HYAbg/?=
 =?us-ascii?Q?txwh0DNntoEi43K88hkahyIxSBhiyxx1/0/sTMcY6MaYbr6ggka6LcY+vRCl?=
 =?us-ascii?Q?cfqkKai8J9nEHt5tU/Rn1upc3xUoj83kAH/KcEDlfHAbyoFaHGweBBY6S8jj?=
 =?us-ascii?Q?TVkN6XakrDqWY4ljgtIwc/f8mlzm15zX5Fn+7TIZEQ4LoxAmz1dVjWJXszuZ?=
 =?us-ascii?Q?lmeJUeGaQD9LgLYU0py7gjOfpTdX6rxj+viiqee3cXhyr/uS4cSZ2OBJWvEe?=
 =?us-ascii?Q?wCilzDpOokYUypS1nmDGA6BoeEMbLgIphKs9KfdWGlX5cZX7aXQWt7YUsZQy?=
 =?us-ascii?Q?slfEqG9L/Et/4TjLF9Z72NUxWZ1MRhRgpxn4BZoj6s4kOqjg/BJSPelcwfGI?=
 =?us-ascii?Q?xtPuYEwj8z9qhNhmAk90QU3NBx/DCtnmsU2bcbBT3CtOqjMOycfb8wIVoZIi?=
 =?us-ascii?Q?PxqVBVyOzsEFbg/QuLDJDQq7j3UdMu9o5vgVKnCYAht3EAsng/rUK19xQnTg?=
 =?us-ascii?Q?bk58upcjgskRaJSWwc6SBcMwNNfdt3raHkU6/TWTSU+kv+yhREvcDtOXEBP8?=
 =?us-ascii?Q?QvdI20Tn8ljTEzrTQYkujpi6+JBJSn12R+Hw+7nasSwYZ9gexD+3trP2v0mq?=
 =?us-ascii?Q?Pg8NshHtN51WOCjerDKlTKHdQesBgxqZ/XYReMUYmxuj8jk5cqegVy2ocad4?=
 =?us-ascii?Q?RTDp1KOkItf2wDis1XHM8AaJmYpBe0P/xwuWbOkiN+T4RZgN1xwnP9A77c11?=
 =?us-ascii?Q?GUASCxz+9RcTJ5e3Wdj+OQBZMNBGiBSrF5rajmxV0gWh+AMpbimqNHD+sVFJ?=
 =?us-ascii?Q?Wn3ioZj7WM9Y19MNLPNib3F6k82zmk4aBq4yrnuvij/r3Bp0jZd3mXTKVNk5?=
 =?us-ascii?Q?pd2VRcRYLsN51ngHd9Ao9RfGxcMUITscBDhO5Yqrxs9zdPaBBI4nNJD/lNTn?=
 =?us-ascii?Q?D1iLN7X87qVdRlkDkF+a63v9+2Re3Pnz5gh8bvUouyaZwuQuoZGksJXxTe1U?=
 =?us-ascii?Q?FmGY4Tm4j7eCl2lPvTeEWBOD2dO/D9qMgxFKfMeQBI0kAWLsf8jy0ZyJozKC?=
 =?us-ascii?Q?YixFx8aD0hkWz526FbQTmKMgaki+BbEX?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(10070799003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?nhXUu/xHAOkk9o+E+lQI3alveqbkmsl5j/x6+ZLA0Sv4kU3MFwMJQNTOmsoD?=
 =?us-ascii?Q?oExus1dfGQumkQFcL3H9TvUyzMEcExMFPMWBFCzEuOaT40D4fipekr+jkx0K?=
 =?us-ascii?Q?w3dyFwVuO0uHGnaTRVNa91r7lUcavhsKSukLqc5e/puSdmamkqEPDfbtac21?=
 =?us-ascii?Q?H3bJynPmgZFh9XBVlZaqNjvj4B6ZjrUKhThSXYRnNE34AugoWFRm0wxYpFUT?=
 =?us-ascii?Q?WRoW5HjpI9sf//iXCWWOCKFb1PugOLM5ctE7ySBE8E14wdv/SLj91QYkvS1P?=
 =?us-ascii?Q?xup5e8c/4vUOc5wytVE+2pQKDR2A2hpuylLxkjlQEHj4yGsU70wo7VtfLGSZ?=
 =?us-ascii?Q?vMNDx206AFdBNiYXALoEsQUOLk/ayJWiKE+20XebQE8IuPJWDLUo5eKEBUZm?=
 =?us-ascii?Q?OJDUyiqYbAqC1zo3IY+czIkKrQjo4C/WovABF6/X2ct3qK4R/lID9fJG7bN7?=
 =?us-ascii?Q?7FUCMmsOgqbkAoJZqHDlBMgQHYL9/y17Bq2+VqHALLLLV67oEa9kNS4SB4DM?=
 =?us-ascii?Q?NygkZmDa1xbac8WDBWTDcBeVQXve/S37CyyvXX5NGqSWIaqWhHJvCRGceGxm?=
 =?us-ascii?Q?wA97bpwYGwF0NbmFiJkB+kaZpM2CC2ya6451FhEgX9O20AyR2nqC5i5FM0aA?=
 =?us-ascii?Q?wzCEWOlvsUEk7TS2zcJ9RUat1TEo14OsUGT8feCXfFTLZG/THDttwwOMKVjQ?=
 =?us-ascii?Q?F+AH+o1zFWn5W7Psk2gi05kHTLcAYFv5e/QlFkqWkRl1cTBQa/okvdC+V01X?=
 =?us-ascii?Q?pfL+u1m6L8omzU0YSmevTfJRPe3eUX/V1XE0hpTvyFjI/d9MNydeR2CwlFng?=
 =?us-ascii?Q?n2KNw+ukKhdlrxTwXMb8X/GJiEVZfk5LATqYdtQA3ivVyfSvniDdPJYpEBe6?=
 =?us-ascii?Q?fJ4A7AWLrus6WuXP4ZMUP8aVSBH6Z4HZTkMkxEfekk0nnbdAwy+G57H6kltu?=
 =?us-ascii?Q?2BVwHbZnuubQvmlFSswAwDQpUR5DBlAvZa5Y0KOciRCJ9rbY7GLeEwK+Wv3C?=
 =?us-ascii?Q?ERzNWBNt3e8Rs//KKM/xOhYPyMlkxtTTGAWGqCTfv5Z4UTkf5xUgDgeReUEN?=
 =?us-ascii?Q?c/FBl05ZFLjY6v+xwrXz5UK8gKehMCWfVvFWgRdQBq0CfQ/r8vUr8tzNxcH0?=
 =?us-ascii?Q?FYaDqaHvgIFSidyd5AyIgL54Q0uksa/Or6Oa8kSgMKgi9PlHEQORvuM815uR?=
 =?us-ascii?Q?swSKGa57iiv2KATmy0NkNIOaMR+GMvYZqauLV8BnxWkap7cTmwM23Qvs+4b5?=
 =?us-ascii?Q?LwZcX1ACih/UVUNLThWC+mATEBDYnuT2Iwi3bBLeIWskrFW081HR9xoHol5b?=
 =?us-ascii?Q?QQ6DbBFTAZqMnE+GjrhpbHLzOG/9qq3s6uD1anO7UVOMBlRq1CjWOoWfOQAV?=
 =?us-ascii?Q?MRPD5FbZcQGh30tlS9a74c+2ckO3ryhjo6878rSXyoMLqb2Z4A+FRTNoeNnD?=
 =?us-ascii?Q?sNHKHwSQkWF2EVDBExxy7RjttB2HiW6K7qX5tP62jgDs+gdFuGb4KyR5Hv2W?=
 =?us-ascii?Q?ELveDyGhs6M1syTu/yPHRdjrb2T4F8lolLjwucXciDrvoODlIumz/EygJhBE?=
 =?us-ascii?Q?IbWYzzTPmbYm8igWS/NpgrdSyrlbnfhbgdpbN0A+XgqHE7KW4MrEPJ4WrU2L?=
 =?us-ascii?Q?J5aYAcndlmqU+0/MASlHjaOBj1Su0oVR3viXpN5phHki?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 214daff1-c81a-404d-5c1f-08de3c0f868c
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Dec 2025 19:24:11.3806 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cGIpA+BCc2x1FpF3Vtf0tKLuznRuSTTkXBzgRILnKbiHw2S/qyqVjifHvVra8TJkaLEmHVS5DyxTBRwPP0nh4Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5128
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

Factor out intel_dp_link_bw_overhead(), used later for BW calculation
during DP SST mode validation and state computation.

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 26 +++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dp.h     |  2 ++
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 22 +++++------------
 3 files changed, 34 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index a1170dc5ad9ab..a9f0485dbe646 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -424,6 +424,32 @@ static int intel_dp_min_lane_count(struct intel_dp *intel_dp)
 	return 1;
 }
 
+int intel_dp_link_bw_overhead(int link_clock, int lane_count, int hdisplay,
+			      int dsc_slice_count, int bpp_x16, unsigned long flags)
+{
+	int overhead;
+
+	WARN_ON(flags & ~(DRM_DP_BW_OVERHEAD_MST | DRM_DP_BW_OVERHEAD_SSC_REF_CLK |
+			  DRM_DP_BW_OVERHEAD_FEC));
+
+	if (drm_dp_is_uhbr_rate(link_clock))
+		flags |= DRM_DP_BW_OVERHEAD_UHBR;
+
+	if (dsc_slice_count)
+		flags |= DRM_DP_BW_OVERHEAD_DSC;
+
+	overhead = drm_dp_bw_overhead(lane_count, hdisplay,
+				      dsc_slice_count,
+				      bpp_x16,
+				      flags);
+
+	/*
+	 * TODO: clarify whether a minimum required by the fixed FEC overhead
+	 * in the bspec audio programming sequence is required here.
+	 */
+	return max(overhead, intel_dp_bw_fec_overhead(flags & DRM_DP_BW_OVERHEAD_FEC));
+}
+
 /*
  * The required data bandwidth for a mode with given pixel clock and bpp. This
  * is the required net bandwidth independent of the data bandwidth efficiency.
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 97e361458f760..d7f9410129f49 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -117,6 +117,8 @@ void intel_dp_compute_rate(struct intel_dp *intel_dp, int port_clock,
 bool intel_dp_source_supports_tps3(struct intel_display *display);
 bool intel_dp_source_supports_tps4(struct intel_display *display);
 
+int intel_dp_link_bw_overhead(int link_clock, int lane_count, int hdisplay,
+			      int dsc_slice_count, int bpp_x16, unsigned long flags);
 int intel_dp_link_required(int pixel_clock, int bpp);
 int intel_dp_effective_data_rate(int pixel_clock, int bpp_x16,
 				 int bw_overhead);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 1a4784f0cd6bd..c1058b4a85d02 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -180,26 +180,16 @@ static int intel_dp_mst_bw_overhead(const struct intel_crtc_state *crtc_state,
 	const struct drm_display_mode *adjusted_mode =
 		&crtc_state->hw.adjusted_mode;
 	unsigned long flags = DRM_DP_BW_OVERHEAD_MST;
-	int overhead;
 
-	flags |= intel_dp_is_uhbr(crtc_state) ? DRM_DP_BW_OVERHEAD_UHBR : 0;
 	flags |= ssc ? DRM_DP_BW_OVERHEAD_SSC_REF_CLK : 0;
 	flags |= crtc_state->fec_enable ? DRM_DP_BW_OVERHEAD_FEC : 0;
 
-	if (dsc_slice_count)
-		flags |= DRM_DP_BW_OVERHEAD_DSC;
-
-	overhead = drm_dp_bw_overhead(crtc_state->lane_count,
-				      adjusted_mode->hdisplay,
-				      dsc_slice_count,
-				      bpp_x16,
-				      flags);
-
-	/*
-	 * TODO: clarify whether a minimum required by the fixed FEC overhead
-	 * in the bspec audio programming sequence is required here.
-	 */
-	return max(overhead, intel_dp_bw_fec_overhead(crtc_state->fec_enable));
+	return intel_dp_link_bw_overhead(crtc_state->port_clock,
+					 crtc_state->lane_count,
+					 adjusted_mode->hdisplay,
+					 dsc_slice_count,
+					 bpp_x16,
+					 flags);
 }
 
 static void intel_dp_mst_compute_m_n(const struct intel_crtc_state *crtc_state,
-- 
2.49.1

