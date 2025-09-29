Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 678A7BAA962
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Sep 2025 22:16:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 369FF10E4A0;
	Mon, 29 Sep 2025 20:16:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="a7OvnOSO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6915210E4A0;
 Mon, 29 Sep 2025 20:16:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759176992; x=1790712992;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=5ymiAQvEMDQTr/WfznztbS1JuVFUxLQ5EGGFOrv34qA=;
 b=a7OvnOSOVgaJF7WCXftRfnix8ak02ACD/nf+vre/1B1XhcTNXgso1ik3
 imY5Cs+4U9qP78i2FOZLojBVdwApjR0dqe+DM/VHqWpqG3HyxsJ9sXdBj
 nBL5lwH/LW8/kUuTyV+RJ75+Kfj09aJFVKVyH4WNgO9HntlKqOlg4fw2b
 PPC8W4NalDxLbncL29w3+vqwmJYxt7kovESFLaXetdnIURITcOXW9PgyT
 pfI2qaV6/B9OSvlH3bdY1wlxGIhX5xlJq03PcFy58XW4WmHtTKoNfe706
 wQfDQhxepj39nUiIE3UmTDCvlwd0xKSYDaG+xgysDzPZkCBMlneIyHQKB Q==;
X-CSE-ConnectionGUID: vVaVQhUkTAuAFJojvnbZiQ==
X-CSE-MsgGUID: Y87V361NSSuP4C3SWyf6xQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11568"; a="65283125"
X-IronPort-AV: E=Sophos;i="6.18,302,1751266800"; d="scan'208";a="65283125"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2025 13:16:31 -0700
X-CSE-ConnectionGUID: qyjpzMRdQrCJ7z4cIffzSQ==
X-CSE-MsgGUID: yg3mPujjS5a34/uZzEVIuQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,302,1751266800"; d="scan'208";a="179087640"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2025 13:16:31 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 29 Sep 2025 13:16:30 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 29 Sep 2025 13:16:30 -0700
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.38) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 29 Sep 2025 13:16:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WdphBHmhOrx/PAdnSZy0cykD66ciP+irYPFmRfzYzxqwl/6Lj0gyLq38dnm27sVTSViN4T3VJqynFUt6cXBhfX1dgDvy4eO2lzltzJiq8LFBBIBJF4wg5onFiAaTv+eSkwnYHaYvnMwcd0iuT5VxRQeQVHvsF3V9pVTUgCxbGRpBYOrFcavn7j2YBqda/IRPxAteGOWMyoxFN/xwp2UJzBoO2Tz+UUxkoNTt/Vlcm7mb6qf+r6eJzZtmY5B6xmdWSVw491G8d3JjKaLLJguKFedV/mBDoNAxeS++cWkRuZD71GJTy2oWN8UiKW9i18MfJLb+dRicL2anRsDblAwqcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TW5OmC4mfCyEwm2LcbVpacIQUJjpcyfCqGOKQhd8tS0=;
 b=HjzYWG0GpPOEswOA6fgSUBSK6ZBnWWkzidUg9ZxkoxIGQAWf9U232QllkGBNTVHQHIPCunPHgPVIOx9lhdCcZj33F/uXDerMWCvET9VpaGV/4IdBvUmNszbwDRqpPgCszaiL0+1dIsvMCMXTJu7lSBwh3vUjJNn5fzKIsfadWUWRLQ8jLc8ewHCCHXhyp8Q47zkSZCVnWY29Yjp0zdHnQYzOF9m1a8JIZoIRAkzUK6sXpy62IFo3WxA8FasQHS/y9OfmJdU8rIi6B7zlIxb8brGa8vpoHbzGUPbwnxmdUNJwxch0I2lxAmnprvovTcOnD0yddJsT0Xerb2xfpeAmtw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by LV8PR11MB8678.namprd11.prod.outlook.com (2603:10b6:408:20b::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.15; Mon, 29 Sep
 2025 20:16:24 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9160.015; Mon, 29 Sep 2025
 20:16:23 +0000
Date: Mon, 29 Sep 2025 23:16:18 +0300
From: Imre Deak <imre.deak@intel.com>
To: Khaled Almahallawy <khaled.almahallawy@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>, "Jani
 Nikula" <jani.nikula@intel.com>
Subject: Re: [PATCH] drm/i915/display: Extend i915_display_info with Type-C
 port details
Message-ID: <aNrpEmXUdyFoVBj6@ideak-desk>
References: <20250925235153.2091404-1-khaled.almahallawy@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20250925235153.2091404-1-khaled.almahallawy@intel.com>
X-ClientProxiedBy: LO2P265CA0104.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:c::20) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|LV8PR11MB8678:EE_
X-MS-Office365-Filtering-Correlation-Id: 47e74bbe-abfd-456a-60c1-08ddff950fc2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|1800799024|10070799003|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?hJHeZmSVd2x2M7jJgs/XQL1+t/4uiKUNPo8S3BLY7zZSdqg2Ayy+o++lf0FZ?=
 =?us-ascii?Q?RKnUjoAWR+cZiK0MLL1XfuexQLMOY8kKwEMUS8C138s4u9szX66iREyvWBZm?=
 =?us-ascii?Q?nUDbXNpQhtZmHSIdcIIi1BC9lOW7LQUmNgp0PIiGRGinFMZuzBzdzznNQQTm?=
 =?us-ascii?Q?xkDicdEHCBXafFjXqbMlKPc50T4/+Ntt1EWkARqOr+RyLcXTVkqwY3dl8iB2?=
 =?us-ascii?Q?KevRTnK5WWxYP6glvhW6H7sYlULvWxk6MGjGMS4IiyyUqlw2ciSEsyt9HSNE?=
 =?us-ascii?Q?e2QNxWXYd8ltGYDCGXfRdyykoZEmCoHqCiZMS+HASJqG753squ40xo3UeQHs?=
 =?us-ascii?Q?tLXVlY9/PduEt2Xwa8KtZipKPX/ag6xvL7YzIGrkfcAiHaKpmYPLER4p8pij?=
 =?us-ascii?Q?bgnNcQuUEdNqjfdNAgAjsYOM+hMKSzW8PhXYRxQI47RMQ0C0UeuoiGXXFcBe?=
 =?us-ascii?Q?ck1IQaTGMHxgETOJujem62r8QcwqZXVsxQird41F8ss9HQzKNjwVTxUPd3n4?=
 =?us-ascii?Q?gZcZecFyz9MbMz9anrpUZUfBilVy9fn6lQdIS5N8cFUvmWwDSEkizEeP9Asl?=
 =?us-ascii?Q?WTekSa5WMaASySDliahqueg7hR1eGuHIj+EhUbTgWXNYbVeTDA6mOMnxQSRa?=
 =?us-ascii?Q?DI3/omQpTflgGCywhUuvgn9Em+l5RvMgymUfy+Wy3uLMlOvUckItan8aSqw2?=
 =?us-ascii?Q?MllL4BdSMrCK6dzA5Qd9yelEHFPndbZmfQghWVEpaXL/LN826Z3UZplHak9B?=
 =?us-ascii?Q?QY18Oik4ohJtZQE4d7vBiiDC9DNvp4ODwnlDovFMBzVHTOh9QnpBTfnh2rkm?=
 =?us-ascii?Q?nq8sB6DaoO+XZHuL9cFy03oETi7SSVq0I8mVwbWermfKL4TN35684xluiDc9?=
 =?us-ascii?Q?8sD/4iADcxULZE1JEdthiLsDQhChBStlXigQ5raQrK9lz22YkctEn7Z33Uze?=
 =?us-ascii?Q?tgSyrpz0oxWqnBOk6NOr0OTVOsfywMue4GeILE8+zYwnFnkBrxSmEQH3h83R?=
 =?us-ascii?Q?uxKJHlSWiKGv7L3KiFl3hxjq9tBmETmCLwZoW0SdQ+RyR1Y6u+C6+ACNKlCR?=
 =?us-ascii?Q?Ymt1Astl0OOmBEVv6k2i0FZLhB9vyWRSQg6xMUX0s44ssRnlLRg4uZCIZfkk?=
 =?us-ascii?Q?+h2RRzfvCfwp7iZpabH2Ah5LhBrAB6PoqDEK77T9UuUmLNqKUNkvMtwjULVp?=
 =?us-ascii?Q?+8Ir4MUWgUk6bf+ZfVoektqL7BAoq5cxNS4RZVJQ0sGdllYOIB7PjMi05tiq?=
 =?us-ascii?Q?LnD1Zrwo8wTgXLEc68RU/0+nqjNXT1Pj87a1mTHY2P7/bY6IVw3jC0WMTo1Z?=
 =?us-ascii?Q?/N+IMmn0YeU4PqRuIYRsLO2AOhk4nGpAOM9/MoGU9rDxXUw03oOeIcUKuNsT?=
 =?us-ascii?Q?dAa+QgkZbQvY+nB9VWNJNQarTga+4YRCbrTWcGqpNzwPNVBXp4riACT1nYd0?=
 =?us-ascii?Q?219MsR4ZPhrPhvi7nCX+evjS8FX3GB3/?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(10070799003)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?cwkt9F1hZjoYehEh5PARmH4kiHI2h30Jp3+eD/kWUqkhZra+i7mkF/UIII3b?=
 =?us-ascii?Q?ymjQOet224u5z4ohlxDdO8aOyRBquXZbNTrwK4rEEMjZ+GjtKYTQiWoJ+5MF?=
 =?us-ascii?Q?q/b7VlG5qXqgjyuUcWnl6Gqn6J5nq158/TimmN1TDxhQpXrBP+fVuFmtIhN5?=
 =?us-ascii?Q?cyB3Kgz5NAgcBv2iIpXIwgWyNw3iYSxPDKTipRaHVzDj+xF0vLLCc1nYUMWs?=
 =?us-ascii?Q?iXjBSyISzP4kz+mGGYVEOBJ2EiKj8zmP3NsDUSyi2qS5UTzOcILbQXnQYrK+?=
 =?us-ascii?Q?NFKK7Q0gIxk97NAGRvvFaFX0sgBINf838g/+YggYgA/bi+ZlredsR3iTYf9e?=
 =?us-ascii?Q?nzIy645tmoYXd2RGYsOs6t5sP7znnpM8HFiiRvEV9UNFpDxbn1lz/AXoy10q?=
 =?us-ascii?Q?GFcnqri4xZU92SIeXPpl3+tC5E/YcYW8w8RyA5FoVtE0Qrk5BNprOEvCT8Ya?=
 =?us-ascii?Q?u7Fn8Np4Noy6TtBT9xgs1EXXeGAhwLYwbm+a6BQbHMVZ4vTiIMvsuZEpoqVG?=
 =?us-ascii?Q?1Y7fL0XQLTLPACVB57la4NJr0xcmRvvwCa1XxHoARkbtNPuUExjfrzaWub7R?=
 =?us-ascii?Q?1365egYUUdKKsGMFv4gNoqrt52zlH+dukx0RenSxiPUjwRJK4GbQYdnjbVzU?=
 =?us-ascii?Q?WjbmnhD8kyh2JD97NB8o0juAbr4ORxXWKv0d/H/1XwTR9BxBUL4y6NLTrIdW?=
 =?us-ascii?Q?1U4ka7vmMBl9pydP24PyKXPeqTskB43er4rTRg0vIcdPlELOMELAFATFggz8?=
 =?us-ascii?Q?4ExmosutM5sYUkRuXvF5vRWjrmomNfPrpbZstjZTy0UGY1H1vMlj6SfuQDnC?=
 =?us-ascii?Q?1kVzHQzl/mADbsUd0bSnSx5Atum7HgEwWN6KmRwDUuKEY4vADRAoCBR+Av8d?=
 =?us-ascii?Q?eV65jwHjFuq12C0J7n8H7VGSP6zne2QkuzsxWuqnP/lMyhhk2nqxB7kAndZT?=
 =?us-ascii?Q?WuzGek/bLBBuv9G4tMmIm09PmjTC7qL9mLREVVon+gj/x72UZM06dKATr30F?=
 =?us-ascii?Q?gH2wxmQfpqKGQbRnEK3Vy4GeKSLd68WycZlfRbig596BPSsi+yQhz7y9nMFP?=
 =?us-ascii?Q?ivcNiZH4q1+Aj66NlaLIHoYFPjkn0x7K6a5obeYZhHwYWueCv6A1PwZCq6ln?=
 =?us-ascii?Q?NsI/yJhG7i/IGuwn6a28fJYDIrjkcbEvPb/6VplIc2Wi+HUtEzsNPmLUaNWj?=
 =?us-ascii?Q?ZYNvzomn63LC9+0O3tKCVzyxndXrAMrP4oidzp53uqwAyimP/gBVpcYgH+AN?=
 =?us-ascii?Q?R7a+krEpou0kpBNTTa5n0jewhsEafZEN8cmKLEs0/PjMKyAPKJCOr7LqoYQa?=
 =?us-ascii?Q?8PIygsH/6FX0WgfW8TjxnW//BF57eG0wb96h3eJkOAv0I/Lz3snH+6ts4jTA?=
 =?us-ascii?Q?Wofp0tyTnSTibQ2idaZu/NPMQjY3W2iUArcW8izFTcBzwf+mZZzmQ46RO/WQ?=
 =?us-ascii?Q?52Kbv2hcGrYagv7iAtRh3KEp3L5lY4wV6nLzSkpdG4CtI+2dlKOdQU3u5IOX?=
 =?us-ascii?Q?HEIp4L6aEKjJ44O2Okg7JTzHgkYIXxuAp1M+Uhn8K6l9Om68r6EVKcdxXQds?=
 =?us-ascii?Q?BzwTQJrJaSkjPTSchHwrCoEin6y6O8ucQ40Rt70AxTKPztCcuypuGw9y3ffx?=
 =?us-ascii?Q?lyy8pLXjkr0c6sOZ8hOLuFZHIlYoeCdHbzp8llaeiJ36?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 47e74bbe-abfd-456a-60c1-08ddff950fc2
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Sep 2025 20:16:23.8936 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WUrNpHsr3L5GXAfDHcCkLx3sw2e+4Wh/MSlxhHIwxOoRsbPmZFsjiNrA4bNz30oWomdp/W4TP413IuTkzAWeKg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8678
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Sep 25, 2025 at 04:51:53PM -0700, Khaled Almahallawy wrote:
> Expose key Type-C port data in i915_display_info to make it easier to
> understand the port configuration and active mode, especially whether
> the link is in DP-Alt or TBT-Alt, without having to scan kernel logs.
> 
> Tested in DP-Alt, TBT-Alt, SST, and MST.
> 
> Expected output:
> 
> [CONNECTOR:290:DP-2]: status: connected
> 	TC Port: E/TC#2 mode: tbt-alt pin assignment: - max lanes: 4
> 	physical dimensions: 600x340mm
> ...
> [CONNECTOR:263:DP-5]: status: connected
> 	TC Port: G/TC#4 mode: dp-alt pin assignment: C max lanes: 4
> 	physical dimensions: 610x350mm
> 
> Cc: Imre Deak <imre.deak@intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Khaled Almahallawy <khaled.almahallawy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_debugfs.c |  4 ++++
>  drivers/gpu/drm/i915/display/intel_tc.c              | 10 ++++++++++
>  drivers/gpu/drm/i915/display/intel_tc.h              |  3 +++
>  3 files changed, 17 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index 10dddec3796f..6687fc18e1f5 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -47,6 +47,7 @@
>  #include "intel_psr_regs.h"
>  #include "intel_vdsc.h"
>  #include "intel_wm.h"
> +#include "intel_tc.h"
>  
>  static struct intel_display *node_to_intel_display(struct drm_info_node *node)
>  {
> @@ -254,6 +255,9 @@ static void intel_connector_info(struct seq_file *m,
>  	if (connector->status == connector_status_disconnected)
>  		return;
>  
> +	if (intel_encoder_is_tc(intel_attached_encoder(intel_connector)))
> +		intel_tc_info(m, intel_attached_dig_port(intel_connector));
> +
>  	seq_printf(m, "\tphysical dimensions: %dx%dmm\n",
>  		   connector->display_info.width_mm,
>  		   connector->display_info.height_mm);
> diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
> index c4a5601c5107..4cd7ccac28b7 100644
> --- a/drivers/gpu/drm/i915/display/intel_tc.c
> +++ b/drivers/gpu/drm/i915/display/intel_tc.c
> @@ -1703,6 +1703,16 @@ void intel_tc_port_sanitize_mode(struct intel_digital_port *dig_port,
>  	mutex_unlock(&tc->lock);
>  }
>  
> +void intel_tc_info(struct seq_file *m,  struct intel_digital_port *dig_port)
> +{
> +	struct intel_tc_port *tc = to_tc_port(dig_port);
> +
> +	seq_printf(m, "\tTC Port: %s mode: %s pin assignment: %c max lanes: %d\n", tc->port_name,
> +		   tc_port_mode_name(tc->mode),
> +		   pin_assignment_name(tc->pin_assignment),
> +		   tc->max_lane_count);

This also requires tc->lock, could you lock/unlock it around the printf?

> +}
> +
>  /*
>   * The type-C ports are different because even when they are connected, they may
>   * not be available/usable by the graphics driver: see the comment on
> diff --git a/drivers/gpu/drm/i915/display/intel_tc.h b/drivers/gpu/drm/i915/display/intel_tc.h
> index fff8b96e4972..3e983d1cc0b8 100644
> --- a/drivers/gpu/drm/i915/display/intel_tc.h
> +++ b/drivers/gpu/drm/i915/display/intel_tc.h
> @@ -7,6 +7,7 @@
>  #define __INTEL_TC_H__
>  
>  #include <linux/types.h>
> +#include <linux/seq_file.h>
>  
>  struct intel_crtc_state;
>  struct intel_digital_port;
> @@ -113,4 +114,6 @@ void intel_tc_port_cleanup(struct intel_digital_port *dig_port);
>  
>  bool intel_tc_cold_requires_aux_pw(struct intel_digital_port *dig_port);
>  
> +void intel_tc_info(struct seq_file *m,  struct intel_digital_port *dig_port);
> +
>  #endif /* __INTEL_TC_H__ */
> -- 
> 2.43.0
> 
