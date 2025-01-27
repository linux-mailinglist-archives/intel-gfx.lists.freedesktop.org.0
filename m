Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 57DC6A201F8
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jan 2025 00:56:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A60910E5EC;
	Mon, 27 Jan 2025 23:56:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Wp8sGMFC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66EC010E5ED;
 Mon, 27 Jan 2025 23:56:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738022180; x=1769558180;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=kaA7TNoXfl3UE/NeJXaED6vmtHAr+hpyHxtCY/nujtE=;
 b=Wp8sGMFC2uatlCjZ2R79JI+yftc73yW7ModVet9qHZPbS9yKc3/tZPpP
 Xr7wahgK01hxYu5uSLyYLx+4LH1I7aKGEMBnz233KMRFoJajbNiieJI9U
 6uIdnUI3n/Ug6W/86cToVXXktCSkFzv5sDu24reBTtmlKtwmSWLMNUSPB
 +XpRwtbW5Qzqsb0FGXtZhyRK3gOG30FbjEny1nOtJfzMnEtiIBh+oQf5R
 XPRc+MChEnoTR/60Q7vtSgYmKqhkeZ/wQDANnuMU07HFzMGEFjmTz5KYz
 +O4Nn9NLDq289qkusomNBaSERq09SXp/Do5FyeBDGdF/rRGxkx1fRuh4c w==;
X-CSE-ConnectionGUID: Y73aFwiVQ8CEWPJ/CPnhuA==
X-CSE-MsgGUID: fwZAau7fQiG/6WRpVeTTFA==
X-IronPort-AV: E=McAfee;i="6700,10204,11328"; a="41340786"
X-IronPort-AV: E=Sophos;i="6.13,239,1732608000"; d="scan'208";a="41340786"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2025 15:56:20 -0800
X-CSE-ConnectionGUID: D2d5PFX3QN+9G7dBXZarBA==
X-CSE-MsgGUID: V4dCkoVkTiyiGYLgm6U0qg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="108432300"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Jan 2025 15:56:20 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 27 Jan 2025 15:56:19 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 27 Jan 2025 15:56:19 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 27 Jan 2025 15:56:19 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kIjMUOHUtBi/uP7RWP6DrQM+CB6m023usPgp1dk2Xvt0B6jEqUrBdf8Evjz+5L+LSgeNEOvJDpg585yicI4tSA2wM9Dc/1TE13e+fcA7WokdRPTs7j1Lc6ERkt03dmT5LJlt0vJfnvPcTr+Heo5zNq1G1vwwm6x0eebTjrTJEk/R9qniqaJHVWOEh365EhZ24ksD3U5Wlwfe+okMywyw/XFQUOYRTQLxYwho3AwW57hPxzQFj4gBeRdBKjXJF8/hmJJHdYejXrI1Bk7BD7b8KMPy46tnq2RXJv8qnp3h9V5fTiv+jE6LWLx9tF5yYcRu2IxXz1+vY13lp9DHkXW3EQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0Mr+1vc7lSVZiVlyHVf4YYUrq1TijlB8Tv6Y0CIJ0Wg=;
 b=CLG4J1kS7jKtJy16vgbul8DhBzn5452XohWbVL9ou+X7hKGFZhikjbP2Fj7A9mljjGUz8TRzp/+0pjJnf40wGipFdYSvSCmdMT0Kf0fz3TLmyVnDBgj4ZteixYGxRIrUrexnFKG2XF9cy8tcKZ1R7OzUE1fDa+el/FsvUSouIlNZnISj4dBwFMBDbg8qe7FDdlv2SDRGXHislXjyMWUFbqs8I6PHtQD6lsn+b6SflpfNNSg8vc0hUBVbscIEWFbnhBIgXlsTu47ghWEJNyfDa1VK3NlUuMv6F6j4bYwCFI4fwg7TX/3ONOz+dPi9Z6bz1MfIYaqHVUZKssYmjZkZgA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by DM6PR11MB4676.namprd11.prod.outlook.com (2603:10b6:5:2a7::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8377.23; Mon, 27 Jan
 2025 23:56:17 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44%6]) with mapi id 15.20.8377.021; Mon, 27 Jan 2025
 23:56:17 +0000
Date: Mon, 27 Jan 2025 17:56:11 -0600
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <igt-dev@lists.freedesktop.org>, "Riana
 Tauro" <riana.tauro@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: Re: [PATCH i-g-t v6 2/2] tests/xe/pmu: Add pmu tests
Message-ID: <md6vuvm5lsafcode7uhy2tq4udsavxlqqtm3gtdddqm3fu3oem@vhyu2ysimdzx>
References: <20250127223301.2819108-1-vinay.belgaumkar@intel.com>
 <20250127223301.2819108-3-vinay.belgaumkar@intel.com>
Content-Type: text/plain; charset="iso-8859-1"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250127223301.2819108-3-vinay.belgaumkar@intel.com>
X-ClientProxiedBy: MW4PR03CA0307.namprd03.prod.outlook.com
 (2603:10b6:303:dd::12) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|DM6PR11MB4676:EE_
X-MS-Office365-Filtering-Correlation-Id: d76ff39c-9ddc-44c5-b20a-08dd3f2e307b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?ZPMXuFeDfKhtJuL038qRxnhvuTss9lG6IypmD7KPAGZQIOx4wny6YqtfKS?=
 =?iso-8859-1?Q?2dPuH+8olLBwncnK+rxe/DJE4j4N+WegFzCC4AsiyTwjSVEDOrjtuUKE66?=
 =?iso-8859-1?Q?ic52Xp2FvfCbBsf4SOqQq83NRnLGhI+FIS+d0KLRpN9+epofOgU3UVNSsV?=
 =?iso-8859-1?Q?S00UnNbr6L3lrxKAZhBTLFeMvEkZ/piAyN01VlFZ++sQ+Gm4xuSPKRUkHk?=
 =?iso-8859-1?Q?j06vjRYvzh3PmwzDoJRCDMCDSHSUKnRsBbTLu/QEfXK7N4F8Io2N37Gt47?=
 =?iso-8859-1?Q?107ouFfjFIISpa/WxqzHYJGhqisjZKiiAtAgu9w6tmnxZJGyliCTTYagrK?=
 =?iso-8859-1?Q?HY6pWYNaDkFmTN/S3SmwVi2fK4wdIMuT00ExAyjGWbNPBM434FUWut4Z9U?=
 =?iso-8859-1?Q?TBCbprq4Q9mZ36aHd1EQ/i94EQ+Akcj+w16qPyvYxcnnZHhQd3HwkhKkMU?=
 =?iso-8859-1?Q?hsn0Omzfr8KqVjyNoxujIRJemwwOnX2BJqUrOL7wY4vW+t2T1OYCT8bxCh?=
 =?iso-8859-1?Q?Xu6xoDZXHoyosl09NvwridI2gwqQNAdK51UN/BHvjtPi640AIcH9Xtvrnt?=
 =?iso-8859-1?Q?KGoJPTihiRo3Iusn/NlbF77AeY4XM2V0aCh5BfxuaBbQeg9s4a/g9g2XhC?=
 =?iso-8859-1?Q?UePKcPinRWHXmT3Pgkwi5UQHe092p1Dxr8qPUiKzBVOCZQKLPaQTG45oWl?=
 =?iso-8859-1?Q?AaummsCSvkp3BqPXx7lvw2Y8BtFRuO+/5sVuYE2kmSV2tjcEh5Skzh2bOD?=
 =?iso-8859-1?Q?xit97imeuH8BhcKVucf//eRWvlszDGJzJwWow4rNJaoIpzDMWZMfLfx6Ls?=
 =?iso-8859-1?Q?UZF1Vkjs2JJE17KoP4WwAzI7maR4gwIdD24FAt+yfKnLG8gvWpqLj53nTs?=
 =?iso-8859-1?Q?M7oFNoyykWbI55/TDUlxzw7XRgJzjIn/ccuewhgnBJmw0UEu6Wk8psGA3j?=
 =?iso-8859-1?Q?o19QH1UhymM3CVGxQxWjuMsIa0Pnw4cdpRzs2sE9VH88mFjQ95zUZXktVR?=
 =?iso-8859-1?Q?6kKITlrUjCWbk3JDR1hhgdM4ekI0zpjMLW2yoqBCuPobIjSEMkbz/aPp37?=
 =?iso-8859-1?Q?yDexHau9R0aN4FgK0U95J+fyIElmu3AEja8HRWr4fugHG2cq8BULWPT44G?=
 =?iso-8859-1?Q?P5oeCwjj39Ny/24wQPX2uEUobD0+tWt2LxhhzV3Rjaf8STpjPwmlPH+jZy?=
 =?iso-8859-1?Q?Yb09GO0r+qBC/0CgIiMPy4ZAMaLP+vrpb4mvpAC7JnNiCscJOBu71hjC3L?=
 =?iso-8859-1?Q?twTbkLRgI8mV0PQlI3MgevQKtoOi7yqkVN/WKssSBmCXPmm14e0q0uD9ov?=
 =?iso-8859-1?Q?1lgBw+oq6oejOB+8FFSnocNBoochxEi+p5vSvnWkGh0OaDbLbVslOVYUbX?=
 =?iso-8859-1?Q?IuqJvY8dhZjsRpz/7pIM3d0fesN5IejdqCuEEdB4ueOE2eH55qn8744ZZl?=
 =?iso-8859-1?Q?usjyhsV1CAI/kz+I?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?TmkRdsZ1MM5QVNyNIgULSRz/RGhU4sXWEsL2D+RsyeBk0Oc89cBGrRuQ8X?=
 =?iso-8859-1?Q?y7PyhEVtZKfG9d1wKi8c29zjTBYIIsiCycX0GcUyGho3wYtdJSnrWPG7H8?=
 =?iso-8859-1?Q?WEBDu56CNLm7f5E7t6lNIqF2K300uN4Vp6GrZi7AqRA3Wdo+UUDTTK3jn0?=
 =?iso-8859-1?Q?iiD5GjkIBp9qUdERSH8A/N7naRYRIZN/AgsEUdUKm7UqjXlyLoldyP8QnT?=
 =?iso-8859-1?Q?P/K8MFtYbTCWq+PWiSLvxqVy1PDeESNqhUVd+yB74jIebbQi8h0mFKQEzz?=
 =?iso-8859-1?Q?TI3u1CbQu8bY+2DoxD9V83yd2wHevZ6VNX+9Mi6gCSBRwmfCWmBw23gScm?=
 =?iso-8859-1?Q?HJVW8UANkE4KhtIFWSjfhvCRgf461ipHWIQXID6h7Fv9JDv2UVM9q4i1aU?=
 =?iso-8859-1?Q?a4lehiHMVCAzKkq1lz3PBaIAJa0Be2y+l7l+SZV/xc4yTymXCACxIQvRgA?=
 =?iso-8859-1?Q?3j1IXCyQg2p40zVcHIYaAyDKqJ8Okpe8Pc+5dnnPH//+iUjnGsym+8hLsq?=
 =?iso-8859-1?Q?t4y+4Hxly4cOhl/U0o89b1KLABqUI4rrvElw+YTEJj5UqUtRkqvwKt4C7m?=
 =?iso-8859-1?Q?5f2/dipTFNPRqwiaH/l+5WLItDMT2N+YWhFTZCf8QsJTOblX3Hqstd2eqg?=
 =?iso-8859-1?Q?fQ74MrSevivg25HFBuwfs5dPitwFCDij10A1WC+yKOJ/4yxo2WSoO1GmwH?=
 =?iso-8859-1?Q?ys5IqpbaER0cztTarn1uLiLi+wIOsaAPpHy40K6L4PKUDwAIw+zctELoVw?=
 =?iso-8859-1?Q?J0CfN8X9fpxH9zs1+78z3+1r6JyKL9eNp6PLsSlsyj+O2cU4+sWK/C1o3Q?=
 =?iso-8859-1?Q?sVf0HTTS9gdGwiwLahT8M+1OAs+IEZ7RdTIVcrrOCStL1L4A1uH9/w4mCl?=
 =?iso-8859-1?Q?FIUXU2vosxp9TF4M1zhPan/NyTQRSgcQBSkb2bJ4F0vxWi0KRCHY5/exqE?=
 =?iso-8859-1?Q?itBqLBQfU2lRDRr/2VFyhikmv6F57vA5kcW+Usq6KVh0bG3f64hJn+OXlG?=
 =?iso-8859-1?Q?ctMWQF4M4aaiAr0+tPgvbC9gm073GYnNEUSrgnZp9kC2lxmQniD9TWaW5x?=
 =?iso-8859-1?Q?RWUfb+dYMydguFIjke7lTeyBqjRBSnPPEErcLcJaRr244ucu1ZyWy44yjR?=
 =?iso-8859-1?Q?auUlp6XxMPuoHAs/tz5D/rU9Zuzx+NT7/PJecWpSOGpCNtOfhMyGtDam98?=
 =?iso-8859-1?Q?wOzNY2TZrNUJwBYQGl/UZOFdCBeUvGDsU5DdFfa6PtrbUbL6rK792t9SHz?=
 =?iso-8859-1?Q?mUbSqKd6IQ4P7VkEi816l/ZAAaI0/3l8y04UTaP/4kE8vMEJvkGn4qAXM4?=
 =?iso-8859-1?Q?msLgMqlFUW23Tw1sl6162c2yb9yRWozLNs962ml9nrleM10HUh0G8TzVQa?=
 =?iso-8859-1?Q?CERd3b3aICw+Iq4tZjxuM2zIMgxDRSglBAwDaXR8WxiH/EOH4JjXHkOe5N?=
 =?iso-8859-1?Q?P+R3eKO95QWaNMi0XAfKOIDbQyP4Nzpn7khDJm5kokQ7p4y/EL3yFY7q3K?=
 =?iso-8859-1?Q?wq4fYL84sl0iI3EeCCC7d+/xyJjLB/BSOU2DfEPsqSK4Yq0cHlgkS4cc15?=
 =?iso-8859-1?Q?gcE43kAyl+YdeQiToPAm7E7VJ8Y2cEFp8PlMu5eVBUIeP/t/vbRvtNOkQC?=
 =?iso-8859-1?Q?K4zGQQS6zEEunzMCZ2xyeWf1L17FbWAkYmIYNye2p/AMJgyNqXeJMaPQ?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d76ff39c-9ddc-44c5-b20a-08dd3f2e307b
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jan 2025 23:56:17.3801 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xAO2xC/DCLvOJqutLLzSpnmt/n0J3AqzSKULx8sTgkywYhuDNmTFME2HD+hoKkYsIGEj3HplyqYwmdzJNy26o52s86mP/IZq1QCIOe0VhEw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4676
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

On Mon, Jan 27, 2025 at 02:33:01PM -0800, Vinay Belgaumkar wrote:
>Simple tests for validating the PMU implementation for GT C6
>residencies.
>
>v2: Rename rc6-residency-* to gt-c6-residency and remove freq tests.
>v3: Keep just gt-c6 tests, add frequency tests later.
>v4: Review comments (Riana)
>
>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>Cc: Riana Tauro <riana.tauro@intel.com>
>Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
>Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
>---
> tests/intel/xe_pmu.c | 176 +++++++++++++++++++++++++++++++++++++++++++
> tests/meson.build    |   1 +
> 2 files changed, 177 insertions(+)
> create mode 100644 tests/intel/xe_pmu.c
>
>diff --git a/tests/intel/xe_pmu.c b/tests/intel/xe_pmu.c
>new file mode 100644
>index 000000000..61a7a7e38
>--- /dev/null
>+++ b/tests/intel/xe_pmu.c
>@@ -0,0 +1,176 @@
>+// SPDX-License-Identifier: MIT
>+/*
>+ * Copyright © 2025 Intel Corporation
>+ */
>+
>+/**
>+ * TEST: Test Xe PMU functionality
>+ * Category: Perf Monitoring Unit
>+ * Mega feature: Perf Monitoring Unit
>+ * Sub-category: Power Management

this is not accurate... power management is 1 of the possible counters
we can expose from kernel to userspace.

>+ * Functionality: Power/Perf
>+ * Test category: Functional tests
>+ */
>+
>+#include <fcntl.h>
>+#include <limits.h>
>+#include <time.h>
>+#include <errno.h>
>+#include <dirent.h>
>+#include <string.h>
>+#include <sys/time.h>
>+
>+#include "igt.h"
>+#include "igt_device.h"
>+#include "igt_power.h"
>+#include "igt_sysfs.h"
>+#include "igt_perf.h"
>+
>+#include "lib/igt_syncobj.h"
>+#include "xe/xe_ioctl.h"
>+#include "xe/xe_gt.h"
>+#include "xe/xe_query.h"
>+#include "xe/xe_spin.h"
>+#include "xe/xe_util.h"
>+
>+#define SLEEP_DURATION 2 /* in seconds */
>+const double tolerance = 0.1;
>+const unsigned long batch_duration_ns = 500e6;

unused

>+const char *no_debug_data = "\0";

no idea what this is for

>+
>+#define __assert_within_epsilon(x, ref, tol_up, tol_down, debug_data) \
>+	igt_assert_f((double)(x) <= (1.0 + (tol_up)) * (double)(ref) && \
>+		     (double)(x) >= (1.0 - (tol_down)) * (double)(ref), \
>+		     "'%s' != '%s' (%f not within +%.1f%%/-%.1f%% tolerance of %f)\n%s\n",\
>+		     #x, #ref, (double)(x), \
>+		     (tol_up) * 100.0, (tol_down) * 100.0, \
>+		     (double)(ref), debug_data)
>+
>+#define assert_within_epsilon(x, ref, tolerance) \
>+	__assert_within_epsilon(x, ref, tolerance, tolerance, no_debug_data)

git grep __assert_within_epsilon

we already have too much of these copy and paste. Please, don't add
more.

>+
>+static int open_pmu(int xe, uint64_t config)
>+{
>+	int fd;
>+
>+	fd = perf_xe_open(xe, config);
>+	igt_skip_on(fd < 0 && errno == ENODEV);
>+	igt_assert(fd >= 0);
>+
>+	return fd;
>+}
>+
>+static uint64_t __pmu_read_single(int fd, uint64_t *ts)
>+{
>+	uint64_t data[2];
>+
>+	igt_assert_eq(read(fd, data, sizeof(data)), sizeof(data));
>+	if (ts)
>+		*ts = data[1];
>+
>+	return data[0];
>+}
>+
>+/**
>+ * SUBTEST: gt-c6
>+ * Description: Basic residency test to validate idle residency
>+ *		measured over a time interval is within the tolerance

why is this comment on top of measured_usleep()?

>+ */
>+static unsigned int measured_usleep(unsigned int usec)
>+{
>+	struct timespec ts = { };
>+	unsigned int slept;
>+
>+	slept = igt_nsec_elapsed(&ts);

this function is another copy and paste that is wrong everywhere.


>+	igt_assert(slept == 0);
>+	do {
>+		usleep(usec - slept);

slept is in nanosec, while usec is in usec.

>+		slept = igt_nsec_elapsed(&ts) / 1000;
>+	} while (slept < usec);
>+
>+	return igt_nsec_elapsed(&ts) / 1000;

we have macros to convert usec/msec/nsec

>+}
>+
>+static unsigned long read_idle_residency(int fd, int gt)
>+{
>+	unsigned long residency = 0;
>+	int gt_fd;
>+
>+	gt_fd = xe_sysfs_gt_open(fd, gt);
>+	igt_assert(gt_fd >= 0);
>+	igt_assert(igt_sysfs_scanf(gt_fd, "gtidle/idle_residency_ms", "%lu", &residency) == 1);
>+	close(gt_fd);
>+
>+	return residency;
>+}
>+
>+static u64 get_event_config(int xe, unsigned int gt, char *event)
>+{
>+	int ret;
>+	char xe_device[100];
>+	u64 pmu_config;
>+	u32 start, end;
>+
>+	xe_perf_device(xe, xe_device, sizeof(xe_device));
>+	ret = perf_event_config(xe_device, event, &pmu_config);
>+	igt_assert(ret >= 0);
>+	ret = perf_event_format(xe_device, "gt", &start, &end);
>+	igt_assert(ret >= 0);
>+	pmu_config |= (u64) gt << start;
>+
>+	return pmu_config;
>+}
>+
>+static void test_gt_c6(int xe, unsigned int gt)
>+{
>+	int pmu_fd;
>+	u64 pmu_config;
>+	char event[100];
>+	uint64_t ts[2];
>+	unsigned long slept, start, end;
>+	uint64_t val;
>+
>+	/* Get the PMU config for the gt-c6 event */
>+	sprintf(event, "gt-c6-residency");
>+	pmu_config = get_event_config(xe, gt, event);
>+
>+	pmu_fd = open_pmu(xe, pmu_config);
>+
>+	igt_require_f(igt_wait(xe_gt_is_in_c6(xe, gt), 1000, 10), "GT %d should be in C6\n", gt);
>+
>+	/* While idle check full RC6. */
>+	start = read_idle_residency(xe, gt);
>+	val = __pmu_read_single(pmu_fd, &ts[0]);
>+	slept = measured_usleep(SLEEP_DURATION * USEC_PER_SEC) / 1000;
>+	end = read_idle_residency(xe, gt);
>+	val = __pmu_read_single(pmu_fd, &ts[1]) - val;

I actually expected 2 subtests:

1) gt_c6_idle

	we should be in rc6 for the entire time when nothing is running

2) gt_c6_full_load

	we should not be in rc6 when something is keeping the engine
	busy

For (2), we can start a work load with xe_cork


>+
>+	igt_debug("gt%u: slept=%lu, perf=%"PRIu64"\n",
>+		  gt, slept,  val);
>+
>+	igt_debug("Start res: %lu, end_res: %lu", start, end);

is this reading the value from sysfs to aid debugging?


I tested this with the kernel implementation, before merging it, and it
worked. I don't mind if this is merged and cleaned on top. I will leave
it for you and Riana to decide.

thanks
Lucas De Marchi

>+
>+	assert_within_epsilon(val,
>+			      (ts[1] - ts[0])/USEC_PER_SEC,
>+			      tolerance);
>+	close(pmu_fd);
>+}
>+
>+igt_main
>+{
>+	int fd, gt;
>+
>+	igt_fixture {
>+		fd = drm_open_driver(DRIVER_XE);
>+		igt_require(!IS_PONTEVECCHIO(xe_dev_id(fd)));
>+	}
>+
>+	igt_describe("Validate PMU gt-c6 residency counters");
>+	igt_subtest("gt-c6")
>+		xe_for_each_gt(fd, gt)
>+			test_gt_c6(fd, gt);
>+
>+	igt_fixture {
>+		close(fd);
>+	}
>+}
>diff --git a/tests/meson.build b/tests/meson.build
>index 33dffad31..d20f50766 100644
>--- a/tests/meson.build
>+++ b/tests/meson.build
>@@ -309,6 +309,7 @@ intel_xe_progs = [
> 	'xe_pat',
> 	'xe_peer2peer',
> 	'xe_pm',
>+	'xe_pmu',
> 	'xe_pm_residency',
> 	'xe_prime_self_import',
> 	'xe_query',
>-- 
>2.38.1
>
