Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC63EB590D8
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Sep 2025 10:37:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BBA210E6FC;
	Tue, 16 Sep 2025 08:37:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C394610E6FC;
 Tue, 16 Sep 2025 08:37:00 +0000 (UTC)
Received: from 88-113-67-44.elisa-laajakaista.fi ([88.113.67.44]
 helo=[192.168.100.137])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.98.2) (envelope-from <luca@coelho.fi>)
 id 1uyRBI-00000000ozO-08hz; Tue, 16 Sep 2025 11:36:58 +0300
Message-ID: <b1e137fc26a0b78fbd7f701188b29e15c7811368.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Ville Syrjala <ville.syrjala@linux.intel.com>, 
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Date: Tue, 16 Sep 2025 11:36:55 +0300
In-Reply-To: <20250905145832.12097-6-ville.syrjala@linux.intel.com>
References: <20250905145832.12097-1-ville.syrjala@linux.intel.com>
 <20250905145832.12097-6-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-2+b1 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-25) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP autolearn=ham autolearn_force=no version=4.0.1
Subject: Re: [PATCH 05/13] drm/i915: Move adjust_wm_latency() out from {mtl,
 skl}_read_wm_latency()
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
> {mtl,skl}_read_wm_latency() are doing way too many things for
> my liking. Move the adjustment stuff out into the caller.
> This also gives us one place where we specify the 'read_latency'
> for all the platforms, instead of two places.
>=20
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.

>  drivers/gpu/drm/i915/display/skl_watermark.c | 23 +++++++++++++-------
>  1 file changed, 15 insertions(+), 8 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/d=
rm/i915/display/skl_watermark.c
> index 9797c2131334..02b64e97ecfe 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -3183,12 +3183,22 @@ static bool need_16gb_dimm_wa(struct intel_displa=
y *display)
>  		DISPLAY_VER(display) =3D=3D 11) && dram_info->has_16gb_dimms;
>  }
> =20
> +static int wm_read_latency(struct intel_display *display)
> +{
> +	if (DISPLAY_VER(display) >=3D 14)
> +		return 6;
> +	else if (DISPLAY_VER(display) >=3D 12)
> +		return 3;
> +	else
> +		return 2;
> +}
> +
>  static void
> -adjust_wm_latency(struct intel_display *display, int read_latency)
> +adjust_wm_latency(struct intel_display *display)
>  {
>  	u16 *wm =3D display->wm.skl_latency;
> -	int num_levels =3D display->wm.num_levels;
> -	int i, level;
> +	int i, level, num_levels =3D display->wm.num_levels;
> +	int read_latency =3D wm_read_latency(display);
> =20
>  	/*
>  	 * If a level n (n > 1) has a 0us latency, all levels m (m >=3D n)
> @@ -3247,14 +3257,11 @@ static void mtl_read_wm_latency(struct intel_disp=
lay *display)
>  	val =3D intel_de_read(display, MTL_LATENCY_LP4_LP5);
>  	wm[4] =3D REG_FIELD_GET(MTL_LATENCY_LEVEL_EVEN_MASK, val);
>  	wm[5] =3D REG_FIELD_GET(MTL_LATENCY_LEVEL_ODD_MASK, val);
> -
> -	adjust_wm_latency(display, 6);
>  }
> =20
>  static void skl_read_wm_latency(struct intel_display *display)
>  {
>  	u16 *wm =3D display->wm.skl_latency;
> -	int read_latency =3D DISPLAY_VER(display) >=3D 12 ? 3 : 2;
>  	int mult =3D display->platform.dg2 ? 2 : 1;
>  	u32 val;
>  	int ret;
> @@ -3284,8 +3291,6 @@ static void skl_read_wm_latency(struct intel_displa=
y *display)
>  	wm[5] =3D REG_FIELD_GET(GEN9_MEM_LATENCY_LEVEL_1_5_MASK, val) * mult;
>  	wm[6] =3D REG_FIELD_GET(GEN9_MEM_LATENCY_LEVEL_2_6_MASK, val) * mult;
>  	wm[7] =3D REG_FIELD_GET(GEN9_MEM_LATENCY_LEVEL_3_7_MASK, val) * mult;
> -
> -	adjust_wm_latency(display, read_latency);
>  }
> =20
>  static void skl_setup_wm_latency(struct intel_display *display)
> @@ -3300,6 +3305,8 @@ static void skl_setup_wm_latency(struct intel_displ=
ay *display)
>  	else
>  		skl_read_wm_latency(display);
> =20
> +	adjust_wm_latency(display);
> +
>  	intel_print_wm_latency(display, "Gen9 Plane", display->wm.skl_latency);
>  }
> =20
