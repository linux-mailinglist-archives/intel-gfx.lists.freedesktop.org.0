Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 503C5CB324D
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Dec 2025 15:29:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95BA010E72B;
	Wed, 10 Dec 2025 14:29:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45B1010E72B;
 Wed, 10 Dec 2025 14:29:20 +0000 (UTC)
Received: from mobile-access-5d6aa7-235.dhcp.inet.fi ([93.106.167.235]
 helo=[192.168.8.139])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.98.2) (envelope-from <luca@coelho.fi>)
 id 1vTLBs-00000000ibw-12HQ; Wed, 10 Dec 2025 16:29:18 +0200
Message-ID: <e62e13f4564695a3eeee31c0c3700287062bb868.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org
Date: Wed, 10 Dec 2025 16:29:14 +0200
In-Reply-To: <20251127175023.1522538-13-imre.deak@intel.com>
References: <20251127175023.1522538-1-imre.deak@intel.com>
 <20251127175023.1522538-13-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-7 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.2 (2025-08-27) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
 autolearn=ham autolearn_force=no version=4.0.2
Subject: Re: [PATCH 12/50] drm/i915/dp: Account with pipe joiner max
 compressed BPP limit for DP-MST and eDP
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
> The pipe joiner maximum compressed BPP must be limited based on the pipe
> joiner memory size and BW, do that for all DP outputs by adjusting the
> max compressed BPP value already in
> intel_dp_compute_config_link_bpp_limits() (which is used by all output
> types).
>=20
> This way the BPP doesn't need to be adjusted in
> dsc_compute_compressed_bpp() (called for DP-SST after the above limits
> were computed already), so remove the adjustment from there.
>=20
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 55be648283b19..def1f869febc2 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2245,19 +2245,12 @@ static int dsc_compute_compressed_bpp(struct inte=
l_dp *intel_dp,
>  {
>  	struct intel_display *display =3D to_intel_display(intel_dp);
>  	const struct intel_connector *connector =3D to_intel_connector(conn_sta=
te->connector);
> -	const struct drm_display_mode *adjusted_mode =3D &pipe_config->hw.adjus=
ted_mode;
>  	int min_bpp_x16, max_bpp_x16, bpp_step_x16;
> -	int dsc_joiner_max_bpp;
> -	int num_joined_pipes =3D intel_crtc_num_joined_pipes(pipe_config);
>  	int link_bpp_x16;
>  	int bpp_x16;
>  	int ret;
> =20
> -	dsc_joiner_max_bpp =3D get_max_compressed_bpp_with_joiner(display, adju=
sted_mode->crtc_clock,
> -								adjusted_mode->hdisplay,
> -								num_joined_pipes);
> -	max_bpp_x16 =3D min(fxp_q4_from_int(dsc_joiner_max_bpp), limits->link.m=
ax_bpp_x16);
> -
> +	max_bpp_x16 =3D limits->link.max_bpp_x16;
>  	bpp_step_x16 =3D intel_dp_dsc_bpp_step_x16(connector);
> =20
>  	/* Compressed BPP should be less than the Input DSC bpp */
> @@ -2613,6 +2606,7 @@ intel_dp_compute_config_link_bpp_limits(struct inte=
l_dp *intel_dp,
>  		int dsc_src_min_bpp, dsc_sink_min_bpp, dsc_min_bpp;
>  		int dsc_src_max_bpp, dsc_sink_max_bpp, dsc_max_bpp;
>  		int throughput_max_bpp_x16;
> +		int joiner_max_bpp;
> =20
>  		dsc_src_min_bpp =3D intel_dp_dsc_min_src_compressed_bpp();
>  		dsc_sink_min_bpp =3D intel_dp_dsc_sink_min_compressed_bpp(crtc_state);
> @@ -2620,11 +2614,17 @@ intel_dp_compute_config_link_bpp_limits(struct in=
tel_dp *intel_dp,
>  		limits->link.min_bpp_x16 =3D fxp_q4_from_int(dsc_min_bpp);
> =20
>  		dsc_src_max_bpp =3D dsc_src_max_compressed_bpp(intel_dp);
> +		joiner_max_bpp =3D
> +			get_max_compressed_bpp_with_joiner(display,
> +							   adjusted_mode->crtc_clock,
> +							   adjusted_mode->hdisplay,
> +							   intel_crtc_num_joined_pipes(crtc_state));
>  		dsc_sink_max_bpp =3D intel_dp_dsc_sink_max_compressed_bpp(connector,
>  									crtc_state,
>  									limits->pipe.max_bpp / 3);
>  		dsc_max_bpp =3D dsc_sink_max_bpp ?
>  			      min(dsc_sink_max_bpp, dsc_src_max_bpp) : dsc_src_max_bpp;
> +		dsc_max_bpp =3D min(dsc_max_bpp, joiner_max_bpp);
> =20
>  		max_link_bpp_x16 =3D min(max_link_bpp_x16, fxp_q4_from_int(dsc_max_bpp=
));
> =20

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.
