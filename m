Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F28EDAAC0C0
	for <lists+intel-gfx@lfdr.de>; Tue,  6 May 2025 12:03:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5320210E33F;
	Tue,  6 May 2025 10:03:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5176210E33F;
 Tue,  6 May 2025 10:03:47 +0000 (UTC)
Received: from 91-155-254-19.elisa-laajakaista.fi ([91.155.254.19]
 helo=[192.168.100.137])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.97) (envelope-from <luca@coelho.fi>)
 id 1uCF9N-000000076WE-10GO; Tue, 06 May 2025 13:03:45 +0300
Message-ID: <cc1e96f25b426c1521f4e603ef0a67e431d1fb29.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>
Date: Tue, 06 May 2025 13:03:43 +0300
In-Reply-To: <20250428133135.3396080-4-imre.deak@intel.com>
References: <20250428133135.3396080-1-imre.deak@intel.com>
 <20250428133135.3396080-4-imre.deak@intel.com>
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
Subject: Re: [PATCH v2 03/12] drm/i915/dp_mst: Validate compressed bpp vs.
 platform restrictions
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
> Atm TGL supports only a fixed set of valid DSC compressed bpps
> (6,8,10,12,15), but this is not taken into account while looking for a
> bpp in the minimum..maximum compressed bpp range.
>=20
> This happened to work only by chance since atm from the above min..max
> range it's always the maximum bpp that is selected, which is one of the
> above valid bpps (see mst_stream_dsc_compute_link_config() ->
> intel_dp_dsc_nearest_valid_bpp()). Before selecting a bpp however, the
> bpp's BW requirement should be checked wrt. to the MST total link BW;
> after doing that - in a follow-up change - the validity of any bpp in
> the min..max range must be ensured before the bpp is selected, do that
> here.
>=20
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c     | 9 ++++++---
>  drivers/gpu/drm/i915/display/intel_dp.h     | 1 +
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 6 ++++++
>  3 files changed, 13 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index d63aea7ee9c80..5c206faadf93a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2110,8 +2110,11 @@ static int intel_dp_dsc_bpp_step_x16(const struct =
intel_connector *connector)
>  	return fxp_q4_from_int(1) / incr;
>  }
> =20
> -/* Note: This is not universally usable! */
> -static bool intel_dp_dsc_valid_bpp(struct intel_dp *intel_dp, int bpp_x1=
6)
> +/*
> + * Note: for bpp_x16 to be valid it must be also within the source/sink'=
s
> + * min..max bpp capability range.
> + */
> +bool intel_dp_dsc_valid_compressed_bpp(struct intel_dp *intel_dp, int bp=
p_x16)
>  {
>  	struct intel_display *display =3D to_intel_display(intel_dp);
>  	int i;
> @@ -2175,7 +2178,7 @@ static int dsc_compute_compressed_bpp(struct intel_=
dp *intel_dp,
>  	max_bpp_x16 =3D min(max_bpp_x16, fxp_q4_from_int(output_bpp) - bpp_step=
_x16);
> =20
>  	for (bpp_x16 =3D max_bpp_x16; bpp_x16 >=3D min_bpp_x16; bpp_x16 -=3D bp=
p_step_x16) {
> -		if (!intel_dp_dsc_valid_bpp(intel_dp, bpp_x16))
> +		if (!intel_dp_dsc_valid_compressed_bpp(intel_dp, bpp_x16))
>  			continue;
> =20
>  		ret =3D dsc_compute_link_config(intel_dp,
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i9=
15/display/intel_dp.h
> index 98f90955fdb1d..a9dd9ed1afc9d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -147,6 +147,7 @@ int intel_dp_dsc_sink_min_compressed_bpp(const struct=
 intel_crtc_state *pipe_con
>  int intel_dp_dsc_sink_max_compressed_bpp(const struct intel_connector *c=
onnector,
>  					 const struct intel_crtc_state *pipe_config,
>  					 int bpc);
> +bool intel_dp_dsc_valid_compressed_bpp(struct intel_dp *intel_dp, int bp=
p_x16);
>  u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
>  				int mode_clock, int mode_hdisplay,
>  				int num_joined_pipes);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/dr=
m/i915/display/intel_dp_mst.c
> index d8033e55dc093..8e1ed3b38217d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -330,6 +330,12 @@ int intel_dp_mtp_tu_compute_config(struct intel_dp *=
intel_dp,
> =20
>  		drm_dbg_kms(display->drm, "Trying bpp " FXP_Q4_FMT "\n", FXP_Q4_ARGS(b=
pp_x16));
> =20
> +		if (dsc && !intel_dp_dsc_valid_compressed_bpp(intel_dp, bpp_x16)) {
> +			/* SST must have validated the single bpp tried here already earlier.=
 */
> +			drm_WARN_ON(display->drm, !is_mst);
> +			continue;
> +		}
> +
>  		link_bpp_x16 =3D dsc ? bpp_x16 :
>  			fxp_q4_from_int(intel_dp_output_bpp(crtc_state->output_format,
>  							    fxp_q4_to_int(bpp_x16)));

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.
