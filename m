Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D462FB5916D
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Sep 2025 10:58:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CC2610E705;
	Tue, 16 Sep 2025 08:58:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4773010E6DF;
 Tue, 16 Sep 2025 08:58:38 +0000 (UTC)
Received: from 88-113-67-44.elisa-laajakaista.fi ([88.113.67.44]
 helo=[192.168.100.137])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.98.2) (envelope-from <luca@coelho.fi>)
 id 1uyRWF-00000000p2y-0olY; Tue, 16 Sep 2025 11:58:35 +0300
Message-ID: <74ef8e18fa4c33ab1cb19d7f305f88e6433538d5.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Ville Syrjala <ville.syrjala@linux.intel.com>, 
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Date: Tue, 16 Sep 2025 11:58:34 +0300
In-Reply-To: <20250905145832.12097-11-ville.syrjala@linux.intel.com>
References: <20250905145832.12097-1-ville.syrjala@linux.intel.com>
 <20250905145832.12097-11-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-2+b1 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-25) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP autolearn=ham autolearn_force=no version=4.0.1
Subject: Re: [PATCH 10/13] drm/i915: Flatten sanitize_wm_latency() a bit
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
> Flatten the loop inside sanitize_wm_latency() a bit
> by using 'continue'.
>=20
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/skl_watermark.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/d=
rm/i915/display/skl_watermark.c
> index e3305a399ddf..e11ba1a822f4 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -3228,13 +3228,13 @@ static void sanitize_wm_latency(struct intel_disp=
lay *display)
>  	 * of the punit to satisfy this requirement.
>  	 */
>  	for (level =3D 1; level < num_levels; level++) {
> -		if (wm[level] =3D=3D 0) {
> -			int i;
> +		if (wm[level] !=3D 0)
> +			continue;
> =20
> -			for (i =3D level + 1; i < num_levels; i++)
> -				wm[i] =3D 0;
> -			return;
> -		}
> +		for (level =3D level + 1; level < num_levels; level++)
> +			wm[level] =3D 0;
> +
> +		return;
>  	}
>  }
> =20

This looks a bit clumsy, overwriting level in the second loop.  Can't
the loops be separate, somehing like:

	/* Find the first zero watermark */
 	for (level =3D 1; level < num_levels; level++) {
		if (wm[level] =3D=3D 0)
			break;
	}

	/* Zero all remaining watermarks (if any) */
	for (level =3D level + 1; level < num_levels; level ++)
		wm[level] =3D 0;

If nothing is found, the level + 1 in the second loop will be greater
than num_levels, so it will just skip.

--
Cheers,
Luca.
