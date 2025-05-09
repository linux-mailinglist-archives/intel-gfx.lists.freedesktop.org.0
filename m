Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9278AB1BEB
	for <lists+intel-gfx@lfdr.de>; Fri,  9 May 2025 20:04:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02CAE10E2F0;
	Fri,  9 May 2025 18:04:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DhLw/MHE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 289F710E067;
 Fri,  9 May 2025 18:03:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746813840; x=1778349840;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=SJh7yM+2cF7xbD95dO5NCh8kwsKwzFTQPeTnoDMHtYA=;
 b=DhLw/MHEoa9YVA1P0E7KUuxlCU5Gkp5xYaDfJqX+JeDAvRpIrvy40Pqj
 uCunxEoLmbt380flBikelZCXBb9/ousUcl3PUm9LQPMRnZI9k15E+zMAQ
 ZrczL+biXeL0bF4f157522wyqy8ppkZqbzzgoWKm5p3e8lVjJi4NKknY3
 CRfipNHPlEXWbAc9mBukoaqX6CPZKoG6/D93EhvL97PzX0lsrQ9utJTuw
 K08wDIH/B/evTwa+Bx96Tq0OLjC9OyarUDcrFm8O0FIk7mGrjrwiL5FaY
 HoObv1MlyvnyVojthvPBiqFn+7hvQAsqd0BUs/bJmPTzzE8WWQ8WhhbgO w==;
X-CSE-ConnectionGUID: lg2UdHAlR1eOGGsZ2CS4Ww==
X-CSE-MsgGUID: Wyx79SR0QTOtyn26pgSwYw==
X-IronPort-AV: E=McAfee;i="6700,10204,11427"; a="52464869"
X-IronPort-AV: E=Sophos;i="6.15,275,1739865600"; d="scan'208";a="52464869"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2025 11:03:45 -0700
X-CSE-ConnectionGUID: B8KkIZ5eQIObwuXGpVWetw==
X-CSE-MsgGUID: cc1MDG8JR62lqX+8DfxGCg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,275,1739865600"; d="scan'208";a="136564155"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2025 11:03:45 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 9 May 2025 11:03:44 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 9 May 2025 11:03:44 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 9 May 2025 11:03:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bWBzirOd3dF7l5rpuqsH1UfYARIaHu/8DV32XTkNEOYDs1jg8VkvfM78+9pif6Vm22EQf7a9BvQv6ByIWNAsLvwxgC+Qygj/O1q/ZAmFw0NdS6eSUBGQ1OEerSs75kzfDYyWPhGC8Fv94x3qJfSOg3EW3CfWAmWfOPrdVE2Jti3teAPla+EClezbWS37sN197twQGRUJ3bKkxg7YTwbnTeQwb7iHIIFh7W4JZ/xr35sZxgELHHFv575lS54x60sLx7GTzZcfY7ghKye9X65B3omNIk98KMZZYSGOCWkJJDJcPPz8iihwuxJhXsftLN2BiAKKUvJ3htWIPoLbB0D0zA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rAyIghQO9UBpjd+w2DuAYqDUCTHetPFGRs3N9GYl1+I=;
 b=mK8LcZIGPUV/sjEKDIXTjtgvF7B/3bS9ci1vvAOPu/h9j2j7UHpfI/el7Oxr4j2bwMz5ZxB5e+U0ysen9p1dpz1etg/kmEibuEYiq4mUewsFTiUm4bQ/WYNSw365godB5KNw5Pyobu32IH8CPVkASYwLYFz+0rLmry1VHujN0A1jdJLwyWnjRbyZxGjK0AUATy+JgJdZXALSlghGSgagLQsIITAEPYiSG93jIQISr+aOL7/YH7i+FAp4Tdjearn8oDWlT6KvtGxc6c9weNNh1zalh03U77NTgoLMuJhQm9sMbUdK5vfb67PDNSwFUBrLHFazUsAUi+mTTiu1OD9gRQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH0PR11MB7659.namprd11.prod.outlook.com (2603:10b6:510:28e::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.22; Fri, 9 May
 2025 18:03:36 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%5]) with mapi id 15.20.8722.020; Fri, 9 May 2025
 18:03:36 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Ankit Nautiyal <ankit.k.nautiyal@intel.com>, Luca Coelho
 <luciano.coelho@intel.com>
Subject: [PATCH v3 01/12] drm/i915/dp_mst: Use the correct connector while
 computing the link BPP limit on MST
Date: Fri, 9 May 2025 21:03:28 +0300
Message-ID: <20250509180340.554867-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20250509180340.554867-1-imre.deak@intel.com>
References: <20250509180340.554867-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO2P265CA0500.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:13b::7) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|PH0PR11MB7659:EE_
X-MS-Office365-Filtering-Correlation-Id: c56020a9-2c07-4fb8-fd96-08dd8f23d15e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?rlLhqP26w0LHtZ8Njfp2zuNJo/6T0I6m11+RdP9GhCKKO0LScz+wJA8pDMDX?=
 =?us-ascii?Q?wJnTtwUo6zEEfBcC6W/nZsdGs5De8/YH3Pq0SHMM5wk1T69dKbIkx56WOtT5?=
 =?us-ascii?Q?snsqMnX6LcfgkFeFy/TwyHEYs70iphc5UBNBc0MSN4Hyqv9nYtG4K4Kgp1iT?=
 =?us-ascii?Q?r0d/BQDPS7lUwrb/rIL1cyrCydeizToL3uAgdS6QQ5dn25veks4luvZhpc4+?=
 =?us-ascii?Q?9XrkYJm8n6Jrx6mnEO9h+nqVXl3dMwM/tgyG3CQnBySj1bX9mAEJ/T1fK4PT?=
 =?us-ascii?Q?qPg8BxlYYDnjIHEWFwi/79cvo0btfc0dzqhZLmH8M9Ru7OjW/1CoY439BSlA?=
 =?us-ascii?Q?PteYFdpInbuzp+vbJvlZaKcgS3Cft8Qo2wwQ8sMBP8R5Pqmsiz7HQHGvrU5p?=
 =?us-ascii?Q?PSr7DLTaL+u5MQM7yB7o634GPcA1b0CEKKAop9oh09Y/PNMwTNOh05pY54Ep?=
 =?us-ascii?Q?TLO/c0iIqGRiIQ3OfxO8hjKGqXpk1DqaYNGpA1Xf+NGLU7HlDbaL3cgKZX9g?=
 =?us-ascii?Q?zbAv9K7IqZ66HTCZ57RJV2RA0p90HuwBWNXovqMg73hou60lDTuY3BJPGPMu?=
 =?us-ascii?Q?xFY1vclum3zfRTQ2B0ijPg2i3yOnMPZWUhcf+2jZWTKaziXahzT7V8ef/IjS?=
 =?us-ascii?Q?0Im8fMs2upyxSNfi9u6idU0Tz7iu2GgdSHzfda1HR/bIWvxzIq/6YTBYNKWN?=
 =?us-ascii?Q?AAdJzkthVAmKEJ7M8aLX3ZVbUzCXdSVFnDHEmXvojKiZdDqCVANqwt1QmpMC?=
 =?us-ascii?Q?t+Z5WbeQj7/HI3Yu2Ybw2XMt/xSU3b0wgMUBewa4C7Z5hoRld3rOeuJcIMW2?=
 =?us-ascii?Q?kB4yaZIPx5HOKdIEKzJE3134GEfWei61WGj6taqg+z6DcEDZ912/Vo/b48u4?=
 =?us-ascii?Q?Ap6BrTfDas+MRZP5lXNFz8uQK0j2fs+bdTASivEH68aiViP5Y8SpAnVx88u8?=
 =?us-ascii?Q?SGmoV//9B8m4OgZhlZei24Ds9cM95tm+OgCQn/CZ9d/s/3wIcmcMuwPUkEcP?=
 =?us-ascii?Q?uZK7WCJKIOf4BLVHzBqeG1XfuZghzK2Q/J7d5iIiaG0B8y2534Tmfl/9a4K3?=
 =?us-ascii?Q?PlMVtjZsdnG7YtLsNelsA70uEKvZC14bakBTSb57hh4FYnayVbbH2INkXyNX?=
 =?us-ascii?Q?6MiEHUc5C8zFpHOG9LzSMraZJyg5gDhsGfGdqMMI4Sl1+y2RHeSrsyXCHLuQ?=
 =?us-ascii?Q?e3dHlu5UsPMvzwcGJdyiAgRTjh73jgFvwfHrCzwe3sYa+E9BAYN6uoEro02/?=
 =?us-ascii?Q?vEUGW/BJuW9Jfn5R6uyyeg2PVkDk/pMlLGkKPNvJfIr9yLiwL4NeZA6lrYud?=
 =?us-ascii?Q?b4grszozNMi1aPLhPqNyDF30wD1Imx+QeehE54pGn4cKPeXDdr7r+lxA6wiI?=
 =?us-ascii?Q?x6EyO7g6e0439enKd7KRz2NKVDtfnwj/a0DH7s0lZuWxx8e924L9Q78pCSgv?=
 =?us-ascii?Q?Rz+yiFr+wT0=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?bTRuoksJJAfYPv/57J49uz6zz26+y6V4w3bfjCmuAQiA4qoh2IVgbJkcvJfN?=
 =?us-ascii?Q?lMeZwJhynt1yx9IQLbTDJJ+yR2wqoiQGbaxkbxzPu2hF4DWn7AkjZM9PiCVf?=
 =?us-ascii?Q?Zc8vmdTvRfXm+/yQ6e1o/frK7bHRIZaerD4pTCwy81+kF30hKLArMHbOPZMC?=
 =?us-ascii?Q?/eTGnHFsQ8rRvHeHvvz92sbYBgFT9CEkPApEdtiJU0PERveDTWEaJXFU4mrF?=
 =?us-ascii?Q?ullKXUzvsnz4RpGi1heZvPivhxP8QopWlzO3xtYIC1VErN07vNiwTSESc9oP?=
 =?us-ascii?Q?zbfLgF1p4fZ5KjS7iOQvVc8oL9wNJE0Tea3qnoyH/f/4Rloo7DD6FEbNts8L?=
 =?us-ascii?Q?H/oZCBc5wv+xARcyYt7e5CEm8PwwQY8WXxBOAfx2drXUiTDIfrpnQVcMBx/O?=
 =?us-ascii?Q?EduxHfM2Dz17J4WuG0ACLwhzCfkx+yCF6a+0g236qib/DDFGOivu4Z6LLvHw?=
 =?us-ascii?Q?tTZuCqeHAg4J4aNfwrMmrAOj8wNse26cMhBUHxrodhYiOP2LDshOJpBNrwT9?=
 =?us-ascii?Q?bfqNdW9jPzKeXx/RGI4jw5i3u0/ZlC3htM9quMf2V43iwCsIASV19B+E2EIV?=
 =?us-ascii?Q?lVWhMrU6IqqP9xtD577D6GA0KNh/ZJ5x+5wmcksNn8rTwLIhyClIwueDCuZb?=
 =?us-ascii?Q?BP+rYoDMIbMjVv4Uh3tzh1XdgSofPEM++sGz/dtxgm7ADnl/9Qoz1Y9aWrxN?=
 =?us-ascii?Q?gy2MH4DKgxvIUHBN1qr0l4WipMrA8sUK4b0P90EXKJ3ehwW9Dag/1HcF+NnV?=
 =?us-ascii?Q?KuuNlz1DTRokrlUJ+9kxDEybRTXq9j5DB6mei72uQngL0zZHBO0Pf8b/yeD5?=
 =?us-ascii?Q?BL8HHcGQVQ0elhf13XqyPh9p6zJL8YUDADfrd7PTlBlGevEUNpYIoB51/jsz?=
 =?us-ascii?Q?TbSFnACip0dStVq5WpPrVtUCYO3elpuTPVhZ9uo24vS/yj0Bojftv5E3B4Lq?=
 =?us-ascii?Q?1BXIKswAWkzwxJoROzfceb5PVu4XCApdJ9a8kug2dvK/ak5GaKQ3ZiPby/TM?=
 =?us-ascii?Q?U6hZd5QCDxcE/E1GxWmTFdUCqexV1UGUb28gquRP/HfhWpa+scivJKkhi9iC?=
 =?us-ascii?Q?L81KkCeIP2Id/NDmqgg9POezRjQ9eKi2If9A5op7vUZOMI6btyE38zC1givX?=
 =?us-ascii?Q?aesmg+CIZNMdYWhI6DljxAXma0cjsl9R0kgIN3W2wezNhL6OgSvrfx3lvx6D?=
 =?us-ascii?Q?a5SgZvWiL/xuknT5AJz8qT4k2aFZQZPN/bjBXRv6X4DjzmTy7drlg3HG1Y+U?=
 =?us-ascii?Q?/F7pKr+dbIcIkJnnVp7vi6L+lTNV3jqP8JFzruL3W2/KviPrIM2lXxGYDPaz?=
 =?us-ascii?Q?+NQvOe/wAsBrV4JYwPJivcETtAW4xCUvuYXVOg8BOybAcCctByjF18w8raSn?=
 =?us-ascii?Q?xaA8udheJq6RDfPZd+Ei2yxs7vndsloxTFb/08ZVrw1ocrJICUc6oB4jtFZ6?=
 =?us-ascii?Q?pR1wKZOQ/RfkCwcGA6zW+uJSTRraKi3wbJpExjP7o0Osl7NqD1eqp+/7JPff?=
 =?us-ascii?Q?iJoSYOX/s49qUzkyfBkZqjZPIfYNhXgNFHk+EHbIG0MEYDjaTvzsn+x06O+1?=
 =?us-ascii?Q?6QIk5yRZMRv4BOWBiU1M9P5EHfa7JdGfJyMKrspZ?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c56020a9-2c07-4fb8-fd96-08dd8f23d15e
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 May 2025 18:03:35.8750 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: R8VAz8IhmaNWtLglEsSl6UjrdDw2Mj85Gvd9TDnVtAzkI77ZYBP67BYpVolF3wVw46HPQk++i0Pkg9hyTJCEkw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7659
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

Atm, on an MST link in DSC mode
intel_dp_compute_config_link_bpp_limits() calculates the maximum link
bpp limit using the MST root connector's DSC capabilities. That's not
correct in general: the decompression could be performed by a branch
device downstream of the root branch device or the sink itself.

Fix the above by passing to intel_dp_compute_config_link_bpp_limits()
the actual connector being modeset, containing the correct DSC
capabilities.

Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Fixes: 1c5b72daff46 ("drm/i915/dp: Set the DSC link limits in intel_dp_compute_config_link_bpp_limits")
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 7 ++++---
 drivers/gpu/drm/i915/display/intel_dp.h     | 1 +
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 5 +++--
 3 files changed, 8 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 593b29b56714a..ad1e4fc9c7fe3 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2524,6 +2524,7 @@ intel_dp_dsc_compute_pipe_bpp_limits(struct intel_dp *intel_dp,
 
 bool
 intel_dp_compute_config_limits(struct intel_dp *intel_dp,
+			       struct intel_connector *connector,
 			       struct intel_crtc_state *crtc_state,
 			       bool respect_downstream_limits,
 			       bool dsc,
@@ -2577,7 +2578,7 @@ intel_dp_compute_config_limits(struct intel_dp *intel_dp,
 	intel_dp_test_compute_config(intel_dp, crtc_state, limits);
 
 	return intel_dp_compute_config_link_bpp_limits(intel_dp,
-						       intel_dp->attached_connector,
+						       connector,
 						       crtc_state,
 						       dsc,
 						       limits);
@@ -2638,7 +2639,7 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
 	joiner_needs_dsc = intel_dp_joiner_needs_dsc(display, num_joined_pipes);
 
 	dsc_needed = joiner_needs_dsc || intel_dp->force_dsc_en ||
-		     !intel_dp_compute_config_limits(intel_dp, pipe_config,
+		     !intel_dp_compute_config_limits(intel_dp, connector, pipe_config,
 						     respect_downstream_limits,
 						     false,
 						     &limits);
@@ -2672,7 +2673,7 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
 			    str_yes_no(ret), str_yes_no(joiner_needs_dsc),
 			    str_yes_no(intel_dp->force_dsc_en));
 
-		if (!intel_dp_compute_config_limits(intel_dp, pipe_config,
+		if (!intel_dp_compute_config_limits(intel_dp, connector, pipe_config,
 						    respect_downstream_limits,
 						    true,
 						    &limits))
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index a7cc10800e0b4..742ae26ac4a9a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -194,6 +194,7 @@ void intel_dp_wait_source_oui(struct intel_dp *intel_dp);
 int intel_dp_output_bpp(enum intel_output_format output_format, int bpp);
 
 bool intel_dp_compute_config_limits(struct intel_dp *intel_dp,
+				    struct intel_connector *connector,
 				    struct intel_crtc_state *crtc_state,
 				    bool respect_downstream_limits,
 				    bool dsc,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 30f5636d18b7d..06f4ad8de591e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -599,12 +599,13 @@ adjust_limits_for_dsc_hblank_expansion_quirk(struct intel_dp *intel_dp,
 
 static bool
 mst_stream_compute_config_limits(struct intel_dp *intel_dp,
-				 const struct intel_connector *connector,
+				 struct intel_connector *connector,
 				 struct intel_crtc_state *crtc_state,
 				 bool dsc,
 				 struct link_config_limits *limits)
 {
-	if (!intel_dp_compute_config_limits(intel_dp, crtc_state, false, dsc,
+	if (!intel_dp_compute_config_limits(intel_dp, connector,
+					    crtc_state, false, dsc,
 					    limits))
 		return false;
 
-- 
2.44.2

