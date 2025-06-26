Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 30520AE981D
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Jun 2025 10:21:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7DE5310E876;
	Thu, 26 Jun 2025 08:21:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XiHAdMoI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1772910E842;
 Thu, 26 Jun 2025 08:21:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750926094; x=1782462094;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=hi6qSOlYliPQUi/nc5Y+Y5g3YScEy7wTe9USzP+sN4s=;
 b=XiHAdMoIE0wLjW3zn3uMyBZkFQURIYUTJuo+fBd0/vmTpm7iEmv7VS6O
 LUFehNoW0fggKn6zGhtGT/92k2dnGDwZ4Zc7L/cGFTL5CaNb1Kgn/+0Th
 00/+jqAxcaFvtFLlWrXDfeetwHdPZC1uQpAZYNo1scW972SMlZmEEqDxC
 msO3PAKw/eYgKQBUtHNr5QqCGItIZZeXBppwnAgJ4RNlRVOrBGi+I6KXT
 39iWljKwO7sDAh3jxo08qIWXbsc/SxbgtcnJtYqwfIgrRqVGJIavBmVRL
 nGHXeZVI0wMzMdMFN6xugMw6SKhOZMm/31RnzT9HQVGUuJ8x6Py+Shu9y A==;
X-CSE-ConnectionGUID: LNVgp8XkQHS40mMS0UwHkA==
X-CSE-MsgGUID: TYq3wxQXTgyDjrdnFoSArA==
X-IronPort-AV: E=McAfee;i="6800,10657,11475"; a="53345762"
X-IronPort-AV: E=Sophos;i="6.16,267,1744095600"; d="scan'208";a="53345762"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 01:21:34 -0700
X-CSE-ConnectionGUID: bwjkN1xkTlKX/SRTexbmVA==
X-CSE-MsgGUID: 4MH2Zv8oTS+B1YuRkh1J7Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,267,1744095600"; d="scan'208";a="158211408"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 01:21:33 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 26 Jun 2025 01:21:33 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 26 Jun 2025 01:21:33 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.64)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 26 Jun 2025 01:21:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=q6+yj77NaQGIFthcUxhJIBGsApXV58M8eqClLAd7gy9eooeny0eCt0cR3e3dlkQ7vhteDMdsqg/5Dlum/THg89rhHbeK7NNQjhwp0WN41KqhERiFE8RAcKb7pgoT/MUZzk7PMVq7vCyTEVy7fBuLbqyPBhUBinlgeULCv7YZTlmmyyOfylSutDrmXEaIW4BrAih/2PxXpv2IFVgDj68yRnJpq4hoSp7bMNVnLCTUucXBj2RpEoa1Dcg0K/06goj+3kVkkOyGp0SKuuN6ubtXMyq6m5OQThvDDek/hGSAArhFuL5gJxsc4NITzjMpHZyEMCrh69OGpJRcvL1h6vRkiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DgMMYTjkm6M9uQ0ba4ySb5+UrJ1I2EqvvOHYPjz+IQ0=;
 b=c+v7e/OIuknLAnCCjqyzNTxYoGRYrxT3zNl1FLXfUOrkQVeYtXL9joUf9Ygk0v/Z4v3kd8TXm6cbbdSv3akkH4TbfkxdXVHw0P2y/2A73gxW/bSO+R1hTecWrRjfTcUI5Ab3DeO05vXs/4dkYnV4UO0XcaBZFoR5HSFhSfmVpOOC+U9IUqlHqTWKlwe6d+/9pH/iY4yFy4M/m/9CiI133OAyg6lE89FCh87Z9ja3cSqQ557t3lxo+mLzG9BW5SKr6Xu/HwVREsSSQUoGynDrglCZP9KmMe56lP0LT54u9FQznbGN4ZZQsPNswInSQdzBMb7plGrPVplHa5RJ0xXldg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH8PR11MB6928.namprd11.prod.outlook.com (2603:10b6:510:224::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8857.30; Thu, 26 Jun
 2025 08:21:30 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%6]) with mapi id 15.20.8880.021; Thu, 26 Jun 2025
 08:21:29 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Imre Deak <imre.deak@gmail.com>
Subject: [PATCH 20/20] drm/i915/dp: Ack only the handled link service IRQs
Date: Thu, 26 Jun 2025 11:20:53 +0300
Message-ID: <20250626082053.219514-21-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20250626082053.219514-1-imre.deak@intel.com>
References: <20250626082053.219514-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO4P302CA0020.GBRP302.PROD.OUTLOOK.COM
 (2603:10a6:600:2c1::9) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|PH8PR11MB6928:EE_
X-MS-Office365-Filtering-Correlation-Id: ae6199fd-feaf-4286-19bb-08ddb48a7393
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?E4sr0oJ5Lj2suJpVYlzqyPec52x5+bDTlZk8n3qVRIYJv6FjuehDUe8WJrY0?=
 =?us-ascii?Q?rNt73EO4pgUS377sEeHNJ52aSXn+cetVZhawVhvr0ds1MljNkdU4fhYQtTD4?=
 =?us-ascii?Q?RbEnOxwBOeWAeSA2HsFaMXagAlkj9tT3dy0zeqp/896wN+9TGW058c3X/wnQ?=
 =?us-ascii?Q?9qPZK2F0bWZUDIFAiRyelTKMTRjwLz/BOMBhuAKUxvAOdx9WFSvmDtbb7YIY?=
 =?us-ascii?Q?FB4gkPiDJJu4PvLa4pdYWlB8bPiODTXOX4qLzqtn7RlX1g1L9ng95Q3WsmhV?=
 =?us-ascii?Q?sxxf3s/zIct6hRfcABoWei2zlHOgvxWCLEcK44PRfAfrKzjmX+IsHxuJFiXG?=
 =?us-ascii?Q?3XrJVuXTl0TiO8XtnuuZKVPlfZmpNP0JIFdghiWM/DY71BImfoSPdUMkf/Lc?=
 =?us-ascii?Q?Xi05y4blH/zkkaEE/GRbg8Sutxr1riq51PTz1FhreDGk2GZ3NvgMe6fgYo7j?=
 =?us-ascii?Q?bgGDeNwThdoNl/sg0rLZrr2qF4i8Mtlz0kJYcK8Ws0AfNK33ys82jdX+vD1U?=
 =?us-ascii?Q?cL8hEta94iGaD9zPPvyvVcv5sKzpSTZWg5I6TG5PtyFLiVBonz4w3Q8bcoGM?=
 =?us-ascii?Q?sgPVyJJXA0Jbk9K/Ii4zUd6RdkT6LHwXdh3Gi1NXpn2fuUdgPD5BVhs7pz5q?=
 =?us-ascii?Q?iL6UPVpKilJSTBsAiKrNFs+JX3cF5bAIB726s4vj3BM9zdYl+O7VeNb7lEy5?=
 =?us-ascii?Q?9h7o5W7Wvwp18OitiDJiheLhzwqcDIfWDPesJ1iS3M9k9K/XtO81aZ6VOUoE?=
 =?us-ascii?Q?juSHaUEzXSLXy6dgTqoe5y4xD1Zb2Y75WJD9JD3zFn62RZR9Hoxt/6eCvfzL?=
 =?us-ascii?Q?jdZc9of7oG1mqoFqb3J+6dxwb8b/P0ki0D4q9gRUHbP4dBzzxckpt0CoISQe?=
 =?us-ascii?Q?dcVGD9oF24iNGz/PUm6kKEV4Ha5mluF6Dqkv/zFL54tgpiy408OxiQlYLHfX?=
 =?us-ascii?Q?KdXxSjPc7UrYQj5ieOoIT+CgxOOmPMgz2lzSbD4tmeYIojC36hbtXIRlykTG?=
 =?us-ascii?Q?6Ag++Zm7pOAxUIzcFAKYcg9FaOW1urnRe0nCQrxf18SvzY8qeu3Y599SmEsG?=
 =?us-ascii?Q?ZkqWJGD/SLMIB6zFsepm0FG1jIzp9R+V3dyyynTFSTpuv9O1iw5rlvvOo3MB?=
 =?us-ascii?Q?HAsyo1djwxnVJEa7zwioTdDbATJIT0TfznLAmyMQKHBvJrKT1hHo3QjTdIws?=
 =?us-ascii?Q?8m5tzYfudj2oo3wJjkGeIcSBJWulUWi/N3UGUDA9ZMQ5f/Jk5tKFY4863b2z?=
 =?us-ascii?Q?/KiH5/GpeYO6wWiry5Mj8Q+ahSmZO6zOwSd76BkoLZq0TTtOEZxiSLUbkTA9?=
 =?us-ascii?Q?l31SfbzdtHwJtUyM3F7ZUydSmuXg+Tmo1K1NZv2PK4yttPjCPKiytur1EgOi?=
 =?us-ascii?Q?HE1JJQLf0ZwKKu/KwlxH3qTT3zIJEsp49Jc4S1ja+5retwgQlw=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?A3TQKYCUGWEuvODjGXPpbeE2nPmtTtGyxwJoNRU/naH00m9VnXAMgWswxWEL?=
 =?us-ascii?Q?MTduGtvMdRzH4ov4YYtsNwUwzLlrp+elVTVqURTomruEIgLauz4a1/yHiojd?=
 =?us-ascii?Q?lKlu6OzMsOi64+g7CBlXe57wXXim/QgRapcEam//q5r6Wiaj4aSIk1c7lEoN?=
 =?us-ascii?Q?b/Kcphd18xcLELJRP2WL+JMt+mazmCty++wqYEbtFydE2pTTvyHFEThRuwXw?=
 =?us-ascii?Q?M/B8YinjcvgehqK8zdfesFi+RF3aSXeyQ+/sIhyaGt803I1vWuqfovwkvGQo?=
 =?us-ascii?Q?3zqe9ay2RcfBWyEmiPTiS21M4sGfJQvuGumyupc5OVehH9jinp3kWTvn1rxO?=
 =?us-ascii?Q?uQLMgSLJMP4o43d1PXc37KwCqCA/MhwbzF7vnxSB3R8UF6NHGSEqoPNo+OTP?=
 =?us-ascii?Q?u9Q+lfkA6qOFXUuX9sgjpiVXRie8lQl4VWVYYFUznduKOHiTULLcsLZDJ76l?=
 =?us-ascii?Q?JvLL1zxgI6vtkayBlkPySNmJPdHqcSFjXBbDpkn50xJ81tiZUIWTF4yfst1/?=
 =?us-ascii?Q?PHA7wVMPluQDRCfsyXnJTba/V7rBcktTvLLKCoXzf0GJ9Z9z9Aj0fIMHnbKe?=
 =?us-ascii?Q?js6JW9JtMvwaYZHv+mPWI/407L2uNcnBja6q5A//zAyxaWuZn3IqUbx8ZNLg?=
 =?us-ascii?Q?5UDmni2K1vJqp78t45HL60bjKJKdOw+A48XlhlkaRUTYV4MoC2pCaPaXro9q?=
 =?us-ascii?Q?zGr8ZD/Iq31zp7VCU/bSoggfwWAs4j3vUdQOzSS/y1o40cvGpIkSXK9SAK+v?=
 =?us-ascii?Q?4su/g0zBNy6uiAVDTnc87/9ShAd6bM0ZPbJuLZq4YNpBejsbjSXjiUs0cxMF?=
 =?us-ascii?Q?SJ4lRARTWO2wf3rZaGYsMBHbMDAW5toD05biygtjzIthPWSEgGTttl+0ebaR?=
 =?us-ascii?Q?TFchyXsAG/FRNleUularqorFujbvMGUy1+q+lKOBFt/l08ANta+7QQiwPXGl?=
 =?us-ascii?Q?3fy/JU2sFb4fEB03+kEKYmcyHBZ24OjVf79F3EtcfZdjDVNcvX92iPv8UtzE?=
 =?us-ascii?Q?XlVDtEizy/dkUp11Ef/FIt5w6eu0z0s/cSYNHmZCHOrz7ZM37L0luaHQv81M?=
 =?us-ascii?Q?cI6U+5CyWLsVgBnot+MNOfplEmPLvURsE4YbLW/9G4QekiX4iRgZkbO3J/8k?=
 =?us-ascii?Q?PizX8AQxy7cFO9BH2coWJKRq+eLOfgzYF5glOSvy7LShTAHCcxfK24FWfkC8?=
 =?us-ascii?Q?lkgYmTfiHM0wewLJymIIfuzcv07yhkZq+GjmGdDlEI1oms4g8dGiOpq5MGng?=
 =?us-ascii?Q?fE2NePjz7u19t/G4EBRkhn70WTQiX864TJCZ2GS008cIrTzQo+VNFTR7txiT?=
 =?us-ascii?Q?NwP1/jIBZ2N61j8yu40Ryjm2zfmVjOaud2PiBIh2LGctCzh6ZoAl1E7uSAKv?=
 =?us-ascii?Q?+aWVAC3Mv3r3i7PIsjUQdgjNq9yLiZPFGWdgm2+jODCH6PXBmcvF/WgBveAu?=
 =?us-ascii?Q?QdBNJfFPa487kPcMJ0q9pHH3bbNBjIvrffUnDgfbl6V6XjcPwbq3h+fNZjpg?=
 =?us-ascii?Q?uWB7Jq9UxLeOqUYcMcfMJNqAfQfx3TQH+zK6amLIInAf9DbQEhEc5X13j5ds?=
 =?us-ascii?Q?gcm3jcIi3pedaLCrXUBpawP1RaqnLI4QfRV/DERH?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ae6199fd-feaf-4286-19bb-08ddb48a7393
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jun 2025 08:21:29.5406 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tOgB9e172q4Mp7PTpRXSYeLx2g2XZoigUuhZjlWQgTe9UW9rnTbwbqMluYMheiLjGsqhCVjWlrdPyQgEFF9UEQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6928
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

From: Imre Deak <imre.deak@gmail.com>

Ack only those SST link service IRQs that will be handled, similarly to
device service IRQs. While at it add asserts that only the known/acked
link service IRQs are handled both in the MST and SST case.

Signed-off-by: Imre Deak <imre.deak@gmail.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 17 ++++++++++++++++-
 1 file changed, 16 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 6f67fac9724e1..0e3e9ab3ac604 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4545,6 +4545,16 @@ intel_dp_mst_disconnect(struct intel_dp *intel_dp)
 						 DP_DOWN_REP_MSG_RDY | \
 						 DP_UP_REQ_MSG_RDY)
 
+#define INTEL_DP_LINK_SERVICE_IRQ_MASK_SST	(RX_CAP_CHANGED | \
+						 LINK_STATUS_CHANGED | \
+						 HDMI_LINK_STATUS_CHANGED | \
+						 CONNECTED_OFF_ENTRY_REQUESTED | \
+						 DP_TUNNELING_IRQ)
+
+#define INTEL_DP_LINK_SERVICE_IRQ_MASK_MST	(RX_CAP_CHANGED | \
+						 LINK_STATUS_CHANGED | \
+						 DP_TUNNELING_IRQ)
+
 static bool
 intel_dp_get_sink_irq_esi(struct intel_dp *intel_dp, u8 *esi)
 {
@@ -4637,6 +4647,7 @@ static bool intel_dp_get_and_ack_sink_irq_esi_sst(struct intel_dp *intel_dp, u8
 		    esi);
 
 	esi[1] &= INTEL_DP_DEVICE_SERVICE_IRQ_MASK_SST;
+	esi[3] &= INTEL_DP_LINK_SERVICE_IRQ_MASK_SST;
 
 	if (mem_is_zero(&esi[1], 3))
 		return true;
@@ -5175,7 +5186,7 @@ intel_dp_check_mst_status(struct intel_dp *intel_dp)
 
 		drm_dbg_kms(display->drm, "DPRX ESI: %4ph\n", esi);
 
-		ack[3] |= esi[3] & (RX_CAP_CHANGED | LINK_STATUS_CHANGED | DP_TUNNELING_IRQ);
+		ack[3] |= esi[3] & INTEL_DP_LINK_SERVICE_IRQ_MASK_MST;
 
 		intel_dp_mst_hpd_irq(intel_dp, esi, ack);
 
@@ -5183,6 +5194,7 @@ intel_dp_check_mst_status(struct intel_dp *intel_dp)
 			break;
 
 		drm_WARN_ON(display->drm, ack[1] & ~INTEL_DP_DEVICE_SERVICE_IRQ_MASK_MST);
+		drm_WARN_ON(display->drm, ack[3] & ~INTEL_DP_LINK_SERVICE_IRQ_MASK_MST);
 
 		if (!intel_dp_ack_sink_irq_esi(intel_dp, ack))
 			drm_dbg_kms(display->drm, "Failed to ack ESI\n");
@@ -5487,6 +5499,9 @@ static bool intel_dp_handle_link_service_irq(struct intel_dp *intel_dp, u8 irq_m
 	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
 	bool reprobe_needed = false;
 
+	drm_WARN_ON(display->drm, irq_mask & ~(INTEL_DP_LINK_SERVICE_IRQ_MASK_SST |
+					       INTEL_DP_LINK_SERVICE_IRQ_MASK_MST));
+
 	if (irq_mask & RX_CAP_CHANGED)
 		reprobe_needed = true;
 
-- 
2.44.2

