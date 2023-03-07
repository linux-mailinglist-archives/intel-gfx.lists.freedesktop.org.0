Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E86926ADEB3
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Mar 2023 13:29:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6ED1410E111;
	Tue,  7 Mar 2023 12:29:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E16810E111
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Mar 2023 12:29:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678192194; x=1709728194;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=icWpi/GWPwcr5qkBfM/2MsVi1UWiPPTkzIcSyBP+uY8=;
 b=CUE1t54Gg9VPSeblcPHHFMvmVPqvekF7sWWJ3dsOwR0RiDqJ2UzStJm6
 HprG0Q7rAHEMzW8zKEVJ0UYhjPXdXFF4LDmSXzLqIggCSWV8zelena/8z
 qjLrSgl5Gm3jIZB4pcGBiif99him46pl7Fq/68ez8Bv/Hczh3VipNPL7y
 5+yClRTBCTlJYeRa61EIFk8kp8Tq027PmVfmHgUkUdqoqpA+wJ02eh7EM
 2BFrwd4sjq42wIY0D3457TISgdqYI3QlJXCrSy5qcdV6hOe/S4ZrNzU71
 kydBhG0v1UHZbKsEXFDCkzSjAXfgWEqnd730AS2G0jp2cDPziwVa8kFUa A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="315491669"
X-IronPort-AV: E=Sophos;i="5.98,240,1673942400"; d="scan'208";a="315491669"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2023 04:29:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="786684895"
X-IronPort-AV: E=Sophos;i="5.98,240,1673942400"; d="scan'208";a="786684895"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.155])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2023 04:29:53 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230306152841.6563-4-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230306152841.6563-1-ville.syrjala@linux.intel.com>
 <20230306152841.6563-4-ville.syrjala@linux.intel.com>
Date: Tue, 07 Mar 2023 14:29:50 +0200
Message-ID: <874jqwsq0x.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915: Extract
 intel_crtc_scanline_offset()
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
> Pull the scanline_offset calculation into its own function. Might
> have further use for this later with DSB scanline waits.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_vblank.c | 89 +++++++++++----------
>  1 file changed, 48 insertions(+), 41 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/dr=
m/i915/display/intel_vblank.c
> index 48bf3923af11..f8bf9810527d 100644
> --- a/drivers/gpu/drm/i915/display/intel_vblank.c
> +++ b/drivers/gpu/drm/i915/display/intel_vblank.c
> @@ -441,6 +441,53 @@ void intel_wait_for_pipe_scanline_moving(struct inte=
l_crtc *crtc)
>  	wait_for_pipe_scanline_moving(crtc, true);
>  }
>=20=20
> +static int intel_crtc_scanline_offset(const struct intel_crtc_state *crt=
c_state)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(crtc_state->uapi.crtc->dev);
> +	const struct drm_display_mode *adjusted_mode =3D &crtc_state->hw.adjust=
ed_mode;
> +
> +	/*
> +	 * The scanline counter increments at the leading edge of hsync.
> +	 *
> +	 * On most platforms it starts counting from vtotal-1 on the
> +	 * first active line. That means the scanline counter value is
> +	 * always one less than what we would expect. Ie. just after
> +	 * start of vblank, which also occurs at start of hsync (on the
> +	 * last active line), the scanline counter will read vblank_start-1.
> +	 *
> +	 * On gen2 the scanline counter starts counting from 1 instead
> +	 * of vtotal-1, so we have to subtract one (or rather add vtotal-1
> +	 * to keep the value positive), instead of adding one.
> +	 *
> +	 * On HSW+ the behaviour of the scanline counter depends on the output
> +	 * type. For DP ports it behaves like most other platforms, but on HDMI
> +	 * there's an extra 1 line difference. So we need to add two instead of
> +	 * one to the value.
> +	 *
> +	 * On VLV/CHV DSI the scanline counter would appear to increment
> +	 * approx. 1/3 of a scanline before start of vblank. Unfortunately
> +	 * that means we can't tell whether we're in vblank or not while
> +	 * we're on that particular line. We must still set scanline_offset
> +	 * to 1 so that the vblank timestamps come out correct when we query
> +	 * the scanline counter from within the vblank interrupt handler.
> +	 * However if queried just before the start of vblank we'll get an
> +	 * answer that's slightly in the future.
> +	 */
> +	if (DISPLAY_VER(i915) =3D=3D 2) {
> +		int vtotal;
> +
> +		vtotal =3D adjusted_mode->crtc_vtotal;
> +		if (adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE)
> +			vtotal /=3D 2;
> +
> +		return vtotal - 1;
> +	} else if (HAS_DDI(i915) && intel_crtc_has_type(crtc_state, INTEL_OUTPU=
T_HDMI)) {
> +		return 2;
> +	} else {
> +		return 1;
> +	}
> +}
> +
>  void intel_crtc_update_active_timings(const struct intel_crtc_state *crt=
c_state)
>  {
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> @@ -479,47 +526,7 @@ void intel_crtc_update_active_timings(const struct i=
ntel_crtc_state *crtc_state)
>=20=20
>  	crtc->mode_flags =3D crtc_state->mode_flags;
>=20=20
> -	/*
> -	 * The scanline counter increments at the leading edge of hsync.
> -	 *
> -	 * On most platforms it starts counting from vtotal-1 on the
> -	 * first active line. That means the scanline counter value is
> -	 * always one less than what we would expect. Ie. just after
> -	 * start of vblank, which also occurs at start of hsync (on the
> -	 * last active line), the scanline counter will read vblank_start-1.
> -	 *
> -	 * On gen2 the scanline counter starts counting from 1 instead
> -	 * of vtotal-1, so we have to subtract one (or rather add vtotal-1
> -	 * to keep the value positive), instead of adding one.
> -	 *
> -	 * On HSW+ the behaviour of the scanline counter depends on the output
> -	 * type. For DP ports it behaves like most other platforms, but on HDMI
> -	 * there's an extra 1 line difference. So we need to add two instead of
> -	 * one to the value.
> -	 *
> -	 * On VLV/CHV DSI the scanline counter would appear to increment
> -	 * approx. 1/3 of a scanline before start of vblank. Unfortunately
> -	 * that means we can't tell whether we're in vblank or not while
> -	 * we're on that particular line. We must still set scanline_offset
> -	 * to 1 so that the vblank timestamps come out correct when we query
> -	 * the scanline counter from within the vblank interrupt handler.
> -	 * However if queried just before the start of vblank we'll get an
> -	 * answer that's slightly in the future.
> -	 */
> -	if (DISPLAY_VER(i915) =3D=3D 2) {
> -		int vtotal;
> -
> -		vtotal =3D adjusted_mode.crtc_vtotal;
> -		if (adjusted_mode.flags & DRM_MODE_FLAG_INTERLACE)
> -			vtotal /=3D 2;
> -
> -		crtc->scanline_offset =3D vtotal - 1;
> -	} else if (HAS_DDI(i915) &&
> -		   intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
> -		crtc->scanline_offset =3D 2;
> -	} else {
> -		crtc->scanline_offset =3D 1;
> -	}
> +	crtc->scanline_offset =3D intel_crtc_scanline_offset(crtc_state);
>=20=20
>  	spin_unlock(&i915->uncore.lock);
>  	spin_unlock_irqrestore(&i915->drm.vblank_time_lock, irqflags);

--=20
Jani Nikula, Intel Open Source Graphics Center
