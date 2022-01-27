Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C4A8149E0B2
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jan 2022 12:23:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA74510EFF7;
	Thu, 27 Jan 2022 11:23:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3045010EFF7
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jan 2022 11:23:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643282626; x=1674818626;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=asK2wHhkqkJa8zKWNFijqwj2gyoCbj/bDHhwYsprfmI=;
 b=mqhxWFbNmSi2F9sYnyRWGUUWOnjZSMUmqrb31QD6Dk/t7NLT9Dlfqua6
 rW5Ba6csHZSrklZU6F6OsvBZlyIEyWrH0Kw47pSjaO04Z/0LVnBiWhEZL
 61lhArODdJnp3YL8v45yj93ug87v1KW89L7Qk+G/wLIfik0oiqhI4x2zW
 CrUo+RYLeR7HTbWxIiuvYiHNNTGokKdlzrFe5LPSDN2Gt3RSj2CX5UlKk
 QgBCBamEVCvx3KrUmDg0WLQOkLVKwsDyhe+bvueYBTkxRpk3LPusK9t6i
 6+dHNFG74jlNTDzWfeDB0efpq0r8Iuj80jxwh9hD+baLmUAbCripSZHTN A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10239"; a="234197145"
X-IronPort-AV: E=Sophos;i="5.88,320,1635231600"; d="scan'208";a="234197145"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2022 03:23:45 -0800
X-IronPort-AV: E=Sophos;i="5.88,320,1635231600"; d="scan'208";a="521190536"
Received: from johnlyon-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.16.209])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2022 03:23:43 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220127093303.17309-5-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220127093303.17309-1-ville.syrjala@linux.intel.com>
 <20220127093303.17309-5-ville.syrjala@linux.intel.com>
Date: Thu, 27 Jan 2022 13:23:39 +0200
Message-ID: <87r18twhfo.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 04/14] drm/i915: Move drrs hardware bit
 frobbing to small helpers
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

On Thu, 27 Jan 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Split the drrs code that actually changes the refresh rate
> (via PIPECONF or M/N values) to small helper functions that
> only deal with the hardware details an nothing else. We'll
> soon have a third way of doing this, and it's less confusing
> when each difference method lives in its own funciton.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_drrs.c | 67 ++++++++++++-----------
>  1 file changed, 36 insertions(+), 31 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/=
i915/display/intel_drrs.c
> index 46be46f2c47e..0cacdb174fd0 100644
> --- a/drivers/gpu/drm/i915/display/intel_drrs.c
> +++ b/drivers/gpu/drm/i915/display/intel_drrs.c
> @@ -87,6 +87,38 @@ intel_drrs_compute_config(struct intel_dp *intel_dp,
>  		pipe_config->dp_m2_n2.data_m *=3D pipe_config->splitter.link_count;
>  }
>=20=20
> +static void
> +intel_drrs_set_refresh_rate_pipeconf(const struct intel_crtc_state *crtc=
_state,
> +				     enum drrs_refresh_rate_type refresh_type)

Side note, for future, does this really need to be an enum? Could it
just be a bool "reduced" or something?

Anyway,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>



> +{
> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> +	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> +	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
> +	u32 val, bit;
> +
> +	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
> +		bit =3D PIPECONF_EDP_RR_MODE_SWITCH_VLV;
> +	else
> +		bit =3D PIPECONF_EDP_RR_MODE_SWITCH;
> +
> +	val =3D intel_de_read(dev_priv, PIPECONF(cpu_transcoder));
> +
> +	if (refresh_type =3D=3D DRRS_LOW_RR)
> +		val |=3D bit;
> +	else
> +		val &=3D ~bit;
> +
> +	intel_de_write(dev_priv, PIPECONF(cpu_transcoder), val);
> +}
> +
> +static void
> +intel_drrs_set_refresh_rate_m_n(const struct intel_crtc_state *crtc_stat=
e,
> +				enum drrs_refresh_rate_type refresh_type)
> +{
> +	intel_dp_set_m_n(crtc_state,
> +			 refresh_type =3D=3D DRRS_LOW_RR ? M2_N2 : M1_N1);
> +}
> +
>  static void intel_drrs_set_state(struct drm_i915_private *dev_priv,
>  				 const struct intel_crtc_state *crtc_state,
>  				 enum drrs_refresh_rate_type refresh_type)
> @@ -120,37 +152,10 @@ static void intel_drrs_set_state(struct drm_i915_pr=
ivate *dev_priv,
>  		return;
>  	}
>=20=20
> -	if (DISPLAY_VER(dev_priv) >=3D 8 && !IS_CHERRYVIEW(dev_priv)) {
> -		switch (refresh_type) {
> -		case DRRS_HIGH_RR:
> -			intel_dp_set_m_n(crtc_state, M1_N1);
> -			break;
> -		case DRRS_LOW_RR:
> -			intel_dp_set_m_n(crtc_state, M2_N2);
> -			break;
> -		case DRRS_MAX_RR:
> -		default:
> -			drm_err(&dev_priv->drm,
> -				"Unsupported refreshrate type\n");
> -		}
> -	} else if (DISPLAY_VER(dev_priv) > 6) {
> -		i915_reg_t reg =3D PIPECONF(crtc_state->cpu_transcoder);
> -		u32 val;
> -
> -		val =3D intel_de_read(dev_priv, reg);
> -		if (refresh_type =3D=3D DRRS_LOW_RR) {
> -			if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
> -				val |=3D PIPECONF_EDP_RR_MODE_SWITCH_VLV;
> -			else
> -				val |=3D PIPECONF_EDP_RR_MODE_SWITCH;
> -		} else {
> -			if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
> -				val &=3D ~PIPECONF_EDP_RR_MODE_SWITCH_VLV;
> -			else
> -				val &=3D ~PIPECONF_EDP_RR_MODE_SWITCH;
> -		}
> -		intel_de_write(dev_priv, reg, val);
> -	}
> +	if (DISPLAY_VER(dev_priv) >=3D 8 && !IS_CHERRYVIEW(dev_priv))
> +		intel_drrs_set_refresh_rate_m_n(crtc_state, refresh_type);
> +	else if (DISPLAY_VER(dev_priv) > 6)
> +		intel_drrs_set_refresh_rate_pipeconf(crtc_state, refresh_type);
>=20=20
>  	dev_priv->drrs.refresh_rate_type =3D refresh_type;

--=20
Jani Nikula, Intel Open Source Graphics Center
