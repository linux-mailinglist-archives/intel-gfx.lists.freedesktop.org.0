Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6901B695EED
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Feb 2023 10:25:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82F6410E840;
	Tue, 14 Feb 2023 09:25:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0542D10E0C1
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Feb 2023 09:25:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676366709; x=1707902709;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=Vrcq2SQ3Qms7S4JouhXs8ZSV2k1aqD6Bpbba4TvBROQ=;
 b=CgqZfMJWsIoJP7XnzY/a3xtayszSGFa/YOqpkejYW8nLyp5qAlc2tEgH
 zBm8lfFD4IuIdd9MuWA1IqoZdEKTCL+Z1mtX+EM3x8b6U0Q744MeaqCGm
 I6maC/oOABGCWU67gvndN0hofdVDhye4mvR9V/U91xVhG0XYQ4770oSmu
 NO/NsfA4uu58T99j9NPXHGkA2EmuLFdKxH2S+Hq68sOkeal0hvj//AqRM
 psiUUHDCzoYa78WgV/E+ITo/rGnGNOjlvhtUhbPoUVyIxx+xBGe/c8WJI
 vWk3tMAZyV6xHOm670rqCsRgf4qSt+JKaDzRRG7r2Oq1WEJoW00qFnOs5 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="314762476"
X-IronPort-AV: E=Sophos;i="5.97,296,1669104000"; d="scan'208";a="314762476"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2023 01:25:08 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="843099428"
X-IronPort-AV: E=Sophos;i="5.97,296,1669104000"; d="scan'208";a="843099428"
Received: from skalyan-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.52.13])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2023 01:25:07 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20230208114300.3123934-3-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230208114300.3123934-1-imre.deak@intel.com>
 <20230208114300.3123934-3-imre.deak@intel.com>
Date: Tue, 14 Feb 2023 11:25:04 +0200
Message-ID: <87h6votx8v.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v2 2/4] drm/i915: Move display power
 initialization during driver probing later
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

On Wed, 08 Feb 2023, Imre Deak <imre.deak@intel.com> wrote:
> Determining whether the display engine is present on a platform happens
> only in intel_device_info_runtime_init(). Initializing the display power
> functionality depends on this condition, so move
> intel_power_domains_init() later after the runtime init function has
> been called.
>
> The next patch fixing platforms without display, depends on this patch.
>

It's pretty hard to review we aren't using any of the power domain stuff
before the intel_power_domains_init() call. What happens if we do?

I approve of the change, but I can't in good faith claim I checked this.

Acked-by: Jani Nikula <jani.nikula@intel.com>


> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 5 +++++
>  drivers/gpu/drm/i915/i915_driver.c           | 7 -------
>  2 files changed, 5 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 166662ade593c..b3e7ed3866cde 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -8634,6 +8634,10 @@ int intel_modeset_init_noirq(struct drm_i915_private *i915)
>  		goto cleanup_bios;
>  
>  	/* FIXME: completely on the wrong abstraction layer */
> +	ret = intel_power_domains_init(i915);
> +	if (ret < 0)
> +		goto cleanup_vga;
> +
>  	intel_power_domains_init_hw(i915, false);
>  
>  	if (!HAS_DISPLAY(i915))
> @@ -8676,6 +8680,7 @@ int intel_modeset_init_noirq(struct drm_i915_private *i915)
>  cleanup_vga_client_pw_domain_dmc:
>  	intel_dmc_ucode_fini(i915);
>  	intel_power_domains_driver_remove(i915);
> +cleanup_vga:
>  	intel_vga_unregister(i915);
>  cleanup_bios:
>  	intel_bios_driver_remove(i915);
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index 13bf4fe52f9fe..fe2870a6ae631 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -251,9 +251,6 @@ static int i915_driver_early_probe(struct drm_i915_private *dev_priv)
>  	intel_detect_pch(dev_priv);
>  
>  	intel_pm_setup(dev_priv);
> -	ret = intel_power_domains_init(dev_priv);
> -	if (ret < 0)
> -		goto err_gem;
>  	intel_irq_init(dev_priv);
>  	intel_init_display_hooks(dev_priv);
>  	intel_init_clock_gating_hooks(dev_priv);
> @@ -262,10 +259,6 @@ static int i915_driver_early_probe(struct drm_i915_private *dev_priv)
>  
>  	return 0;
>  
> -err_gem:
> -	i915_gem_cleanup_early(dev_priv);
> -	intel_gt_driver_late_release_all(dev_priv);
> -	i915_drm_clients_fini(&dev_priv->clients);
>  err_rootgt:
>  	intel_region_ttm_device_fini(dev_priv);
>  err_ttm:

-- 
Jani Nikula, Intel Open Source Graphics Center
