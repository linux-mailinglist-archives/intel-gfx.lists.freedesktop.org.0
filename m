Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B17284A4974
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Jan 2022 15:37:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4050E10E127;
	Mon, 31 Jan 2022 14:37:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE53C10E127
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Jan 2022 14:37:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643639824; x=1675175824;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=XAoUsquOVW4SShIohPh4VZC7UZIcrF6DJoN35Y8UPbY=;
 b=n1kga+M9DLYEaH/sMo8DIXHKLbYySNHgXSWe0H4z+xGKd1iKcY11+v2E
 znp5yokRDJPkHfDYs8Bdu1Lce0+x/BhKF3qql+DkEyz2bKzopb2A3dhi2
 IgXVYog3LDnrW1H/R1nxIhiEUdML2nlyNl1G5xGbTh/uozx+9DCq+P93R
 2z2RxTC8rmBrU6fgkRH9ADUFoRxWsbwR7MGUmRI2QKMZeXBHFZFZXodhx
 wh88uZ8ZBN1bAyzjTjoxBq33jDJpuwC1CDoUeNoa7v+WzjpSdI7i2w9ty
 AGgvDqyeKbEV7fIUuPDpZ3Kq+gua2X982l3XX+GWuuLY1HTH186d3IjVO A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10243"; a="246304939"
X-IronPort-AV: E=Sophos;i="5.88,331,1635231600"; d="scan'208";a="246304939"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2022 06:37:04 -0800
X-IronPort-AV: E=Sophos;i="5.88,331,1635231600"; d="scan'208";a="768605239"
Received: from ylian16-mobl1.ccr.corp.intel.com (HELO localhost)
 ([10.252.16.100])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2022 06:37:03 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220128103757.22461-7-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220128103757.22461-1-ville.syrjala@linux.intel.com>
 <20220128103757.22461-7-ville.syrjala@linux.intel.com>
Date: Mon, 31 Jan 2022 16:37:00 +0200
Message-ID: <87tudkug37.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 06/17] drm/i915: Pass crtc+cpu_transcoder
 to intel_cpu_transcoder_set_m_n()
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

On Fri, 28 Jan 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Instead of passing in the whole crtc state let's pass in just
> the bits of state we need. This will help with the DRRS code
> which shouldn't really be accessing the atomic state stuff directly
> as it gets called outside the normal atomic flows.

Overall looks good, one bug crept in.

>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c     |  6 ++--
>  drivers/gpu/drm/i915/display/intel_display.c | 37 ++++++++++----------
>  drivers/gpu/drm/i915/display/intel_display.h |  6 ++--
>  drivers/gpu/drm/i915/display/intel_dp_mst.c  |  3 +-
>  drivers/gpu/drm/i915/display/intel_drrs.c    |  5 ++-
>  5 files changed, 32 insertions(+), 25 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index b02b327331f8..360f62665b54 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -2498,6 +2498,8 @@ static void intel_ddi_pre_enable_dp(struct intel_at=
omic_state *state,
>  				    const struct drm_connector_state *conn_state)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> +	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
>=20=20
>  	if (DISPLAY_VER(dev_priv) >=3D 12)
>  		tgl_ddi_pre_enable_dp(state, encoder, crtc_state, conn_state);
> @@ -2510,9 +2512,9 @@ static void intel_ddi_pre_enable_dp(struct intel_at=
omic_state *state,
>  	if (!intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST)) {
>  		intel_ddi_set_dp_msa(crtc_state, conn_state);
>=20=20
> -		intel_cpu_transcoder_set_m1_n1(crtc_state,
> +		intel_cpu_transcoder_set_m1_n1(crtc, cpu_transcoder,
>  					       &crtc_state->dp_m_n);
> -		intel_cpu_transcoder_set_m2_n2(crtc_state,
> +		intel_cpu_transcoder_set_m2_n2(crtc, cpu_transcoder,
>  					       &crtc_state->dp_m2_n2);
>  	}
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 79f22a3f2e20..0392803bb790 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -118,7 +118,7 @@
>=20=20
>  static void intel_set_transcoder_timings(const struct intel_crtc_state *=
crtc_state);
>  static void intel_set_pipe_src_size(const struct intel_crtc_state *crtc_=
state);
> -static void intel_pch_transcoder_set_m_n(const struct intel_crtc_state *=
crtc_state,
> +static void intel_pch_transcoder_set_m_n(struct intel_crtc *crtc,
>  					 const struct intel_link_m_n *m_n);
>  static void i9xx_set_pipeconf(const struct intel_crtc_state *crtc_state);
>  static void ilk_set_pipeconf(const struct intel_crtc_state *crtc_state);
> @@ -1816,6 +1816,7 @@ static void ilk_crtc_enable(struct intel_atomic_sta=
te *state,
>  	const struct intel_crtc_state *new_crtc_state =3D
>  		intel_atomic_get_new_crtc_state(state, crtc);
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> +	enum transcoder cpu_transcoder =3D new_crtc_state->cpu_transcoder;
>  	enum pipe pipe =3D crtc->pipe;
>=20=20
>  	if (drm_WARN_ON(&dev_priv->drm, crtc->active))
> @@ -1836,12 +1837,11 @@ static void ilk_crtc_enable(struct intel_atomic_s=
tate *state,
>=20=20
>  	if (intel_crtc_has_dp_encoder(new_crtc_state)) {
>  		if (new_crtc_state->has_pch_encoder) {
> -			intel_pch_transcoder_set_m_n(new_crtc_state,
> -						     &new_crtc_state->dp_m_n);
> +			intel_pch_transcoder_set_m_n(crtc, &new_crtc_state->dp_m_n);
>  		} else {
> -			intel_cpu_transcoder_set_m1_n1(new_crtc_state,
> +			intel_cpu_transcoder_set_m1_n1(crtc, cpu_transcoder,
>  						       &new_crtc_state->dp_m_n);
> -			intel_cpu_transcoder_set_m2_n2(new_crtc_state,
> +			intel_cpu_transcoder_set_m2_n2(crtc, cpu_transcoder,
>  						       &new_crtc_state->dp_m2_n2);
>  		}
>  	}
> @@ -1850,7 +1850,7 @@ static void ilk_crtc_enable(struct intel_atomic_sta=
te *state,
>  	intel_set_pipe_src_size(new_crtc_state);
>=20=20
>  	if (new_crtc_state->has_pch_encoder)
> -		intel_cpu_transcoder_set_m1_n1(new_crtc_state,
> +		intel_cpu_transcoder_set_m1_n1(crtc, cpu_transcoder,
>  					       &new_crtc_state->fdi_m_n);
>=20=20
>  	ilk_set_pipeconf(new_crtc_state);
> @@ -2017,7 +2017,7 @@ static void hsw_configure_cpu_transcoder(const stru=
ct intel_crtc_state *crtc_sta
>  			       crtc_state->pixel_multiplier - 1);
>=20=20
>  	if (crtc_state->has_pch_encoder)
> -		intel_cpu_transcoder_set_m1_n1(crtc_state,
> +		intel_cpu_transcoder_set_m1_n1(crtc, cpu_transcoder,
>  					       &crtc_state->fdi_m_n);
>=20=20
>  	hsw_set_frame_start_delay(crtc_state);
> @@ -2452,15 +2452,16 @@ static void valleyview_crtc_enable(struct intel_a=
tomic_state *state,
>  	const struct intel_crtc_state *new_crtc_state =3D
>  		intel_atomic_get_new_crtc_state(state, crtc);
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> +	enum transcoder cpu_transcoder =3D new_crtc_state->cpu_transcoder;
>  	enum pipe pipe =3D crtc->pipe;
>=20=20
>  	if (drm_WARN_ON(&dev_priv->drm, crtc->active))
>  		return;
>=20=20
>  	if (intel_crtc_has_dp_encoder(new_crtc_state)) {
> -		intel_cpu_transcoder_set_m1_n1(new_crtc_state,
> +		intel_cpu_transcoder_set_m1_n1(crtc, cpu_transcoder,
>  					       &new_crtc_state->dp_m_n);
> -		intel_cpu_transcoder_set_m2_n2(new_crtc_state,
> +		intel_cpu_transcoder_set_m2_n2(crtc, cpu_transcoder,
>  					       &new_crtc_state->dp_m2_n2);
>  	}
>=20=20
> @@ -2508,15 +2509,16 @@ static void i9xx_crtc_enable(struct intel_atomic_=
state *state,
>  	const struct intel_crtc_state *new_crtc_state =3D
>  		intel_atomic_get_new_crtc_state(state, crtc);
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> +	enum transcoder cpu_transcoder =3D new_crtc_state->cpu_transcoder;
>  	enum pipe pipe =3D crtc->pipe;
>=20=20
>  	if (drm_WARN_ON(&dev_priv->drm, crtc->active))
>  		return;
>=20=20
>  	if (intel_crtc_has_dp_encoder(new_crtc_state)) {
> -		intel_cpu_transcoder_set_m1_n1(new_crtc_state,
> +		intel_cpu_transcoder_set_m1_n1(crtc, cpu_transcoder,
>  					       &new_crtc_state->dp_m_n);
> -		intel_cpu_transcoder_set_m2_n2(new_crtc_state,
> +		intel_cpu_transcoder_set_m1_n1(crtc, cpu_transcoder,

m1_n1 copy paste fail?

>  					       &new_crtc_state->dp_m2_n2);
>  	}
>=20=20
> @@ -3140,10 +3142,9 @@ static void intel_set_m_n(struct drm_i915_private =
*i915,
>  	intel_de_write(i915, link_n_reg, m_n->link_n);
>  }
>=20=20
> -static void intel_pch_transcoder_set_m_n(const struct intel_crtc_state *=
crtc_state,
> +static void intel_pch_transcoder_set_m_n(struct intel_crtc *crtc,
>  					 const struct intel_link_m_n *m_n)
>  {
> -	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>  	enum pipe pipe =3D crtc->pipe;
>=20=20
> @@ -3165,13 +3166,12 @@ static bool transcoder_has_m2_n2(struct drm_i915_=
private *dev_priv,
>  	return DISPLAY_VER(dev_priv) =3D=3D 7 || IS_CHERRYVIEW(dev_priv);
>  }
>=20=20
> -void intel_cpu_transcoder_set_m1_n1(const struct intel_crtc_state *crtc_=
state,
> +void intel_cpu_transcoder_set_m1_n1(struct intel_crtc *crtc,
> +				    enum transcoder transcoder,
>  				    const struct intel_link_m_n *m_n)
>  {
> -	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>  	enum pipe pipe =3D crtc->pipe;
> -	enum transcoder transcoder =3D crtc_state->cpu_transcoder;
>=20=20
>  	if (DISPLAY_VER(dev_priv) >=3D 5)
>  		intel_set_m_n(dev_priv, m_n,
> @@ -3183,12 +3183,11 @@ void intel_cpu_transcoder_set_m1_n1(const struct =
intel_crtc_state *crtc_state,
>  			      PIPE_LINK_M_G4X(pipe), PIPE_LINK_N_G4X(pipe));
>  }
>=20=20
> -void intel_cpu_transcoder_set_m2_n2(const struct intel_crtc_state *crtc_=
state,
> +void intel_cpu_transcoder_set_m2_n2(struct intel_crtc *crtc,
> +				    enum transcoder transcoder,
>  				    const struct intel_link_m_n *m_n)
>  {
> -	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> -	enum transcoder transcoder =3D crtc_state->cpu_transcoder;
>=20=20
>  	if (!transcoder_has_m2_n2(dev_priv, transcoder))
>  		return;
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/d=
rm/i915/display/intel_display.h
> index 9a232bdef0f2..e8b41b67a366 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -604,9 +604,11 @@ bool intel_fuzzy_clock_check(int clock1, int clock2);
>=20=20
>  void intel_display_prepare_reset(struct drm_i915_private *dev_priv);
>  void intel_display_finish_reset(struct drm_i915_private *dev_priv);
> -void intel_cpu_transcoder_set_m1_n1(const struct intel_crtc_state *crtc_=
state,
> +void intel_cpu_transcoder_set_m1_n1(struct intel_crtc *crtc,
> +				    enum transcoder cpu_transcoder,
>  				    const struct intel_link_m_n *m_n);
> -void intel_cpu_transcoder_set_m2_n2(const struct intel_crtc_state *crtc_=
state,
> +void intel_cpu_transcoder_set_m2_n2(struct intel_crtc *crtc,
> +				    enum transcoder cpu_transcoder,
>  				    const struct intel_link_m_n *m_n);
>  void intel_cpu_transcoder_get_m1_n1(struct intel_crtc *crtc,
>  				    enum transcoder cpu_transcoder,
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/dr=
m/i915/display/intel_dp_mst.c
> index 4e8d65fa6086..30edb9117443 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -473,6 +473,7 @@ static void intel_mst_pre_enable_dp(struct intel_atom=
ic_state *state,
>  	struct intel_digital_port *dig_port =3D intel_mst->primary;
>  	struct intel_dp *intel_dp =3D &dig_port->dp;
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> +	struct intel_crtc *crtc =3D to_intel_crtc(pipe_config->uapi.crtc);
>  	struct intel_connector *connector =3D
>  		to_intel_connector(conn_state->connector);
>  	int ret;
> @@ -523,7 +524,7 @@ static void intel_mst_pre_enable_dp(struct intel_atom=
ic_state *state,
>=20=20
>  	intel_ddi_set_dp_msa(pipe_config, conn_state);
>=20=20
> -	intel_cpu_transcoder_set_m1_n1(pipe_config,
> +	intel_cpu_transcoder_set_m1_n1(crtc, pipe_config->cpu_transcoder,
>  				       &pipe_config->dp_m_n);
>  }
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/=
i915/display/intel_drrs.c
> index a911066c7809..53f014b4436b 100644
> --- a/drivers/gpu/drm/i915/display/intel_drrs.c
> +++ b/drivers/gpu/drm/i915/display/intel_drrs.c
> @@ -115,7 +115,10 @@ static void
>  intel_drrs_set_refresh_rate_m_n(const struct intel_crtc_state *crtc_stat=
e,
>  				enum drrs_refresh_rate_type refresh_type)
>  {
> -	intel_cpu_transcoder_set_m1_n1(crtc_state, refresh_type =3D=3D DRRS_LOW=
_RR ?
> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> +
> +	intel_cpu_transcoder_set_m1_n1(crtc, crtc_state->cpu_transcoder,
> +				       refresh_type =3D=3D DRRS_LOW_RR ?
>  				       &crtc_state->dp_m2_n2 : &crtc_state->dp_m_n);
>  }

--=20
Jani Nikula, Intel Open Source Graphics Center
