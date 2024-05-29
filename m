Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CA598D32D8
	for <lists+intel-gfx@lfdr.de>; Wed, 29 May 2024 11:22:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77DCC1133B0;
	Wed, 29 May 2024 09:22:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fCq/BVMI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D90161135E8
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 May 2024 09:22:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716974528; x=1748510528;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=/OtMaJm/2Us4llk9DLNOGqc+uxlgAgtvVZiGcfcmkwU=;
 b=fCq/BVMIHIWrFfK00mzUeU6/5f9qN32ZygmqDSB9osrw1aZVvamD9g9E
 6Gntfle6sGTW7cH6N1bLcISu8ZmvSyBv2bDll42SRzp1mEMQ5E0F+zk28
 SdamMZtiIA0V1V+kjNxi+jAwscYLEkHu2EQBvqqHU45QKkMMATwIq30Mn
 GVkR5lna+66T1HmcDNo/A0Ibj03vtjljXGTQ65owBhBV1HaMUfzb72DRV
 vmrLy7RyHAr10o575e6M53JLKF5LEA69TmXgPH5jCI3aQlbkTlZECfh1r
 VWTvwe8a+LxSgs+kuUj92SAhJJYU0BX6BVUsAbkGZ5ljeyS+aTRmqPGn8 g==;
X-CSE-ConnectionGUID: eHQieGrKRiGzEsAHhoq3eg==
X-CSE-MsgGUID: rdppmFjjQC+a+Q/qDKvG2A==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="24498202"
X-IronPort-AV: E=Sophos;i="6.08,198,1712646000"; d="scan'208";a="24498202"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2024 02:22:07 -0700
X-CSE-ConnectionGUID: HicJfvqQTamiUXV0M1syow==
X-CSE-MsgGUID: W6W72bYpRzW6hUfpAmVFkQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,198,1712646000"; d="scan'208";a="35915879"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.86])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2024 02:22:05 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 5/7] drm/i915: Move intel_crtc_scanline_offset()
In-Reply-To: <20240528185647.7765-6-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240528185647.7765-1-ville.syrjala@linux.intel.com>
 <20240528185647.7765-6-ville.syrjala@linux.intel.com>
Date: Wed, 29 May 2024 12:22:05 +0300
Message-ID: <87mso9j7lu.fsf@intel.com>
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
> I want to use intel_crtc_scanline_offset() in
> intel_crtc_scanline_to_hw(). Relocate intel_crtc_scanline_offset()
> a bit to avoid a forward declaration.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_vblank.c | 76 ++++++++++-----------
>  1 file changed, 38 insertions(+), 38 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/dr=
m/i915/display/intel_vblank.c
> index b0e95a4c680d..eb80952b0cfd 100644
> --- a/drivers/gpu/drm/i915/display/intel_vblank.c
> +++ b/drivers/gpu/drm/i915/display/intel_vblank.c
> @@ -188,6 +188,44 @@ static u32 __intel_get_crtc_scanline_from_timestamp(=
struct intel_crtc *crtc)
>  	return scanline;
>  }
>=20=20
> +static int intel_crtc_scanline_offset(const struct intel_crtc_state *crt=
c_state)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(crtc_state->uapi.crtc->dev);
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
> +	 * of vtotal-1, so we have to subtract one.
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
> +	if (DISPLAY_VER(i915) =3D=3D 2)
> +		return -1;
> +	else if (HAS_DDI(i915) && intel_crtc_has_type(crtc_state, INTEL_OUTPUT_=
HDMI))
> +		return 2;
> +	else
> +		return 1;
> +}
> +
>  /*
>   * intel_de_read_fw(), only for fast reads of display block, no need for
>   * forcewake etc.
> @@ -467,44 +505,6 @@ void intel_wait_for_pipe_scanline_moving(struct inte=
l_crtc *crtc)
>  	wait_for_pipe_scanline_moving(crtc, true);
>  }
>=20=20
> -static int intel_crtc_scanline_offset(const struct intel_crtc_state *crt=
c_state)
> -{
> -	struct drm_i915_private *i915 =3D to_i915(crtc_state->uapi.crtc->dev);
> -
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
> -	 * of vtotal-1, so we have to subtract one.
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
> -	if (DISPLAY_VER(i915) =3D=3D 2)
> -		return -1;
> -	else if (HAS_DDI(i915) && intel_crtc_has_type(crtc_state, INTEL_OUTPUT_=
HDMI))
> -		return 2;
> -	else
> -		return 1;
> -}
> -
>  void intel_crtc_update_active_timings(const struct intel_crtc_state *crt=
c_state,
>  				      bool vrr_enable)
>  {

--=20
Jani Nikula, Intel
