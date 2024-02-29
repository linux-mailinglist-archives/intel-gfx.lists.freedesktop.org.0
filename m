Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 051D386CCE4
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Feb 2024 16:28:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E0C010E161;
	Thu, 29 Feb 2024 15:28:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cVvYrp8b";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9AC8010E1F9
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Feb 2024 15:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709220486; x=1740756486;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=bhTvHkldX9ONS4/jIFX3hnFDRyRF1QNLiPnembSWM5Y=;
 b=cVvYrp8blxCgwqhFNqrqzCcmCk4VT1VbpcAqNK+ZoVTBZP8DcaR0rFtS
 3aZWhaRGNj6QebW4MXlJ8niTYwgjHzaiq7hz2EH8HJuDsYwDLphQv347R
 91hQSm7x/h9LcFFfE4sU9UWJdqIy13gIP/EuCNCsebef1WfTaiUnVt9EG
 4U8+zj9iRblVaBV/2DbxJ3g5HBX9XC0M4z8Y7AvBOlk6uuebZA4dcHLTt
 77UmUo+Jne2dW6aowRNvOR6L1y3DUFtnvX8VFwSFa4nr1qYlbvOibj83F
 CHao53HylmTvbRXTjE9cXo6KislysddUTObxu+zp3zQplRRj8WU6HoaC+ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10999"; a="3620075"
X-IronPort-AV: E=Sophos;i="6.06,194,1705392000"; 
   d="scan'208";a="3620075"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Feb 2024 07:28:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,194,1705392000"; d="scan'208";a="45379016"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Feb 2024 07:28:04 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 11/12] drm/i915: Reuse pipe_config_mismatch() more
In-Reply-To: <20240215164055.30585-12-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240215164055.30585-1-ville.syrjala@linux.intel.com>
 <20240215164055.30585-12-ville.syrjala@linux.intel.com>
Date: Thu, 29 Feb 2024 17:28:00 +0200
Message-ID: <87jzmn70jj.fsf@intel.com>
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

On Thu, 15 Feb 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Just call pipe_config_mismatch() from all the more specialized
> mismatch() functions instead of hand rolling the same printfs
> all over.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 45 +++++---------------
>  1 file changed, 10 insertions(+), 35 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index a9dd3632898c..26580d4aef2d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -4826,17 +4826,13 @@ pipe_config_infoframe_mismatch(bool fastset, cons=
t struct intel_crtc *crtc,
>=20=20
>  		p =3D drm_dbg_printer(&i915->drm, DRM_UT_KMS, NULL);
>  		loglevel =3D KERN_DEBUG;
> -
> -		drm_printf(&p, "[CRTC:%d:%s] fastset requirement not met in %s infofra=
me\n",
> -			   crtc->base.base.id, crtc->base.name, name);
>  	} else {
>  		p =3D drm_err_printer(&i915->drm, NULL);
>  		loglevel =3D KERN_ERR;
> -
> -		drm_printf(&p, "[CRTC:%d:%s] mismatch in %s infoframe\n",
> -			   crtc->base.base.id, crtc->base.name, name);
>  	}
>=20=20
> +	pipe_config_mismatch(fastset, crtc, name, "infoframe");
> +
>  	drm_printf(&p, "expected:\n");
>  	hdmi_infoframe_log(loglevel, i915->drm.dev, a);
>  	drm_printf(&p, "found:\n");
> @@ -4852,17 +4848,12 @@ pipe_config_dp_vsc_sdp_mismatch(bool fastset, con=
st struct intel_crtc *crtc,
>  	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
>  	struct drm_printer p;
>=20=20
> -	if (fastset) {
> +	if (fastset)
>  		p =3D drm_dbg_printer(&i915->drm, DRM_UT_KMS, NULL);
> -
> -		drm_printf(&p, "[CRTC:%d:%s] fastset requirement not met in %s dp sdp\=
n",
> -			   crtc->base.base.id, crtc->base.name, name);
> -	} else {
> +	else
>  		p =3D drm_err_printer(&i915->drm, NULL);
>=20=20
> -		drm_printf(&p, "[CRTC:%d:%s] mismatch in %s dp sdp\n",
> -			   crtc->base.base.id, crtc->base.name, name);
> -	}
> +	pipe_config_mismatch(fastset, crtc, name, "dp sdp");
>=20=20
>  	drm_printf(&p, "expected:\n");
>  	drm_dp_vsc_sdp_log(&p, a);
> @@ -4889,27 +4880,19 @@ pipe_config_buffer_mismatch(bool fastset, const s=
truct intel_crtc *crtc,
>  			    const char *name,
>  			    const u8 *a, const u8 *b, size_t len)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> -	struct drm_printer p;
>  	const char *loglevel;
>=20=20
>  	if (fastset) {
>  		if (!drm_debug_enabled(DRM_UT_KMS))
>  			return;
>=20=20
> -		p =3D drm_dbg_printer(&i915->drm, DRM_UT_KMS, NULL);
>  		loglevel =3D KERN_DEBUG;
> -
> -		drm_printf(&p, "[CRTC:%d:%s] fastset requirement not met in %s buffer\=
n",
> -			   crtc->base.base.id, crtc->base.name, name);
>  	} else {
> -		p =3D drm_err_printer(&i915->drm, NULL);
>  		loglevel =3D KERN_ERR;
> -
> -		drm_printf(&p, "[CRTC:%d:%s] mismatch in %s buffer\n",
> -			   crtc->base.base.id, crtc->base.name, name);
>  	}
>=20=20
> +	pipe_config_mismatch(fastset, crtc, name, "buffer");
> +
>  	/* only dump up to the last difference */
>  	len =3D memcmp_diff_len(a, b, len);
>=20=20
> @@ -4929,20 +4912,12 @@ pipe_config_pll_mismatch(bool fastset,
>  	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
>  	struct drm_printer p;
>=20=20
> -	if (fastset) {
> -		if (!drm_debug_enabled(DRM_UT_KMS))
> -			return;

Removing this seems misplaced.

Other than that,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> -
> +	if (fastset)
>  		p =3D drm_dbg_printer(&i915->drm, DRM_UT_KMS, NULL);
> -
> -		drm_printf(&p, "[CRTC:%d:%s] fastset requirement not met in %s\n",
> -			   crtc->base.base.id, crtc->base.name, name);
> -	} else {
> +	else
>  		p =3D drm_err_printer(&i915->drm, NULL);
>=20=20
> -		drm_printf(&p, "[CRTC:%d:%s] mismatch in %s\n",
> -			   crtc->base.base.id, crtc->base.name, name);
> -	}
> +	pipe_config_mismatch(fastset, crtc, name, " "); /* stupid -Werror=3Dfor=
mat-zero-length */
>=20=20
>  	drm_dbg_kms(&i915->drm, "expected:\n");
>  	intel_dpll_dump_hw_state(i915, &p, a);

--=20
Jani Nikula, Intel
