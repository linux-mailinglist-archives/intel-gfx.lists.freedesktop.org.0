Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D79E9B59094
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Sep 2025 10:29:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B869E10E2AC;
	Tue, 16 Sep 2025 08:28:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38DC110E2AC;
 Tue, 16 Sep 2025 08:28:59 +0000 (UTC)
Received: from 88-113-67-44.elisa-laajakaista.fi ([88.113.67.44]
 helo=[192.168.100.137])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.98.2) (envelope-from <luca@coelho.fi>)
 id 1uyR3Y-00000000oxt-3PUl; Tue, 16 Sep 2025 11:28:57 +0300
Message-ID: <c003abdc8b97268e81b1498984eff254b4c4ac44.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Ville Syrjala <ville.syrjala@linux.intel.com>, 
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Date: Tue, 16 Sep 2025 11:28:56 +0300
In-Reply-To: <20250905145832.12097-4-ville.syrjala@linux.intel.com>
References: <20250905145832.12097-1-ville.syrjala@linux.intel.com>
 <20250905145832.12097-4-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-2+b1 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-25) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP autolearn=ham autolearn_force=no version=4.0.1
Subject: Re: [PATCH 03/13] drm/i915: Tweak the read latency fixup code
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
> If WM0 latency is zero we need to bump it (and the WM1+ latencies)
> but a fixed amount. But any WM1+ level with zero latency must
> not be touched since that indicates that corresponding WM level
> isn't supported.
>=20
> Currently the loop doing that adjustment does work, but only because
> the previous loop modified the num_levels used as the loop boundary.
> This all seems a bit too fragile. Remove the num_levels adjustment
> and instead adjust the read latency loop to abort when it encounters
> a zero latency value.
>=20
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.


>  drivers/gpu/drm/i915/display/skl_watermark.c | 10 +++++++---
>  1 file changed, 7 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/d=
rm/i915/display/skl_watermark.c
> index 8c434bc96971..805481c92154 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -3198,8 +3198,6 @@ adjust_wm_latency(struct intel_display *display,
>  		if (wm[level] =3D=3D 0) {
>  			for (i =3D level + 1; i < num_levels; i++)
>  				wm[i] =3D 0;
> -
> -			num_levels =3D level;
>  			break;
>  		}
>  	}
> @@ -3212,8 +3210,14 @@ adjust_wm_latency(struct intel_display *display,
>  	 * from the punit when level 0 response data is 0us.
>  	 */
>  	if (wm[0] =3D=3D 0) {
> -		for (level =3D 0; level < num_levels; level++)
> +		wm[0] +=3D read_latency;
> +
> +		for (level =3D 1; level < num_levels; level++) {
> +			if (wm[level] =3D=3D 0)
> +				break;
> +
>  			wm[level] +=3D read_latency;
> +		}
>  	}
> =20
>  	/*
