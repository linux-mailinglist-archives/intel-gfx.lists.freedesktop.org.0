Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F20649606E
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jan 2022 15:06:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4D0D10EA59;
	Fri, 21 Jan 2022 14:06:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7130C10E585
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jan 2022 14:06:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642773986; x=1674309986;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=1ivKn1j2+j84XXS0qIahlFv3OSMQDQxy/WgbRdsFCeE=;
 b=f7m01/Gt3dw3UmigxQPkNDUzqP4TxhAMaJUdr6NnMskEwi8r9//NgESx
 gPxBKM5R2sOQqjugkLwmumvJtgI6w8ar/wKAnkxBROXNKHQjT68rYzubL
 ZMnoRuyNOKrUOJipXiBEvMd8aLHDmvYko4R+GOD8ID4GKwQhyfud5xzI2
 eZzMco7to/WatKxTn81DEuw+DolENODxUi6VEMqXkDXTa0Oe6TsCX60Mk
 9Vc8ysPyRuuGPz+WLde8zx4+wEHsy8f4DmfSFtsjJBhevSPnjbq4WleAB
 1rV3C2G9MM4fJXWZMRnfz4bayxPTmfF5njv+eTIswmMDeEpJk3FuDJz4x g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10233"; a="245605586"
X-IronPort-AV: E=Sophos;i="5.88,304,1635231600"; d="scan'208";a="245605586"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2022 06:06:25 -0800
X-IronPort-AV: E=Sophos;i="5.88,304,1635231600"; d="scan'208";a="519083703"
Received: from chandra2-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.48.104])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2022 06:06:24 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220121130710.10382-3-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220121130710.10382-1-ville.syrjala@linux.intel.com>
 <20220121130710.10382-3-ville.syrjala@linux.intel.com>
Date: Fri, 21 Jan 2022 16:06:17 +0200
Message-ID: <87sfth2nfq.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: Use per-device debugs for
 bigjoiner stuff
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

On Fri, 21 Jan 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Specify which device we're talking about when spewing
> bigjoiner debugs.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 21 +++++++++++---------
>  1 file changed, 12 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 36e547bd0cbe..9fb72c356208 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7633,9 +7633,10 @@ static int intel_atomic_check_bigjoiner(struct int=
el_atomic_state *state,
>=20=20
>  	slave_crtc =3D intel_dsc_get_bigjoiner_secondary(crtc);
>  	if (!slave_crtc) {
> -		DRM_DEBUG_KMS("[CRTC:%d:%s] Big joiner configuration requires "
> -			      "CRTC + 1 to be used, doesn't exist\n",
> -			      crtc->base.base.id, crtc->base.name);
> +		drm_dbg_kms(&i915->drm,
> +			    "[CRTC:%d:%s] Big joiner configuration requires "
> +			    "CRTC + 1 to be used, doesn't exist\n",
> +			    crtc->base.base.id, crtc->base.name);
>  		return -EINVAL;
>  	}
>=20=20
> @@ -7649,16 +7650,18 @@ static int intel_atomic_check_bigjoiner(struct in=
tel_atomic_state *state,
>  	if (slave_crtc_state->uapi.enable)
>  		goto claimed;
>=20=20
> -	DRM_DEBUG_KMS("[CRTC:%d:%s] Used as slave for big joiner\n",
> -		      slave_crtc->base.base.id, slave_crtc->base.name);
> +	drm_dbg_kms(&i915->drm,
> +		    "[CRTC:%d:%s] Used as slave for big joiner\n",
> +		    slave_crtc->base.base.id, slave_crtc->base.name);
>=20=20
>  	return copy_bigjoiner_crtc_state(slave_crtc_state, new_crtc_state);
>=20=20
>  claimed:
> -	DRM_DEBUG_KMS("[CRTC:%d:%s] Slave is enabled as normal CRTC, but "
> -		      "[CRTC:%d:%s] claiming this CRTC for bigjoiner.\n",
> -		      slave_crtc->base.base.id, slave_crtc->base.name,
> -		      master_crtc->base.base.id, master_crtc->base.name);
> +	drm_dbg_kms(&i915->drm,
> +		    "[CRTC:%d:%s] Slave is enabled as normal CRTC, but "
> +		    "[CRTC:%d:%s] claiming this CRTC for bigjoiner.\n",
> +		    slave_crtc->base.base.id, slave_crtc->base.name,
> +		    master_crtc->base.base.id, master_crtc->base.name);
>  	return -EINVAL;
>  }

--=20
Jani Nikula, Intel Open Source Graphics Center
