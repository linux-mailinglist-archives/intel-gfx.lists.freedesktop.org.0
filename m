Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B3D569F8E47
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Dec 2024 09:52:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58B6510EF25;
	Fri, 20 Dec 2024 08:52:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89AB410EF25
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Dec 2024 08:52:17 +0000 (UTC)
Received: from 91-155-254-69.elisa-laajakaista.fi ([91.155.254.69]
 helo=[192.168.100.137])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.97) (envelope-from <luca@coelho.fi>)
 id 1tOYk3-000000038fZ-08wz; Fri, 20 Dec 2024 10:52:15 +0200
Message-ID: <cc5e8071f006f8ef3fa0ebd53191f0e24ecf9228.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Ville Syrjala <ville.syrjala@linux.intel.com>, 
 intel-gfx@lists.freedesktop.org
Date: Fri, 20 Dec 2024 10:52:13 +0200
In-Reply-To: <20241219130827.22830-5-ville.syrjala@linux.intel.com>
References: <20241219130827.22830-1-ville.syrjala@linux.intel.com>
 <20241219130827.22830-5-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.54.2-1 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.1-pre1 (2023-11-21) on
 farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
 version=4.0.1-pre1
Subject: Re: [PATCH 4/8] drm/i915/scaler: Extract skl_scaler_max_dst_size()
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

On Thu, 2024-12-19 at 15:08 +0200, Ville Syrjala wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>=20
> The SKL_MAX_DST_* defines just make things hard to read.
> Get rid of them and introduce an easy to read function
> in their place.
>=20
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/skl_scaler.c | 44 +++++++++++------------
>  1 file changed, 21 insertions(+), 23 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/=
i915/display/skl_scaler.c
> index cabbf4860cb3..0bc82a047510 100644
> --- a/drivers/gpu/drm/i915/display/skl_scaler.c
> +++ b/drivers/gpu/drm/i915/display/skl_scaler.c
> @@ -76,15 +76,6 @@ static u16 skl_scaler_calc_phase(int sub, int scale, b=
ool chroma_cosited)
>  	return ((phase >> 2) & PS_PHASE_MASK) | trip;
>  }
> =20
> -#define SKL_MAX_DST_W 4096
> -#define SKL_MAX_DST_H 4096
> -#define ICL_MAX_DST_W 5120
> -#define ICL_MAX_DST_H 4096
> -#define TGL_MAX_DST_W 8192
> -#define TGL_MAX_DST_H 8192
> -#define MTL_MAX_DST_W 8192
> -#define MTL_MAX_DST_H 8192
> -
>  static void skl_scaler_min_src_size(const struct drm_format_info *format=
,
>  				    u64 modifier, int *min_w, int *min_h)
>  {
> @@ -123,6 +114,26 @@ static void skl_scaler_min_dst_size(int *min_w, int =
*min_h)
>  	*min_h =3D 8;
>  }
> =20
> +static void skl_scaler_max_dst_size(struct intel_crtc *crtc,
> +				    int *max_w, int *max_h)
> +{
> +	struct intel_display *display =3D to_intel_display(crtc);
> +
> +	if (DISPLAY_VER(display) >=3D 14) {
> +		*max_w =3D 8192;
> +		*max_h =3D 8192;
> +	} else if (DISPLAY_VER(display) >=3D 12) {
> +		*max_w =3D 8192;
> +		*max_h =3D 8192;
> +	} else if (DISPLAY_VER(display) =3D=3D 11) {
> +		*max_w =3D 5120;
> +		*max_h =3D 4096;
> +	} else {
> +		*max_w =3D 4096;
> +		*max_h =3D 4096;
> +	}
> +}
> +
>  static int
>  skl_update_scaler(struct intel_crtc_state *crtc_state, bool force_detach=
,
>  		  unsigned int scaler_user, int *scaler_id,
> @@ -191,20 +202,7 @@ skl_update_scaler(struct intel_crtc_state *crtc_stat=
e, bool force_detach,
>  	skl_scaler_max_src_size(crtc, &max_src_w, &max_src_h);
> =20
>  	skl_scaler_min_dst_size(&min_dst_w, &min_dst_h);
> -
> -	if (DISPLAY_VER(display) < 11) {
> -		max_dst_w =3D SKL_MAX_DST_W;
> -		max_dst_h =3D SKL_MAX_DST_H;
> -	} else if (DISPLAY_VER(display) < 12) {
> -		max_dst_w =3D ICL_MAX_DST_W;
> -		max_dst_h =3D ICL_MAX_DST_H;
> -	} else if (DISPLAY_VER(display) < 14) {
> -		max_dst_w =3D TGL_MAX_DST_W;
> -		max_dst_h =3D TGL_MAX_DST_H;
> -	} else {
> -		max_dst_w =3D MTL_MAX_DST_W;
> -		max_dst_h =3D MTL_MAX_DST_H;
> -	}
> +	skl_scaler_max_dst_size(crtc, &max_dst_w, &max_dst_h);
> =20
>  	/* range checks */
>  	if (src_w < min_src_w || src_h < min_src_h ||

Very nice to start getting rid of the silly and misleading TGL_*/MTL_*
stuff. :)

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.
