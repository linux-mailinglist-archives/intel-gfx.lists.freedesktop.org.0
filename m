Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1832249CCB1
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jan 2022 15:51:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36E9A10E322;
	Wed, 26 Jan 2022 14:51:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BB2710E322
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jan 2022 14:51:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643208662; x=1674744662;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=Mai3opVMyeBx9dZAJRLEBM1LqwsExMfUvZewkCvB3kk=;
 b=P9b6oC++6O0ZrGNFucuX3M0fwACY5WCYT70pTwovFSlimqbg00NX1jfv
 72s6Nfa0X8ryzHkEeK9Nao2b9acLa1tMW4YYRUEfDOtan12QdNQSY4yR+
 1tNBxl2Js130urQmUoLsKQZf6zfUo/e1hnabAXJ7vNZJSB/te/2lB5G/u
 iazuSuKYhW601/XLUzZqoGDLB/J8EzQpFxvA8XywhrghtUu+z8mUjxx4x
 CHGyfDzCG/VQseqgMM1l5SwmITnUIlzNpYoURgnaMEYoX9YMbp9qymPVF
 sjNTvy+vVV7SRezd/1RK5XFqcoB0DYqGUdk7cMG3RWvrc93jd5ktNSRfk w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10238"; a="307278835"
X-IronPort-AV: E=Sophos;i="5.88,318,1635231600"; d="scan'208";a="307278835"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2022 06:51:01 -0800
X-IronPort-AV: E=Sophos;i="5.88,318,1635231600"; d="scan'208";a="479904132"
Received: from nbasu-mobl.ger.corp.intel.com (HELO localhost) ([10.252.16.197])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2022 06:50:59 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20211209144311.3221-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211209144311.3221-1-ville.syrjala@linux.intel.com>
Date: Wed, 26 Jan 2022 16:50:57 +0200
Message-ID: <877damzh2m.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: Fix up pixel_rate vs. clock
 confusion in wm calculations
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

On Thu, 09 Dec 2021, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Use pixel_rate rather than crtc_clock in the watermark calculations.
> These are actually identical on gmch platforms for now since
> we don't adjust the pixel rate based on pfit downscaling. But
> pixel_rate is the thing we are actually interested here so use
> the proper name for it.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

On the series,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> ---
>  drivers/gpu/drm/i915/intel_pm.c | 52 ++++++++++++++-------------------
>  1 file changed, 22 insertions(+), 30 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
> index 434b1f8b7fe3..b5d5b625a321 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -915,15 +915,13 @@ static void pnv_update_wm(struct drm_i915_private *=
dev_priv)
>=20=20
>  	crtc =3D single_enabled_crtc(dev_priv);
>  	if (crtc) {
> -		const struct drm_display_mode *pipe_mode =3D
> -			&crtc->config->hw.pipe_mode;
>  		const struct drm_framebuffer *fb =3D
>  			crtc->base.primary->state->fb;
> +		int pixel_rate =3D crtc->config->pixel_rate;
>  		int cpp =3D fb->format->cpp[0];
> -		int clock =3D pipe_mode->crtc_clock;
>=20=20
>  		/* Display SR */
> -		wm =3D intel_calculate_wm(clock, &pnv_display_wm,
> +		wm =3D intel_calculate_wm(pixel_rate, &pnv_display_wm,
>  					pnv_display_wm.fifo_size,
>  					cpp, latency->display_sr);
>  		reg =3D intel_uncore_read(&dev_priv->uncore, DSPFW1);
> @@ -933,7 +931,7 @@ static void pnv_update_wm(struct drm_i915_private *de=
v_priv)
>  		drm_dbg_kms(&dev_priv->drm, "DSPFW1 register is %x\n", reg);
>=20=20
>  		/* cursor SR */
> -		wm =3D intel_calculate_wm(clock, &pnv_cursor_wm,
> +		wm =3D intel_calculate_wm(pixel_rate, &pnv_cursor_wm,
>  					pnv_display_wm.fifo_size,
>  					4, latency->cursor_sr);
>  		reg =3D intel_uncore_read(&dev_priv->uncore, DSPFW3);
> @@ -942,7 +940,7 @@ static void pnv_update_wm(struct drm_i915_private *de=
v_priv)
>  		intel_uncore_write(&dev_priv->uncore, DSPFW3, reg);
>=20=20
>  		/* Display HPLL off SR */
> -		wm =3D intel_calculate_wm(clock, &pnv_display_hplloff_wm,
> +		wm =3D intel_calculate_wm(pixel_rate, &pnv_display_hplloff_wm,
>  					pnv_display_hplloff_wm.fifo_size,
>  					cpp, latency->display_hpll_disable);
>  		reg =3D intel_uncore_read(&dev_priv->uncore, DSPFW3);
> @@ -951,7 +949,7 @@ static void pnv_update_wm(struct drm_i915_private *de=
v_priv)
>  		intel_uncore_write(&dev_priv->uncore, DSPFW3, reg);
>=20=20
>  		/* cursor HPLL off SR */
> -		wm =3D intel_calculate_wm(clock, &pnv_cursor_hplloff_wm,
> +		wm =3D intel_calculate_wm(pixel_rate, &pnv_cursor_hplloff_wm,
>  					pnv_display_hplloff_wm.fifo_size,
>  					4, latency->cursor_hpll_disable);
>  		reg =3D intel_uncore_read(&dev_priv->uncore, DSPFW3);
> @@ -1154,7 +1152,7 @@ static u16 g4x_compute_wm(const struct intel_crtc_s=
tate *crtc_state,
>  	const struct drm_display_mode *pipe_mode =3D
>  		&crtc_state->hw.pipe_mode;
>  	unsigned int latency =3D dev_priv->wm.pri_latency[level] * 10;
> -	unsigned int clock, htotal, cpp, width, wm;
> +	unsigned int pixel_rate, htotal, cpp, width, wm;
>=20=20
>  	if (latency =3D=3D 0)
>  		return USHRT_MAX;
> @@ -1175,21 +1173,21 @@ static u16 g4x_compute_wm(const struct intel_crtc=
_state *crtc_state,
>  	    level !=3D G4X_WM_LEVEL_NORMAL)
>  		cpp =3D max(cpp, 4u);
>=20=20
> -	clock =3D pipe_mode->crtc_clock;
> +	pixel_rate =3D crtc_state->pixel_rate;
>  	htotal =3D pipe_mode->crtc_htotal;
>=20=20
>  	width =3D drm_rect_width(&plane_state->uapi.dst);
>=20=20
>  	if (plane->id =3D=3D PLANE_CURSOR) {
> -		wm =3D intel_wm_method2(clock, htotal, width, cpp, latency);
> +		wm =3D intel_wm_method2(pixel_rate, htotal, width, cpp, latency);
>  	} else if (plane->id =3D=3D PLANE_PRIMARY &&
>  		   level =3D=3D G4X_WM_LEVEL_NORMAL) {
> -		wm =3D intel_wm_method1(clock, cpp, latency);
> +		wm =3D intel_wm_method1(pixel_rate, cpp, latency);
>  	} else {
>  		unsigned int small, large;
>=20=20
> -		small =3D intel_wm_method1(clock, cpp, latency);
> -		large =3D intel_wm_method2(clock, htotal, width, cpp, latency);
> +		small =3D intel_wm_method1(pixel_rate, cpp, latency);
> +		large =3D intel_wm_method2(pixel_rate, htotal, width, cpp, latency);
>=20=20
>  		wm =3D min(small, large);
>  	}
> @@ -1674,7 +1672,7 @@ static u16 vlv_compute_wm_level(const struct intel_=
crtc_state *crtc_state,
>  	struct drm_i915_private *dev_priv =3D to_i915(plane->base.dev);
>  	const struct drm_display_mode *pipe_mode =3D
>  		&crtc_state->hw.pipe_mode;
> -	unsigned int clock, htotal, cpp, width, wm;
> +	unsigned int pixel_rate, htotal, cpp, width, wm;
>=20=20
>  	if (dev_priv->wm.pri_latency[level] =3D=3D 0)
>  		return USHRT_MAX;
> @@ -1683,7 +1681,7 @@ static u16 vlv_compute_wm_level(const struct intel_=
crtc_state *crtc_state,
>  		return 0;
>=20=20
>  	cpp =3D plane_state->hw.fb->format->cpp[0];
> -	clock =3D pipe_mode->crtc_clock;
> +	pixel_rate =3D crtc_state->pixel_rate;
>  	htotal =3D pipe_mode->crtc_htotal;
>  	width =3D crtc_state->pipe_src_w;
>=20=20
> @@ -1696,7 +1694,7 @@ static u16 vlv_compute_wm_level(const struct intel_=
crtc_state *crtc_state,
>  		 */
>  		wm =3D 63;
>  	} else {
> -		wm =3D vlv_wm_method2(clock, htotal, width, cpp,
> +		wm =3D vlv_wm_method2(pixel_rate, htotal, width, cpp,
>  				    dev_priv->wm.pri_latency[level] * 10);
>  	}
>=20=20
> @@ -2277,13 +2275,13 @@ static void i965_update_wm(struct drm_i915_privat=
e *dev_priv)
>  			&crtc->config->hw.pipe_mode;
>  		const struct drm_framebuffer *fb =3D
>  			crtc->base.primary->state->fb;
> -		int clock =3D pipe_mode->crtc_clock;
> +		int pixel_rate =3D crtc->config->pixel_rate;
>  		int htotal =3D pipe_mode->crtc_htotal;
>  		int hdisplay =3D crtc->config->pipe_src_w;
>  		int cpp =3D fb->format->cpp[0];
>  		int entries;
>=20=20
> -		entries =3D intel_wm_method2(clock, htotal,
> +		entries =3D intel_wm_method2(pixel_rate, htotal,
>  					   hdisplay, cpp, sr_latency_ns / 100);
>  		entries =3D DIV_ROUND_UP(entries, I915_FIFO_LINE_SIZE);
>  		srwm =3D I965_FIFO_SIZE - entries;
> @@ -2294,7 +2292,7 @@ static void i965_update_wm(struct drm_i915_private =
*dev_priv)
>  			    "self-refresh entries: %d, wm: %d\n",
>  			    entries, srwm);
>=20=20
> -		entries =3D intel_wm_method2(clock, htotal,
> +		entries =3D intel_wm_method2(pixel_rate, htotal,
>  					   crtc->base.cursor->state->crtc_w, 4,
>  					   sr_latency_ns / 100);
>  		entries =3D DIV_ROUND_UP(entries,
> @@ -2373,8 +2371,6 @@ static void i9xx_update_wm(struct drm_i915_private =
*dev_priv)
>  		fifo_size =3D i9xx_get_fifo_size(dev_priv, PLANE_A);
>  	crtc =3D intel_crtc_for_plane(dev_priv, PLANE_A);
>  	if (intel_crtc_active(crtc)) {
> -		const struct drm_display_mode *pipe_mode =3D
> -			&crtc->config->hw.pipe_mode;
>  		const struct drm_framebuffer *fb =3D
>  			crtc->base.primary->state->fb;
>  		int cpp;
> @@ -2384,7 +2380,7 @@ static void i9xx_update_wm(struct drm_i915_private =
*dev_priv)
>  		else
>  			cpp =3D fb->format->cpp[0];
>=20=20
> -		planea_wm =3D intel_calculate_wm(pipe_mode->crtc_clock,
> +		planea_wm =3D intel_calculate_wm(crtc->config->pixel_rate,
>  					       wm_info, fifo_size, cpp,
>  					       pessimal_latency_ns);
>  		enabled =3D crtc;
> @@ -2403,8 +2399,6 @@ static void i9xx_update_wm(struct drm_i915_private =
*dev_priv)
>  		fifo_size =3D i9xx_get_fifo_size(dev_priv, PLANE_B);
>  	crtc =3D intel_crtc_for_plane(dev_priv, PLANE_B);
>  	if (intel_crtc_active(crtc)) {
> -		const struct drm_display_mode *pipe_mode =3D
> -			&crtc->config->hw.pipe_mode;
>  		const struct drm_framebuffer *fb =3D
>  			crtc->base.primary->state->fb;
>  		int cpp;
> @@ -2414,7 +2408,7 @@ static void i9xx_update_wm(struct drm_i915_private =
*dev_priv)
>  		else
>  			cpp =3D fb->format->cpp[0];
>=20=20
> -		planeb_wm =3D intel_calculate_wm(pipe_mode->crtc_clock,
> +		planeb_wm =3D intel_calculate_wm(crtc->config->pixel_rate,
>  					       wm_info, fifo_size, cpp,
>  					       pessimal_latency_ns);
>  		if (enabled =3D=3D NULL)
> @@ -2456,7 +2450,7 @@ static void i9xx_update_wm(struct drm_i915_private =
*dev_priv)
>  			&enabled->config->hw.pipe_mode;
>  		const struct drm_framebuffer *fb =3D
>  			enabled->base.primary->state->fb;
> -		int clock =3D pipe_mode->crtc_clock;
> +		int pixel_rate =3D enabled->config->pixel_rate;
>  		int htotal =3D pipe_mode->crtc_htotal;
>  		int hdisplay =3D enabled->config->pipe_src_w;
>  		int cpp;
> @@ -2467,7 +2461,7 @@ static void i9xx_update_wm(struct drm_i915_private =
*dev_priv)
>  		else
>  			cpp =3D fb->format->cpp[0];
>=20=20
> -		entries =3D intel_wm_method2(clock, htotal, hdisplay, cpp,
> +		entries =3D intel_wm_method2(pixel_rate, htotal, hdisplay, cpp,
>  					   sr_latency_ns / 100);
>  		entries =3D DIV_ROUND_UP(entries, wm_info->cacheline_size);
>  		drm_dbg_kms(&dev_priv->drm,
> @@ -2504,7 +2498,6 @@ static void i9xx_update_wm(struct drm_i915_private =
*dev_priv)
>  static void i845_update_wm(struct drm_i915_private *dev_priv)
>  {
>  	struct intel_crtc *crtc;
> -	const struct drm_display_mode *pipe_mode;
>  	u32 fwater_lo;
>  	int planea_wm;
>=20=20
> @@ -2512,8 +2505,7 @@ static void i845_update_wm(struct drm_i915_private =
*dev_priv)
>  	if (crtc =3D=3D NULL)
>  		return;
>=20=20
> -	pipe_mode =3D &crtc->config->hw.pipe_mode;
> -	planea_wm =3D intel_calculate_wm(pipe_mode->crtc_clock,
> +	planea_wm =3D intel_calculate_wm(crtc->config->pixel_rate,
>  				       &i845_wm_info,
>  				       i845_get_fifo_size(dev_priv, PLANE_A),
>  				       4, pessimal_latency_ns);

--=20
Jani Nikula, Intel Open Source Graphics Center
