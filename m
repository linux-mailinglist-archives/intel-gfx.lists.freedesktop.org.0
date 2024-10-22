Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CBB4C9A9C5C
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2024 10:25:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57D4110E608;
	Tue, 22 Oct 2024 08:25:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="E4aJI9yK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B5B810E608
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Oct 2024 08:25:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729585519; x=1761121519;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=zpxPJQRfLU5Lvl2fMzR/acO14KZ+6WQDNrT6hKV5wYQ=;
 b=E4aJI9yKGj629dRU0TDafOAL2qnleED5JeHEF/rXRF1C9EuoeMi6OHsX
 hzsmvzktMFtQOM2VyjhPUHkNj4kYY3brB3JYteexrOJcaXW4gRk1kq+CD
 hsu0m1h6mPzqjaO/QpOu3gRIdgzBGBCRylI2uUmVq3wmgOdv4kzn0tFd8
 2Ei8/4tLNEV+uaJmcuojHvg3TQ3QbCOBPEdS/K2degJ32WY5UN57jjqPS
 vf7hWUj3g4c+8bM/3NWSrQNwhz1lJXZvnrGpIl22sw9rP9HjCN4cAkjdF
 3c36PFLai05RCMJXHzekEWxivkyrbLKLONo/UE7gRns0TkGIoCLDGfg/0 Q==;
X-CSE-ConnectionGUID: DZf3g/nhQRWwfjEvWeFMAg==
X-CSE-MsgGUID: Po5YmdytQNCeQ51kSq165w==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="39650326"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="39650326"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 01:25:18 -0700
X-CSE-ConnectionGUID: yXdaIM+1QvyccajjzfCPXQ==
X-CSE-MsgGUID: a8/Pn6W6SkODRnwc9ZZg/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,222,1725346800"; d="scan'208";a="110559584"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.4])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 01:25:17 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 3/9] drm/i915/pfit: Reject pfit downscaling for GMCH
 platforms
In-Reply-To: <20241016143134.26903-4-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241016143134.26903-1-ville.syrjala@linux.intel.com>
 <20241016143134.26903-4-ville.syrjala@linux.intel.com>
Date: Tue, 22 Oct 2024 11:25:14 +0300
Message-ID: <87jze0wnmd.fsf@intel.com>
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
> Gen2/3 pfit doesn't support downscaling at all, so reject it.
>
> On i965+ downscaling is supported by the hardware (max scale
> factor < 2.0), but as downscaling increases the effective
> pixel rate we can't safely allow it unless
> intel_crtc_compute_pixel_rate() gets fixed. Probably the
> best solution would be to calculate (at least an
> apporiximate) pfit destination window and use
> ilk_pipe_pixel_rate() for all platforms. For now reject
> downscaling on all gmch platforms.
>
> The intel ddx has a similar check for this in userspace,
> modesetting ddx does not. And presumably wayland compositors
> also do not make such assumptions in userspace.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Acked-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_panel.c | 20 ++++++++++++++++++++
>  1 file changed, 20 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm=
/i915/display/intel_panel.c
> index fb7def772376..89cac3b3fd02 100644
> --- a/drivers/gpu/drm/i915/display/intel_panel.c
> +++ b/drivers/gpu/drm/i915/display/intel_panel.c
> @@ -681,6 +681,7 @@ static void i9xx_scale_aspect(struct intel_crtc_state=
 *crtc_state,
>  static int gmch_panel_fitting(struct intel_crtc_state *crtc_state,
>  			      const struct drm_connector_state *conn_state)
>  {
> +	struct intel_display *display =3D to_intel_display(crtc_state);
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>  	u32 pfit_control =3D 0, pfit_pgm_ratios =3D 0, border =3D 0;
> @@ -693,6 +694,25 @@ static int gmch_panel_fitting(struct intel_crtc_stat=
e *crtc_state,
>  	    adjusted_mode->crtc_vdisplay =3D=3D pipe_src_h)
>  		goto out;
>=20=20
> +	/*
> +	 * TODO: implement downscaling for i965+. Need to account
> +	 * for downscaling in intel_crtc_compute_pixel_rate().
> +	 */
> +	if (adjusted_mode->crtc_hdisplay < pipe_src_w) {
> +		drm_dbg_kms(display->drm,
> +			    "[CRTC:%d:%s] pfit horizontal downscaling (%d->%d) not supported\=
n",
> +			    crtc->base.base.id, crtc->base.name,
> +			    pipe_src_w, adjusted_mode->crtc_hdisplay);
> +		return -EINVAL;
> +	}
> +	if (adjusted_mode->crtc_vdisplay < pipe_src_h) {
> +		drm_dbg_kms(display->drm,
> +			    "[CRTC:%d:%s] pfit vertical downscaling (%d->%d) not supported\n",
> +			    crtc->base.base.id, crtc->base.name,
> +			    pipe_src_h, adjusted_mode->crtc_vdisplay);
> +		return -EINVAL;
> +	}
> +
>  	switch (conn_state->scaling_mode) {
>  	case DRM_MODE_SCALE_CENTER:
>  		/*

--=20
Jani Nikula, Intel
