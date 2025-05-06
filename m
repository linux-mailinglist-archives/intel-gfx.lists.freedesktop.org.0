Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 59CE3AAC0E8
	for <lists+intel-gfx@lfdr.de>; Tue,  6 May 2025 12:07:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF99310E64C;
	Tue,  6 May 2025 10:07:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9CEDD10E645;
 Tue,  6 May 2025 10:07:15 +0000 (UTC)
Received: from 91-155-254-19.elisa-laajakaista.fi ([91.155.254.19]
 helo=[192.168.100.137])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.97) (envelope-from <luca@coelho.fi>)
 id 1uCFCj-000000076Ww-3J0e; Tue, 06 May 2025 13:07:13 +0300
Message-ID: <e848bae6ae7ae0df2a9ce09bfd382bf1e784c97f.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>
Date: Tue, 06 May 2025 13:07:12 +0300
In-Reply-To: <20250428133135.3396080-5-imre.deak@intel.com>
References: <20250428133135.3396080-1-imre.deak@intel.com>
 <20250428133135.3396080-5-imre.deak@intel.com>
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
Subject: Re: [PATCH v2 04/12] drm/i915/dp_mst: Update the total link slot
 count early
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
> A follow up change will check a selected bpp's BW requirement in
> intel_dp_mtp_tu_compute_config(), however that requires the total link
> slot count to be up-to-date. The latter in turn depends on the channel
> encoding and hence the link rate used, so it can be set after the
> link rate used is selected.
>=20
> This also allows simplifying mst_stream_update_slots(), do that as well,
> moving the function definition before its use.
>=20
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 36 +++++++--------------
>  1 file changed, 11 insertions(+), 25 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/dr=
m/i915/display/intel_dp_mst.c
> index 8e1ed3b38217d..59afb550cd0cc 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -261,6 +261,15 @@ static void intel_dp_mst_compute_min_hblank(struct i=
ntel_crtc_state *crtc_state,
>  	crtc_state->min_hblank =3D hblank;
>  }
> =20
> +static void mst_stream_update_slots(const struct intel_crtc_state *crtc_=
state,
> +				    struct drm_dp_mst_topology_state *topology_state)
> +{
> +	u8 link_coding_cap =3D intel_dp_is_uhbr(crtc_state) ?
> +		DP_CAP_ANSI_128B132B : DP_CAP_ANSI_8B10B;
> +
> +	drm_dp_mst_update_slots(topology_state, link_coding_cap);
> +}
> +
>  int intel_dp_mtp_tu_compute_config(struct intel_dp *intel_dp,
>  				   struct intel_crtc_state *crtc_state,
>  				   struct drm_connector_state *conn_state,
> @@ -296,6 +305,8 @@ int intel_dp_mtp_tu_compute_config(struct intel_dp *i=
ntel_dp,
> =20
>  		mst_state->pbn_div =3D drm_dp_get_vc_payload_bw(crtc_state->port_clock=
,
>  							      crtc_state->lane_count);
> +
> +		mst_stream_update_slots(crtc_state, mst_state);
>  	}
> =20
>  	if (dsc) {
> @@ -513,27 +524,6 @@ static int mst_stream_dsc_compute_link_config(struct=
 intel_dp *intel_dp,
>  					      fxp_q4_from_int(1), true);
>  }
> =20
> -static int mst_stream_update_slots(struct intel_dp *intel_dp,
> -				   struct intel_crtc_state *crtc_state,
> -				   struct drm_connector_state *conn_state)
> -{
> -	struct intel_display *display =3D to_intel_display(intel_dp);
> -	struct drm_dp_mst_topology_mgr *mgr =3D &intel_dp->mst.mgr;
> -	struct drm_dp_mst_topology_state *topology_state;
> -	u8 link_coding_cap =3D intel_dp_is_uhbr(crtc_state) ?
> -		DP_CAP_ANSI_128B132B : DP_CAP_ANSI_8B10B;
> -
> -	topology_state =3D drm_atomic_get_mst_topology_state(conn_state->state,=
 mgr);
> -	if (IS_ERR(topology_state)) {
> -		drm_dbg_kms(display->drm, "slot update failed\n");
> -		return PTR_ERR(topology_state);
> -	}
> -
> -	drm_dp_mst_update_slots(topology_state, link_coding_cap);
> -
> -	return 0;
> -}
> -
>  static int mode_hblank_period_ns(const struct drm_display_mode *mode)
>  {
>  	return DIV_ROUND_CLOSEST_ULL(mul_u32_u32(mode->htotal - mode->hdisplay,
> @@ -736,10 +726,6 @@ static int mst_stream_compute_config(struct intel_en=
coder *encoder,
>  						  pipe_config->dp_m_n.tu);
>  	}
> =20
> -	if (ret)
> -		return ret;
> -
> -	ret =3D mst_stream_update_slots(intel_dp, pipe_config, conn_state);
>  	if (ret)
>  		return ret;
> =20

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.
