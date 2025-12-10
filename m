Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ED2ECB2F24
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Dec 2025 13:48:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9FF510E716;
	Wed, 10 Dec 2025 12:48:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CC7110E715;
 Wed, 10 Dec 2025 12:48:21 +0000 (UTC)
Received: from mobile-access-5d6aa7-235.dhcp.inet.fi ([93.106.167.235]
 helo=[192.168.8.139])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.98.2) (envelope-from <luca@coelho.fi>)
 id 1vTJc9-00000000iTj-2iIQ; Wed, 10 Dec 2025 14:48:19 +0200
Message-ID: <dddae800bb5763d395f7567b6e47c5831523e24e.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org
Date: Wed, 10 Dec 2025 14:48:15 +0200
In-Reply-To: <20251127175023.1522538-9-imre.deak@intel.com>
References: <20251127175023.1522538-1-imre.deak@intel.com>
 <20251127175023.1522538-9-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-7 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.2 (2025-08-27) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
 autolearn=ham autolearn_force=no version=4.0.2
Subject: Re: [PATCH 08/50] drm/i915/dp: Use the effective data rate for DP
 BW calculation
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

On Thu, 2025-11-27 at 19:49 +0200, Imre Deak wrote:
> Use intel_dp_effective_data_rate() to calculate the required link BW for
> eDP, DP-SST and MST links. This ensures that the BW is calculated the
> same way for all DP output types, during mode validation as well as
> during state computation. This approach also allows for accounting with
> BW overheads due to the SSC, DSC, FEC being enabled on a link, as well
> as due to the MST symbol alignment on the link. Accounting for these
> overheads will be added by follow-up changes.
>=20
> This way also computes the stream BW on a UHBR link correctly, using the
> corresponding symbol size to effective data size ratio (i.e. ~97% link
> BW utilization for UHBR vs. only ~80% for non-UHBR).
>=20
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c       | 40 +++++++++++--------
>  drivers/gpu/drm/i915/display/intel_dp.h       |  4 +-
>  .../drm/i915/display/intel_dp_link_training.c |  4 +-
>  drivers/gpu/drm/i915/display/intel_dp_mst.c   |  4 +-
>  4 files changed, 33 insertions(+), 19 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 4556a57db7c02..aa55a81a9a9bf 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -453,15 +453,15 @@ int intel_dp_link_bw_overhead(int link_clock, int l=
ane_count, int hdisplay,
>  /*
>   * The required data bandwidth for a mode with given pixel clock and bpp=
. This
>   * is the required net bandwidth independent of the data bandwidth effic=
iency.
> - *
> - * TODO: check if callers of this functions should use
> - * intel_dp_effective_data_rate() instead.
>   */
> -int
> -intel_dp_link_required(int pixel_clock, int bpp)
> +int intel_dp_link_required(int link_clock, int lane_count,
> +			   int mode_clock, int mode_hdisplay,
> +			   int link_bpp_x16, unsigned long bw_overhead_flags)
>  {
> -	/* pixel_clock is in kHz, divide bpp by 8 for bit to Byte conversion */
> -	return DIV_ROUND_UP(pixel_clock * bpp, 8);
> +	int bw_overhead =3D intel_dp_link_bw_overhead(link_clock, lane_count, m=
ode_hdisplay,
> +						    0, link_bpp_x16, bw_overhead_flags);
> +
> +	return intel_dp_effective_data_rate(mode_clock, link_bpp_x16, bw_overhe=
ad);
>  }
> =20
>  /**
> @@ -1531,7 +1531,9 @@ intel_dp_mode_valid(struct drm_connector *_connecto=
r,
>  	max_rate =3D intel_dp_max_link_data_rate(intel_dp, max_link_clock, max_=
lanes);
> =20
>  	link_bpp_x16 =3D intel_dp_mode_min_link_bpp_x16(connector, mode);
> -	mode_rate =3D intel_dp_link_required(target_clock, fxp_q4_to_int_roundu=
p(link_bpp_x16));
> +	mode_rate =3D intel_dp_link_required(max_link_clock, max_lanes,
> +					   target_clock, mode->hdisplay,
> +					   link_bpp_x16, 0);
> =20
>  	if (intel_dp_has_dsc(connector)) {
>  		int pipe_bpp;
> @@ -1838,7 +1840,7 @@ intel_dp_compute_link_config_wide(struct intel_dp *=
intel_dp,
>  				  const struct link_config_limits *limits)
>  {
>  	int bpp, i, lane_count, clock =3D intel_dp_mode_clock(pipe_config, conn=
_state);
> -	int mode_rate, link_rate, link_avail;
> +	int link_rate, link_avail;
> =20
>  	for (bpp =3D fxp_q4_to_int(limits->link.max_bpp_x16);
>  	     bpp >=3D fxp_q4_to_int(limits->link.min_bpp_x16);
> @@ -1846,8 +1848,6 @@ intel_dp_compute_link_config_wide(struct intel_dp *=
intel_dp,
>  		int link_bpp_x16 =3D
>  			intel_dp_output_format_link_bpp_x16(pipe_config->output_format, bpp);
> =20
> -		mode_rate =3D intel_dp_link_required(clock, fxp_q4_to_int_roundup(link=
_bpp_x16));
> -
>  		for (i =3D 0; i < intel_dp->num_common_rates; i++) {
>  			link_rate =3D intel_dp_common_rate(intel_dp, i);
>  			if (link_rate < limits->min_rate ||
> @@ -1857,11 +1857,17 @@ intel_dp_compute_link_config_wide(struct intel_dp=
 *intel_dp,
>  			for (lane_count =3D limits->min_lane_count;
>  			     lane_count <=3D limits->max_lane_count;
>  			     lane_count <<=3D 1) {
> +				const struct drm_display_mode *adjusted_mode =3D
> +					&pipe_config->hw.adjusted_mode;
> +				int mode_rate =3D
> +					intel_dp_link_required(link_rate, lane_count,
> +							       clock, adjusted_mode->hdisplay,
> +							       link_bpp_x16, 0);
> +
>  				link_avail =3D intel_dp_max_link_data_rate(intel_dp,
>  									 link_rate,
>  									 lane_count);
> =20
> -
>  				if (mode_rate <=3D link_avail) {
>  					pipe_config->lane_count =3D lane_count;
>  					pipe_config->pipe_bpp =3D bpp;
> @@ -2724,11 +2730,13 @@ int intel_dp_config_required_rate(const struct in=
tel_crtc_state *crtc_state)
>  {
>  	const struct drm_display_mode *adjusted_mode =3D
>  		&crtc_state->hw.adjusted_mode;
> -	int bpp =3D crtc_state->dsc.compression_enable ?
> -		fxp_q4_to_int_roundup(crtc_state->dsc.compressed_bpp_x16) :
> -		crtc_state->pipe_bpp;
> +	int link_bpp_x16 =3D crtc_state->dsc.compression_enable ?
> +		crtc_state->dsc.compressed_bpp_x16 :
> +		fxp_q4_from_int(crtc_state->pipe_bpp);
> =20
> -	return intel_dp_link_required(adjusted_mode->crtc_clock, bpp);
> +	return intel_dp_link_required(crtc_state->port_clock, crtc_state->lane_=
count,
> +				      adjusted_mode->crtc_clock, adjusted_mode->hdisplay,
> +				      link_bpp_x16, 0);
>  }
> =20
>  bool intel_dp_joiner_needs_dsc(struct intel_display *display,
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i9=
15/display/intel_dp.h
> index d7f9410129f49..30eebb8cad6d2 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -119,7 +119,9 @@ bool intel_dp_source_supports_tps4(struct intel_displ=
ay *display);
> =20
>  int intel_dp_link_bw_overhead(int link_clock, int lane_count, int hdispl=
ay,
>  			      int dsc_slice_count, int bpp_x16, unsigned long flags);
> -int intel_dp_link_required(int pixel_clock, int bpp);
> +int intel_dp_link_required(int link_clock, int lane_count,
> +			   int mode_clock, int mode_hdisplay,
> +			   int link_bpp_x16, unsigned long bw_overhead_flags);
>  int intel_dp_effective_data_rate(int pixel_clock, int bpp_x16,
>  				 int bw_overhead);
>  int intel_dp_max_link_data_rate(struct intel_dp *intel_dp,
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/driv=
ers/gpu/drm/i915/display/intel_dp_link_training.c
> index aad5fe14962f9..54c585c59b900 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -1195,7 +1195,9 @@ static bool intel_dp_can_link_train_fallback_for_ed=
p(struct intel_dp *intel_dp,
>  		intel_panel_preferred_fixed_mode(intel_dp->attached_connector);
>  	int mode_rate, max_rate;
> =20
> -	mode_rate =3D intel_dp_link_required(fixed_mode->clock, 18);
> +	mode_rate =3D intel_dp_link_required(link_rate, lane_count,
> +					   fixed_mode->clock, fixed_mode->hdisplay,
> +					   fxp_q4_from_int(18), 0);
>  	max_rate =3D intel_dp_max_link_data_rate(intel_dp, link_rate, lane_coun=
t);
>  	if (mode_rate > max_rate)
>  		return false;
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/dr=
m/i915/display/intel_dp_mst.c
> index c1058b4a85d02..e4dd6b4ca0512 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -1489,7 +1489,9 @@ mst_connector_mode_valid_ctx(struct drm_connector *=
_connector,
> =20
>  	max_rate =3D intel_dp_max_link_data_rate(intel_dp,
>  					       max_link_clock, max_lanes);
> -	mode_rate =3D intel_dp_link_required(mode->clock, min_bpp);
> +	mode_rate =3D intel_dp_link_required(max_link_clock, max_lanes,
> +					   mode->clock, mode->hdisplay,
> +					   fxp_q4_from_int(min_bpp), 0);
> =20
>  	/*
>  	 * TODO:

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.
