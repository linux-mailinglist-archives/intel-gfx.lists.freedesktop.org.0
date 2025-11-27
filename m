Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 55063C8FC81
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Nov 2025 18:51:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6371B10E884;
	Thu, 27 Nov 2025 17:51:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MM0wJMW/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5E9810E886;
 Thu, 27 Nov 2025 17:51:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764265886; x=1795801886;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=pXuuvoS30/kqWMeYvKkcx2hwqBvJc+XW40nEsrjjrL0=;
 b=MM0wJMW/taYOBVQDSvtm2SoZ5XvA0HdQWvCG0fMjiXw4hd+p0pYZl0MR
 P9fI1Po7iBYTOaWsT+GtthRkB0g1BnDhtvPbtVTfVrwlNYYh/lVQ1xyF6
 QuC/s7AaPvB/rnhSBF+7tizEmfx6wtw0ieASZNj3DwVRPoYmWaFGOI7cz
 gTUS5TpjPJGenrcV4WXnO4CzFopLIlJzkR9iv+eZ72C4N+a+M+bifigDv
 5PbpquMm5pCJ185ZgLc4SVZkmMOJLfFCeQSfy09FVugVpKVGEjYWaJb8n
 +QnkoYDTEecefDraJ1tkC2F7o+p2kjJe2pFkqjyjeziFrPu2hvfzm/5r3 g==;
X-CSE-ConnectionGUID: +YxUl07VQC+saiUMoWS6Dg==
X-CSE-MsgGUID: ycuat3afQam8vqODiD0X0A==
X-IronPort-AV: E=McAfee;i="6800,10657,11626"; a="77002979"
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="77002979"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 09:51:24 -0800
X-CSE-ConnectionGUID: P6LwjfbOQNqgReJgShWXFA==
X-CSE-MsgGUID: JLSq0M2mT/uTBANiwSWAHw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="197453613"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 09:51:23 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 09:51:22 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 27 Nov 2025 09:51:22 -0800
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.16) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 09:51:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=g8zOBLRR+y4b5hhegQji7x6ae0qkq5uXR0UAtAmIQ1sdK2j6VBDUr3ajZmfoSRgyqFStn/PWCddkG9B4pvmJX614eMDto4NmtfQZQmgNyvZBITV4VA8pFoCQzUsXEZcJuz/qZXTwFxZvnHLei6HWl8nPKBEXN3ggxGcVI7hvRGZBX3BSgr/w+MlCqqSGLXD5L3SZpkghVPbFWAfUeEpo6gWiYtAsesOkNuGblGlhTcqGBUE4AmmxyvaR8oYTm2kUOrfHqQhbkynvGODgdi75dPQxIadyVbagDH89iNopg8OlxRqsX3+Ct9D+irNz8oQOC+/4aNX0FsCWANj6YzydSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=v8ePsU6fpRSyVIWSeecmDV5z8jm4LqIk9aHfwUhMcVU=;
 b=SP095PyV9PKU9f+4/FsS/4ts7ZnH/0J6f9EsT2uxFi08eX8HU0+apPUyC5U68v/P6x83nXiuRqw3hB5TcFT3MnwcDtRrq4mrRg46ojaoLDPHARTHFl6/tFcABgzdUOU9C4w+jnuin6F9iWedwlnhUfQ6SHpfLKE1H7XZHISYvPhm7y6+IPuyQ5UwY3kfS7pipIjXjYkKOBpOgfKLXBSudE/2NzlNUM7kEK04qteW6/tZSQJ6Qkcyl7BDo/fcP7eJNkv6IFJ3lbd6192URwWEwzwPrBPmHBZya5cHTd9wjrazJ+z3PA4XPs7qiZs7GRpkPCbsYsmJB+uksDyfBreJGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CH3PR11MB7842.namprd11.prod.outlook.com (2603:10b6:610:128::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.12; Thu, 27 Nov
 2025 17:51:18 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9366.012; Thu, 27 Nov 2025
 17:51:18 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 23/50] drm/i915/dp: Pass intel_output_format to
 intel_dp_dsc_sink_{min_max}_compressed_bpp()
Date: Thu, 27 Nov 2025 19:49:56 +0200
Message-ID: <20251127175023.1522538-24-imre.deak@intel.com>
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
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CH3PR11MB7842:EE_
X-MS-Office365-Filtering-Correlation-Id: 9c916afc-09ff-44ab-3547-08de2ddd9166
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|1800799024|10070799003|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?8HviGpc6PTaNL2dQo8AS9R9isNVQ3aGIC0pgNqNjO7eo70UqKZI+oG+egyFG?=
 =?us-ascii?Q?L8P1EQ0ck1mcNCPsU65yOZuYKLhfTBBkf59g9Nru6WJR8xI1qqVpqQrDWePw?=
 =?us-ascii?Q?x9EJqjq05a2HrMGI08ND+hm+zj+r5P0FowKAhG2P3XZItDns49sZWTnURDls?=
 =?us-ascii?Q?KrQ+oMPypHFbV/H20KfQzCrSSZ0VEweClfX8+WUBaBnw1uG/8jQAXzUqZIze?=
 =?us-ascii?Q?cppKWhkyGezM5nljMWeLvUUh3Z+va9St5fHPq52znB1/ygUkNJWV1nG/gCRi?=
 =?us-ascii?Q?yzb9serIdnZWCjTQNU3eqqsqnjMO3vQujpN2fINpkIS3e5/F4xqjzzV6vKgy?=
 =?us-ascii?Q?e+p2vlAS2YZk11S6yImxdLj+gTWE7OHa1RiP02C+gcMcmrQv0pZpRv899r2z?=
 =?us-ascii?Q?zj4xiZj++Lh2Skp3N5vGaDdaPBuxMjxVLYrOZKlqK06+Whffd2/o9x7WGuR0?=
 =?us-ascii?Q?pZSrZy7/lpgwDhbShG3vabrTpC+B0k+oPFzqZqX7eVDjPZl1sNgHamUTmVw8?=
 =?us-ascii?Q?CWaOFSq6Nl+v2E5M7VSxDvVBj5//IEiv9k/qSoBSBatu3X9Ep5EZx6FnGB0B?=
 =?us-ascii?Q?+W7CP6OziUQdLGkv3SMnJJpYXtMGPsOfKgUktPOPszyAtvshyy6sOik7Zxzt?=
 =?us-ascii?Q?u6aLL9MxtO06gh3TngH8VOKbM//Y0ECZR+IF7oFFgQPzIoZbLC/BKxBnflxo?=
 =?us-ascii?Q?r/pswvmiIGQCRId71HRQUvP/VC2UJ1ixQDBHROUasvvEzQLwmwMJO/8PL37e?=
 =?us-ascii?Q?g2UQVmqsKjVpKAa3ygCZ/Smgqvkl3SFFNvE8zAPWpZeCetl2V57xdGZXeik0?=
 =?us-ascii?Q?cvL1QQ8wX0q2HSzuLbbepUpsak6lgDTpz4+mt0CD9pCnYe0c+quxjq6oHzmh?=
 =?us-ascii?Q?9r4SPMfR236zMWeCmToiYGO8xXTU2XmN5G6ONUtPUCwqa9IsaMT33h1yNaac?=
 =?us-ascii?Q?MAxUDNMg0unYeJGUl5Cs4vzwZccQ5q0TyiRaTUAM4it8wVP66d9VhhzSd80x?=
 =?us-ascii?Q?oBcvWBx45kkNkkZpEl1blKKxh3dvnWFLzR5Gnqt8fZCdLBqSN6UkoE4ynloV?=
 =?us-ascii?Q?0LcrubHz4vVDyRe/YZfpnLRjwdUlBh78ftjK+uM4sE0ryhDaC5WDyiBO1quX?=
 =?us-ascii?Q?I2/VHynakuMONSQuuakBW/30kvST7n6unqJxS2yIozeodF5swbB9OQOCPaC9?=
 =?us-ascii?Q?V7K3XC21x6LaYXDdh7GQn3abLJpFgaWMhFjZHncd1dTneRnTLe5PhILvODEW?=
 =?us-ascii?Q?BA+mr/oLqIY/oAHx6SxGPkMCrTJ39MsCTse4QMhYUVEqyNSYWgaYQAHnay3/?=
 =?us-ascii?Q?5P963bkXaKifk+78MEbCF1A0QEhGr/7wLWkSdK58B/SxAWGhglb4OF0xGSYy?=
 =?us-ascii?Q?1X5o64vk5VUd0p5XpELL6+JPKT107xbgXX/ygkNc6kV8h5ofR7Hni8NV76yx?=
 =?us-ascii?Q?e6guffJBmzrD9JfTBA4ig21tS4xeOR5l?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(10070799003)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?88mKeG8EflJUkAXKpBWqjD5T/SYQRYptJpM7dGdfX99U/cjzbqbttF3pyUz7?=
 =?us-ascii?Q?PAjcsqT48DpWGCTZywTBGPOuMvzJGECrrk+LYCL7iGbAi4jmHPca8ROy0Gh0?=
 =?us-ascii?Q?7v3ORwF58j8QDYVnZVcCSUOhGJ+BBlrW1CnCC4+DiO221QhkdlxCBFvI6ztL?=
 =?us-ascii?Q?qGxnbUfyIbgpTZrDJ7/Kx/wZgWAq5k7p5szCmclu3sY/aWGjCW9t0Y8KfdsN?=
 =?us-ascii?Q?UmNvaoUvgYamdcI4duxWXKxUm/DQrHzafQ+SKSbI2jl15FY+ct/L2kffcc+4?=
 =?us-ascii?Q?yIEqJw7DB+RzgRjEQr0dlyPXH2iwVyoMXLu5UkYvFQSseBRDk62X7SOU/n2B?=
 =?us-ascii?Q?BphVLFefNvkKfDwKP/O8Vcgh9ccRhEpIQQQGJqu3JQ65WIViEHoIVsBgH53Q?=
 =?us-ascii?Q?Xe/7NHgwI3GC6FnoxMdRELDvRn+v4DP5szUdoOfls8pfO7EIJ3w7WoaXy/96?=
 =?us-ascii?Q?5gjeK54dGUo7EcXtsBW6OH0UKMKSISDDuVN/Yb4VrE+b2eyUBD7LyB73oy/R?=
 =?us-ascii?Q?CMYmNkaJ66k+43YF9YQ17CUwJADdQU9CkMOHa9SVCZFjEYs0EzHuzkjyF3RP?=
 =?us-ascii?Q?Xnrv3RqobSUAiQovMsKOolyTBAvPWP5wB33tn2NWzhTijHToov1Ue4LhHQJE?=
 =?us-ascii?Q?uStee+F9m43qeGvXAowoy+zGBF1MEQ5Ay5y6GAc3siL9o3/8YJdlQ9v0i+Gw?=
 =?us-ascii?Q?DZaM+KKPS+e24PahyiXnIEdENwYQNcaESKY4NPGBbfxnJb+uGNolldOGYsx0?=
 =?us-ascii?Q?VTFJ6jW4FrnQ9npmBHAZliUUpFv01NT4KSn4/JmfnqJhQgrZJeVfD1+Uxjzk?=
 =?us-ascii?Q?+tnb2dJ7W3NHCVkWdUEJM6+CRjq0VyC3deHeIJ3F1PevtL27/C/wVdZUxu6w?=
 =?us-ascii?Q?8tB1mBcgM/dknFYr6Q+0jN7AGXJ+V8kOBM8bFX9BucCUqg9zXsoiv4QkMI4I?=
 =?us-ascii?Q?fVm+diL3CTjp2tWaCJOkK/C9zoEqWa178b3zZulu+ZtIRNNFEjIihJ4NQToz?=
 =?us-ascii?Q?82OUz/qFypW6w8ipy5oQ/8Vq1cOw6k0asreO+TIcDvwLe/SRHpTWEG0F4Ufs?=
 =?us-ascii?Q?98u9pVEcig1Jt+pxClD6VDgIm80wba1CkAa7yfmZ8aNMgWLCOS9Z9dp7Fj3L?=
 =?us-ascii?Q?aMWYA76LVN9aPdLqR9PYWtrQ1MEi5OTSBwFvTU7Ju5FR00Y+h8GzGgn95Hc2?=
 =?us-ascii?Q?0kAKDa/T0h3SPfFuAjeW0NugDSspLo0NLlMJG/0sGxBQAZPDGEjI+sQ+OAQY?=
 =?us-ascii?Q?cZyuB4GUwSQc5+hJo+WhXW1I7ZIyGNgkwiOSIvOCZkuABbA35ibBuD010LFr?=
 =?us-ascii?Q?DPIlZlD8dV8K3O2MGmNDbfTTn2/rcpDDgeU39CGbCdk0gwzu3Y30W6x6L2Gz?=
 =?us-ascii?Q?jvwLQqRrSWPjYIv2gTFBpDgDmIZVOd8//Nm5cr2UK/utMs/O4TIpIMfcP8x8?=
 =?us-ascii?Q?dqnw/y9IriwedI5xxDlfEcdqz1+BFOlzOgyzKo7GzOugKqnoV+WzCS9WD+Km?=
 =?us-ascii?Q?353xR6+X+iGdacaeQMyKqU4svCqiCaSxnWyv4h1FLabUo0/Z6VTNuJ2jp9wD?=
 =?us-ascii?Q?yZNTTzbaNvnfoHnxSkOGcfjaD0BKMO4R46NYt+uAIVWnpEMrVjNjC1/8DQLa?=
 =?us-ascii?Q?btzdSXoAsmDLlkh+AGPN+CwVsKfppYR7dt1AYnMtFEw5?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9c916afc-09ff-44ab-3547-08de2ddd9166
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Nov 2025 17:51:18.6061 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QM0ESCZEIxDdLXPalMwINWAOLKrT1t3+YCl5zJMv3iC+bMiBDCJqcuqbhkfzd30Xes305b4JvmSXx/mmm++YdA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7842
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

Prepare for follow-up changes also calling
intel_dp_dsc_min_sink_compressed_bpp() /
intel_dp_dsc_max_sink_compressed_bpp_x16()
without an intel_crtc_state.

While at it remove the stale function declarations from the header file.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 24 ++++++++++++------------
 drivers/gpu/drm/i915/display/intel_dp.h |  4 ----
 2 files changed, 12 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 5ad71e697e585..54a037fcf5111 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2156,7 +2156,7 @@ static int dsc_compute_link_config(struct intel_dp *intel_dp,
 
 static
 u16 intel_dp_dsc_max_sink_compressed_bppx16(const struct intel_connector *connector,
-					    const struct intel_crtc_state *pipe_config,
+					    enum intel_output_format output_format,
 					    int bpc)
 {
 	u16 max_bppx16 = drm_edp_dsc_sink_output_bpp(connector->dp.dsc_dpcd);
@@ -2167,43 +2167,43 @@ u16 intel_dp_dsc_max_sink_compressed_bppx16(const struct intel_connector *connec
 	 * If support not given in DPCD 67h, 68h use the Maximum Allowed bit rate
 	 * values as given in spec Table 2-157 DP v2.0
 	 */
-	switch (pipe_config->output_format) {
+	switch (output_format) {
 	case INTEL_OUTPUT_FORMAT_RGB:
 	case INTEL_OUTPUT_FORMAT_YCBCR444:
 		return (3 * bpc) << 4;
 	case INTEL_OUTPUT_FORMAT_YCBCR420:
 		return (3 * (bpc / 2)) << 4;
 	default:
-		MISSING_CASE(pipe_config->output_format);
+		MISSING_CASE(output_format);
 		break;
 	}
 
 	return 0;
 }
 
-int intel_dp_dsc_sink_min_compressed_bpp(const struct intel_crtc_state *pipe_config)
+static int intel_dp_dsc_sink_min_compressed_bpp(enum intel_output_format output_format)
 {
 	/* From Mandatory bit rate range Support Table 2-157 (DP v2.0) */
-	switch (pipe_config->output_format) {
+	switch (output_format) {
 	case INTEL_OUTPUT_FORMAT_RGB:
 	case INTEL_OUTPUT_FORMAT_YCBCR444:
 		return 8;
 	case INTEL_OUTPUT_FORMAT_YCBCR420:
 		return 6;
 	default:
-		MISSING_CASE(pipe_config->output_format);
+		MISSING_CASE(output_format);
 		break;
 	}
 
 	return 0;
 }
 
-int intel_dp_dsc_sink_max_compressed_bpp(const struct intel_connector *connector,
-					 const struct intel_crtc_state *pipe_config,
-					 int bpc)
+static int intel_dp_dsc_sink_max_compressed_bpp(const struct intel_connector *connector,
+						enum intel_output_format output_format,
+						int bpc)
 {
 	return intel_dp_dsc_max_sink_compressed_bppx16(connector,
-						       pipe_config, bpc) >> 4;
+						       output_format, bpc) >> 4;
 }
 
 int intel_dp_dsc_min_src_compressed_bpp(void)
@@ -2683,7 +2683,7 @@ intel_dp_compute_config_link_bpp_limits(struct intel_connector *connector,
 		int joiner_max_bpp;
 
 		dsc_src_min_bpp = intel_dp_dsc_min_src_compressed_bpp();
-		dsc_sink_min_bpp = intel_dp_dsc_sink_min_compressed_bpp(crtc_state);
+		dsc_sink_min_bpp = intel_dp_dsc_sink_min_compressed_bpp(crtc_state->output_format);
 		dsc_min_bpp = max(dsc_src_min_bpp, dsc_sink_min_bpp);
 		limits->link.min_bpp_x16 = fxp_q4_from_int(dsc_min_bpp);
 
@@ -2697,7 +2697,7 @@ intel_dp_compute_config_link_bpp_limits(struct intel_connector *connector,
 							   adjusted_mode->hdisplay,
 							   intel_crtc_num_joined_pipes(crtc_state));
 		dsc_sink_max_bpp = intel_dp_dsc_sink_max_compressed_bpp(connector,
-									crtc_state,
+									crtc_state->output_format,
 									limits->pipe.max_bpp / 3);
 		dsc_max_bpp = min(dsc_sink_max_bpp, dsc_src_max_bpp);
 		dsc_max_bpp = min(dsc_max_bpp, joiner_max_bpp);
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 30eebb8cad6d2..489b8c945da39 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -150,10 +150,6 @@ u16 intel_dp_dsc_get_max_compressed_bpp(struct intel_display *display,
 					enum intel_output_format output_format,
 					u32 pipe_bpp,
 					u32 timeslots);
-int intel_dp_dsc_sink_min_compressed_bpp(const struct intel_crtc_state *pipe_config);
-int intel_dp_dsc_sink_max_compressed_bpp(const struct intel_connector *connector,
-					 const struct intel_crtc_state *pipe_config,
-					 int bpc);
 bool intel_dp_dsc_valid_compressed_bpp(struct intel_dp *intel_dp, int bpp_x16);
 u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
 				int mode_clock, int mode_hdisplay,
-- 
2.49.1

