Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC5394D43AD
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Mar 2022 10:44:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B9F210FEAB;
	Thu, 10 Mar 2022 09:43:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 975F010FEAB
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Mar 2022 09:43:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646905438; x=1678441438;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=WpYTbvBM0wRGBC3VGWBllE26PPKr8dbvk3lhT2q6W30=;
 b=UnPx4ZeY6xlDyRW0mu/lLSbkzae2WSfrpcxLXB60RgNNfuoEAmitDQH7
 GdN8+AxWAQ/XRjAqREs2ALSEa0lzOpujVCQ9Y7yYwiWTSwhVmQxPnUDRI
 bvx9m8R88gEr1/QioHHuNtKcfuWg2LU3VmoZeG4ths7d8WRa27RpsmC0J
 SKRcg+E9Db1eIHxgfTrqBATN/SV5h2ey0OhZbjBqf885BRQ9jpAxiTmtC
 htM+0n87qk8DwVzNO7zYqmoR6r8DPNtOr7tt2L2mQpub0MnJC6/1T54ZP
 u/ewflA8zMXykhEEZOIOEXAxttsF7ENDa5G2tGwIBfQhGp+Wo6U0+s7Zm g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10281"; a="235158076"
X-IronPort-AV: E=Sophos;i="5.90,170,1643702400"; d="scan'208";a="235158076"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2022 01:43:58 -0800
X-IronPort-AV: E=Sophos;i="5.90,170,1643702400"; d="scan'208";a="554568877"
Received: from mgherza1-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.55.69])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2022 01:43:56 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220310004802.16310-8-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220310004802.16310-1-ville.syrjala@linux.intel.com>
 <20220310004802.16310-8-ville.syrjala@linux.intel.com>
Date: Thu, 10 Mar 2022 11:43:54 +0200
Message-ID: <87mthyxhut.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 07/13] drm/i915: Clean up DRRS refresh rate
 enum
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

On Thu, 10 Mar 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Make the DRRS refresh rate enum less magical.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

I might've gone for removing the enum altogether, and tracking the
actual refresh rates, but this is an improvement on what we have now,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> --- .../drm/i915/display/intel_display_debugfs.c | 18 ++------
> drivers/gpu/drm/i915/display/intel_drrs.c | 44 +++++++++----------
> drivers/gpu/drm/i915/i915_drv.h | 14 ++---- 3 files changed, 28
> insertions(+), 48 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drive=
rs/gpu/drm/i915/display/intel_display_debugfs.c
> index 28414472110e..798bf233a60f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -1149,7 +1149,6 @@ static void drrs_status_per_crtc(struct seq_file *m,
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(dev);
>  	struct i915_drrs *drrs =3D &dev_priv->drrs;
> -	int vrefresh =3D 0;
>  	struct drm_connector *connector;
>  	struct drm_connector_list_iter conn_iter;
>=20=20
> @@ -1191,21 +1190,12 @@ static void drrs_status_per_crtc(struct seq_file =
*m,
>  					drrs->busy_frontbuffer_bits);
>=20=20
>  		seq_puts(m, "\n\t\t");
> -		if (drrs->refresh_rate_type =3D=3D DRRS_HIGH_RR) {
> -			seq_puts(m, "DRRS_State: DRRS_HIGH_RR\n");
> -			vrefresh =3D drm_mode_vrefresh(panel->fixed_mode);
> -		} else if (drrs->refresh_rate_type =3D=3D DRRS_LOW_RR) {
> -			seq_puts(m, "DRRS_State: DRRS_LOW_RR\n");
> -			vrefresh =3D drm_mode_vrefresh(panel->downclock_mode);
> -		} else {
> -			seq_printf(m, "DRRS_State: Unknown(%d)\n",
> -						drrs->refresh_rate_type);
> -			mutex_unlock(&drrs->mutex);
> -			return;
> -		}
> -		seq_printf(m, "\t\tVrefresh: %d", vrefresh);
>=20=20
> +		seq_printf(m, "DRRS refresh rate: %s\n",
> +			   drrs->refresh_rate =3D=3D DRRS_REFRESH_RATE_LOW ?
> +			   "low" : "high");
>  		seq_puts(m, "\n\t\t");
> +
>  		mutex_unlock(&drrs->mutex);
>  	} else {
>  		/* DRRS not supported. Print the VBT parameter*/
> diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/=
i915/display/intel_drrs.c
> index 7c4a3ecee93a..3979ceaaf651 100644
> --- a/drivers/gpu/drm/i915/display/intel_drrs.c
> +++ b/drivers/gpu/drm/i915/display/intel_drrs.c
> @@ -103,7 +103,7 @@ intel_drrs_compute_config(struct intel_dp *intel_dp,
>=20=20
>  static void
>  intel_drrs_set_refresh_rate_pipeconf(const struct intel_crtc_state *crtc=
_state,
> -				     enum drrs_refresh_rate_type refresh_type)
> +				     enum drrs_refresh_rate refresh_rate)
>  {
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> @@ -117,7 +117,7 @@ intel_drrs_set_refresh_rate_pipeconf(const struct int=
el_crtc_state *crtc_state,
>=20=20
>  	val =3D intel_de_read(dev_priv, PIPECONF(cpu_transcoder));
>=20=20
> -	if (refresh_type =3D=3D DRRS_LOW_RR)
> +	if (refresh_rate =3D=3D DRRS_REFRESH_RATE_LOW)
>  		val |=3D bit;
>  	else
>  		val &=3D ~bit;
> @@ -127,22 +127,21 @@ intel_drrs_set_refresh_rate_pipeconf(const struct i=
ntel_crtc_state *crtc_state,
>=20=20
>  static void
>  intel_drrs_set_refresh_rate_m_n(const struct intel_crtc_state *crtc_stat=
e,
> -				enum drrs_refresh_rate_type refresh_type)
> +				enum drrs_refresh_rate refresh_rate)
>  {
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>=20=20
>  	intel_cpu_transcoder_set_m1_n1(crtc, crtc_state->cpu_transcoder,
> -				       refresh_type =3D=3D DRRS_LOW_RR ?
> +				       refresh_rate =3D=3D DRRS_REFRESH_RATE_LOW ?
>  				       &crtc_state->dp_m2_n2 : &crtc_state->dp_m_n);
>  }
>=20=20
>  static void intel_drrs_set_state(struct drm_i915_private *dev_priv,
>  				 const struct intel_crtc_state *crtc_state,
> -				 enum drrs_refresh_rate_type refresh_type)
> +				 enum drrs_refresh_rate refresh_rate)
>  {
>  	struct intel_dp *intel_dp =3D dev_priv->drrs.dp;
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> -	struct drm_display_mode *mode;
>=20=20
>  	if (!intel_dp) {
>  		drm_dbg_kms(&dev_priv->drm, "DRRS not supported.\n");
> @@ -160,7 +159,7 @@ static void intel_drrs_set_state(struct drm_i915_priv=
ate *dev_priv,
>  		return;
>  	}
>=20=20
> -	if (refresh_type =3D=3D dev_priv->drrs.refresh_rate_type)
> +	if (refresh_rate =3D=3D dev_priv->drrs.refresh_rate)
>  		return;
>=20=20
>  	if (!crtc_state->hw.active) {
> @@ -170,18 +169,14 @@ static void intel_drrs_set_state(struct drm_i915_pr=
ivate *dev_priv,
>  	}
>=20=20
>  	if (DISPLAY_VER(dev_priv) >=3D 8 && !IS_CHERRYVIEW(dev_priv))
> -		intel_drrs_set_refresh_rate_m_n(crtc_state, refresh_type);
> +		intel_drrs_set_refresh_rate_m_n(crtc_state, refresh_rate);
>  	else if (DISPLAY_VER(dev_priv) > 6)
> -		intel_drrs_set_refresh_rate_pipeconf(crtc_state, refresh_type);
> +		intel_drrs_set_refresh_rate_pipeconf(crtc_state, refresh_rate);
>=20=20
> -	dev_priv->drrs.refresh_rate_type =3D refresh_type;
> +	dev_priv->drrs.refresh_rate =3D refresh_rate;
>=20=20
> -	if (refresh_type =3D=3D DRRS_LOW_RR)
> -		mode =3D intel_dp->attached_connector->panel.downclock_mode;
> -	else
> -		mode =3D intel_dp->attached_connector->panel.fixed_mode;
> -	drm_dbg_kms(&dev_priv->drm, "eDP Refresh Rate set to : %dHz\n",
> -		    drm_mode_vrefresh(mode));
> +	drm_dbg_kms(&dev_priv->drm, "eDP Refresh Rate set to : %s\n",
> +		    refresh_rate =3D=3D DRRS_REFRESH_RATE_LOW ? "low" : "high");
>  }
>=20=20
>  static void
> @@ -229,7 +224,7 @@ intel_drrs_disable_locked(struct intel_dp *intel_dp,
>  {
>  	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
>=20=20
> -	intel_drrs_set_state(dev_priv, crtc_state, DRRS_HIGH_RR);
> +	intel_drrs_set_state(dev_priv, crtc_state, DRRS_REFRESH_RATE_HIGH);
>  	dev_priv->drrs.dp =3D NULL;
>  }
>=20=20
> @@ -297,7 +292,6 @@ static void intel_drrs_downclock_work(struct work_str=
uct *work)
>  	struct drm_i915_private *dev_priv =3D
>  		container_of(work, typeof(*dev_priv), drrs.work.work);
>  	struct intel_dp *intel_dp;
> -	struct drm_crtc *crtc;
>=20=20
>  	mutex_lock(&dev_priv->drrs.mutex);
>=20=20
> @@ -311,11 +305,13 @@ static void intel_drrs_downclock_work(struct work_s=
truct *work)
>  	 * recheck.
>  	 */
>=20=20
> -	if (dev_priv->drrs.busy_frontbuffer_bits)
> -		goto unlock;
> +	if (!dev_priv->drrs.busy_frontbuffer_bits) {
> +		struct intel_crtc *crtc =3D
> +			to_intel_crtc(dp_to_dig_port(intel_dp)->base.base.crtc);
>=20=20
> -	crtc =3D dp_to_dig_port(intel_dp)->base.base.crtc;
> -	intel_drrs_set_state(dev_priv, to_intel_crtc(crtc)->config, DRRS_LOW_RR=
);
> +		intel_drrs_set_state(dev_priv, crtc->config,
> +				     DRRS_REFRESH_RATE_LOW);
> +	}
>=20=20
>  unlock:
>  	mutex_unlock(&dev_priv->drrs.mutex);
> @@ -354,7 +350,7 @@ static void intel_drrs_frontbuffer_update(struct drm_=
i915_private *dev_priv,
>  	/* flush/invalidate means busy screen hence upclock */
>  	if (frontbuffer_bits)
>  		intel_drrs_set_state(dev_priv, to_intel_crtc(crtc)->config,
> -				     DRRS_HIGH_RR);
> +				     DRRS_REFRESH_RATE_HIGH);
>=20=20
>  	/*
>  	 * flush also means no more activity hence schedule downclock, if all
> @@ -466,7 +462,7 @@ intel_drrs_init(struct intel_connector *connector,
>=20=20
>  	dev_priv->drrs.type =3D dev_priv->vbt.drrs_type;
>=20=20
> -	dev_priv->drrs.refresh_rate_type =3D DRRS_HIGH_RR;
> +	dev_priv->drrs.refresh_rate =3D DRRS_REFRESH_RATE_HIGH;
>  	drm_dbg_kms(&dev_priv->drm,
>  		    "[CONNECTOR:%d:%s] seamless DRRS supported\n",
>  		    connector->base.base.id, connector->base.name);
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_=
drv.h
> index 0fc5d7e447b9..7d622d1afe93 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -196,15 +196,9 @@ struct drm_i915_display_funcs {
>=20=20
>  #define I915_COLOR_UNEVICTABLE (-1) /* a non-vma sharing the address spa=
ce */
>=20=20
> -/*
> - * HIGH_RR is the highest eDP panel refresh rate read from EDID
> - * LOW_RR is the lowest eDP panel refresh rate found from EDID
> - * parsing for same resolution.
> - */
> -enum drrs_refresh_rate_type {
> -	DRRS_HIGH_RR,
> -	DRRS_LOW_RR,
> -	DRRS_MAX_RR, /* RR count */
> +enum drrs_refresh_rate {
> +	DRRS_REFRESH_RATE_HIGH,
> +	DRRS_REFRESH_RATE_LOW,
>  };
>=20=20
>  enum drrs_type {
> @@ -218,7 +212,7 @@ struct i915_drrs {
>  	struct delayed_work work;
>  	struct intel_dp *dp;
>  	unsigned busy_frontbuffer_bits;
> -	enum drrs_refresh_rate_type refresh_rate_type;
> +	enum drrs_refresh_rate refresh_rate;
>  	enum drrs_type type;
>  };

--=20
Jani Nikula, Intel Open Source Graphics Center
