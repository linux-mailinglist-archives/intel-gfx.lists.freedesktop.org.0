Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 51313A817C4
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Apr 2025 23:44:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CF7010E769;
	Tue,  8 Apr 2025 21:44:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OqwhmdTI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEF4210E769;
 Tue,  8 Apr 2025 21:44:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744148659; x=1775684659;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=CReUICRU4pcKKUHgtcC4fVTujALkULp8RCx7CHusyWw=;
 b=OqwhmdTI09tyah/3Y3/ZR4vvhtUbDcGpKdtfghF8dG2+9yG/1Km2iGwJ
 veQ3wkdZJG7oJiE8SyXMFjc1j1D8fiVn34NrIWEXzugPlfeLsCrPJahn/
 akCV2CGmZZMeODKEJki5FwzL4lB54ahIUDXqZYwkAmoQBYcoLVoRZJDN5
 3smqPT1IQk/jbzxL09+qs/Z4X74h9hAV6N4oabSyam2jrBKzE8K9K4Ut6
 OMnyygutLnCpa3jwGz+A5jCvfuSNXtW3A/f5IBkqwv/cBWxxojLhAipCJ
 bubiSWi1/qdkRg7TAsGeBsoyb5CyEi6owt4d3rRdT124Q2I3XPAxla8Xu w==;
X-CSE-ConnectionGUID: wmv4CfOTRT6EKsTZ91pGfw==
X-CSE-MsgGUID: B5EGmwICQpiKXJ/cFGkAWw==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="49263282"
X-IronPort-AV: E=Sophos;i="6.15,199,1739865600"; d="scan'208";a="49263282"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 14:44:19 -0700
X-CSE-ConnectionGUID: pIu0OfX8Tp6YI8YeWIwMYg==
X-CSE-MsgGUID: 7c6j5HQPS72TAiZuaQlJlQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,199,1739865600"; d="scan'208";a="133597352"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 14:44:19 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 8 Apr 2025 14:44:18 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 8 Apr 2025 14:44:18 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 8 Apr 2025 14:44:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Uqr866hm9T2XMfRemp5hFZ076gwnZbFV0Tx/9rvDJrNAEO1FU06GEZ/+Row6mI1NvN5/3kI3T++/mXOxDzoZIfQ65i8Vcr/kBu2RRapnOfoN9eRhiMnFxRSDB5gqApyJVe+SmM/wip7BMHg3KTnY99dglI6QFvDeC4DID6xW00YG8tksqqvkldNQ3p/lpoRCyGkNtgpU4TaXpTtUm8f0/I49pi/HdzkEAi+lEQ24HnUfi1uRjMSJN1FxtD7Q8+33JoBP2AFZjBMviEVWeFUXEv8GC0TgMr2hlxstTcDQandWCjhAl70bopEpBkJ81t1sRfsym9kv1qSaLq4nDjLo7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kTluxGKkvNnOy3FPfLzEs2QfNCUQK28m5+gMMg+SO64=;
 b=of9xf8OpyeklHig6p5kC8M9OyV0910ay1/YwoS44zY2XI1uut2RFqXw827RYVy6Kmv1pYSKXFpDNvmJudZsjTT2gvtPbDAh2OpOBPso1YiAQ8vdWVyWl/tTvgVjecGYKsH14vhUwWrIQXS3TnzM06KXJPdAU/wxjOpAxJY7TrKYyfZJiLlkvjTFt/NadBsxJlgH0tQXiAlmpFpcbAtVgUSpLna8x+JfHOqZ2c77pr40a87pwtmgPTrEG2mlOWNaugBpDBzA3xEmfLqunHnvoTGqo2NxoPUuWBAxqKFqeLWIpJEUSkqu7m+kyuveOh36iM+BzdIWNAIe47qUh9/o7tA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DM6PR11MB4562.namprd11.prod.outlook.com (2603:10b6:5:2a8::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.20; Tue, 8 Apr
 2025 21:43:43 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%6]) with mapi id 15.20.8606.033; Tue, 8 Apr 2025
 21:43:42 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 02/10] drm/i915/dp: Limit max link bpp properly to a
 fractional value on SST
Date: Wed, 9 Apr 2025 00:43:32 +0300
Message-ID: <20250408214342.1953197-3-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20250408214342.1953197-1-imre.deak@intel.com>
References: <20250408214342.1953197-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: DU2PR04CA0060.eurprd04.prod.outlook.com
 (2603:10a6:10:234::35) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DM6PR11MB4562:EE_
X-MS-Office365-Filtering-Correlation-Id: 52634845-cf03-42ad-8e42-08dd76e66e83
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?0nMct1N/8XPiMjaI/HCEMQBp0DDqfZU4TFY8tFPLA/4x1Xi5u4KdugHzYJOL?=
 =?us-ascii?Q?oUMZGwTz+fX/qpF+NRrgbu91bEZALhjtMmQNxQ968BBE//WHtApD2eNi2Yeo?=
 =?us-ascii?Q?GpRzM9BaJdb+Kn84S84PedvAYaXws2sIdHmI8ojDYjCHDdq2asxatEqsfMFi?=
 =?us-ascii?Q?qA8jOpR8Y2cBWK/hIMGjCT2uHhArtcvB7fZb4jllSU/jxvKIqcgE3x36nsTC?=
 =?us-ascii?Q?GLREEmXCbTklI1/Gma1Wg/yR+xRT7CsWvTcmruHOAa2JoUpDzWK12MjlxZAf?=
 =?us-ascii?Q?wE7QgHAgks8VfMrlgCt95vNJ01cSPw0RzmKvYgYimnAkjp7Sk3Wu71BN3jF6?=
 =?us-ascii?Q?GLM3suQxaZh7qZAdXKl96pSMp0LfyzhfNRguwTsE49r7LmDf1N+53grHPPqE?=
 =?us-ascii?Q?eCYO9DHJcG71XCX+UvkADnFU1a/Hhr8Mjmyx9Nv20yLlTxwPd14DSclbtanV?=
 =?us-ascii?Q?q2NjUuORJ9Z8KWBZdD1ihbzH7KtFHaaCzn8U8gA4nhjyR7FTqHhlfe6Yiw3i?=
 =?us-ascii?Q?l4FLjxaie7qn2gJV66oC9PIvUr+r7czwxuRh+SCfd0+ZqA6w7P1+fRl+tdpA?=
 =?us-ascii?Q?8UynJnQLVigL6tbPQE4bd+cJfcTuavVNW/87dQFNxBFW9NWMLjQY1fukFcAV?=
 =?us-ascii?Q?aJpbotp/V5LTfxhLPeywZo8EX2bv//vRaF1MDd8G8sQYoeewpS/+UJdyEIZA?=
 =?us-ascii?Q?Sik/hnTlMcHgKTjffPbEPVOmgrbrbOKeUDGc9O9gLrnHUWVJgo3sVG2Zl+D2?=
 =?us-ascii?Q?KgVT35ew5B8QivKci0+HQOs/faXQxpwzJnbSvIboyk7Uwbb8x3viYFZXj4m8?=
 =?us-ascii?Q?0hukmgP/oXXecfqddxSDLZRF24PzF610fn0mLzRBP1yxJ26L312ojSn8OOwZ?=
 =?us-ascii?Q?s+FVehgTyQTNfBUH9XsKhhHrB9j2XPWcu/JexHdKd87jObMTMRcNxb9IevXe?=
 =?us-ascii?Q?yxrw5kza4ZMU+rG/Oioj6WZcYpNZ9Z4pyd039jQctIRAWkXWdCJ+8T7e+bTS?=
 =?us-ascii?Q?fHD8tZ/IrR3pqntV9E7t3IjxNU3lRPAywWPUgwVGCSXL6JwxAp9CKMzvM5VL?=
 =?us-ascii?Q?aTt/GmAYNEOCbZfssJyRgIu/Hxq2tSuSfN3d9Z2weZ321yQ3lgMaYvsoQv+v?=
 =?us-ascii?Q?wxALkXN3m7so97tLr+L1wNub4gw+1gHrnyavd+W46ptgP6cE8KczR1AXvECj?=
 =?us-ascii?Q?PP1MR0WKX193gJ66SA0jjKNUT03EjYNRVNI8dNz9q1GFqHj0xFIBoeuOg0C+?=
 =?us-ascii?Q?K1JqEhGJvOV+3YHUfL3d2ReNuWqTJovtSa/iro/CcPPVUJCRsw3shyyLkBX4?=
 =?us-ascii?Q?yZwrHDn4B/njd08V7dmr2U9pz1NSUTRUfWCdNMFAf575yAHYzewxKG7yXny0?=
 =?us-ascii?Q?9K3driVYDwmURvGctTPWbJ2/XA8+?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Ul4TbLA7s+k6/DwO8opzWLTFiuGaqW3ybtpO/iKQGQzEVuFHiuo3ZGIpgP+R?=
 =?us-ascii?Q?IaB8iADYxqb6fhU50xtwZnk1XaSbKiai8NXYahIHIqjqWfShvmMt2K2nqOko?=
 =?us-ascii?Q?vaAr7sUlwlkzS25gSDgeSXqcFHCT7y4JR9KeyZM3BU3vBNQKWWOg0OGTYean?=
 =?us-ascii?Q?Rg3lmKR39n0G+bxKPdvgS44NC2cA4/w6w6GKGa1wFBsK7c0RQXyDRBsJjttQ?=
 =?us-ascii?Q?mmw/UfLfmiraxJRKP75JWPw1F2qWyWDZSFMUc8yKPoo2GaEucewHz3gpE3EH?=
 =?us-ascii?Q?0JyVNRfqmzylF2fTBjeubWXWeNs9k78U06ja4Wnt4HQC8A8DbpWc4e+fFt7O?=
 =?us-ascii?Q?xqbvnH4f4KNS7bHSTKFQZoKl56xfiZpNe2KQVJ9RSch4oUVWCb3F444U7nFy?=
 =?us-ascii?Q?tXWLE2DWep6yGgkxIeeCVaLqAlgWcPAmEmyOGW/VkcS6UGk7WWvAhpPS0JOi?=
 =?us-ascii?Q?8Rhd+ogXErOu1be0MP4qy+bzpS4HpMx5kWUbZMciTg7hF6J5yhzKSqJzc/en?=
 =?us-ascii?Q?hQGRKhBFs4P22twPjAFcqpLamEaYiJpRDHlRjjn5rVfHQ43OvYj9RMcfZKTY?=
 =?us-ascii?Q?9lllSPQbFhl14x+86X8Ocjb0gOK3HXOS/A9dM+/+/4FAnkx70wOXptSpBWsI?=
 =?us-ascii?Q?6YMhaxZ4SMvfiTYMHuWMgkaFB0raoUEL5Dpcti8T/1Iqw0Jovhf4ofgifnGA?=
 =?us-ascii?Q?mJeQmkMfKhg4ckGIKlVl5nX7HxeVxU4bhP9yU+EesY93S52IueNsEgu5bpcd?=
 =?us-ascii?Q?h0tBJH0bIMvoW6dBn6GUOdUHq/03yQkFmvYFCaS5iSt4UVM/OY45kNxrjXYe?=
 =?us-ascii?Q?q464CNlDvb/Hs251/v30sAAvQgBq6ue6x29ieUUzjay+Qf7TG3CTdnVjV8A2?=
 =?us-ascii?Q?8lVqcb8fE9foowhDxNn1fJpgpSgsVm2vQLQe443yTwPytKcHc1jm4cIQr+Q3?=
 =?us-ascii?Q?kSeGmOWYdnWldzMQA01DHutIWsIEKS+PhIj98wL+EVHvlVn0xYY+UAuR1VTn?=
 =?us-ascii?Q?yYV5dBXmEz73AV2C9eo8ICGSO8ium5JMgg0/cJn5p/a/Hh2qGw6n9XRHO27v?=
 =?us-ascii?Q?lOH9I1zDF9YG2Xx4r8j6a2rwiwsw0eUz/rrXxZx1Yq8MuGXoefyvwXfLuDHU?=
 =?us-ascii?Q?5SA39c19RWThgjy1yCeWaK6073URf/1EW6MfowtAgYpKZKEl3IWgJBI5NyW+?=
 =?us-ascii?Q?Hgmmxl3XLrrGEOgtbtkVt7Pot+OoBbrRHkaw8mTiKMPGPqYFWPZm/QlbVV46?=
 =?us-ascii?Q?3mlUYtHdE+i4KvAVxmJQNCpQRAhtw9D8tJwaIDY8b5n6CqfsXn9ri9AYX4QT?=
 =?us-ascii?Q?ox9L5u2i/W2L0Kmfr/ao29t7gR333/oy4TFyXpr4EUpTEPdFtxN4mU6u+sUm?=
 =?us-ascii?Q?XLMf655EKjvrKJLXCKRTL5VOXTOegPwyEADKz+UfWS+ngzwHCptnB3QXpZ5t?=
 =?us-ascii?Q?6xYo5bGO6xKyBiOOBl1AA9H+FsntcABKcFfnjQUmJnC2ncltjUl5o2kexUO6?=
 =?us-ascii?Q?5+5xeF+qz1YKNFLrSl7jZNSADkRwDEhg65uBMQFR9Um3738vhgP1XsYTpK9K?=
 =?us-ascii?Q?N6wYXMXhwchFEEiui31FdNWKtOSj4/aqnITMXX0i?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 52634845-cf03-42ad-8e42-08dd76e66e83
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Apr 2025 21:43:42.8281 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: t6qi1TamitLSv1YOuV+X1+HGD0v/sKN9QY/xqGLIWFE2aPQEgCNOx+8C7oUZ2BuoyIyNduUD5BK4FK/KmQyfVQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4562
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

The maximum link bpp - determined by the link BW for instance - can be
fractional, handle this properly during computing the link bpp on SST.

This keeps the pipe joiner specific maximum link bpp as a rounded-down
integer value still, changing that to a fractional value is left for
later.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 15 ++++-----------
 1 file changed, 4 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 713cc6e65faac..14c3d5e10a430 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -938,6 +938,7 @@ static u32 ultrajoiner_ram_max_bpp(u32 mode_hdisplay)
 	return ultrajoiner_ram_bits() / mode_hdisplay;
 }
 
+/* TODO: return a bpp_x16 value */
 static
 u32 get_max_compressed_bpp_with_joiner(struct intel_display *display,
 				       u32 mode_clock, u32 mode_hdisplay,
@@ -2148,24 +2149,16 @@ static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
 	const struct intel_connector *connector = to_intel_connector(conn_state->connector);
 	const struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
 	int output_bpp;
-	int dsc_min_bpp;
-	int dsc_max_bpp;
-	int min_bpp_x16, max_bpp_x16, bpp_step_x16;
+	int max_bpp_x16, bpp_step_x16;
 	int dsc_joiner_max_bpp;
 	int num_joined_pipes = intel_crtc_num_joined_pipes(pipe_config);
 	int bpp_x16;
 	int ret;
 
-	dsc_min_bpp = fxp_q4_to_int_roundup(limits->link.min_bpp_x16);
-
 	dsc_joiner_max_bpp = get_max_compressed_bpp_with_joiner(display, adjusted_mode->clock,
 								adjusted_mode->hdisplay,
 								num_joined_pipes);
-	dsc_max_bpp = min(dsc_joiner_max_bpp, fxp_q4_to_int(limits->link.max_bpp_x16));
-
-	/* FIXME: remove the round trip via integers */
-	min_bpp_x16 = fxp_q4_from_int(dsc_min_bpp);
-	max_bpp_x16 = fxp_q4_from_int(dsc_max_bpp);
+	max_bpp_x16 = min(fxp_q4_from_int(dsc_joiner_max_bpp), limits->link.max_bpp_x16);
 
 	bpp_step_x16 = intel_dp_dsc_bpp_step_x16(connector);
 
@@ -2173,7 +2166,7 @@ static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
 	output_bpp = intel_dp_output_bpp(pipe_config->output_format, pipe_bpp);
 	max_bpp_x16 = min(max_bpp_x16, fxp_q4_from_int(output_bpp) - bpp_step_x16);
 
-	for (bpp_x16 = max_bpp_x16; bpp_x16 >= min_bpp_x16; bpp_x16 -= bpp_step_x16) {
+	for (bpp_x16 = max_bpp_x16; bpp_x16 >= limits->link.min_bpp_x16; bpp_x16 -= bpp_step_x16) {
 		if (!intel_dp_dsc_valid_bpp(intel_dp, bpp_x16))
 			continue;
 
-- 
2.44.2

