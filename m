Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FEC2CE7B1F
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Dec 2025 17:57:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB5CC10E586;
	Mon, 29 Dec 2025 16:57:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gXr5Cqvj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D62E510E586;
 Mon, 29 Dec 2025 16:57:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767027436; x=1798563436;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=jI+qkFOsDUNTNEigMtYXBWqkIFCf7LL4CxChhp4Ea2A=;
 b=gXr5CqvjaMLArQM/2rzfqXA3JJWGPH6URcVj+lixG/kmzSZBEfKGcMck
 BlIqwXzwZcXckLO8zbGARtnR8zizf4Ke35ec0kKrfK++RUPjFaZAdO2gC
 nJ/7azRjf+FNMOtNzGlsNYX0dszqVFzdOwB4T7gITvZsLAS7crI9ANoaX
 MMHKw1tEqJ39uFcoBA/JDjNm79v4sdg9x9PVZwkaGAhXV5kYR0GkQM86/
 Dxn/WG94QZqda1MNjDqxYGwTC8NvLWmFW9uo2wVArofeyGUzbA+xtB4n7
 B3zwhTGNCxWVm0dHtOAm2eqf6wItw5u9dF8uRecRdi9cagCJYrtjK/MMq Q==;
X-CSE-ConnectionGUID: NhkPvSBORWqvm/Dopn8rbA==
X-CSE-MsgGUID: 8IInqmqJSmaSlGuMlvlQag==
X-IronPort-AV: E=McAfee;i="6800,10657,11656"; a="68668733"
X-IronPort-AV: E=Sophos;i="6.21,186,1763452800"; d="scan'208";a="68668733"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Dec 2025 08:57:16 -0800
X-CSE-ConnectionGUID: 78F94+MsS4SCs1NB4dKKMg==
X-CSE-MsgGUID: 7EmQ/suHQ0CSFt+wrNkNbw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,186,1763452800"; d="scan'208";a="200958571"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Dec 2025 08:57:17 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 29 Dec 2025 08:57:15 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 29 Dec 2025 08:57:15 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.37) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 29 Dec 2025 08:57:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DWq/ZmvF4dbr9yK5tPtyryGEVZyukG0GuaS0uHxRWqvSGSMNOIw97xveG7TCe5bZi/MsT65NzsnuQj49VHEG5M98tZQ29c6TbAhHq5TUN4z87SssXUsQYs6+xedLyonkyfTj27Tlg/X1uNn2QD6K24NR/y8upQVl2fDf5k5Fj950MkHoEvV/fOsfxbODCjwKf2CEM1pJYFd8kdUujf0Q51Flm02k0AdPG8n+cjSXMOrPzjNht66+CjlQC8hw7RwuWM7HMmvDhXyJY8wEi7uocVb3v7TymnRpgXpm8AuJAnP2t2nagUZolmyWaTALOnwI2vwCcMjkQhO1sXPE6lZrBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Y8OjqOsXP26a/NliIpwbpNHHNCXQ+nQ+Cu1rNiDIBEY=;
 b=GoY5udQgx1/t2A50CHXYBgaxnUSSBI2ilpSzPuelmMninpeUxK5Pu1B4XYwGOT3FhWg5PQjCUYugMmnSp+2PKuNCOYVlq8bGbIiRNUrMb9lVketZEhudkQQZwdK3ig6fNLjAkK3SldezpJA3irxn+Ny+ICpCgAfbf6tPmPWgIyolGnSV9hB/lWKiMOlv4zBymDx3R6ivuMWECxgIhMmjwgyud1D9RBvg4MTWAmqe5dPBjC6g01gPdTN7frx0gwwnE8Fke6L5pfaKBJSJHP8BGO5hCCFy6hxDvR+Jl0lCc1kHTjd/XMaO5N3TQKCkv3a4amW826MtlkaqR5HSSaZo5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by SA0PR11MB4574.namprd11.prod.outlook.com (2603:10b6:806:71::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9456.14; Mon, 29 Dec
 2025 16:57:13 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e%4]) with mapi id 15.20.9456.013; Mon, 29 Dec 2025
 16:57:13 +0000
Date: Mon, 29 Dec 2025 08:57:10 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 <rodrigo.vivi@intel.com>, <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH 1/3] drm/i915: drop i915 param from i915_fence{,
 _context}_timeout()
Message-ID: <20251229165710.GG1180203@mdroper-desk1.amr.corp.intel.com>
References: <cover.1767009044.git.jani.nikula@intel.com>
 <dce86cb031d523a95a96ed2bf9c93bb28e6b20ab.1767009044.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <dce86cb031d523a95a96ed2bf9c93bb28e6b20ab.1767009044.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0P220CA0018.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:a03:41b::28) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|SA0PR11MB4574:EE_
X-MS-Office365-Filtering-Correlation-Id: 452c591f-7421-44f7-02f1-08de46fb5009
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?qa7hyjtauc8htD+toABnIJuajsN5Y38QEgfcftnG5fflcRrVgcDxwY+oLYUr?=
 =?us-ascii?Q?DKKgUMPxSKZ+w1d6+fTWMa2GiJX44Vw6nkpb6r3TrrFSqukOVE0MmDRfrMlf?=
 =?us-ascii?Q?0pWZx0fDiKgTOs7ccwPS2xV12qOA4bLkYGQf91eHYJ16vPtvdYXgssbR929X?=
 =?us-ascii?Q?x4kHfYsgAt/BeDtTCEk/96wS4fHAMiDdoI61vRLtVbG6Z39SwvcsvDuVrI00?=
 =?us-ascii?Q?i6ow1ZsM3RkxMNiQLnwjyrHkqkIBdKdzfE4/qrlOpLJ4LOVXYITIg1QOUmwx?=
 =?us-ascii?Q?SO01DSH1HoiI5W2/NwIz/UpoZm9aXzyf4L4x3IxkD0vla3rpNAvQ4l3M5GCd?=
 =?us-ascii?Q?2LH6AuDlPmjLSSF+NmS+lGQpUD63zKrfBwGiZ5Z2emMCaABNuTdh/AW7S2jt?=
 =?us-ascii?Q?gu97OuQqk2RshIWJ7cv1/Khkq3C4KyGa9eTq34rc+5VHjOXwRFL8iPtdPp0W?=
 =?us-ascii?Q?kBTPj49aZ1HcyuzWKYiEqMjyRzoD++aW7FVHwe4HKsyJXdA3YDyzx/gQzbad?=
 =?us-ascii?Q?9EI0GFwtBC2jZsHW5VqHoF8bjs8/b6R2lwDSLYHIDL+JZdIqbHk1h8qbRWJy?=
 =?us-ascii?Q?Z2gX9kbosXsPi4g+aMR2sTmGEgWMVJtvL9tpQkkWlhVw8E7PJlzo+cLZXOfH?=
 =?us-ascii?Q?8WYpGCWnhyRar2MAjq2EJMw/x+P/myxPuNBoQpMlAX5BacyPdOeO3V4pC+eF?=
 =?us-ascii?Q?z4SaTMFGotFA5YnmFfxlXgwyShNq/mulcqzhw8XAhphmbdtNxe4nF5q6W5nz?=
 =?us-ascii?Q?ZZwfJdvCOsVjMhVDRnTrmx5j4Nl/J5VdZF43hPOk/obkClNzx/RmxUD+Q/nq?=
 =?us-ascii?Q?1amGyyqxXxz1UGUydWjmBbeYSSfNub5VNAbMeIA+ivfdr6N/ERWo4ScRf0KN?=
 =?us-ascii?Q?PYPJlNpnFDjiTPjAxVpRgiXEhNRObDBb/mGOz/D//UAfJ94SmI37a4Jo9iga?=
 =?us-ascii?Q?GXQI/oeRLuwWFz/5iYajfNXEsrqTlofN2eG5CPtl+37Ql9hU44fD4mO0R0MP?=
 =?us-ascii?Q?nonYlYFp0znAb35v2VjQXdtfzfUByt2e3R1Dc3PD+n2CJsGVjghqajWzI6mM?=
 =?us-ascii?Q?4pN6CaPczvUq3d43/BA5OUt3uXSH+abNh3JS9UbVW3bNoNGXhmHSnNdO86y0?=
 =?us-ascii?Q?vnf7N0HU7ZhSsacpiOsqRMLNBukbN7AIZ2YRzLlhEmzO+CQNLrx0zH+dGEoq?=
 =?us-ascii?Q?JeB7wfvNsgDMqAYZXBxbJ9G7NMJjx5U7YbsuqMyuRI3uZgKXYsfk3GYotSdP?=
 =?us-ascii?Q?2cf6tkd7QBdZ7jIv50xwNJl2QdjvmQHSZkkpaGM43GD3G3ByXM7Gdoxj/ZjM?=
 =?us-ascii?Q?eCRp5kcWDxyX5OStzx7FBNm/Ngg3H60m9bri9AyF1JZrBR4cSIfHr4tWhCvM?=
 =?us-ascii?Q?n7F4eiz2bqB/SOtmLKi5xfZn1bfV74FA9NeBemYcZXX2/W35cANDOyBJvI7P?=
 =?us-ascii?Q?sRowOUJZHeLy4Zx4i83OR+gY7uNMOmQ7?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Lm7TgGibN3n2P2BJHJWQfNhgEju0J8AvnMZhJtFxlxstVCCVLQfphG5aNgry?=
 =?us-ascii?Q?OWRK6040dsghVhOhzdVCVABVOPzcWje2C4OYBmJF24s3waQyD+roSJ9cVu8n?=
 =?us-ascii?Q?EmlOfqiVPdkvRq9037695zQ2AJomg/fxgtWv6X6VfaU82EHOnsE4xOfEbv2+?=
 =?us-ascii?Q?v2M38nSIzpBdsR9I1+1PVBt83FM2UCf419JIlQVEtm6YHxFvk3tzzVtBe91/?=
 =?us-ascii?Q?SBXAx+irOqWxAU44dXGYoa7GJMzjj/GKHPCYu1zsqbR+bU38wQOD1WTvrAdw?=
 =?us-ascii?Q?k07nNxKiLRcC10i2b3Ukdc4N7Z2vGletrEobRsLPi30UJUlZXJ7vt2cHdRGd?=
 =?us-ascii?Q?fmQxnX1/zt/WByF/oq2s2u9uhubgI5XZvZXmTiPNYvm1+ZtVtdkNzW/DI3hF?=
 =?us-ascii?Q?mVzru3sB7vegA1w5MmQjs1aZlfEYgMfJ0lqIgDNqH2VrHa3+bXb2KC6/J/Jy?=
 =?us-ascii?Q?c/Sb0B2Tf/I6mDnTPf/i7Ri5V62e7kQbiVahh34pL4ayfX3Z6XYYMktWO+Gu?=
 =?us-ascii?Q?AfeoBfpKD6S1joHyeSzDkmb0sfnuYbp6a41cM91YW5NArqaIVAlpdOxwBI63?=
 =?us-ascii?Q?WPGTxDNBXdKpuFKtrlYDsU6g8FLYRNqHfsNRvx1Nt8mge9Iirq5tZJIf0Y/S?=
 =?us-ascii?Q?aOLD+hz/up0vo28Ux1mPPgFmSJuU4JakMiodA8XxTZjI1rNaVi4M6P8GmWzM?=
 =?us-ascii?Q?f7J3r9tVyiNJo1/yFOYRBvEtKuclEbWfV47m6SkOPfwqfcwN0H5r0wZp9LaS?=
 =?us-ascii?Q?P6EXd5lrLRqz584SYrCgzNXrm3/r+uiHOaWRo4VCmQyozXZWazEWsQRVw76f?=
 =?us-ascii?Q?S1mDXCdl8O7Cp1aaI6ARKpb/pj+slo9M6kwPnfcQZAvRp8XquhMHkIWoqbWw?=
 =?us-ascii?Q?EEu1+heGYx23LyH1exnLyc/hWOYo8MTYdlJA/AuNxfjlxVEadQ9ENpjzBgPg?=
 =?us-ascii?Q?UKKQwnoh/0NDH3H8V47a6MaDZXNE3HYcfZwS6aVTruWTEud/6kURu5bHhr4M?=
 =?us-ascii?Q?/QqSDYstAEyzNZ/3mg5OaUoDAoOz3arllC1EwkTl0muMaZ+9j5+UEbY+skW0?=
 =?us-ascii?Q?x3SPRy+de59Gky1TOELGJ1+Yoz0kI9ZvpqiQGLv2cYZ4jisrH/ZydW76INhp?=
 =?us-ascii?Q?h8HfflOygTvcvaZ0Hoz227Uo4XJp/2XJZezJAuNBvwDgGlibZJv0RjhOimYL?=
 =?us-ascii?Q?0w6Vy7QtPuqSh25Mo+rBtoEXJnGq332LBczluWYXp/QlSvLVTxksKdzSmHHM?=
 =?us-ascii?Q?93UO6MCJCXW9WRIoERYquVe9e+sPyoKwIJ+cqwRjhhfdOIwAMh0CZo/mA+SO?=
 =?us-ascii?Q?xED3jKPtvEOp99ebtUvmEY0oGEWIoyqEJA2++XShLNWQrSYX6zErPXoux+8q?=
 =?us-ascii?Q?3cgNX8vhF+cvXY7sYwS1LcMD0d7ATRhlEJPzfuwYoVm7c8vB5dvrZkIA10K/?=
 =?us-ascii?Q?lA3RTPeUtBeKAl/w299irKCJF1SBIv81TtDTFWCfeZuxl6QpdTpqQS8g7YIY?=
 =?us-ascii?Q?JWxRhpjVLBmbPLEsvknh6lqmzaiXEe7oxtN2Zv6RBTUdzLtBFoTQUkodMLyU?=
 =?us-ascii?Q?Z0fJSa94teSvsMNBdmhmqfCxoOxrDNhOA3q1kP2MWXmR/4ezWaZvzjTVqBvp?=
 =?us-ascii?Q?nr+2kDq1GLLRsIsMY+arL8+gfAFmLt9Ha/xLU5GuRRRp2VuX72Vo7h7ey8bW?=
 =?us-ascii?Q?7PSOquQoSiZMMOz9KSCRuGOxn3cJOcOticrl/gx4R4683xQM33CsV/08uyHb?=
 =?us-ascii?Q?fMxIzxYV9r0nPYXg3rNvXZtNPWhhRNM=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 452c591f-7421-44f7-02f1-08de46fb5009
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Dec 2025 16:57:12.8786 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0BJuQuD3jhdsYIKSWfZ5si8uplWtF7vs/Jw42TThzklQGE6MAzjSQq5WZKPZMRXoRzOQ4tCsHxI8YayeCgaIC2a8b48ZjOHDQ0fvQ8as+yA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4574
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

On Mon, Dec 29, 2025 at 01:54:43PM +0200, Jani Nikula wrote:
> The i915_fence_context_timeout() and i915_fence_timeout() functions both
> have the struct drm_i915_private parameter, which is unused. It's likely
> in preparation for something that just didn't end up happening.
> 
> Remove them, dropping the last struct drm_i915_private usage for xe
> display build.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c         |  4 +---
>  drivers/gpu/drm/i915/gem/i915_gem_clflush.c          |  2 +-
>  drivers/gpu/drm/i915/i915_config.c                   |  3 +--
>  drivers/gpu/drm/i915/i915_config.h                   | 10 +++-------
>  drivers/gpu/drm/i915/i915_request.c                  |  3 +--
>  drivers/gpu/drm/xe/compat-i915-headers/i915_config.h |  5 +----
>  6 files changed, 8 insertions(+), 19 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index cd482e5ff929..0819236a797c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -50,7 +50,6 @@
>  #include "g4x_hdmi.h"
>  #include "hsw_ips.h"
>  #include "i915_config.h"
> -#include "i915_drv.h"
>  #include "i915_reg.h"
>  #include "i9xx_plane.h"
>  #include "i9xx_plane_regs.h"
> @@ -7154,7 +7153,6 @@ static void skl_commit_modeset_enables(struct intel_atomic_state *state)
>  
>  static void intel_atomic_commit_fence_wait(struct intel_atomic_state *intel_state)
>  {
> -	struct drm_i915_private *i915 = to_i915(intel_state->base.dev);
>  	struct drm_plane *plane;
>  	struct drm_plane_state *new_plane_state;
>  	long ret;
> @@ -7163,7 +7161,7 @@ static void intel_atomic_commit_fence_wait(struct intel_atomic_state *intel_stat
>  	for_each_new_plane_in_state(&intel_state->base, plane, new_plane_state, i) {
>  		if (new_plane_state->fence) {
>  			ret = dma_fence_wait_timeout(new_plane_state->fence, false,
> -						     i915_fence_timeout(i915));
> +						     i915_fence_timeout());
>  			if (ret <= 0)
>  				break;
>  
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_clflush.c b/drivers/gpu/drm/i915/gem/i915_gem_clflush.c
> index c4854c5b4e0f..c1deea20c28a 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_clflush.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_clflush.c
> @@ -113,7 +113,7 @@ bool i915_gem_clflush_object(struct drm_i915_gem_object *obj,
>  	if (clflush) {
>  		i915_sw_fence_await_reservation(&clflush->base.chain,
>  						obj->base.resv, true,
> -						i915_fence_timeout(i915),
> +						i915_fence_timeout(),
>  						I915_FENCE_GFP);
>  		dma_resv_add_fence(obj->base.resv, &clflush->base.dma,
>  				   DMA_RESV_USAGE_KERNEL);
> diff --git a/drivers/gpu/drm/i915/i915_config.c b/drivers/gpu/drm/i915/i915_config.c
> index 3cb615ffa96d..9e13b1be407c 100644
> --- a/drivers/gpu/drm/i915/i915_config.c
> +++ b/drivers/gpu/drm/i915/i915_config.c
> @@ -8,8 +8,7 @@
>  #include "i915_config.h"
>  #include "i915_jiffies.h"
>  
> -unsigned long
> -i915_fence_context_timeout(const struct drm_i915_private *i915, u64 context)
> +unsigned long i915_fence_context_timeout(u64 context)
>  {
>  	if (CONFIG_DRM_I915_FENCE_TIMEOUT && context)
>  		return msecs_to_jiffies_timeout(CONFIG_DRM_I915_FENCE_TIMEOUT);
> diff --git a/drivers/gpu/drm/i915/i915_config.h b/drivers/gpu/drm/i915/i915_config.h
> index 10e18b036489..f386328d9e95 100644
> --- a/drivers/gpu/drm/i915/i915_config.h
> +++ b/drivers/gpu/drm/i915/i915_config.h
> @@ -9,15 +9,11 @@
>  #include <linux/types.h>
>  #include <linux/limits.h>
>  
> -struct drm_i915_private;
> +unsigned long i915_fence_context_timeout(u64 context);
>  
> -unsigned long i915_fence_context_timeout(const struct drm_i915_private *i915,
> -					 u64 context);
> -
> -static inline unsigned long
> -i915_fence_timeout(const struct drm_i915_private *i915)
> +static inline unsigned long i915_fence_timeout(void)
>  {
> -	return i915_fence_context_timeout(i915, U64_MAX);
> +	return i915_fence_context_timeout(U64_MAX);
>  }
>  
>  #endif /* __I915_CONFIG_H__ */
> diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
> index 4399941236cb..d2c7b1090df0 100644
> --- a/drivers/gpu/drm/i915/i915_request.c
> +++ b/drivers/gpu/drm/i915/i915_request.c
> @@ -1351,8 +1351,7 @@ __i915_request_await_external(struct i915_request *rq, struct dma_fence *fence)
>  {
>  	mark_external(rq);
>  	return i915_sw_fence_await_dma_fence(&rq->submit, fence,
> -					     i915_fence_context_timeout(rq->i915,
> -									fence->context),
> +					     i915_fence_context_timeout(fence->context),
>  					     I915_FENCE_GFP);
>  }
>  
> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_config.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_config.h
> index e835bea08d1b..d4522203e2dd 100644
> --- a/drivers/gpu/drm/xe/compat-i915-headers/i915_config.h
> +++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_config.h
> @@ -8,10 +8,7 @@
>  
>  #include <linux/sched.h>
>  
> -struct drm_i915_private;
> -
> -static inline unsigned long
> -i915_fence_timeout(const struct drm_i915_private *i915)
> +static inline unsigned long i915_fence_timeout(void)
>  {
>  	return MAX_SCHEDULE_TIMEOUT;
>  }
> -- 
> 2.47.3
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
