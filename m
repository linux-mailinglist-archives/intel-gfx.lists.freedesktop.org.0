Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 308A19B61AF
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Oct 2024 12:31:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A274C10E2B6;
	Wed, 30 Oct 2024 11:31:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SUx4ark9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBE2E10E786
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Oct 2024 11:31:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730287864; x=1761823864;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=VyEkLkMrua8UboeT0pXXhlTrrB1KPtvhfw+1kk8Ad+U=;
 b=SUx4ark9Lg5yQ4E4WP7cMOinIaaO5gPexD2BehpNCiKjWk1T4OshCn+1
 INkbJtlcykGuX1nV3Jr/xxL/Yf/ycdyJrJrHC5sksmPHPOFvRChUT4CO8
 yt53QEgtIKOF+ehKy1vvDekJ0aD4FZt8SpkoYvXk431yveF47xNP4XFxe
 ExAxEyE5Zoblc+dOOBionIJzodiL6jDr0GqPHyqzL8YIwg8GaFbOSK8R/
 DCbrLtZUJuwHvU1zTO8fEimhaSfeqKM5mxzgGRb3pjf2u6NLpAEDd5vSA
 P1XLyu95aGuT1l3VIQxo+6/2/SYpMn+8OGmBQp9d8DHHKjvMm/tkII6+p g==;
X-CSE-ConnectionGUID: Kdi8UO9lR0u1kxF7Cs7nzQ==
X-CSE-MsgGUID: L2Oi1bezQjy6AVj6KqGqDw==
X-IronPort-AV: E=McAfee;i="6700,10204,11240"; a="47458515"
X-IronPort-AV: E=Sophos;i="6.11,245,1725346800"; d="scan'208";a="47458515"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2024 04:31:04 -0700
X-CSE-ConnectionGUID: 3lY1gRkEQ6WGStfuB3Sc/w==
X-CSE-MsgGUID: +3ZOFAvLR/mS5QEoAJJQ7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,245,1725346800"; d="scan'208";a="86841333"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.122])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2024 04:31:02 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 05/11] drm/i915/cdclk: Factor out has_audio check in
 intel_audio_min_cdclk()
In-Reply-To: <20241029215217.3697-6-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241029215217.3697-1-ville.syrjala@linux.intel.com>
 <20241029215217.3697-6-ville.syrjala@linux.intel.com>
Date: Wed, 30 Oct 2024 13:30:59 +0200
Message-ID: <87ikt9n7yk.fsf@intel.com>
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

On Tue, 29 Oct 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> All the if statements in intel_audio_min_cdclk() check for
> has_audio=3D=3Dtrue. Check that once ahead of time to make
> things a bit simpler.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_audio.c | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm=
/i915/display/intel_audio.c
> index 82c45b24417a..af0bfdc44072 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> @@ -984,13 +984,15 @@ int intel_audio_min_cdclk(const struct intel_crtc_s=
tate *crtc_state)
>  	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>  	int min_cdclk =3D 0;
>=20=20
> +	if (!crtc_state->has_audio)
> +		return 0;
> +
>  	/* BSpec says "Do not use DisplayPort with CDCLK less than 432 MHz,
>  	 * audio enabled, port width x4, and link rate HBR2 (5.4 GHz), or else
>  	 * there may be audio corruption or screen corruption." This cdclk
>  	 * restriction for GLK is 316.8 MHz.
>  	 */
>  	if (intel_crtc_has_dp_encoder(crtc_state) &&
> -	    crtc_state->has_audio &&
>  	    crtc_state->port_clock >=3D 540000 &&
>  	    crtc_state->lane_count =3D=3D 4) {
>  		if (DISPLAY_VER(display) =3D=3D 10) {
> @@ -1006,7 +1008,7 @@ int intel_audio_min_cdclk(const struct intel_crtc_s=
tate *crtc_state)
>  	 * According to BSpec, "The CD clock frequency must be at least twice
>  	 * the frequency of the Azalia BCLK." and BCLK is 96 MHz by default.
>  	 */
> -	if (crtc_state->has_audio && DISPLAY_VER(display) >=3D 9)
> +	if (DISPLAY_VER(display) >=3D 9)
>  		min_cdclk =3D max(2 * 96000, min_cdclk);
>=20=20
>  	/*
> @@ -1017,7 +1019,7 @@ int intel_audio_min_cdclk(const struct intel_crtc_s=
tate *crtc_state)
>  	 *  162                    | 200 or higher"
>  	 */
>  	if ((IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) &&
> -	    intel_crtc_has_dp_encoder(crtc_state) && crtc_state->has_audio)
> +	    intel_crtc_has_dp_encoder(crtc_state))
>  		min_cdclk =3D max(crtc_state->port_clock, min_cdclk);
>=20=20
>  	return min_cdclk;

--=20
Jani Nikula, Intel
