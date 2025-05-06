Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 700B0AAC159
	for <lists+intel-gfx@lfdr.de>; Tue,  6 May 2025 12:27:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4736910E349;
	Tue,  6 May 2025 10:27:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3923210E349;
 Tue,  6 May 2025 10:27:53 +0000 (UTC)
Received: from 91-155-254-19.elisa-laajakaista.fi ([91.155.254.19]
 helo=[192.168.100.137])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.97) (envelope-from <luca@coelho.fi>)
 id 1uCFWf-000000076Yp-48FW; Tue, 06 May 2025 13:27:51 +0300
Message-ID: <d4c0e8484a395ebef26cf22f592cadc644836197.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org
Date: Tue, 06 May 2025 13:27:48 +0300
In-Reply-To: <20250428133135.3396080-8-imre.deak@intel.com>
References: <20250428133135.3396080-1-imre.deak@intel.com>
 <20250428133135.3396080-8-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.1-1 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.1-pre1 (2023-11-21) on
 farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
 version=4.0.1-pre1
Subject: Re: [PATCH v2 07/12] drm/i915/dp: Limit max link bpp properly to a
 fractional value on SST
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

On Mon, 2025-04-28 at 16:31 +0300, Imre Deak wrote:
> The maximum link bpp - determined by the link BW for instance - can be
> fractional, handle this properly during computing the link bpp on SST.
>=20
> This keeps the pipe joiner specific maximum link bpp as a rounded-down
> integer value still, changing that to a fractional value is left for
> later.
>=20
> v2: Align the min/max bpp value to the bpp step.
>=20
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 17 ++++++++---------
>  1 file changed, 8 insertions(+), 9 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 42b45598a0134..7abc5286f4ccc 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -27,6 +27,8 @@
> =20
>  #include <linux/export.h>
>  #include <linux/i2c.h>
> +#include <linux/log2.h>
> +#include <linux/math.h>
>  #include <linux/notifier.h>
>  #include <linux/seq_buf.h>
>  #include <linux/slab.h>
> @@ -938,6 +940,7 @@ static u32 ultrajoiner_ram_max_bpp(u32 mode_hdisplay)
>  	return ultrajoiner_ram_bits() / mode_hdisplay;
>  }
> =20
> +/* TODO: return a bpp_x16 value */
>  static
>  u32 get_max_compressed_bpp_with_joiner(struct intel_display *display,
>  				       u32 mode_clock, u32 mode_hdisplay,
> @@ -2152,24 +2155,16 @@ static int dsc_compute_compressed_bpp(struct inte=
l_dp *intel_dp,
>  	const struct intel_connector *connector =3D to_intel_connector(conn_sta=
te->connector);
>  	const struct drm_display_mode *adjusted_mode =3D &pipe_config->hw.adjus=
ted_mode;
>  	int output_bpp;
> -	int dsc_min_bpp;
> -	int dsc_max_bpp;
>  	int min_bpp_x16, max_bpp_x16, bpp_step_x16;
>  	int dsc_joiner_max_bpp;
>  	int num_joined_pipes =3D intel_crtc_num_joined_pipes(pipe_config);
>  	int bpp_x16;
>  	int ret;
> =20
> -	dsc_min_bpp =3D fxp_q4_to_int_roundup(limits->link.min_bpp_x16);
> -
>  	dsc_joiner_max_bpp =3D get_max_compressed_bpp_with_joiner(display, adju=
sted_mode->clock,
>  								adjusted_mode->hdisplay,
>  								num_joined_pipes);
> -	dsc_max_bpp =3D min(dsc_joiner_max_bpp, fxp_q4_to_int(limits->link.max_=
bpp_x16));
> -
> -	/* FIXME: remove the round trip via integers */
> -	min_bpp_x16 =3D fxp_q4_from_int(dsc_min_bpp);
> -	max_bpp_x16 =3D fxp_q4_from_int(dsc_max_bpp);
> +	max_bpp_x16 =3D min(fxp_q4_from_int(dsc_joiner_max_bpp), limits->link.m=
ax_bpp_x16);
> =20
>  	bpp_step_x16 =3D intel_dp_dsc_bpp_step_x16(connector);
> =20
> @@ -2177,6 +2172,10 @@ static int dsc_compute_compressed_bpp(struct intel=
_dp *intel_dp,
>  	output_bpp =3D intel_dp_output_bpp(pipe_config->output_format, pipe_bpp=
);
>  	max_bpp_x16 =3D min(max_bpp_x16, fxp_q4_from_int(output_bpp) - bpp_step=
_x16);
> =20
> +	drm_WARN_ON(display->drm, !is_power_of_2(bpp_step_x16));
> +	min_bpp_x16 =3D round_up(limits->link.min_bpp_x16, bpp_step_x16);
> +	max_bpp_x16 =3D round_down(max_bpp_x16, bpp_step_x16);
> +
>  	for (bpp_x16 =3D max_bpp_x16; bpp_x16 >=3D min_bpp_x16; bpp_x16 -=3D bp=
p_step_x16) {
>  		if (!intel_dp_dsc_valid_compressed_bpp(intel_dp, bpp_x16))
>  			continue;

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.
