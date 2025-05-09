Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 423DCAB1BED
	for <lists+intel-gfx@lfdr.de>; Fri,  9 May 2025 20:04:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DAD710EAC7;
	Fri,  9 May 2025 18:04:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="G7gDliPe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59B2C10E067;
 Fri,  9 May 2025 18:03:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746813840; x=1778349840;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=o4g0yL/cW9uzPYHj9Kg578jGTKpEIctF7cKvjIyzATQ=;
 b=G7gDliPeLdTrz7Kq8zGmX9p5iozeJ+f3wwQOYdsonQNi45oIdeye6vtN
 d7SNRzSxgNnFcMCewwz7AlobkJTVLZdv9tX3NyEru9JbR/715t7psRUVi
 MRfY1NkYHTbNngNGy+JEvGLjsjkv7aXxRimNwBIWEygA3cZI39JXmk9uR
 BvmVFuYcAiXBye60U/7B16S6lNKzFmXN+7LOjDmvqoKFeTNm04hlie0gD
 RXqbMAjHsnAT8aGwrCvjs3wVgcHy6MAek88L6Fl6QQ7wiE2Cu7GZoTYY4
 Cz1l6qt4CO+QHiBf+SrTllIviXxW9CGW54gRgLo1M/rmA/Rv4ZHHMwKxP Q==;
X-CSE-ConnectionGUID: 8yfg04B1TA6aANc8jNZ1pA==
X-CSE-MsgGUID: X+rLNhTFSr+wa+Sh3zpidw==
X-IronPort-AV: E=McAfee;i="6700,10204,11427"; a="52464879"
X-IronPort-AV: E=Sophos;i="6.15,275,1739865600"; d="scan'208";a="52464879"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2025 11:03:47 -0700
X-CSE-ConnectionGUID: Z6EF1BmiQV69IlhkOMk9yg==
X-CSE-MsgGUID: 6yMamD5qT9WSh9GMzeMZ6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,275,1739865600"; d="scan'208";a="136564162"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2025 11:03:47 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 9 May 2025 11:03:46 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 9 May 2025 11:03:46 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 9 May 2025 11:03:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fK9EfP91kR93LjS/IxnNJiRzk7yQUEFNHVAwQ6HwIC3vdE3qMNQcRHw3lKDwOhHaxvVAtXeHiEojDskj8u0ozw+NP81lYuZZD0bzbvw0omdelPn2ivfE39w8oUP2sUD3SgBGSg5WQoHbHXuBFvLBwNZNAN4TJLAjMASiveNY8bje0tu2uA6jRF1/e5oIU38Ye1x4IM1BSjUby7PY3J6dtRt9rCreXXncwQKn0YOp9f9HpOiDLNrG/vk3K/leIw1ID/ItSzssHuWveOYGRIUAcm8Qb+V7wl64W8FyruZnDW4DvXHjEa++sZ97+urQCpYTnRNnNwE6GlR9RMav5MJHoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=umEF/pAp5fZqFlAK1dmXEQNwWG8kUDjqWvoLZcMO2qk=;
 b=b8TOx1ONrFy3xzxt4lE+3EwyhgD4aWUH6+T5iSdQHQeMOXWZ2XrVyfb7xyc0eOs64agc/zn1QLpWwMKTJyibP6mCEAWt+TOOQk6HQEtXznHPbkMPq3KMlffvT7VGXJbcimfg8+PuLnT3ATFZL23TAKRC1dKF5wzEbl5nC1TRGGXN0mAoYf/auw4vc03NESje/SBwKE6TqYwEfwxxk8afCZgtfIeIG+sWuhVVNYKRdUfsIJq1gTriqwUVOyunKQykz/Kp04/r470JQo31SCNwpNlwPLuwTK925i4tgG7gfYw6QtKQ+ap4fkmVDzb0hP4i1z/WD2ItvOATtGzyBo609Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH0PR11MB7659.namprd11.prod.outlook.com (2603:10b6:510:28e::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.22; Fri, 9 May
 2025 18:03:39 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%5]) with mapi id 15.20.8722.020; Fri, 9 May 2025
 18:03:39 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Jani Nikula <jani.nikula@intel.com>, Ankit Nautiyal
 <ankit.k.nautiyal@intel.com>, Luca Coelho <luciano.coelho@intel.com>
Subject: [PATCH v3 03/12] drm/i915/dp_mst: Validate compressed bpp vs.
 platform restrictions
Date: Fri, 9 May 2025 21:03:30 +0300
Message-ID: <20250509180340.554867-4-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: ebca042a-d4b0-4aaf-f43d-08dd8f23d3c5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?dsp2nVFIiEXsWn1AkGjKRbTzST/RpWSKvK9JhOagxblCbVrchZF/UN1WiQSy?=
 =?us-ascii?Q?cZnZpInw6VbiO85oWAaESP6mN4Exs25bKdrUT6gnwbtMdlJycM+DgDA8jg8Z?=
 =?us-ascii?Q?ZxdC8WUuC6hhWSxTw1G5QeOw84sUW+VZV1bRDGofAmAFp8gZ6h2gxHLtU4vi?=
 =?us-ascii?Q?mGNE0jB5/3ovowElAVUr8LZWbiuVDB9Hn+P2THKBIXU/EH1HvkwaR+7+2Yns?=
 =?us-ascii?Q?kuFdc7+Kh52ublJqUmmE/yMStspYUc84aFakSkqZVQUbCBUadbaCOqM/crGH?=
 =?us-ascii?Q?yIb7s4qFp3IWLXnKmzeFxsSWrKifpv+gPT296MQJRzxVsP4PaEwE357PW5Gt?=
 =?us-ascii?Q?Ok9R/YJJo1eSngJ594MIBJNTW25LIkQGaHOTGzc4nyATME8Oz5dMH8Jz08FE?=
 =?us-ascii?Q?CKDjhxGhHSGobfPik36lM7mjUS4pg9K2CM4n+YB0ECl32fNnyzJR502fLmgb?=
 =?us-ascii?Q?/UifP8EFMmNDHZrnKcLdVgXD5CpYgs7a5vprv+QWgkUs0OqnxbLzxEXqCZfb?=
 =?us-ascii?Q?olwp5/P21gGDREgpSVVMmvEPqDQiKNX2EgxJE5oQcaquf3td3MWQYlfWNn3t?=
 =?us-ascii?Q?Sj8Obl9jvqci5t9C0WKcN3ZY6QYBMsGtffV1hm5wiHVU3zjTS174jrc7+G62?=
 =?us-ascii?Q?bwa/2uBruQ3Q6XkJiLfsjVLQe/gwFiYs1yON317DZda3isrP/8ihp5GyjPFR?=
 =?us-ascii?Q?NAJ45gHPzFeWbvyIxYcF2miaCXAmOvG9vd1wC4/P0E5kLWe70mbNUeKD0cv/?=
 =?us-ascii?Q?XT0aKZVV8ed3Bz4+nYjlX3S5fTh/dEO0cLuWdqsW0ccV3Vdxr85GSWyOgGPM?=
 =?us-ascii?Q?bQOTZwuJJnLsUIlfU5nqY6omGE2HoBwwnPpuWntr45xIci844bHZz0Hsf6Ez?=
 =?us-ascii?Q?CFCL0rr5dHe4kIPzgrU6vv+3HNBGkmeCX5lOcQluAqob68O8MQ1hqN5fMPYD?=
 =?us-ascii?Q?b5pxfNOkcPjU2AKnhTpEg8cCbatvp0KEWUEm0+VzK/fmfHGQ2qWkC9K20Cxu?=
 =?us-ascii?Q?3anpS1P3NnAh51emCn7HPztZ2CGoamu+BX3A6UupOcuonhFobkbQDwGdHveA?=
 =?us-ascii?Q?dzzkBVxWH12hSOPorrEnOZ62dhxmmSPdqGb9dKIN3EHsSpdlqmvAvO019HMb?=
 =?us-ascii?Q?8A93Sm/ArE5iNIRct2jKUmCb6lh2i9PojXu2Ms6fuIT3t2FfUsh8VryaTgie?=
 =?us-ascii?Q?WaJWcAKZkFCoiNKP2hoeVNnzV6HGrD6bHySUoVZhUEqCN4fgShrR5UNXMYTr?=
 =?us-ascii?Q?eTG6PolaX2cMv6YIj/cPESuuld2bGb/frdO/fxwjxV6e1eu7nPZFj4HzI1nr?=
 =?us-ascii?Q?QAmi7iimCyUB+3y1vEcElDB95G8/rdvDVkLaPSRoc/TiUmirxFsDwOGsKI0l?=
 =?us-ascii?Q?3Ko+Zn3l7KKaGFGCuEp5uc4guDOR29iF34IaMoyrwxagmYKOOFAuzMQmBPz9?=
 =?us-ascii?Q?gGYpLPwdBNk=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?qHdtKWKf4MI9fij3SPf/LYOXKiLWod8D5G8y54nvh63yYA5vqeQVLVoE6Mld?=
 =?us-ascii?Q?lvrpS7Cru1fC2w83kICq+LqLbMWE2Sm8lzXMlxua6ayTd0iKw/mD3ZjD6nkm?=
 =?us-ascii?Q?omMaz3ehwB4FHyCm0zfdwQ0IvKHKFB/ll/CQeXE1jyhKxyVAkywwJ1K6yyIN?=
 =?us-ascii?Q?JRN6Cp5JLFiydVpKwsS6MRX2nhROrf51luyjE/9Kz4PS41HWoegWTKRCDC8C?=
 =?us-ascii?Q?Cr/7ph+C9i0NmlNh3FzCZ31VFhlofKrpIxYjgl60JLdiL6NeGqlreHpiZER4?=
 =?us-ascii?Q?nfpKxVfhyr5PP4KQi1iGd5SmPD/Xc66umDmF0oUfFUOvvpJfg5g8PNAimuGb?=
 =?us-ascii?Q?y6pG9kws9BYMuCDna7EbAeGjXHe6uNS6pREXBnK9T+3wk6ixXqmeHSiD/XEc?=
 =?us-ascii?Q?MxYqsaBOE7e+BQMcoAawjUeZl03nIZglRpQTnKCTXfTxJaNA0++ePKENepK8?=
 =?us-ascii?Q?5JRvUYpaKvLdJO1EmAPRH6BTM/HuoD0XJWIlqRG5aQ3uKhkcPd3b0zNa/fUu?=
 =?us-ascii?Q?ULJP3Pc6QLhqmN/Qk8VdNuKPg+vCHd7zragvdiIOaEf7JzN6w41NdO/D/DwW?=
 =?us-ascii?Q?lLEsDCTkgrY659i8ky41qHgsjdxKVuF2YpBafemPZ4YU7sec9h66yf80KJdu?=
 =?us-ascii?Q?1SlQVgEVK3XxwLNhQDBegXHsJOUeFTQhNJOzyA4EGVxL2ER1z+N51JKln+Hv?=
 =?us-ascii?Q?l/mGIZzYZh4DfOsq4qaF+wJm6eS9Jj3jsFR7daOrzQZr/1lecsOwK4Mg/r0q?=
 =?us-ascii?Q?22iFolT1yYIAYs+uG+75zu6UGusjWT/382wsklXTrwMnSazy3II8sXNNKeJ1?=
 =?us-ascii?Q?I6h/VBVv0tEctSDmnQa47+N6AXrArM6Gf/X0NenTJiMcDcIsy3OGgyKDY71R?=
 =?us-ascii?Q?6/xy/Gdfl0j4LKZEdrC3AXCyDPb43WZCQuWMV3IY/fLhGB2xi9/A+y+aiGej?=
 =?us-ascii?Q?3+R2/KSOHQfj4ERhxHXTHH6uu85vB3AgjeS2VkPLHcw4y4VYx7JMwgTr3k4c?=
 =?us-ascii?Q?WqQG42POnkEg32Xisk4Ghfrx98Bj43EbRYnGLIg3YEmIt6tjEOR4YhYI0KwV?=
 =?us-ascii?Q?A0kRjA7xhhfQcAzdBF7Q7vtCnkOSS83iLA8ifUHjwWlP1mYJxR3Pe0sh++SG?=
 =?us-ascii?Q?AKrThUxK4dLuGDIqDtYrumVJ7QCErmgooU+356f1+mpdKqgynesq7e4nE037?=
 =?us-ascii?Q?30TY0MVf1Bdh/mj6RHCoHc6XnIymQdL6utOp3a4PSoQcFP2pGbrvqmyFTzKo?=
 =?us-ascii?Q?klH2YSHBfLRaXhVqez7eIpn8sEa4y5Ss47+7YDDV0ELsA0pyVcLf3J6rxTzq?=
 =?us-ascii?Q?j44XkIpoaKDEtrl2pE5Y5H3Va5r/FU4VzrmRdYK0OZ9zD4a2UUGxTQ9bpKr1?=
 =?us-ascii?Q?X654Uo8gyTghS5a5XMGWeZQUxY/cphiZ/Gzh8a+hgdavrq273cYYhrFuKXR/?=
 =?us-ascii?Q?92kHFfWF4sqEs3HlO0bzIChiEm5UObZ3KbLLWwz+IirVO/lKh/rvCXNQeK/F?=
 =?us-ascii?Q?TZdfaFDH3/t6ELaBqOrw6bam3Sz9CjfDs2BER865z2KuKUnF6survdw87oGa?=
 =?us-ascii?Q?XEdUCdHLfkj/sgFuzG4k9CUvi8x1/DQ3WpsVTydJ?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ebca042a-d4b0-4aaf-f43d-08dd8f23d3c5
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 May 2025 18:03:39.8233 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zspPhEjXqsgGu9A8WC8riB9VujUyHnOZta2oNpK4ddExwYJn0MrH8i7s06CzgRXDLcb6suWmy3rf1yOWmfukMA==
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

Atm TGL supports only a fixed set of valid DSC compressed bpps
(6,8,10,12,15), but this is not taken into account while looking for a
bpp in the minimum..maximum compressed bpp range.

This happened to work only by chance since atm from the above min..max
range it's always the maximum bpp that is selected, which is one of the
above valid bpps (see mst_stream_dsc_compute_link_config() ->
intel_dp_dsc_nearest_valid_bpp()). Before selecting a bpp however, the
bpp's BW requirement should be checked wrt. to the MST total link BW;
after doing that - in a follow-up change - the validity of any bpp in
the min..max range must be ensured before the bpp is selected, do that
here.

Cc: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 9 ++++++---
 drivers/gpu/drm/i915/display/intel_dp.h     | 1 +
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 6 ++++++
 3 files changed, 13 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index ad1e4fc9c7fe3..c67c3b5b2dafa 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2111,8 +2111,11 @@ static int intel_dp_dsc_bpp_step_x16(const struct intel_connector *connector)
 	return fxp_q4_from_int(1) / incr;
 }
 
-/* Note: This is not universally usable! */
-static bool intel_dp_dsc_valid_bpp(struct intel_dp *intel_dp, int bpp_x16)
+/*
+ * Note: for bpp_x16 to be valid it must be also within the source/sink's
+ * min..max bpp capability range.
+ */
+bool intel_dp_dsc_valid_compressed_bpp(struct intel_dp *intel_dp, int bpp_x16)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 	int i;
@@ -2176,7 +2179,7 @@ static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
 	max_bpp_x16 = min(max_bpp_x16, fxp_q4_from_int(output_bpp) - bpp_step_x16);
 
 	for (bpp_x16 = max_bpp_x16; bpp_x16 >= min_bpp_x16; bpp_x16 -= bpp_step_x16) {
-		if (!intel_dp_dsc_valid_bpp(intel_dp, bpp_x16))
+		if (!intel_dp_dsc_valid_compressed_bpp(intel_dp, bpp_x16))
 			continue;
 
 		ret = dsc_compute_link_config(intel_dp,
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 742ae26ac4a9a..4d8c3f2b90dff 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -147,6 +147,7 @@ int intel_dp_dsc_sink_min_compressed_bpp(const struct intel_crtc_state *pipe_con
 int intel_dp_dsc_sink_max_compressed_bpp(const struct intel_connector *connector,
 					 const struct intel_crtc_state *pipe_config,
 					 int bpc);
+bool intel_dp_dsc_valid_compressed_bpp(struct intel_dp *intel_dp, int bpp_x16);
 u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
 				int mode_clock, int mode_hdisplay,
 				int num_joined_pipes);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index fa969b46245cd..196182c3fd988 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -310,6 +310,12 @@ int intel_dp_mtp_tu_compute_config(struct intel_dp *intel_dp,
 
 		drm_dbg_kms(display->drm, "Trying bpp " FXP_Q4_FMT "\n", FXP_Q4_ARGS(bpp_x16));
 
+		if (dsc && !intel_dp_dsc_valid_compressed_bpp(intel_dp, bpp_x16)) {
+			/* SST must have validated the single bpp tried here already earlier. */
+			drm_WARN_ON(display->drm, !is_mst);
+			continue;
+		}
+
 		link_bpp_x16 = dsc ? bpp_x16 :
 			fxp_q4_from_int(intel_dp_output_bpp(crtc_state->output_format,
 							    fxp_q4_to_int(bpp_x16)));
-- 
2.44.2

