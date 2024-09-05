Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1371196E07C
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Sep 2024 18:55:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BB6810E914;
	Thu,  5 Sep 2024 16:55:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZDDsdjtp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 58A1610E914;
 Thu,  5 Sep 2024 16:55:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725555350; x=1757091350;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=WDhRKQBVBx871OJkXjPIAUusXmJ/zOcN6ZZqIQX2mf4=;
 b=ZDDsdjtpM35yLf5hKkoJJpgy3/Qz7A3mfxzwBCa6YddJVmseVR4Nvwp3
 gvixNZ/KU/M5Fue/MsE8ETPi79M9FIg6XIsAf31kwxP8jtLQJK+/cfcdW
 kFsqaYBw8kJMQc2tewGLjaTKT1PQE1tLY347TqqnXH+PcOI+L5Q/4nkvn
 PJo8Ki/44tvGmGb57S8tLBM2nIQAKyqmccRXHR6QRMj2wbn4THSeTP4dp
 nF91GvymXiG300IBbLSAwQ5nvYtn3VoiuCP6FfQ4eCLvtfEoTx1dKooF0
 xu1+uppRoHprp8L+CZm8wHO0hlAxGcRq908nPeSjtfxyZplMaUJw5sm2S w==;
X-CSE-ConnectionGUID: xleZOmL8ShOsBBx7rFogQA==
X-CSE-MsgGUID: DgKm1imAR120IoRSxCKP5g==
X-IronPort-AV: E=McAfee;i="6700,10204,11186"; a="34860100"
X-IronPort-AV: E=Sophos;i="6.10,205,1719903600"; d="scan'208";a="34860100"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2024 09:55:50 -0700
X-CSE-ConnectionGUID: G6SfFnCkQhiZOH+TOBuPjQ==
X-CSE-MsgGUID: Dt6bscB2Qc+qF8rb+oljrA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,205,1719903600"; d="scan'208";a="65394957"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Sep 2024 09:55:50 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 5 Sep 2024 09:55:49 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 5 Sep 2024 09:55:49 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.47) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 5 Sep 2024 09:55:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SxuXIB26wQUCzPtDg1uqOsZb+ybKi24GAG8tPIVKl5wGoXL5pAz34bm1v5vBmpYbSs749wIoC9vz+x69jVXgxYn8S+WTak43gKe/arBa4MURwh/TV0Ouc2GyFct4xE4dQGrlCU9O80doCZmjnSZWaCYQpdU60Hh034DBZObU6v4bpL3ODoIqclHYEYrPIQJEIoDotaKumtMqpuIceMnPclxaJpVUyv8fTsQrIhkrj5pUBf5DZXt1krWwa57OmOvyuUWNgtqbdS6jY0J3qeCEdfw+Tlr9PbNEK+gKmn3hZVwGy5+FiHJd45Swg4HXg+V9ej7UaZNe3nzJTx08wkhILg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=A35hk6ux3HlI0u4Vt46BCnMk/lAjzWEciL9eg3ZTxnc=;
 b=F+CWJW4TVXA8p9ll4YbkLs31Y8lvhB0ALk53MTs6KcdXARSuRm/Ob2egigmPB8U09zczF/uacZHxqCahZC6W97IxIUbtwZvqORHd5YAP5ocjWw17pjQkAIi2yDxx662pHhCj6CX9oRyJCMr0WFvgU03LD24bFMqsYJPXh3yQ88TTwXlWQxs/ATy/GTmWHV0TPz5ZA2nYYtJ8mT9tQG3P3el4CHxA3rx/yumglcgxdDEO9zCxhg7Lg07KHC2v2+prw40N3pKoNaeEqzpxrnIXCVZh82YYgNhKXn0/BLyQNsYHQ9kAqSQWMn8aU7iZMMbAAGSGEXmvDfk8kbJ/7XaAnA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by CH3PR11MB8315.namprd11.prod.outlook.com (2603:10b6:610:17e::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.26; Thu, 5 Sep
 2024 16:55:17 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7918.024; Thu, 5 Sep 2024
 16:55:17 +0000
Date: Thu, 5 Sep 2024 12:55:13 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH v2] drm/i915/display: add intel_display_snapshot
 abstraction
Message-ID: <ZtnicSOKDQsOi0E5@intel.com>
References: <f2cc41111504e062c3ecb287daee6967078b73cc.1725372032.git.jani.nikula@intel.com>
 <20240904141917.3875771-1-jani.nikula@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240904141917.3875771-1-jani.nikula@intel.com>
X-ClientProxiedBy: MW4PR03CA0341.namprd03.prod.outlook.com
 (2603:10b6:303:dc::16) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|CH3PR11MB8315:EE_
X-MS-Office365-Filtering-Correlation-Id: 7b2bed0c-66a8-465c-ff7a-08dccdcb84da
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?c22xrby8Jq10ItqbBbTnZwez/VLnxIL3zDEL2iODktuC0JRw7Plj4g4fIT?=
 =?iso-8859-1?Q?hZI96yyaw76UU2Oq98rbGqmYOVyZJRmq6uCCw0SNsFnkZNTmsb2CcahuO9?=
 =?iso-8859-1?Q?ujTtlZ2M8eFINOpAwWCEHpvv3708osVo4iuwy3ry9ULeyvAqIqy1ykKYBq?=
 =?iso-8859-1?Q?0MhfYWWcBApj87TqC+vlXRAPryuO3N3zxEtIC/ZM9zGKf43T96x6igCMhK?=
 =?iso-8859-1?Q?tZ11d4ENYiEvelKWdMDl95cmSg7+oKu/lKfLwccZUR9Kwk0bVOzhbdYKVJ?=
 =?iso-8859-1?Q?1/7434cFpM2EAbgkrfDrCsvkT56+BUs0u2G9TO/7RnKvJefPP/5jmWbAR0?=
 =?iso-8859-1?Q?oKvo6HLhZJW22xY+LB0+/L0S9pXcsnGvD21qNkfDEAwSHHy3yDsz0wXuV6?=
 =?iso-8859-1?Q?IRCtouhqzIBBanIj92fazhB1NFGEWVXe2GGMU4y3ajgJV8HqrjjC6Rgxqi?=
 =?iso-8859-1?Q?Ic+ueJEojditX8Q2ch2kgPGdU6ZcIVG/sMdhvG8dWcvP7GbHVNZrSuVq4D?=
 =?iso-8859-1?Q?5r6UglcLz+Szj9ITiyGAX/VYJ2JorXwcKgtAqZS7cockZWik2FH/Z1n+Z/?=
 =?iso-8859-1?Q?pziQkAQ9e2zRQHd2ICQQ9b7qZ6EoGHnBATmm09yhfHOcFjj/orCpc+dUK5?=
 =?iso-8859-1?Q?2GzOm2c3eO5MFSlzULmnBRLQ4CZ3QS8d8bVNCQiPl0JDXBkUdlr4bd9MwO?=
 =?iso-8859-1?Q?XCHLO9UcZ4V7Vr4+oaRv+ybn+I8u3gZhtdEGRlCfdNJ7W+hhM06F8VbI6J?=
 =?iso-8859-1?Q?HQHpes3MO0n11ZYTB2mnitRh9brs61esP01PsIQWZ02ggTroH+nQQyQbGk?=
 =?iso-8859-1?Q?bqIgJ1olWSvxvcvIo+7BzN5pxxCt/09rLGCV+8egC5omscEMW0iQDcDfs3?=
 =?iso-8859-1?Q?VCRmcRG7k0H49q8nJjjKC/g1gPrVux96kdSUeuXJy3vH5Vh0pwrTIGU8jA?=
 =?iso-8859-1?Q?T+ThyzRJRUrSi7VS543U0I2ahZbGMaR/EN8zto9YeYZW3WI3b04wH5Ppoj?=
 =?iso-8859-1?Q?SL5XJKNIob2rmGZPEjgD4TCvL8HsGhYwgURt1I+S5AIRoke5oIXoRH87a7?=
 =?iso-8859-1?Q?FtLjMPpNKB05FeaIOidPaMW6lC1TLyg/C5ml1Raj+kGlquOZ/e5BDHNldS?=
 =?iso-8859-1?Q?vJi+dpCSwPkT0Sj53bpe/9oBp4v3/KGqrEOF/qmXC+vO7JbRTTUAjblpKk?=
 =?iso-8859-1?Q?IlBO97kfnqLYEilUoAY5outzvFSZ33awJBBlaLcEmfSVMLOAiO6ctAukvL?=
 =?iso-8859-1?Q?5IAoiC7Kj1TzjnMiQ/j2q1QyrjxRughqFlQu9YElo73woovNecevE8VnIq?=
 =?iso-8859-1?Q?TYV09WCa87A2JH1o5PguEYaaW8t/eYL1zUP8bmMfKIYAw1WJhj/Q3HhpBl?=
 =?iso-8859-1?Q?9Klfx7Zo0Rjf6JzZEhB/Ks1E7gCBX1PQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?uHnluUb37GALJm4svBT9U6kUja4RMpxIxF/wOZvpojtZ2hmRJR7yq05rWA?=
 =?iso-8859-1?Q?knpMss/z/dLvjITVkjhgud2wmJ6Wi4hhv8JtNGBpEpwCCzSGFiZaMVOXIe?=
 =?iso-8859-1?Q?5xk2PsDA4mAyVuX61x7kTaTT+E6vliQnWaC8gZqFi1ZZEOGPXXZX7NJfxR?=
 =?iso-8859-1?Q?bkx8ZJ/uQlrRb83ZClaO+QrO8ISO1fSsMKF3NFO42odW4hTCdhCGbqPYM6?=
 =?iso-8859-1?Q?MF+yz0bEeeKEy7ZvVPB/XXCFMViKZF8QRL5T30rphchlvIX0PFb1JOvG8I?=
 =?iso-8859-1?Q?U217MoaTDghYe0KfE9TBe7hfnGNpNvW5UZUQ7gMxqiYx5TNZMOubTcMrdx?=
 =?iso-8859-1?Q?euuweGajzpdKYF+h4OhSnZE9ip5hwg+3KwBzn35iKE+v6Y8jqDNqdOurbY?=
 =?iso-8859-1?Q?+CLLthySz2Zn6Yjcdg3EK8vfnVhDufiHYb51pfB6aAES75tRDMHId9enlU?=
 =?iso-8859-1?Q?swfTvdsL+weNpVVXnj2WAVabWPYJNJOunGOqsOLrVPiJLtsXx6zHAWviJx?=
 =?iso-8859-1?Q?pCxP92hifBH3m9r38jEvSsajE6hH1wNcxvt7h/39JbN3lKOSfRfd3/DEq6?=
 =?iso-8859-1?Q?U82ngAXrMjw/sanqiMtBJKw/aVwAGVPyswU52MizP76dZRGbm+tn3mkrCG?=
 =?iso-8859-1?Q?LAnahr7ztcIK4CxIWBqvTOo/712RTEcAKcsPrV06yvjCxrVFpkowD3ojAt?=
 =?iso-8859-1?Q?4KekvJ0a+ce0phMQA0wkePbP3Guvdrj1Y3Ei12bFVb5NaHJgu4iLP9bMpJ?=
 =?iso-8859-1?Q?CGtOKO+MEpEf7wmBMblR8v1mmMYgXWHDpFs/JGA8pfMokUinXe03vC9HOv?=
 =?iso-8859-1?Q?xdW3lUfmJOV8jtksGuUM7dG2MeMyiv/KbWYe6/FlvpyCvIJntGuaWS0fYt?=
 =?iso-8859-1?Q?HPc0kfZtUQNlrC56IBU0KK6U/meGdUxoVga8DOaKnPWgMg+cSueIDOept/?=
 =?iso-8859-1?Q?mbbJrEuk18zel4d0j5Fkixs8wwprA3CoZI51sfYeZqMT/pSL84kGPkaezx?=
 =?iso-8859-1?Q?hRTLqt2B9LIwSm4eHvb/yh4JBmTSocaE76vJmz0dc9QIfwO9gV8GkC87J+?=
 =?iso-8859-1?Q?Y9sG5rf4k1/vDaoC1IURAYwOxQd+GMFge+dErsLohbprFZ1PuVppRbpRx3?=
 =?iso-8859-1?Q?xUW7cqatfEtc3P6ihFdE6hcByEpTVGDcqLuzrKQzTV5kJ5IBCx75i3zpjV?=
 =?iso-8859-1?Q?nTZiMHTFIqi/b5Ex/GO3abGqBIHjSfq/08U6JnN+EB70uhJKx+ZhpJAFc5?=
 =?iso-8859-1?Q?dmcGuGJTqmMbLqcjNPBZTZPvQHariMU1zYjjcbmZ86oojAu7lQQfeVKKXz?=
 =?iso-8859-1?Q?goqSIR3ENSX0fzEtXMRtM+2YcQywe5v1AxQzd7Lghwp/Cmip1L7LeCNQzC?=
 =?iso-8859-1?Q?fCxs06yglaDHFG1u/OKjeS24qNQZjUam/ZysQ7J7KmMqmUPNGfuCV+4kF+?=
 =?iso-8859-1?Q?pwse3W8El7jEhT4LbINy6QokWKiQOsXE1s+TcGDkm95m//W+QPq34uFiRl?=
 =?iso-8859-1?Q?qnWGanMeD6kqdisRYt1VnDe7WDo2HvM/bU941qJBhDgQ1kTe9rx79zh1/X?=
 =?iso-8859-1?Q?SAFUmyi53LJYIwUdrJMulRXbJoGPB0fnskIo154NncaKHamqeQ4ueFYIFp?=
 =?iso-8859-1?Q?+7AUoTG4tnl5rx4JuMSC3cBT03x5jlTifvB87fEg2mKsq0KPfsXNhiNA?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7b2bed0c-66a8-465c-ff7a-08dccdcb84da
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Sep 2024 16:55:17.5900 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gqmDpWHuV2RhwECRUywbexrhDqvvFF/OaQX3kip6DUEUb/F84HE2Mn4x0D+QhmdVaM+oRYtacrnwQoXjFRa40Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8315
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

On Wed, Sep 04, 2024 at 05:19:17PM +0300, Jani Nikula wrote:
> The error state capture still handles display info at a too detailed
> level. Start abstracting the whole display snapshot capture and printing
> at a higher level. Move overlay to display snapshot first.
> 
> Use the same nomenclature and style as in xe devcoredump, in preparation
> for perhaps some day bolting the snapshots there as well.
> 
> v2: Fix build for CONFIG_DRM_I915_CAPTURE_ERROR=n (kernel test robot)

It looks like we still have some issue there. Perhaps because of the #if I915?

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/Makefile                 |  1 +
>  .../drm/i915/display/intel_display_snapshot.c | 42 +++++++++++++++++++
>  .../drm/i915/display/intel_display_snapshot.h | 16 +++++++
>  drivers/gpu/drm/i915/display/intel_overlay.c  | 16 ++++---
>  drivers/gpu/drm/i915/display/intel_overlay.h  | 23 ++++++----
>  drivers/gpu/drm/i915/i915_gpu_error.c         | 12 +++---
>  drivers/gpu/drm/i915/i915_gpu_error.h         |  6 +--
>  7 files changed, 92 insertions(+), 24 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_display_snapshot.c
>  create mode 100644 drivers/gpu/drm/i915/display/intel_display_snapshot.h
> 
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index c63fa2133ccb..9fcd9e09bc0b 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -242,6 +242,7 @@ i915-y += \
>  	display/intel_display_power_well.o \
>  	display/intel_display_reset.o \
>  	display/intel_display_rps.o \
> +	display/intel_display_snapshot.o \
>  	display/intel_display_wa.o \
>  	display/intel_dmc.o \
>  	display/intel_dmc_wl.o \
> diff --git a/drivers/gpu/drm/i915/display/intel_display_snapshot.c b/drivers/gpu/drm/i915/display/intel_display_snapshot.c
> new file mode 100644
> index 000000000000..78b019dcd41d
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_display_snapshot.c
> @@ -0,0 +1,42 @@
> +// SPDX-License-Identifier: MIT
> +/* Copyright © 2024 Intel Corporation */
> +
> +#include <linux/slab.h>
> +
> +#include "intel_display_snapshot.h"
> +#include "intel_overlay.h"
> +
> +struct intel_display_snapshot {
> +	struct intel_overlay_snapshot *overlay;
> +};
> +
> +struct intel_display_snapshot *intel_display_snapshot_capture(struct intel_display *display)
> +{
> +	struct intel_display_snapshot *snapshot;
> +
> +	snapshot = kzalloc(sizeof(*snapshot), GFP_ATOMIC);
> +	if (!snapshot)
> +		return NULL;
> +
> +	snapshot->overlay = intel_overlay_snapshot_capture(display);
> +
> +	return snapshot;
> +}
> +
> +void intel_display_snapshot_print(const struct intel_display_snapshot *snapshot,
> +				  struct drm_printer *p)
> +{
> +	if (!snapshot)
> +		return;
> +
> +	intel_overlay_snapshot_print(snapshot->overlay, p);
> +}
> +
> +void intel_display_snapshot_free(struct intel_display_snapshot *snapshot)
> +{
> +	if (!snapshot)
> +		return;
> +
> +	kfree(snapshot->overlay);
> +	kfree(snapshot);
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_display_snapshot.h b/drivers/gpu/drm/i915/display/intel_display_snapshot.h
> new file mode 100644
> index 000000000000..7ed27cdea644
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_display_snapshot.h
> @@ -0,0 +1,16 @@
> +/* SPDX-License-Identifier: MIT */
> +/* Copyright © 2024 Intel Corporation */
> +
> +#ifndef __INTEL_DISPLAY_SNAPSHOT_H__
> +#define __INTEL_DISPLAY_SNAPSHOT_H__
> +
> +struct drm_printer;
> +struct intel_display;
> +struct intel_display_snapshot;
> +
> +struct intel_display_snapshot *intel_display_snapshot_capture(struct intel_display *display);
> +void intel_display_snapshot_print(const struct intel_display_snapshot *snapshot,
> +				  struct drm_printer *p);
> +void intel_display_snapshot_free(struct intel_display_snapshot *snapshot);
> +
> +#endif /* __INTEL_DISPLAY_SNAPSHOT_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/drm/i915/display/intel_overlay.c
> index 06b1122ec13e..b89541458765 100644
> --- a/drivers/gpu/drm/i915/display/intel_overlay.c
> +++ b/drivers/gpu/drm/i915/display/intel_overlay.c
> @@ -1457,18 +1457,19 @@ void intel_overlay_cleanup(struct drm_i915_private *dev_priv)
>  
>  #if IS_ENABLED(CONFIG_DRM_I915_CAPTURE_ERROR)
>  
> -struct intel_overlay_error_state {
> +struct intel_overlay_snapshot {
>  	struct overlay_registers regs;
>  	unsigned long base;
>  	u32 dovsta;
>  	u32 isr;
>  };
>  
> -struct intel_overlay_error_state *
> -intel_overlay_capture_error_state(struct drm_i915_private *dev_priv)
> +struct intel_overlay_snapshot *
> +intel_overlay_snapshot_capture(struct intel_display *display)
>  {
> +	struct drm_i915_private *dev_priv = to_i915(display->drm);
>  	struct intel_overlay *overlay = dev_priv->display.overlay;
> -	struct intel_overlay_error_state *error;
> +	struct intel_overlay_snapshot *error;
>  
>  	if (!overlay || !overlay->active)
>  		return NULL;
> @@ -1487,9 +1488,12 @@ intel_overlay_capture_error_state(struct drm_i915_private *dev_priv)
>  }
>  
>  void
> -intel_overlay_print_error_state(struct drm_printer *p,
> -				struct intel_overlay_error_state *error)
> +intel_overlay_snapshot_print(const struct intel_overlay_snapshot *error,
> +			     struct drm_printer *p)
>  {
> +	if (!error)
> +		return;
> +
>  	drm_printf(p, "Overlay, status: 0x%08x, interrupt: 0x%08x\n",
>  		   error->dovsta, error->isr);
>  	drm_printf(p, "  Register file at 0x%08lx:\n", error->base);
> diff --git a/drivers/gpu/drm/i915/display/intel_overlay.h b/drivers/gpu/drm/i915/display/intel_overlay.h
> index f28a09c062d0..1f8ec83d7edc 100644
> --- a/drivers/gpu/drm/i915/display/intel_overlay.h
> +++ b/drivers/gpu/drm/i915/display/intel_overlay.h
> @@ -10,8 +10,9 @@ struct drm_device;
>  struct drm_file;
>  struct drm_i915_private;
>  struct drm_printer;
> +struct intel_display;
>  struct intel_overlay;
> -struct intel_overlay_error_state;
> +struct intel_overlay_snapshot;
>  
>  #ifdef I915
>  void intel_overlay_setup(struct drm_i915_private *dev_priv);
> @@ -22,10 +23,6 @@ int intel_overlay_put_image_ioctl(struct drm_device *dev, void *data,
>  int intel_overlay_attrs_ioctl(struct drm_device *dev, void *data,
>  			      struct drm_file *file_priv);
>  void intel_overlay_reset(struct drm_i915_private *dev_priv);
> -struct intel_overlay_error_state *
> -intel_overlay_capture_error_state(struct drm_i915_private *dev_priv);
> -void intel_overlay_print_error_state(struct drm_printer *p,
> -				     struct intel_overlay_error_state *error);
>  #else
>  static inline void intel_overlay_setup(struct drm_i915_private *dev_priv)
>  {
> @@ -50,13 +47,21 @@ static inline int intel_overlay_attrs_ioctl(struct drm_device *dev, void *data,
>  static inline void intel_overlay_reset(struct drm_i915_private *dev_priv)
>  {
>  }
> -static inline struct intel_overlay_error_state *
> -intel_overlay_capture_error_state(struct drm_i915_private *dev_priv)
> +#endif
> +
> +#if IS_ENABLED(CONFIG_DRM_I915_CAPTURE_ERROR) && defined(I915)
> +struct intel_overlay_snapshot *
> +intel_overlay_snapshot_capture(struct intel_display *display);
> +void intel_overlay_snapshot_print(const struct intel_overlay_snapshot *error,
> +				  struct drm_printer *p);
> +#else
> +static inline struct intel_overlay_snapshot *
> +intel_overlay_snapshot_capture(struct intel_display *display)
>  {
>  	return NULL;
>  }
> -static inline void intel_overlay_print_error_state(struct drm_printer *p,
> -						   struct intel_overlay_error_state *error)
> +static inline void intel_overlay_snapshot_print(const struct intel_overlay_snapshot *error,
> +						struct drm_printer *p)
>  {
>  }
>  #endif
> diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
> index f23769ccf050..b047b24a90d5 100644
> --- a/drivers/gpu/drm/i915/i915_gpu_error.c
> +++ b/drivers/gpu/drm/i915/i915_gpu_error.c
> @@ -40,8 +40,8 @@
>  #include <drm/drm_cache.h>
>  #include <drm/drm_print.h>
>  
> +#include "display/intel_display_snapshot.h"
>  #include "display/intel_dmc.h"
> -#include "display/intel_overlay.h"
>  
>  #include "gem/i915_gem_context.h"
>  #include "gem/i915_gem_lmem.h"
> @@ -905,11 +905,10 @@ static void __err_print_to_sgl(struct drm_i915_error_state_buf *m,
>  		err_print_gt_info(m, error->gt);
>  	}
>  
> -	if (error->overlay)
> -		intel_overlay_print_error_state(&p, error->overlay);
> -
>  	err_print_capabilities(m, error);
>  	err_print_params(m, &error->params);
> +
> +	intel_display_snapshot_print(error->display_snapshot, &p);
>  }
>  
>  static int err_print_to_sgl(struct i915_gpu_coredump *error)
> @@ -1077,7 +1076,7 @@ void __i915_gpu_coredump_free(struct kref *error_ref)
>  		cleanup_gt(gt);
>  	}
>  
> -	kfree(error->overlay);
> +	intel_display_snapshot_free(error->display_snapshot);
>  
>  	cleanup_params(error);
>  
> @@ -2097,6 +2096,7 @@ static struct i915_gpu_coredump *
>  __i915_gpu_coredump(struct intel_gt *gt, intel_engine_mask_t engine_mask, u32 dump_flags)
>  {
>  	struct drm_i915_private *i915 = gt->i915;
> +	struct intel_display *display = &i915->display;
>  	struct i915_gpu_coredump *error;
>  
>  	/* Check if GPU capture has been disabled */
> @@ -2138,7 +2138,7 @@ __i915_gpu_coredump(struct intel_gt *gt, intel_engine_mask_t engine_mask, u32 du
>  		error->simulated |= error->gt->simulated;
>  	}
>  
> -	error->overlay = intel_overlay_capture_error_state(i915);
> +	error->display_snapshot = intel_display_snapshot_capture(display);
>  
>  	return error;
>  }
> diff --git a/drivers/gpu/drm/i915/i915_gpu_error.h b/drivers/gpu/drm/i915/i915_gpu_error.h
> index 7c255bb1c319..1a11942d7800 100644
> --- a/drivers/gpu/drm/i915/i915_gpu_error.h
> +++ b/drivers/gpu/drm/i915/i915_gpu_error.h
> @@ -31,7 +31,7 @@
>  struct drm_i915_private;
>  struct i915_vma_compress;
>  struct intel_engine_capture_vma;
> -struct intel_overlay_error_state;
> +struct intel_display_snapshot;
>  
>  struct i915_vma_coredump {
>  	struct i915_vma_coredump *next;
> @@ -218,9 +218,9 @@ struct i915_gpu_coredump {
>  	struct i915_params params;
>  	struct intel_display_params display_params;
>  
> -	struct intel_overlay_error_state *overlay;
> -
>  	struct scatterlist *sgl, *fit;
> +
> +	struct intel_display_snapshot *display_snapshot;
>  };
>  
>  struct i915_gpu_error {
> -- 
> 2.39.2
> 
