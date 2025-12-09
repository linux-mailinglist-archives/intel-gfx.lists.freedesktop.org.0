Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B20CCAF658
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Dec 2025 10:10:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BC5410E4DF;
	Tue,  9 Dec 2025 09:10:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DAA710E4D5;
 Tue,  9 Dec 2025 09:10:34 +0000 (UTC)
Received: from mobile-access-5d6aa7-235.dhcp.inet.fi ([93.106.167.235]
 helo=[192.168.8.139])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.98.2) (envelope-from <luca@coelho.fi>)
 id 1vStjr-00000000gUP-2BuO; Tue, 09 Dec 2025 11:10:32 +0200
Message-ID: <551f934f57f8d95ed17071f605249c7c4d1da66e.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org
Date: Tue, 09 Dec 2025 11:10:30 +0200
In-Reply-To: <20251127175023.1522538-5-imre.deak@intel.com>
References: <20251127175023.1522538-1-imre.deak@intel.com>
 <20251127175023.1522538-5-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-7 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.2 (2025-08-27) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
 autolearn=ham autolearn_force=no version=4.0.2
Subject: Re: [PATCH 04/50] drm/i915/dp: Return a fixed point BPP value from
 intel_dp_output_bpp()
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
> Convert intel_dp_output_bpp() and intel_dp_mode_min_output_bpp() to
> return an x16 fixed point bpp value, as this value will be always the
> link BPP (either compressed or uncompressed) tracked in the same x16
> fixed point format.
>=20
> While at it rename

This line break can be avoided.

> intel_dp_output_bpp() to intel_dp_output_format_link_bpp_x16() and
> intel_dp_mode_min_output_bpp() to intel_dp_mode_min_link_bpp_x16() to
> better reflect that these functions return an x16 link BPP value
> specific to a particular output format or mode.
>=20
> Also rename intel_dp_output_bpp()'s bpp parameter to pipe_bpp, to
> clarify which kind of (pipe vs. link) BPP the parameter is.
>=20
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c     | 41 +++++++++++----------
>  drivers/gpu/drm/i915/display/intel_dp.h     |  3 +-
>  drivers/gpu/drm/i915/display/intel_dp_mst.c |  4 +-
>  3 files changed, 26 insertions(+), 22 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 6d232c15a0b5a..beda340d05923 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1234,7 +1234,7 @@ int intel_dp_min_bpp(enum intel_output_format outpu=
t_format)
>  		return 8 * 3;
>  }
> =20
> -int intel_dp_output_bpp(enum intel_output_format output_format, int bpp)
> +int intel_dp_output_format_link_bpp_x16(enum intel_output_format output_=
format, int pipe_bpp)
>  {
>  	/*
>  	 * bpp value was assumed to RGB format. And YCbCr 4:2:0 output
> @@ -1242,9 +1242,9 @@ int intel_dp_output_bpp(enum intel_output_format ou=
tput_format, int bpp)
>  	 * of bytes of RGB pixel.
>  	 */
>  	if (output_format =3D=3D INTEL_OUTPUT_FORMAT_YCBCR420)
> -		bpp /=3D 2;
> +		pipe_bpp /=3D 2;
> =20
> -	return bpp;
> +	return fxp_q4_from_int(pipe_bpp);
>  }
> =20
>  static enum intel_output_format
> @@ -1260,8 +1260,8 @@ intel_dp_sink_format(struct intel_connector *connec=
tor,
>  }
> =20
>  static int
> -intel_dp_mode_min_output_bpp(struct intel_connector *connector,
> -			     const struct drm_display_mode *mode)
> +intel_dp_mode_min_link_bpp_x16(struct intel_connector *connector,
> +			       const struct drm_display_mode *mode)
>  {
>  	enum intel_output_format output_format, sink_format;
> =20
> @@ -1269,7 +1269,8 @@ intel_dp_mode_min_output_bpp(struct intel_connector=
 *connector,
> =20
>  	output_format =3D intel_dp_output_format(connector, sink_format);
> =20
> -	return intel_dp_output_bpp(output_format, intel_dp_min_bpp(output_forma=
t));
> +	return intel_dp_output_format_link_bpp_x16(output_format,
> +						   intel_dp_min_bpp(output_format));
>  }
> =20
>  static bool intel_dp_hdisplay_bad(struct intel_display *display,
> @@ -1341,11 +1342,11 @@ intel_dp_mode_valid_downstream(struct intel_conne=
ctor *connector,
> =20
>  	/* If PCON supports FRL MODE, check FRL bandwidth constraints */
>  	if (intel_dp->dfp.pcon_max_frl_bw) {
> +		int link_bpp_x16 =3D intel_dp_mode_min_link_bpp_x16(connector, mode);
>  		int target_bw;
>  		int max_frl_bw;
> -		int bpp =3D intel_dp_mode_min_output_bpp(connector, mode);
> =20
> -		target_bw =3D bpp * target_clock;
> +		target_bw =3D fxp_q4_to_int_roundup(link_bpp_x16) * target_clock;
> =20
>  		max_frl_bw =3D intel_dp->dfp.pcon_max_frl_bw;
> =20
> @@ -1460,6 +1461,7 @@ intel_dp_mode_valid(struct drm_connector *_connecto=
r,
>  	enum drm_mode_status status;
>  	bool dsc =3D false;
>  	int num_joined_pipes;
> +	int link_bpp_x16;
> =20
>  	status =3D intel_cpu_transcoder_mode_valid(display, mode);
>  	if (status !=3D MODE_OK)
> @@ -1502,8 +1504,8 @@ intel_dp_mode_valid(struct drm_connector *_connecto=
r,
> =20
>  	max_rate =3D intel_dp_max_link_data_rate(intel_dp, max_link_clock, max_=
lanes);
> =20
> -	mode_rate =3D intel_dp_link_required(target_clock,
> -					   intel_dp_mode_min_output_bpp(connector, mode));
> +	link_bpp_x16 =3D intel_dp_mode_min_link_bpp_x16(connector, mode);
> +	mode_rate =3D intel_dp_link_required(target_clock, fxp_q4_to_int_roundu=
p(link_bpp_x16));
> =20
>  	if (intel_dp_has_dsc(connector)) {
>  		int pipe_bpp;
> @@ -1815,9 +1817,10 @@ intel_dp_compute_link_config_wide(struct intel_dp =
*intel_dp,
>  	for (bpp =3D fxp_q4_to_int(limits->link.max_bpp_x16);
>  	     bpp >=3D fxp_q4_to_int(limits->link.min_bpp_x16);
>  	     bpp -=3D 2 * 3) {
> -		int link_bpp =3D intel_dp_output_bpp(pipe_config->output_format, bpp);
> +		int link_bpp_x16 =3D
> +			intel_dp_output_format_link_bpp_x16(pipe_config->output_format, bpp);
> =20
> -		mode_rate =3D intel_dp_link_required(clock, link_bpp);
> +		mode_rate =3D intel_dp_link_required(clock, fxp_q4_to_int_roundup(link=
_bpp_x16));
> =20
>  		for (i =3D 0; i < intel_dp->num_common_rates; i++) {
>  			link_rate =3D intel_dp_common_rate(intel_dp, i);
> @@ -2201,10 +2204,10 @@ static int dsc_compute_compressed_bpp(struct inte=
l_dp *intel_dp,
>  	struct intel_display *display =3D to_intel_display(intel_dp);
>  	const struct intel_connector *connector =3D to_intel_connector(conn_sta=
te->connector);
>  	const struct drm_display_mode *adjusted_mode =3D &pipe_config->hw.adjus=
ted_mode;
> -	int output_bpp;
>  	int min_bpp_x16, max_bpp_x16, bpp_step_x16;
>  	int dsc_joiner_max_bpp;
>  	int num_joined_pipes =3D intel_crtc_num_joined_pipes(pipe_config);
> +	int link_bpp_x16;
>  	int bpp_x16;
>  	int ret;
> =20
> @@ -2216,8 +2219,8 @@ static int dsc_compute_compressed_bpp(struct intel_=
dp *intel_dp,
>  	bpp_step_x16 =3D intel_dp_dsc_bpp_step_x16(connector);
> =20
>  	/* Compressed BPP should be less than the Input DSC bpp */
> -	output_bpp =3D intel_dp_output_bpp(pipe_config->output_format, pipe_bpp=
);
> -	max_bpp_x16 =3D min(max_bpp_x16, fxp_q4_from_int(output_bpp) - bpp_step=
_x16);
> +	link_bpp_x16 =3D intel_dp_output_format_link_bpp_x16(pipe_config->outpu=
t_format, pipe_bpp);
> +	max_bpp_x16 =3D min(max_bpp_x16, link_bpp_x16 - bpp_step_x16);
> =20
>  	drm_WARN_ON(display->drm, !is_power_of_2(bpp_step_x16));
>  	min_bpp_x16 =3D round_up(limits->link.min_bpp_x16, bpp_step_x16);
> @@ -3267,8 +3270,8 @@ int intel_dp_compute_min_hblank(struct intel_crtc_s=
tate *crtc_state,
>  	if (crtc_state->dsc.compression_enable)
>  		link_bpp_x16 =3D crtc_state->dsc.compressed_bpp_x16;
>  	else
> -		link_bpp_x16 =3D fxp_q4_from_int(intel_dp_output_bpp(crtc_state->outpu=
t_format,
> -								   crtc_state->pipe_bpp));
> +		link_bpp_x16 =3D intel_dp_output_format_link_bpp_x16(crtc_state->outpu=
t_format,
> +								   crtc_state->pipe_bpp);
> =20
>  	/* Calculate min Hblank Link Layer Symbol Cycle Count for 8b/10b MST & =
128b/132b */
>  	hactive_sym_cycles =3D drm_dp_link_symbol_cycles(max_lane_count,
> @@ -3378,8 +3381,8 @@ intel_dp_compute_config(struct intel_encoder *encod=
er,
>  	if (pipe_config->dsc.compression_enable)
>  		link_bpp_x16 =3D pipe_config->dsc.compressed_bpp_x16;
>  	else
> -		link_bpp_x16 =3D fxp_q4_from_int(intel_dp_output_bpp(pipe_config->outp=
ut_format,
> -								   pipe_config->pipe_bpp));
> +		link_bpp_x16 =3D intel_dp_output_format_link_bpp_x16(pipe_config->outp=
ut_format,
> +								   pipe_config->pipe_bpp);
> =20
>  	if (intel_dp->mso_link_count) {
>  		int n =3D intel_dp->mso_link_count;
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i9=
15/display/intel_dp.h
> index 200a8b267f647..97e361458f760 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -193,7 +193,8 @@ void intel_dp_pcon_dsc_configure(struct intel_dp *int=
el_dp,
> =20
>  void intel_dp_invalidate_source_oui(struct intel_dp *intel_dp);
>  void intel_dp_wait_source_oui(struct intel_dp *intel_dp);
> -int intel_dp_output_bpp(enum intel_output_format output_format, int bpp)=
;
> +int intel_dp_output_format_link_bpp_x16(enum intel_output_format output_=
format,
> +					int pipe_bpp);

I'm not the biggest fan of very long function names like this, but I
can't come up with anything better...


> =20
>  bool intel_dp_compute_config_limits(struct intel_dp *intel_dp,
>  				    struct drm_connector_state *conn_state,
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/dr=
m/i915/display/intel_dp_mst.c
> index 4c0b943fe86f1..1a4784f0cd6bd 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -344,8 +344,8 @@ int intel_dp_mtp_tu_compute_config(struct intel_dp *i=
ntel_dp,
>  		}
> =20
>  		link_bpp_x16 =3D dsc ? bpp_x16 :
> -			fxp_q4_from_int(intel_dp_output_bpp(crtc_state->output_format,
> -							    fxp_q4_to_int(bpp_x16)));
> +			intel_dp_output_format_link_bpp_x16(crtc_state->output_format,
> +							    fxp_q4_to_int(bpp_x16));
> =20
>  		local_bw_overhead =3D intel_dp_mst_bw_overhead(crtc_state,
>  							     false, dsc_slice_count, link_bpp_x16);

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.
