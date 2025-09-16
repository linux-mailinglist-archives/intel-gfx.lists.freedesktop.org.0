Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 04394B593A2
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Sep 2025 12:29:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D514010E786;
	Tue, 16 Sep 2025 10:29:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 263CD88A72;
 Tue, 16 Sep 2025 10:29:24 +0000 (UTC)
Received: from 88-113-67-44.elisa-laajakaista.fi ([88.113.67.44]
 helo=[192.168.100.137])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.98.2) (envelope-from <luca@coelho.fi>)
 id 1uySw3-00000000p9C-2EYx; Tue, 16 Sep 2025 13:29:21 +0300
Message-ID: <4dcd22ba34cf11a501220834fe6b9375de26e2a1.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Ville Syrjala <ville.syrjala@linux.intel.com>, 
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Date: Tue, 16 Sep 2025 13:29:17 +0300
In-Reply-To: <20250905145832.12097-12-ville.syrjala@linux.intel.com>
References: <20250905145832.12097-1-ville.syrjala@linux.intel.com>
 <20250905145832.12097-12-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-2+b1 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-25) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP autolearn=ham autolearn_force=no version=4.0.1
Subject: Re: [PATCH 11/13] drm/i915: Make wm latencies monotonic
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
> Some systems (eg. LNL Lenovo Thinkapd X1 Carbon) declare
> semi-bogus non-monotonic WM latency values:
>  WM0 latency not provided
>  WM1 latency 100 usec
>  WM2 latency 100 usec
>  WM3 latency 100 usec
>  WM4 latency 93 usec
>  WM5 latency 100 usec
>=20
> Apparently Windows just papers over the issue by bumping the
> latencies for the higher watermark levels to make them monotonic
> again. Do the same.
>=20
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/skl_watermark.c | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/d=
rm/i915/display/skl_watermark.c
> index e11ba1a822f4..d334cc661328 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -3238,6 +3238,19 @@ static void sanitize_wm_latency(struct intel_displ=
ay *display)
>  	}
>  }
> =20
> +static void make_wm_latency_monotonic(struct intel_display *display)
> +{
> +	u16 *wm =3D display->wm.skl_latency;
> +	int level, num_levels =3D display->wm.num_levels;
> +
> +	for (level =3D 1; level < num_levels; level++) {
> +		if (wm[level] =3D=3D 0)
> +			break;
> +
> +		wm[level] =3D max(wm[level], wm[level-1]);
> +	}
> +}
> +

What if, for instance, we have:

 WM0 latency not provided
 WM1 latency 200 usec
 WM2 latency 100 usec
 WM3 latency 100 usec
 WM4 latency 100 usec
 WM5 latency 100 usec

Do we really want to set them all to be 200 usec? Maybe multiples of
the minimum we have would still be fine?

What's the actual reason for this "papering over"? Is it to synchronize
timers?

--
Cheers,
Luca.
