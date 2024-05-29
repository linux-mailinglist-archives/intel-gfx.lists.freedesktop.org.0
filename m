Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B9868D3316
	for <lists+intel-gfx@lfdr.de>; Wed, 29 May 2024 11:32:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA3E21136AA;
	Wed, 29 May 2024 09:32:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HNcbUZ9A";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29C58892E0
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 May 2024 09:32:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716975158; x=1748511158;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=tWVv72Pq8cGZDuyfgEj7jV3nP6Sug52BL2VtdcXMvMQ=;
 b=HNcbUZ9AYxHsoH0MfQ0d0GadawJYPSArXMxPzKGeDl03075+xHPVGOKG
 a9N/QXheZ1UpzdsOha/bSkG7Fxt/Fg1jLu9GpzVJlssh/ILt4ufEa5AxB
 bEvfVtsJYNekNIg2sy4wwA03FLuXBoh5lmUArRlnpiVoxWvqZTipWr2mb
 dlp8MKH+jtm+al5PiqQJm5KIc1IMGxAxhjvf6pSraP3lP25rYrqaVDD9+
 AgDGGgjSBtaRwO35Pp/NwT6w4f0ZOayFsJTRxNV1BWO3sXHQaCpHz+vr6
 FMKJjdgWoeDkOYXNgWcN9/XrrgJ0wRN7O5hAcZW49YYCOiWQCH3GjZLF6 Q==;
X-CSE-ConnectionGUID: 2wdiTsXZT3yn6UsqSiDQDw==
X-CSE-MsgGUID: ZSGy1igHRp24JlWsXM50aA==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="17199916"
X-IronPort-AV: E=Sophos;i="6.08,198,1712646000"; d="scan'208";a="17199916"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2024 02:32:38 -0700
X-CSE-ConnectionGUID: tUoWJFzsSoiBkBkE7Z023g==
X-CSE-MsgGUID: V9I+Y95cSf2mS4qRtPXgAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,198,1712646000"; d="scan'208";a="39895700"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.86])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2024 02:32:36 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 7/7] drm/i915/dsb: Convert dewake_scanline to a hw
 scanline number earlier
In-Reply-To: <20240528185647.7765-8-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240528185647.7765-1-ville.syrjala@linux.intel.com>
 <20240528185647.7765-8-ville.syrjala@linux.intel.com>
Date: Wed, 29 May 2024 12:32:36 +0300
Message-ID: <87h6ehj74b.fsf@intel.com>
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

On Tue, 28 May 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Currently we switch from out software idea of a scanline
> to the hw's idea of a scanline during the commit phase in
> _intel_dsb_commit(). While that is slightly easier due to
> fastsets fiddling with the timings, we'll also need to
> generate proper hw scanline numbers already when emitting
> DSB scanline wait instructions. So this approach won't
> do in the future. Switch to hw scanline numbers earlier.
>
> Also intel_dsb_dewake_scanline() itself already makes
> some assumptions about VRR that don't take into account
> VRR toggling during fastsets, so technically delaying
> the sw->hw conversion doesn't even help us.
>
> The other reason for delaying the conversion was that we
> are using intel_get_crtc_scanline() during intel_dsb_commit()
> which gives us the current sw scanline. But this is pretty
> low level stuff anyway so just using raw PIPEDSL reads seems
> fine here, and that of course gives us the hw scanline
> directly, reducing the need to do so many conversions.

I'll take your word for the PIPEDSL part,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dsb.c    | 16 +++++++++-------
>  drivers/gpu/drm/i915/display/intel_vblank.c |  9 ++++-----
>  drivers/gpu/drm/i915/display/intel_vblank.h |  3 ++-
>  3 files changed, 15 insertions(+), 13 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i=
915/display/intel_dsb.c
> index 319fbebd7008..63268ed2e53f 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsb.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
> @@ -326,14 +326,16 @@ static int intel_dsb_dewake_scanline(const struct i=
ntel_crtc_state *crtc_state)
>  	struct drm_i915_private *i915 =3D to_i915(crtc_state->uapi.crtc->dev);
>  	const struct drm_display_mode *adjusted_mode =3D &crtc_state->hw.adjust=
ed_mode;
>  	unsigned int latency =3D skl_watermark_max_latency(i915, 0);
> -	int vblank_start;
> +	int vblank_start, dewake_scanline;
>=20=20
>  	if (crtc_state->vrr.enable)
>  		vblank_start =3D intel_vrr_vmin_vblank_start(crtc_state);
>  	else
>  		vblank_start =3D intel_mode_vblank_start(adjusted_mode);
>=20=20
> -	return max(0, vblank_start - intel_usecs_to_scanlines(adjusted_mode, la=
tency));
> +	dewake_scanline =3D max(0, vblank_start - intel_usecs_to_scanlines(adju=
sted_mode, latency));
> +
> +	return intel_crtc_scanline_to_hw(crtc_state, dewake_scanline);
>  }
>=20=20
>  static u32 dsb_chicken(struct intel_crtc *crtc)
> @@ -376,19 +378,19 @@ static void _intel_dsb_commit(struct intel_dsb *dsb=
, u32 ctrl,
>  			  intel_dsb_buffer_ggtt_offset(&dsb->dsb_buf));
>=20=20
>  	if (dewake_scanline >=3D 0) {
> -		int diff, hw_dewake_scanline;
> -
> -		hw_dewake_scanline =3D intel_crtc_scanline_to_hw(crtc, dewake_scanline=
);
> +		int diff, position;
>=20=20
>  		intel_de_write_fw(dev_priv, DSB_PMCTRL(pipe, dsb->id),
>  				  DSB_ENABLE_DEWAKE |
> -				  DSB_SCANLINE_FOR_DEWAKE(hw_dewake_scanline));
> +				  DSB_SCANLINE_FOR_DEWAKE(dewake_scanline));
>=20=20
>  		/*
>  		 * Force DEwake immediately if we're already past
>  		 * or close to racing past the target scanline.
>  		 */
> -		diff =3D dewake_scanline - intel_get_crtc_scanline(crtc);
> +		position =3D intel_de_read_fw(dev_priv, PIPEDSL(pipe)) & PIPEDSL_LINE_=
MASK;
> +		diff =3D dewake_scanline - position;
> +
>  		intel_de_write_fw(dev_priv, DSB_PMCTRL_2(pipe, dsb->id),
>  				  (diff >=3D 0 && diff < 5 ? DSB_FORCE_DEWAKE : 0) |
>  				  DSB_BLOCK_DEWAKE_EXTENSION);
> diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/dr=
m/i915/display/intel_vblank.c
> index eb80952b0cfd..2e3442fe5a5d 100644
> --- a/drivers/gpu/drm/i915/display/intel_vblank.c
> +++ b/drivers/gpu/drm/i915/display/intel_vblank.c
> @@ -281,13 +281,12 @@ static int __intel_get_crtc_scanline(struct intel_c=
rtc *crtc)
>  	return (position + vtotal + crtc->scanline_offset) % vtotal;
>  }
>=20=20
> -int intel_crtc_scanline_to_hw(struct intel_crtc *crtc, int scanline)
> +int intel_crtc_scanline_to_hw(const struct intel_crtc_state *crtc_state,
> +			      int scanline)
>  {
> -	const struct drm_vblank_crtc *vblank =3D drm_crtc_vblank_crtc(&crtc->ba=
se);
> -	const struct drm_display_mode *mode =3D &vblank->hwmode;
> -	int vtotal =3D intel_mode_vtotal(mode);
> +	int vtotal =3D intel_mode_vtotal(&crtc_state->hw.adjusted_mode);
>=20=20
> -	return (scanline + vtotal - crtc->scanline_offset) % vtotal;
> +	return (scanline + vtotal - intel_crtc_scanline_offset(crtc_state)) % v=
total;
>  }
>=20=20
>  /*
> diff --git a/drivers/gpu/drm/i915/display/intel_vblank.h b/drivers/gpu/dr=
m/i915/display/intel_vblank.h
> index b51ae2c1039e..b5b8bcbf0bf0 100644
> --- a/drivers/gpu/drm/i915/display/intel_vblank.h
> +++ b/drivers/gpu/drm/i915/display/intel_vblank.h
> @@ -39,6 +39,7 @@ void intel_wait_for_pipe_scanline_stopped(struct intel_=
crtc *crtc);
>  void intel_wait_for_pipe_scanline_moving(struct intel_crtc *crtc);
>  void intel_crtc_update_active_timings(const struct intel_crtc_state *crt=
c_state,
>  				      bool vrr_enable);
> -int intel_crtc_scanline_to_hw(struct intel_crtc *crtc, int scanline);
> +int intel_crtc_scanline_to_hw(const struct intel_crtc_state *crtc_state,
> +			      int scanline);
>=20=20
>  #endif /* __INTEL_VBLANK_H__ */

--=20
Jani Nikula, Intel
