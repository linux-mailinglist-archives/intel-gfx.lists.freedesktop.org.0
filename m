Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88C9F797D9A
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Sep 2023 22:52:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A6B410E09F;
	Thu,  7 Sep 2023 20:52:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6EEFE10E09F;
 Thu,  7 Sep 2023 20:52:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694119964; x=1725655964;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=W4hc+knn9lKB3wFOKHCp2egJtqO24OGnAD+rESIINDo=;
 b=AdtthuwGNjze72R1Mxqf/ODKsFhjq+IhEuVkOy5OHP7Pb7WMdcVUkIEe
 NMoLdnAwvAXvp4frO2N0cVgw8kL2KnuGxnwQN9wAW2a45mUu7GCotAEsZ
 EfmDPwWQgN9YETRIBwUKogPji8Iq99lkoxZjticitX8d4qGTxkMEg0Xa6
 VQACl0dPxUQ13Xnf7shxeZyd+VZLq16Pqs1s67P3yP27SRUOSDeyR8r8e
 DHIFlmVthetyn9goWVVo6AEBeT98y8D4NtCCyukeUSzGljasXjVfP6V1W
 SzVKVSaFkUjRfhzDxM2v0XpE3XilHzSItIRhN+p5/tENK4HesTur5N9FE g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="357786468"
X-IronPort-AV: E=Sophos;i="6.02,236,1688454000"; d="scan'208";a="357786468"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2023 13:52:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="742175558"
X-IronPort-AV: E=Sophos;i="6.02,236,1688454000"; d="scan'208";a="742175558"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Sep 2023 13:52:40 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 7 Sep 2023 13:52:39 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 7 Sep 2023 13:52:39 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 7 Sep 2023 13:52:39 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.46) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 7 Sep 2023 13:52:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TCb+dyrpMyt0guOxaGgdbCMAZ4CIe7EtHnFI867JDS7sktVfNaogyaGqGi7gpgqjCTS8w8yrAJY5nT1xSbQ0WSWBut/niDF5NPosbRJdkSjdUxHghZO02bX5FiDjPI/XaICB4WGg9borcJPDYyLXOYbyjgfPcoGMpe2eyTDZdMlymFUPu8IPH9P2n085r1mwX6izQk5j5U6n4PIj2zUXAA52izHPHMPVTJLkTMmimAfc06TxPnHCTiKXn/RqjkQ1vfmj6suVh3DCO1s1IDBe+W8nCYx7SEkH4QtjHTCyzmBdDp1eQvd/w3oiJdui6LhftM4bwCMhrf9noDgJV59Cuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=F8DBlvHt2PmhdAmOMRp1xQQyCR8nwt54s0rbzyJROVY=;
 b=eY78iEXUx0fGSOJhs5jlHzjanCtTQKwZaSVcQACq3cOEr9Fet939Xtt/V5aSsEw/nY6KaFqeNj5V3dEiVT79Rw7RBJrWG2EPTiB8MrklNH2c9eNEQksg45KRu8zZeYEZv1dk2Y7mzasR7+njQp2sRnm7r09+EF7g7WACS5NlGrISunE98UMsHuO5U+asCAkfh50MvPRFio9GKGbt87mwnCRBKBB72Fpknq5LJtRXnzVvKcCrh6A0Dyw+7DOYDX8zVM+Go9Vb5eQXwW6LOBtRP9swlmxwnE/TE1VStTUw0F0EkByP9UWP60KyHnRzczWC9QY98Pu7oH2M6sSZM96NVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 CY8PR11MB6892.namprd11.prod.outlook.com (2603:10b6:930:5b::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6768.30; Thu, 7 Sep 2023 20:52:34 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66%4]) with mapi id 15.20.6745.035; Thu, 7 Sep 2023
 20:52:33 +0000
Date: Thu, 7 Sep 2023 13:52:30 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20230907205230.GO2706891@mdroper-desk1.amr.corp.intel.com>
References: <20230907153757.2249452-1-lucas.demarchi@intel.com>
 <20230907153757.2249452-21-lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230907153757.2249452-21-lucas.demarchi@intel.com>
X-ClientProxiedBy: SJ0PR13CA0052.namprd13.prod.outlook.com
 (2603:10b6:a03:2c2::27) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|CY8PR11MB6892:EE_
X-MS-Office365-Filtering-Correlation-Id: ad7120a5-eaef-4466-4458-08dbafe45c08
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: rYsDqYXhF19QUQxsTUQ17l2S3rEFgg2MrUL1Bsynq8Z3V0/elQwqPbhQPSS9xOiNTkvJGnQF0JexXDbyOjyN6B6xofqhtLPjY7AcsWc2s06WuL8l2WryaJ7qT5uHPxGecgLq/RyxQUu2WUeJPQrIqymCHUnbJ3NZrQVoTcmJMTazoOVROZSGurp/HvOvhyULssLrd+kqsc8kFw2yl0vkTKD8HVLkgRFl/eefOSDshT93y7vzFvfIJAtn/O8HYMqh6Qs8yfdW8WxJ+QMbAJtU1UkMHqZz3ezNVAEtTJtRgmqsyjyV2Md1jTACFPKVTXBcSvnYKQPJtAU0thQNWtqgPMweTvr0Gr8XnqIVSgKgzS+r0NklEKUBo2/iZi7EvRK63VnpfQ8mEPPh9TpasUm6aHgo+HNTakmkMffHfA9UUNPSVbtZV1GKeb1d7rwXymFj2FIFiz1kaJZYnmfT0ffqI2i0woe0PVmu14gPRfvEjpmSJ9pUDS5wppReg2zHhdNbagLGf8a2wtlHxOAtBDB/0coPklgGTXPEyOgIt1WxlICbLwyGcQPYVaADNqHCQCxg
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(396003)(39860400002)(376002)(366004)(346002)(451199024)(186009)(1800799009)(5660300002)(450100002)(6862004)(8936002)(8676002)(4326008)(6486002)(6506007)(6636002)(316002)(66476007)(66946007)(66556008)(41300700001)(2906002)(478600001)(6512007)(1076003)(26005)(83380400001)(82960400001)(38100700002)(86362001)(33656002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?hkjqdIrgau1+hVa9ZWSriVSOBDRKOTMcT/Va43wKrOV2eXRzEPu3fg5gkQTv?=
 =?us-ascii?Q?grHUlt0W5wvZP09kSNdXIYkFcQhJFg3DH7SYb1lq1FrTDCo4klg2jjE9zXY0?=
 =?us-ascii?Q?5AwcVkA1Wv+JdJtMof5jDXDF0CHntzE9ADbU5tIcmI+/FbhEmHoykCiFA9aj?=
 =?us-ascii?Q?DmAEYkM/EEWf0vCSwUiS4rauSMg8CsDmdrFRM6yIq8pwqU2ZPMJ9kY3FUJzk?=
 =?us-ascii?Q?uvP2pHOvlEk3Hs+9ZE5G31EbbT7yxBVVNd6lNEBMYfG6kIAxsQXosOWCknVY?=
 =?us-ascii?Q?LEuoz0g4wUa3ClvjDgRFVPEqTrFxQ5JsW3gCtLwQKElipX/jZsbMWVyy8cHG?=
 =?us-ascii?Q?Tt6Ju9fU6hfJrKvRizh3Fl4gVsabq8JSyp743VO82brLNTpIrh6/hI7mAB3u?=
 =?us-ascii?Q?3xelX9aHflxGJbXMvTC7BlHn2HVFXEnMuKhpjJ3fm7PJOfHBNjxHo8XJgcL0?=
 =?us-ascii?Q?nJPeKZEPSNOTkPaFKmW8eHSiraZu24yx7Fz9qTk076XHpYh4iltvwj28AZyn?=
 =?us-ascii?Q?5cNQhqEXL+d9Ulc8v5NR/RUFN4DXjq1tzG2dPYHOwC3YNqCJp9JOYApLQCkV?=
 =?us-ascii?Q?xXM9eDVJMKll9hUtw50YMxfXJUhAyoAX2S4eRKHZY8eR7Dh0lUTPVUACofgo?=
 =?us-ascii?Q?dhS6MAsEAHN/IkfbM8Z9b8ZclfN2wq1dZnWd/UXR2WIYYdO9U4lLChCJ80y5?=
 =?us-ascii?Q?+gDfzkVGAfvgzdYbZ7l/Jl6fcjErEXXs8JUJcswZMI62suEwmvit9rxcyiZB?=
 =?us-ascii?Q?odK75cgRrxO1bJh3pCUnMLTAXGqW5LBIYeQIB0zO6mxqj2gpw+uwg9Bn5obv?=
 =?us-ascii?Q?SM3u7vw93dBfaMW7ARFCxsUBi7UnjaMbdBfBNAJ6oqCaZcWky8AypI46xWE+?=
 =?us-ascii?Q?GoS3a8wyYY+uc4jpQzs77tqQ1KynXj7nx5YWwXzbSyM8hhwJweOAIydGiEZ9?=
 =?us-ascii?Q?pm2x6FLEZ1MwO5eV0TKENAaskeQWnvy+XeNoetY9atY510AQgvSuZPzijfpm?=
 =?us-ascii?Q?CHVN+XdlXCJ5EQIAd+EHaMDx9VEjnm1JAiaDpDybYeDR89GzQrfXcx9VnMEV?=
 =?us-ascii?Q?BfzBwONuwnsES10q1evGyTgNtnQKU5QXtVxfhCJcTIcOfTosBmQ7YiWd4KT5?=
 =?us-ascii?Q?z/c585MzLgqqg+/uKBlKjOt/10vRlF4C8xjfLX7Cp+E2eeL3KXe/PXvbrLuy?=
 =?us-ascii?Q?SyU9pvgSUVAtm5PsM+vqHTSbWr6qnKPZznqkyR8xCoOuIjREoPGdQguGfBa9?=
 =?us-ascii?Q?+ObvSfmv4AIIHOiioK0q1Nle7RC3Fbr9mvN5kqNWj1a7mmgw152zq4oZTcd0?=
 =?us-ascii?Q?GulYDN5rAqrPmojtajV6M+P46SOmRUjPKSMRBxuBW0frx9qYCwG7q9MxwlC8?=
 =?us-ascii?Q?hzWg+sGJak213AKNBWDpQJBVWN+WWLFIIKd47xdD2IVhxH6zXOy3qcQjD8p9?=
 =?us-ascii?Q?IwL8c4LJnR2I/HNFJ90kV7zZ0Sg7r58HjTv5OjRkg6ap+RdIV8Sm3woNZYUc?=
 =?us-ascii?Q?MKY1hoOv4tqXZ6UlhETQTKb1huXjAgfm4i698YtcQkIIdHaFjw8JyfcwIJrF?=
 =?us-ascii?Q?+wyHjgxMv2WjCYThC2UzQPXF4SvCXRzf9EwCJPGlzpmLIMRSjb6WCCk1Jl3K?=
 =?us-ascii?Q?1Q=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ad7120a5-eaef-4466-4458-08dbafe45c08
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Sep 2023 20:52:33.5787 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: e+ahbnGVlRL/XWjdV+xp4Xcjl931pWE3U6Nb7SsujAX9V6Pla2jj8uBLB8nuNlC17a4OjBF84KiYMjp6HEG9mK+EFkoqnQ34lvX/jdEBKg4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6892
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 20/27] drm/i915/xe2lpd: Extend
 Wa_15010685871
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
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Sep 07, 2023 at 08:37:50AM -0700, Lucas De Marchi wrote:
> Xe2_LPD also needs workaround 15010685871. While adding the new display
> version, also re-order the condition to follow the convention of new
> version first.
> 
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index ad5251ba6fe1..cfd01050f7f1 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -1841,9 +1841,10 @@ static bool cdclk_compute_crawl_and_squash_midpoint(struct drm_i915_private *i91
>  
>  static bool pll_enable_wa_needed(struct drm_i915_private *dev_priv)
>  {
> -	return ((IS_DG2(dev_priv) || DISPLAY_VER_FULL(dev_priv) == IP_VER(14, 0)) &&
> -		dev_priv->display.cdclk.hw.vco > 0 &&
> -		HAS_CDCLK_SQUASH(dev_priv));
> +	return (DISPLAY_VER_FULL(dev_priv) == IP_VER(20, 0) ||
> +		DISPLAY_VER_FULL(dev_priv) == IP_VER(14, 0) ||
> +		IS_DG2(dev_priv)) && dev_priv->display.cdclk.hw.vco > 0 &&
> +		HAS_CDCLK_SQUASH(dev_priv);

Since this workaround seems to be needed on every squashing platform
from version 13 to version 20, we could probably even simplify down to

   IS_DISPLAY_IP_RANGE(dev_priv, IP_VER(13, 0), IP_VER(20, 0)) && ...

The only risk would be if some refresh platform shows up in the future
in the middle of that range in the future and doesn't need the
workaround, but I'm not sure how likely that is at this point.

That IP range would also technically capture ADL-P (version 13.0), but
since the workaround is also conditional on HAS_CDCLK_SQUASH, it will be
filtered out by that check.  If you decide to keep the three platform/IP
checks separate, then you can instead drop the HAS_CDCLK_SQUASH part of
the condition since all affected platforms have squashing support (which
is what the workaround is reprogramming).

Up to you as to whether you'd rather consolidate the range or drop the
redundant HAS_CDCLK_SQUASH condition, but either way,

        Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

>  }
>  
>  static void _bxt_set_cdclk(struct drm_i915_private *dev_priv,
> -- 
> 2.40.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
