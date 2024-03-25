Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D84CE88A623
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Mar 2024 16:18:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E4E210E977;
	Mon, 25 Mar 2024 15:18:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZN85B1ek";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDCBB10E97B
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Mar 2024 15:18:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711379882; x=1742915882;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=s3rkPLzmfunpTJ57nX47RW2oYF3OurMGtIIiu/n+FCU=;
 b=ZN85B1ekfPw43YGWthfZIkMl+1FXhnEMnwZ3XxHzbzfOYbqaniQQWeVo
 dYVAxoe1khnmmz8ItZNAgayvZw3EwYCZdrd7D1vwenFIa4N9peHeoRw7M
 0XNUP8J9RUROdQH0Zgi+Up90m+SJG6ScoCODVW2eoWL9+n5yRzcT8iH+/
 YrL+nxsjpqvCiY3wQeBeJyiTeL/nobpG2Gt5xxI8LchaMqEvbHksHF5b7
 Dw1ky9ccKs0tBYaro5Mfnq3kRN9MtcsLlZ6SsT/G+i3gVfNKHZDqSvjXq
 MZvYEs4ckyQTKf3GJoeOIA8umBeA6ULoWYqASYuvnnNjH1Bxhoul7HoX3 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11023"; a="17121989"
X-IronPort-AV: E=Sophos;i="6.07,153,1708416000"; d="scan'208";a="17121989"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2024 08:17:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,153,1708416000"; d="scan'208";a="15519036"
Received: from idirlea-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.55.171])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2024 08:17:53 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 1/2] drm/i915/lspcon: Separate function to set expected
 mode
In-Reply-To: <20240322121832.4170061-2-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240322121832.4170061-1-ankit.k.nautiyal@intel.com>
 <20240322121832.4170061-2-ankit.k.nautiyal@intel.com>
Date: Mon, 25 Mar 2024 17:17:49 +0200
Message-ID: <87bk72ibmq.fsf@intel.com>
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

On Fri, 22 Mar 2024, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
> LSPCON can be configured to LS or PCON mode.
> Separate the function to set the expected mode from the lspcon probe
> function during lspcon init.
>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_lspcon.c | 47 ++++++++++++++-------
>  1 file changed, 31 insertions(+), 16 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/drm/i915/display/intel_lspcon.c
> index 1d048fa98561..62159d3ead56 100644
> --- a/drivers/gpu/drm/i915/display/intel_lspcon.c
> +++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
> @@ -240,18 +240,40 @@ static bool lspcon_wake_native_aux_ch(struct intel_lspcon *lspcon)
>  	return true;
>  }
>  
> -static bool lspcon_probe(struct intel_lspcon *lspcon)
> +static bool lspcon_set_expected_mode(struct intel_lspcon *lspcon)
>  {
> -	int retry;
> -	enum drm_dp_dual_mode_type adaptor_type;
>  	struct intel_dp *intel_dp = lspcon_to_intel_dp(lspcon);
>  	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> -	struct i2c_adapter *ddc = &intel_dp->aux.ddc;
>  	enum drm_lspcon_mode expected_mode;
>  
>  	expected_mode = lspcon_wake_native_aux_ch(lspcon) ?
>  			DRM_LSPCON_MODE_PCON : DRM_LSPCON_MODE_LS;

You always need to consider the functional changes when aiming to make
non-functional refactoring. This postpones lspcon_wake_native_aux_ch()
until after the probe. But the name has "wake" in it, and you're no
longer waking up as the first thing. Smells fishy.

Git blame leads to f2b667b658f9 ("drm/i915/lspcon: Ensure AUX CH is
awake while in DP Sleep state"). You should read the commit message.

BR,
Jani.


>  
> +	lspcon->mode = lspcon_wait_mode(lspcon, expected_mode);
> +
> +	/*
> +	 * In the SW state machine, lets Put LSPCON in PCON mode only.
> +	 * In this way, it will work with both HDMI 1.4 sinks as well as HDMI
> +	 * 2.0 sinks.
> +	 */
> +	if (lspcon->mode != DRM_LSPCON_MODE_PCON) {
> +		if (lspcon_change_mode(lspcon, DRM_LSPCON_MODE_PCON) < 0) {
> +			drm_err(&i915->drm, "LSPCON mode change to PCON failed\n");
> +			return false;
> +		}
> +	}
> +
> +	return true;
> +}
> +
> +static bool lspcon_probe(struct intel_lspcon *lspcon)
> +{
> +	int retry;
> +	enum drm_dp_dual_mode_type adaptor_type;
> +	struct intel_dp *intel_dp = lspcon_to_intel_dp(lspcon);
> +	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> +	struct i2c_adapter *ddc = &intel_dp->aux.ddc;
> +
>  	/* Lets probe the adaptor and check its type */
>  	for (retry = 0; retry < 6; retry++) {
>  		if (retry)
> @@ -270,19 +292,7 @@ static bool lspcon_probe(struct intel_lspcon *lspcon)
>  
>  	/* Yay ... got a LSPCON device */
>  	drm_dbg_kms(&i915->drm, "LSPCON detected\n");
> -	lspcon->mode = lspcon_wait_mode(lspcon, expected_mode);
>  
> -	/*
> -	 * In the SW state machine, lets Put LSPCON in PCON mode only.
> -	 * In this way, it will work with both HDMI 1.4 sinks as well as HDMI
> -	 * 2.0 sinks.
> -	 */
> -	if (lspcon->mode != DRM_LSPCON_MODE_PCON) {
> -		if (lspcon_change_mode(lspcon, DRM_LSPCON_MODE_PCON) < 0) {
> -			drm_err(&i915->drm, "LSPCON mode change to PCON failed\n");
> -			return false;
> -		}
> -	}
>  	return true;
>  }
>  
> @@ -671,6 +681,11 @@ bool lspcon_init(struct intel_digital_port *dig_port)
>  		return false;
>  	}
>  
> +	if (!lspcon_set_expected_mode(lspcon)) {
> +		drm_err(&i915->drm, "LSPCON Set expected Mode failed\n");
> +		return false;
> +	}
> +
>  	if (drm_dp_read_dpcd_caps(&intel_dp->aux, intel_dp->dpcd) != 0) {
>  		drm_err(&i915->drm, "LSPCON DPCD read failed\n");
>  		return false;

-- 
Jani Nikula, Intel
