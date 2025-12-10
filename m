Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E097CB3268
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Dec 2025 15:32:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A723A10E752;
	Wed, 10 Dec 2025 14:31:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 47BA110E73F;
 Wed, 10 Dec 2025 14:31:57 +0000 (UTC)
Received: from mobile-access-5d6aa7-235.dhcp.inet.fi ([93.106.167.235]
 helo=[192.168.8.139])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.98.2) (envelope-from <luca@coelho.fi>)
 id 1vTLEQ-00000000icQ-0rUD; Wed, 10 Dec 2025 16:31:55 +0200
Message-ID: <7611013e2f48eecc1eaf2872e84b9a1d40af252c.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org
Date: Wed, 10 Dec 2025 16:31:52 +0200
In-Reply-To: <20251127175023.1522538-14-imre.deak@intel.com>
References: <20251127175023.1522538-1-imre.deak@intel.com>
 <20251127175023.1522538-14-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-7 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.2 (2025-08-27) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
 autolearn=ham autolearn_force=no version=4.0.2
Subject: Re: [PATCH 13/50] drm/i915/dp: Drop unused timeslots param from
 dsc_compute_link_config()
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
> Drop the unused timeslots parameter from dsc_compute_link_config() and
> other functions calling it.
>=20
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 18 +++++++-----------
>  1 file changed, 7 insertions(+), 11 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index def1f869febc2..000fccc39a292 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2046,8 +2046,7 @@ static int dsc_compute_link_config(struct intel_dp =
*intel_dp,
>  				   struct intel_crtc_state *pipe_config,
>  				   struct drm_connector_state *conn_state,
>  				   const struct link_config_limits *limits,
> -				   int dsc_bpp_x16,
> -				   int timeslots)
> +				   int dsc_bpp_x16)
>  {
>  	const struct drm_display_mode *adjusted_mode =3D &pipe_config->hw.adjus=
ted_mode;
>  	int link_rate, lane_count;
> @@ -2240,8 +2239,7 @@ static int dsc_compute_compressed_bpp(struct intel_=
dp *intel_dp,
>  				      struct intel_crtc_state *pipe_config,
>  				      struct drm_connector_state *conn_state,
>  				      const struct link_config_limits *limits,
> -				      int pipe_bpp,
> -				      int timeslots)
> +				      int pipe_bpp)
>  {
>  	struct intel_display *display =3D to_intel_display(intel_dp);
>  	const struct intel_connector *connector =3D to_intel_connector(conn_sta=
te->connector);
> @@ -2269,8 +2267,7 @@ static int dsc_compute_compressed_bpp(struct intel_=
dp *intel_dp,
>  					      pipe_config,
>  					      conn_state,
>  					      limits,
> -					      bpp_x16,
> -					      timeslots);
> +					      bpp_x16);
>  		if (ret =3D=3D 0) {
>  			pipe_config->dsc.compressed_bpp_x16 =3D bpp_x16;
>  			if (intel_dp->force_dsc_fractional_bpp_en &&
> @@ -2327,8 +2324,7 @@ int intel_dp_force_dsc_pipe_bpp(struct intel_dp *in=
tel_dp,
>  static int intel_dp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
>  					 struct intel_crtc_state *pipe_config,
>  					 struct drm_connector_state *conn_state,
> -					 const struct link_config_limits *limits,
> -					 int timeslots)
> +					 const struct link_config_limits *limits)
>  {
>  	const struct intel_connector *connector =3D
>  		to_intel_connector(conn_state->connector);
> @@ -2340,7 +2336,7 @@ static int intel_dp_dsc_compute_pipe_bpp(struct int=
el_dp *intel_dp,
> =20
>  	if (forced_bpp) {
>  		ret =3D dsc_compute_compressed_bpp(intel_dp, pipe_config, conn_state,
> -						 limits, forced_bpp, timeslots);
> +						 limits, forced_bpp);
>  		if (ret =3D=3D 0) {
>  			pipe_config->pipe_bpp =3D forced_bpp;
>  			return 0;
> @@ -2358,7 +2354,7 @@ static int intel_dp_dsc_compute_pipe_bpp(struct int=
el_dp *intel_dp,
>  			continue;
> =20
>  		ret =3D dsc_compute_compressed_bpp(intel_dp, pipe_config, conn_state,
> -						 limits, pipe_bpp, timeslots);
> +						 limits, pipe_bpp);
>  		if (ret =3D=3D 0) {
>  			pipe_config->pipe_bpp =3D pipe_bpp;
>  			return 0;
> @@ -2469,7 +2465,7 @@ int intel_dp_dsc_compute_config(struct intel_dp *in=
tel_dp,
>  							     conn_state, limits);
>  		else
>  			ret =3D intel_dp_dsc_compute_pipe_bpp(intel_dp, pipe_config,
> -							    conn_state, limits, timeslots);
> +							    conn_state, limits);
>  		if (ret) {
>  			drm_dbg_kms(display->drm,
>  				    "No Valid pipe bpp for given mode ret =3D %d\n", ret);


Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.
