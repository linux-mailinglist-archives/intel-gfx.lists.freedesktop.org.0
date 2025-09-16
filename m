Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46FD7B59147
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Sep 2025 10:49:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0A5510E703;
	Tue, 16 Sep 2025 08:49:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85F3110E703;
 Tue, 16 Sep 2025 08:49:12 +0000 (UTC)
Received: from 88-113-67-44.elisa-laajakaista.fi ([88.113.67.44]
 helo=[192.168.100.137])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.98.2) (envelope-from <luca@coelho.fi>)
 id 1uyRN7-00000000p14-0zuv; Tue, 16 Sep 2025 11:49:09 +0300
Message-ID: <b541a482c27f4e69ebc84f1b05da362a9d2761e4.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Ville Syrjala <ville.syrjala@linux.intel.com>, 
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Date: Tue, 16 Sep 2025 11:49:08 +0300
In-Reply-To: <20250905145832.12097-10-ville.syrjala@linux.intel.com>
References: <20250905145832.12097-1-ville.syrjala@linux.intel.com>
 <20250905145832.12097-10-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-2+b1 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-25) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP autolearn=ham autolearn_force=no version=4.0.1
Subject: Re: [PATCH 09/13] drm/i915: Extract sanitize_wm_latency()
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
> Pull the "zero out invalid WM latencies" stuff into a helper.
> Mainly to avoid mixing higher level and lower level stuff in
> the same adjust_wm_latency() function.
>=20
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.

>  drivers/gpu/drm/i915/display/skl_watermark.c | 23 ++++++++++++++------
>  1 file changed, 16 insertions(+), 7 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/d=
rm/i915/display/skl_watermark.c
> index 98a397772678..e3305a399ddf 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -3217,14 +3217,10 @@ static int wm_read_latency(struct intel_display *=
display)
>  		return 2;
>  }
> =20
> -static void
> -adjust_wm_latency(struct intel_display *display)
> +static void sanitize_wm_latency(struct intel_display *display)
>  {
>  	u16 *wm =3D display->wm.skl_latency;
> -	int i, level, num_levels =3D display->wm.num_levels;
> -
> -	if (display->platform.dg2)
> -		multiply_wm_latency(display, 2);
> +	int level, num_levels =3D display->wm.num_levels;
> =20
>  	/*
>  	 * If a level n (n > 1) has a 0us latency, all levels m (m >=3D n)
> @@ -3233,11 +3229,24 @@ adjust_wm_latency(struct intel_display *display)
>  	 */
>  	for (level =3D 1; level < num_levels; level++) {
>  		if (wm[level] =3D=3D 0) {
> +			int i;
> +
>  			for (i =3D level + 1; i < num_levels; i++)
>  				wm[i] =3D 0;
> -			break;
> +			return;
>  		}
>  	}
> +}
> +
> +static void
> +adjust_wm_latency(struct intel_display *display)
> +{
> +	u16 *wm =3D display->wm.skl_latency;
> +
> +	if (display->platform.dg2)
> +		multiply_wm_latency(display, 2);
> +
> +	sanitize_wm_latency(display);
> =20
>  	/*
>  	 * WaWmMemoryReadLatency
