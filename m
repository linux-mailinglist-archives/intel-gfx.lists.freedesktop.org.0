Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C625ACD694E
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Dec 2025 16:36:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58B8D10E6FE;
	Mon, 22 Dec 2025 15:36:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VtmWjFSP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 671CF10E6F9;
 Mon, 22 Dec 2025 15:36:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766417797; x=1797953797;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=rnAhMd8o0eb2a50uUcVKWvIsT07u/7QqShU4jlgFzLk=;
 b=VtmWjFSP9UwQRgT5I2C25voybo5YueyDLDoZSVAkML4uHHgI6+LLVfiU
 rihdZI8jJM7eWi2iWBcOCMUBBGQaSPpJndsZ2039zqR0nVgZQP7L2xRiI
 kv4FRD0uXhIK58vyJXKYmPhXehbW4n8r5e3yqcl7xX2i/RK7xmiE1D2v6
 FjDhqVt38NV7MwFLDIeylpq4Rh4YR1ds6T0V/JIGB8v66E3sYBuuV0Df9
 0NWB92CN1amMqTPiIdvzuDf6Ex56dDHyVq0U6tpRRbB7vRULNnXTRKQlK
 m4P9SN2tlMdbO+2GETPlyi16+DGY82v1DsBBNJiiIl7mykhQGy1Hg8HeD g==;
X-CSE-ConnectionGUID: 4XKot5NPR6iSwK6Zb8LQ+g==
X-CSE-MsgGUID: aPMa17D0S5qzjhoV6s71og==
X-IronPort-AV: E=McAfee;i="6800,10657,11650"; a="79726286"
X-IronPort-AV: E=Sophos;i="6.21,168,1763452800"; d="scan'208";a="79726286"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2025 07:36:21 -0800
X-CSE-ConnectionGUID: vC7uXMaISj2ZFZZSqTyIOw==
X-CSE-MsgGUID: N6XA5zNUQNKQ1TjsyLMdxw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,168,1763452800"; d="scan'208";a="200053257"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2025 07:36:21 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 22 Dec 2025 07:36:20 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 22 Dec 2025 07:36:20 -0800
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.28) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 22 Dec 2025 07:36:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BDvNair8m/CnqIM5ybVS7huUe1D3gqYJeiy+XXHIxkUaw5YVLTc0vc1N60d6mcnyUBOEzovtm+mglJ0OafuBY3UIzImWrAgbjJcbUeFH6TLxmsz4FLfDLF5ZjRG7cb0LgnbS7vlAldVHlpnWgjNYrsG5Gvl+fOEBWrpKxbv6CRxc7o5zruv5l4ALaZv8/+VSaxQrZtydVS3k6cJdOPzwukSPxVBMp1v+pCAv3mvphSXRHurLQmIBpVQ7wCiin8LgqK07b1r1XsNAefWVuLCmjRCrAv8txpRU1Q7uvYrJ9ka2qkN6EcbkuEfQTzxpRzapBy1NuXP0faUPI8Md9UJvbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YtlqXrTqfEVxIriWkTU2/qru4eEFtQYiZqjj+UG8Sk8=;
 b=tn9ILygtKBbu50USm0O9FCv9sPNUPfI6DPoQ3CjQsETB40VrIkEtiRPe4WiF3ou60Nr5bpRlFnLXBUlFv1xYJgB3FaDEbnHIEnc4lhl6Hk1CfRGm8mLC2eCaqpQoSv73KSUHsgTWJ62Zyx3iHTuQ/OxvdMIxm0L302mEWzRl+OHClxPltNauxW0GLKHTsHslGF3eUr92X+fgZ4RbiQMGrbwQDOl2SUaAgo0JPudMxfe3pf0TdqzEwD0973UOF7UM/w2fOK8UaDFvUpO/A1Cdp7/f/VkMlTiEHhvrXIhTDXT/z3ftD3q5DmSwOUXJMj6PtRjuau7xF+VuMb3gNQ+33Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by MW4PR11MB6912.namprd11.prod.outlook.com (2603:10b6:303:22a::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9434.9; Mon, 22 Dec
 2025 15:36:16 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9434.009; Mon, 22 Dec 2025
 15:36:16 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Vinod Govindapillai <vinod.govindapillai@intel.com>
Subject: [PATCH 07/19] drm/i915/dp: Pass intel_output_format to
 intel_dp_dsc_sink_{min_max}_compressed_bpp()
Date: Mon, 22 Dec 2025 17:35:35 +0200
Message-ID: <20251222153547.713360-9-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: 207e8562-6ee1-422e-d4d7-08de416fd854
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|1800799024|376014|10070799003|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?qHh+8p62vUtfegNafm0KUncRQW4g8Yg4v0bWBUPENPFpuUu1ZXOmUK6IpYLT?=
 =?us-ascii?Q?vp1X9tS7KBz2uPlrlxmFyGggJslTRlWnyVTHU15mLqdvR+HICT7qGTojrD/r?=
 =?us-ascii?Q?ZakbczJHFudeqR2xiFGUZc8L035Lob/zEoNuOpsq1tNEORC1j+7O8ShIYJ9B?=
 =?us-ascii?Q?F36KLflUXlaHZ//i05mnrw4T4yNmSf71rstH30MWydm0igtVFcD3vp5QvRuE?=
 =?us-ascii?Q?lzLR6XEnV1cGSX5TVtSaVyoLrYqldYYkIwBD+F8vx5EJ7Kp+qgpQmN0hWd/w?=
 =?us-ascii?Q?5Gb8+cAJLvGyqTn8K338l64D6QlppmNFRwNPelMj0oJmBpTX3ZzMsyyLIoiJ?=
 =?us-ascii?Q?zZ6PF9vlLi5/3vM5fGjGbcZx0wHzP16do4avcf26/L8we5RKb8eqYd9iFwD1?=
 =?us-ascii?Q?BUOhG00t9XpvCAz9ovZPi+Vfpm5jBHzM6dadLahsSy0e+hOtYYBGE1XQxp1A?=
 =?us-ascii?Q?RecIyNRRNI9luvsZWBvtZZYgxMi3EM7ZitIO2lp/swAQRFMECiN1KvbM7s4+?=
 =?us-ascii?Q?+hqOXti2kUx5mfu0AH+/r/xSJf5DkH1Z7mlM/asdNFy6Ur31xpQlaEkopVLI?=
 =?us-ascii?Q?bbvJt0tR2jFYkMfsKCPDrchQMgvgo+fZxvUSTGG77ALtcwV7t9S4HuhRwze9?=
 =?us-ascii?Q?C6jAMa8zvjl83FDbz2nGEaGk6GgJydmo3PuBiMpCqRxmWdXm0td1x2VujLco?=
 =?us-ascii?Q?+lmAUoPHVZQgIriIA4S5AbJOZ1qYNwGibcTiY+V67k+zJPzlhiUnCdjLVzPo?=
 =?us-ascii?Q?vXYd+AtA2Jdq0xsAKOA2IFn+10DUUw+orfOzpwx8UUgsP4cwc2M6i7pxKH0N?=
 =?us-ascii?Q?sPNqHElBbqeiwqaQYzOK/226iLgoBHR6Bn/OVS88hS+h7yPwIjlT5ANOT9Kb?=
 =?us-ascii?Q?93NxTJ1QxjUZ8a0bwE7PNzm1JGBcv0dDATkfr7vYIB2/iRmTnwl0qm+yvMXq?=
 =?us-ascii?Q?F/g1gkM0TxMGVdv8k6VPA9Pb3+0RdDCQcVrYmnrFNu2CV1F3TNm22j7wIUrt?=
 =?us-ascii?Q?sL9R9JvZ5MZM0PeO/bXDadbwxU6eZpled/ZyZRxOyZGTW4g932Bun4VdZ1To?=
 =?us-ascii?Q?7FdNcSKfeuU/S14B7aPTK9CPaVEkyG2a0eWQ/LBNGfFiH4wDZfL6y5Gqgs25?=
 =?us-ascii?Q?Enlg5K+4LQSXAvjb9pOxs8MzfUnBf4Ro8tfcY0zNFvRec2BjjydsWf+PWExi?=
 =?us-ascii?Q?571slHBMpPRfNPJ/NHlgiqoXpf1kGfvZtx/0R4Xpw/aeWOi+THWceMUVwsRz?=
 =?us-ascii?Q?vZaD1iNtQiXnIwVktp+y+R16JDaK44KNuirWZQ9Kjdw09+/7ZKX86E8u9pwY?=
 =?us-ascii?Q?EcZ+vVezwfPdhfzZPzMNuwj8unY/+ulJSoYCNRhhU7uWzl8KRO/yCsauwOQq?=
 =?us-ascii?Q?3n2yNl/5G9moWW5HLyjlrTLFPmsphHrZ1J+GqSVD+L4O+5PKWCvwBO1uUiyz?=
 =?us-ascii?Q?RAGe+puWsjeB00jfXwEmiinfL9HDWaQy?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(10070799003)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Qjm2/Ex4M83xWA7fAvudWwSh3ZiYO2u3XYtCNrb4YOMrW3so8OOA+J4bw2hK?=
 =?us-ascii?Q?cSAIbg5mI0Zvs7ur3qyDku4TMXQniiSuxIwL172pIzBGhAHcwCFMzNDfgUwz?=
 =?us-ascii?Q?PTHxvqTITLZ/WyvryEw8Ss5aYao2oL6QPSpawyKYohlqQd4Syna+CkOAZIk2?=
 =?us-ascii?Q?SHiXwJFebH9WNxq1PKcqoZlTSukyBAvKlBT0zKZZh88bf2QCRu5N5bjLFHXV?=
 =?us-ascii?Q?Mr127Xzu4frRf+y3efyH7dcnVIXN7iSmVWYGPIznIwaBSEq+0wK989MVhzOV?=
 =?us-ascii?Q?MG7DvFFm6ERgZJc22gEywBr/lPyK2JYyx66hkstGElh/9NN4PpRIiwpaiK+I?=
 =?us-ascii?Q?6b7+aeniBHppLjfJEMLZuRjCy3viVumY2qjOYP5TT1KdjiLJe9QKdqGpqBWY?=
 =?us-ascii?Q?wwaq9aWyPVc7/p0I7uiQqfSDOpRNex3BcSyV+RwFWu4ArXkByfXc09/onvHc?=
 =?us-ascii?Q?TJ7qcgxb4gDExOQ3Xpo4AcWaOMJcE0CK6B6sOzwRycpMSRREhLu7AR455suA?=
 =?us-ascii?Q?oal7nCNPqwkLmTAl4BeLZhbRWBMBlXukFfEs4hbwlzIdZ8wAaH2mVqmqaf0W?=
 =?us-ascii?Q?mkyo3HkLRjdN8ikDQslinUBrSnnBhYWlCh3Ksv9y1Kn9kUr+96XfUsnHuhSl?=
 =?us-ascii?Q?6JV4vaJVPsVdTr2iqw2GPWIKL7+VvDMCwSd6/uREbsu4eHBGa15SitbdqcOG?=
 =?us-ascii?Q?BwKwlApxyUBSoloOys90sjRlMPhkImopVHEC0CTNVezchgY2dAM3FG5DM7zr?=
 =?us-ascii?Q?C88I33hRybX7kjFOBgz7qDhaoxm/Fnr+nVEyWr5Ptnq5PzuvOTubIMmveKYC?=
 =?us-ascii?Q?QBS1rdBv/DENZrT9qmcu+VcUgHjC96NG6aKNW78hPmeETUV/B/pkr/D9TWnT?=
 =?us-ascii?Q?6vp+YnCmGXxqP6lbhAyBBvsfWBZW0wGEbF4S0b+oHNBYtP/TevKL5Pio/ARZ?=
 =?us-ascii?Q?1Gc8TKKTruA6+SHoKtFXrtZxvv5U9Qi3EPAjEGXMKU03QQctlrQaZhwmZZpH?=
 =?us-ascii?Q?+vz95aCfjU81R6kMlwpfFb7KLKRiLWpbHbRI2ZPKC10L9HnQJ8STH3pRRlEr?=
 =?us-ascii?Q?Jb+L3js2eccbd9FYR2QzvOy3I1U35lkCyBOKcPPC7O0dUzEdikbvvwANBHBx?=
 =?us-ascii?Q?J3qaP+r7oUC531m2/63wnx76Y469jvmYfZQ1I6dRI8zONb7UNi7FEBZ7HZAk?=
 =?us-ascii?Q?9hZ2h8qlEE6GXdzwLpUxzaos6250OtjNQ8xi+tL6ESMNjZFIHdrEAzTQRwm6?=
 =?us-ascii?Q?tuyYYU8IW/zdTA6/WUjCYADDfzagsDCmjUCthYEcfxIrAxg3KTjpt46nGM3v?=
 =?us-ascii?Q?f0iP3wq6sdRHYaUp78XSkNEvLdKIKnZGV+SK880ipPhZrb3KvtIxjY5ISSTu?=
 =?us-ascii?Q?4F2tr5SnAhs86OlHWsAb9qkqZd3dZ4RA6ScAbHXAd1+1jPjpxfc/lC0/yS8p?=
 =?us-ascii?Q?gU4a2RqSP9UboRcmo2x2U+Na4nYF1feEeC4/CcHSqb4GlRShc1Opz6t7vKTy?=
 =?us-ascii?Q?DFexq6/lsdp1yvsDVavkZ9Nd207Zb4MfXi/x6ndkgKdtib69MwtIyJMAAq+g?=
 =?us-ascii?Q?5XfQYTL4REDfJA7iSau+zA18szsyhr0c/KUtGaGRBjF1Qky3m6t8R2WziLsj?=
 =?us-ascii?Q?I9vTJN0vkI8A/thIn3BTwr0eSuzXUHZZdASv3BM5N3aVsf379G92UYJPVP8f?=
 =?us-ascii?Q?GB0LUElEVnyvdghGSpIcaSRQ4krxTvsi2o6JjCbgzEuIrX4UkgQAEqpBWYMT?=
 =?us-ascii?Q?vwrFXYRtjtOl4LGEXXxqlYttgLajYDlKq1LHy3Zbkaz6CNTuf7uNUWhDicoD?=
X-MS-Exchange-AntiSpam-MessageData-1: KTxWK8Pl5Qxy5w==
X-MS-Exchange-CrossTenant-Network-Message-Id: 207e8562-6ee1-422e-d4d7-08de416fd854
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Dec 2025 15:36:16.1048 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: F4pG1H0g5SDFOHVqYBAGExNCWyQ9dn7QUh18UxhaSLHO1uqc7OX6gdiJAUshV6G9K4sbVJQP1JihlPVn3R5xeQ==
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

Prepare for follow-up changes also calling
intel_dp_dsc_min_sink_compressed_bpp() /
intel_dp_dsc_max_sink_compressed_bpp_x16()
without an intel_crtc_state.

While at it remove the stale function declarations from the header file.

Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 24 ++++++++++++------------
 drivers/gpu/drm/i915/display/intel_dp.h |  4 ----
 2 files changed, 12 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index bbb7cff908183..57b93a811cb62 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2157,7 +2157,7 @@ static int dsc_compute_link_config(struct intel_dp *intel_dp,
 
 static
 u16 intel_dp_dsc_max_sink_compressed_bppx16(const struct intel_connector *connector,
-					    const struct intel_crtc_state *pipe_config,
+					    enum intel_output_format output_format,
 					    int bpc)
 {
 	u16 max_bppx16 = drm_edp_dsc_sink_output_bpp(connector->dp.dsc_dpcd);
@@ -2168,43 +2168,43 @@ u16 intel_dp_dsc_max_sink_compressed_bppx16(const struct intel_connector *connec
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
@@ -2684,7 +2684,7 @@ intel_dp_compute_config_link_bpp_limits(struct intel_connector *connector,
 		int joiner_max_bpp;
 
 		dsc_src_min_bpp = intel_dp_dsc_min_src_compressed_bpp();
-		dsc_sink_min_bpp = intel_dp_dsc_sink_min_compressed_bpp(crtc_state);
+		dsc_sink_min_bpp = intel_dp_dsc_sink_min_compressed_bpp(crtc_state->output_format);
 		dsc_min_bpp = max(dsc_src_min_bpp, dsc_sink_min_bpp);
 		limits->link.min_bpp_x16 = fxp_q4_from_int(dsc_min_bpp);
 
@@ -2698,7 +2698,7 @@ intel_dp_compute_config_link_bpp_limits(struct intel_connector *connector,
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

