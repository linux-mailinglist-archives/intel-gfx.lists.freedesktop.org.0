Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 904DBADBB7B
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Jun 2025 22:49:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F2AD10E455;
	Mon, 16 Jun 2025 20:49:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lKhk6PYw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33B5010E455;
 Mon, 16 Jun 2025 20:49:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750106949; x=1781642949;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=FDtYN6umrNCFe9X1s8vl49UJ4AlkYy1gzKowYklZxOI=;
 b=lKhk6PYwoYL5SdFtr7b8KhY+pJnrWm9zjayJveXri6H9Io/SXarVMzRQ
 90IcrSL6qZUSwuIU74frQ25pXApyAWOcxzITGbseud5Hh7Q5CjQKz/lhK
 cdub78A5CTJNK9lGyZ4oYMGJrDFZTnjFLZSG15wOPR+0YN0oDnAu647bs
 0aaUYb56nyZD9y1yLTwgH4NGyqPFyPOl6KYz6buQN7bS/mk6Za7QWQwMv
 i1os9PpKmxe4IIguIHC7CWz2Aip1TVoc/ecFq68Y7K75CoGrjV7QzTQCw
 8KTGyUQMmWHIfVaTLvNdpRUm4isl4feYXEJMMLkavyPgRctJLig6SYVT1 A==;
X-CSE-ConnectionGUID: knbufBtpS2OKDrXVYqdwnw==
X-CSE-MsgGUID: 0kIxAHFxRvevq618pjSmoQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11465"; a="51373522"
X-IronPort-AV: E=Sophos;i="6.16,241,1744095600"; d="scan'208";a="51373522"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2025 13:49:09 -0700
X-CSE-ConnectionGUID: N/lNJvtiTwClq30mW4d8LA==
X-CSE-MsgGUID: MWqW+pFEQLmB7Mw5pF6CVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,241,1744095600"; d="scan'208";a="149467668"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2025 13:49:09 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 16 Jun 2025 13:49:08 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Mon, 16 Jun 2025 13:49:08 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (40.107.100.74)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 16 Jun 2025 13:49:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IGBxAeu39usp5OQSST8se5EJ2RVM7cLqVxkhE2ooA6YRDZi2fcuk5l8tXS8OZaGVj2i+KS3oWDMM7Mov8+WjCz5qLjyx17/wuCK+2hEm1MHO9BmvlkwvWLIFSXm61stSJb+FLgG3moNQVtwblJ5Ad2/76KyOa+RHdbD4fRPudsDMPFUfDVAyipczFCqRpoWjVjiSMuM1AFWwdkAvCJX39T1GNwXQv+Y4CVDE6uDq6s+H3tR8EO6KCcqiO9Ttd/VQXHDzQZ/OWgP5fhug3ZE+8FhonpNszKl/sYHFZ95deSXL5wjpz0fumjXFXVlFnNsXQJEyahjBlg8RdbECGOQwNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=z1XPRH1gG2r5hNva5kTetNkaPn4ILgAvMMuHc1G61rc=;
 b=jTHij9OKxtcS9I65BFzkR6dtFNrTmahS/FN1e4D5A+Wiv8Jf2d5UqDyIHdUREJsV86yNoIrSz5dpgoOS6ftF4b79YrN/EVbR2SdltMvBqft7+gzw0EzCMseVev7iD81UI/o7kZFjE1xfZr/+P+okJu0ktexmuap/MhHdL+KCBcPegTuzrKmqvIAQPQ/xNKSWE7Y8nG1RJXUPdf7aJ7PBi1cj749v/AkKxDUCqhgDSpAHtohvyoeu4kN5d7t/LHgjOedzTy/mjKYnIOLO8DDiaL6j92IRoAZ1NDM2IACs7XUr5Emge5yonsubn/uOc933UMRqFSG7q+rdrVtVyNdJow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by CH3PR11MB8591.namprd11.prod.outlook.com (2603:10b6:610:1af::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.24; Mon, 16 Jun
 2025 20:48:51 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563%6]) with mapi id 15.20.8835.027; Mon, 16 Jun 2025
 20:48:51 +0000
Date: Mon, 16 Jun 2025 16:48:39 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <lucas.demarchi@intel.com>
Subject: Re: [PATCH 1/6] drm/i915/pcode: drop fast wait from
 snb_pcode_write_timeout()
Message-ID: <aFCDJ-vgmFHU0lQ_@intel.com>
References: <cover.1749119274.git.jani.nikula@intel.com>
 <4d995c8a8ce8398fdd3d95d50fbc1b5c599471f1.1749119274.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <4d995c8a8ce8398fdd3d95d50fbc1b5c599471f1.1749119274.git.jani.nikula@intel.com>
X-ClientProxiedBy: YQXP288CA0032.CANP288.PROD.OUTLOOK.COM
 (2603:10b6:c00:41::42) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|CH3PR11MB8591:EE_
X-MS-Office365-Filtering-Correlation-Id: 3951cfdd-2e84-4aa0-8c9f-08ddad173327
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?6afITSJAu5lu0gq3bFHN3RlKWclhXxbG7E6RbzXIxhauxJd0bbfKrTkbyN8m?=
 =?us-ascii?Q?9H8jY2UX+FtYWUMztWIn2NV3dgRoXI3jvsJ1ROwcok6G72geryY1Zg4nsp6K?=
 =?us-ascii?Q?L4IqEF0hmpNR2s7+FRVzSfYyoiIh1X3Q9qQBOv5WazoGsMzVw2yqjMZZx4ty?=
 =?us-ascii?Q?ompMlXAZC0VssMyO2d2zK/kGzN/LCz1aTgLV5TLz5C3Lrfuoi7AJKZ9ZvAwN?=
 =?us-ascii?Q?WpBOMD03mtFuxqcvsq6AM/qTJy7tqbE0e4sY6rPVgsKuMCMCZsd0OSqHLcq1?=
 =?us-ascii?Q?DA7jZQ7IquuDCjzsvayfdMxbhV0gHCSn/EsZj6afrFZwvSYctmFJZlMvnzJq?=
 =?us-ascii?Q?UUYaBXqG76l/KtH8al08su0ryKFZc3CmhL+LcHZ1doFVg6/h9yJY2gQMsuPF?=
 =?us-ascii?Q?LW2g0tVBaWSmxpEr9HiLyDtRVQfMm+uvTPdDlkqn0gNVQfImGAUV2n3I7nSG?=
 =?us-ascii?Q?5fGYBQyslD52+FEpo1UE1pk1kiEuqCLu6Ts+LY4moH1hMJrTDqG24mK8ivnP?=
 =?us-ascii?Q?3tzQQE7CYpmyLzWWHoFjoGsJGxisltlo0rueZopfFjjufd7YhXeRdBt6R5DA?=
 =?us-ascii?Q?Cw33nkWmhsT4rpnFK+NxN2r4KPc9jYs0h7ACArMqvTV/tKiWoCzgosZcr5qe?=
 =?us-ascii?Q?8woA0oO5FhS7a+cVoFtGOKuPxio6M62PE8d2X4qDWC1FxzmyEgMdYaVv1VTW?=
 =?us-ascii?Q?+neH+KrBEq9cv68LylTOmjgiY4XPraD0KxQi8vgqxxWjZO+JpmX/55LzwvrD?=
 =?us-ascii?Q?p/KngPaSJmL7l5CZuZRibafkugXH1MjBJ6YKJK4llTLUntbMeFniI0rek2a2?=
 =?us-ascii?Q?gZkb564jKQXPrRpGh2E2OfxMCSZRoblKGj7mCTpScAeOLkt6dMwzXUcpoZdd?=
 =?us-ascii?Q?0mRvuiKjdrLYZW0PwtDR/3O2h15RS9XoWOIge7tjYjmG+eRR+/aWStsiwcNl?=
 =?us-ascii?Q?uPYRjFRqvyY1jijoZA4T9Ss+l6l0PhCuqXLWaOiSuWp4VsNNuZBak4XeeWfc?=
 =?us-ascii?Q?D8P43O7zTqhm5aSLIxVI2Ilk9bko3tO12UVCeRR44FXK5WMABOL7UI9f6BZx?=
 =?us-ascii?Q?iFUOHIKyZApDyPyI2SIcdnag5aMRcygqeeh2mODRDpiRQBfQzb5380TGipYX?=
 =?us-ascii?Q?NiMgmA8qKGmORyV64+JuCeBx4a6Bua2R0CX50jM/3YATx6FkJHpsOEj0SD6W?=
 =?us-ascii?Q?ZdPrmbF4jn6nOgW48IbpHS3EHBOLMGD0W8HI6p6LtNBfyAAOKWuVsfZmFKZE?=
 =?us-ascii?Q?B2sAOSUdSkXfx9L2eUnhcoMZ91xjoasfIJNT/YwUTZs8FH7qq/7lPAQW33Ac?=
 =?us-ascii?Q?UHT/jXimq8JivkfuLG0xLFefzSwDzNkReOQwMWGueqyzY/5wyYwnYYYni+G3?=
 =?us-ascii?Q?I2zgyelQhiL/vWj0hJeqAubaPeBeKg6x1fnJ5zYI2rrGVKHf3loCdUsjzl02?=
 =?us-ascii?Q?kwmeRzMD0AU=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?JK3zBC60B/hkKM4g6QZUFRMbB1sRWkSav0sKlaWyusEORcNcMDTHkvGB0CCC?=
 =?us-ascii?Q?unY/xYvSpnYKvsxeC8DOq8+qmOnpxZjOni9CH/l3vN1UoU/2NvOpVSaLD3kk?=
 =?us-ascii?Q?nGZE5LQ+aIgH0PV1p/+stvdqWv9FCWjqajQxxp4tvXZaRRMGETxkUf9X8b/9?=
 =?us-ascii?Q?F9HT+f1WOw/Lbd5OrqYaoRqpOf2IOglyIvpLmpROewTK1DHh71CNRC4rPlqB?=
 =?us-ascii?Q?t+6E69bBlkIesEopwZsT8Fk6a1UB2h7wIpuI+2TIVG6htOIvTpI+e/2SvNZk?=
 =?us-ascii?Q?+7TCDaG3Rl+QHbEaaIaolBqQf2a8B3myByRYwtX4dwrNycfNgOiw3IMgar2F?=
 =?us-ascii?Q?bfaV14eq7+6+ZzVHgZ6O+VLmJQlllVhAFb2IiIdntJ19bSnVatfJMcZ5vI1y?=
 =?us-ascii?Q?hfdN9S/PHMMtsnAqNvUOzpnG1ltbEz50q4PgxzbRoSEePnvxDssPyExb9u4D?=
 =?us-ascii?Q?zpI01tv1drMiM0iNkW0WYU2hSh9UXtRS+BjmpLqCYAAWzSiriYUYS2yAbbUV?=
 =?us-ascii?Q?nN7X4GQrV8YIpaP+ySrE29OLbVCs2CuYAGGj8E2/NsMgSeZOxFWpS2HUnt8j?=
 =?us-ascii?Q?u+kJJjJ0g/41KXuv1ui+P019DRKm9bOnz41mIZU4gJ/c6m9E2m5ocNQs76hI?=
 =?us-ascii?Q?iNa6Mq21EnbeHLqa7towWIwsWoOKjGWaclHFyR1QQ+OwV+D6ga2xFlXIG5m0?=
 =?us-ascii?Q?gh9boKJNEAWFtkAcMPN415VUtg/unlq8BNrS2mKsLd1V6QYkmVIyvfZoqEF4?=
 =?us-ascii?Q?eUAjRNa+1LlDvGWUK8AJK2lyeSuc9SIHKqFwYeLL6heQgvZKCRGZy/gdU7NI?=
 =?us-ascii?Q?SX/XwjCWpxv8YMD2jZP39azdCxqdlMeA7iSPL+idPLzFPlUae/xeAWLm3a6/?=
 =?us-ascii?Q?2xdMLQYPWDTR4oGqwokSkuL/cV1hHZeo4ujcuGM2Kbj2chAq1zB2RayVy78o?=
 =?us-ascii?Q?GOOL7HlX0lAypQPzdEUNjWbAqC5qpCLG57dcixxNWslvvplxFPaZ6PgRBSRA?=
 =?us-ascii?Q?283iYNIk89Cdk8I0OEpoVJgj6gJSu+IAiC7sUyYtBcrkKF1TzfcFzmIhNATr?=
 =?us-ascii?Q?klPK7REv6/gk8mtQgx25ncliqVtZ0TDolKtvE554j+MFQOuinwzjg5ckzR4k?=
 =?us-ascii?Q?m1J0o1T3iWN31duM9MjeqEoeaU8UCx/FblP4yZwwT1U46cdvJYhnKaV7PWmL?=
 =?us-ascii?Q?TMEFP5jmuRDV1BCO/u6TfOgXjM/1m3pwpeO8ZN5m8Q2b0acHRLBpSkbqWDs1?=
 =?us-ascii?Q?TTYECCgnLtWay/4T5S/LF+IMbjLIVZOpOhivsXziKMhIO2E9Kz+rCPhbwYHD?=
 =?us-ascii?Q?fOKleruFaYKHzKM1e9beGteViG28Vb0Ij0kmnyNyzKD0cvK2yWxNlLUoEx0+?=
 =?us-ascii?Q?mlO/p0Zxm9JYBxCK0tuiBJouj3JSCIy4u4uTpqg+1c3T/pbuZHb4ZWs/GBlq?=
 =?us-ascii?Q?HkXHgXJwGafEErZUFs5fs7XODS8/fKbAMAc2F33vzqA2cAnedVp7krYltW2B?=
 =?us-ascii?Q?Ltb5EagTgDEXgmjSO8lIgK/5X1kbTabYFZ1W41fTGirZn0FA+shFwIodmlGU?=
 =?us-ascii?Q?rTl7c9G5vpA2MMrL4LRhIkFo98MtuccXcIqCJ/sPAvcUKyyEfZga4ozKctWF?=
 =?us-ascii?Q?9g=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3951cfdd-2e84-4aa0-8c9f-08ddad173327
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jun 2025 20:48:51.2793 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0oeoe2KFYQjNxgOoozkD7E2Kap15ifv2VTuYwmmPfB27B8YbSN3DVV/zoQ7y5hJXeDnhY+btdMt7C7H19MDGPA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8591
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

On Thu, Jun 05, 2025 at 01:29:33PM +0300, Jani Nikula wrote:
> Only use the ms granularity wait in snb_pcode_write_timeout(), primarily
> to better align with the xe driver, which also only has the millisecond
> wait.
> 
> Use an arbitrary 250 us fast wait before the specified ms wait, and have
> snb_pcode_write() default to 1 ms.
> 
> This means snb_pcode_write() and snb_pcode_write_timeout() will always
> be sleeping functions. There should not be any atomic users for pcode
> writes though, and any display code using pcode via xe has already been
> non-atomic. The uncore wait will do a might_sleep() annotation that
> should catch any problems.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c              | 5 ++---
>  drivers/gpu/drm/i915/display/intel_display_power_well.c | 3 +--
>  drivers/gpu/drm/i915/intel_pcode.c                      | 5 ++---
>  drivers/gpu/drm/i915/intel_pcode.h                      | 5 ++---
>  drivers/gpu/drm/xe/compat-i915-headers/intel_pcode.h    | 6 ++----
>  5 files changed, 9 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index f0c673e40ce5..7ad506da7d3d 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -2147,7 +2147,7 @@ static void bxt_set_cdclk(struct intel_display *display,
>  		 */
>  		ret = snb_pcode_write_timeout(&dev_priv->uncore,
>  					      HSW_PCODE_DE_WRITE_FREQ_REQ,
> -					      0x80000000, 150, 2);
> +					      0x80000000, 2);
>  
>  	if (ret) {
>  		drm_err(display->drm,
> @@ -2187,8 +2187,7 @@ static void bxt_set_cdclk(struct intel_display *display,
>  		 */
>  		ret = snb_pcode_write_timeout(&dev_priv->uncore,
>  					      HSW_PCODE_DE_WRITE_FREQ_REQ,
> -					      cdclk_config->voltage_level,
> -					      150, 2);
> +					      cdclk_config->voltage_level, 2);
>  	}
>  	if (ret) {
>  		drm_err(display->drm,
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> index 02e3c22be21e..e60f60ddbff7 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> @@ -485,8 +485,7 @@ static void icl_tc_cold_exit(struct intel_display *display)
>  	int ret, tries = 0;
>  
>  	while (1) {
> -		ret = snb_pcode_write_timeout(&i915->uncore, ICL_PCODE_EXIT_TCCOLD, 0,
> -					      250, 1);
> +		ret = snb_pcode_write(&i915->uncore, ICL_PCODE_EXIT_TCCOLD, 0);
>  		if (ret != -EAGAIN || ++tries == 3)
>  			break;
>  		msleep(1);
> diff --git a/drivers/gpu/drm/i915/intel_pcode.c b/drivers/gpu/drm/i915/intel_pcode.c
> index 3db2ba439bb5..b7e9b4ee1425 100644
> --- a/drivers/gpu/drm/i915/intel_pcode.c
> +++ b/drivers/gpu/drm/i915/intel_pcode.c
> @@ -110,13 +110,12 @@ int snb_pcode_read(struct intel_uncore *uncore, u32 mbox, u32 *val, u32 *val1)
>  }
>  
>  int snb_pcode_write_timeout(struct intel_uncore *uncore, u32 mbox, u32 val,
> -			    int fast_timeout_us, int slow_timeout_ms)
> +			    int timeout_ms)
>  {
>  	int err;
>  
>  	mutex_lock(&uncore->i915->sb_lock);
> -	err = __snb_pcode_rw(uncore, mbox, &val, NULL,
> -			     fast_timeout_us, slow_timeout_ms, false);
> +	err = __snb_pcode_rw(uncore, mbox, &val, NULL, 250, timeout_ms, false);
>  	mutex_unlock(&uncore->i915->sb_lock);
>  
>  	if (err) {
> diff --git a/drivers/gpu/drm/i915/intel_pcode.h b/drivers/gpu/drm/i915/intel_pcode.h
> index 8d2198e29422..401ce27f72d4 100644
> --- a/drivers/gpu/drm/i915/intel_pcode.h
> +++ b/drivers/gpu/drm/i915/intel_pcode.h
> @@ -11,10 +11,9 @@
>  struct intel_uncore;
>  
>  int snb_pcode_read(struct intel_uncore *uncore, u32 mbox, u32 *val, u32 *val1);
> -int snb_pcode_write_timeout(struct intel_uncore *uncore, u32 mbox, u32 val,
> -			    int fast_timeout_us, int slow_timeout_ms);
> +int snb_pcode_write_timeout(struct intel_uncore *uncore, u32 mbox, u32 val, int timeout_ms);
>  #define snb_pcode_write(uncore, mbox, val) \
> -	snb_pcode_write_timeout(uncore, mbox, val, 500, 0)
> +	snb_pcode_write_timeout((uncore), (mbox), (val), 1)
>  
>  int skl_pcode_request(struct intel_uncore *uncore, u32 mbox, u32 request,
>  		      u32 reply_mask, u32 reply, int timeout_base_ms);
> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/intel_pcode.h b/drivers/gpu/drm/xe/compat-i915-headers/intel_pcode.h
> index a473aa6697d0..32da708680c2 100644
> --- a/drivers/gpu/drm/xe/compat-i915-headers/intel_pcode.h
> +++ b/drivers/gpu/drm/xe/compat-i915-headers/intel_pcode.h
> @@ -10,11 +10,9 @@
>  #include "xe_pcode.h"
>  
>  static inline int
> -snb_pcode_write_timeout(struct intel_uncore *uncore, u32 mbox, u32 val,
> -			int fast_timeout_us, int slow_timeout_ms)
> +snb_pcode_write_timeout(struct intel_uncore *uncore, u32 mbox, u32 val, int timeout_ms)
>  {
> -	return xe_pcode_write_timeout(__compat_uncore_to_tile(uncore), mbox, val,
> -				      slow_timeout_ms ?: 1);
> +	return xe_pcode_write_timeout(__compat_uncore_to_tile(uncore), mbox, val, timeout_ms);
>  }
>  
>  static inline int
> -- 
> 2.39.5
> 

