Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98FFA90C4AC
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2024 10:01:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AC5010E5C1;
	Tue, 18 Jun 2024 08:01:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JQtsntHC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1048F10E5BF;
 Tue, 18 Jun 2024 08:01:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718697690; x=1750233690;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=dttpAGmFLpVwjsLCVBto1iNCcgIRjB+tBkBw07yMrBA=;
 b=JQtsntHCuaFYJoaQze6zDZrtSRRjcm5qfnKcHhl/l7lHxQcjQyMNsRSs
 avm+zsAfrw39XcT+PHMaUJHHX/COMGJqHssFxxnrR2jK3myYACJglgA19
 eGp16UpAtlWRyzb/zsnFdP7HSsXLrf8/YG6cJODHfz6BhsEOQA8P0EywS
 r4JfCdeq3xpajIpMfA6muE335kgbvbkpCOELc5gW+fZDqsYnqP/lRY8Fg
 Fq1npkWAs18+pBLEo3nWgzO6dXF7Wbj+Kwe5kBhFLDnG3BUmVAMNwxSE7
 ibwOypIeEnycWib8Wcsojkh2T7dvn4wSQwzhDXsT0XyM1NfuOOgF0nLcx A==;
X-CSE-ConnectionGUID: HqzOcYT1QN6HUJV4Z5e7FA==
X-CSE-MsgGUID: JrSa9LnVRw2uWDoHHa7Krw==
X-IronPort-AV: E=McAfee;i="6700,10204,11106"; a="26141723"
X-IronPort-AV: E=Sophos;i="6.08,247,1712646000"; d="scan'208";a="26141723"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2024 01:01:23 -0700
X-CSE-ConnectionGUID: 8NsPZtb2SZi9ahlE7RFAbg==
X-CSE-MsgGUID: x/fw5BJoQV6DAqAzVfsGpw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,247,1712646000"; d="scan'208";a="42167507"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.176])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2024 01:01:21 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 1/3] drm/i915: Move encoder suspend/shutdown helpers to
 intel_encoder.c
In-Reply-To: <20240617170356.4000251-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240617170356.4000251-1-imre.deak@intel.com>
Date: Tue, 18 Jun 2024 11:01:18 +0300
Message-ID: <87iky6he7l.fsf@intel.com>
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

On Mon, 17 Jun 2024, Imre Deak <imre.deak@intel.com> wrote:
> Move the encoder suspend/shutdown helpers to intel_encoder.c, this being
> the logical place for encoder functions.
>
> This also allows sharing the above helpers with the xe driver, done in a
> follow-up patch.
>
> While at it rename the functions using the usual intel_encoder prefix
> and in the functions rename the dev_priv parameter to i915.

This is good forward progress, but really i915 should also follow the xe
pattern of only calling a handful of display functions from top level,
instead of direct calls from i915_driver.c to a lot of places.

One nitpick inline that can be fixed while applying, otherwise

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_encoder.c | 44 +++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_encoder.h |  5 ++
>  drivers/gpu/drm/i915/i915_driver.c           | 51 ++------------------
>  3 files changed, 53 insertions(+), 47 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_encoder.c b/drivers/gpu/drm/i915/display/intel_encoder.c
> index dee55f56960fc..8a1dccb893a37 100644
> --- a/drivers/gpu/drm/i915/display/intel_encoder.c
> +++ b/drivers/gpu/drm/i915/display/intel_encoder.c
> @@ -37,3 +37,47 @@ void intel_encoder_link_check_queue_work(struct intel_encoder *encoder, int dela
>  	mod_delayed_work(i915->unordered_wq,
>  			 &encoder->link_check_work, msecs_to_jiffies(delay_ms));
>  }
> +
> +void intel_encoder_suspend_all(struct drm_i915_private *i915)
> +{
> +	struct intel_encoder *encoder;
> +
> +	if (!HAS_DISPLAY(i915))
> +		return;
> +
> +	/*
> +	 * TODO: check and remove holding the modeset locks if none of
> +	 * the encoders depends on this.
> +	 */
> +	drm_modeset_lock_all(&i915->drm);
> +	for_each_intel_encoder(&i915->drm, encoder)
> +		if (encoder->suspend)
> +			encoder->suspend(encoder);
> +	drm_modeset_unlock_all(&i915->drm);
> +
> +	for_each_intel_encoder(&i915->drm, encoder)
> +		if (encoder->suspend_complete)
> +			encoder->suspend_complete(encoder);
> +}
> +
> +void intel_encoder_shutdown_all(struct drm_i915_private *i915)
> +{
> +	struct intel_encoder *encoder;
> +
> +	if (!HAS_DISPLAY(i915))
> +		return;
> +
> +	/*
> +	 * TODO: check and remove holding the modeset locks if none of
> +	 * the encoders depends on this.
> +	 */
> +	drm_modeset_lock_all(&i915->drm);
> +	for_each_intel_encoder(&i915->drm, encoder)
> +		if (encoder->shutdown)
> +			encoder->shutdown(encoder);
> +	drm_modeset_unlock_all(&i915->drm);
> +
> +	for_each_intel_encoder(&i915->drm, encoder)
> +		if (encoder->shutdown_complete)
> +			encoder->shutdown_complete(encoder);
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_encoder.h b/drivers/gpu/drm/i915/display/intel_encoder.h
> index 2cda054e2b152..e6cd74576f78e 100644
> --- a/drivers/gpu/drm/i915/display/intel_encoder.h
> +++ b/drivers/gpu/drm/i915/display/intel_encoder.h
> @@ -6,6 +6,8 @@
>  #ifndef __INTEL_ENCODER_H__
>  #define __INTEL_ENCODER_H__
>  
> +struct drm_i915_private;
> +

Superfluous newline.

>  struct intel_encoder;
>  
>  void intel_encoder_link_check_init(struct intel_encoder *encoder,
> @@ -13,4 +15,7 @@ void intel_encoder_link_check_init(struct intel_encoder *encoder,
>  void intel_encoder_link_check_queue_work(struct intel_encoder *encoder, int delay_ms);
>  void intel_encoder_link_check_flush_work(struct intel_encoder *encoder);
>  
> +void intel_encoder_suspend_all(struct drm_i915_private *i915);
> +void intel_encoder_shutdown_all(struct drm_i915_private *i915);
> +
>  #endif /* __INTEL_ENCODER_H__ */
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index 161b21eff6943..e9e38ed246f66 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -53,6 +53,7 @@
>  #include "display/intel_dmc.h"
>  #include "display/intel_dp.h"
>  #include "display/intel_dpt.h"
> +#include "display/intel_encoder.h"
>  #include "display/intel_fbdev.h"
>  #include "display/intel_hotplug.h"
>  #include "display/intel_overlay.h"
> @@ -933,50 +934,6 @@ static void i915_driver_postclose(struct drm_device *dev, struct drm_file *file)
>  	i915_gem_flush_free_objects(to_i915(dev));
>  }
>  
> -static void intel_suspend_encoders(struct drm_i915_private *dev_priv)
> -{
> -	struct intel_encoder *encoder;
> -
> -	if (!HAS_DISPLAY(dev_priv))
> -		return;
> -
> -	/*
> -	 * TODO: check and remove holding the modeset locks if none of
> -	 * the encoders depends on this.
> -	 */
> -	drm_modeset_lock_all(&dev_priv->drm);
> -	for_each_intel_encoder(&dev_priv->drm, encoder)
> -		if (encoder->suspend)
> -			encoder->suspend(encoder);
> -	drm_modeset_unlock_all(&dev_priv->drm);
> -
> -	for_each_intel_encoder(&dev_priv->drm, encoder)
> -		if (encoder->suspend_complete)
> -			encoder->suspend_complete(encoder);
> -}
> -
> -static void intel_shutdown_encoders(struct drm_i915_private *dev_priv)
> -{
> -	struct intel_encoder *encoder;
> -
> -	if (!HAS_DISPLAY(dev_priv))
> -		return;
> -
> -	/*
> -	 * TODO: check and remove holding the modeset locks if none of
> -	 * the encoders depends on this.
> -	 */
> -	drm_modeset_lock_all(&dev_priv->drm);
> -	for_each_intel_encoder(&dev_priv->drm, encoder)
> -		if (encoder->shutdown)
> -			encoder->shutdown(encoder);
> -	drm_modeset_unlock_all(&dev_priv->drm);
> -
> -	for_each_intel_encoder(&dev_priv->drm, encoder)
> -		if (encoder->shutdown_complete)
> -			encoder->shutdown_complete(encoder);
> -}
> -
>  void i915_driver_shutdown(struct drm_i915_private *i915)
>  {
>  	disable_rpm_wakeref_asserts(&i915->runtime_pm);
> @@ -999,8 +956,8 @@ void i915_driver_shutdown(struct drm_i915_private *i915)
>  	if (HAS_DISPLAY(i915))
>  		intel_display_driver_suspend_access(i915);
>  
> -	intel_suspend_encoders(i915);
> -	intel_shutdown_encoders(i915);
> +	intel_encoder_suspend_all(i915);
> +	intel_encoder_shutdown_all(i915);
>  
>  	intel_dmc_suspend(i915);
>  
> @@ -1083,7 +1040,7 @@ static int i915_drm_suspend(struct drm_device *dev)
>  	if (HAS_DISPLAY(dev_priv))
>  		intel_display_driver_suspend_access(dev_priv);
>  
> -	intel_suspend_encoders(dev_priv);
> +	intel_encoder_suspend_all(dev_priv);
>  
>  	/* Must be called before GGTT is suspended. */
>  	intel_dpt_suspend(dev_priv);

-- 
Jani Nikula, Intel
