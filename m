Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19C1695F0CE
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Aug 2024 14:11:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD44110E1E5;
	Mon, 26 Aug 2024 12:11:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TpRywbsg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0366110E1DB;
 Mon, 26 Aug 2024 12:11:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724674294; x=1756210294;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=EvbjUWUWPVA99q+9YIEngtjYkTbDAQzeHgSsYUg5UuQ=;
 b=TpRywbsgZtH5daCVPTl4SmZ6zK1Afqr/2hBHWCw+81nxcV7HM088fSty
 VYxaj1LJS6XdCRS5+nWqYxobSuXVgDKweO4iW/gNwOe3KZJ7kNdxIO9Zt
 INPJ6hZi1AxtUdD1FMgM4FX7ZAZ8JdGOtdnitp5h9z/68Cgcx45h7lDvy
 wjbZ2TwjaRU4WyVGr6yDx5LJphCs5si+I3WX53zQN0ZsswiNbB8uiB/0i
 MTN3BNI1R4cLyHzIEseTHPTV8btCSqjVTOtxCK3UvcDaTBdWZfeRZvVFa
 3jo5anZvsFl8+MzOcXcHsv5zVqaaWjgUOD54ZSOKGFAo5npHuR3qA7Tbh w==;
X-CSE-ConnectionGUID: RmNsYS2VS3iqWs8mFsCzvA==
X-CSE-MsgGUID: XzQkgg5/RC+PgbV2AvrPWA==
X-IronPort-AV: E=McAfee;i="6700,10204,11175"; a="23267848"
X-IronPort-AV: E=Sophos;i="6.10,177,1719903600"; d="scan'208";a="23267848"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2024 05:11:33 -0700
X-CSE-ConnectionGUID: eJ3vavp+S6i6cJnIsJa6ng==
X-CSE-MsgGUID: H1M+BlzOSpW7R17uWkHOPg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,177,1719903600"; d="scan'208";a="62795565"
Received: from sschumil-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.113])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2024 05:11:31 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: suraj.kandpal@intel.com, ville.syrjala@linux.intel.com
Subject: Re: [PATCH 07/12] drm/i915/display: Move dss stuff in intel_dss files
In-Reply-To: <20240826111527.1113622-8-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240826111527.1113622-1-ankit.k.nautiyal@intel.com>
 <20240826111527.1113622-8-ankit.k.nautiyal@intel.com>
Date: Mon, 26 Aug 2024 15:11:18 +0300
Message-ID: <87plpv1o2h.fsf@intel.com>
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
> Move helper to retrieve the compressed and uncompressed joiner pipes from
> dss ctl to intel_dss files.
>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 34 +++-----------
>  drivers/gpu/drm/i915/display/intel_dss.c     | 48 ++++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_dss.h     |  9 ++++
>  3 files changed, 64 insertions(+), 27 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 05ffd28cc16a..ab57c2f39cf5 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -3545,35 +3545,15 @@ static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
>  
>  	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, crtc,
>  					 joiner_pipes(dev_priv)) {
> -		enum intel_display_power_domain power_domain;
> -		enum pipe pipe = crtc->pipe;
> -		intel_wakeref_t wakeref;
> -
> -		power_domain = intel_dsc_power_domain(crtc, (enum transcoder) pipe);
> -		with_intel_display_power_if_enabled(dev_priv, power_domain, wakeref) {
> -			u32 tmp = intel_de_read(dev_priv, ICL_PIPE_DSS_CTL1(pipe));
> -
> -			if (!(tmp & BIG_JOINER_ENABLE))
> -				continue;
> +		struct intel_display *display = &dev_priv->display;
>  
> -			if (tmp & PRIMARY_BIG_JOINER_ENABLE)
> -				*primary_pipes |= BIT(pipe);
> -			else
> -				*secondary_pipes |= BIT(pipe);
> -		}
> -
> -		if (DISPLAY_VER(dev_priv) < 13)
> -			continue;
> -
> -		power_domain = POWER_DOMAIN_PIPE(pipe);
> -		with_intel_display_power_if_enabled(dev_priv, power_domain, wakeref) {
> -			u32 tmp = intel_de_read(dev_priv, ICL_PIPE_DSS_CTL1(pipe));
> +		intel_dss_get_compressed_joiner_pipes(display, crtc,
> +						      primary_pipes,
> +						      secondary_pipes);
>  
> -			if (tmp & UNCOMPRESSED_JOINER_PRIMARY)
> -				*primary_pipes |= BIT(pipe);
> -			if (tmp & UNCOMPRESSED_JOINER_SECONDARY)
> -				*secondary_pipes |= BIT(pipe);
> -		}
> +		intel_dss_get_uncompressed_joiner_pipes(display, crtc,
> +							primary_pipes,
> +							secondary_pipes);
>  	}
>  
>  	/* Joiner pipes should always be consecutive primary and secondary */
> diff --git a/drivers/gpu/drm/i915/display/intel_dss.c b/drivers/gpu/drm/i915/display/intel_dss.c
> index 8b2841689bfb..fadaf1f2674c 100644
> --- a/drivers/gpu/drm/i915/display/intel_dss.c
> +++ b/drivers/gpu/drm/i915/display/intel_dss.c
> @@ -214,3 +214,51 @@ void intel_dss_get_dsc_config(struct intel_crtc_state *crtc_state)
>  	crtc_state->dsc.dsc_split = (dss_ctl2 & RIGHT_BRANCH_VDSC_ENABLE) &&
>  				    (dss_ctl1 & JOINER_ENABLE);
>  }
> +
> +void intel_dss_get_compressed_joiner_pipes(struct intel_display *display,
> +					   struct intel_crtc *crtc,
> +					   u8 *primary_pipes,
> +					   u8 *secondary_pipes)
> +{

You don't need to pass display here, crtc is enough:

	struct intel_display *display = to_intel_display(crtc);

Same for other functions, and also in subsequent patches.

> +	struct drm_i915_private *i915 = to_i915(display->drm);
> +	enum intel_display_power_domain power_domain;
> +	enum pipe pipe = crtc->pipe;
> +	intel_wakeref_t wakeref;
> +
> +	power_domain = intel_dsc_power_domain(crtc, (enum transcoder) pipe);
> +	with_intel_display_power_if_enabled(i915, power_domain, wakeref) {
> +		u32 tmp = intel_de_read(display, ICL_PIPE_DSS_CTL1(pipe));
> +
> +		if (!(tmp & BIG_JOINER_ENABLE))
> +			continue;
> +
> +		if (tmp & PRIMARY_BIG_JOINER_ENABLE)
> +			*primary_pipes |= BIT(pipe);
> +		else
> +			*secondary_pipes |= BIT(pipe);
> +	}
> +}
> +
> +void intel_dss_get_uncompressed_joiner_pipes(struct intel_display *display,
> +					     struct intel_crtc *crtc,
> +					     u8 *primary_pipes,
> +					     u8 *secondary_pipes)
> +{
> +	struct drm_i915_private *i915 = to_i915(display->drm);
> +	enum intel_display_power_domain power_domain;
> +	enum pipe pipe = crtc->pipe;
> +	intel_wakeref_t wakeref;
> +
> +	if (DISPLAY_VER(display) < 13)
> +		return;
> +
> +	power_domain = POWER_DOMAIN_PIPE(pipe);
> +	with_intel_display_power_if_enabled(i915, power_domain, wakeref) {
> +		u32 tmp = intel_de_read(display, ICL_PIPE_DSS_CTL1(pipe));
> +
> +		if (tmp & UNCOMPRESSED_JOINER_PRIMARY)
> +			*primary_pipes |= BIT(pipe);
> +		if (tmp & UNCOMPRESSED_JOINER_SECONDARY)
> +			*secondary_pipes |= BIT(pipe);
> +	}
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_dss.h b/drivers/gpu/drm/i915/display/intel_dss.h
> index 2dadbe76cbf9..16d2bbc3add8 100644
> --- a/drivers/gpu/drm/i915/display/intel_dss.h
> +++ b/drivers/gpu/drm/i915/display/intel_dss.h
> @@ -11,6 +11,7 @@
>  struct intel_crtc_state;
>  struct intel_display;
>  struct intel_encoder;
> +struct intel_crtc;
>  
>  u8 intel_dss_splitter_pipe_mask(struct intel_display *display);
>  void intel_dss_get_mso_config(struct intel_encoder *encoder,
> @@ -24,6 +25,14 @@ void intel_dss_enable_uncompressed_joiner(const struct intel_crtc_state *crtc_st
>  void intel_dss_enable_compressed_joiner(const struct intel_crtc_state *crtc_state,
>  					int vdsc_instances_per_pipe);
>  void intel_dss_get_dsc_config(struct intel_crtc_state *crtc_state);
> +void intel_dss_get_compressed_joiner_pipes(struct intel_display *display,
> +					   struct intel_crtc *crtc,
> +					   u8 *primary_pipes,
> +					   u8 *secondary_pipes);
> +void intel_dss_get_uncompressed_joiner_pipes(struct intel_display *display,
> +					     struct intel_crtc *crtc,
> +					     u8 *primary_pipes,
> +					     u8 *secondary_pipes);
>  
>  #endif /* __INTEL_DSS_H__ */

-- 
Jani Nikula, Intel
