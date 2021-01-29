Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CAC1308AB1
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Jan 2021 17:57:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDF916E580;
	Fri, 29 Jan 2021 16:57:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C397D6E580
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Jan 2021 16:57:37 +0000 (UTC)
IronPort-SDR: PZI+E75XUVylEw8O6nD4ynSqJQZP1TtSixJo63D0yaixGPlxf1oXlNc43xuaZYlCAZhIFia0T3
 rVHstaD5iMzg==
X-IronPort-AV: E=McAfee;i="6000,8403,9879"; a="199298015"
X-IronPort-AV: E=Sophos;i="5.79,386,1602572400"; d="scan'208";a="199298015"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2021 08:57:36 -0800
IronPort-SDR: Uhgu4+iz5u6Yv9X+PIrouD0tiAxiE8Oo6szF+PlGrLIlcBcutWUlAvrzzciasD5xmbN+CBOAYX
 ObffK6RQKZRw==
X-IronPort-AV: E=Sophos;i="5.79,386,1602572400"; d="scan'208";a="389373747"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2021 08:57:33 -0800
Date: Fri, 29 Jan 2021 18:57:31 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20210129165731.GB183052@ideak-desk.fi.intel.com>
References: <20210128155948.13678-1-ville.syrjala@linux.intel.com>
 <20210128155948.13678-2-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210128155948.13678-2-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 2/5] drm/i915: Extract
 intel_ddi_power_up_lanes()
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jan 28, 2021 at 05:59:45PM +0200, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Reduce the copypasta by pulling the combo PHY lane
> power up stuff into a helper. We'll have a third user soon.
> =

> Cc: stable@vger.kernel.org
> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 35 +++++++++++++-----------
>  1 file changed, 19 insertions(+), 16 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index c94650488dc1..88cc6e2fbe91 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3641,6 +3641,23 @@ static void intel_ddi_disable_fec_state(struct int=
el_encoder *encoder,
>  	intel_de_posting_read(dev_priv, dp_tp_ctl_reg(encoder, crtc_state));
>  }
>  =

> +static void intel_ddi_power_up_lanes(struct intel_encoder *encoder,
> +				     const struct intel_crtc_state *crtc_state)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> +	struct intel_digital_port *dig_port =3D enc_to_dig_port(encoder);
> +	enum phy phy =3D intel_port_to_phy(i915, encoder->port);
> +
> +	if (intel_phy_is_combo(i915, phy)) {
> +		bool lane_reversal =3D
> +			dig_port->saved_port_bits & DDI_BUF_PORT_REVERSAL;
> +
> +		intel_combo_phy_power_up_lanes(i915, phy, false,
> +					       crtc_state->lane_count,
> +					       lane_reversal);
> +	}
> +}
> +
>  static void tgl_ddi_pre_enable_dp(struct intel_atomic_state *state,
>  				  struct intel_encoder *encoder,
>  				  const struct intel_crtc_state *crtc_state,
> @@ -3732,14 +3749,7 @@ static void tgl_ddi_pre_enable_dp(struct intel_ato=
mic_state *state,
>  	 * 7.f Combo PHY: Configure PORT_CL_DW10 Static Power Down to power up
>  	 * the used lanes of the DDI.
>  	 */
> -	if (intel_phy_is_combo(dev_priv, phy)) {
> -		bool lane_reversal =3D
> -			dig_port->saved_port_bits & DDI_BUF_PORT_REVERSAL;
> -
> -		intel_combo_phy_power_up_lanes(dev_priv, phy, false,
> -					       crtc_state->lane_count,
> -					       lane_reversal);
> -	}
> +	intel_ddi_power_up_lanes(encoder, crtc_state);
>  =

>  	/*
>  	 * 7.g Configure and enable DDI_BUF_CTL
> @@ -3830,14 +3840,7 @@ static void hsw_ddi_pre_enable_dp(struct intel_ato=
mic_state *state,
>  	else
>  		intel_prepare_dp_ddi_buffers(encoder, crtc_state);
>  =

> -	if (intel_phy_is_combo(dev_priv, phy)) {
> -		bool lane_reversal =3D
> -			dig_port->saved_port_bits & DDI_BUF_PORT_REVERSAL;
> -
> -		intel_combo_phy_power_up_lanes(dev_priv, phy, false,
> -					       crtc_state->lane_count,
> -					       lane_reversal);
> -	}
> +	intel_ddi_power_up_lanes(encoder, crtc_state);
>  =

>  	intel_ddi_init_dp_buf_reg(encoder, crtc_state);
>  	if (!is_mst)
> -- =

> 2.26.2
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
