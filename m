Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C136C95F032
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Aug 2024 13:55:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25FD810E18C;
	Mon, 26 Aug 2024 11:55:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MlaprF2L";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC8CA10E186;
 Mon, 26 Aug 2024 11:55:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724673319; x=1756209319;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=lU2knqvu2yH06WxKXJ44CdC6gUZC5Rqhu+dWwBtFg8g=;
 b=MlaprF2LU3EgGW5EoC/N9znHBzyO4iFZBPszCoTs8WAhxXvXYwtJujYO
 2YvdLQ5iwrds5WmlNLA8I4yqU0NEFeeujzMalm/VBJQtsgYPdX/pXvhMT
 dnqbidxgbPYzqVqlA4Rx/oQSYAc9sBtYqEuNV9/vbzZiW6T1HPawzUJM5
 UMdjWyS0WQ6S7obK4qG4hXrmIxhSr+mJRwuVqMnK6if92M2+A65o9d/EK
 Qncr8CX7AKJZ+kIBH0BWIZhGXOlQtJ3++Sb/FlsqAGh2bG3iNNTPf1fGr
 gV0X1/0oTMx/ZS5+pQHksNm000xmVRmPH3kG67Abyk9luTbjidKjKBHQc Q==;
X-CSE-ConnectionGUID: MiMv642ARkiUVgSgLPYUSg==
X-CSE-MsgGUID: /xwKaRvJSoi5dfgW9OaATQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11175"; a="40595997"
X-IronPort-AV: E=Sophos;i="6.10,177,1719903600"; d="scan'208";a="40595997"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2024 04:55:18 -0700
X-CSE-ConnectionGUID: FWkFQp7vQTi3ZM3+kw8Q6w==
X-CSE-MsgGUID: wjzj+ndTQD2HlX161SicLw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,177,1719903600"; d="scan'208";a="67413801"
Received: from sschumil-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.113])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2024 04:55:16 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: suraj.kandpal@intel.com, ville.syrjala@linux.intel.com
Subject: Re: [PATCH 03/12] drm/i915/dss: Move to struct intel_display
In-Reply-To: <20240826111527.1113622-4-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240826111527.1113622-1-ankit.k.nautiyal@intel.com>
 <20240826111527.1113622-4-ankit.k.nautiyal@intel.com>
Date: Mon, 26 Aug 2024 14:55:02 +0300
Message-ID: <87zfoz1otl.fsf@intel.com>
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

On Mon, 26 Aug 2024, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
> Use struct intel_display instead of struct drm_i915_private.
>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c |  2 +-
>  drivers/gpu/drm/i915/display/intel_dss.c | 22 +++++++++++-----------
>  drivers/gpu/drm/i915/display/intel_dss.h |  4 ++--
>  3 files changed, 14 insertions(+), 14 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 28ef6814c56c..de7db5a028db 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -5115,7 +5115,7 @@ void intel_ddi_init(struct intel_display *display,
>  		dig_port->hpd_pulse = intel_dp_hpd_pulse;
>  
>  		if (dig_port->dp.mso_link_count)
> -			encoder->pipe_mask = intel_dss_splitter_pipe_mask(dev_priv);
> +			encoder->pipe_mask = intel_dss_splitter_pipe_mask(display);
>  	}
>  
>  	/*
> diff --git a/drivers/gpu/drm/i915/display/intel_dss.c b/drivers/gpu/drm/i915/display/intel_dss.c
> index 41ea42d234f9..9cb89fe656cb 100644
> --- a/drivers/gpu/drm/i915/display/intel_dss.c
> +++ b/drivers/gpu/drm/i915/display/intel_dss.c
> @@ -14,11 +14,11 @@
>   * Splitter enable for eDP MSO is limited to certain pipes, on certain
>   * platforms.
>   */
> -u8 intel_dss_splitter_pipe_mask(struct drm_i915_private *i915)
> +u8 intel_dss_splitter_pipe_mask(struct intel_display *display)
>  {
> -	if (DISPLAY_VER(i915) > 20)
> +	if (DISPLAY_VER(display) > 20)
>  		return ~0;
> -	else if (IS_ALDERLAKE_P(i915))
> +	else if (IS_ALDERLAKE_P(to_i915(display->drm)))

I think it's easier for subsequent conversions to have i915 as a local
variable instead of adding to_i915() inline.

>  		return BIT(PIPE_A) | BIT(PIPE_B);
>  	else
>  		return BIT(PIPE_A);
> @@ -27,28 +27,28 @@ u8 intel_dss_splitter_pipe_mask(struct drm_i915_private *i915)
>  void intel_dss_get_mso_config(struct intel_encoder *encoder,
>  			      struct intel_crtc_state *pipe_config)
>  {
> +	struct intel_display *display = to_intel_display(pipe_config);
>  	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
> -	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>  	enum pipe pipe = crtc->pipe;
>  	u32 dss1;
>  
> -	if (!HAS_MSO(i915))
> +	if (!HAS_MSO(display))
>  		return;
>  
> -	dss1 = intel_de_read(i915, ICL_PIPE_DSS_CTL1(pipe));
> +	dss1 = intel_de_read(display, ICL_PIPE_DSS_CTL1(pipe));
>  
>  	pipe_config->splitter.enable = dss1 & SPLITTER_ENABLE;
>  	if (!pipe_config->splitter.enable)
>  		return;
>  
> -	if (drm_WARN_ON(&i915->drm, !(intel_dss_splitter_pipe_mask(i915) & BIT(pipe)))) {
> +	if (drm_WARN_ON(crtc->base.dev, !(intel_dss_splitter_pipe_mask(display) & BIT(pipe)))) {

display->drm

>  		pipe_config->splitter.enable = false;
>  		return;
>  	}
>  
>  	switch (dss1 & SPLITTER_CONFIGURATION_MASK) {
>  	default:
> -		drm_WARN(&i915->drm, true,
> +		drm_WARN(crtc->base.dev, true,

display->drm

>  			 "Invalid splitter configuration, dss1=0x%08x\n", dss1);
>  		fallthrough;
>  	case SPLITTER_CONFIGURATION_2_SEGMENT:
> @@ -64,12 +64,12 @@ void intel_dss_get_mso_config(struct intel_encoder *encoder,
>  
>  void intel_dss_configure_mso(const struct intel_crtc_state *crtc_state)
>  {
> +	struct intel_display *display = to_intel_display(crtc_state);
>  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> -	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>  	enum pipe pipe = crtc->pipe;
>  	u32 dss1 = 0;
>  
> -	if (!HAS_MSO(i915))
> +	if (!HAS_MSO(display))
>  		return;
>  
>  	if (crtc_state->splitter.enable) {
> @@ -81,7 +81,7 @@ void intel_dss_configure_mso(const struct intel_crtc_state *crtc_state)
>  			dss1 |= SPLITTER_CONFIGURATION_4_SEGMENT;
>  	}
>  
> -	intel_de_rmw(i915, ICL_PIPE_DSS_CTL1(pipe),
> +	intel_de_rmw(display, ICL_PIPE_DSS_CTL1(pipe),
>  		     SPLITTER_ENABLE | SPLITTER_CONFIGURATION_MASK |
>  		     OVERLAP_PIXELS_MASK, dss1);
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_dss.h b/drivers/gpu/drm/i915/display/intel_dss.h
> index 632a00f0ebc1..0571ee2a19f9 100644
> --- a/drivers/gpu/drm/i915/display/intel_dss.h
> +++ b/drivers/gpu/drm/i915/display/intel_dss.h
> @@ -8,11 +8,11 @@
>  
>  #include "linux/types.h"
>  
> -struct drm_i915_private;
>  struct intel_crtc_state;
> +struct intel_display;
>  struct intel_encoder;
>  
> -u8 intel_dss_splitter_pipe_mask(struct drm_i915_private *i915);
> +u8 intel_dss_splitter_pipe_mask(struct intel_display *display);
>  void intel_dss_get_mso_config(struct intel_encoder *encoder,
>  			      struct intel_crtc_state *pipe_config);
>  void intel_dss_configure_mso(const struct intel_crtc_state *crtc_state);

-- 
Jani Nikula, Intel
