Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D25E699764
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Feb 2023 15:28:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80F2610ED93;
	Thu, 16 Feb 2023 14:28:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A639310EDA4
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Feb 2023 14:28:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676557693; x=1708093693;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=rUT6IbwnRgUYh+dsQQ0hrmswRYsIRkzDYkQjlG36/0c=;
 b=kqT76lMz/wIfjqgnyFtgfiT03nV3RVLfmQxG3jRfxjU+WvEy9veR+H3K
 4n627tlFhYnmCN2MKy0/qE7wyC6RnlTJXEyqrcb7M8O1dhBwIYdxJk58I
 MQWTtw+DRw58YywGRbbtFv0eLEpmaqrrRTSPikL3dJnBDxoYjKScrKCu8
 Aem1Tf+1SvidzRql9biPLH/x4OB0adcnimhIqAsxAtKVNQERxlSZm73aJ
 44B8H/ANU55jod+/aRs8zhm6CIaXdXOYtJZc5udUFQb9efA3wsQTUBf3u
 1PkHZI3frBDOiV9W7EvDMj0+4eefztrFkgHWgU0+KwVuDZ3gqKCQjbc8x g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="331723367"
X-IronPort-AV: E=Sophos;i="5.97,302,1669104000"; d="scan'208";a="331723367"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2023 06:28:13 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="647696782"
X-IronPort-AV: E=Sophos;i="5.97,302,1669104000"; d="scan'208";a="647696782"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.155])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2023 06:28:11 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230213225258.2127-11-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230213225258.2127-1-ville.syrjala@linux.intel.com>
 <20230213225258.2127-11-ville.syrjala@linux.intel.com>
Date: Thu, 16 Feb 2023 16:28:07 +0200
Message-ID: <875yc11y88.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 10/12] drm/i915: Configure
 TRANS_SET_CONTEXT_LATENCY correctly on ADL+
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

On Tue, 14 Feb 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> On TGL VBLANK.VBLANK_START was the mechanism by which we can
> delay the pipe's internal vblank in relation to the transcoder's
> vblank. On ADL+ that no longer does anything. Instead we must
> now use the new TRANS_SET_CONTEXT_LATENCY register. Program it
> accordingly.
>
> And since VBLANK.VBLANK_START is no longer used by the hardware
> on ADL+ let's just zero it out to make it stand out in register
> dumps. Seeing the zeroed value should hopefully remind people
> to check the other register instead.

The specs are a bit hazy on this one. The patch does what it says on the
box, so

Acked-by: Jani Nikula <jani.nikula@intel.com>



>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 28 +++++++++++++++++---
>  1 file changed, 25 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 1d92a789baab..92306246e907 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2821,12 +2821,14 @@ static void intel_set_transcoder_timings(const st=
ruct intel_crtc_state *crtc_sta
>  	enum pipe pipe =3D crtc->pipe;
>  	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
>  	const struct drm_display_mode *adjusted_mode =3D &crtc_state->hw.adjust=
ed_mode;
> -	u32 crtc_vtotal, crtc_vblank_end;
> +	u32 crtc_vdisplay, crtc_vtotal, crtc_vblank_start, crtc_vblank_end;
>  	int vsyncshift =3D 0;
>=20=20
>  	/* We need to be careful not to changed the adjusted mode, for otherwise
>  	 * the hw state checker will get angry at the mismatch. */
> +	crtc_vdisplay =3D adjusted_mode->crtc_vdisplay;
>  	crtc_vtotal =3D adjusted_mode->crtc_vtotal;
> +	crtc_vblank_start =3D adjusted_mode->crtc_vblank_start;
>  	crtc_vblank_end =3D adjusted_mode->crtc_vblank_end;
>=20=20
>  	if (adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE) {
> @@ -2843,6 +2845,21 @@ static void intel_set_transcoder_timings(const str=
uct intel_crtc_state *crtc_sta
>  			vsyncshift +=3D adjusted_mode->crtc_htotal;
>  	}
>=20=20
> +	/*
> +	 * VBLANK_START no longer works on ADL+, instead we must use
> +	 * TRANS_SET_CONTEXT_LATENCY to configure the pipe vblank start.
> +	 */
> +	if (DISPLAY_VER(dev_priv) >=3D 13) {
> +		intel_de_write(dev_priv, TRANS_SET_CONTEXT_LATENCY(cpu_transcoder),
> +			       crtc_vblank_start - crtc_vdisplay);
> +
> +		/*
> +		 * VBLANK_START not used by hw, just clear it
> +		 * to make it stand out in register dumps.
> +		 */
> +		crtc_vblank_start =3D 1;
> +	}
> +
>  	if (DISPLAY_VER(dev_priv) > 3)
>  		intel_de_write(dev_priv, TRANS_VSYNCSHIFT(cpu_transcoder),
>  			       vsyncshift);
> @@ -2858,10 +2875,10 @@ static void intel_set_transcoder_timings(const st=
ruct intel_crtc_state *crtc_sta
>  		       HSYNC_END(adjusted_mode->crtc_hsync_end - 1));
>=20=20
>  	intel_de_write(dev_priv, TRANS_VTOTAL(cpu_transcoder),
> -		       VACTIVE(adjusted_mode->crtc_vdisplay - 1) |
> +		       VACTIVE(crtc_vdisplay - 1) |
>  		       VTOTAL(crtc_vtotal - 1));
>  	intel_de_write(dev_priv, TRANS_VBLANK(cpu_transcoder),
> -		       VBLANK_START(adjusted_mode->crtc_vblank_start - 1) |
> +		       VBLANK_START(crtc_vblank_start - 1) |
>  		       VBLANK_END(crtc_vblank_end - 1));
>  	intel_de_write(dev_priv, TRANS_VSYNC(cpu_transcoder),
>  		       VSYNC_START(adjusted_mode->crtc_vsync_start - 1) |
> @@ -2949,6 +2966,11 @@ static void intel_get_transcoder_timings(struct in=
tel_crtc *crtc,
>  		adjusted_mode->crtc_vtotal +=3D 1;
>  		adjusted_mode->crtc_vblank_end +=3D 1;
>  	}
> +
> +	if (DISPLAY_VER(dev_priv) >=3D 13 && !transcoder_is_dsi(cpu_transcoder))
> +		adjusted_mode->crtc_vblank_start =3D
> +			adjusted_mode->crtc_vdisplay +
> +			intel_de_read(dev_priv, TRANS_SET_CONTEXT_LATENCY(cpu_transcoder));
>  }
>=20=20
>  static void intel_bigjoiner_adjust_pipe_src(struct intel_crtc_state *crt=
c_state)

--=20
Jani Nikula, Intel Open Source Graphics Center
