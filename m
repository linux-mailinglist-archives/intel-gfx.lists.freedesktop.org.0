Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 646416E7DFC
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Apr 2023 17:18:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03FF010E9E8;
	Wed, 19 Apr 2023 15:18:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F02510E9E8
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Apr 2023 15:18:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681917510; x=1713453510;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=WXyy627ZGnfxl7W6ofkMp8G6fbni4mK0Y74lJndHmKk=;
 b=W2yNKqQmhAbDcGF8mzSEXjVRknjbO5cfTgevyyZ6iq0lYDaV2pcolOZN
 wp8QURCUnEOH0zh5g0LoczKK1T8e80Tx7Xf6VeKfLaeERRMw0G7Dz+F03
 rcsUV1V3//EtWXvg7Ya0gVIKrBvBabwke5huaou8h5UOCoj/jiqKUYA5i
 lxgfvqqAy0HhzSFM9CEyTTY9XvzpGoVwaKQjk/4dA6aUZ/zABfLT2vdSl
 7znUKn1VQWdJow6KMmzOCrrWheOKq1nrQF3Dkna+liRQcI4wphEqcjmV+
 TxKBlsN4FU3Gm7HwjvBBwd5YYdOICpfImoLenWOW5GIOT35aWT1ubQ7+Y A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10685"; a="431755244"
X-IronPort-AV: E=Sophos;i="5.99,208,1677571200"; d="scan'208";a="431755244"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2023 08:17:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10685"; a="691543973"
X-IronPort-AV: E=Sophos;i="5.99,208,1677571200"; d="scan'208";a="691543973"
Received: from yedidyal-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.47.37])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2023 08:17:37 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230418175528.13117-5-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230418175528.13117-1-ville.syrjala@linux.intel.com>
 <20230418175528.13117-5-ville.syrjala@linux.intel.com>
Date: Wed, 19 Apr 2023 18:17:35 +0300
Message-ID: <87a5z3zysw.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 04/15] drm/i915: Relocate
 skl_get_pfit_config()
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

On Tue, 18 Apr 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Move skl_get_pfit_config() next to the other skl+ scaler code
> and rename it to skl_scaler_get_config() so that it has a consistnet
> namespace.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 49 ++------------------
>  drivers/gpu/drm/i915/display/skl_scaler.c    | 37 +++++++++++++++
>  drivers/gpu/drm/i915/display/skl_scaler.h    |  2 +
>  3 files changed, 43 insertions(+), 45 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 1c264c17b6e4..a450d62e431c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -3224,49 +3224,6 @@ void intel_cpu_transcoder_get_m2_n2(struct intel_c=
rtc *crtc,
>  		      PIPE_LINK_M2(transcoder), PIPE_LINK_N2(transcoder));
>  }
>=20=20
> -static void ilk_get_pfit_pos_size(struct intel_crtc_state *crtc_state,
> -				  u32 pos, u32 size)
> -{
> -	drm_rect_init(&crtc_state->pch_pfit.dst,
> -		      pos >> 16, pos & 0xffff,
> -		      size >> 16, size & 0xffff);
> -}
> -
> -static void skl_get_pfit_config(struct intel_crtc_state *crtc_state)
> -{
> -	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> -	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> -	struct intel_crtc_scaler_state *scaler_state =3D &crtc_state->scaler_st=
ate;
> -	int id =3D -1;
> -	int i;
> -
> -	/* find scaler attached to this pipe */
> -	for (i =3D 0; i < crtc->num_scalers; i++) {
> -		u32 ctl, pos, size;
> -
> -		ctl =3D intel_de_read(dev_priv, SKL_PS_CTRL(crtc->pipe, i));
> -		if ((ctl & (PS_SCALER_EN | PS_PLANE_SEL_MASK)) !=3D PS_SCALER_EN)
> -			continue;
> -
> -		id =3D i;
> -		crtc_state->pch_pfit.enabled =3D true;
> -
> -		pos =3D intel_de_read(dev_priv, SKL_PS_WIN_POS(crtc->pipe, i));
> -		size =3D intel_de_read(dev_priv, SKL_PS_WIN_SZ(crtc->pipe, i));
> -
> -		ilk_get_pfit_pos_size(crtc_state, pos, size);
> -
> -		scaler_state->scalers[i].in_use =3D true;
> -		break;
> -	}
> -
> -	scaler_state->scaler_id =3D id;
> -	if (id >=3D 0)
> -		scaler_state->scaler_users |=3D (1 << SKL_CRTC_INDEX);
> -	else
> -		scaler_state->scaler_users &=3D ~(1 << SKL_CRTC_INDEX);
> -}
> -
>  static void ilk_get_pfit_config(struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> @@ -3282,7 +3239,9 @@ static void ilk_get_pfit_config(struct intel_crtc_s=
tate *crtc_state)
>  	pos =3D intel_de_read(dev_priv, PF_WIN_POS(crtc->pipe));
>  	size =3D intel_de_read(dev_priv, PF_WIN_SZ(crtc->pipe));
>=20=20
> -	ilk_get_pfit_pos_size(crtc_state, pos, size);
> +	drm_rect_init(&crtc_state->pch_pfit.dst,
> +		      pos >> 16, pos & 0xffff,
> +		      size >> 16, size & 0xffff);
>=20=20
>  	/*
>  	 * We currently do not free assignements of panel fitters on
> @@ -3773,7 +3732,7 @@ static bool hsw_get_pipe_config(struct intel_crtc *=
crtc,
>  	if (intel_display_power_get_in_set_if_enabled(dev_priv, &crtc->hw_reado=
ut_power_domains,
>  						      POWER_DOMAIN_PIPE_PANEL_FITTER(crtc->pipe))) {
>  		if (DISPLAY_VER(dev_priv) >=3D 9)
> -			skl_get_pfit_config(pipe_config);
> +			skl_scaler_get_config(pipe_config);
>  		else
>  			ilk_get_pfit_config(pipe_config);
>  	}
> diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/=
i915/display/skl_scaler.c
> index 62443834f64e..ec930aec21c4 100644
> --- a/drivers/gpu/drm/i915/display/skl_scaler.c
> +++ b/drivers/gpu/drm/i915/display/skl_scaler.c
> @@ -856,3 +856,40 @@ void skl_scaler_disable(const struct intel_crtc_stat=
e *old_crtc_state)
>  	for (i =3D 0; i < crtc->num_scalers; i++)
>  		skl_detach_scaler(crtc, i);
>  }
> +
> +void skl_scaler_get_config(struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> +	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> +	struct intel_crtc_scaler_state *scaler_state =3D &crtc_state->scaler_st=
ate;
> +	int id =3D -1;
> +	int i;
> +
> +	/* find scaler attached to this pipe */
> +	for (i =3D 0; i < crtc->num_scalers; i++) {
> +		u32 ctl, pos, size;
> +
> +		ctl =3D intel_de_read(dev_priv, SKL_PS_CTRL(crtc->pipe, i));
> +		if ((ctl & (PS_SCALER_EN | PS_PLANE_SEL_MASK)) !=3D PS_SCALER_EN)
> +			continue;
> +
> +		id =3D i;
> +		crtc_state->pch_pfit.enabled =3D true;
> +
> +		pos =3D intel_de_read(dev_priv, SKL_PS_WIN_POS(crtc->pipe, i));
> +		size =3D intel_de_read(dev_priv, SKL_PS_WIN_SZ(crtc->pipe, i));
> +
> +		drm_rect_init(&crtc_state->pch_pfit.dst,
> +			      pos >> 16, pos & 0xffff,
> +			      size >> 16, size & 0xffff);
> +
> +		scaler_state->scalers[i].in_use =3D true;
> +		break;
> +	}
> +
> +	scaler_state->scaler_id =3D id;
> +	if (id >=3D 0)
> +		scaler_state->scaler_users |=3D (1 << SKL_CRTC_INDEX);
> +	else
> +		scaler_state->scaler_users &=3D ~(1 << SKL_CRTC_INDEX);
> +}
> diff --git a/drivers/gpu/drm/i915/display/skl_scaler.h b/drivers/gpu/drm/=
i915/display/skl_scaler.h
> index f040f6ac061f..63f93ca03c89 100644
> --- a/drivers/gpu/drm/i915/display/skl_scaler.h
> +++ b/drivers/gpu/drm/i915/display/skl_scaler.h
> @@ -32,4 +32,6 @@ void skl_program_plane_scaler(struct intel_plane *plane,
>  void skl_detach_scalers(const struct intel_crtc_state *crtc_state);
>  void skl_scaler_disable(const struct intel_crtc_state *old_crtc_state);
>=20=20
> +void skl_scaler_get_config(struct intel_crtc_state *crtc_state);
> +
>  #endif

--=20
Jani Nikula, Intel Open Source Graphics Center
