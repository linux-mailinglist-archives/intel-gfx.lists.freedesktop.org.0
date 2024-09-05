Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 58A0A96E018
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Sep 2024 18:43:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7364110E85F;
	Thu,  5 Sep 2024 16:43:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Uh32Y2gk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0D7210E85B;
 Thu,  5 Sep 2024 16:43:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725554624; x=1757090624;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Dw101EvYz/qMX0JCejhWaZJi/ZxM+cNsIq61iBswUR4=;
 b=Uh32Y2gkrK+2w46VfAVoUBU1WknyNif0tuXk9crUkrTP7jfTfu/lQLOp
 F2AAvj1jsntzG6ucRaKNmAP9I1R7JxuaEKUED0l/wvQRG4g23IWzPxSNV
 aLa1I9S63nLlh/IhsZpSBzLmxcbNgO7zvYOOV9ZqZo2qpMzjFbR+m58cG
 Z9Mu7WFIW6aqg2l2r6e3YaH4McWNxUSJ8iHufncTBJ8VUfeLzesGS3qGU
 TnNm4LzgaUva7S/GhqlLEVe9TwIj0B2fwuIvSpcR2pPCO2GXRlVZ5DNLQ
 UlgL3UNkTo23G3aS68Tf0UY1OhxZoyCjdpzPr8RzK3D+A4eFnD0EtbzOf A==;
X-CSE-ConnectionGUID: o0QzwJ6TR6aHNNoMhHZXsg==
X-CSE-MsgGUID: 4UwUOiDvR2auGnd1Azwp5g==
X-IronPort-AV: E=McAfee;i="6700,10204,11186"; a="24161335"
X-IronPort-AV: E=Sophos;i="6.10,205,1719903600"; d="scan'208";a="24161335"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2024 09:43:43 -0700
X-CSE-ConnectionGUID: Y5zTsGEIRTeEJ1WVw3Gczw==
X-CSE-MsgGUID: Ryh6yt4bTSK3eb+F+oYnwQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,205,1719903600"; d="scan'208";a="65332037"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Sep 2024 09:43:43 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 5 Sep 2024 09:43:42 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 5 Sep 2024 09:43:42 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 5 Sep 2024 09:43:42 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 5 Sep 2024 09:43:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ingii9Vhzff6/g3fQASSTnBAgiRsH0Wx6T+seJqgTqVlvHzk5gwOYQ8huJeG3jBKK3PM8UGJ+MLFuILWgNz+G0xElFC9/ZOxMwQFXPvQ/ogtOOMUVEKUroB1PGQls+HaClGAsVl9iKVBdSxwyz3aiUI54RIvhr0aUDletCLYNd2NkUH/Ytuz4WrXFmVPYU9hj2dikaL2WOsaHKmJ3BdS19eJqReo1U3gtQILyO9+jmod8HcH/USlksPj+AJbNVXPUrqCz+31h4pesiVtoTE9akniBSr5xMkLCfZi+Yi2JpT5YLkJprml1Dkydy9I8LIwKvCr0S0a08xxhyGwEIe/gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cdKgwd5AE5ucjJTDP0d+yadYAXRJCkm0MyPPrbM1OgA=;
 b=UL7JIBnNqvogRIqKoJRkA09ZEafB4wPUZyP6bLNAzy7etFWP1gTyfCusG6s/GnJIY7pNn+1x54ABYpzTwEiZz4IPZxg0JKe0Qi8OslT2zQs+fJHNw6TGnp0M1zwlXLUwKS/L6+gURNnHIEwR9L5Kofx+ROM2DreNHFaqjj7p41Dv1uALdZ1tfNY1dh4X/LGz33eAw5ypNmyIA4x6CAW40fUc90NXXlS/ygPFenxulWDBz65FQmB/wv9ge9jCZrui97iMvf8KMbM7Tk37dX9XgOucqxwtzyFvKOS/QAZTteHmqq9IvlgJ50n2TI4Hs8mazT82h3/H8VrOhpva/mMIKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by SA0PR11MB4591.namprd11.prod.outlook.com (2603:10b6:806:9c::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.28; Thu, 5 Sep
 2024 16:43:37 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7918.024; Thu, 5 Sep 2024
 16:43:36 +0000
Date: Thu, 5 Sep 2024 12:43:32 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 1/4] drm/i915: dump display parameters captured in error
 state, not current
Message-ID: <ZtnftJDrZjj8e3dB@intel.com>
References: <cover.1725372032.git.jani.nikula@intel.com>
 <6f6b56d5a68dc4541d5fa57aa3787f8cade743d1.1725372032.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <6f6b56d5a68dc4541d5fa57aa3787f8cade743d1.1725372032.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4PR04CA0134.namprd04.prod.outlook.com
 (2603:10b6:303:84::19) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|SA0PR11MB4591:EE_
X-MS-Office365-Filtering-Correlation-Id: 7fedc536-662f-4253-c03d-08dccdc9e2f8
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?QCV4zLYxY+RZk3/XbysG0TPJwThHTK6kaJocjlwTb9nmS8M9aCM/0CkpEmnM?=
 =?us-ascii?Q?BNcTCVL2Y3gbpc0nOAsKAbVOchX9oNFAJOmE7sJSfFIjdXIVGs0KDFRMhPcz?=
 =?us-ascii?Q?jt8A46zl2Zxvup7ZoOM2W/hHte4TwGM3cwlOSpZQeWUXtQ8MQw4ReW/2Jq4i?=
 =?us-ascii?Q?WVj0AG0PU39DOHgLJqjuCrL9izAnba7kBHmRXH7R9GyneIL3zHRMtYdPx5DU?=
 =?us-ascii?Q?fL0hRawGIhI3cmuZohch9b0Q/1Jj5B7qQSYWWdQpLRd0PjfiUtB7+aURHjjy?=
 =?us-ascii?Q?x+/1s1QLme8jQu7gVimoGa2F2X07X4X3MUCLhlHzGUqecj6390pJPNRjO6k2?=
 =?us-ascii?Q?GPKvpo1QtdaJrzWrcHkFNK3qNZMYfJjzVxEoBMF2ZUCnGn3Zuuf6G7xcMDAL?=
 =?us-ascii?Q?GAASJg3r4Ln7+/zbw94LXw5o9kcRRsx6JDwAcCTuJs8UEL2bNnwNXI8W+ikC?=
 =?us-ascii?Q?Fe/H/gdoQRcp+vuN+El1SMFSmGHsPirr7UK+0qX1DEQG0T53JXV7hwyFb8DX?=
 =?us-ascii?Q?ZJ/kp58AtC/VFEA3dsXbYZGjSsqy04DmLPeouhpJitADu8FCPc+WmXLodi/4?=
 =?us-ascii?Q?co5zfRYOb5jcfBZ26KZBH4UGZPy4EsCjkxRuYdfVUywVQC4wtZJHEd68Qz2y?=
 =?us-ascii?Q?H3dwd37g8DUQ/KWLf93sOWxc0R4bHSmbkRj0TovMKzowYxoBK2cuy3LzAQGZ?=
 =?us-ascii?Q?Mt6ut6oFgWdYMRExLxDkahrYJpZryeILhSQbZrrvdqpn2qZOq0ZFdLeGL5AA?=
 =?us-ascii?Q?rbjY56DttmbFvzty8MMPXTS8xkIEOUBEtLioQg4rNa2D7M3f0hLMsaTuDODm?=
 =?us-ascii?Q?kLEensKUK9naRHDCQyJdWt2F+DJemb1ptIixmh6gjYYHoawtT0bY35C71+nK?=
 =?us-ascii?Q?A3AELphvdEhuPNaTAqbc2JpCsQqvwysBVjYietYmkhEVUKtyJSgaMuJ3tydm?=
 =?us-ascii?Q?reqWjRt4DxR+zkkachp/9sXDOJmSQuC2DZ41KVcvB00q3Oi0XRkazXbao1hC?=
 =?us-ascii?Q?uhmEi//9nX3Oq+Fw34atM+1Hxj1IV48lZmD+kOpDoNP6xMfzfPeEE40jnKgc?=
 =?us-ascii?Q?zrCyjHNnjvus5xn2Hc54KnCWxU8Ofwy6WRs91PXVhHisx4akJNeS7XLmpCN9?=
 =?us-ascii?Q?QWxu3ADkYjwuQlX59om2/Mu8Q7ex+lceEps6yhTeh9diqVPKrMWGUClPGrcb?=
 =?us-ascii?Q?qz//f5LGg605xBlTa3EZ+Ya/WOYhitMZZ4v/rRAWqDpiP9UP+SeCtjvMAlMX?=
 =?us-ascii?Q?0hFp3ZOFBXVYdOqY61AstLy7WsDnxNdXUDWTWeKrIYbs8sUgUb9xhTs3RmQC?=
 =?us-ascii?Q?jMB4O8K43zhmykDZ/hCrlTpnRqySP+CrCov7FJ2LhrFcPQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?PHA7kWX2/d5xJCwwmOc0BSCmUpzR4jHGPDVAbQPugaMF4uifaWAXHLTguBsD?=
 =?us-ascii?Q?TLxtGdrVGpKQbRq8HcOw1alXsqC/Bk4gOn5TZVWWHvpu5jOoWbFwft8YbR65?=
 =?us-ascii?Q?6NkAqSQq0C32vWKjG5jPMhhamknswVXz81kFdX5qYBRrvyoRGsVOph2ATyub?=
 =?us-ascii?Q?MFcOrkvEt5XRodq8xgFh9pTjYQeGApBjgK9IFPOrLvazqGxICKXY4/hnfOYf?=
 =?us-ascii?Q?OKrz9ZgM+xI0/WkucMphpeevm/bdi/AzmbkbmIt2hJKlX/8Mipc66uqHq9e2?=
 =?us-ascii?Q?kh8FiDWdqS4oBbbcnIfT4W79KTBHXCjobOkoFCmgjM6FvYn6ZztKXCBIrzVg?=
 =?us-ascii?Q?J0pz+s+3ECLsOmjitq8TjEGR7oRIKqlYBTvjzQ+nH5iUHatua8nZS1vhX72n?=
 =?us-ascii?Q?2nfeJ16zgY7z53knwgiRtK3U91+yg/XTR27C9/3sItW8Vg2z2dNn8Fblg7JK?=
 =?us-ascii?Q?8xwydInBu5EuidpHKu8TJySK4eBoWkpmqWU0IZ/5qhZhpIb7CBdqz+u8aKPa?=
 =?us-ascii?Q?QCBWtydxsPOzY0C/8ldZGoGcAGvcdOCPAwkl36X9vdkBmdyNPwuwE21VhR5s?=
 =?us-ascii?Q?PjM6Ij3Yh80D9OYUeko0qmyLnt05NDt75oblcd60Ys1q3qekFe1Sp7cxS1WQ?=
 =?us-ascii?Q?jUpq8s8wFgrQtC1rZSS2g5rJ/qROvz1AWRCzzZJNZLlLLvDEwGKJoyd0OweQ?=
 =?us-ascii?Q?7XruacTBRn+M6cjgZpwxpXXraq5xAblW9dXvYT0mb4DVfDU5uq/ws5jCIWUE?=
 =?us-ascii?Q?qB/rFWIKykMcVVchJu8vGtBpwYKe2Y5tORIe0sa/yKkRKqAGV0bTqBCEYTU4?=
 =?us-ascii?Q?xmE1LMUMZaouBeiIHaS0kkIx4MqOIMOJ+Q3CGK8hsyHHF4BaYFbD5Uox8cWB?=
 =?us-ascii?Q?g5vGwSrrsvvmm1Sb6eTxgBzcrfRkckkVzJDZTeIcn80ZhJGwHyFYjbjpxGOJ?=
 =?us-ascii?Q?j7xJATOIDmiA8DQ2wfpwYWuNqoH7/9+U8Pvcmac3C9ZS4lQcDWLuetcU6hAD?=
 =?us-ascii?Q?lyVn1rVpuD8gW1NXU44GUPWB81HYMKhJOfYMRnFSUX62b7FsjzOwJJl1CTEv?=
 =?us-ascii?Q?1aYoFtJVaxMYzCjC3QfmrFJak+DCW5Nk1MuzH72936k7S5y0iOICAaGMY0qL?=
 =?us-ascii?Q?1FSjTZ6ioxhu0Ea2R/UxYIvr70FroB4tBqtqswq5kS136GnZsRSHbbLgo5YD?=
 =?us-ascii?Q?IjsD5dhHZFpx29rEPhnERRN+c6QtPr6SGIwDEyHpgvBE0dhrqSfv8UdAaQ6T?=
 =?us-ascii?Q?BpT8ChEaQ8FPvf3Wscr1fhCkndFd9Q5xh6x9uUlNjsLp6mE0pceUWxwReJYe?=
 =?us-ascii?Q?xi361v5qOzve90u54Q6GCHvauwIn6SPA8G2CX70ipckBorx21xggsXHHHE25?=
 =?us-ascii?Q?WCSHqr21/DBVAbs/7Uv3eVKBd3cuq4doUZwOJ42jBcg9IWQ/sbbnm8GAb3qV?=
 =?us-ascii?Q?gwe4mWFj+30cGowKr3a/mRuDp3J0ebxAItJZ7cKG30iMayML5+ppav8bNaCC?=
 =?us-ascii?Q?NfYyn20rUT2EbHQqhDy3QnDNEL9dtfJuInQJyLg/cgdaToGL7FCzb61IMMJY?=
 =?us-ascii?Q?kVAIcRwhyXcbaVnsSmV8EotV0i1V+gA/gFUE5FJWSUO4WhWxT7xa6yclTDWI?=
 =?us-ascii?Q?Ew=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7fedc536-662f-4253-c03d-08dccdc9e2f8
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Sep 2024 16:43:36.9034 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SvJQIwLyriYE9alc6u2t4ii5MtjHE9E2sK2kzD57QqSqnXL4kNz4n8Zm30XjLkRA/lSfW4S8OQ9oklYqvpHQMA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4591
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

On Tue, Sep 03, 2024 at 05:02:57PM +0300, Jani Nikula wrote:
> intel_display_params_dump() prints the current display parameters, not
> the ones captured during error capture. It's not likely the params get
> changed in between, but make it pedantically correct anyway. Pass in the
> parameters and driver name to intel_display_params_dump().
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_params.c | 8 +++++---
>  drivers/gpu/drm/i915/display/intel_display_params.h | 5 ++---
>  drivers/gpu/drm/i915/i915_debugfs.c                 | 2 +-
>  drivers/gpu/drm/i915/i915_gpu_error.c               | 2 +-
>  4 files changed, 9 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c b/drivers/gpu/drm/i915/display/intel_display_params.c
> index 1a45d300b6f0..024de8abcb1a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_params.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_params.c
> @@ -173,14 +173,16 @@ static void _param_print_charp(struct drm_printer *p, const char *driver_name,
>  
>  /**
>   * intel_display_params_dump - dump intel display modparams
> - * @display: display device
> + * @params: display params
> + * @driver_name: driver name to use for printing
>   * @p: the &drm_printer
>   *
>   * Pretty printer for i915 modparams.
>   */
> -void intel_display_params_dump(struct intel_display *display, struct drm_printer *p)
> +void intel_display_params_dump(const struct intel_display_params *params,
> +			       const char *driver_name, struct drm_printer *p)
>  {
> -#define PRINT(T, x, ...) _param_print(p, display->drm->driver->name, #x, display->params.x);
> +#define PRINT(T, x, ...) _param_print(p, driver_name, #x, params->x);
>  	INTEL_DISPLAY_PARAMS_FOR_EACH(PRINT);
>  #undef PRINT
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_display_params.h b/drivers/gpu/drm/i915/display/intel_display_params.h
> index da8dc943234b..dcb6face936a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_params.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_params.h
> @@ -9,7 +9,6 @@
>  #include <linux/types.h>
>  
>  struct drm_printer;
> -struct intel_display;
>  
>  /*
>   * Invoke param, a function-like macro, for each intel display param, with
> @@ -56,8 +55,8 @@ struct intel_display_params {
>  };
>  #undef MEMBER
>  
> -void intel_display_params_dump(struct intel_display *display,
> -			       struct drm_printer *p);
> +void intel_display_params_dump(const struct intel_display_params *params,
> +			       const char *driver_name, struct drm_printer *p);
>  void intel_display_params_copy(struct intel_display_params *dest);
>  void intel_display_params_free(struct intel_display_params *params);
>  
> diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
> index f969f585d07b..246fece628d6 100644
> --- a/drivers/gpu/drm/i915/i915_debugfs.c
> +++ b/drivers/gpu/drm/i915/i915_debugfs.c
> @@ -78,7 +78,7 @@ static int i915_capabilities(struct seq_file *m, void *data)
>  
>  	kernel_param_lock(THIS_MODULE);
>  	i915_params_dump(&i915->params, &p);
> -	intel_display_params_dump(display, &p);
> +	intel_display_params_dump(&display->params, display->drm->driver->name, &p);
>  	kernel_param_unlock(THIS_MODULE);
>  
>  	return 0;
> diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
> index 6469b9bcf2ec..f23769ccf050 100644
> --- a/drivers/gpu/drm/i915/i915_gpu_error.c
> +++ b/drivers/gpu/drm/i915/i915_gpu_error.c
> @@ -663,7 +663,7 @@ static void err_print_params(struct drm_i915_error_state_buf *m,
>  	struct intel_display *display = &m->i915->display;
>  
>  	i915_params_dump(params, &p);
> -	intel_display_params_dump(display, &p);
> +	intel_display_params_dump(&display->params, display->drm->driver->name, &p);
>  }
>  
>  static void err_print_pciid(struct drm_i915_error_state_buf *m,
> -- 
> 2.39.2
> 
