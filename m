Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 312D89B7AAE
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Oct 2024 13:36:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 871DA10E871;
	Thu, 31 Oct 2024 12:36:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BcWgM3KC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60BC110E871
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Oct 2024 12:36:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730378201; x=1761914201;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=eieKApWVPKE7JseZn/ROObsy3wX3Crq99BgfULPUk1g=;
 b=BcWgM3KCNaaqKkAyKnAoC7JAbqFGmV4CTfBEYMw/aeeworvk2wfw6Cj0
 pCOCaMB3v9LdUbHgVuGZDK8NRVmlV03c0J1xIM0DCDSUK7a/qQce11sme
 hJG11xohhim6S98+yUZBM9No3BB6hcdBUI7UHhKEyTBNTgd6rHx/c/pRD
 uH+DNrHhb6Q8tfUHu4sW5Xp287d2sslboWN58l6Mf+kaVIsbyWKBIkaMj
 ju7KOnjZI6FYEwV4fS/pCkS7il7Xv9XFJIiLUrSyvbv0Iaiv7cjs6ekBU
 qQnCfb4GyO8JYJUvSAvTIdzSlIklHe95Yp1j92jLwHzCYGT+9V56sipHI Q==;
X-CSE-ConnectionGUID: 4UCgc8BMQhGrrXVfNSsl6Q==
X-CSE-MsgGUID: FX3MTfYOSkmkMJ0dTTRmYA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="29969867"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="29969867"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2024 05:36:41 -0700
X-CSE-ConnectionGUID: HxiMobMNTDK6kUGnfmp1Cw==
X-CSE-MsgGUID: ms8gysi+SKGwxVAAGpglbQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,247,1725346800"; d="scan'208";a="113461988"
Received: from sschumil-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.204])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2024 05:36:40 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH v2 3/5] drm/i915/dp_mst: Add a way to disable the DP2
 config
In-Reply-To: <20241030192313.4030617-4-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241030192313.4030617-1-imre.deak@intel.com>
 <20241030192313.4030617-4-imre.deak@intel.com>
Date: Thu, 31 Oct 2024 14:36:37 +0200
Message-ID: <87sescjvoq.fsf@intel.com>
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

On Wed, 30 Oct 2024, Imre Deak <imre.deak@intel.com> wrote:
> Add a way to disable the DP2 configuration, required by the next patch
> during transcoder disabling.
>
> While at it drop the redundant encoder parameter.
>
> v2:
> - Keep intel_ddi_config_transcoder_dp2() static. (Jani)
> - Remove the encoder parameter.
>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 17 ++++++++++-------
>  1 file changed, 10 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 069cca4b38b2e..dcd43087fa7ed 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -455,14 +455,18 @@ static u32 bdw_trans_port_sync_master_select(enum transcoder master_transcoder)
>  }
>  
>  static void
> -intel_ddi_config_transcoder_dp2(struct intel_encoder *encoder,
> -				const struct intel_crtc_state *crtc_state)
> +intel_ddi_config_transcoder_dp2(const struct intel_crtc_state *crtc_state,
> +				bool enable)
>  {
> -	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	struct drm_i915_private *i915 = to_i915(display->drm);

You don't need i915 for anything here, might as well change them all.

BR,
Jani.

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
> +	intel_ddi_config_transcoder_dp2(crtc_state, true);
>  
>  	/*
>  	 * 6.c Configure TRANS_DDI_FUNC_CTL DDI Select, DDI Mode Select & MST
> @@ -2686,8 +2690,7 @@ static void tgl_ddi_pre_enable_dp(struct intel_atomic_state *state,
>  	 */
>  	intel_ddi_enable_transcoder_clock(encoder, crtc_state);
>  
> -	if (HAS_DP20(dev_priv))
> -		intel_ddi_config_transcoder_dp2(encoder, crtc_state);
> +	intel_ddi_config_transcoder_dp2(crtc_state, true);
>  
>  	/*
>  	 * 7.b Configure TRANS_DDI_FUNC_CTL DDI Select, DDI Mode Select & MST

-- 
Jani Nikula, Intel
