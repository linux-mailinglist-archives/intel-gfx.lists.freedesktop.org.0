Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B1409A9C54
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2024 10:24:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB3AA10E610;
	Tue, 22 Oct 2024 08:24:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dXkZr0yF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B8A410E610
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Oct 2024 08:24:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729585488; x=1761121488;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=krgfQeOxT+P8zAJU4Boyl6VE5MKsgPFcWIsSU+yRHQc=;
 b=dXkZr0yFxu6tjLvNSVMm2p6f48mp8BMdubgaPCUfyNMMosHUePaaxCY9
 1Dm6vFwujLUlIXFnts2u2L59ZI63KqY2VJC2AqK9pYgqefKcXAnMuGl6F
 PBd7BLELMjJ3Fq8MoCOy2vXvO4lV2NuNAPmI5Y8h7gr2yRN4M9m/kpGlz
 o2jWuMu21ADUyzoib3e6K7dW+cXrccaR4ik7Nk2bubqQ/otX1Nw+4pDx1
 IGDoES0ewmBgWNdR+HJ8S22Pct/v56orEJudgeVFlvGYF8OHNtLOmJJDI
 WnmHIwJzjuoUc4MHerP1X0ZC/ZbCIqiHtNTCEJSFJPGUTdOtzNondyBzK Q==;
X-CSE-ConnectionGUID: NCJ/XIPeT3u5HKIffi/C3A==
X-CSE-MsgGUID: COZyliC0SxGL4KZREVl4yQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11232"; a="31964632"
X-IronPort-AV: E=Sophos;i="6.11,222,1725346800"; d="scan'208";a="31964632"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 01:24:47 -0700
X-CSE-ConnectionGUID: 0nERz7fzSPibi5bHiUaypg==
X-CSE-MsgGUID: HnDS6PJ9QPaOkISM4Dke7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,222,1725346800"; d="scan'208";a="103095851"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.4])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 01:24:46 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 1/9] drm/i915/pfit: Check pipe source size against pfit
 limits on ILK-BDW
In-Reply-To: <20241016143134.26903-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241016143134.26903-1-ville.syrjala@linux.intel.com>
 <20241016143134.26903-2-ville.syrjala@linux.intel.com>
Date: Tue, 22 Oct 2024 11:24:44 +0300
Message-ID: <87plnswnn7.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Wed, 16 Oct 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> The ILK-BDW panel fitter imposes extra limits on the maximum
> pipe source size we can use. Check for that.
>
> Only HSW/BDW are really affected by this since on older platforms
> the max hdisplay/vdisplay matches the max PIPESRC. But we'll
> put in the limits for all the platforms just to keep things
> clear.
>
> Note that pch_panel_fitting() is also used on SKL+, but we'll
> skip the checks for those as it's all supposed to be handled
> in the unified scaler code.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Looks sensible, but I'm just not going to dig through all the old specs
to verify all of this, and I don't expect anyone else to do it
either. I'll take your word for it, and I trust you to fix any fallout
as well.

With that,

Acked-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_panel.c | 52 +++++++++++++++++++++-
>  1 file changed, 51 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm=
/i915/display/intel_panel.c
> index 71454ddef20f..b77017144818 100644
> --- a/drivers/gpu/drm/i915/display/intel_panel.c
> +++ b/drivers/gpu/drm/i915/display/intel_panel.c
> @@ -383,15 +383,54 @@ void intel_panel_add_encoder_fixed_mode(struct inte=
l_connector *connector,
>  				   "current (BIOS)");
>  }
>=20=20
> +static int intel_pch_pfit_check_src_size(const struct intel_crtc_state *=
crtc_state)
> +{
> +	struct intel_display *display =3D to_intel_display(crtc_state);
> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> +	int pipe_src_w =3D drm_rect_width(&crtc_state->pipe_src);
> +	int pipe_src_h =3D drm_rect_height(&crtc_state->pipe_src);
> +	int max_src_w, max_src_h;
> +
> +	if (DISPLAY_VER(display) >=3D 8) {
> +		max_src_w =3D 4096;
> +		max_src_h =3D 4096;
> +	} else if (DISPLAY_VER(display) >=3D 7) {
> +		/*
> +		 * PF0 7x5 capable
> +		 * PF1 3x3 capable (could be switched to 7x5
> +		 *                  mode on HSW when PF2 unused)
> +		 * PF2 3x3 capable
> +		 *
> +		 * This assumes we use a 1:1 mapping between pipe and PF.
> +		 */
> +		max_src_w =3D crtc->pipe =3D=3D PIPE_A ? 4096 : 2048;
> +		max_src_h =3D 4096;
> +	} else {
> +		max_src_w =3D 4096;
> +		max_src_h =3D 4096;
> +	}
> +
> +	if (pipe_src_w > max_src_w || pipe_src_h > max_src_h) {
> +		drm_dbg_kms(display->drm,
> +			    "[CRTC:%d:%s] source size (%dx%d) exceeds pfit max (%dx%d)\n",
> +			    crtc->base.base.id, crtc->base.name,
> +			    pipe_src_w, pipe_src_h, max_src_w, max_src_h);
> +		return -EINVAL;
> +	}
> +
> +	return 0;
> +}
> +
>  /* adjusted_mode has been preset to be the panel's fixed mode */
>  static int pch_panel_fitting(struct intel_crtc_state *crtc_state,
>  			     const struct drm_connector_state *conn_state)
>  {
> +	struct intel_display *display =3D to_intel_display(crtc_state);
>  	const struct drm_display_mode *adjusted_mode =3D
>  		&crtc_state->hw.adjusted_mode;
>  	int pipe_src_w =3D drm_rect_width(&crtc_state->pipe_src);
>  	int pipe_src_h =3D drm_rect_height(&crtc_state->pipe_src);
> -	int x, y, width, height;
> +	int ret, x, y, width, height;
>=20=20
>  	/* Native modes don't need fitting */
>  	if (adjusted_mode->crtc_hdisplay =3D=3D pipe_src_w &&
> @@ -453,6 +492,17 @@ static int pch_panel_fitting(struct intel_crtc_state=
 *crtc_state,
>  		      x, y, width, height);
>  	crtc_state->pch_pfit.enabled =3D true;
>=20=20
> +	/*
> +	 * SKL+ have unified scalers for pipes/planes so the
> +	 * checks are done in a single place for all scalers.
> +	 */
> +	if (DISPLAY_VER(display) >=3D 9)
> +		return 0;
> +
> +	ret =3D intel_pch_pfit_check_src_size(crtc_state);
> +	if (ret)
> +		return ret;
> +
>  	return 0;
>  }

--=20
Jani Nikula, Intel
