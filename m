Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AD54C0107F
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Oct 2025 14:14:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B72C10E3F4;
	Thu, 23 Oct 2025 12:14:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BB4D10E3F4;
 Thu, 23 Oct 2025 12:14:47 +0000 (UTC)
Received: from mobile-access-d98cd6-211.dhcp.inet.fi ([217.140.214.211]
 helo=[192.168.8.139])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.98.2) (envelope-from <luca@coelho.fi>)
 id 1vBuDL-00000001lX9-1eM5; Thu, 23 Oct 2025 15:14:44 +0300
Message-ID: <1312182f12f1b1151fbfe4ead10f9934e1a0da83.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Ville Syrjala <ville.syrjala@linux.intel.com>, 
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Date: Thu, 23 Oct 2025 15:14:42 +0300
In-Reply-To: <20251017161417.4399-4-ville.syrjala@linux.intel.com>
References: <20251017161417.4399-1-ville.syrjala@linux.intel.com>
 <20251017161417.4399-4-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-5 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-25) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
 autolearn=ham autolearn_force=no version=4.0.1
Subject: Re: [PATCH 3/9] drm/i915:
 s/intel_atomic_check_crtcs()/intel_atomic_check_crtcs_late()/
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
> Rename the current intel_atomic_check_crtcs() to
> intel_atomic_check_crtcs_late() to indicate it is indeed
> done rather late during intel_atomic_check(). I'll be
> introducing a similar function that will get called earlier
> and I want to use the typical foo() vs. foo_late() naming
> there.
>=20
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.


>  drivers/gpu/drm/i915/display/intel_display.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index bbb6ff929d64..89f63c3b1ecd 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -4191,8 +4191,8 @@ static int hsw_compute_linetime_wm(struct intel_ato=
mic_state *state,
>  	return 0;
>  }
> =20
> -static int intel_crtc_atomic_check(struct intel_atomic_state *state,
> -				   struct intel_crtc *crtc)
> +static int intel_crtc_atomic_check_late(struct intel_atomic_state *state=
,
> +					struct intel_crtc *crtc)
>  {
>  	struct intel_display *display =3D to_intel_display(crtc);
>  	struct intel_crtc_state *crtc_state =3D
> @@ -5746,7 +5746,7 @@ static void intel_crtc_check_fastset(const struct i=
ntel_crtc_state *old_crtc_sta
>  		new_crtc_state->update_pipe =3D true;
>  }
> =20
> -static int intel_atomic_check_crtcs(struct intel_atomic_state *state)
> +static int intel_atomic_check_crtcs_late(struct intel_atomic_state *stat=
e)
>  {
>  	struct intel_display *display =3D to_intel_display(state);
>  	struct intel_crtc_state __maybe_unused *crtc_state;
> @@ -5756,7 +5756,7 @@ static int intel_atomic_check_crtcs(struct intel_at=
omic_state *state)
>  	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
>  		int ret;
> =20
> -		ret =3D intel_crtc_atomic_check(state, crtc);
> +		ret =3D intel_crtc_atomic_check_late(state, crtc);
>  		if (ret) {
>  			drm_dbg_atomic(display->drm,
>  				       "[CRTC:%d:%s] atomic driver check failed\n",
> @@ -6474,7 +6474,7 @@ int intel_atomic_check(struct drm_device *dev,
>  	if (ret)
>  		goto fail;
> =20
> -	ret =3D intel_atomic_check_crtcs(state);
> +	ret =3D intel_atomic_check_crtcs_late(state);
>  	if (ret)
>  		goto fail;
> =20
