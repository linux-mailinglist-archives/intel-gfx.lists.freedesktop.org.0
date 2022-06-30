Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B99BF56138C
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jun 2022 09:47:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A8BD112A00;
	Thu, 30 Jun 2022 07:47:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF814112A00
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Jun 2022 07:47:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656575265; x=1688111265;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=8K/sA0ZG2AZbGsTLf7Y6aGnecv/EjaxRzpqINFHe8mM=;
 b=KHeszZVZxslT3DcPTrNZI3VtV1tZ8YFWg3ZyvrFDJWfXVa99m1EQtoui
 l+dNQCi0OIvzdSqhABAG1OHgVGf1bID1K2c5qKb1kp3LsuMpGhlcmDYua
 2MDV+sTFjt4EvRVbIdgB16LSTFyuOVKl/beVK/tyKTXD2YJDysPLT/xp8
 Oz1Rw02Rk+TvSYLKl2x9gRpVBDWyss8AJOLkmBj8yYy6cvtHZLyURina0
 EeO9HB0vBHtkcjTJrUkL0y/6TxdHBw/Zo52UtM8p5xzeacfDKLRt8gqXv
 qpcD/RQsKXwj+IMS99TXRzdSYWJDBOQzojALyaZ1hVBCGJEzMxE9tMhIR g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10393"; a="343964208"
X-IronPort-AV: E=Sophos;i="5.92,233,1650956400"; d="scan'208";a="343964208"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2022 00:46:21 -0700
X-IronPort-AV: E=Sophos;i="5.92,233,1650956400"; d="scan'208";a="647779287"
Received: from fdugast-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.252.39.70])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2022 00:46:18 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20220630070607.858766-1-arun.r.murthy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220630070607.858766-1-arun.r.murthy@intel.com>
Date: Thu, 30 Jun 2022 10:46:16 +0300
Message-ID: <87k08ypp9z.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCHv2] drm/i915: free crtc on driver remove
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

On Thu, 30 Jun 2022, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> intel_crtc is being allocated as part of intel_modeset_init_nogem
> and not freed as part of driver remove. This will lead to memory
> leak. Hence free up the allocated crtc on driver remove as part of
> intel_modeset_driver_remove_nogem.

No, there's no leak and this is not needed.

See drm_mode_config_cleanup() calling crtc->funcs->destroy() on each
crtc.


BR,
Jani.

>
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_crtc.c    | 2 +-
>  drivers/gpu/drm/i915/display/intel_crtc.h    | 1 +
>  drivers/gpu/drm/i915/display/intel_display.c | 6 ++++++
>  3 files changed, 8 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
> index 4442aa355f86..c90b2854c772 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
> @@ -193,7 +193,7 @@ static struct intel_crtc *intel_crtc_alloc(void)
>  	return crtc;
>  }
>  
> -static void intel_crtc_free(struct intel_crtc *crtc)
> +void intel_crtc_free(struct intel_crtc *crtc)
>  {
>  	intel_crtc_destroy_state(&crtc->base, crtc->base.state);
>  	kfree(crtc);
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc.h b/drivers/gpu/drm/i915/display/intel_crtc.h
> index 73077137fb99..d20200a2c33b 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc.h
> +++ b/drivers/gpu/drm/i915/display/intel_crtc.h
> @@ -35,5 +35,6 @@ struct intel_crtc *intel_crtc_for_pipe(struct drm_i915_private *i915,
>  void intel_wait_for_vblank_if_active(struct drm_i915_private *i915,
>  				     enum pipe pipe);
>  void intel_crtc_wait_for_next_vblank(struct intel_crtc *crtc);
> +void intel_crtc_free(struct intel_crtc *crtc);
>  
>  #endif
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index a0f84cbe974f..33e29455fe56 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -9046,6 +9046,8 @@ void intel_modeset_driver_remove_noirq(struct drm_i915_private *i915)
>  /* part #3: call after gem init */
>  void intel_modeset_driver_remove_nogem(struct drm_i915_private *i915)
>  {
> +	struct intel_crtc *crtc;
> +
>  	intel_dmc_ucode_fini(i915);
>  
>  	intel_power_domains_driver_remove(i915);
> @@ -9053,6 +9055,10 @@ void intel_modeset_driver_remove_nogem(struct drm_i915_private *i915)
>  	intel_vga_unregister(i915);
>  
>  	intel_bios_driver_remove(i915);
> +
> +	/* Free the allocated crtc */
> +	for_each_intel_crtc(&i915->drm, crtc)
> +		intel_crtc_free(crtc);
>  }
>  
>  bool intel_modeset_probe_defer(struct pci_dev *pdev)

-- 
Jani Nikula, Intel Open Source Graphics Center
