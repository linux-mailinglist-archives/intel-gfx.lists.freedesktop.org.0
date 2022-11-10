Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B86D623FFF
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Nov 2022 11:37:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4FDD10E6C7;
	Thu, 10 Nov 2022 10:37:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55C0110E6C7
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Nov 2022 10:37:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668076654; x=1699612654;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Co31+mQQpTrhz6BmX+SQ5czk5TQEef6q3BwJKAM9Dr4=;
 b=LppRypQhdfUBiujAeQtJ4gXznZknY2xs9cuGL3WJZcY7PVLQ8jaAkv93
 lq5FD62o1zAZpGNVHxb35y3y2kwANyNoI3gUCRkfxgxXZOqhDhjQDLS2S
 2CmtjGHPAGc+KKK0t7igpv1ROWDtcmd4Tf8SgsQ3csYH5bY6aaaPlrDrq
 rb8IHpaU7gh5Zp9Ble3EMA4qlhD7xBz4ds0LatpCcoGGlwxz0r54GfAEV
 8ID5k9fvazEQITWuJvNn1cAXS52/2OWTjutCL13JkR9c0IPE7KIsh2iJK
 M/L/RdHHupeHWQ1h0JK0ONPR1FempsaYiZn4tmzJPNHNyjPk32oP41iVQ w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="309991474"
X-IronPort-AV: E=Sophos;i="5.96,153,1665471600"; d="scan'208";a="309991474"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2022 02:37:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="726341117"
X-IronPort-AV: E=Sophos;i="5.96,153,1665471600"; d="scan'208";a="726341117"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by FMSMGA003.fm.intel.com with SMTP; 10 Nov 2022 02:37:31 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 10 Nov 2022 12:37:30 +0200
Date: Thu, 10 Nov 2022 12:37:30 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <Y2zUal4m3hbvGfb8@intel.com>
References: <20221107170917.3566758-9-imre.deak@intel.com>
 <20221108151828.3761358-5-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221108151828.3761358-5-imre.deak@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v3 8/9] drm/i915: Don't enable the AUX_IO
 power for combo-PHY external DP port main links
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

On Tue, Nov 08, 2022 at 05:18:27PM +0200, Imre Deak wrote:
> Combo PHY ports require the AUX_IO power only for eDP/PSR, so don't
> enable it otherwise on these ports. So far the external DP and eDP case
> was handled the same way due to unclarity when AUX_IO for the main link
> is needed. However Bspec is clear in which cases it's required:
> 
> - eDP/PSR on all ports and platforms (presumably due to HW/FW initiated
>   PSR transactions that won't enable AUX_IO)
>   Bspec: 4301, 49296
> - TypeC PHY ports on platforms before MTL in all TypeC modes (TBT,
>   DP-alt, legacy) and for both HDMI and DP. The next patch will take
>   into account the pre-MTL platform dependency.
>   Bspec: 22243, 53339, 21750, 49190, 49191, 55424, 65448, 65750, 49294,
>          55480, 65380
> 
> v2:
> - Rebased on checking intel_encoder_can_psr() instead of crtc->has_psr.
> 
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 22 +++++++++-------------
>  1 file changed, 9 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 21f1a68a57598..cc4bc529a78a5 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -846,8 +846,7 @@ bool intel_ddi_get_hw_state(struct intel_encoder *encoder,
>  }
>  
>  static enum intel_display_power_domain
> -intel_ddi_main_link_aux_domain(struct intel_digital_port *dig_port,
> -			       const struct intel_crtc_state *crtc_state)
> +intel_ddi_main_link_aux_domain(struct intel_digital_port *dig_port)
>  {
>  	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
>  	enum phy phy = intel_port_to_phy(i915, dig_port->base.port);
> @@ -867,20 +866,18 @@ intel_ddi_main_link_aux_domain(struct intel_digital_port *dig_port,
>  	 */
>  	if (intel_encoder_can_psr(&dig_port->base))
>  		return intel_display_power_aux_io_domain(i915, dig_port->aux_ch);
> -	else if (intel_crtc_has_dp_encoder(crtc_state) ||
> -		 intel_phy_is_tc(i915, phy))
> +	else if (intel_phy_is_tc(i915, phy))
>  		return intel_aux_power_domain(dig_port);

I was pondering this a bit more the other day and came to the conclusion
that getting rid of the full aux domain is desirable, if for no other
reason that perhaps testing the dmc interactions a little bit more when
psr isn't supported. I guess nothing much should actually happen on the
dmc firware side without psr, but at least we might end up poking
the DC_STATE_EN register occasionally?

>  	else
>  		return POWER_DOMAIN_INVALID;
>  }
>  
>  static void
> -main_link_aux_power_domain_get(struct intel_digital_port *dig_port,
> -			       const struct intel_crtc_state *crtc_state)
> +main_link_aux_power_domain_get(struct intel_digital_port *dig_port)
>  {
>  	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
>  	enum intel_display_power_domain domain =
> -		intel_ddi_main_link_aux_domain(dig_port, crtc_state);
> +		intel_ddi_main_link_aux_domain(dig_port);
>  
>  	drm_WARN_ON(&i915->drm, dig_port->aux_wakeref);
>  
> @@ -891,13 +888,12 @@ main_link_aux_power_domain_get(struct intel_digital_port *dig_port,
>  }
>  
>  static void
> -main_link_aux_power_domain_put(struct intel_digital_port *dig_port,
> -			       const struct intel_crtc_state *crtc_state)
> +main_link_aux_power_domain_put(struct intel_digital_port *dig_port)
>  {
>  	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
>  	intel_wakeref_t wf = fetch_and_zero(&dig_port->aux_wakeref);
>  	enum intel_display_power_domain domain =
> -		intel_ddi_main_link_aux_domain(dig_port, crtc_state);
> +		intel_ddi_main_link_aux_domain(dig_port);
>  
>  	if (!wf)
>  		return;
> @@ -928,7 +924,7 @@ static void intel_ddi_get_power_domains(struct intel_encoder *encoder,
>  								   dig_port->ddi_io_power_domain);
>  	}
>  
> -	main_link_aux_power_domain_get(dig_port, crtc_state);
> +	main_link_aux_power_domain_get(dig_port);
>  }
>  
>  void intel_ddi_enable_pipe_clock(struct intel_encoder *encoder,
> @@ -2767,7 +2763,7 @@ static void intel_ddi_post_disable(struct intel_atomic_state *state,
>  		intel_ddi_post_disable_dp(state, encoder, old_crtc_state,
>  					  old_conn_state);
>  
> -	main_link_aux_power_domain_put(dig_port, old_crtc_state);
> +	main_link_aux_power_domain_put(dig_port);
>  
>  	if (is_tc_port)
>  		intel_tc_port_put_link(dig_port);
> @@ -3088,7 +3084,7 @@ intel_ddi_pre_pll_enable(struct intel_atomic_state *state,
>  	if (is_tc_port)
>  		intel_tc_port_get_link(dig_port, crtc_state->lane_count);
>  
> -	main_link_aux_power_domain_get(dig_port, crtc_state);
> +	main_link_aux_power_domain_get(dig_port);
>  
>  	if (is_tc_port && !intel_tc_port_in_tbt_alt_mode(dig_port))
>  		/*
> -- 
> 2.37.1

-- 
Ville Syrjälä
Intel
