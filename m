Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A8C852845B
	for <lists+intel-gfx@lfdr.de>; Mon, 16 May 2022 14:41:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90A2B10E811;
	Mon, 16 May 2022 12:41:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E45010E811
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 May 2022 12:41:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652704879; x=1684240879;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=H/8n8PPjm2NOu3JDvYDd5b+SIgBBaYyFz0ik319srr8=;
 b=kUj/joofeWEBrsAAZfC6gdCzQFBnIxJyZXXiUhtPoAzX7ZDZt3yZCEND
 tgDXB4REilgqqKZhdx4ZrtFv/9G1/O9pT15V8rwS495eL2iTM9x86ZeUQ
 VdlpBi7LvODaZbMtpVnudHtmZQy8/5plpxw0ZJZJ+3a4t8nOIBWLHMSAb
 q+yzcSPRhV6KCVdcp2AQsoZReYfHG7ByFX1pvO9AtKMs2zEyMBDT7ztsP
 EPX0QOCA7+gZ3YRC13gt8reQUd+y9x/DAZZNkDXpaLkOw7tB14DUJNXOl
 9A9cVh1Xs85LstUhKpQ5+RVs6iS27rh/HD/TkQpJHqnE6FbOQFGSjnwTw A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10348"; a="331444418"
X-IronPort-AV: E=Sophos;i="5.91,229,1647327600"; d="scan'208";a="331444418"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2022 05:41:18 -0700
X-IronPort-AV: E=Sophos;i="5.91,229,1647327600"; d="scan'208";a="699513672"
Received: from akuriata-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.145.127])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2022 05:41:17 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220503182242.18797-10-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220503182242.18797-1-ville.syrjala@linux.intel.com>
 <20220503182242.18797-10-ville.syrjala@linux.intel.com>
Date: Mon, 16 May 2022 15:41:14 +0300
Message-ID: <87pmkdfy51.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 09/26] drm/i915: Improve modeset debugs
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

On Tue, 03 May 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Use the "[CRTC:%d:%s]'/etc. format for some of the modeset debugs
> so we know more about what has happened during the modeset state
> computation.
>
> Also tweak the connector bpp debug message a bit to make it less
> confusing.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 22 +++++++++++++-------
>  1 file changed, 14 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index ac476976dc0b..8d6cbfbaf20d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -5040,8 +5040,8 @@ compute_sink_pipe_bpp(const struct drm_connector_st=
ate *conn_state,
>=20=20
>  	if (bpp < crtc_state->pipe_bpp) {
>  		drm_dbg_kms(&i915->drm,
> -			    "[CONNECTOR:%d:%s] Limiting display bpp to %d instead of "
> -			    "EDID bpp %d, requested bpp %d, max platform bpp %d\n",
> +			    "[CONNECTOR:%d:%s] Limiting display bpp to %d "
> +			    "(EDID bpp %d, max requested bpp %d, max platform bpp %d)\n",
>  			    connector->base.id, connector->name,
>  			    bpp, 3 * info->bpc,
>  			    3 * conn_state->max_requested_bpc,
> @@ -5691,7 +5691,8 @@ intel_modeset_pipe_config(struct intel_atomic_state=
 *state,
>=20=20
>  		if (!check_single_encoder_cloning(state, crtc, encoder)) {
>  			drm_dbg_kms(&i915->drm,
> -				    "rejecting invalid cloning configuration\n");
> +				    "[ENCODER:%d:%s] rejecting invalid cloning configuration\n",
> +				    encoder->base.base.id, encoder->base.name);
>  			return -EINVAL;
>  		}
>=20=20
> @@ -5732,7 +5733,8 @@ intel_modeset_pipe_config(struct intel_atomic_state=
 *state,
>  		if (ret =3D=3D -EDEADLK)
>  			return ret;
>  		if (ret < 0) {
> -			drm_dbg_kms(&i915->drm, "Encoder config failure: %d\n", ret);
> +			drm_dbg_kms(&i915->drm, "[ENCODER:%d:%s] config failure: %d\n",
> +				    encoder->base.base.id, encoder->base.name, ret);
>  			return ret;
>  		}
>  	}
> @@ -5748,15 +5750,18 @@ intel_modeset_pipe_config(struct intel_atomic_sta=
te *state,
>  		return ret;
>  	if (ret =3D=3D -EAGAIN) {
>  		if (drm_WARN(&i915->drm, !retry,
> -			     "loop in pipe configuration computation\n"))
> +			     "[CRTC:%d:%s] loop in pipe configuration computation\n",
> +			     crtc->base.base.id, crtc->base.name))
>  			return -EINVAL;
>=20=20
> -		drm_dbg_kms(&i915->drm, "CRTC bw constrained, retrying\n");
> +		drm_dbg_kms(&i915->drm, "[CRTC:%d:%s] bw constrained, retrying\n",
> +			    crtc->base.base.id, crtc->base.name);
>  		retry =3D false;
>  		goto encoder_retry;
>  	}
>  	if (ret < 0) {
> -		drm_dbg_kms(&i915->drm, "CRTC config failure: %d\n", ret);
> +		drm_dbg_kms(&i915->drm, "[CRTC:%d:%s] config failure: %d\n",
> +			    crtc->base.base.id, crtc->base.name, ret);
>  		return ret;
>  	}
>=20=20
> @@ -5767,7 +5772,8 @@ intel_modeset_pipe_config(struct intel_atomic_state=
 *state,
>  	crtc_state->dither =3D (crtc_state->pipe_bpp =3D=3D 6*3) &&
>  		!crtc_state->dither_force_disable;
>  	drm_dbg_kms(&i915->drm,
> -		    "hw max bpp: %i, pipe bpp: %i, dithering: %i\n",
> +		    "[CRTC:%d:%s] hw max bpp: %i, pipe bpp: %i, dithering: %i\n",
> +		    crtc->base.base.id, crtc->base.name,
>  		    base_bpp, crtc_state->pipe_bpp, crtc_state->dither);
>=20=20
>  	return 0;

--=20
Jani Nikula, Intel Open Source Graphics Center
