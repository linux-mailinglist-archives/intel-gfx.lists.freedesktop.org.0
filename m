Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E8B709A9EAB
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2024 11:37:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B0BC10E638;
	Tue, 22 Oct 2024 09:37:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UqRSFYw+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A279B10E638;
 Tue, 22 Oct 2024 09:37:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729589876; x=1761125876;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=xqv1UOzX0BgyglVErG518qzM8lLBf1Kcifa1SH8Ab7I=;
 b=UqRSFYw+6HKWsdctc70rQuWvLr9EEvvz5rnxijLip7AsWfGDSztdlWtL
 ICYgJTq/QO8x5LdBZztFw5kmyw/Ctfga3C2wTu68qjFBK5Wq/EhVo9cZh
 2RRYh3zBuyCfai4nQ0Jfn4gtFaCj6idsYbgNF6+HDorE3OGBf/vzVkKXb
 09ha7RfgkvXOzAGJRch+Ic35ov3aHHzr16Jlx6zq4qD44pIF8McjFO6z9
 2nzq84xbd6arHqmrwCwYIA4VWFY+L6UNyjm8JcDcZ/Rf8pauRRbcJzJoX
 yVeWqkVS9R5KMoQhIWj4ebhnieoPFinqsVeQTulYYjK/7S9vxA4JHh8dr w==;
X-CSE-ConnectionGUID: +M/ggfmISuqAeses/+9cvg==
X-CSE-MsgGUID: Es9Db4ZuTrOCX+0D4hkJlA==
X-IronPort-AV: E=McAfee;i="6700,10204,11232"; a="29002896"
X-IronPort-AV: E=Sophos;i="6.11,222,1725346800"; d="scan'208";a="29002896"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 02:37:56 -0700
X-CSE-ConnectionGUID: u93+a+BUR9u96QE//3k04w==
X-CSE-MsgGUID: OF/HfutpQrG6BHzEP5bGQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,222,1725346800"; d="scan'208";a="79448983"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.4])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 02:37:54 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Luca Coelho <luciano.coelho@intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>
Subject: Re: [PATCH 11/13] drm/i915/dmc_wl: Add and use HAS_DMC_WAKELOCK()
In-Reply-To: <20241021222744.294371-12-gustavo.sousa@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241021222744.294371-1-gustavo.sousa@intel.com>
 <20241021222744.294371-12-gustavo.sousa@intel.com>
Date: Tue, 22 Oct 2024 12:37:51 +0300
Message-ID: <87ttd4v5ow.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Mon, 21 Oct 2024, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> In order to be able to use the DMC wakelock, we also need to know that
> the display hardware has support for DMC, which is a runtime info.
> Define HAS_DMC_WAKELOCK(), which checks for both DMC availability and IP
> version, and use it in place of directly checking the display version.
>
> Since we depend on runtime info, also make sure to call
> intel_dmc_wl_init() only after we have probed the hardware for such info
> (i.e. after intel_display_device_info_runtime_init()).

Non-functional changes combined with functional changes. Please split.

BR,
Jani.

>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_device.h | 1 +
>  drivers/gpu/drm/i915/display/intel_display_driver.c | 2 +-
>  drivers/gpu/drm/i915/display/intel_dmc_wl.c         | 4 ++--
>  3 files changed, 4 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> index 071a36b51f79..5f78fd127fe0 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -128,6 +128,7 @@ enum intel_display_subplatform {
>  #define HAS_DDI(i915)			(DISPLAY_INFO(i915)->has_ddi)
>  #define HAS_DISPLAY(i915)		(DISPLAY_RUNTIME_INFO(i915)->pipe_mask != 0)
>  #define HAS_DMC(i915)			(DISPLAY_RUNTIME_INFO(i915)->has_dmc)
> +#define HAS_DMC_WAKELOCK(i915)		(HAS_DMC(i915) && DISPLAY_VER(i915) >= 20)
>  #define HAS_DOUBLE_BUFFERED_M_N(i915)	(DISPLAY_VER(i915) >= 9 || IS_BROADWELL(i915))
>  #define HAS_DP_MST(i915)		(DISPLAY_INFO(i915)->has_dp_mst)
>  #define HAS_DP20(i915)			(IS_DG2(i915) || DISPLAY_VER(i915) >= 14)
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
> index 673f9b965494..8afaa9cb89d2 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> @@ -200,7 +200,6 @@ void intel_display_driver_early_probe(struct drm_i915_private *i915)
>  	intel_dpll_init_clock_hook(i915);
>  	intel_init_display_hooks(i915);
>  	intel_fdi_init_hook(i915);
> -	intel_dmc_wl_init(&i915->display);
>  }
>  
>  /* part #1: call before irq install */
> @@ -238,6 +237,7 @@ int intel_display_driver_probe_noirq(struct drm_i915_private *i915)
>  		return 0;
>  
>  	intel_dmc_init(display);
> +	intel_dmc_wl_init(display);
>  
>  	i915->display.wq.modeset = alloc_ordered_workqueue("i915_modeset", 0);
>  	i915->display.wq.flip = alloc_workqueue("i915_flip", WQ_HIGHPRI |
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> index 8283b607aac4..f6ec79b0e39d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> @@ -250,7 +250,7 @@ static bool intel_dmc_wl_check_range(struct intel_display *display, u32 address)
>  
>  static bool __intel_dmc_wl_supported(struct intel_display *display)
>  {
> -	if (DISPLAY_VER(display) < 20 ||
> +	if (!HAS_DMC_WAKELOCK(display) ||
>  	    !intel_dmc_has_payload(display) ||
>  	    !display->params.enable_dmc_wl)
>  		return false;
> @@ -263,7 +263,7 @@ void intel_dmc_wl_init(struct intel_display *display)
>  	struct intel_dmc_wl *wl = &display->wl;
>  
>  	/* don't call __intel_dmc_wl_supported(), DMC is not loaded yet */
> -	if (DISPLAY_VER(display) < 20 || !display->params.enable_dmc_wl)
> +	if (!HAS_DMC_WAKELOCK(display) || !display->params.enable_dmc_wl)
>  		return;
>  
>  	INIT_DELAYED_WORK(&wl->work, intel_dmc_wl_work);

-- 
Jani Nikula, Intel
