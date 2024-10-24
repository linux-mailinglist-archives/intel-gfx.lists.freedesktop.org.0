Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 828949ADEEE
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2024 10:19:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C4B210E3AB;
	Thu, 24 Oct 2024 08:19:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="D7PwN8wp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E46410E3AB;
 Thu, 24 Oct 2024 08:19:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729757988; x=1761293988;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=DTtezKzSrsu2BlHMUxlMCfa17guVAV22/I5k5+2eC1E=;
 b=D7PwN8wpjOWG4g0flQrnsaCG8Y47vD1Fymnmf3uGPQOb5p74yyPEgKZo
 i6PkalzU0IAObDOeWg7EkxMOmrEoeMKPfFDhVmq+6ixzr9m8C4yTY1w3X
 w69zjXUDPZVIY4iY2sIyCrNlmsiQaDA6fydzVQ8LVs72f8Sw2gGVv0qnP
 +7Fdu7zdx5G0Ko8M+mbVZ6tunm0Kcppo9US0J/8daMRgKati0qztAMtYN
 LGjVQaGcmQdsW9BNw4gqtZWNsVmujCLmh9DCYLuH6vA+0CY7G0MwVA2LE
 wbAIDxQhdai7a6E1aM1wp1qKXfozX6T/f1/tLtgZiYfzXV01Nh6TGHaiA A==;
X-CSE-ConnectionGUID: i1hHCru1SomYlvUtc4M/Yg==
X-CSE-MsgGUID: qcEfMCp4TU2Ib0x5KWIImA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="33062549"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="33062549"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 01:19:48 -0700
X-CSE-ConnectionGUID: r9PyDSjGSOKLTpzR0hqn+Q==
X-CSE-MsgGUID: sm6RJT2xQ4aB8E47yITGUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,228,1725346800"; d="scan'208";a="80827065"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.151])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 01:19:46 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Clint Taylor <clinton.a.taylor@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 03/12] drm/i915/xe3lpd: Add check to see if edp over
 type c is allowed
In-Reply-To: <20241023214701.963830-4-clinton.a.taylor@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241023214701.963830-1-clinton.a.taylor@intel.com>
 <20241023214701.963830-4-clinton.a.taylor@intel.com>
Date: Thu, 24 Oct 2024 11:19:43 +0300
Message-ID: <87bjz9ud40.fsf@intel.com>
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

On Wed, 23 Oct 2024, Clint Taylor <clinton.a.taylor@intel.com> wrote:
> From: Suraj Kandpal <suraj.kandpal@intel.com>
>
> Read PICA register to see if edp over type C is possible and then
> add the appropriate tables for it.

I've rejected this before, look up the review comments and adjust.

BR,
Jani.


>
> --v2
> -remove bool from intel_encoder have it in runtime_info [Jani]
> -initialize the bool in runtime_info init [Jani]
> -dont abbreviate the bool [Jani]
>
> Bspec: 68846
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> Reviewed-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c    |  4 ++++
>  .../gpu/drm/i915/display/intel_display_device.c |  4 ++++
>  .../gpu/drm/i915/display/intel_display_device.h |  1 +
>  drivers/gpu/drm/i915/display/intel_dp.c         | 17 ++++++++++++++---
>  drivers/gpu/drm/i915/display/intel_dp.h         |  5 +++++
>  drivers/gpu/drm/i915/i915_reg.h                 |  3 +++
>  6 files changed, 31 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index 8bd5a4d1b735..ef14e12828c3 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -2257,9 +2257,13 @@ intel_c20_pll_tables_get(struct intel_crtc_state *crtc_state,
>  			 struct intel_encoder *encoder)
>  {
>  	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +	struct intel_display_runtime_info *display_runtime = DISPLAY_RUNTIME_INFO(i915);
>  
>  	if (intel_crtc_has_dp_encoder(crtc_state)) {
>  		if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP)) {
> +			if (DISPLAY_VER(i915) >= 30 &&
> +			    display_runtime->edp_typec_support)
> +				return xe3lpd_c20_dp_edp_tables;
>  			if (DISPLAY_VER_FULL(i915) == IP_VER(14, 1))
>  				return xe2hpd_c20_edp_tables;
>  		}
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
> index aa22189e3853..8583c3529060 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> @@ -15,6 +15,7 @@
>  #include "intel_display_params.h"
>  #include "intel_display_power.h"
>  #include "intel_display_reg_defs.h"
> +#include "intel_dp.h"
>  #include "intel_fbc.h"
>  #include "intel_step.h"
>  
> @@ -1685,6 +1686,9 @@ static void __intel_display_device_info_runtime_init(struct drm_i915_private *i9
>  		}
>  	}
>  
> +	if (DISPLAY_VER(i915) >= 30)
> +		intel_dp_check_edp_typec_support(display, display_runtime);
> +
>  	display_runtime->rawclk_freq = intel_read_rawclk(display);
>  	drm_dbg_kms(&i915->drm, "rawclk rate: %d kHz\n", display_runtime->rawclk_freq);
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> index 071a36b51f79..410f8b33a8a1 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -232,6 +232,7 @@ struct intel_display_runtime_info {
>  	bool has_hdcp;
>  	bool has_dmc;
>  	bool has_dsc;
> +	bool edp_typec_support;
>  };
>  
>  struct intel_display_device_info {
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 7e29619ba040..992cc51e07b5 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -5572,6 +5572,16 @@ intel_dp_detect_sdp_caps(struct intel_dp *intel_dp)
>  		drm_dp_as_sdp_supported(&intel_dp->aux, intel_dp->dpcd);
>  }
>  
> +void
> +intel_dp_check_edp_typec_support(struct intel_display *display,
> +				 struct intel_display_runtime_info *display_runtime)
> +{
> +	u32 ret = 0;
> +
> +	ret = intel_de_read(display, PICA_PHY_CONFIG_CONTROL);
> +	display_runtime->edp_typec_support = ret & EDP_ON_TYPEC;
> +}
> +
>  static int
>  intel_dp_detect(struct drm_connector *connector,
>  		struct drm_modeset_acquire_ctx *ctx,
> @@ -6441,10 +6451,11 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
>  
>  	if (_intel_dp_is_port_edp(dev_priv, intel_encoder->devdata, port)) {
>  		/*
> -		 * Currently we don't support eDP on TypeC ports, although in
> -		 * theory it could work on TypeC legacy ports.
> +		 * Currently we don't support eDP on TypeC ports for DISPLAY_VER < 30,
> +		 * although in theory it could work on TypeC legacy ports.
>  		 */
> -		drm_WARN_ON(dev, intel_encoder_is_tc(intel_encoder));
> +		if (DISPLAY_VER(dev_priv) < 30)
> +			drm_WARN_ON(dev, intel_encoder_is_tc(intel_encoder));
>  		type = DRM_MODE_CONNECTOR_eDP;
>  		intel_encoder->type = INTEL_OUTPUT_EDP;
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
> index 60baf4072dc9..c6a80c4e2166 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -20,6 +20,8 @@ struct intel_atomic_state;
>  struct intel_connector;
>  struct intel_crtc_state;
>  struct intel_digital_port;
> +struct intel_display;
> +struct intel_display_runtime_info;
>  struct intel_dp;
>  struct intel_encoder;
>  
> @@ -204,5 +206,8 @@ bool intel_dp_link_params_valid(struct intel_dp *intel_dp, int link_rate,
>  				u8 lane_count);
>  bool intel_dp_has_connector(struct intel_dp *intel_dp,
>  			    const struct drm_connector_state *conn_state);
> +void
> +intel_dp_check_edp_typec_support(struct intel_display *display,
> +				 struct intel_display_runtime_info *display_runtime);
>  
>  #endif /* __INTEL_DP_H__ */
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 8d758947f301..2743a2dd0a3d 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -4575,4 +4575,7 @@ enum skl_power_gate {
>  
>  #define MTL_MEDIA_GSI_BASE		0x380000
>  
> +#define PICA_PHY_CONFIG_CONTROL		_MMIO(0x16FE68)
> +#define   EDP_ON_TYPEC			REG_BIT(31)
> +
>  #endif /* _I915_REG_H_ */

-- 
Jani Nikula, Intel
