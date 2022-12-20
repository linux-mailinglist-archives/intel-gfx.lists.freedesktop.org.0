Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7267F6520DD
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Dec 2022 13:41:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51D4910E081;
	Tue, 20 Dec 2022 12:41:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1551510E081
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Dec 2022 12:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671540053; x=1703076053;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=b0l6Rc5JFCF2xpIhXLmZYeR1fDOTW3R++iEn+YTAjZY=;
 b=mltFF+7jnPa/PJ1wMywXCUbE/wCH8eSn2ovM1fNb4OyhFvtkxsp64NOA
 E2XcGYtnwq/3pwO1x3XagB3xSj4U3DyskQEiOyhMnWUKBHDjnu12zxBfc
 ZlTfJumsHnW3UjcC+MH7IXZkBsim3fSAxb1DeWPkRvkdSPGllpFQujSue
 hWqf73yRrOf/dl8M6lShzBk+Yz4IJLM7EC1GfJnRlzsxJPOJIBEsPQ3fU
 08ZVpedMwzxnNWTFeXXL7HOfbhL4nScuguVJPLvWRvqVbvFwTEUXD7LLy
 AILoXDG29xICPfS52QR+b16vMBG93L5HmkSbtktxFNO6Mg6JW86O68L2K A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10566"; a="299945786"
X-IronPort-AV: E=Sophos;i="5.96,259,1665471600"; d="scan'208";a="299945786"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2022 04:40:52 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10566"; a="644404239"
X-IronPort-AV: E=Sophos;i="5.96,259,1665471600"; d="scan'208";a="644404239"
Received: from spalapa-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.60.249])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2022 04:40:50 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, "Deak, Imre" <imre.deak@intel.com>
In-Reply-To: <20221220094618.207126-1-maarten.lankhorst@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221220094618.207126-1-maarten.lankhorst@linux.intel.com>
Date: Tue, 20 Dec 2022 14:40:47 +0200
Message-ID: <87zgbi2qpc.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Fix a use-after-free when
 intel_edp_init_connector fails
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

On Tue, 20 Dec 2022, Maarten Lankhorst <maarten.lankhorst@linux.intel.com> wrote:
> We enable the DP aux channel during probe, but may free the connector
> soon afterwards. Ensure the DP aux display power put is completed before
> everything is freed, to prevent a use-after-free in icl_aux_pw_to_phy(),
> called from icl_combo_phy_aux_power_well_disable.

Feels like the placement of the intel_display_power_flush_work_sync()
call in intel_dp_aux_fini() is a bit arbitrary.

If we add it in intel_dp_aux_fini(), the async and sync waits will both
be called on the regular encoder destroy path.

Maybe both intel_ddi_encoder_destroy() and intel_dp_encoder_destroy()
should call intel_display_power_flush_work_sync(), instead of async, and
maybe the error paths should call those functions instead of just
drm_encoder_cleanup()?

Imre?


BR,
Jani.


>
> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_power.c | 2 +-
>  drivers/gpu/drm/i915/display/intel_display_power.h | 1 +
>  drivers/gpu/drm/i915/display/intel_dp_aux.c        | 2 ++
>  3 files changed, 4 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> index 04915f85a0df..0edb5532461f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -776,7 +776,7 @@ void intel_display_power_flush_work(struct drm_i915_private *i915)
>   * Like intel_display_power_flush_work(), but also ensure that the work
>   * handler function is not running any more when this function returns.
>   */
> -static void
> +void
>  intel_display_power_flush_work_sync(struct drm_i915_private *i915)
>  {
>  	struct i915_power_domains *power_domains = &i915->display.power.domains;
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
> index 7136ea3f233e..dc10ee0519e6 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
> @@ -188,6 +188,7 @@ void __intel_display_power_put_async(struct drm_i915_private *i915,
>  				     enum intel_display_power_domain domain,
>  				     intel_wakeref_t wakeref);
>  void intel_display_power_flush_work(struct drm_i915_private *i915);
> +void intel_display_power_flush_work_sync(struct drm_i915_private *i915);
>  #if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
>  void intel_display_power_put(struct drm_i915_private *dev_priv,
>  			     enum intel_display_power_domain domain,
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> index f1835c74bff0..1006dddad2d5 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> @@ -680,6 +680,8 @@ void intel_dp_aux_fini(struct intel_dp *intel_dp)
>  	if (cpu_latency_qos_request_active(&intel_dp->pm_qos))
>  		cpu_latency_qos_remove_request(&intel_dp->pm_qos);
>  
> +	/* Ensure async work from intel_dp_aux_xfer() is flushed before we clean up */
> +	intel_display_power_flush_work_sync(dp_to_i915(intel_dp));
>  	kfree(intel_dp->aux.name);
>  }

-- 
Jani Nikula, Intel Open Source Graphics Center
