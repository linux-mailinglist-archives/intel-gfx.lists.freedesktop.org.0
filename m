Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D1436ADE9F
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Mar 2023 13:24:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 457D410E111;
	Tue,  7 Mar 2023 12:24:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D815710E111
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Mar 2023 12:24:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678191852; x=1709727852;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=swuqX/2mMa4fR7XY3rjS4RgmfWsKDrXEVm+4gVEs4Qw=;
 b=a9QsTxgQsN51fciE2prtFEtjTEnZEEUZLSERDP8rgSMWZmfpDmZR2+92
 JBRtbIsaucPdwi/5T1c2BOgWdQURuhQNwDbxuGAGz1cMaBThwnGxzXue8
 ADTRZabIltz3s3+YUE/re2od8Jahnvns45keDdVPYaKTiqFkeZQpSbGev
 olQiAa94V8pQpgXF8SWSJhBiRy9uhNsYSoTitEjbCN+WwT2OZ4rRhJ8Fp
 f3klSklUD5SsYEo/bvsOGKsQCBtMCDmnVWwwpgZj/nKvKyCStssawCiG9
 jf7ZijUlwDWLzlxRbCv+jb6BGyGttbfvsDbVLFg/w9oqkL5CmvUYLdZ78 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="422109523"
X-IronPort-AV: E=Sophos;i="5.98,240,1673942400"; d="scan'208";a="422109523"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2023 04:24:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="676553239"
X-IronPort-AV: E=Sophos;i="5.98,240,1673942400"; d="scan'208";a="676553239"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.155])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2023 04:24:11 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230306152841.6563-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230306152841.6563-1-ville.syrjala@linux.intel.com>
 <20230306152841.6563-2-ville.syrjala@linux.intel.com>
Date: Tue, 07 Mar 2023 14:24:08 +0200
Message-ID: <87a60osqaf.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915: Add belts and suspenders
 locking for seamless M/N changes
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

On Mon, 06 Mar 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Add some (probably overkill) locking to protect the vblank
> timestamping constants updates during seamless M/N fastsets.
>
> As everything should be naturally aligned I think the individual
> pieces should probably end up updating atomically enough. So this
> is only really meant to guarantee everyone sees a consistent whole.
>
> All the drm_vblank.c usage is covered by vblank_time_lock,
> and uncore.lock will take care of __intel_get_crtc_scanline()
> that can also be called from outside the core vblank functionality.

The patch seems to do what it says on the box, but I increasingly
dislike the use of uncore.lock for anything other than the nuts and
bolts of uncore.

BR,
Jani.

>
> Currently only crtc_clock and framedur_ns can change, but in
> the future might fastset also across eg. vtotal/vblank_end
> changes, so let's just grab the locks across the whole thing.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 24 +++++++++++++++++++-
>  1 file changed, 23 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index a1fbdf32bd21..020320468967 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -5908,6 +5908,8 @@ void intel_crtc_update_active_timings(const struct =
intel_crtc_state *crtc_state)
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>  	struct drm_display_mode adjusted_mode;
> +	int vmax_vblank_start =3D 0;
> +	unsigned long irqflags;
>=20=20
>  	drm_mode_init(&adjusted_mode, &crtc_state->hw.adjusted_mode);
>=20=20
> @@ -5915,11 +5917,28 @@ void intel_crtc_update_active_timings(const struc=
t intel_crtc_state *crtc_state)
>  		adjusted_mode.crtc_vtotal =3D crtc_state->vrr.vmax;
>  		adjusted_mode.crtc_vblank_end =3D crtc_state->vrr.vmax;
>  		adjusted_mode.crtc_vblank_start =3D intel_vrr_vmin_vblank_start(crtc_s=
tate);
> -		crtc->vmax_vblank_start =3D intel_vrr_vmax_vblank_start(crtc_state);
> +		vmax_vblank_start =3D intel_vrr_vmax_vblank_start(crtc_state);
>  	}
>=20=20
> +	/*
> +	 * Belts and suspenders locking to guarantee everyone sees 100%
> +	 * consistent state during fastset seamless refresh rate changes.
> +	 *
> +	 * vblank_time_lock takes care of all drm_vblank.c stuff, and
> +	 * uncore.lock takes care of __intel_get_crtc_scanline() which
> +	 * may get called elsewhere as well.
> +	 *
> +	 * TODO maybe just protect everything (including
> +	 * __intel_get_crtc_scanline()) with vblank_time_lock?
> +	 * Need to audit everything to make sure it's safe.
> +	 */
> +	spin_lock_irqsave(&dev_priv->drm.vblank_time_lock, irqflags);
> +	spin_lock(&dev_priv->uncore.lock);
> +
>  	drm_calc_timestamping_constants(&crtc->base, &adjusted_mode);
>=20=20
> +	crtc->vmax_vblank_start =3D vmax_vblank_start;
> +
>  	crtc->mode_flags =3D crtc_state->mode_flags;
>=20=20
>  	/*
> @@ -5963,6 +5982,9 @@ void intel_crtc_update_active_timings(const struct =
intel_crtc_state *crtc_state)
>  	} else {
>  		crtc->scanline_offset =3D 1;
>  	}
> +
> +	spin_unlock(&dev_priv->uncore.lock);
> +	spin_unlock_irqrestore(&dev_priv->drm.vblank_time_lock, irqflags);
>  }
>=20=20
>  /*

--=20
Jani Nikula, Intel Open Source Graphics Center
