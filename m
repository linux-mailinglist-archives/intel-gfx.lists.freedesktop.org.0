Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3252C0116D
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Oct 2025 14:21:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABE8010E3FA;
	Thu, 23 Oct 2025 12:21:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A866210E3F7;
 Thu, 23 Oct 2025 12:21:54 +0000 (UTC)
Received: from mobile-access-d98cd6-211.dhcp.inet.fi ([217.140.214.211]
 helo=[192.168.8.139])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.98.2) (envelope-from <luca@coelho.fi>)
 id 1vBuKE-00000001lXw-2rwL; Thu, 23 Oct 2025 15:21:52 +0300
Message-ID: <de9354b383461b5eae6ab301cf5f7fe833200310.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Ville Syrjala <ville.syrjala@linux.intel.com>, 
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Date: Thu, 23 Oct 2025 15:21:49 +0300
In-Reply-To: <20251017161417.4399-5-ville.syrjala@linux.intel.com>
References: <20251017161417.4399-1-ville.syrjala@linux.intel.com>
 <20251017161417.4399-5-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-5 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-25) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
 autolearn=ham autolearn_force=no version=4.0.1
Subject: Re: [PATCH 4/9] drm/i915: Introduce a new intel_atomic_check_crtcs()
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
> Add a new intel_atomic_check_crtcs() that gets called fairly
> early during intel_atomic_check() and start collecting stuff
> into it from elsewhere. For now we can suck in the
> intel_crtc_min_cdclk() stiff.
>=20
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 17 +++++++++++++++--
>  1 file changed, 15 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 89f63c3b1ecd..211761c5b72a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -5746,6 +5746,18 @@ static void intel_crtc_check_fastset(const struct =
intel_crtc_state *old_crtc_sta
>  		new_crtc_state->update_pipe =3D true;
>  }
> =20
> +static int intel_atomic_check_crtcs(struct intel_atomic_state *state)

Minor nitpick: this doesn't seem to be _checking_ crtcs, but assigning
min_cdclk, so the function name is a bit misleading? Or are you
planning to add more actual checks here?

Of course it aligns with the _check_crtcs_late() that you just added,
so regardless of whether you decide to change this:

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.


> +{
> +	struct intel_crtc_state *new_crtc_state;
> +	struct intel_crtc *crtc;
> +	int i;
> +
> +	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i)
> +		new_crtc_state->min_cdclk =3D intel_crtc_min_cdclk(new_crtc_state);
> +
> +	return 0;
> +}
> +
>  static int intel_atomic_check_crtcs_late(struct intel_atomic_state *stat=
e)
>  {
>  	struct intel_display *display =3D to_intel_display(state);
> @@ -6449,8 +6461,9 @@ int intel_atomic_check(struct drm_device *dev,
>  	if (ret)
>  		goto fail;
> =20
> -	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i)
> -		new_crtc_state->min_cdclk =3D intel_crtc_min_cdclk(new_crtc_state);
> +	ret =3D intel_atomic_check_crtcs(state);
> +	if (ret)
> +		goto fail;
> =20
>  	ret =3D intel_compute_global_watermarks(state);
>  	if (ret)
