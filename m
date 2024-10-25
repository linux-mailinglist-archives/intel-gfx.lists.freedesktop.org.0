Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E7C69B083E
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2024 17:29:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89C6E10EB07;
	Fri, 25 Oct 2024 15:29:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BS9U7tTY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21A1010EB07;
 Fri, 25 Oct 2024 15:29:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729870171; x=1761406171;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=xYQ/ymMxxT07y9Uw3eBfTHKsp+AERT/pU36d79GcyoY=;
 b=BS9U7tTYMk73h16g7rvrcC/eFS+Nkv4qqaEXHTZRWozYMeccA5z8mRiO
 oh41PECdQ60A9YHgdC1VxBiHVJhr3A1bUEEusntmqDRgVRTrmxWblf9qI
 Oxe1I37Uk5rqJZfk7Cq/g+gdMAawdU1+jrzavINeR0eABwzMZLgyJ4rDh
 /n1ADPz02V/WnOsg+SJ2DjTcpxYbHZc33NlhwicPO20EbBjn5bgT89Mfv
 H89cidy2OdBoASprrF9sAZPMFOb8DCn7cfTWzBG06E2u+6GG7Esil3pz8
 /+UrELpxyHHn4EcoEV0f08TOcP7/ZjGTE6AGTYXPT5R8w8r2NDvkxVsCC A==;
X-CSE-ConnectionGUID: cVtiT3K0Sk+hEJ3PvlpMfg==
X-CSE-MsgGUID: qqB4lJeSRvCtkPe5f8wwFw==
X-IronPort-AV: E=McAfee;i="6700,10204,11236"; a="28993634"
X-IronPort-AV: E=Sophos;i="6.11,232,1725346800"; d="scan'208";a="28993634"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2024 08:29:30 -0700
X-CSE-ConnectionGUID: MfOMctUIR2mWPp9blipGkw==
X-CSE-MsgGUID: T9oF2dbaSxWwcf3fHVqW8w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,232,1725346800"; d="scan'208";a="80863236"
Received: from zzombora-mobl1.ti.intel.com (HELO localhost) ([10.245.246.193])
 by orviesa010-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Oct 2024 08:29:28 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Clint Taylor <clinton.a.taylor@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v4 03/11] drm/i915/xe3lpd: Add check to see if edp over
 type c is allowed
In-Reply-To: <20241024223114.785209-4-clinton.a.taylor@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241024223114.785209-1-clinton.a.taylor@intel.com>
 <20241024223114.785209-4-clinton.a.taylor@intel.com>
Date: Fri, 25 Oct 2024 18:29:24 +0300
Message-ID: <87wmhwp5ez.fsf@intel.com>
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

On Thu, 24 Oct 2024, Clint Taylor <clinton.a.taylor@intel.com> wrote:
> From: Suraj Kandpal <suraj.kandpal@intel.com>
>
> Read PICA register to see if edp over type C is possible and then
> add the appropriate tables for it.
>
> --v2
> -remove bool from intel_encoder have it in runtime_info [Jani]
> -initialize the bool in runtime_info init [Jani]
> -dont abbreviate the bool [Jani]
>
> --v3
> -Remove useless display version check [Jani]
> -change the warn on condition [Jani]
> -no need for a different function for edp type c check [Jani]
> -dont add register in i915_reg [Jani]
>
> Bspec: 68846
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>

Acked-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c        | 3 +++
>  drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h   | 3 +++
>  drivers/gpu/drm/i915/display/intel_display_device.c | 5 +++++
>  drivers/gpu/drm/i915/display/intel_display_device.h | 1 +
>  drivers/gpu/drm/i915/display/intel_dp.c             | 7 ++++---
>  5 files changed, 16 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index 8bd5a4d1b735..d05daa7a2b03 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -2257,9 +2257,12 @@ intel_c20_pll_tables_get(struct intel_crtc_state *crtc_state,
>  			 struct intel_encoder *encoder)
>  {
>  	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +	struct intel_display *display = to_intel_display(crtc_state);
>  
>  	if (intel_crtc_has_dp_encoder(crtc_state)) {
>  		if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP)) {
> +			if (DISPLAY_RUNTIME_INFO(display)->edp_typec_support)
> +				return xe3lpd_c20_dp_edp_tables;
>  			if (DISPLAY_VER_FULL(i915) == IP_VER(14, 1))
>  				return xe2hpd_c20_edp_tables;
>  		}
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> index ab3ae110b68f..e8ebb12155a4 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> @@ -363,4 +363,7 @@
>  #define HDMI_DIV_MASK		REG_GENMASK16(2, 0)
>  #define HDMI_DIV(val)		REG_FIELD_PREP16(HDMI_DIV_MASK, val)
>  
> +#define PICA_PHY_CONFIG_CONTROL		_MMIO(0x16FE68)
> +#define   EDP_ON_TYPEC			REG_BIT(31)
> +
>  #endif /* __INTEL_CX0_REG_DEFS_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
> index aa22189e3853..949838308ec9 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> @@ -9,6 +9,7 @@
>  
>  #include "i915_drv.h"
>  #include "i915_reg.h"
> +#include "intel_cx0_phy_regs.h"
>  #include "intel_de.h"
>  #include "intel_display.h"
>  #include "intel_display_device.h"
> @@ -1685,6 +1686,10 @@ static void __intel_display_device_info_runtime_init(struct drm_i915_private *i9
>  		}
>  	}
>  
> +	if (DISPLAY_VER(i915) >= 30)
> +		display_runtime->edp_typec_support =
> +			intel_de_read(display, PICA_PHY_CONFIG_CONTROL) & EDP_ON_TYPEC;
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
> index 7e29619ba040..9f015b530289 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -6441,10 +6441,11 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
>  
>  	if (_intel_dp_is_port_edp(dev_priv, intel_encoder->devdata, port)) {
>  		/*
> -		 * Currently we don't support eDP on TypeC ports, although in
> -		 * theory it could work on TypeC legacy ports.
> +		 * Currently we don't support eDP on TypeC ports for DISPLAY_VER < 30,
> +		 * although in theory it could work on TypeC legacy ports.
>  		 */
> -		drm_WARN_ON(dev, intel_encoder_is_tc(intel_encoder));
> +		drm_WARN_ON(dev, intel_encoder_is_tc(intel_encoder) &&
> +			    DISPLAY_VER(dev_priv) < 30);
>  		type = DRM_MODE_CONNECTOR_eDP;
>  		intel_encoder->type = INTEL_OUTPUT_EDP;

-- 
Jani Nikula, Intel
