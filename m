Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E23ECD692A
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Dec 2025 16:36:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DA8810E6E0;
	Mon, 22 Dec 2025 15:36:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mTj1gOSx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62FF510E6DC;
 Mon, 22 Dec 2025 15:36:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766417778; x=1797953778;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=QdOK3epmwwyjVbANt4KYDu05CfPGoAXDpMkqUJ0oXHM=;
 b=mTj1gOSxnvfMm6bvdp4I06nrjSQGMZI16BX10+DtFXhn3rCoLxuBPafN
 NcyXM+gxvNLR9LCEcf9CQRI3c0EpaySp2MzE5J5dtezFkcVdNcaY5h3A0
 q8O5swi4lvdX804GgjuK+E1wK7w/BNu2FUcrjbPnJrlAliyjMkdYiaJPn
 ixbkUBrgq2VY0nZQmw5DwP5FYKIn4eyFtrfqChSGQ7Y28rQgrrMiTCycm
 0nPLvCmwKeoLs0Zi4RbJqjc9XwFx9WIWNf01y5XuBWCeCOqlT4GJXtbMG
 n6n1SN/R4A0K2ehOk71K5M0ciQFWV+OAFx1lwK9xwQaBMx1wdr/OF3xZ2 g==;
X-CSE-ConnectionGUID: 91rpWRKnRJebo5vqXCnl+A==
X-CSE-MsgGUID: zVTX0Ce1TuirdmGY6ryngQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11635"; a="68211463"
X-IronPort-AV: E=Sophos;i="6.20,256,1758610800"; d="scan'208";a="68211463"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2025 07:36:17 -0800
X-CSE-ConnectionGUID: /fAIRvtOQd615JRnh9eMuQ==
X-CSE-MsgGUID: vxzcgGJlR9+UdSp97C9aqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,168,1763452800"; d="scan'208";a="199854902"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2025 07:36:17 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 22 Dec 2025 07:36:16 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 22 Dec 2025 07:36:16 -0800
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.34) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 22 Dec 2025 07:36:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jleuExet2BGRitTif9EYPtjSg0AvVlgVgDZ1if1UAF1MxffJsS9TIa8LZ6ljvCUreTi+COLRsXTFhzBb7QxxtSHWKcgIwuuZaM5ZR3eRNrmBUW4YgLjTLpvJXp/j4jLjhMWyK+wmw5FO3FZdGBlD2UbW9OTb1b5aPfdmzclhNuCOcdQpDhSrPeYziKqXS1bHmRwhBVmJChZNOnpycUPuKfd/N6gq2aqw/m1CkwiDfU9ETltKO/mk8pDRNNhve115jlcTcQjh9T81NmCTd6KC402Px5VO2dPRm5avb7mRpK6V2Bk8l9df+cpJA8mxp77F22T4df7YUKXx8kkM/AoK8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4ednRJMhu2y4fZBibhD/huJSxYQP6DVn7mo3ACAqD2I=;
 b=iBo9esXL8oFBKrKjvP6UA0lH7SIO1oG4xEgXbp0voye392Kj/F78qTxL5vPfa3j6Ns1gpof9K9/eTEx1buzSP/Mg5pFGKNMcuz9Pove7/qgblpFg805GwOGe+avtyy7odTc8z9bR6BxKXMNyE0EM+uH38CO2o1VqUW9C1VisLby7D9ENBFLYXjKcoNSaCtsVSUEVGhEsBFKhyfr3DJ66hRoSR1ilfIv8hfJhbuwe8cEZ6xcSKaew6tGfExcvlnDOe3QPnrgR3K1vKHV0PNV6Vwob1u4/DKH15hd7mBlAip5xFs7JI5WANNm0jCuUvfCCt0ht9siesLQAereL06z7Rg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by MW4PR11MB6912.namprd11.prod.outlook.com (2603:10b6:303:22a::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9434.9; Mon, 22 Dec
 2025 15:36:13 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9434.009; Mon, 22 Dec 2025
 15:36:13 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Vinod Govindapillai <vinod.govindapillai@intel.com>
Subject: [PATCH 05/19] drm/i915/dp: Align min/max compressed BPPs when
 calculating BPP limits
Date: Mon, 22 Dec 2025 17:35:33 +0200
Message-ID: <20251222153547.713360-7-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: 74e018ac-b6f1-4ec0-b2e8-08de416fd6c2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|1800799024|376014|10070799003|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?itXGqelWyGz0rjiLeYsT3FHAbR3PAMboD5DNfk+z8PVbC/tQOJOzekc/3CD2?=
 =?us-ascii?Q?9Sa5BfUb1iKujjrnsy8iQysnW/U39ftxL3lfTep6djJoTik1Fq9+ZeFKu7ff?=
 =?us-ascii?Q?+DXsVZLT+Kz+rip1dv5yvHvCd9wefuLdkGcCbXH0ePe5YCB14t3XuMfJlX3K?=
 =?us-ascii?Q?96kbEyis1f6tKRwZaJN4sgKBBplER0/RGazEeCHABRHxTDEFvTxz5CNiq+Lg?=
 =?us-ascii?Q?4MhM6ctEnaGkRk1jgVu8/ofP6JPBM3RXUIu8rkUgt5X4Zx0zWPtXwcAKWo5s?=
 =?us-ascii?Q?xRjylCK1obDkBnWbz50Mp/puwwzqSvuze6hR9vf1efoix9QUGqiSKy+RSvIl?=
 =?us-ascii?Q?77UF95YfSPN10xLtwObal81Mjilu4sb/u87Fk39y3fZfLe4BEyETrLgPCuZL?=
 =?us-ascii?Q?SSPEnSEXlaWlTtZw2kZlcUxi78ZK+Ksvav8ssBUuRmmFrm0DHmZUxS/Q0Nch?=
 =?us-ascii?Q?KSKBBB3ikgqaojFzsa3eQApUHQevqGzezTbNjJCk0dh12s39rItMDWOo5bX2?=
 =?us-ascii?Q?j5I8n8FZ4mHJ7Y4RAYNzLRsWesOt3HZN2HtXnNqfHkNnV0N8U0zlEhRuSCI6?=
 =?us-ascii?Q?ib9LFrfsxgSA9Up0Ewo4DDHCWzdDCMzdCLiKvdee7bNvw1wiUzfqr144JAaH?=
 =?us-ascii?Q?8v0XApd/X9GCn7ntXmIwY5m+VdEDcGgxbnAfkcLuQ/RIjiGUXFwwyF2XXFxH?=
 =?us-ascii?Q?8zf9PDVPog8G0BDs3NbZU7y+MJj9UKX9+Hdf1D2L3v0gmYcBmPcEoNFDGbtm?=
 =?us-ascii?Q?avnLoqsTb9ROJGdrUj47vyDN0eLlYjCJ9XY+S0BdlkbRTSnFcX2tMBXiG8Yi?=
 =?us-ascii?Q?GvFYg1s7hdbeWkaMRumCOvX9h1xamWqhHczVA1oS+2cNwj4sKnutEy9q8QMb?=
 =?us-ascii?Q?29OQ6ad05sY5l08jE/aWkpnlnHkKOW4yARAG7vMmwwzPlxqHr1cEq44y3s8e?=
 =?us-ascii?Q?SmzHydmfLT9hYZ3mlTx32G+56QfxdETiEITecEQQ1SLiO899IXL/oK1YsP7M?=
 =?us-ascii?Q?62SYT5R8vOZNVGLiGD8n8ZMwPqAWToEg6aMGxQs/P89nM/0qVYZUwlMq+W4F?=
 =?us-ascii?Q?aqKvDHBhUw+nlynOHH7vvZaJ/EBx8PzP0/S8zyfX3nHATVo+tAprIUEUiJQA?=
 =?us-ascii?Q?M6NR6a1Cq96sB3vek93Di902JnUMipLKztBrGsG6mz/hr/zZ2alDaQ13Ka7B?=
 =?us-ascii?Q?BCsEylBmvNhO42ZruvHFhTZ4AM+lS9VKT2vCr29iYQeKY5d6LXZBOKEijhg7?=
 =?us-ascii?Q?tywJcvq4M6OotDETtKjF4YGQmn14dx4MJYhoC/KtFeHq7nZAKSEs7kHUWlIF?=
 =?us-ascii?Q?4G7+rmdo+wVBIYR+xffuDS0WH/vkbCkgGQMNOjmU/L6UuaW035SJLMRy7BUp?=
 =?us-ascii?Q?rk72dQwsfRzEvHsJCPkR5vDP2iq3yEURd4uFGRnWVhOToDnvOw7P9ZVhGgmr?=
 =?us-ascii?Q?T+kRF4HIVca0hUE0Oi48lHpv3ZBpDQjx?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(10070799003)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?lysU0RQj7e4D3IsoP81IUS7vzKuK7HOsjT6mVcMh9lmSYCY94BHi9QMcYsuG?=
 =?us-ascii?Q?q6F1nAXo0sl9ZV5oY5titJ3DH3aeqF33qhxzT1aU/0tliDpNAVLHeL4at1rw?=
 =?us-ascii?Q?PRGFaY3haEFSo7/Q4c5trlYJbtVmrRL3zR7PwAbAfZpfGm7gt0HhBwaQe652?=
 =?us-ascii?Q?PGtcYlRy6jtEOJTzwjviP2TNI1O6lJXkxRAqN9weRZe8ukHNigDv9dAQTEWn?=
 =?us-ascii?Q?+kTy+VE2TWnbYClAMX5lIpJO6xf7PMIkqxfTm0l9ERi9lkMUOdPOLJLf51/R?=
 =?us-ascii?Q?yVbUUOLPu2gKEqXkyAOml5eJnBbVnrbCzC4AYGLNN3UeoQM8miGAL1S8SXWv?=
 =?us-ascii?Q?EcquptAL5k9io1c502mSLvAF+YvMZ5JH3v7C8OqlnuOl4I6ZreJbQ4e/EVWb?=
 =?us-ascii?Q?s9ZhxAk0b6dnzNyXk4z0AvYJNtyyEbkvtvjDEf0JDNem1MlUPGR0Z5Hdb9bA?=
 =?us-ascii?Q?3rgd3Ci5p17tAy+jPisOt+eP8HaXo4kZPP9VWHGgaUiBtjb7DDaxqNfvgNKq?=
 =?us-ascii?Q?xKmAmsKRDEVuH3lNLQP4QI9Hb6v1/FtiI3zk0KNoA2RpYOTipVGjSkmYv2Th?=
 =?us-ascii?Q?DHQs39zxY/ruqGQGjIUEikcN6W597UUMNuGcLXCKzViSbw65MxMDoMxPmMa/?=
 =?us-ascii?Q?GGVKFI0lMgjSn0ZBqnpTUs8gGgI5Dvq6xFjFI3w1dYEGssfL1XZU18rXizA1?=
 =?us-ascii?Q?u4tFML1dT4+euT9zt+1wN2ev6/bIaoUYwKU4uAbLUnSj9WqheWjRVyWe4gX9?=
 =?us-ascii?Q?aKcO5VNC2oQSb6MU6bP7PeNZKxDWM4BO8cxsjgufeFtlBRF1qczecSUnWIsz?=
 =?us-ascii?Q?30yW2g3OdWZmmw++QCcfuHHkZXrElx2SeE9SMbmx1XzvQ7sHwSBCjTNNT89O?=
 =?us-ascii?Q?lKQ7nI8Yt3AXPkTJqRb012Lklt2gDSF1SDlNR56i53WPiYzF4KDTH+SNfO9E?=
 =?us-ascii?Q?KvSP17jC08Lz1cDUpswLY8YYgXejCBh1upBnfTePewadNjMJb5Q4mfCV6Nuc?=
 =?us-ascii?Q?XkriaONI9r1KNhafIqeYgp5EysryRLcg0Xel3qe8ty38SUUTRW9eSnRjiBJG?=
 =?us-ascii?Q?Ud0SbYc7VBYVUY3FMcrRwfSkgMEs/PSiAf8pEWHfcX1cdI9oCyERw3q94tvX?=
 =?us-ascii?Q?ND5APDZLHs+LLejwt3AHFwfG9lHzkmzAPCLJCaYu8wN2xXOsvs8sY2s9KE6T?=
 =?us-ascii?Q?nlmti24JinS5tlzTDINuXVHGGmm6MZZgOcTUKvvo/CZDciXUhBR9+lJIWK0z?=
 =?us-ascii?Q?RICrXU73zZB0b2MczC4rEbglK2n8qcB45OihW5ZIT47yidWR2RfZhYksS5WU?=
 =?us-ascii?Q?3zcwsj9skWIxdFMR/jzSAfwdgumvKtpmGJjCYVvCKY2qWYnseIGwRd4C4eDJ?=
 =?us-ascii?Q?fcy7z5cAk8c9+eCg7Z3khFvNAmtCIYthQi1kMz7zsoW1mWGmcTs8kYPHu8qN?=
 =?us-ascii?Q?orpSa1dFbLFGAGg7sVvnoQPxJPrbtihnji4tnZjHqVXtcbtyhymARjd8TRPJ?=
 =?us-ascii?Q?QJMFT2RSbYn6pIQTrZjoivRDpmB8RkTrve+cKcZHWn5lXT1XxSgtJhDQR+Rh?=
 =?us-ascii?Q?1yS+9jDEbyvoBZvcRMcTrSN1cd7IZww9nSPJBl6lBia29vwddEqHHFi79yOv?=
 =?us-ascii?Q?NeWPxa1l1pN0bm2SmbpJWCqGnH5hsj83SnlXt0Iwu7c21Q6QjK+M8xwZgCWL?=
 =?us-ascii?Q?njF3hBBUN3xnEKbUOd0t8peCZHncR1Yfz2Igzf16mcpsgLq0xnG9KKmWGyP1?=
 =?us-ascii?Q?iu6CqV0Pzc8IXMD+8J2R5tbT0wChcVoJvYg3+KmZ34FFGoZmz27qzEXvmyE9?=
X-MS-Exchange-AntiSpam-MessageData-1: aq8Jk47agJSo7Q==
X-MS-Exchange-CrossTenant-Network-Message-Id: 74e018ac-b6f1-4ec0-b2e8-08de416fd6c2
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Dec 2025 15:36:13.4879 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: N8iPAY2rR9DdktdtEkJWgp21o7wWJL9cKjgmv0rOZ0hS4R8/lptyGT+0T10EwOqM9GY/QFWg2N3xA8fTz/E7GA==
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

Align the minimum/maximum DSC compressed BPPs to the corresponding
source compressed BPP limits already when computing the BPP limits. This
alignment is also performed later during state computation, however
there is no reason to initialize the limits to an unaligned/incorrect
value.

Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 57 +++++++++++++++++++++++++
 1 file changed, 57 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 4807a98d396a2..daab43187eb0f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -868,6 +868,20 @@ small_joiner_ram_size_bits(struct intel_display *display)
 		return 6144 * 8;
 }
 
+static int align_min_vesa_compressed_bpp_x16(int min_link_bpp_x16)
+{
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(valid_dsc_bpp); i++) {
+		int vesa_bpp_x16 = fxp_q4_from_int(valid_dsc_bpp[i]);
+
+		if (vesa_bpp_x16 >= min_link_bpp_x16)
+			return vesa_bpp_x16;
+	}
+
+	return 0;
+}
+
 static int align_max_vesa_compressed_bpp_x16(int max_link_bpp_x16)
 {
 	int i;
@@ -2262,6 +2276,40 @@ bool intel_dp_dsc_valid_compressed_bpp(struct intel_dp *intel_dp, int bpp_x16)
 	return align_max_vesa_compressed_bpp_x16(bpp_x16) == bpp_x16;
 }
 
+static int align_min_compressed_bpp_x16(const struct intel_connector *connector, int min_bpp_x16)
+{
+	struct intel_display *display = to_intel_display(connector);
+
+	if (DISPLAY_VER(display) >= 13) {
+		int bpp_step_x16 = intel_dp_dsc_bpp_step_x16(connector);
+
+		drm_WARN_ON(display->drm, !is_power_of_2(bpp_step_x16));
+
+		return round_up(min_bpp_x16, bpp_step_x16);
+	} else {
+		return align_min_vesa_compressed_bpp_x16(min_bpp_x16);
+	}
+}
+
+static int align_max_compressed_bpp_x16(const struct intel_connector *connector,
+					enum intel_output_format output_format,
+					int pipe_bpp, int max_bpp_x16)
+{
+	struct intel_display *display = to_intel_display(connector);
+	int link_bpp_x16 = intel_dp_output_format_link_bpp_x16(output_format, pipe_bpp);
+	int bpp_step_x16 = intel_dp_dsc_bpp_step_x16(connector);
+
+	max_bpp_x16 = min(max_bpp_x16, link_bpp_x16 - bpp_step_x16);
+
+	if (DISPLAY_VER(display) >= 13) {
+		drm_WARN_ON(display->drm, !is_power_of_2(bpp_step_x16));
+
+		return round_down(max_bpp_x16, bpp_step_x16);
+	} else {
+		return align_max_vesa_compressed_bpp_x16(max_bpp_x16);
+	}
+}
+
 /*
  * Find the max compressed BPP we can find a link configuration for. The BPPs to
  * try depend on the source (platform) and sink.
@@ -2640,6 +2688,9 @@ intel_dp_compute_config_link_bpp_limits(struct intel_dp *intel_dp,
 		dsc_min_bpp = max(dsc_src_min_bpp, dsc_sink_min_bpp);
 		limits->link.min_bpp_x16 = fxp_q4_from_int(dsc_min_bpp);
 
+		limits->link.min_bpp_x16 =
+			align_min_compressed_bpp_x16(connector, limits->link.min_bpp_x16);
+
 		dsc_src_max_bpp = dsc_src_max_compressed_bpp(intel_dp);
 		joiner_max_bpp =
 			get_max_compressed_bpp_with_joiner(display,
@@ -2664,6 +2715,12 @@ intel_dp_compute_config_link_bpp_limits(struct intel_dp *intel_dp,
 				    connector->base.base.id, connector->base.name,
 				    FXP_Q4_ARGS(max_link_bpp_x16));
 		}
+
+		max_link_bpp_x16 =
+			align_max_compressed_bpp_x16(connector,
+						     crtc_state->output_format,
+						     limits->pipe.max_bpp,
+						     max_link_bpp_x16);
 	}
 
 	limits->link.max_bpp_x16 = max_link_bpp_x16;
-- 
2.49.1

