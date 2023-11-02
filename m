Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CA417DF3C8
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Nov 2023 14:29:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C334710E89E;
	Thu,  2 Nov 2023 13:29:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0D5710E89E
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Nov 2023 13:29:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698931778; x=1730467778;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=fhXdqb7x0iuxqDb0JPkof5P20OW9sNQV2xGMmG6gm98=;
 b=gSjClO1uk7Myb58ahklzgHyQT1CQ7K5Ifif9ZSpnAQnVi44G93Eq48HL
 9fmkjNgpE18E7gqXdS7QLW8SgOxHvKS11zxqbNH0V8C9c5gq06Zy2lhNf
 Hsy1ee3iQgC3FT4ANn/QGilr6esOIgULsog0cr8j48E8vOhoyQeN6Q697
 mrDDRpDX6q3Y2XTg8sUBpULzZeUxKYyAuKWgTFj5k6xUwpoYgD9kBU85z
 1+7s0aZwOmROZqUMEVoJx3vPux/dDBIEJ0Cwx6khJiSLjinQA/O1oNUj9
 zqtJhy7RrbTrn+N8eZD9G8IvqeaFLn3vhxAIFCYrTgj62rjwicJ3b/Ch1 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="1635100"
X-IronPort-AV: E=Sophos;i="6.03,271,1694761200"; 
   d="scan'208";a="1635100"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2023 06:29:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10881"; a="827135171"
X-IronPort-AV: E=Sophos;i="6.03,271,1694761200"; d="scan'208";a="827135171"
Received: from unknown (HELO localhost) ([10.237.66.162])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2023 06:29:35 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20231101114212.9345-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231101114212.9345-1-ville.syrjala@linux.intel.com>
 <20231101114212.9345-2-ville.syrjala@linux.intel.com>
Date: Thu, 02 Nov 2023 15:29:32 +0200
Message-ID: <87h6m42shv.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915: Extract
 hsw_chicken_trans_reg()
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

On Wed, 01 Nov 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> We have the same code to determine the CHICKEN_TRANS register
> offset sprinkled in a dozen places. Hoover it up into a small
> helper.
>
> TODO: find a better home for this
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c     |  9 +++++++++
>  drivers/gpu/drm/i915/display/intel_ddi.h     |  2 ++
>  drivers/gpu/drm/i915/display/intel_display.c | 18 +++++-------------
>  drivers/gpu/drm/i915/display/intel_dp_mst.c  |  8 ++------
>  drivers/gpu/drm/i915/display/intel_psr.c     | 11 +++++------
>  5 files changed, 23 insertions(+), 25 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index 2e37708fecdd..c75fd00e360a 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3115,6 +3115,15 @@ static void intel_enable_ddi_dp(struct intel_atomi=
c_state *state,
>  	trans_port_sync_stop_link_train(state, encoder, crtc_state);
>  }
>=20=20
> +/* FIXME bad home for this function */
> +i915_reg_t hsw_chicken_trans_reg(struct drm_i915_private *i915,
> +				 enum transcoder cpu_transcoder)
> +{
> +	return DISPLAY_VER(i915) >=3D 14 ?
> +		MTL_CHICKEN_TRANS(cpu_transcoder) :
> +		CHICKEN_TRANS(cpu_transcoder);
> +}

Mixed feelings about the gradual accumulation of all the _reg()
functions... would like to have more of a plan where we are going with
this.

Regardless, this is an improvement.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> +
>  static i915_reg_t
>  gen9_chicken_trans_reg_by_port(struct drm_i915_private *dev_priv,
>  			       enum port port)
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.h b/drivers/gpu/drm/i=
915/display/intel_ddi.h
> index 4999c0ee229b..db845f2aca0c 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.h
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.h
> @@ -27,6 +27,8 @@ i915_reg_t dp_tp_ctl_reg(struct intel_encoder *encoder,
>  			 const struct intel_crtc_state *crtc_state);
>  i915_reg_t dp_tp_status_reg(struct intel_encoder *encoder,
>  			    const struct intel_crtc_state *crtc_state);
> +i915_reg_t hsw_chicken_trans_reg(struct drm_i915_private *i915,
> +				 enum transcoder cpu_transcoder);
>  void intel_ddi_fdi_post_disable(struct intel_atomic_state *state,
>  				struct intel_encoder *intel_encoder,
>  				const struct intel_crtc_state *old_crtc_state,
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index cdec0425f519..1abb81981ef5 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -487,11 +487,8 @@ void intel_disable_transcoder(const struct intel_crt=
c_state *old_crtc_state)
>=20=20
>  	intel_de_write(dev_priv, reg, val);
>=20=20
> -	if (DISPLAY_VER(dev_priv) >=3D 14)
> -		intel_de_rmw(dev_priv, MTL_CHICKEN_TRANS(cpu_transcoder),
> -			     FECSTALL_DIS_DPTSTREAM_DPTTG, 0);
> -	else if (DISPLAY_VER(dev_priv) >=3D 12)
> -		intel_de_rmw(dev_priv, CHICKEN_TRANS(cpu_transcoder),
> +	if (DISPLAY_VER(dev_priv) >=3D 12)
> +		intel_de_rmw(dev_priv, hsw_chicken_trans_reg(dev_priv, cpu_transcoder),
>  			     FECSTALL_DIS_DPTSTREAM_DPTTG, 0);
>=20=20
>  	if ((val & TRANSCONF_ENABLE) =3D=3D 0)
> @@ -1502,12 +1499,9 @@ static void hsw_set_linetime_wm(const struct intel=
_crtc_state *crtc_state)
>  static void hsw_set_frame_start_delay(const struct intel_crtc_state *crt=
c_state)
>  {
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> -	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> -	enum transcoder transcoder =3D crtc_state->cpu_transcoder;
> -	i915_reg_t reg =3D DISPLAY_VER(dev_priv) >=3D 14 ? MTL_CHICKEN_TRANS(tr=
anscoder) :
> -			 CHICKEN_TRANS(transcoder);
> +	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
>=20=20
> -	intel_de_rmw(dev_priv, reg,
> +	intel_de_rmw(i915, hsw_chicken_trans_reg(i915, crtc_state->cpu_transcod=
er),
>  		     HSW_FRAME_START_DELAY_MASK,
>  		     HSW_FRAME_START_DELAY(crtc_state->framestart_delay - 1));
>  }
> @@ -3791,9 +3785,7 @@ static bool hsw_get_pipe_config(struct intel_crtc *=
crtc,
>  	}
>=20=20
>  	if (!transcoder_is_dsi(pipe_config->cpu_transcoder)) {
> -		tmp =3D intel_de_read(dev_priv, DISPLAY_VER(dev_priv) >=3D 14 ?
> -				    MTL_CHICKEN_TRANS(pipe_config->cpu_transcoder) :
> -				    CHICKEN_TRANS(pipe_config->cpu_transcoder));
> +		tmp =3D intel_de_read(dev_priv, hsw_chicken_trans_reg(dev_priv, pipe_c=
onfig->cpu_transcoder));
>=20=20
>  		pipe_config->framestart_delay =3D REG_FIELD_GET(HSW_FRAME_START_DELAY_=
MASK, tmp) + 1;
>  	} else {
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/dr=
m/i915/display/intel_dp_mst.c
> index 82f425ef1595..a32498c7826a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -817,12 +817,8 @@ static void intel_mst_enable_dp(struct intel_atomic_=
state *state,
>  	drm_dp_add_payload_part2(&intel_dp->mst_mgr, &state->base,
>  				 drm_atomic_get_mst_payload_state(mst_state, connector->port));
>=20=20
> -	if (DISPLAY_VER(dev_priv) >=3D 14)
> -		intel_de_rmw(dev_priv, MTL_CHICKEN_TRANS(trans),
> -			     FECSTALL_DIS_DPTSTREAM_DPTTG,
> -			     pipe_config->fec_enable ? FECSTALL_DIS_DPTSTREAM_DPTTG : 0);
> -	else if (DISPLAY_VER(dev_priv) >=3D 12)
> -		intel_de_rmw(dev_priv, CHICKEN_TRANS(trans),
> +	if (DISPLAY_VER(dev_priv) >=3D 12)
> +		intel_de_rmw(dev_priv, hsw_chicken_trans_reg(dev_priv, trans),
>  			     FECSTALL_DIS_DPTSTREAM_DPTTG,
>  			     pipe_config->fec_enable ? FECSTALL_DIS_DPTSTREAM_DPTTG : 0);
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i=
915/display/intel_psr.c
> index ecd24a0b86cb..920f77336163 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -29,6 +29,7 @@
>  #include "i915_reg.h"
>  #include "intel_atomic.h"
>  #include "intel_crtc.h"
> +#include "intel_ddi.h"
>  #include "intel_de.h"
>  #include "intel_display_types.h"
>  #include "intel_dp.h"
> @@ -1452,12 +1453,10 @@ static void intel_psr_enable_source(struct intel_=
dp *intel_dp,
>  		 * All supported adlp panels have 1-based X granularity, this may
>  		 * cause issues if non-supported panels are used.
>  		 */
> -		if (IS_DISPLAY_IP_STEP(dev_priv, IP_VER(14, 0), STEP_A0, STEP_B0))
> -			intel_de_rmw(dev_priv, MTL_CHICKEN_TRANS(cpu_transcoder), 0,
> -				     ADLP_1_BASED_X_GRANULARITY);
> -		else if (IS_ALDERLAKE_P(dev_priv))
> -			intel_de_rmw(dev_priv, CHICKEN_TRANS(cpu_transcoder), 0,
> -				     ADLP_1_BASED_X_GRANULARITY);
> +		if (IS_DISPLAY_IP_STEP(dev_priv, IP_VER(14, 0), STEP_A0, STEP_B0) ||
> +		    IS_ALDERLAKE_P(dev_priv))
> +			intel_de_rmw(dev_priv, hsw_chicken_trans_reg(dev_priv, cpu_transcoder=
),
> +				     0, ADLP_1_BASED_X_GRANULARITY);
>=20=20
>  		/* Wa_16012604467:adlp,mtl[a0,b0] */
>  		if (IS_DISPLAY_IP_STEP(dev_priv, IP_VER(14, 0), STEP_A0, STEP_B0))

--=20
Jani Nikula, Intel
