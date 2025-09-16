Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 100A7B590CD
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Sep 2025 10:35:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F28410E310;
	Tue, 16 Sep 2025 08:35:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD39F10E310;
 Tue, 16 Sep 2025 08:35:09 +0000 (UTC)
Received: from 88-113-67-44.elisa-laajakaista.fi ([88.113.67.44]
 helo=[192.168.100.137])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.98.2) (envelope-from <luca@coelho.fi>)
 id 1uyR9V-00000000oz0-07sJ; Tue, 16 Sep 2025 11:35:07 +0300
Message-ID: <e65ce7f48e97df093c213d1e5a4e929b65e827ec.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Ville Syrjala <ville.syrjala@linux.intel.com>, 
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Date: Tue, 16 Sep 2025 11:35:04 +0300
In-Reply-To: <20250905145832.12097-5-ville.syrjala@linux.intel.com>
References: <20250905145832.12097-1-ville.syrjala@linux.intel.com>
 <20250905145832.12097-5-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-2+b1 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-25) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP autolearn=ham autolearn_force=no version=4.0.1
Subject: Re: [PATCH 04/13] drm/i915: Don't pass the latency array to {skl,
 mtl}_read_wm_latency()
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

On Fri, 2025-09-05 at 17:58 +0300, Ville Syrjala wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>=20
> We always operate on i915->display.wm.skl_latency in
> {skl,mtl}_read_wm_latency(). No real need for the caller
> to have to pass that in explicitly.
>=20
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.


>  drivers/gpu/drm/i915/display/skl_watermark.c | 21 ++++++++++----------
>  1 file changed, 11 insertions(+), 10 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/d=
rm/i915/display/skl_watermark.c
> index 805481c92154..9797c2131334 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -3184,9 +3184,10 @@ static bool need_16gb_dimm_wa(struct intel_display=
 *display)
>  }
> =20
>  static void
> -adjust_wm_latency(struct intel_display *display,
> -		  u16 wm[], int num_levels, int read_latency)
> +adjust_wm_latency(struct intel_display *display, int read_latency)
>  {
> +	u16 *wm =3D display->wm.skl_latency;
> +	int num_levels =3D display->wm.num_levels;
>  	int i, level;
> =20
>  	/*
> @@ -3230,9 +3231,9 @@ adjust_wm_latency(struct intel_display *display,
>  		wm[0] +=3D 1;
>  }
> =20
> -static void mtl_read_wm_latency(struct intel_display *display, u16 wm[])
> +static void mtl_read_wm_latency(struct intel_display *display)
>  {
> -	int num_levels =3D display->wm.num_levels;
> +	u16 *wm =3D display->wm.skl_latency;
>  	u32 val;
> =20
>  	val =3D intel_de_read(display, MTL_LATENCY_LP0_LP1);
> @@ -3247,12 +3248,12 @@ static void mtl_read_wm_latency(struct intel_disp=
lay *display, u16 wm[])
>  	wm[4] =3D REG_FIELD_GET(MTL_LATENCY_LEVEL_EVEN_MASK, val);
>  	wm[5] =3D REG_FIELD_GET(MTL_LATENCY_LEVEL_ODD_MASK, val);
> =20
> -	adjust_wm_latency(display, wm, num_levels, 6);
> +	adjust_wm_latency(display, 6);
>  }
> =20
> -static void skl_read_wm_latency(struct intel_display *display, u16 wm[])
> +static void skl_read_wm_latency(struct intel_display *display)
>  {
> -	int num_levels =3D display->wm.num_levels;
> +	u16 *wm =3D display->wm.skl_latency;
>  	int read_latency =3D DISPLAY_VER(display) >=3D 12 ? 3 : 2;
>  	int mult =3D display->platform.dg2 ? 2 : 1;
>  	u32 val;
> @@ -3284,7 +3285,7 @@ static void skl_read_wm_latency(struct intel_displa=
y *display, u16 wm[])
>  	wm[6] =3D REG_FIELD_GET(GEN9_MEM_LATENCY_LEVEL_2_6_MASK, val) * mult;
>  	wm[7] =3D REG_FIELD_GET(GEN9_MEM_LATENCY_LEVEL_3_7_MASK, val) * mult;
> =20
> -	adjust_wm_latency(display, wm, num_levels, read_latency);
> +	adjust_wm_latency(display, read_latency);
>  }
> =20
>  static void skl_setup_wm_latency(struct intel_display *display)
> @@ -3295,9 +3296,9 @@ static void skl_setup_wm_latency(struct intel_displ=
ay *display)
>  		display->wm.num_levels =3D 8;
> =20
>  	if (DISPLAY_VER(display) >=3D 14)
> -		mtl_read_wm_latency(display, display->wm.skl_latency);
> +		mtl_read_wm_latency(display);
>  	else
> -		skl_read_wm_latency(display, display->wm.skl_latency);
> +		skl_read_wm_latency(display);
> =20
>  	intel_print_wm_latency(display, "Gen9 Plane", display->wm.skl_latency);
>  }
