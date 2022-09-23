Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 597D45E77AC
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Sep 2022 11:53:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF8C510E7FC;
	Fri, 23 Sep 2022 09:53:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5261410E7F9
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Sep 2022 09:53:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663926799; x=1695462799;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=TBqZEzFll1KcPm/VMkLdsU3kvRoN+gX/KajsukidEfc=;
 b=XB64RmQ1N0O4h4whY7z441DPQJUYkdc06h6qhn+r5Bg83m1+GdMUSqfg
 9fqVZ+8i/tfUzGWz79QD2ZWAQs/MV+xmiDRbwpJ+MXsXXFmbDFmFYeilZ
 NOFxA6CDR63rV+yExHHUUJumeah2Vd+KRP3ekY7pYOuoZyqhfgcyeiY7h
 DZ5aEQyvU72C6LgOnmDDHlENi3KhadcQSoXqTzKQLde8fvTqXCxIZoMHc
 w0rQbBpj7ajOaTo76YNt3z49l9QdZA54te1u0HteLqjd3P9k0/pko8xq2
 PqLftWPEvh+lCbaRf0qIkg6dO0OzgkSsdd74bjQa2v81G8+BXnzMyznqK w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10478"; a="326887882"
X-IronPort-AV: E=Sophos;i="5.93,337,1654585200"; d="scan'208";a="326887882"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2022 02:53:10 -0700
X-IronPort-AV: E=Sophos;i="5.93,337,1654585200"; d="scan'208";a="682604949"
Received: from armannov-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.61.93])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2022 02:53:07 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220921172300.130964-1-balasubramani.vivekanandan@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220921172300.130964-1-balasubramani.vivekanandan@intel.com>
Date: Fri, 23 Sep 2022 12:52:48 +0300
Message-ID: <87bkr64du7.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/display: Don't use port enum as
 register offset
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

On Wed, 21 Sep 2022, Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com> wrote:
> Display DDI ports are enumerated as PORT_A,PORT_B... . The enums are
> also used as an index to access the DDI_BUF_CTL register for the port.
>
> With the introduction of TypeC ports, new enums PORT_TC1,PORT_TC2.. were
> added starting from enum value 4 to match the index position of the
> DDI_BUF_CTL register of those ports. Because those early platforms had
> only 3 non-TypeC ports PORT_A,PORT_B, PORT_C followed by TypeC ports.
> So the enums PORT_D,PORT_E.. and PORT_TC1,PORT_TC2.. used the same enum
> values.
>
> Driver also used the condition `if (port > PORT_TC1)` to identify if a
> port is a TypeC port or non-TypeC.
>
> From XELPD, additional non-TypeC ports were added in the platform
> calling them as PORT D, PORT E and the DDI registers for those ports
> were positioned after TypeC ports.  So the enums PORT_D and PORT_E can't
> be used as their values do not match with register position. It led to
> creating new enums PORT_D_XELPD, PORT_E_XELPD for ports D and E.
>
> The condition `if (port > PORT_TC1)` was no more valid for XELPD to
> identify a TypeC port. Also it led to many additional special checks for
> ports PORT_D_XELPD/PORT_E_XELPD.
>
> With new platforms indicating that the DDI register positions of ports
> can vary across platforms it makes no more feasible to maintain the port
> enum values to match the DDI register position.
>
> Port DDI register position is now maintained in a separate datastructure
> part of the  platform device info and ports are enumerated independently.
> With enums for TypeC ports defined at the bottom, driver can easily
> identify the TypeC ports.
>
> Removed a WARN_ON as it is no longer valid. The WARN was added in
> commit - "327f8d8c336d drm/i915: simplify setting of ddi_io_power_domain"
> The ddi_io_power_domain calculation has changed completely since the
> commit and doesn't need this WARN_ON anymore.
>
> Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>

I agree with the premise that defining platform specific port enums such
as PORT_D_XELPD to tackle differences in register offsets is handling
the problem at the wrong abstraction level.

I am not (at least not yet) convinced with the approach of adding
platform specific mappings in .display.ddi_offsets. The main problem I
have with that is adding yet another way to deal with different register
offsets. We already have many, and adding a new one isn't appealing.

Not that this *is* different from .display.pipe_offsets and
.display.trans_offsets which are actual *offsets*. The solution here is
actually misnamed; it's about indexes, not offsets.

Finally, even if we were to choose this approach, this should be split
to at least three separate patches. First, pass i915 to the register
macro, no other changes, totally non-functional. Second, use the
indexes. Third, remove PORT_D_XELPD etc.

I'm still considering alternatives. In the mean time, please find some
random comments on the details inline.

BR,
Jani.

> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c        | 12 ++--
>  drivers/gpu/drm/i915/display/intel_bios.c     |  4 +-
>  drivers/gpu/drm/i915/display/intel_ddi.c      | 63 +++++++-----------
>  drivers/gpu/drm/i915/display/intel_display.c  | 12 ++--
>  drivers/gpu/drm/i915/display/intel_display.h  |  8 +--
>  .../drm/i915/display/intel_display_power.c    | 40 +----------
>  drivers/gpu/drm/i915/display/intel_fdi.c      | 14 ++--
>  drivers/gpu/drm/i915/display/intel_tc.c       |  6 +-
>  drivers/gpu/drm/i915/gvt/display.c            | 30 ++++-----
>  drivers/gpu/drm/i915/gvt/handlers.c           | 17 +++--
>  drivers/gpu/drm/i915/i915_pci.c               | 66 ++++++++++++++++---
>  drivers/gpu/drm/i915/i915_reg.h               |  8 ++-
>  drivers/gpu/drm/i915/intel_device_info.h      |  1 +
>  drivers/gpu/drm/i915/intel_gvt_mmio_table.c   | 10 +--
>  include/drm/i915_component.h                  |  2 +-
>  15 files changed, 144 insertions(+), 149 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
> index ed4d93942dbd..70098b67149b 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -548,11 +548,11 @@ static void gen11_dsi_enable_ddi_buffer(struct intel_encoder *encoder)
>  	enum port port;
>  
>  	for_each_dsi_port(port, intel_dsi->ports) {
> -		tmp = intel_de_read(dev_priv, DDI_BUF_CTL(port));
> +		tmp = intel_de_read(dev_priv, DDI_BUF_CTL(dev_priv, port));
>  		tmp |= DDI_BUF_CTL_ENABLE;
> -		intel_de_write(dev_priv, DDI_BUF_CTL(port), tmp);
> +		intel_de_write(dev_priv, DDI_BUF_CTL(dev_priv, port), tmp);
>  
> -		if (wait_for_us(!(intel_de_read(dev_priv, DDI_BUF_CTL(port)) &
> +		if (wait_for_us(!(intel_de_read(dev_priv, DDI_BUF_CTL(dev_priv, port)) &
>  				  DDI_BUF_IS_IDLE),
>  				  500))
>  			drm_err(&dev_priv->drm, "DDI port:%c buffer idle\n",
> @@ -1400,11 +1400,11 @@ static void gen11_dsi_disable_port(struct intel_encoder *encoder)
>  
>  	gen11_dsi_ungate_clocks(encoder);
>  	for_each_dsi_port(port, intel_dsi->ports) {
> -		tmp = intel_de_read(dev_priv, DDI_BUF_CTL(port));
> +		tmp = intel_de_read(dev_priv, DDI_BUF_CTL(dev_priv, port));
>  		tmp &= ~DDI_BUF_CTL_ENABLE;
> -		intel_de_write(dev_priv, DDI_BUF_CTL(port), tmp);
> +		intel_de_write(dev_priv, DDI_BUF_CTL(dev_priv, port), tmp);
>  
> -		if (wait_for_us((intel_de_read(dev_priv, DDI_BUF_CTL(port)) &
> +		if (wait_for_us((intel_de_read(dev_priv, DDI_BUF_CTL(dev_priv, port)) &
>  				 DDI_BUF_IS_IDLE),
>  				 8))
>  			drm_err(&dev_priv->drm,
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> index 4c543e8205ca..ab472fa757d8 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -2436,8 +2436,8 @@ static enum port dvo_port_to_port(struct drm_i915_private *i915,
>  		[PORT_A] = { DVO_PORT_HDMIA, DVO_PORT_DPA, -1 },
>  		[PORT_B] = { DVO_PORT_HDMIB, DVO_PORT_DPB, -1 },
>  		[PORT_C] = { DVO_PORT_HDMIC, DVO_PORT_DPC, -1 },
> -		[PORT_D_XELPD] = { DVO_PORT_HDMID, DVO_PORT_DPD, -1 },
> -		[PORT_E_XELPD] = { DVO_PORT_HDMIE, DVO_PORT_DPE, -1 },
> +		[PORT_D] = { DVO_PORT_HDMID, DVO_PORT_DPD, -1 },
> +		[PORT_E] = { DVO_PORT_HDMIE, DVO_PORT_DPE, -1 },
>  		[PORT_TC1] = { DVO_PORT_HDMIF, DVO_PORT_DPF, -1 },
>  		[PORT_TC2] = { DVO_PORT_HDMIG, DVO_PORT_DPG, -1 },
>  		[PORT_TC3] = { DVO_PORT_HDMIH, DVO_PORT_DPH, -1 },
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 643832d55c28..73ef6e97c446 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -172,7 +172,7 @@ void intel_wait_ddi_buf_idle(struct drm_i915_private *dev_priv,
>  		return;
>  	}
>  
> -	if (wait_for_us((intel_de_read(dev_priv, DDI_BUF_CTL(port)) &
> +	if (wait_for_us((intel_de_read(dev_priv, DDI_BUF_CTL(dev_priv, port)) &
>  			 DDI_BUF_IS_IDLE), 8))
>  		drm_err(&dev_priv->drm, "Timeout waiting for DDI BUF %c to get idle\n",
>  			port_name(port));
> @@ -189,7 +189,7 @@ static void intel_wait_ddi_buf_active(struct drm_i915_private *dev_priv,
>  		return;
>  	}
>  
> -	ret = _wait_for(!(intel_de_read(dev_priv, DDI_BUF_CTL(port)) &
> +	ret = _wait_for(!(intel_de_read(dev_priv, DDI_BUF_CTL(dev_priv, port)) &
>  			  DDI_BUF_IS_IDLE), IS_DG2(dev_priv) ? 1200 : 500, 10, 10);
>  
>  	if (ret)
> @@ -730,7 +730,7 @@ static void intel_ddi_get_encoder_pipes(struct intel_encoder *encoder,
>  	if (!wakeref)
>  		return;
>  
> -	tmp = intel_de_read(dev_priv, DDI_BUF_CTL(port));
> +	tmp = intel_de_read(dev_priv, DDI_BUF_CTL(dev_priv, port));
>  	if (!(tmp & DDI_BUF_CTL_ENABLE))
>  		goto out;
>  
> @@ -1397,8 +1397,8 @@ hsw_set_signal_levels(struct intel_encoder *encoder,
>  	intel_dp->DP &= ~DDI_BUF_EMP_MASK;
>  	intel_dp->DP |= signal_levels;
>  
> -	intel_de_write(dev_priv, DDI_BUF_CTL(port), intel_dp->DP);
> -	intel_de_posting_read(dev_priv, DDI_BUF_CTL(port));
> +	intel_de_write(dev_priv, DDI_BUF_CTL(dev_priv, port), intel_dp->DP);
> +	intel_de_posting_read(dev_priv, DDI_BUF_CTL(dev_priv, port));
>  }
>  
>  static void _icl_ddi_enable_clock(struct drm_i915_private *i915, i915_reg_t reg,
> @@ -2577,10 +2577,10 @@ static void intel_disable_ddi_buf(struct intel_encoder *encoder,
>  	bool wait = false;
>  	u32 val;
>  
> -	val = intel_de_read(dev_priv, DDI_BUF_CTL(port));
> +	val = intel_de_read(dev_priv, DDI_BUF_CTL(dev_priv, port));
>  	if (val & DDI_BUF_CTL_ENABLE) {
>  		val &= ~DDI_BUF_CTL_ENABLE;
> -		intel_de_write(dev_priv, DDI_BUF_CTL(port), val);
> +		intel_de_write(dev_priv, DDI_BUF_CTL(dev_priv, port), val);
>  		wait = true;
>  	}
>  
> @@ -2909,7 +2909,7 @@ static void intel_enable_ddi_hdmi(struct intel_atomic_state *state,
>  		drm_WARN_ON(&dev_priv->drm, !intel_tc_port_in_legacy_mode(dig_port));
>  		buf_ctl |= DDI_BUF_CTL_TC_PHY_OWNERSHIP;
>  	}
> -	intel_de_write(dev_priv, DDI_BUF_CTL(port), buf_ctl);
> +	intel_de_write(dev_priv, DDI_BUF_CTL(dev_priv, port), buf_ctl);
>  
>  	intel_audio_codec_enable(encoder, crtc_state, conn_state);
>  }
> @@ -3113,9 +3113,9 @@ static void intel_ddi_prepare_link_retrain(struct intel_dp *intel_dp,
>  	dp_tp_ctl = intel_de_read(dev_priv, dp_tp_ctl_reg(encoder, crtc_state));
>  
>  	if (dp_tp_ctl & DP_TP_CTL_ENABLE) {
> -		ddi_buf_ctl = intel_de_read(dev_priv, DDI_BUF_CTL(port));
> +		ddi_buf_ctl = intel_de_read(dev_priv, DDI_BUF_CTL(dev_priv, port));
>  		if (ddi_buf_ctl & DDI_BUF_CTL_ENABLE) {
> -			intel_de_write(dev_priv, DDI_BUF_CTL(port),
> +			intel_de_write(dev_priv, DDI_BUF_CTL(dev_priv, port),
>  				       ddi_buf_ctl & ~DDI_BUF_CTL_ENABLE);
>  			wait = true;
>  		}
> @@ -3145,8 +3145,8 @@ static void intel_ddi_prepare_link_retrain(struct intel_dp *intel_dp,
>  		adlp_tbt_to_dp_alt_switch_wa(encoder);
>  
>  	intel_dp->DP |= DDI_BUF_CTL_ENABLE;
> -	intel_de_write(dev_priv, DDI_BUF_CTL(port), intel_dp->DP);
> -	intel_de_posting_read(dev_priv, DDI_BUF_CTL(port));
> +	intel_de_write(dev_priv, DDI_BUF_CTL(dev_priv, port), intel_dp->DP);
> +	intel_de_posting_read(dev_priv, DDI_BUF_CTL(dev_priv, port));
>  
>  	intel_wait_ddi_buf_active(dev_priv, port);
>  }
> @@ -3805,13 +3805,15 @@ static struct intel_connector *
>  intel_ddi_init_dp_connector(struct intel_digital_port *dig_port)
>  {
>  	struct intel_connector *connector;
> -	enum port port = dig_port->base.port;
> +	struct intel_encoder *encoder = &dig_port->base;
> +	enum port port = encoder->port;
> +	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
>  
>  	connector = intel_connector_alloc();
>  	if (!connector)
>  		return NULL;
>  
> -	dig_port->dp.output_reg = DDI_BUF_CTL(port);
> +	dig_port->dp.output_reg = DDI_BUF_CTL(i915, port);
>  	dig_port->dp.prepare_link_retrain = intel_ddi_prepare_link_retrain;
>  	dig_port->dp.set_link_train = intel_ddi_set_link_train;
>  	dig_port->dp.set_idle_link_train = intel_ddi_set_idle_link_train;
> @@ -4043,12 +4045,13 @@ intel_ddi_init_hdmi_connector(struct intel_digital_port *dig_port)
>  {
>  	struct intel_connector *connector;
>  	enum port port = dig_port->base.port;
> +	struct drm_i915_private *dev_priv = to_i915(dig_port->base.base.dev);

Should be named i915.

>  
>  	connector = intel_connector_alloc();
>  	if (!connector)
>  		return NULL;
>  
> -	dig_port->hdmi.hdmi_reg = DDI_BUF_CTL(port);
> +	dig_port->hdmi.hdmi_reg = DDI_BUF_CTL(dev_priv, port);
>  	intel_hdmi_init_connector(dig_port, connector);
>  
>  	return connector;
> @@ -4084,7 +4087,7 @@ intel_ddi_max_lanes(struct intel_digital_port *dig_port)
>  		return max_lanes;
>  
>  	if (port == PORT_A || port == PORT_E) {
> -		if (intel_de_read(dev_priv, DDI_BUF_CTL(PORT_A)) & DDI_A_4_LANES)
> +		if (intel_de_read(dev_priv, DDI_BUF_CTL(dev_priv, PORT_A)) & DDI_A_4_LANES)
>  			max_lanes = port == PORT_A ? 4 : 0;
>  		else
>  			/* Both A and E share 2 lanes */
> @@ -4112,17 +4115,6 @@ static bool hti_uses_phy(struct drm_i915_private *i915, enum phy phy)
>  	       i915->hti_state & HDPORT_DDI_USED(phy);
>  }
>  
> -static enum hpd_pin xelpd_hpd_pin(struct drm_i915_private *dev_priv,
> -				  enum port port)
> -{
> -	if (port >= PORT_D_XELPD)
> -		return HPD_PORT_D + port - PORT_D_XELPD;
> -	else if (port >= PORT_TC1)
> -		return HPD_PORT_TC1 + port - PORT_TC1;
> -	else
> -		return HPD_PORT_A + port - PORT_A;
> -}
> -
>  static enum hpd_pin dg1_hpd_pin(struct drm_i915_private *dev_priv,
>  				enum port port)
>  {
> @@ -4291,13 +4283,7 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
>  	encoder = &dig_port->base;
>  	encoder->devdata = devdata;
>  
> -	if (DISPLAY_VER(dev_priv) >= 13 && port >= PORT_D_XELPD) {
> -		drm_encoder_init(&dev_priv->drm, &encoder->base, &intel_ddi_funcs,
> -				 DRM_MODE_ENCODER_TMDS,
> -				 "DDI %c/PHY %c",
> -				 port_name(port - PORT_D_XELPD + PORT_D),
> -				 phy_name(phy));
> -	} else if (DISPLAY_VER(dev_priv) >= 12) {

I'd really like to see this happen, the above is ugly.

> +	if (DISPLAY_VER(dev_priv) >= 12) {
>  		enum tc_port tc_port = intel_port_to_tc(dev_priv, port);
>  
>  		drm_encoder_init(&dev_priv->drm, &encoder->base, &intel_ddi_funcs,
> @@ -4427,9 +4413,7 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
>  
>  	intel_ddi_buf_trans_init(encoder);
>  
> -	if (DISPLAY_VER(dev_priv) >= 13)
> -		encoder->hpd_pin = xelpd_hpd_pin(dev_priv, port);
> -	else if (IS_DG1(dev_priv))
> +	if (IS_DG1(dev_priv))
>  		encoder->hpd_pin = dg1_hpd_pin(dev_priv, port);

This too is a separate change. Rule of thumb, split it up, split it up.

>  	else if (IS_ROCKETLAKE(dev_priv))
>  		encoder->hpd_pin = rkl_hpd_pin(dev_priv, port);
> @@ -4446,11 +4430,11 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
>  
>  	if (DISPLAY_VER(dev_priv) >= 11)
>  		dig_port->saved_port_bits =
> -			intel_de_read(dev_priv, DDI_BUF_CTL(port))
> +			intel_de_read(dev_priv, DDI_BUF_CTL(dev_priv, port))
>  			& DDI_BUF_PORT_REVERSAL;
>  	else
>  		dig_port->saved_port_bits =
> -			intel_de_read(dev_priv, DDI_BUF_CTL(port))
> +			intel_de_read(dev_priv, DDI_BUF_CTL(dev_priv, port))
>  			& (DDI_BUF_PORT_REVERSAL | DDI_A_4_LANES);
>  
>  	if (intel_bios_is_lane_reversal_needed(dev_priv, port))
> @@ -4471,7 +4455,6 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
>  		encoder->update_complete = intel_ddi_update_complete;
>  	}
>  
> -	drm_WARN_ON(&dev_priv->drm, port > PORT_I);
>  	dig_port->ddi_io_power_domain = intel_display_power_ddi_io_domain(dev_priv, port);
>  
>  	if (init_dp) {
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index dd008ba8afe3..caf81f4b7f2a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2135,9 +2135,7 @@ bool intel_phy_is_snps(struct drm_i915_private *dev_priv, enum phy phy)
>  
>  enum phy intel_port_to_phy(struct drm_i915_private *i915, enum port port)
>  {
> -	if (DISPLAY_VER(i915) >= 13 && port >= PORT_D_XELPD)
> -		return PHY_D + port - PORT_D_XELPD;
> -	else if (DISPLAY_VER(i915) >= 13 && port >= PORT_TC1)
> +	if (DISPLAY_VER(i915) >= 13 && port >= PORT_TC1)
>  		return PHY_F + port - PORT_TC1;
>  	else if (IS_ALDERLAKE_S(i915) && port >= PORT_TC1)
>  		return PHY_B + port - PORT_TC1;
> @@ -7880,7 +7878,7 @@ static bool intel_ddi_crt_present(struct drm_i915_private *dev_priv)
>  		return false;
>  
>  	/* DDI E can't be used if DDI A requires 4 lanes */
> -	if (intel_de_read(dev_priv, DDI_BUF_CTL(PORT_A)) & DDI_A_4_LANES)
> +	if (intel_de_read(dev_priv, DDI_BUF_CTL(dev_priv, PORT_A)) & DDI_A_4_LANES)
>  		return false;
>  
>  	if (!dev_priv->display.vbt.int_crt_support)
> @@ -7903,7 +7901,7 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
>  		intel_ddi_init(dev_priv, PORT_A);
>  		intel_ddi_init(dev_priv, PORT_B);
>  		intel_ddi_init(dev_priv, PORT_C);
> -		intel_ddi_init(dev_priv, PORT_D_XELPD);
> +		intel_ddi_init(dev_priv, PORT_D);
>  		intel_ddi_init(dev_priv, PORT_TC1);
>  	} else if (IS_ALDERLAKE_P(dev_priv)) {
>  		intel_ddi_init(dev_priv, PORT_A);
> @@ -7966,7 +7964,9 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
>  			intel_crt_init(dev_priv);
>  
>  		/* Haswell uses DDI functions to detect digital outputs. */
> -		found = intel_de_read(dev_priv, DDI_BUF_CTL(PORT_A)) & DDI_INIT_DISPLAY_DETECTED;
> +		found = intel_de_read(dev_priv,
> +				      DDI_BUF_CTL(dev_priv, PORT_A)) &
> +				      DDI_INIT_DISPLAY_DETECTED;
>  		if (found)
>  			intel_ddi_init(dev_priv, PORT_A);
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
> index 884e8e67b17c..e3aa8080b79f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -212,18 +212,14 @@ enum port {
>  	PORT_H,
>  	PORT_I,
>  
> -	/* tgl+ */
> -	PORT_TC1 = PORT_D,
> +	/* Non-TypeC ports must be defined above */
> +	PORT_TC1,
>  	PORT_TC2,
>  	PORT_TC3,
>  	PORT_TC4,
>  	PORT_TC5,
>  	PORT_TC6,
>  
> -	/* XE_LPD repositions D/E offsets and bitfields */
> -	PORT_D_XELPD = PORT_TC5,
> -	PORT_E_XELPD,
> -
>  	I915_MAX_PORTS
>  };
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> index 1e608b9e5055..494821711775 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -2359,50 +2359,12 @@ d12_port_domains[] = {
>  	},
>  };
>  
> -static const struct intel_ddi_port_domains
> -d13_port_domains[] = {
> -	{
> -		.port_start = PORT_A,
> -		.port_end = PORT_C,
> -		.aux_ch_start = AUX_CH_A,
> -		.aux_ch_end = AUX_CH_C,
> -
> -		.ddi_lanes = POWER_DOMAIN_PORT_DDI_LANES_A,
> -		.ddi_io = POWER_DOMAIN_PORT_DDI_IO_A,
> -		.aux_legacy_usbc = POWER_DOMAIN_AUX_A,
> -		.aux_tbt = POWER_DOMAIN_INVALID,
> -	}, {
> -		.port_start = PORT_TC1,
> -		.port_end = PORT_TC4,
> -		.aux_ch_start = AUX_CH_USBC1,
> -		.aux_ch_end = AUX_CH_USBC4,
> -
> -		.ddi_lanes = POWER_DOMAIN_PORT_DDI_LANES_TC1,
> -		.ddi_io = POWER_DOMAIN_PORT_DDI_IO_TC1,
> -		.aux_legacy_usbc = POWER_DOMAIN_AUX_USBC1,
> -		.aux_tbt = POWER_DOMAIN_AUX_TBT1,
> -	}, {
> -		.port_start = PORT_D_XELPD,
> -		.port_end = PORT_E_XELPD,
> -		.aux_ch_start = AUX_CH_D_XELPD,
> -		.aux_ch_end = AUX_CH_E_XELPD,
> -
> -		.ddi_lanes = POWER_DOMAIN_PORT_DDI_LANES_D,
> -		.ddi_io = POWER_DOMAIN_PORT_DDI_IO_D,
> -		.aux_legacy_usbc = POWER_DOMAIN_AUX_D,
> -		.aux_tbt = POWER_DOMAIN_INVALID,
> -	},
> -};
> -
>  static void
>  intel_port_domains_for_platform(struct drm_i915_private *i915,
>  				const struct intel_ddi_port_domains **domains,
>  				int *domains_size)
>  {
> -	if (DISPLAY_VER(i915) >= 13) {
> -		*domains = d13_port_domains;
> -		*domains_size = ARRAY_SIZE(d13_port_domains);
> -	} else if (DISPLAY_VER(i915) >= 12) {
> +	if (DISPLAY_VER(i915) >= 12) {
>  		*domains = d12_port_domains;
>  		*domains_size = ARRAY_SIZE(d12_port_domains);
>  	} else if (DISPLAY_VER(i915) >= 11) {
> diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/i915/display/intel_fdi.c
> index 7f47e5c85c81..d3d92ac26099 100644
> --- a/drivers/gpu/drm/i915/display/intel_fdi.c
> +++ b/drivers/gpu/drm/i915/display/intel_fdi.c
> @@ -818,9 +818,9 @@ void hsw_fdi_link_train(struct intel_encoder *encoder,
>  		 * DDI E does not support port reversal, the functionality is
>  		 * achieved on the PCH side in FDI_RX_CTL, so no need to set the
>  		 * port reversal bit */
> -		intel_de_write(dev_priv, DDI_BUF_CTL(PORT_E),
> +		intel_de_write(dev_priv, DDI_BUF_CTL(dev_priv, PORT_E),
>  			       DDI_BUF_CTL_ENABLE | ((crtc_state->fdi_lanes - 1) << 1) | DDI_BUF_TRANS_SELECT(i / 2));
> -		intel_de_posting_read(dev_priv, DDI_BUF_CTL(PORT_E));
> +		intel_de_posting_read(dev_priv, DDI_BUF_CTL(dev_priv, PORT_E));
>  
>  		udelay(600);
>  
> @@ -864,10 +864,10 @@ void hsw_fdi_link_train(struct intel_encoder *encoder,
>  		intel_de_write(dev_priv, FDI_RX_CTL(PIPE_A), rx_ctl_val);
>  		intel_de_posting_read(dev_priv, FDI_RX_CTL(PIPE_A));
>  
> -		temp = intel_de_read(dev_priv, DDI_BUF_CTL(PORT_E));
> +		temp = intel_de_read(dev_priv, DDI_BUF_CTL(dev_priv, PORT_E));
>  		temp &= ~DDI_BUF_CTL_ENABLE;
> -		intel_de_write(dev_priv, DDI_BUF_CTL(PORT_E), temp);
> -		intel_de_posting_read(dev_priv, DDI_BUF_CTL(PORT_E));
> +		intel_de_write(dev_priv, DDI_BUF_CTL(dev_priv, PORT_E), temp);
> +		intel_de_posting_read(dev_priv, DDI_BUF_CTL(dev_priv, PORT_E));
>  
>  		/* Disable DP_TP_CTL and FDI_RX_CTL and retry */
>  		temp = intel_de_read(dev_priv, DP_TP_CTL(PORT_E));
> @@ -909,9 +909,9 @@ void hsw_fdi_disable(struct intel_encoder *encoder)
>  	val &= ~FDI_RX_ENABLE;
>  	intel_de_write(dev_priv, FDI_RX_CTL(PIPE_A), val);
>  
> -	val = intel_de_read(dev_priv, DDI_BUF_CTL(PORT_E));
> +	val = intel_de_read(dev_priv, DDI_BUF_CTL(dev_priv, PORT_E));
>  	val &= ~DDI_BUF_CTL_ENABLE;
> -	intel_de_write(dev_priv, DDI_BUF_CTL(PORT_E), val);
> +	intel_de_write(dev_priv, DDI_BUF_CTL(dev_priv, PORT_E), val);
>  
>  	intel_wait_ddi_buf_idle(dev_priv, PORT_E);
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
> index e5af955b5600..8baee1f19d89 100644
> --- a/drivers/gpu/drm/i915/display/intel_tc.c
> +++ b/drivers/gpu/drm/i915/display/intel_tc.c
> @@ -410,12 +410,12 @@ static bool adl_tc_phy_take_ownership(struct intel_digital_port *dig_port,
>  	enum port port = dig_port->base.port;
>  	u32 val;
>  
> -	val = intel_uncore_read(uncore, DDI_BUF_CTL(port));
> +	val = intel_uncore_read(uncore, DDI_BUF_CTL(i915, port));
>  	if (take)
>  		val |= DDI_BUF_CTL_TC_PHY_OWNERSHIP;
>  	else
>  		val &= ~DDI_BUF_CTL_TC_PHY_OWNERSHIP;
> -	intel_uncore_write(uncore, DDI_BUF_CTL(port), val);
> +	intel_uncore_write(uncore, DDI_BUF_CTL(i915, port), val);
>  
>  	return true;
>  }
> @@ -455,7 +455,7 @@ static bool adl_tc_phy_is_owned(struct intel_digital_port *dig_port)
>  	enum port port = dig_port->base.port;
>  	u32 val;
>  
> -	val = intel_uncore_read(uncore, DDI_BUF_CTL(port));
> +	val = intel_uncore_read(uncore, DDI_BUF_CTL(i915, port));
>  	return val & DDI_BUF_CTL_TC_PHY_OWNERSHIP;
>  }
>  
> diff --git a/drivers/gpu/drm/i915/gvt/display.c b/drivers/gpu/drm/i915/gvt/display.c
> index c7722c818b4d..5e3cd306c41d 100644
> --- a/drivers/gpu/drm/i915/gvt/display.c
> +++ b/drivers/gpu/drm/i915/gvt/display.c
> @@ -213,10 +213,10 @@ static void emulate_monitor_status_change(struct intel_vgpu *vgpu)
>  				  PORT_PLL_REF_SEL | PORT_PLL_LOCK |
>  				  PORT_PLL_ENABLE);
>  
> -			vgpu_vreg_t(vgpu, DDI_BUF_CTL(port)) &=
> +			vgpu_vreg_t(vgpu, DDI_BUF_CTL(dev_priv, port)) &=
>  				~(DDI_INIT_DISPLAY_DETECTED |
>  				  DDI_BUF_CTL_ENABLE);
> -			vgpu_vreg_t(vgpu, DDI_BUF_CTL(port)) |= DDI_BUF_IS_IDLE;
> +			vgpu_vreg_t(vgpu, DDI_BUF_CTL(dev_priv, port)) |= DDI_BUF_IS_IDLE;
>  		}
>  		vgpu_vreg_t(vgpu, PCH_PORT_HOTPLUG) &=
>  			~(PORTA_HOTPLUG_ENABLE | PORTA_HOTPLUG_STATUS_MASK);
> @@ -276,9 +276,9 @@ static void emulate_monitor_status_change(struct intel_vgpu *vgpu)
>  				(PORT_PLL_POWER_STATE | PORT_PLL_POWER_ENABLE |
>  				 PORT_PLL_REF_SEL | PORT_PLL_LOCK |
>  				 PORT_PLL_ENABLE);
> -			vgpu_vreg_t(vgpu, DDI_BUF_CTL(PORT_A)) |=
> +			vgpu_vreg_t(vgpu, DDI_BUF_CTL(dev_priv, PORT_A)) |=
>  				(DDI_BUF_CTL_ENABLE | DDI_INIT_DISPLAY_DETECTED);
> -			vgpu_vreg_t(vgpu, DDI_BUF_CTL(PORT_A)) &=
> +			vgpu_vreg_t(vgpu, DDI_BUF_CTL(dev_priv, PORT_A)) &=
>  				~DDI_BUF_IS_IDLE;
>  			vgpu_vreg_t(vgpu, TRANS_DDI_FUNC_CTL(TRANSCODER_EDP)) |=
>  				(TRANS_DDI_BPC_8 | TRANS_DDI_MODE_SELECT_DP_SST |
> @@ -305,9 +305,9 @@ static void emulate_monitor_status_change(struct intel_vgpu *vgpu)
>  				(PORT_PLL_POWER_STATE | PORT_PLL_POWER_ENABLE |
>  				 PORT_PLL_REF_SEL | PORT_PLL_LOCK |
>  				 PORT_PLL_ENABLE);
> -			vgpu_vreg_t(vgpu, DDI_BUF_CTL(PORT_B)) |=
> +			vgpu_vreg_t(vgpu, DDI_BUF_CTL(dev_priv, PORT_B)) |=
>  				DDI_BUF_CTL_ENABLE;
> -			vgpu_vreg_t(vgpu, DDI_BUF_CTL(PORT_B)) &=
> +			vgpu_vreg_t(vgpu, DDI_BUF_CTL(dev_priv, PORT_B)) &=
>  				~DDI_BUF_IS_IDLE;
>  			vgpu_vreg_t(vgpu, TRANS_DDI_FUNC_CTL(TRANSCODER_A)) |=
>  				(TRANS_DDI_BPC_8 | TRANS_DDI_MODE_SELECT_DP_SST |
> @@ -335,9 +335,9 @@ static void emulate_monitor_status_change(struct intel_vgpu *vgpu)
>  				(PORT_PLL_POWER_STATE | PORT_PLL_POWER_ENABLE |
>  				 PORT_PLL_REF_SEL | PORT_PLL_LOCK |
>  				 PORT_PLL_ENABLE);
> -			vgpu_vreg_t(vgpu, DDI_BUF_CTL(PORT_C)) |=
> +			vgpu_vreg_t(vgpu, DDI_BUF_CTL(dev_priv, PORT_C)) |=
>  				DDI_BUF_CTL_ENABLE;
> -			vgpu_vreg_t(vgpu, DDI_BUF_CTL(PORT_C)) &=
> +			vgpu_vreg_t(vgpu, DDI_BUF_CTL(dev_priv, PORT_C)) &=
>  				~DDI_BUF_IS_IDLE;
>  			vgpu_vreg_t(vgpu, TRANS_DDI_FUNC_CTL(TRANSCODER_A)) |=
>  				(TRANS_DDI_BPC_8 | TRANS_DDI_MODE_SELECT_DP_SST |
> @@ -416,8 +416,8 @@ static void emulate_monitor_status_change(struct intel_vgpu *vgpu)
>  			vgpu_vreg_t(vgpu, PORT_CLK_SEL(PORT_B)) |=
>  				PORT_CLK_SEL_LCPLL_810;
>  		}
> -		vgpu_vreg_t(vgpu, DDI_BUF_CTL(PORT_B)) |= DDI_BUF_CTL_ENABLE;
> -		vgpu_vreg_t(vgpu, DDI_BUF_CTL(PORT_B)) &= ~DDI_BUF_IS_IDLE;
> +		vgpu_vreg_t(vgpu, DDI_BUF_CTL(dev_priv, PORT_B)) |= DDI_BUF_CTL_ENABLE;
> +		vgpu_vreg_t(vgpu, DDI_BUF_CTL(dev_priv, PORT_B)) &= ~DDI_BUF_IS_IDLE;
>  		vgpu_vreg_t(vgpu, SDEISR) |= SDE_PORTB_HOTPLUG_CPT;
>  	}
>  
> @@ -442,8 +442,8 @@ static void emulate_monitor_status_change(struct intel_vgpu *vgpu)
>  			vgpu_vreg_t(vgpu, PORT_CLK_SEL(PORT_C)) |=
>  				PORT_CLK_SEL_LCPLL_810;
>  		}
> -		vgpu_vreg_t(vgpu, DDI_BUF_CTL(PORT_C)) |= DDI_BUF_CTL_ENABLE;
> -		vgpu_vreg_t(vgpu, DDI_BUF_CTL(PORT_C)) &= ~DDI_BUF_IS_IDLE;
> +		vgpu_vreg_t(vgpu, DDI_BUF_CTL(dev_priv, PORT_C)) |= DDI_BUF_CTL_ENABLE;
> +		vgpu_vreg_t(vgpu, DDI_BUF_CTL(dev_priv, PORT_C)) &= ~DDI_BUF_IS_IDLE;
>  		vgpu_vreg_t(vgpu, SFUSE_STRAP) |= SFUSE_STRAP_DDIC_DETECTED;
>  	}
>  
> @@ -468,8 +468,8 @@ static void emulate_monitor_status_change(struct intel_vgpu *vgpu)
>  			vgpu_vreg_t(vgpu, PORT_CLK_SEL(PORT_D)) |=
>  				PORT_CLK_SEL_LCPLL_810;
>  		}
> -		vgpu_vreg_t(vgpu, DDI_BUF_CTL(PORT_D)) |= DDI_BUF_CTL_ENABLE;
> -		vgpu_vreg_t(vgpu, DDI_BUF_CTL(PORT_D)) &= ~DDI_BUF_IS_IDLE;
> +		vgpu_vreg_t(vgpu, DDI_BUF_CTL(dev_priv, PORT_D)) |= DDI_BUF_CTL_ENABLE;
> +		vgpu_vreg_t(vgpu, DDI_BUF_CTL(dev_priv, PORT_D)) &= ~DDI_BUF_IS_IDLE;
>  		vgpu_vreg_t(vgpu, SFUSE_STRAP) |= SFUSE_STRAP_DDID_DETECTED;
>  	}
>  
> @@ -488,7 +488,7 @@ static void emulate_monitor_status_change(struct intel_vgpu *vgpu)
>  		else
>  			vgpu_vreg_t(vgpu, SDEISR) |= SDE_PORTA_HOTPLUG_SPT;
>  
> -		vgpu_vreg_t(vgpu, DDI_BUF_CTL(PORT_A)) |= DDI_INIT_DISPLAY_DETECTED;
> +		vgpu_vreg_t(vgpu, DDI_BUF_CTL(dev_priv, PORT_A)) |= DDI_INIT_DISPLAY_DETECTED;
>  	}
>  
>  	/* Clear host CRT status, so guest couldn't detect this host CRT. */
> diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/gvt/handlers.c
> index daac2050d77d..50fe7799e096 100644
> --- a/drivers/gpu/drm/i915/gvt/handlers.c
> +++ b/drivers/gpu/drm/i915/gvt/handlers.c
> @@ -787,13 +787,15 @@ static int force_nonpriv_write(struct intel_vgpu *vgpu,
>  static int ddi_buf_ctl_mmio_write(struct intel_vgpu *vgpu, unsigned int offset,
>  		void *p_data, unsigned int bytes)
>  {
> +	struct drm_i915_private *dev_priv = vgpu->gvt->gt->i915;
> +
>  	write_vreg(vgpu, offset, p_data, bytes);
>  
>  	if (vgpu_vreg(vgpu, offset) & DDI_BUF_CTL_ENABLE) {
>  		vgpu_vreg(vgpu, offset) &= ~DDI_BUF_IS_IDLE;
>  	} else {
>  		vgpu_vreg(vgpu, offset) |= DDI_BUF_IS_IDLE;
> -		if (offset == i915_mmio_reg_offset(DDI_BUF_CTL(PORT_E)))
> +		if (offset == i915_mmio_reg_offset(DDI_BUF_CTL(dev_priv, PORT_E)))
>  			vgpu_vreg_t(vgpu, DP_TP_STATUS(PORT_E))
>  				&= ~DP_TP_STATUS_AUTOTRAIN_DONE;
>  	}
> @@ -812,7 +814,8 @@ static int fdi_rx_iir_mmio_write(struct intel_vgpu *vgpu,
>  
>  static int fdi_auto_training_started(struct intel_vgpu *vgpu)
>  {
> -	u32 ddi_buf_ctl = vgpu_vreg_t(vgpu, DDI_BUF_CTL(PORT_E));
> +	struct drm_i915_private *dev_priv = vgpu->gvt->gt->i915;
> +	u32 ddi_buf_ctl = vgpu_vreg_t(vgpu, DDI_BUF_CTL(dev_priv, PORT_E));
>  	u32 rx_ctl = vgpu_vreg(vgpu, _FDI_RXA_CTL);
>  	u32 tx_ctl = vgpu_vreg_t(vgpu, DP_TP_CTL(PORT_E));
>  
> @@ -2333,11 +2336,11 @@ static int init_generic_mmio_info(struct intel_gvt *gvt)
>  	MMIO_F(_MMIO(_DPA_AUX_CH_CTL), 6 * 4, 0, 0, 0, D_ALL, NULL,
>  		dp_aux_ch_ctl_mmio_write);
>  
> -	MMIO_DH(DDI_BUF_CTL(PORT_A), D_ALL, NULL, ddi_buf_ctl_mmio_write);
> -	MMIO_DH(DDI_BUF_CTL(PORT_B), D_ALL, NULL, ddi_buf_ctl_mmio_write);
> -	MMIO_DH(DDI_BUF_CTL(PORT_C), D_ALL, NULL, ddi_buf_ctl_mmio_write);
> -	MMIO_DH(DDI_BUF_CTL(PORT_D), D_ALL, NULL, ddi_buf_ctl_mmio_write);
> -	MMIO_DH(DDI_BUF_CTL(PORT_E), D_ALL, NULL, ddi_buf_ctl_mmio_write);
> +	MMIO_DH(DDI_BUF_CTL(dev_priv, PORT_A), D_ALL, NULL, ddi_buf_ctl_mmio_write);
> +	MMIO_DH(DDI_BUF_CTL(dev_priv, PORT_B), D_ALL, NULL, ddi_buf_ctl_mmio_write);
> +	MMIO_DH(DDI_BUF_CTL(dev_priv, PORT_C), D_ALL, NULL, ddi_buf_ctl_mmio_write);
> +	MMIO_DH(DDI_BUF_CTL(dev_priv, PORT_D), D_ALL, NULL, ddi_buf_ctl_mmio_write);
> +	MMIO_DH(DDI_BUF_CTL(dev_priv, PORT_E), D_ALL, NULL, ddi_buf_ctl_mmio_write);
>  
>  	MMIO_DH(DP_TP_CTL(PORT_A), D_ALL, NULL, dp_tp_ctl_mmio_write);
>  	MMIO_DH(DP_TP_CTL(PORT_B), D_ALL, NULL, dp_tp_ctl_mmio_write);
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index 77e7df21f539..e0687f5d0a72 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -130,6 +130,42 @@
>  		[PIPE_D] = TGL_CURSOR_D_OFFSET, \
>  	}
>  
> +#define GENX_DDI_OFFSETS \

Please avoid new GEN naming.

"ddi offsets" is a misnomer in a few ways; it's a port to index map, and
it's not a generic ddi thing either.

> +	.display.ddi_offsets = { \
> +		[PORT_A] = 0, \
> +		[PORT_B] = 1, \
> +		[PORT_C] = 2, \
> +		[PORT_D] = 3, \
> +		[PORT_E] = 4, \
> +		[PORT_F] = 5, \
> +	}
> +
> +#define GEN12_DDI_OFFSETS \
> +	.display.ddi_offsets = { \
> +		[PORT_A] = 0, \
> +		[PORT_B] = 1, \
> +		[PORT_C] = 2, \
> +		[PORT_TC1] = 3, \
> +		[PORT_TC2] = 4, \
> +		[PORT_TC3] = 5, \
> +		[PORT_TC4] = 6, \
> +		[PORT_TC5] = 7, \
> +		[PORT_TC6] = 8, \
> +	}
> +
> +#define XE_LPD_DDI_OFFSETS \
> +	.display.ddi_offsets = { \
> +		[PORT_A] = 0, \
> +		[PORT_B] = 1, \
> +		[PORT_C] = 2, \
> +		[PORT_TC1] = 3, \
> +		[PORT_TC2] = 4, \
> +		[PORT_TC3] = 5, \
> +		[PORT_TC4] = 6, \
> +		[PORT_D] = 7, \
> +		[PORT_E] = 8, \
> +	}
> +
>  #define I9XX_COLORS \
>  	.display.color = { .gamma_lut_size = 256 }
>  #define I965_COLORS \
> @@ -189,7 +225,8 @@
>  	I9XX_CURSOR_OFFSETS, \
>  	I9XX_COLORS, \
>  	GEN_DEFAULT_PAGE_SIZES, \
> -	GEN_DEFAULT_REGIONS
> +	GEN_DEFAULT_REGIONS, \
> +	GENX_DDI_OFFSETS
>  
>  #define I845_FEATURES \
>  	GEN(2), \
> @@ -210,7 +247,8 @@
>  	I845_CURSOR_OFFSETS, \
>  	I9XX_COLORS, \
>  	GEN_DEFAULT_PAGE_SIZES, \
> -	GEN_DEFAULT_REGIONS
> +	GEN_DEFAULT_REGIONS, \
> +	GENX_DDI_OFFSETS
>  
>  static const struct intel_device_info i830_info = {
>  	I830_FEATURES,
> @@ -249,7 +287,8 @@ static const struct intel_device_info i865g_info = {
>  	I9XX_CURSOR_OFFSETS, \
>  	I9XX_COLORS, \
>  	GEN_DEFAULT_PAGE_SIZES, \
> -	GEN_DEFAULT_REGIONS
> +	GEN_DEFAULT_REGIONS, \
> +	GENX_DDI_OFFSETS
>  
>  static const struct intel_device_info i915g_info = {
>  	GEN3_FEATURES,
> @@ -341,7 +380,8 @@ static const struct intel_device_info pnv_m_info = {
>  	I9XX_CURSOR_OFFSETS, \
>  	I965_COLORS, \
>  	GEN_DEFAULT_PAGE_SIZES, \
> -	GEN_DEFAULT_REGIONS
> +	GEN_DEFAULT_REGIONS, \
> +	GENX_DDI_OFFSETS
>  
>  static const struct intel_device_info i965g_info = {
>  	GEN4_FEATURES,
> @@ -395,7 +435,8 @@ static const struct intel_device_info gm45_info = {
>  	I9XX_CURSOR_OFFSETS, \
>  	ILK_COLORS, \
>  	GEN_DEFAULT_PAGE_SIZES, \
> -	GEN_DEFAULT_REGIONS
> +	GEN_DEFAULT_REGIONS, \
> +	GENX_DDI_OFFSETS
>  
>  static const struct intel_device_info ilk_d_info = {
>  	GEN5_FEATURES,
> @@ -430,7 +471,8 @@ static const struct intel_device_info ilk_m_info = {
>  	I9XX_CURSOR_OFFSETS, \
>  	ILK_COLORS, \
>  	GEN_DEFAULT_PAGE_SIZES, \
> -	GEN_DEFAULT_REGIONS
> +	GEN_DEFAULT_REGIONS, \
> +	GENX_DDI_OFFSETS
>  
>  #define SNB_D_PLATFORM \
>  	GEN6_FEATURES, \
> @@ -483,7 +525,8 @@ static const struct intel_device_info snb_m_gt2_info = {
>  	IVB_CURSOR_OFFSETS, \
>  	IVB_COLORS, \
>  	GEN_DEFAULT_PAGE_SIZES, \
> -	GEN_DEFAULT_REGIONS
> +	GEN_DEFAULT_REGIONS, \
> +	GENX_DDI_OFFSETS
>  
>  #define IVB_D_PLATFORM \
>  	GEN7_FEATURES, \
> @@ -549,6 +592,7 @@ static const struct intel_device_info vlv_info = {
>  	I965_COLORS,
>  	GEN_DEFAULT_PAGE_SIZES,
>  	GEN_DEFAULT_REGIONS,
> +	GENX_DDI_OFFSETS
>  };
>  
>  #define G75_FEATURES  \
> @@ -647,6 +691,7 @@ static const struct intel_device_info chv_info = {
>  	CHV_COLORS,
>  	GEN_DEFAULT_PAGE_SIZES,
>  	GEN_DEFAULT_REGIONS,
> +	GENX_DDI_OFFSETS
>  };

None of the above touch DDI_BUF_CTL. They're not DDI platforms. They
don't need this.

>  
>  #define GEN9_DEFAULT_PAGE_SIZES \
> @@ -732,7 +777,8 @@ static const struct intel_device_info skl_gt4_info = {
>  	IVB_CURSOR_OFFSETS, \
>  	IVB_COLORS, \
>  	GEN9_DEFAULT_PAGE_SIZES, \
> -	GEN_DEFAULT_REGIONS
> +	GEN_DEFAULT_REGIONS, \
> +	GENX_DDI_OFFSETS
>  
>  static const struct intel_device_info bxt_info = {
>  	GEN9_LP_FEATURES,
> @@ -886,6 +932,7 @@ static const struct intel_device_info jsl_info = {
>  		[TRANSCODER_DSI_1] = TRANSCODER_DSI1_OFFSET, \
>  	}, \
>  	TGL_CURSOR_OFFSETS, \
> +	GEN12_DDI_OFFSETS, \
>  	.has_global_mocs = 1, \
>  	.has_pxp = 1, \
>  	.display.has_dsb = 0 /* FIXME: LUT load is broken with DSB */
> @@ -983,7 +1030,8 @@ static const struct intel_device_info adl_s_info = {
>  		[TRANSCODER_DSI_0] = TRANSCODER_DSI0_OFFSET,			\
>  		[TRANSCODER_DSI_1] = TRANSCODER_DSI1_OFFSET,			\
>  	},									\
> -	TGL_CURSOR_OFFSETS
> +	TGL_CURSOR_OFFSETS,							\
> +	XE_LPD_DDI_OFFSETS
>  
>  static const struct intel_device_info adl_p_info = {
>  	GEN12_FEATURES,
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 78038f48ddf2..ea63f921f222 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -6929,9 +6929,11 @@ enum skl_power_gate {
>  #define  DP_TP_STATUS_PAYLOAD_MAPPING_VC0	(3 << 0)
>  
>  /* DDI Buffer Control */
> -#define _DDI_BUF_CTL_A				0x64000
> -#define _DDI_BUF_CTL_B				0x64100
> -#define DDI_BUF_CTL(port) _MMIO_PORT(port, _DDI_BUF_CTL_A, _DDI_BUF_CTL_B)
> +#define _DDI_BUF_CTL_A			0x64000
> +#define _DDI_BUF_CTL_B			0x64100
> +#define  DDI_BUF_CTL(dev, port)		_MMIO_PORT(INTEL_INFO(dev)->display.ddi_offsets[port], \
> +						   _DDI_BUF_CTL_A, \
> +						   _DDI_BUF_CTL_B)

I'd probably define a new macro and pass port to it instead of reusing
_MMIO_PORT() and adding the ddi_offset access inline.

>  #define  DDI_BUF_CTL_ENABLE			(1 << 31)
>  #define  DDI_BUF_TRANS_SELECT(n)	((n) << 24)
>  #define  DDI_BUF_EMP_MASK			(0xf << 24)
> diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
> index d638235e1d26..44ca739d7bfa 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.h
> +++ b/drivers/gpu/drm/i915/intel_device_info.h
> @@ -286,6 +286,7 @@ struct intel_device_info {
>  		u32 pipe_offsets[I915_MAX_TRANSCODERS];
>  		u32 trans_offsets[I915_MAX_TRANSCODERS];
>  		u32 cursor_offsets[I915_MAX_PIPES];
> +		u32 ddi_offsets[I915_MAX_PORTS];
>  
>  		struct {
>  			u32 degamma_lut_size;
> diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> index 8279dc580a3e..b55bdc2cdd84 100644
> --- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> +++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> @@ -503,11 +503,11 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
>  	MMIO_D(SBI_CTL_STAT);
>  	MMIO_D(PIXCLK_GATE);
>  	MMIO_F(_MMIO(_DPA_AUX_CH_CTL), 6 * 4);
> -	MMIO_D(DDI_BUF_CTL(PORT_A));
> -	MMIO_D(DDI_BUF_CTL(PORT_B));
> -	MMIO_D(DDI_BUF_CTL(PORT_C));
> -	MMIO_D(DDI_BUF_CTL(PORT_D));
> -	MMIO_D(DDI_BUF_CTL(PORT_E));
> +	MMIO_D(DDI_BUF_CTL(dev_priv, PORT_A));
> +	MMIO_D(DDI_BUF_CTL(dev_priv, PORT_B));
> +	MMIO_D(DDI_BUF_CTL(dev_priv, PORT_C));
> +	MMIO_D(DDI_BUF_CTL(dev_priv, PORT_D));
> +	MMIO_D(DDI_BUF_CTL(dev_priv, PORT_E));
>  	MMIO_D(DP_TP_CTL(PORT_A));
>  	MMIO_D(DP_TP_CTL(PORT_B));
>  	MMIO_D(DP_TP_CTL(PORT_C));
> diff --git a/include/drm/i915_component.h b/include/drm/i915_component.h
> index c1e2a43d2d1e..4b31bab5533a 100644
> --- a/include/drm/i915_component.h
> +++ b/include/drm/i915_component.h
> @@ -35,7 +35,7 @@ enum i915_component_type {
>  /* MAX_PORT is the number of port
>   * It must be sync with I915_MAX_PORTS defined i915_drv.h
>   */
> -#define MAX_PORTS 9
> +#define MAX_PORTS 15
>  
>  /**
>   * struct i915_audio_component - Used for direct communication between i915 and hda drivers

-- 
Jani Nikula, Intel Open Source Graphics Center
