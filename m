Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A0E1390C526
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2024 11:05:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05E0E10E5F0;
	Tue, 18 Jun 2024 09:05:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XzSRBjyN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0613910E5F0;
 Tue, 18 Jun 2024 09:05:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718701522; x=1750237522;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=gM+/8ZYNqXOjdO6BaY0hqqFU/V6SHtfjeWBpVs9ay08=;
 b=XzSRBjyNQePiPQJp9hxnWNCUq+YVBhA5eFjuRfszgMaLGWl/40i0LKOT
 0Vy1qC4zj2FDLkIBWAeJhMnEAT9Vh2dN8rMcS/dH8Sf+A6Rng/wszbci0
 cmYwQunw2Xpw1Vpkh/UBi9tGZ8LfvZgpRGzhf8YHPGg8UeYu0qfHLf3uH
 0YvxBNkuMXKJ6piOFJU4VMC14ISc4o7tSC32cp+DoPwmETxvI7yb+444h
 tXOMwVeBuoQTbWzi+P8Ov+itAZTJoYZ6+6UzM2+qQUoQ9ubKNsjxhknVj
 0FiYOjWPDcQ/P/ynMfL9RgfKcHK1Xw82JeraCojtGX2v7ep3NXuLuNvOe A==;
X-CSE-ConnectionGUID: tUYicXB0Sje21XkajlWqYQ==
X-CSE-MsgGUID: hymaftbQSSushDnrvfRQeA==
X-IronPort-AV: E=McAfee;i="6700,10204,11106"; a="19345515"
X-IronPort-AV: E=Sophos;i="6.08,247,1712646000"; d="scan'208";a="19345515"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2024 02:05:21 -0700
X-CSE-ConnectionGUID: aME0NzinTr6XA1QanVlzyw==
X-CSE-MsgGUID: n/WDWMEuQ3Gs8Edgvm98Eg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,247,1712646000"; d="scan'208";a="42162881"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.176])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2024 02:05:20 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 2/3] drm/i915: Pass intel_display to the encoder
 suspend/shutdown helpers
In-Reply-To: <20240617170356.4000251-2-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240617170356.4000251-1-imre.deak@intel.com>
 <20240617170356.4000251-2-imre.deak@intel.com>
Date: Tue, 18 Jun 2024 12:05:16 +0300
Message-ID: <87frtahb8z.fsf@intel.com>
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
> Pass intel_display to the encoder suspend/shutdown helpers instead of
> drm_i915_private for better isolation. This assumes that HAS_DISPLAY()
> will also take an intel_display parameter in the future (or that the
> HAS_DISPLAY() check will be moved to a caller of these functions).

You can already do that! HAS_DISPLAY() takes either i915 or display. So
maybe make that change now.

In the future, only display code should have HAS_DISPLAY() anyway, not
i915 or xe core. It's not an option that the caller does the checks.

>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_encoder.c | 22 +++++++++++---------
>  drivers/gpu/drm/i915/display/intel_encoder.h |  7 +++----
>  drivers/gpu/drm/i915/i915_driver.c           |  6 +++---
>  3 files changed, 18 insertions(+), 17 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_encoder.c b/drivers/gpu/drm/i915/display/intel_encoder.c
> index 8a1dccb893a37..8e73d18a522d4 100644
> --- a/drivers/gpu/drm/i915/display/intel_encoder.c
> +++ b/drivers/gpu/drm/i915/display/intel_encoder.c
> @@ -38,8 +38,9 @@ void intel_encoder_link_check_queue_work(struct intel_encoder *encoder, int dela
>  			 &encoder->link_check_work, msecs_to_jiffies(delay_ms));
>  }
>  
> -void intel_encoder_suspend_all(struct drm_i915_private *i915)
> +void intel_encoder_suspend_all(struct intel_display *display)
>  {
> +	struct drm_i915_private *i915 = to_i915(display->drm);
>  	struct intel_encoder *encoder;
>  
>  	if (!HAS_DISPLAY(i915))
> @@ -49,19 +50,20 @@ void intel_encoder_suspend_all(struct drm_i915_private *i915)
>  	 * TODO: check and remove holding the modeset locks if none of
>  	 * the encoders depends on this.
>  	 */
> -	drm_modeset_lock_all(&i915->drm);
> -	for_each_intel_encoder(&i915->drm, encoder)
> +	drm_modeset_lock_all(display->drm);
> +	for_each_intel_encoder(display->drm, encoder)
>  		if (encoder->suspend)
>  			encoder->suspend(encoder);
> -	drm_modeset_unlock_all(&i915->drm);
> +	drm_modeset_unlock_all(display->drm);
>  
> -	for_each_intel_encoder(&i915->drm, encoder)
> +	for_each_intel_encoder(display->drm, encoder)
>  		if (encoder->suspend_complete)
>  			encoder->suspend_complete(encoder);
>  }
>  
> -void intel_encoder_shutdown_all(struct drm_i915_private *i915)
> +void intel_encoder_shutdown_all(struct intel_display *display)
>  {
> +	struct drm_i915_private *i915 = to_i915(display->drm);
>  	struct intel_encoder *encoder;
>  
>  	if (!HAS_DISPLAY(i915))
> @@ -71,13 +73,13 @@ void intel_encoder_shutdown_all(struct drm_i915_private *i915)
>  	 * TODO: check and remove holding the modeset locks if none of
>  	 * the encoders depends on this.
>  	 */
> -	drm_modeset_lock_all(&i915->drm);
> -	for_each_intel_encoder(&i915->drm, encoder)
> +	drm_modeset_lock_all(display->drm);
> +	for_each_intel_encoder(display->drm, encoder)
>  		if (encoder->shutdown)
>  			encoder->shutdown(encoder);
> -	drm_modeset_unlock_all(&i915->drm);
> +	drm_modeset_unlock_all(display->drm);
>  
> -	for_each_intel_encoder(&i915->drm, encoder)
> +	for_each_intel_encoder(display->drm, encoder)
>  		if (encoder->shutdown_complete)
>  			encoder->shutdown_complete(encoder);
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_encoder.h b/drivers/gpu/drm/i915/display/intel_encoder.h
> index e6cd74576f78e..3fa5589f0b1ce 100644
> --- a/drivers/gpu/drm/i915/display/intel_encoder.h
> +++ b/drivers/gpu/drm/i915/display/intel_encoder.h
> @@ -6,8 +6,7 @@
>  #ifndef __INTEL_ENCODER_H__
>  #define __INTEL_ENCODER_H__
>  
> -struct drm_i915_private;
> -

Ah, this is why you missed the superfluous space. ;)

BR,
Jani.

> +struct intel_display;
>  struct intel_encoder;
>  
>  void intel_encoder_link_check_init(struct intel_encoder *encoder,
> @@ -15,7 +14,7 @@ void intel_encoder_link_check_init(struct intel_encoder *encoder,
>  void intel_encoder_link_check_queue_work(struct intel_encoder *encoder, int delay_ms);
>  void intel_encoder_link_check_flush_work(struct intel_encoder *encoder);
>  
> -void intel_encoder_suspend_all(struct drm_i915_private *i915);
> -void intel_encoder_shutdown_all(struct drm_i915_private *i915);
> +void intel_encoder_suspend_all(struct intel_display *display);
> +void intel_encoder_shutdown_all(struct intel_display *display);
>  
>  #endif /* __INTEL_ENCODER_H__ */
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index e9e38ed246f66..fb8e9c2fcea53 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -956,8 +956,8 @@ void i915_driver_shutdown(struct drm_i915_private *i915)
>  	if (HAS_DISPLAY(i915))
>  		intel_display_driver_suspend_access(i915);
>  
> -	intel_encoder_suspend_all(i915);
> -	intel_encoder_shutdown_all(i915);
> +	intel_encoder_suspend_all(&i915->display);
> +	intel_encoder_shutdown_all(&i915->display);
>  
>  	intel_dmc_suspend(i915);
>  
> @@ -1040,7 +1040,7 @@ static int i915_drm_suspend(struct drm_device *dev)
>  	if (HAS_DISPLAY(dev_priv))
>  		intel_display_driver_suspend_access(dev_priv);
>  
> -	intel_encoder_suspend_all(dev_priv);
> +	intel_encoder_suspend_all(&dev_priv->display);
>  
>  	/* Must be called before GGTT is suspended. */
>  	intel_dpt_suspend(dev_priv);

-- 
Jani Nikula, Intel
