Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F4066249FF
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Nov 2022 19:54:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0E7110E7C7;
	Thu, 10 Nov 2022 18:54:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70C8C10E7C7
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Nov 2022 18:54:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668106449; x=1699642449;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=1S7T1IRcA8MPAIMm6KjdIz8jfoSMI3Y0j/RvFJBJBt0=;
 b=PBQRVYG5ZR/NbwbWaursE8U4Cjqrb0TKBnzOhTKpMRKdH2CL5RYsQCVG
 dKwOi46n8IeNK/6P+YjTfkuBQ2mGEvRKPTPuzSgt0y07ABE7IqGYt+3Ig
 o28GkB8WM2ulhul/DbfM51A3wdso5rlD7xSoVzvtzTFJbi9XpOihL7xiQ
 CQRo74zJ9GLBCU9QLGo7HSfUF/WxAn8BUPnAqdm56pHnmUJrjDvcgbksZ
 R1op5Xva8ZIyvbNKleUZziiCtR+mT1Ddr0LkWjuy1mey0Sq+u647aP9b2
 LI6DYfG+cID6QYzQYJ76evcuywEohgpGjUGUlmRltrjA8oWxDMEvzvAWU w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10527"; a="311408904"
X-IronPort-AV: E=Sophos;i="5.96,154,1665471600"; d="scan'208";a="311408904"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2022 10:52:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10527"; a="742972169"
X-IronPort-AV: E=Sophos;i="5.96,154,1665471600"; d="scan'208";a="742972169"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga002.fm.intel.com with SMTP; 10 Nov 2022 10:52:01 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 10 Nov 2022 20:52:00 +0200
Date: Thu, 10 Nov 2022 20:52:00 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <Y21IUHqtwgaVx2VX@intel.com>
References: <20221107170917.3566758-5-imre.deak@intel.com>
 <20221108151828.3761358-3-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221108151828.3761358-3-imre.deak@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v3 4/9] drm/i915/tgl+: Enable display DC
 power states on all eDP ports
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Nov 08, 2022 at 05:18:25PM +0200, Imre Deak wrote:
> Starting with TGL eDP is supported on ports B+ (besides port A), so make
> sure DC states are not blocked on any such ports. For this add an
> AUX_IO_<port> power domain for each port with eDP support. These domains
> similarly to AUX_IO_A enable only the AUX_IO_<port> power well for an
> enabled port, whereas the existing AUX_<port> domains enable both the
> AUX_IO_<port> and the DC_OFF power wells as required by DP AUX transfers.
> 
> v2: (Ville)
> - Split the change using AUX vs. AUX_IO on port A to a separate patch.
> - Select AUX_IO vs. AUX based on crtc_state->has_psr instead of
>   is_edp().
> v3:
> - Rebased on checking intel_encoder_can_psr() instead of crtc->has_psr.
> 
> Cc: Ville Syrj�l� <ville.syrjala@linux.intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c      |  6 ++-
>  .../drm/i915/display/intel_display_power.c    | 30 +++++++++++
>  .../drm/i915/display/intel_display_power.h    |  7 +++
>  .../i915/display/intel_display_power_map.c    | 53 +++++++++++++++++--
>  4 files changed, 89 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index ca236cd7f9b76..a087609223c60 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -848,6 +848,8 @@ bool intel_ddi_get_hw_state(struct intel_encoder *encoder,
>  static enum intel_display_power_domain
>  intel_ddi_main_link_aux_domain(struct intel_digital_port *dig_port)
>  {
> +	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
> +
>  	/* ICL+ HW requires corresponding AUX IOs to be powered up for PSR with
>  	 * DC states enabled at the same time, while for driver initiated AUX
>  	 * transfers we need the same AUX IOs to be powered but with DC states
> @@ -860,8 +862,8 @@ intel_ddi_main_link_aux_domain(struct intel_digital_port *dig_port)
>  	 * Note that PSR is enabled only on Port A even though this function
>  	 * returns the correct domain for other ports too.
>  	 */
> -	if (dig_port->aux_ch == AUX_CH_A && intel_encoder_can_psr(&dig_port->base))
> -		return POWER_DOMAIN_AUX_IO_A;
> +	if (intel_encoder_can_psr(&dig_port->base))
> +		return intel_display_power_aux_io_domain(i915, dig_port->aux_ch);
>  	else
>  		return intel_aux_power_domain(dig_port);
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> index 78f1749397e1d..61c6a3616db08 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -131,6 +131,16 @@ intel_display_power_domain_str(enum intel_display_power_domain domain)
>  		return "AUDIO_PLAYBACK";
>  	case POWER_DOMAIN_AUX_IO_A:
>  		return "AUX_IO_A";
> +	case POWER_DOMAIN_AUX_IO_B:
> +		return "AUX_IO_B";
> +	case POWER_DOMAIN_AUX_IO_C:
> +		return "AUX_IO_C";
> +	case POWER_DOMAIN_AUX_IO_D:
> +		return "AUX_IO_D";
> +	case POWER_DOMAIN_AUX_IO_E:
> +		return "AUX_IO_E";
> +	case POWER_DOMAIN_AUX_IO_F:
> +		return "AUX_IO_F";
>  	case POWER_DOMAIN_AUX_A:
>  		return "AUX_A";
>  	case POWER_DOMAIN_AUX_B:
> @@ -2356,6 +2366,7 @@ struct intel_ddi_port_domains {
>  
>  	enum intel_display_power_domain ddi_lanes;
>  	enum intel_display_power_domain ddi_io;
> +	enum intel_display_power_domain aux_io;
>  	enum intel_display_power_domain aux_legacy_usbc;
>  	enum intel_display_power_domain aux_tbt;
>  };
> @@ -2370,6 +2381,7 @@ i9xx_port_domains[] = {
>  
>  		.ddi_lanes = POWER_DOMAIN_PORT_DDI_LANES_A,
>  		.ddi_io = POWER_DOMAIN_PORT_DDI_IO_A,
> +		.aux_io = POWER_DOMAIN_AUX_IO_A,
>  		.aux_legacy_usbc = POWER_DOMAIN_AUX_A,
>  		.aux_tbt = POWER_DOMAIN_INVALID,
>  	},
> @@ -2385,6 +2397,7 @@ d11_port_domains[] = {
>  
>  		.ddi_lanes = POWER_DOMAIN_PORT_DDI_LANES_A,
>  		.ddi_io = POWER_DOMAIN_PORT_DDI_IO_A,
> +		.aux_io = POWER_DOMAIN_AUX_IO_A,
>  		.aux_legacy_usbc = POWER_DOMAIN_AUX_A,
>  		.aux_tbt = POWER_DOMAIN_INVALID,
>  	}, {
> @@ -2395,6 +2408,7 @@ d11_port_domains[] = {
>  
>  		.ddi_lanes = POWER_DOMAIN_PORT_DDI_LANES_C,
>  		.ddi_io = POWER_DOMAIN_PORT_DDI_IO_C,
> +		.aux_io = POWER_DOMAIN_AUX_IO_C,
>  		.aux_legacy_usbc = POWER_DOMAIN_AUX_C,
>  		.aux_tbt = POWER_DOMAIN_AUX_TBT1,
>  	},
> @@ -2410,6 +2424,7 @@ d12_port_domains[] = {
>  
>  		.ddi_lanes = POWER_DOMAIN_PORT_DDI_LANES_A,
>  		.ddi_io = POWER_DOMAIN_PORT_DDI_IO_A,
> +		.aux_io = POWER_DOMAIN_AUX_IO_A,
>  		.aux_legacy_usbc = POWER_DOMAIN_AUX_A,
>  		.aux_tbt = POWER_DOMAIN_INVALID,
>  	}, {
> @@ -2420,6 +2435,7 @@ d12_port_domains[] = {
>  
>  		.ddi_lanes = POWER_DOMAIN_PORT_DDI_LANES_TC1,
>  		.ddi_io = POWER_DOMAIN_PORT_DDI_IO_TC1,
> +		.aux_io = POWER_DOMAIN_INVALID,
>  		.aux_legacy_usbc = POWER_DOMAIN_AUX_USBC1,
>  		.aux_tbt = POWER_DOMAIN_AUX_TBT1,
>  	},
> @@ -2435,6 +2451,7 @@ d13_port_domains[] = {
>  
>  		.ddi_lanes = POWER_DOMAIN_PORT_DDI_LANES_A,
>  		.ddi_io = POWER_DOMAIN_PORT_DDI_IO_A,
> +		.aux_io = POWER_DOMAIN_AUX_IO_A,
>  		.aux_legacy_usbc = POWER_DOMAIN_AUX_A,
>  		.aux_tbt = POWER_DOMAIN_INVALID,
>  	}, {
> @@ -2445,6 +2462,7 @@ d13_port_domains[] = {
>  
>  		.ddi_lanes = POWER_DOMAIN_PORT_DDI_LANES_TC1,
>  		.ddi_io = POWER_DOMAIN_PORT_DDI_IO_TC1,
> +		.aux_io = POWER_DOMAIN_INVALID,
>  		.aux_legacy_usbc = POWER_DOMAIN_AUX_USBC1,
>  		.aux_tbt = POWER_DOMAIN_AUX_TBT1,
>  	}, {
> @@ -2455,6 +2473,7 @@ d13_port_domains[] = {
>  
>  		.ddi_lanes = POWER_DOMAIN_PORT_DDI_LANES_D,
>  		.ddi_io = POWER_DOMAIN_PORT_DDI_IO_D,
> +		.aux_io = POWER_DOMAIN_AUX_IO_D,
>  		.aux_legacy_usbc = POWER_DOMAIN_AUX_D,
>  		.aux_tbt = POWER_DOMAIN_INVALID,
>  	},
> @@ -2532,6 +2551,17 @@ intel_port_domains_for_aux_ch(struct drm_i915_private *i915, enum aux_ch aux_ch)
>  	return NULL;
>  }
>  
> +enum intel_display_power_domain
> +intel_display_power_aux_io_domain(struct drm_i915_private *i915, enum aux_ch aux_ch)
> +{
> +	const struct intel_ddi_port_domains *domains = intel_port_domains_for_aux_ch(i915, aux_ch);
> +
> +	if (drm_WARN_ON(&i915->drm, !domains) || domains->aux_io == POWER_DOMAIN_INVALID)

Was there some valid use case for the INVALID? If not I'd include
it in the warn as well.

> +		return POWER_DOMAIN_AUX_IO_A;
> +
> +	return domains->aux_io + (int)(aux_ch - domains->aux_ch_start);
> +}
> +
>  enum intel_display_power_domain
>  intel_display_power_legacy_aux_domain(struct drm_i915_private *i915, enum aux_ch aux_ch)
>  {
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
> index dd0ad99f17056..73c7db969dde6 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
> @@ -79,6 +79,11 @@ enum intel_display_power_domain {
>  	POWER_DOMAIN_AUDIO_PLAYBACK,
>  
>  	POWER_DOMAIN_AUX_IO_A,
> +	POWER_DOMAIN_AUX_IO_B,
> +	POWER_DOMAIN_AUX_IO_C,
> +	POWER_DOMAIN_AUX_IO_D,
> +	POWER_DOMAIN_AUX_IO_E,
> +	POWER_DOMAIN_AUX_IO_F,
>  
>  	POWER_DOMAIN_AUX_A,
>  	POWER_DOMAIN_AUX_B,
> @@ -255,6 +260,8 @@ intel_display_power_ddi_lanes_domain(struct drm_i915_private *i915, enum port po
>  enum intel_display_power_domain
>  intel_display_power_ddi_io_domain(struct drm_i915_private *i915, enum port port);
>  enum intel_display_power_domain
> +intel_display_power_aux_io_domain(struct drm_i915_private *i915, enum aux_ch aux_ch);
> +enum intel_display_power_domain
>  intel_display_power_legacy_aux_domain(struct drm_i915_private *i915, enum aux_ch aux_ch);
>  enum intel_display_power_domain
>  intel_display_power_tbt_aux_domain(struct drm_i915_private *i915, enum aux_ch aux_ch);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/drivers/gpu/drm/i915/display/intel_display_power_map.c
> index 43454022e6a66..b82c0d0a80c5f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
> @@ -170,6 +170,8 @@ I915_DECL_PW_DOMAINS(vlv_pwdoms_display,
>  	POWER_DOMAIN_VGA,
>  	POWER_DOMAIN_AUDIO_MMIO,
>  	POWER_DOMAIN_AUDIO_PLAYBACK,
> +	POWER_DOMAIN_AUX_IO_B,
> +	POWER_DOMAIN_AUX_IO_C,
>  	POWER_DOMAIN_AUX_B,
>  	POWER_DOMAIN_AUX_C,
>  	POWER_DOMAIN_GMBUS,
> @@ -179,6 +181,8 @@ I915_DECL_PW_DOMAINS(vlv_pwdoms_dpio_cmn_bc,
>  	POWER_DOMAIN_PORT_DDI_LANES_B,
>  	POWER_DOMAIN_PORT_DDI_LANES_C,
>  	POWER_DOMAIN_PORT_CRT,
> +	POWER_DOMAIN_AUX_IO_B,
> +	POWER_DOMAIN_AUX_IO_C,
>  	POWER_DOMAIN_AUX_B,
>  	POWER_DOMAIN_AUX_C,
>  	POWER_DOMAIN_INIT);
> @@ -186,6 +190,8 @@ I915_DECL_PW_DOMAINS(vlv_pwdoms_dpio_cmn_bc,
>  I915_DECL_PW_DOMAINS(vlv_pwdoms_dpio_tx_bc_lanes,
>  	POWER_DOMAIN_PORT_DDI_LANES_B,
>  	POWER_DOMAIN_PORT_DDI_LANES_C,
> +	POWER_DOMAIN_AUX_IO_B,
> +	POWER_DOMAIN_AUX_IO_C,
>  	POWER_DOMAIN_AUX_B,
>  	POWER_DOMAIN_AUX_C,
>  	POWER_DOMAIN_INIT);
> @@ -243,6 +249,9 @@ I915_DECL_PW_DOMAINS(chv_pwdoms_display,
>  	POWER_DOMAIN_VGA,
>  	POWER_DOMAIN_AUDIO_MMIO,
>  	POWER_DOMAIN_AUDIO_PLAYBACK,
> +	POWER_DOMAIN_AUX_IO_B,
> +	POWER_DOMAIN_AUX_IO_C,
> +	POWER_DOMAIN_AUX_IO_D,
>  	POWER_DOMAIN_AUX_B,
>  	POWER_DOMAIN_AUX_C,
>  	POWER_DOMAIN_AUX_D,
> @@ -252,12 +261,15 @@ I915_DECL_PW_DOMAINS(chv_pwdoms_display,
>  I915_DECL_PW_DOMAINS(chv_pwdoms_dpio_cmn_bc,
>  	POWER_DOMAIN_PORT_DDI_LANES_B,
>  	POWER_DOMAIN_PORT_DDI_LANES_C,
> +	POWER_DOMAIN_AUX_IO_B,
> +	POWER_DOMAIN_AUX_IO_C,
>  	POWER_DOMAIN_AUX_B,
>  	POWER_DOMAIN_AUX_C,
>  	POWER_DOMAIN_INIT);
>  
>  I915_DECL_PW_DOMAINS(chv_pwdoms_dpio_cmn_d,
>  	POWER_DOMAIN_PORT_DDI_LANES_D,
> +	POWER_DOMAIN_AUX_IO_D,
>  	POWER_DOMAIN_AUX_D,
>  	POWER_DOMAIN_INIT);
>  
> @@ -305,6 +317,9 @@ static const struct i915_power_well_desc_list chv_power_wells[] = {
>  	POWER_DOMAIN_VGA, \
>  	POWER_DOMAIN_AUDIO_MMIO, \
>  	POWER_DOMAIN_AUDIO_PLAYBACK, \
> +	POWER_DOMAIN_AUX_IO_B, \
> +	POWER_DOMAIN_AUX_IO_C, \
> +	POWER_DOMAIN_AUX_IO_D, \
>  	POWER_DOMAIN_AUX_B, \
>  	POWER_DOMAIN_AUX_C, \
>  	POWER_DOMAIN_AUX_D
> @@ -407,6 +422,8 @@ static const struct i915_power_well_desc_list skl_power_wells[] = {
>  	POWER_DOMAIN_VGA, \
>  	POWER_DOMAIN_AUDIO_MMIO, \
>  	POWER_DOMAIN_AUDIO_PLAYBACK, \
> +	POWER_DOMAIN_AUX_IO_B, \
> +	POWER_DOMAIN_AUX_IO_C, \
>  	POWER_DOMAIN_AUX_B, \
>  	POWER_DOMAIN_AUX_C
>  
> @@ -430,6 +447,8 @@ I915_DECL_PW_DOMAINS(bxt_pwdoms_dpio_cmn_a,
>  I915_DECL_PW_DOMAINS(bxt_pwdoms_dpio_cmn_bc,
>  	POWER_DOMAIN_PORT_DDI_LANES_B,
>  	POWER_DOMAIN_PORT_DDI_LANES_C,
> +	POWER_DOMAIN_AUX_IO_B,
> +	POWER_DOMAIN_AUX_IO_C,
>  	POWER_DOMAIN_AUX_B,
>  	POWER_DOMAIN_AUX_C,
>  	POWER_DOMAIN_INIT);
> @@ -483,6 +502,8 @@ static const struct i915_power_well_desc_list bxt_power_wells[] = {
>  	POWER_DOMAIN_VGA, \
>  	POWER_DOMAIN_AUDIO_MMIO, \
>  	POWER_DOMAIN_AUDIO_PLAYBACK, \
> +	POWER_DOMAIN_AUX_IO_B, \
> +	POWER_DOMAIN_AUX_IO_C, \
>  	POWER_DOMAIN_AUX_B, \
>  	POWER_DOMAIN_AUX_C
>  
> @@ -509,11 +530,13 @@ I915_DECL_PW_DOMAINS(glk_pwdoms_dpio_cmn_a,
>  
>  I915_DECL_PW_DOMAINS(glk_pwdoms_dpio_cmn_b,
>  	POWER_DOMAIN_PORT_DDI_LANES_B,
> +	POWER_DOMAIN_AUX_IO_B,
>  	POWER_DOMAIN_AUX_B,
>  	POWER_DOMAIN_INIT);
>  
>  I915_DECL_PW_DOMAINS(glk_pwdoms_dpio_cmn_c,
>  	POWER_DOMAIN_PORT_DDI_LANES_C,
> +	POWER_DOMAIN_AUX_IO_C,
>  	POWER_DOMAIN_AUX_C,
>  	POWER_DOMAIN_INIT);
>  
> @@ -523,10 +546,12 @@ I915_DECL_PW_DOMAINS(glk_pwdoms_aux_a,
>  	POWER_DOMAIN_INIT);
>  
>  I915_DECL_PW_DOMAINS(glk_pwdoms_aux_b,
> +	POWER_DOMAIN_AUX_IO_B,
>  	POWER_DOMAIN_AUX_B,
>  	POWER_DOMAIN_INIT);
>  
>  I915_DECL_PW_DOMAINS(glk_pwdoms_aux_c,
> +	POWER_DOMAIN_AUX_IO_C,
>  	POWER_DOMAIN_AUX_C,
>  	POWER_DOMAIN_INIT);
>  
> @@ -617,6 +642,11 @@ I915_DECL_PW_DOMAINS(icl_pwdoms_pw_4,
>  	POWER_DOMAIN_VGA, \
>  	POWER_DOMAIN_AUDIO_MMIO, \
>  	POWER_DOMAIN_AUDIO_PLAYBACK, \
> +	POWER_DOMAIN_AUX_IO_B, \
> +	POWER_DOMAIN_AUX_IO_C, \
> +	POWER_DOMAIN_AUX_IO_D, \
> +	POWER_DOMAIN_AUX_IO_E, \
> +	POWER_DOMAIN_AUX_IO_F, \
>  	POWER_DOMAIN_AUX_B, \
>  	POWER_DOMAIN_AUX_C, \
>  	POWER_DOMAIN_AUX_D, \
> @@ -660,11 +690,21 @@ I915_DECL_PW_DOMAINS(icl_pwdoms_ddi_io_f,	POWER_DOMAIN_PORT_DDI_IO_F);
>  I915_DECL_PW_DOMAINS(icl_pwdoms_aux_a,
>  	POWER_DOMAIN_AUX_IO_A,
>  	POWER_DOMAIN_AUX_A);
> -I915_DECL_PW_DOMAINS(icl_pwdoms_aux_b,		POWER_DOMAIN_AUX_B);
> -I915_DECL_PW_DOMAINS(icl_pwdoms_aux_c,		POWER_DOMAIN_AUX_C);
> -I915_DECL_PW_DOMAINS(icl_pwdoms_aux_d,		POWER_DOMAIN_AUX_D);
> -I915_DECL_PW_DOMAINS(icl_pwdoms_aux_e,		POWER_DOMAIN_AUX_E);
> -I915_DECL_PW_DOMAINS(icl_pwdoms_aux_f,		POWER_DOMAIN_AUX_F);
> +I915_DECL_PW_DOMAINS(icl_pwdoms_aux_b,
> +	POWER_DOMAIN_AUX_IO_B,
> +	POWER_DOMAIN_AUX_B);
> +I915_DECL_PW_DOMAINS(icl_pwdoms_aux_c,
> +	POWER_DOMAIN_AUX_IO_C,
> +	POWER_DOMAIN_AUX_C);
> +I915_DECL_PW_DOMAINS(icl_pwdoms_aux_d,
> +	POWER_DOMAIN_AUX_IO_D,
> +	POWER_DOMAIN_AUX_D);
> +I915_DECL_PW_DOMAINS(icl_pwdoms_aux_e,
> +	POWER_DOMAIN_AUX_IO_E,
> +	POWER_DOMAIN_AUX_E);
> +I915_DECL_PW_DOMAINS(icl_pwdoms_aux_f,
> +	POWER_DOMAIN_AUX_IO_F,
> +	POWER_DOMAIN_AUX_F);
>  I915_DECL_PW_DOMAINS(icl_pwdoms_aux_tbt1,	POWER_DOMAIN_AUX_TBT1);
>  I915_DECL_PW_DOMAINS(icl_pwdoms_aux_tbt2,	POWER_DOMAIN_AUX_TBT2);
>  I915_DECL_PW_DOMAINS(icl_pwdoms_aux_tbt3,	POWER_DOMAIN_AUX_TBT3);
> @@ -1215,6 +1255,9 @@ I915_DECL_PW_DOMAINS(xelpd_pwdoms_pw_a,
>  	POWER_DOMAIN_PORT_DDI_LANES_TC4, \
>  	POWER_DOMAIN_VGA, \
>  	POWER_DOMAIN_AUDIO_PLAYBACK, \
> +	POWER_DOMAIN_AUX_IO_C, \
> +	POWER_DOMAIN_AUX_IO_D, \
> +	POWER_DOMAIN_AUX_IO_E, \
>  	POWER_DOMAIN_AUX_C, \
>  	POWER_DOMAIN_AUX_D, \
>  	POWER_DOMAIN_AUX_E, \
> -- 
> 2.37.1

-- 
Ville Syrj�l�
Intel
