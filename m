Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB988CD6945
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Dec 2025 16:36:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 480FE10E6F5;
	Mon, 22 Dec 2025 15:36:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Qz3onYvS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE05210E6F2;
 Mon, 22 Dec 2025 15:36:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766417793; x=1797953793;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=0zWZOfN0Kd5NqwDKpwIiCgFr8RdD6oeKrUSAQNzIUX4=;
 b=Qz3onYvSmm8MbB9p5x7n6ApnoNHCnucIpgmtN1w3arV6Dm+LRMRvMrfh
 I7GEH0CiZ2RRXME41nQ/0Ig4SF++ZSlL3rIm//9oDpwFLtAVJcz/xN6Hg
 2P0/VWzUc7KWz4ltuunj+AwUTvEM4AoRt7o37vTB6Wk0mUkc5eZsiHIhO
 9Vf9zhfJq9BfLn3i6UptOE/n8lMwyOXdx2jXsZL4alMpJeUpa9Z+nrryi
 6Qk2Qeh8j8kgeqvdx+NH1xURa1pQqZ6lBZDLbOcSae3t6+gzsFkzHlVGT
 2tvzb9tB6AMt2W/86POh+PPy6TkFZ0/kTCvKrRCVFur52UcUtsVPtKhYf A==;
X-CSE-ConnectionGUID: WwJ/rcn1RlmZclXnwMLnvA==
X-CSE-MsgGUID: 3LaUqJkkSr2ivRufay6KBg==
X-IronPort-AV: E=McAfee;i="6800,10657,11635"; a="68211497"
X-IronPort-AV: E=Sophos;i="6.20,256,1758610800"; d="scan'208";a="68211497"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2025 07:36:33 -0800
X-CSE-ConnectionGUID: toOnrjwYQl+fG37MvIYbTQ==
X-CSE-MsgGUID: BLCOABPlRceazM5wGOyr7Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,168,1763452800"; d="scan'208";a="199854980"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2025 07:36:33 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 22 Dec 2025 07:36:32 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 22 Dec 2025 07:36:31 -0800
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.8) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 22 Dec 2025 07:36:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VhHbvbWyGdayOZNIQVq1chZoCKe2egOZFBILaNq7fZ7HM538p1D5AmoRfXxzOK2W9h2GeRQPWZe2Is3d56SH1SDBHUwO9xHXhYPvXuKtIKzpVmcsUUmL91EVdUjVBj9JagdD/YPW65Q0HBIptBBZjIqIhtas3SbabQw/P2Slg/SBBr2U6lCKTKtHZPpRwTxpAzpWAZJW2SNLqJqq3sx0KYIAkDPgL0GOIQ7utjCjoLjaAUBnlhZxJiYjUrLLOltDP5yYjlRIyeDHJZSfMTUr5DwoweYPrAgzTXzhBbB95AAvXhV+efn6DkKQuoWaSs/D1w/k2PEnvoxf05LWCC4rcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=l++4KQe6MsmcisRt2EcQz4gx/8pH7YFu0xOAyv4biIQ=;
 b=b6pG0gaSPEE5jj0m9QEIq5g2mCLjY2PFXg2TIzdaRd26ZPEfY820R6aiXK2PiimQcKPWGXbAXbV3zgQgkluuqMakChcGRLJRYMQC7kV6Finww0Tur0UdavFIN4Ln2TnhkxCNyGHLDwGgTTNL+8MNzQqzAHBBWCY5jzWTR0x6CM1ugK1dBrEQgjoku/+gwUq69l2lxESva7LOuRffIMLke3KJzymE3mdkytzc2JqxRbyOQOcPOmK3PHdCbxPqcqXgH8QP0A9DNZCpRt6sE0z1/xoIyj+B0LO+q+FwrFn1L6VU3kG+6I+OFyBhibs3f3peKx9KTHF3U/iK09sf+yaeHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by MW4PR11MB6912.namprd11.prod.outlook.com (2603:10b6:303:22a::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9434.9; Mon, 22 Dec
 2025 15:36:29 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9434.009; Mon, 22 Dec 2025
 15:36:29 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Vinod Govindapillai <vinod.govindapillai@intel.com>
Subject: [PATCH 16/19] drm/i915/dp: Simplify computing forced DSC BPP for
 DP-SST
Date: Mon, 22 Dec 2025 17:35:44 +0200
Message-ID: <20251222153547.713360-18-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: 00fc0ead-599a-46a2-c98d-08de416fe047
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|1800799024|376014|10070799003|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?fM2CDc3Gl5o5dtpLaRveWxJsREMI+Ab2F0hrcEIBIetMibOnwplXcOB6sfVr?=
 =?us-ascii?Q?KIpqdyvDXKO3pfwImAMmkc5CC7yzneif9/mdgzRAowi+jCgK777+Wkf0DjsJ?=
 =?us-ascii?Q?sN4PbAW/rQaFXavxSZ0rMQC8QzVkMyiAxh2vB11Wqs3bWRJcYNCmnOyC1/ko?=
 =?us-ascii?Q?V+zMm7dT4OAT6uqUcrJrNC0H8E7PzADP3RKylOYIQQjHWeFxmnlX97ZTJRYT?=
 =?us-ascii?Q?EGV207kRuwg8O6Pzo55nSMbaJW/81HPPbtbYDIoXSH3smQNNuYomDtORqLwf?=
 =?us-ascii?Q?jPY4EBl4xB2FHadOuWqXDvRwSNW7MW8rbn2FCVV72t5+xfc5OtTbJOuFCxuo?=
 =?us-ascii?Q?OqfbTOACFtArztoAh9vFoaYBpdHVYvVp8Nnm3/8RSUe/DCAvG9fIEwu0N1Je?=
 =?us-ascii?Q?/b7AN8jnzJOHuB5vCrLFdQVqXZ1yo9K1UBugMddASR/2m6GpQEP8WFMQp+yH?=
 =?us-ascii?Q?zDazjNYTB2tOMKvgy6WUmzGPs9ohhwlnwUxqYUZT1+4PmyEHMyxyMp39XbeL?=
 =?us-ascii?Q?Gq+Oh8FMsDAh8F/AlqMsuw5nBD3M7LqubE2hFcUTLCxavYrW8O8znNA8huvV?=
 =?us-ascii?Q?qZ8qehm8g6hdTWFVbWtW49cOelfy7pLj8IDtMpChTsZ7tAZDzei5GriuyLya?=
 =?us-ascii?Q?JiehjCGp322n1tzpL9pxuW2+DmZQVhNdHDj7nwQ8MAwq4Tw9EUN/HoebtRhA?=
 =?us-ascii?Q?hG+Da5sqlwTbbI6JJ5H7chZdZ56+OCuP4bNNOL1NfwVhQI+2lWFHy+K3GF0Y?=
 =?us-ascii?Q?NbPeQSwRFlHkro5VHd7Bw3yf+KPCH8K+vPpLXd9QPh0zsemT/hZtwZ1sJE6R?=
 =?us-ascii?Q?z78z+qlFM9auHG/tnLdqDK5GJM1G13PW+KmyD2WypNI0RF0QK/VVTCvtRoCu?=
 =?us-ascii?Q?Rw3Le/lQTD2EhOHZXlXmUsexCJaZSGawIkxVzRHVDrGbGUiMjdTZl/PDojn6?=
 =?us-ascii?Q?xV1meByL1s3U437tCPic9bTr3sj72+NnbmYQM+FqPrt7gsK76nDLyAA0O/mM?=
 =?us-ascii?Q?dN03TUbYIB58f91L87Unq3w9si6pI5OnjbSMXelrOVoniA4Defn294okPNKE?=
 =?us-ascii?Q?JCVg5YdYm/mBt31ghaKLs+CDaE1ccIJ5twcWgfcsK+TP9kZno+vqcZfr77DA?=
 =?us-ascii?Q?IaPG4sa428V+PQRmgS1OD2PyJOIFsiQ2bUwUGOsti2k3eWb6FR79jPA5+M34?=
 =?us-ascii?Q?tRuAykXEdCFMJGDARATqnPO5lXIEcKMkI+dkY4HBT0bfKHgcafHPtYhe+WaF?=
 =?us-ascii?Q?Ji4SuRgiLPw3Oq3rnV9MHvh+3xe5MoT4hQ8kclHm2z3CAfkl+s8idRzOHuO4?=
 =?us-ascii?Q?oFUWbkla90OcneWfzwj0ywHe4ZUd2ABe791IQihA8kT8clINU7xyYvWZ8FKz?=
 =?us-ascii?Q?Esr5SGn20ZK9WB4F1he0p+JNj/hMWubMfqNDHnSgsAH6rWzQyE9cEgbUL9Aq?=
 =?us-ascii?Q?5rq/nfWjcli3JK6xaCPT5DEUTj+JgPLd?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(10070799003)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Rg9L1mjnru++tNZJtJoCqk8VgEzBRYltoh87BZyIlmegUt5++VyXAdTq0Nfd?=
 =?us-ascii?Q?Tj4R2mnwP23ATDfGB78oJqiDtu1mTUYM/28y25/CKNuWayTOv01Cv5Z5jL3z?=
 =?us-ascii?Q?ugeaNyydb/mTGn+brTttJRGTrQ6rxy7aqME2NnHv6P6SbmT7WLyfXMRdEZg4?=
 =?us-ascii?Q?AC2+ffvEavEuEJsnUenhfvSTU9vKW7eoBFkKSSJ/X5y5XZ8EDYcbYShQLePy?=
 =?us-ascii?Q?KY1x+rcoZSulpVfpfjM+bmBDy8NiyPalLfIkoRqCmfWs1GkxSMo71PtdOel+?=
 =?us-ascii?Q?7ka7rpoB6Z28BvX97vM096cPDV8pK7mfmLZt2uguo7eeYzQk+ZQMU+7/+crA?=
 =?us-ascii?Q?rUu8HNosVIXpDXmdOMbaLuINrSgC39vlRy2a2MliUXOlp+rWKoJYr/2Jdc1J?=
 =?us-ascii?Q?fFB4as3rHOyw8XMJ+1lRzT9tFMg9CP9fpWvxbEwMNeMP3t6FkDhpooAU3qK1?=
 =?us-ascii?Q?phuHje2BbPKEcOazKpGR2jhf14RCWLqb0F4VQIYRzlX2W+vnNJ8e3pkrjI9z?=
 =?us-ascii?Q?ocVxJ1DpMpcKRQyof/xc0GkuczkBKBxtODoneVWGsOU4VE9Ktm+vH24yIye6?=
 =?us-ascii?Q?M0MGmW/+WH1GYE5gGX7OrhT4V5wOcZzyabx6vba2T85TgkABZcEffoSJsXL+?=
 =?us-ascii?Q?df0XxfM5WJdCh4+rALq3+iZNr5dOauoO06PaiTxryF5eixRCwcQopGC6iaz9?=
 =?us-ascii?Q?QggpoFdnvnxX700tmFkvCrjIeZMeAqg+5f4PpVlMJzr9DWWwYcAzlO+/gWIN?=
 =?us-ascii?Q?OtxzWaxrDOBqe/ojXXSDlOfF3NJEwkqD4eYkS6HsYnHocx94+2wBsw3BEBZ/?=
 =?us-ascii?Q?y+DxZVv7dpPHKo/oPwGY/JOXfIE6rYYXzAFnQYwmLGzQue/2/U8myDxoWdZx?=
 =?us-ascii?Q?TvJv+ambcuyAlLj2R8MdFeA6PROqt1MTA37UuzNh2oX/SLP7tjGFafKAFW7R?=
 =?us-ascii?Q?1UfbmkZiK9z6JTXHKKGD1XwuzkSgCnJ29SjGxOf51VG+TK1Zx2M0MiXrhBG3?=
 =?us-ascii?Q?5uQ077XzSe8YE/XjE4ZE4l2Fw4uaKwVaatoBDa0jan7Aq43J/fd71RYsbbjw?=
 =?us-ascii?Q?aRkbFxsKohojSnD6onPHYER/Np8IuLQNGq6hzEGKF3iiUtXIyTn6xP8u40H0?=
 =?us-ascii?Q?RxUbwqeWpIABMgV+y5fXi6Tu4bNERSTOJmF0KsjZ4rO1aCAI9CKxFa1ohk0F?=
 =?us-ascii?Q?ZgWyGHNnjtgc7K3MUyzcEYFx3+Mc8WVWsjjZExMrCvqY+slhQwMaett0EESG?=
 =?us-ascii?Q?g6YBQ4NWlAGM+ZLaXzdNPfnpRhbx+DCB1XGXar+TfsxqYP3SN1RGQtyUbsrw?=
 =?us-ascii?Q?FPrTwrq/PK1gepbnqCPQE1ImExA7ZCA0jReeiTPAHfDQqhMMsqfQNQoisMgk?=
 =?us-ascii?Q?Ku07HcdbzpUyEcht0AxMLHOaGyyRreTqOl0QsJ9YbQZ+mkPNzxARSd1Q4Dyk?=
 =?us-ascii?Q?RaV/mDq6Ia+M1DCxVTpZNCVg2P7kNINbZc5ljikjLhFaFyHJVTxbDtlcM8CH?=
 =?us-ascii?Q?dyzJf12EZ8r1nHRUclKpoAQsf0wWvND0iSL6W5XePfXQLn6mJ5eXrRb+6+D1?=
 =?us-ascii?Q?AlZiPLWx1CndGrq1IUZKrWROvPlAwoEX7SgITvrHMqVMqa2pT0txc20OmH+f?=
 =?us-ascii?Q?OTk/k7RxNyUjeFE920wK4FgcOx8wKd4YO4tr2OxuhsOLsS19ze27rfqEdb7D?=
 =?us-ascii?Q?t1Kjig2URZKvXS9wwOi5VltWd+wUMm1+OeYb2BGaKybqPFkPPgdxRo1cAtlY?=
 =?us-ascii?Q?QWsQdxvY65c6gxr2eK6BEcZwCPHFYtikiKLmcgI4usdwrktEAi9lxDd3TKIC?=
X-MS-Exchange-AntiSpam-MessageData-1: nDM0wTI/2o9xog==
X-MS-Exchange-CrossTenant-Network-Message-Id: 00fc0ead-599a-46a2-c98d-08de416fe047
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Dec 2025 15:36:29.4480 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AmCo1NtUnp3lG9jLIw+Lj4LR+TEXfh0bZonOFjHjsfTLX66/okEqRQl9SaKsi4cJpWpatEqOc8VBEQqcnQk2wQ==
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

If dsc_compute_compressed_bpp() failed with a forced pipe BPP value
(where the forced pipe BPP value itself is valid within the min/max pipe
BPP limits), the function will also fail when called with the maximum
pipe BPP value: dsc_compute_compressed_bpp() will try all compressed
BPPs below the passed in pipe BPP value and if the function failed with
a given (low) compressed BPP value it will also fail with a compressed
BPP value higher than the one which failed already.

Based on the above remove the logic to retry computing a compressed BPP
value with the maximum pipe BPP value if computing the compressed BPP
failed already with the (lower) forced pipe BPP value.

Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 14 ++++----------
 1 file changed, 4 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 4603745dee379..75ae8811442a0 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2299,17 +2299,11 @@ static int intel_dp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
 	int ret;
 
 	forced_bpp = intel_dp_force_dsc_pipe_bpp(intel_dp, limits);
+	if (forced_bpp)
+		pipe_bpp = forced_bpp;
+	else
+		pipe_bpp = limits->pipe.max_bpp;
 
-	if (forced_bpp) {
-		ret = dsc_compute_compressed_bpp(intel_dp, pipe_config, conn_state,
-						 limits, forced_bpp);
-		if (ret == 0) {
-			pipe_config->pipe_bpp = forced_bpp;
-			return 0;
-		}
-	}
-
-	pipe_bpp = limits->pipe.max_bpp;
 	ret = dsc_compute_compressed_bpp(intel_dp, pipe_config, conn_state,
 					 limits, pipe_bpp);
 	if (ret)
-- 
2.49.1

