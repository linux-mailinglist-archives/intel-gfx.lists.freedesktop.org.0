Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D23DF9B52FF
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2024 20:51:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 437EE10E6F3;
	Tue, 29 Oct 2024 19:51:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GY6we5s8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3AB6C10E6F3
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2024 19:51:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730231467; x=1761767467;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=/8cRYR8nHBtrUkx3uFvF55lP0RtgId51bbj2NMwCaJk=;
 b=GY6we5s87noB7YTmxorKCKEi/DaiLkaITrFZ29cbSGEPJaY6Y3ROpp4t
 WuxvBDQBkdrV4H68iZZ/n4JiTI7y0GGoAQZHvxSVkr7NxLMbpscjXHNOZ
 WDIA6y0xnEG2kaRioVlUP5KKdZyvNRet2TjCf+EkAz6L6s+ooMSE/wbkV
 mEXRcOppcWU/lxIBDpAfrs8xbw3tIP+cye0fydJ2n52r2ZjGGgRcuTL2j
 wR4auPbFqDKaIzOXBQQFHXlk+DS1hiHCeIsfVJ0C8IJQk9+ABHJO8/CY9
 2O7KhJMG93MULr0WMsr7kXgZ0sXg/VFzL+kUflkxDRM1VxGaAJXtKn2vK Q==;
X-CSE-ConnectionGUID: wwKEmsUbS9yLsdKYFUiOyw==
X-CSE-MsgGUID: JRXDeQrSTpCi0X0IpiOZRg==
X-IronPort-AV: E=McAfee;i="6700,10204,11240"; a="47380712"
X-IronPort-AV: E=Sophos;i="6.11,241,1725346800"; d="scan'208";a="47380712"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 12:51:07 -0700
X-CSE-ConnectionGUID: pWBSWbg4Twu6ZY7ELSnZWw==
X-CSE-MsgGUID: D/0LJbGwRqu1wBsFRWDokQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,241,1725346800"; d="scan'208";a="81624238"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.69])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 12:51:05 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 2/4] drm/i915/dp: Export intel_ddi_config_transcoder_dp2()
In-Reply-To: <20241029191215.3889861-3-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241029191215.3889861-1-imre.deak@intel.com>
 <20241029191215.3889861-3-imre.deak@intel.com>
Date: Tue, 29 Oct 2024 21:51:02 +0200
Message-ID: <878qu6ofh5.fsf@intel.com>
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

On Tue, 29 Oct 2024, Imre Deak <imre.deak@intel.com> wrote:
> Export intel_ddi_config_transcoder_dp2() taken into use by the MST
> encoder in the next patch. Move the HAS_DP20() check to the function, so
> it doesn't need to be checked for each caller. Besides enabling the DP2
> configuration also add a way to disable it, required by the MST slave
> transcoder disabling sequence in the next patch.

Did you consider making intel_ddi_config_transcoder_dp2() enable part of
intel_ddi_config_transcoder_func() and disable part of
intel_ddi_disable_transcoder_func()? It's a bit much to add new
functions for single register updates.

BR,
Jani.


>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 15 +++++++++------
>  drivers/gpu/drm/i915/display/intel_ddi.h |  3 +++
>  2 files changed, 12 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 6bbfe0762cafa..5ff7d23775d82 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -454,15 +454,19 @@ static u32 bdw_trans_port_sync_master_select(enum transcoder master_transcoder)
>  		return master_transcoder + 1;
>  }
>  
> -static void
> +void
>  intel_ddi_config_transcoder_dp2(struct intel_encoder *encoder,
> -				const struct intel_crtc_state *crtc_state)
> +				const struct intel_crtc_state *crtc_state,
> +				bool enable)
>  {
>  	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
>  	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>  	u32 val = 0;
>  
> -	if (intel_dp_is_uhbr(crtc_state))
> +	if (!HAS_DP20(i915))
> +		return;
> +
> +	if (enable && intel_dp_is_uhbr(crtc_state))
>  		val = TRANS_DP2_128B132B_CHANNEL_CODING;
>  
>  	intel_de_write(i915, TRANS_DP2_CTL(cpu_transcoder), val);
> @@ -2549,7 +2553,7 @@ static void mtl_ddi_pre_enable_dp(struct intel_atomic_state *state,
>  	/*
>  	 * 6.b If DP v2.0/128b mode - Configure TRANS_DP2_CTL register settings.
>  	 */
> -	intel_ddi_config_transcoder_dp2(encoder, crtc_state);
> +	intel_ddi_config_transcoder_dp2(encoder, crtc_state, true);
>  
>  	/*
>  	 * 6.c Configure TRANS_DDI_FUNC_CTL DDI Select, DDI Mode Select & MST
> @@ -2686,8 +2690,7 @@ static void tgl_ddi_pre_enable_dp(struct intel_atomic_state *state,
>  	 */
>  	intel_ddi_enable_transcoder_clock(encoder, crtc_state);
>  
> -	if (HAS_DP20(dev_priv))
> -		intel_ddi_config_transcoder_dp2(encoder, crtc_state);
> +	intel_ddi_config_transcoder_dp2(encoder, crtc_state, true);
>  
>  	/*
>  	 * 7.b Configure TRANS_DDI_FUNC_CTL DDI Select, DDI Mode Select & MST
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.h b/drivers/gpu/drm/i915/display/intel_ddi.h
> index 1aa2e3a190aee..bf27b2fbb08e9 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.h
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.h
> @@ -65,6 +65,9 @@ void intel_ddi_disable_transcoder_func(const struct intel_crtc_state *crtc_state
>  void intel_ddi_enable_transcoder_clock(struct intel_encoder *encoder,
>  				       const struct intel_crtc_state *crtc_state);
>  void intel_ddi_disable_transcoder_clock(const  struct intel_crtc_state *crtc_state);
> +void intel_ddi_config_transcoder_dp2(struct intel_encoder *encoder,
> +				     const struct intel_crtc_state *crtc_state,
> +				     bool enable);
>  void intel_ddi_wait_for_fec_status(struct intel_encoder *encoder,
>  				   const struct intel_crtc_state *crtc_state,
>  				   bool enabled);

-- 
Jani Nikula, Intel
