Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 842AC69AC18
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Feb 2023 14:06:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8EE2810EFD0;
	Fri, 17 Feb 2023 13:06:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6148910EFC6
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Feb 2023 13:06:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676639163; x=1708175163;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=1XufdX/9Wc4UVQhXxTY4kYIiPtT10w/sGv2xpnRa8r4=;
 b=iTkuWqUDv2uD/w+ErQkmFJdz9LEhJgEX8o4m0+xedxK3dVxECIhf968B
 i1pE2EXXBnzU+4BV2CuIFkPAXmo7CE2BN7Jkn6+enX9/GhapXWSAfwWrC
 iXeI7JGwVst8PyKDxa4c/WkKE9r0xbzwd8FjGFoVGZqorSQgO4L+wI+IN
 aMl6lKe5QfDrV+AXqkCkRcxktiX8uFLcsWZPLCwHQtpwu0ZB0sA7xTCDg
 0YR7aqYn/bLZkw/P5EmGt+krO7HPkiEGSiaS7I3/7JpcXQbHenbprR+iR
 DcbXyy9a6EDci/z9GQJTRg/h7JlGan7vL43S2mXCYifZL/vW5ltE1J4C6 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="320087880"
X-IronPort-AV: E=Sophos;i="5.97,304,1669104000"; d="scan'208";a="320087880"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2023 05:06:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="670532215"
X-IronPort-AV: E=Sophos;i="5.97,304,1669104000"; d="scan'208";a="670532215"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga002.jf.intel.com with SMTP; 17 Feb 2023 05:06:00 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 17 Feb 2023 15:05:59 +0200
Date: Fri, 17 Feb 2023 15:05:59 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <Y+97t4ENJ4RINtan@intel.com>
References: <20230216231312.32664-1-ville.syrjala@linux.intel.com>
 <87o7psxxyh.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87o7psxxyh.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915: Restructure
 intel_bios_port_aux_ch()
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

On Fri, Feb 17, 2023 at 02:45:10PM +0200, Jani Nikula wrote:
> On Fri, 17 Feb 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > Restructure intel_bios_port_aux_ch() to resemble the ddc_pin
> > counterpart, where the intel_bios.c stuff only deals with the
> > child device definition, and the platform default will come from
> > elsewhere.
> >
> > This requires the introduction if AUX_CH_NONE as the value 0
> > is already taken to mean AUX_CH_A.
> 
> Related to the series, I wrote [1] a few weeks back but wasn't
> completely happy. Maybe intel_dp_aux_name() should be in intel_dp_aux.c?
> Maybe intel_dp_aux_init() should initialize the name, not the caller of
> it?
> 
> The aux ch naming and the current single-char auc_ch_name() are a bit
> misleading in many cases?

Yeah, it's not great. For the aux init what you have seems ok,
but here we are getting called before the aux init. So the
extra memory allocation at least would be a bit annoying, though
if it's just this one place we could probably live with it.
Haven't checked how many other places use aux_ch_name() without
having the intel_dp->aux around.

port_name() really has the same issue, and in that case the
encoder->name printf formatting is even part of the 
drm_encoder_init() call, so harder to extract even.

Hmm, I wonder how terrible it would be if we just replicated
the apporach you used in commit 5b04aab6d495 ("drm/dp: add
drm_dp_phy_name() for getting DP PHY name")?

The other optiom would be to change the enums to not match
the hw register instances anymore. For which there was some kind
of patch, but I've not had any time to think through how terrible
it would be elsewhere. Although the fact that we want more than
a single character anyway means we still have the problem with
allocating the storage for the temp string.

> BR,
> Jani.
> 
> 
> [1] https://paste.debian.net/1271086/
> 
> 
> 
> >
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/g4x_dp.c        |  3 ++-
> >  drivers/gpu/drm/i915/display/g4x_hdmi.c      |  3 ++-
> >  drivers/gpu/drm/i915/display/intel_bios.c    | 27 ++++++++------------
> >  drivers/gpu/drm/i915/display/intel_bios.h    |  5 ++--
> >  drivers/gpu/drm/i915/display/intel_ddi.c     |  3 ++-
> >  drivers/gpu/drm/i915/display/intel_display.h |  2 ++
> >  drivers/gpu/drm/i915/display/intel_dp_aux.c  | 23 +++++++++++++++++
> >  drivers/gpu/drm/i915/display/intel_dp_aux.h  |  4 +++
> >  8 files changed, 47 insertions(+), 23 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
> > index 6ccbc2280ff9..a50ad0fff57c 100644
> > --- a/drivers/gpu/drm/i915/display/g4x_dp.c
> > +++ b/drivers/gpu/drm/i915/display/g4x_dp.c
> > @@ -17,6 +17,7 @@
> >  #include "intel_display_power.h"
> >  #include "intel_display_types.h"
> >  #include "intel_dp.h"
> > +#include "intel_dp_aux.h"
> >  #include "intel_dp_link_training.h"
> >  #include "intel_dpio_phy.h"
> >  #include "intel_fifo_underrun.h"
> > @@ -1397,7 +1398,7 @@ bool g4x_dp_init(struct drm_i915_private *dev_priv,
> >  	if (port != PORT_A)
> >  		intel_infoframe_init(dig_port);
> >  
> > -	dig_port->aux_ch = intel_bios_port_aux_ch(dev_priv, devdata, port);
> > +	dig_port->aux_ch = intel_dp_aux_ch(intel_encoder);
> >  	if (!intel_dp_init_connector(dig_port, intel_connector))
> >  		goto err_init_connector;
> >  
> > diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c b/drivers/gpu/drm/i915/display/g4x_hdmi.c
> > index e965c5513c74..34f56d8d7cb3 100644
> > --- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
> > +++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
> > @@ -8,6 +8,7 @@
> >  #include "g4x_hdmi.h"
> >  #include "i915_reg.h"
> >  #include "intel_audio.h"
> > +#include "intel_dp_aux.h"
> >  #include "intel_connector.h"
> >  #include "intel_crtc.h"
> >  #include "intel_de.h"
> > @@ -639,6 +640,6 @@ void g4x_hdmi_init(struct drm_i915_private *dev_priv,
> >  
> >  	intel_infoframe_init(dig_port);
> >  
> > -	dig_port->aux_ch = intel_bios_port_aux_ch(dev_priv, devdata, port);
> > +	dig_port->aux_ch = intel_dp_aux_ch(intel_encoder);
> >  	intel_hdmi_init_connector(dig_port, intel_connector);
> >  }
> > diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> > index 8cf2392a5670..f35ef3675d39 100644
> > --- a/drivers/gpu/drm/i915/display/intel_bios.c
> > +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> > @@ -3572,21 +3572,10 @@ bool intel_bios_get_dsc_params(struct intel_encoder *encoder,
> >  	return false;
> >  }
> >  
> > -enum aux_ch intel_bios_port_aux_ch(struct drm_i915_private *i915,
> > -				   const struct intel_bios_encoder_data *devdata,
> > -				   enum port port)
> > +static enum aux_ch map_aux_ch(struct drm_i915_private *i915, u8 aux_channel)
> >  {
> >  	enum aux_ch aux_ch;
> >  
> > -	if (!devdata || !devdata->child.aux_channel) {
> > -		aux_ch = (enum aux_ch)port;
> > -
> > -		drm_dbg_kms(&i915->drm,
> > -			    "using AUX %c for port %c (platform default)\n",
> > -			    aux_ch_name(aux_ch), port_name(port));
> > -		return aux_ch;
> > -	}
> > -
> >  	/*
> >  	 * RKL/DG1 VBT uses PHY based mapping. Combo PHYs A,B,C,D
> >  	 * map to DDI A,B,TC1,TC2 respectively.
> > @@ -3594,7 +3583,7 @@ enum aux_ch intel_bios_port_aux_ch(struct drm_i915_private *i915,
> >  	 * ADL-S VBT uses PHY based mapping. Combo PHYs A,B,C,D,E
> >  	 * map to DDI A,TC1,TC2,TC3,TC4 respectively.
> >  	 */
> > -	switch (devdata->child.aux_channel) {
> > +	switch (aux_channel) {
> >  	case DP_AUX_A:
> >  		aux_ch = AUX_CH_A;
> >  		break;
> > @@ -3655,17 +3644,21 @@ enum aux_ch intel_bios_port_aux_ch(struct drm_i915_private *i915,
> >  			aux_ch = AUX_CH_I;
> >  		break;
> >  	default:
> > -		MISSING_CASE(devdata->child.aux_channel);
> > +		MISSING_CASE(aux_channel);
> >  		aux_ch = AUX_CH_A;
> >  		break;
> >  	}
> >  
> > -	drm_dbg_kms(&i915->drm, "using AUX %c for port %c (VBT)\n",
> > -		    aux_ch_name(aux_ch), port_name(port));
> > -
> >  	return aux_ch;
> >  }
> >  
> > +enum aux_ch intel_bios_dp_aux_ch(const struct intel_bios_encoder_data *devdata)
> > +{
> > +	if (!devdata || !devdata->child.aux_channel)
> > +		return AUX_CH_NONE;
> > +
> > +	return map_aux_ch(devdata->i915, devdata->child.aux_channel);
> > +}
> >  
> >  int intel_bios_dp_boost_level(const struct intel_bios_encoder_data *devdata)
> >  {
> > diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/i915/display/intel_bios.h
> > index 49a9e8d40e88..8a0730c9b48c 100644
> > --- a/drivers/gpu/drm/i915/display/intel_bios.h
> > +++ b/drivers/gpu/drm/i915/display/intel_bios.h
> > @@ -38,6 +38,7 @@ struct intel_bios_encoder_data;
> >  struct intel_crtc_state;
> >  struct intel_encoder;
> >  struct intel_panel;
> > +enum aux_ch;
> >  enum port;
> >  
> >  enum intel_backlight_type {
> > @@ -248,9 +249,6 @@ bool intel_bios_is_port_present(struct drm_i915_private *dev_priv, enum port por
> >  bool intel_bios_is_port_edp(struct drm_i915_private *dev_priv, enum port port);
> >  bool intel_bios_is_port_dp_dual_mode(struct drm_i915_private *dev_priv, enum port port);
> >  bool intel_bios_is_dsi_present(struct drm_i915_private *dev_priv, enum port *port);
> > -enum aux_ch intel_bios_port_aux_ch(struct drm_i915_private *i915,
> > -				   const struct intel_bios_encoder_data *devdata,
> > -				   enum port port);
> >  bool intel_bios_get_dsc_params(struct intel_encoder *encoder,
> >  			       struct intel_crtc_state *crtc_state,
> >  			       int dsc_max_bpc);
> > @@ -269,6 +267,7 @@ bool intel_bios_encoder_supports_tbt(const struct intel_bios_encoder_data *devda
> >  bool intel_bios_encoder_is_lspcon(const struct intel_bios_encoder_data *devdata);
> >  bool intel_bios_encoder_lane_reversal(const struct intel_bios_encoder_data *devdata);
> >  bool intel_bios_encoder_hpd_invert(const struct intel_bios_encoder_data *devdata);
> > +enum aux_ch intel_bios_dp_aux_ch(const struct intel_bios_encoder_data *devdata);
> >  int intel_bios_dp_boost_level(const struct intel_bios_encoder_data *devdata);
> >  int intel_bios_dp_max_lane_count(const struct intel_bios_encoder_data *devdata);
> >  int intel_bios_dp_max_link_rate(const struct intel_bios_encoder_data *devdata);
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> > index e917d91ea9f9..3f5a81e08040 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -47,6 +47,7 @@
> >  #include "intel_dkl_phy.h"
> >  #include "intel_dkl_phy_regs.h"
> >  #include "intel_dp.h"
> > +#include "intel_dp_aux.h"
> >  #include "intel_dp_link_training.h"
> >  #include "intel_dp_mst.h"
> >  #include "intel_dpio_phy.h"
> > @@ -4486,7 +4487,7 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
> >  
> >  	dig_port->dp.output_reg = INVALID_MMIO_REG;
> >  	dig_port->max_lanes = intel_ddi_max_lanes(dig_port);
> > -	dig_port->aux_ch = intel_bios_port_aux_ch(dev_priv, devdata, port);
> > +	dig_port->aux_ch = intel_dp_aux_ch(encoder);
> >  
> >  	if (intel_phy_is_tc(dev_priv, phy)) {
> >  		bool is_legacy =
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
> > index ed852f62721d..50285fb4fcf5 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display.h
> > @@ -172,6 +172,8 @@ enum tc_port_mode {
> >  };
> >  
> >  enum aux_ch {
> > +	AUX_CH_NONE = -1,
> > +
> >  	AUX_CH_A,
> >  	AUX_CH_B,
> >  	AUX_CH_C,
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> > index 5a176bfb10a2..c4e72c17e06a 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> > @@ -6,6 +6,7 @@
> >  #include "i915_drv.h"
> >  #include "i915_reg.h"
> >  #include "i915_trace.h"
> > +#include "intel_bios.h"
> >  #include "intel_de.h"
> >  #include "intel_display_types.h"
> >  #include "intel_dp_aux.h"
> > @@ -737,3 +738,25 @@ void intel_dp_aux_init(struct intel_dp *intel_dp)
> >  	intel_dp->aux.transfer = intel_dp_aux_transfer;
> >  	cpu_latency_qos_add_request(&intel_dp->pm_qos, PM_QOS_DEFAULT_VALUE);
> >  }
> > +
> > +enum aux_ch intel_dp_aux_ch(struct intel_encoder *encoder)
> > +{
> > +	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> > +	enum port port = encoder->port;
> > +	enum aux_ch aux_ch;
> > +
> > +	aux_ch = intel_bios_dp_aux_ch(encoder->devdata);
> > +	if (aux_ch != AUX_CH_NONE) {
> > +		drm_dbg_kms(&i915->drm, "using AUX %c for port %c (VBT)\n",
> > +			    aux_ch_name(aux_ch), port_name(port));
> > +		return aux_ch;
> > +	}
> > +
> > +	aux_ch = (enum aux_ch)port;
> > +
> > +	drm_dbg_kms(&i915->drm,
> > +		    "using AUX %c for port %c (platform default)\n",
> > +		    aux_ch_name(aux_ch), port_name(port));
> > +
> > +	return aux_ch;
> > +}
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.h b/drivers/gpu/drm/i915/display/intel_dp_aux.h
> > index 738577537bc7..138e340f94ee 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_aux.h
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.h
> > @@ -6,9 +6,13 @@
> >  #ifndef __INTEL_DP_AUX_H__
> >  #define __INTEL_DP_AUX_H__
> >  
> > +enum aux_ch;
> >  struct intel_dp;
> > +struct intel_encoder;
> >  
> >  void intel_dp_aux_fini(struct intel_dp *intel_dp);
> >  void intel_dp_aux_init(struct intel_dp *intel_dp);
> >  
> > +enum aux_ch intel_dp_aux_ch(struct intel_encoder *encoder);
> > +
> >  #endif /* __INTEL_DP_AUX_H__ */
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center

-- 
Ville Syrjälä
Intel
