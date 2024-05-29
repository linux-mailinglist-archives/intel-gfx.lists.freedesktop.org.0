Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 851B68D32D6
	for <lists+intel-gfx@lfdr.de>; Wed, 29 May 2024 11:20:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A17210E191;
	Wed, 29 May 2024 09:20:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GRDBEANs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E50810E036
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 May 2024 09:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716974454; x=1748510454;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=MO3r9XZm/cQzULjd1msXae8T/s+lqf+pWdAJ7XUASew=;
 b=GRDBEANsWHiFxk0picR/fgOOsN5jmBKCk5EhpwBrvYKuM+hSBgXfPejq
 vjYnLE1L0MipChyW6iH8eSHYf74FBHP/nbPZTj5v/73L1PNb8LzcXnzej
 XCFkeXJYbL+fT/UiHpoBgreokrwfEpIgRSMcGYNM0GUHRtVNmeRccxKQc
 ilek6gX1LHFJZpTDftN8/K/9NteE9bk1RLu6SL845G48PqD9S/e2oIDDa
 fsx4mw0erlsNR2NJKNOYoZlcnmKv6/eBDSvT3s566uaYyzglLVjX4gO3X
 kZbyywlykbEiizZrL4w6KCixjVBgMKnQ6b+PSjf/GUEX4MRaHTtAa9CZA g==;
X-CSE-ConnectionGUID: I0WBu7XaSeafi9o7M8ww6w==
X-CSE-MsgGUID: p4F6/VowSGOAJCVfUOJAcA==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="23921854"
X-IronPort-AV: E=Sophos;i="6.08,197,1712646000"; d="scan'208";a="23921854"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2024 02:20:53 -0700
X-CSE-ConnectionGUID: Hvxn57JQTty9zTsQXk7X5Q==
X-CSE-MsgGUID: mPdxkwToQt2r/tcQRBE67Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,197,1712646000"; d="scan'208";a="66245943"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.86])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2024 02:20:51 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 4/7] drm/i915: Simplify scanline_offset handling for gen2
In-Reply-To: <20240528185647.7765-5-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240528185647.7765-1-ville.syrjala@linux.intel.com>
 <20240528185647.7765-5-ville.syrjala@linux.intel.com>
Date: Wed, 29 May 2024 12:20:49 +0300
Message-ID: <87plt5j7ny.fsf@intel.com>
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
> Currently intel_crtc_scanline_offset() is careful to always
> return a positive offset. That is not actually necessary
> as long as we take care of negative values when applying the
> offset in __intel_get_crtc_scanline().
>
> This simplifies intel_crtc_scanline_offset(), and makes
> the scanline_offfset arithmetic more symmetric between
> the forwad (__intel_get_crtc_scanline()) and reverse

*forward

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> (intel_crtc_scanline_to_hw()) directions.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vblank.c | 8 +++-----
>  1 file changed, 3 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/dr=
m/i915/display/intel_vblank.c
> index 31fa5867e1a7..b0e95a4c680d 100644
> --- a/drivers/gpu/drm/i915/display/intel_vblank.c
> +++ b/drivers/gpu/drm/i915/display/intel_vblank.c
> @@ -240,7 +240,7 @@ static int __intel_get_crtc_scanline(struct intel_crt=
c *crtc)
>  	 * See update_scanline_offset() for the details on the
>  	 * scanline_offset adjustment.
>  	 */
> -	return (position + crtc->scanline_offset) % vtotal;
> +	return (position + vtotal + crtc->scanline_offset) % vtotal;
>  }
>=20=20
>  int intel_crtc_scanline_to_hw(struct intel_crtc *crtc, int scanline)
> @@ -470,7 +470,6 @@ void intel_wait_for_pipe_scanline_moving(struct intel=
_crtc *crtc)
>  static int intel_crtc_scanline_offset(const struct intel_crtc_state *crt=
c_state)
>  {
>  	struct drm_i915_private *i915 =3D to_i915(crtc_state->uapi.crtc->dev);
> -	const struct drm_display_mode *adjusted_mode =3D &crtc_state->hw.adjust=
ed_mode;
>=20=20
>  	/*
>  	 * The scanline counter increments at the leading edge of hsync.
> @@ -482,8 +481,7 @@ static int intel_crtc_scanline_offset(const struct in=
tel_crtc_state *crtc_state)
>  	 * last active line), the scanline counter will read vblank_start-1.
>  	 *
>  	 * On gen2 the scanline counter starts counting from 1 instead
> -	 * of vtotal-1, so we have to subtract one (or rather add vtotal-1
> -	 * to keep the value positive), instead of adding one.
> +	 * of vtotal-1, so we have to subtract one.
>  	 *
>  	 * On HSW+ the behaviour of the scanline counter depends on the output
>  	 * type. For DP ports it behaves like most other platforms, but on HDMI
> @@ -500,7 +498,7 @@ static int intel_crtc_scanline_offset(const struct in=
tel_crtc_state *crtc_state)
>  	 * answer that's slightly in the future.
>  	 */
>  	if (DISPLAY_VER(i915) =3D=3D 2)
> -		return intel_mode_vtotal(adjusted_mode) - 1;
> +		return -1;
>  	else if (HAS_DDI(i915) && intel_crtc_has_type(crtc_state, INTEL_OUTPUT_=
HDMI))
>  		return 2;
>  	else

--=20
Jani Nikula, Intel
