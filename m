Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C43CC0EC3F
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Oct 2025 16:01:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82AAF10E4C8;
	Mon, 27 Oct 2025 15:01:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 63EA510E4C8;
 Mon, 27 Oct 2025 15:01:42 +0000 (UTC)
Received: from mobile-access-b04841-44.dhcp.inet.fi ([176.72.65.44]
 helo=[192.168.8.139])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.98.2) (envelope-from <luca@coelho.fi>)
 id 1vDOiv-00000001rpD-2FlR; Mon, 27 Oct 2025 17:01:38 +0200
Message-ID: <ac188cd721e0fa1616fa8d13071f9d4295cfd45b.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Ville Syrjala <ville.syrjala@linux.intel.com>, 
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Date: Mon, 27 Oct 2025 17:01:28 +0200
In-Reply-To: <20251017161417.4399-8-ville.syrjala@linux.intel.com>
References: <20251017161417.4399-1-ville.syrjala@linux.intel.com>
 <20251017161417.4399-8-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-5 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-25) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
 autolearn=ham autolearn_force=no version=4.0.1
Subject: Re: [PATCH 7/9] drm/i915/wm: Do skl_wm_check_vblank() after DDB stuff
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
> Feels more sensible to check the original unmangled watermarks
> against the allocated DDB size first, and only then do
> skl_wm_check_vblank() on whatever is left.
>=20
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---

Sorry for the delay... Somehow I missed these 3 last patches.

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.


>  drivers/gpu/drm/i915/display/skl_watermark.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/d=
rm/i915/display/skl_watermark.c
> index 256162da9afc..764770fab7e7 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -2346,7 +2346,7 @@ static int skl_build_pipe_wm(struct intel_atomic_st=
ate *state,
> =20
>  	crtc_state->wm.skl.optimal =3D crtc_state->wm.skl.raw;
> =20
> -	return skl_wm_check_vblank(crtc_state);
> +	return 0;
>  }
> =20
>  static bool skl_wm_level_equals(const struct skl_wm_level *l1,
> @@ -2923,6 +2923,10 @@ skl_compute_wm(struct intel_atomic_state *state)
>  	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
>  		struct skl_pipe_wm *pipe_wm =3D &new_crtc_state->wm.skl.optimal;
> =20
> +		ret =3D skl_wm_check_vblank(new_crtc_state);
> +		if (ret)
> +			return ret;
> +
>  		/*
>  		 * We store use_sagv_wm in the crtc state rather than relying on
>  		 * that bw state since we have no convenient way to get at the
