Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF5D541DDFA
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Sep 2021 17:51:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E9B56E438;
	Thu, 30 Sep 2021 15:51:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F33B66E438
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Sep 2021 15:51:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10123"; a="225295038"
X-IronPort-AV: E=Sophos;i="5.85,336,1624345200"; d="scan'208";a="225295038"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2021 08:51:43 -0700
X-IronPort-AV: E=Sophos;i="5.85,336,1624345200"; d="scan'208";a="555824176"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2021 08:51:42 -0700
Date: Thu, 30 Sep 2021 18:51:37 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Message-ID: <20210930155137.GD2418125@ideak-desk.fi.intel.com>
References: <20210930134310.31669-1-ville.syrjala@linux.intel.com>
 <20210930134310.31669-2-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210930134310.31669-2-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915: Call
 intel_ddi_init_dp_buf_reg() earlier
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

On Thu, Sep 30, 2021 at 04:43:08PM +0300, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> I want intel_dp->DP to be fully populated by the time the
> initial vswing programming happens. To that end move the
> intel_ddi_init_dp_buf_reg() call to an earlier spot.
> 
> Additionally we don't want intel_ddi_init_dp_buf_reg() to
> set DDI_BUF_CTL_ENABLE since the port should only get enabled
> at the start of link training (see intel_ddi_prepare_link_retrain()).
> So any earlier write to the register should not set the enable bit.
> 
> Cc: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 44 +++++++++++-------------
>  1 file changed, 21 insertions(+), 23 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 51d07e9af9f3..65e59f16879d 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -282,9 +282,10 @@ static void intel_ddi_init_dp_buf_reg(struct intel_encoder *encoder,
>  	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
>  	enum phy phy = intel_port_to_phy(i915, encoder->port);
>  
> +	/* DDI_BUF_CTL_ENABLE will be set by intel_ddi_prepare_link_retrain() later */
>  	intel_dp->DP = dig_port->saved_port_bits |
> -		DDI_BUF_CTL_ENABLE | DDI_BUF_TRANS_SELECT(0);
> -	intel_dp->DP |= DDI_PORT_WIDTH(crtc_state->lane_count);
> +		DDI_PORT_WIDTH(crtc_state->lane_count) |
> +		DDI_BUF_TRANS_SELECT(0);
>  
>  	if (IS_ALDERLAKE_P(i915) && intel_phy_is_tc(i915, phy)) {
>  		intel_dp->DP |= ddi_buf_phy_link_rate(crtc_state->port_clock);
> @@ -2360,6 +2361,12 @@ static void dg2_ddi_pre_enable_dp(struct intel_atomic_state *state,
>  	intel_dp_set_link_params(intel_dp, crtc_state->port_clock,
>  				 crtc_state->lane_count);
>  
> +	/*
> +	 * We only configure what the register value will be here.  Actual
> +	 * enabling happens during link training farther down.
> +	 */
> +	intel_ddi_init_dp_buf_reg(encoder, crtc_state);
> +
>  	/*
>  	 * 1. Enable Power Wells
>  	 *
> @@ -2416,16 +2423,6 @@ static void dg2_ddi_pre_enable_dp(struct intel_atomic_state *state,
>  	/* 5.e Configure voltage swing and related IO settings */
>  	intel_snps_phy_ddi_vswing_sequence(encoder, crtc_state, level);
>  
> -	/*
> -	 * 5.f Configure and enable DDI_BUF_CTL
> -	 * 5.g Wait for DDI_BUF_CTL DDI Idle Status = 0b (Not Idle), timeout
> -	 *     after 1200 us.
> -	 *
> -	 * We only configure what the register value will be here.  Actual
> -	 * enabling happens during link training farther down.
> -	 */
> -	intel_ddi_init_dp_buf_reg(encoder, crtc_state);
> -
>  	if (!is_mst)
>  		intel_dp_set_power(intel_dp, DP_SET_POWER_D0);
>  
> @@ -2473,6 +2470,12 @@ static void tgl_ddi_pre_enable_dp(struct intel_atomic_state *state,
>  				 crtc_state->port_clock,
>  				 crtc_state->lane_count);
>  
> +	/*
> +	 * We only configure what the register value will be here.  Actual
> +	 * enabling happens during link training farther down.
> +	 */
> +	intel_ddi_init_dp_buf_reg(encoder, crtc_state);
> +
>  	/*
>  	 * 1. Enable Power Wells
>  	 *
> @@ -2554,16 +2557,6 @@ static void tgl_ddi_pre_enable_dp(struct intel_atomic_state *state,
>  	 */
>  	intel_ddi_mso_configure(crtc_state);
>  
> -	/*
> -	 * 7.g Configure and enable DDI_BUF_CTL
> -	 * 7.h Wait for DDI_BUF_CTL DDI Idle Status = 0b (Not Idle), timeout
> -	 *     after 500 us.
> -	 *
> -	 * We only configure what the register value will be here.  Actual
> -	 * enabling happens during link training farther down.
> -	 */
> -	intel_ddi_init_dp_buf_reg(encoder, crtc_state);
> -
>  	if (!is_mst)
>  		intel_dp_set_power(intel_dp, DP_SET_POWER_D0);
>  
> @@ -2620,6 +2613,12 @@ static void hsw_ddi_pre_enable_dp(struct intel_atomic_state *state,
>  				 crtc_state->port_clock,
>  				 crtc_state->lane_count);
>  
> +	/*
> +	 * We only configure what the register value will be here.  Actual
> +	 * enabling happens during link training farther down.
> +	 */
> +	intel_ddi_init_dp_buf_reg(encoder, crtc_state);
> +
>  	intel_pps_on(intel_dp);
>  
>  	intel_ddi_enable_clock(encoder, crtc_state);
> @@ -2641,7 +2640,6 @@ static void hsw_ddi_pre_enable_dp(struct intel_atomic_state *state,
>  
>  	intel_ddi_power_up_lanes(encoder, crtc_state);
>  
> -	intel_ddi_init_dp_buf_reg(encoder, crtc_state);
>  	if (!is_mst)
>  		intel_dp_set_power(intel_dp, DP_SET_POWER_D0);
>  	intel_dp_configure_protocol_converter(intel_dp, crtc_state);
> -- 
> 2.32.0
> 
