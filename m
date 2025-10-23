Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3C4AC011AF
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Oct 2025 14:25:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B11310E0E3;
	Thu, 23 Oct 2025 12:25:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C8BB10E0E3;
 Thu, 23 Oct 2025 12:25:06 +0000 (UTC)
Received: from mobile-access-d98cd6-211.dhcp.inet.fi ([217.140.214.211]
 helo=[192.168.8.139])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.98.2) (envelope-from <luca@coelho.fi>)
 id 1vBuNJ-00000001lYZ-2vtJ; Thu, 23 Oct 2025 15:25:02 +0300
Message-ID: <1849476d759d397e7270dd38e938a0d5584fcf37.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Ville Syrjala <ville.syrjala@linux.intel.com>, 
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Date: Thu, 23 Oct 2025 15:25:01 +0300
In-Reply-To: <20251017161417.4399-7-ville.syrjala@linux.intel.com>
References: <20251017161417.4399-1-ville.syrjala@linux.intel.com>
 <20251017161417.4399-7-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-5 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-25) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
 autolearn=ham autolearn_force=no version=4.0.1
Subject: Re: [PATCH 6/9] drm/i915/scaler: Assign scalers earlier
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

On Fri, 2025-10-17 at 19:14 +0300, Ville Syrjala wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>=20
> Move the scaler assignment into intel_atomic_check_crtcs(). The
> scaler assignment and scale factors are needed for the prefill
> vs. vblank length checks performed during
> intel_compute_global_watermarks().
>=20
> I think originally the scaler code itself did some current cdclk
> vs. scaling factor checks, which explains why it's being called
> so late during intel_atomic_check(). But we've long ago switched
> the logic on its head so that scaling dictates the minimum cdclk,
> not the other way around.
>=20
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 18 +++++++++++-------
>  1 file changed, 11 insertions(+), 7 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 0c483a4994c2..0beed5f9c13a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -4229,12 +4229,6 @@ static int intel_crtc_atomic_check_late(struct int=
el_atomic_state *state,
>  		return ret;
>  	}
> =20
> -	if (DISPLAY_VER(display) >=3D 9) {
> -		ret =3D intel_atomic_setup_scalers(state, crtc);
> -		if (ret)
> -			return ret;
> -	}
> -
>  	if (HAS_IPS(display)) {
>  		ret =3D hsw_ips_compute_config(state, crtc);
>  		if (ret)
> @@ -5748,13 +5742,23 @@ static void intel_crtc_check_fastset(const struct=
 intel_crtc_state *old_crtc_sta
> =20
>  static int intel_atomic_check_crtcs(struct intel_atomic_state *state)
>  {
> +	struct intel_display *display =3D to_intel_display(state);
>  	struct intel_crtc_state *new_crtc_state;
>  	struct intel_crtc *crtc;
>  	int i;
> =20
> -	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i)
> +	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
> +		int ret;
> +
>  		new_crtc_state->min_cdclk =3D intel_crtc_min_cdclk(new_crtc_state);
> =20
> +		if (DISPLAY_VER(display) >=3D 9) {
> +			ret =3D intel_atomic_setup_scalers(state, crtc);
> +			if (ret)
> +				return ret;

Same comment as in the previous patch.  Now you are setting things up,
not just checking.  But again:

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.


> +		}
> +	}
> +
>  	return 0;
>  }
> =20
