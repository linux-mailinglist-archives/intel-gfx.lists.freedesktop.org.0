Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EBA328D1941
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2024 13:19:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C695D10E8FA;
	Tue, 28 May 2024 11:19:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hsKJRm2i";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F67B10E8FA
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 May 2024 11:19:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716895196; x=1748431196;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=K4kz4hroxyjPRn9vtgSBdJ4Co6ZPKurAW20skSnjnNs=;
 b=hsKJRm2ipUaw6xq4jOyZHkQ3nSDs9O+io7zDQA2dtbtX7Pv9BjDNJ0VY
 aDwTs4usuZmXk4jaESeszxfvsNnbVixWM/c9WakyEAvVKSi7YO1B9DnG1
 6CVw21E7+bLxAjWjkWl1/nYmaA4PoDrGInyRIdxv51B8hbOUvl6aCPFvW
 6C0vylrmNcDNx+G7JqIbuSf1Iy9UMViKLIO88HuanQwqn0eeamzMN2wkP
 BhTdkTIIym1XxgGFyhvrRRVtI3HQoDlM+NV4Xp6xHMZzFJOFFIh7qvsrx
 eXDViUf1lyMOD4+8tPxJJDGDOSQpFUbhXOYI8XijR94kVaNpETKnf7seA A==;
X-CSE-ConnectionGUID: UDsVQvnLSiO9PMfYTfM68Q==
X-CSE-MsgGUID: J1Kp/kDPQdyd67xLXJUlwA==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="23897242"
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="23897242"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 04:19:55 -0700
X-CSE-ConnectionGUID: R4clh6U0SISR/6gz8rOD7g==
X-CSE-MsgGUID: k3eFsUnKT0eeJJE+cB/7OQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="35032474"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.13])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 04:19:53 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, ville.syrjala@intel.com
Subject: Re: [PATCH v2] drm/i915/display: update handling of FBC when VT-d
 active workaround
In-Reply-To: <20240528100138.107414-1-vinod.govindapillai@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240528100138.107414-1-vinod.govindapillai@intel.com>
Date: Tue, 28 May 2024 14:19:50 +0300
Message-ID: <87h6eikwtl.fsf@intel.com>
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

On Tue, 28 May 2024, Vinod Govindapillai <vinod.govindapillai@intel.com> wr=
ote:
> Move the handling of the disabling FBC when VT-d is active wa
> as part of the intel_fbc_check_plane(). As the hw is still there,
> intel_fbc_sanitize should be able to handle the state properly.
>
> v2: update the patch description (Jani Nikula)
>
> Bspec: 21664
> Suggested-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fbc.c | 22 ++++++----------------
>  1 file changed, 6 insertions(+), 16 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i=
915/display/intel_fbc.c
> index e9189a864f69..492dc26ecfa2 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -1235,6 +1235,12 @@ static int intel_fbc_check_plane(struct intel_atom=
ic_state *state,
>  		return 0;
>  	}
>=20=20
> +	/* WaFbcTurnOffFbcWhenHyperVisorIsUsed:skl,bxt */
> +	if (i915_vtd_active(i915) && (IS_SKYLAKE(i915) || IS_BROXTON(i915))) {
> +		plane_state->no_fbc_reason =3D "VT-d enabled";
> +		return true;

Sorry for only glancing at the commit message first time around.

This one here returns true from a function that uses int error codes and
0 means success. And the 1 is interpreted as an error.

BR,
Jani.

> +	}
> +
>  	crtc_state =3D intel_atomic_get_new_crtc_state(state, crtc);
>=20=20
>  	if (crtc_state->hw.adjusted_mode.flags & DRM_MODE_FLAG_INTERLACE) {
> @@ -1820,19 +1826,6 @@ static int intel_sanitize_fbc_option(struct drm_i9=
15_private *i915)
>  	return 0;
>  }
>=20=20
> -static bool need_fbc_vtd_wa(struct drm_i915_private *i915)
> -{
> -	/* WaFbcTurnOffFbcWhenHyperVisorIsUsed:skl,bxt */
> -	if (i915_vtd_active(i915) &&
> -	    (IS_SKYLAKE(i915) || IS_BROXTON(i915))) {
> -		drm_info(&i915->drm,
> -			 "Disabling framebuffer compression (FBC) to prevent screen flicker w=
ith VT-d enabled\n");
> -		return true;
> -	}
> -
> -	return false;
> -}
> -
>  void intel_fbc_add_plane(struct intel_fbc *fbc, struct intel_plane *plan=
e)
>  {
>  	plane->fbc =3D fbc;
> @@ -1878,9 +1871,6 @@ void intel_fbc_init(struct drm_i915_private *i915)
>  {
>  	enum intel_fbc_id fbc_id;
>=20=20
> -	if (need_fbc_vtd_wa(i915))
> -		DISPLAY_RUNTIME_INFO(i915)->fbc_mask =3D 0;
> -
>  	i915->display.params.enable_fbc =3D intel_sanitize_fbc_option(i915);
>  	drm_dbg_kms(&i915->drm, "Sanitized enable_fbc value: %d\n",
>  		    i915->display.params.enable_fbc);

--=20
Jani Nikula, Intel
