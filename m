Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 14646A0076A
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2025 11:08:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4475110E85B;
	Fri,  3 Jan 2025 10:08:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ClBSTJ94";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86E1610E859;
 Fri,  3 Jan 2025 10:08:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735898904; x=1767434904;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=iSqg1JEMfBU+dm2ACBLHLI90Tmk9nEXWe/tgEU4/XVA=;
 b=ClBSTJ94Vrm2+fTzVrSZrdiWxlnkiRUI0Ii98BMqSx67tpL5HsPTMzgg
 aelExqGfmm8+fz2Wowq5VI6hLswu3j4JG5hxiL8RezHp5oG353nyY1KUk
 qpixxehXB7nJIIBicptMG09agOoPe5Oeu/oCygWVGn/w5muu1Vtr742nU
 1xDJLn7Ginb0I2St7h3Zf090XRlVtyCBkJhr6kl8Fl9tVRZlpvanj9XDO
 k4X25nE75Gpk1al6omzasyeaON9OGpaqW/8KZG9smqIru+Y7g7kGu1Rw8
 nRvjqR1qugaVIDOQB9oadsD+bIRZ49Yeg+tlN2rh+dXZXiyALLC/9T/5L Q==;
X-CSE-ConnectionGUID: nGfDaYgMT1atHce8ax6ooA==
X-CSE-MsgGUID: nf9E0rCWQeazvGjCSaNQOQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11303"; a="35448196"
X-IronPort-AV: E=Sophos;i="6.12,286,1728975600"; d="scan'208";a="35448196"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2025 02:08:23 -0800
X-CSE-ConnectionGUID: cGMpdA7WQsWQPKAxfTH80Q==
X-CSE-MsgGUID: ViPcrcurTEqkdhNm+2jD5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="106794516"
Received: from dprybysh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.242])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2025 02:08:21 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, chaitanya.kumar.borah@intel.com,
 dnyaneshwar.bhadane@intel.com, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: Re: [PATCH 1/2] drm/i915/dp: Use intel_display instead of
 drm_i915_private
In-Reply-To: <20250103051705.145161-2-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250103051705.145161-1-suraj.kandpal@intel.com>
 <20250103051705.145161-2-suraj.kandpal@intel.com>
Date: Fri, 03 Jan 2025 12:08:17 +0200
Message-ID: <87pll4mcq6.fsf@intel.com>
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

On Fri, 03 Jan 2025, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> Use intel display instead of drm_i915_private in
> mtl_ddi_prepare_link_retrain & mtl_port_buf_ctl_program
> functions.
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

This is a good direction, but I'd aim higher than just a few
functions...

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 20 ++++++++++----------
>  1 file changed, 10 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 4f9c50996446..5e944cae116a 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -2534,12 +2534,12 @@ mtl_ddi_enable_d2d(struct intel_encoder *encoder)
>  static void mtl_port_buf_ctl_program(struct intel_encoder *encoder,
>  				     const struct intel_crtc_state *crtc_state)
>  {
> -	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +	struct intel_display *display = to_intel_display(encoder);
>  	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
>  	enum port port = encoder->port;
>  	u32 val;
>  
> -	val = intel_de_read(i915, XELPDP_PORT_BUF_CTL1(i915, port));
> +	val = intel_de_read(display, XELPDP_PORT_BUF_CTL1(i915, port));
>  	val &= ~XELPDP_PORT_WIDTH_MASK;
>  	val |= XELPDP_PORT_WIDTH(mtl_get_port_width(crtc_state->lane_count));
>  
> @@ -2552,7 +2552,7 @@ static void mtl_port_buf_ctl_program(struct intel_encoder *encoder,
>  	if (dig_port->lane_reversal)
>  		val |= XELPDP_PORT_REVERSAL;
>  
> -	intel_de_write(i915, XELPDP_PORT_BUF_CTL1(i915, port), val);
> +	intel_de_write(display, XELPDP_PORT_BUF_CTL1(display, port), val);
>  }
>  
>  static void mtl_port_buf_ctl_io_selection(struct intel_encoder *encoder)
> @@ -3639,9 +3639,9 @@ static void adlp_tbt_to_dp_alt_switch_wa(struct intel_encoder *encoder)
>  static void mtl_ddi_prepare_link_retrain(struct intel_dp *intel_dp,
>  					 const struct intel_crtc_state *crtc_state)
>  {
> +	struct intel_display *display = to_intel_display(crtc_state);
>  	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
>  	struct intel_encoder *encoder = &dig_port->base;
> -	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>  	enum port port = encoder->port;
>  	u32 dp_tp_ctl;
>  
> @@ -3649,7 +3649,7 @@ static void mtl_ddi_prepare_link_retrain(struct intel_dp *intel_dp,
>  	 * TODO: To train with only a different voltage swing entry is not
>  	 * necessary disable and enable port
>  	 */
> -	dp_tp_ctl = intel_de_read(dev_priv, dp_tp_ctl_reg(encoder, crtc_state));
> +	dp_tp_ctl = intel_de_read(display, dp_tp_ctl_reg(encoder, crtc_state));
>  	if (dp_tp_ctl & DP_TP_CTL_ENABLE)
>  		mtl_disable_ddi_buf(encoder, crtc_state);
>  
> @@ -3662,8 +3662,8 @@ static void mtl_ddi_prepare_link_retrain(struct intel_dp *intel_dp,
>  		if (crtc_state->enhanced_framing)
>  			dp_tp_ctl |= DP_TP_CTL_ENHANCED_FRAME_ENABLE;
>  	}
> -	intel_de_write(dev_priv, dp_tp_ctl_reg(encoder, crtc_state), dp_tp_ctl);
> -	intel_de_posting_read(dev_priv, dp_tp_ctl_reg(encoder, crtc_state));
> +	intel_de_write(display, dp_tp_ctl_reg(encoder, crtc_state), dp_tp_ctl);
> +	intel_de_posting_read(display, dp_tp_ctl_reg(encoder, crtc_state));
>  
>  	/* 6.f Enable D2D Link */
>  	mtl_ddi_enable_d2d(encoder);
> @@ -3676,11 +3676,11 @@ static void mtl_ddi_prepare_link_retrain(struct intel_dp *intel_dp,
>  
>  	/* 6.i Configure and enable DDI_CTL_DE to start sending valid data to port slice */
>  	intel_dp->DP |= DDI_BUF_CTL_ENABLE;
> -	if (DISPLAY_VER(dev_priv) >= 20)
> +	if (DISPLAY_VER(display) >= 20)
>  		intel_dp->DP |= XE2LPD_DDI_BUF_D2D_LINK_ENABLE;
>  
> -	intel_de_write(dev_priv, DDI_BUF_CTL(port), intel_dp->DP);
> -	intel_de_posting_read(dev_priv, DDI_BUF_CTL(port));
> +	intel_de_write(display, DDI_BUF_CTL(port), intel_dp->DP);
> +	intel_de_posting_read(display, DDI_BUF_CTL(port));
>  
>  	/* 6.j Poll for PORT_BUF_CTL Idle Status == 0, timeout after 100 us */
>  	intel_wait_ddi_buf_active(encoder);

-- 
Jani Nikula, Intel
