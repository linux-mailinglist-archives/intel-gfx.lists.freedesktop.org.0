Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C8B74148B03
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2020 16:13:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99EB76E3F2;
	Fri, 24 Jan 2020 15:13:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 969466E3DB
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jan 2020 15:13:21 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 07:09:07 -0800
X-IronPort-AV: E=Sophos;i="5.70,358,1574150400"; d="scan'208";a="221045029"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 07:09:05 -0800
Date: Fri, 24 Jan 2020 17:08:59 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20200124150859.GD32347@ideak-desk.fi.intel.com>
References: <20200120174728.21095-1-ville.syrjala@linux.intel.com>
 <20200120174728.21095-12-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200120174728.21095-12-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 11/17] drm/i915: s/init_cdclk/init_cdclk_hw/
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jan 20, 2020 at 07:47:21PM +0200, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Give the cdclk init/uninit functions a _hw suffix to make
> it clear they are about initializing the actual hardware.
> I'll be wanting to to add a intel_cdclk_init() which is
> purely initializing software structures.
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c    | 24 +++++++++----------
>  drivers/gpu/drm/i915/display/intel_cdclk.h    |  4 ++--
>  .../drm/i915/display/intel_display_power.c    | 16 ++++++-------
>  3 files changed, 22 insertions(+), 22 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm=
/i915/display/intel_cdclk.c
> index 002044e80868..701a63c3ca38 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -1122,7 +1122,7 @@ static void skl_sanitize_cdclk(struct drm_i915_priv=
ate *dev_priv)
>  	dev_priv->cdclk.hw.vco =3D -1;
>  }
>  =

> -static void skl_init_cdclk(struct drm_i915_private *dev_priv)
> +static void skl_cdclk_init_hw(struct drm_i915_private *dev_priv)
>  {
>  	struct intel_cdclk_config cdclk_config;
>  =

> @@ -1151,7 +1151,7 @@ static void skl_init_cdclk(struct drm_i915_private =
*dev_priv)
>  	skl_set_cdclk(dev_priv, &cdclk_config, INVALID_PIPE);
>  }
>  =

> -static void skl_uninit_cdclk(struct drm_i915_private *dev_priv)
> +static void skl_cdclk_uninit_hw(struct drm_i915_private *dev_priv)
>  {
>  	struct intel_cdclk_config cdclk_config =3D dev_priv->cdclk.hw;
>  =

> @@ -1681,7 +1681,7 @@ static void bxt_sanitize_cdclk(struct drm_i915_priv=
ate *dev_priv)
>  	dev_priv->cdclk.hw.vco =3D -1;
>  }
>  =

> -static void bxt_init_cdclk(struct drm_i915_private *dev_priv)
> +static void bxt_cdclk_init_hw(struct drm_i915_private *dev_priv)
>  {
>  	struct intel_cdclk_config cdclk_config;
>  =

> @@ -1706,7 +1706,7 @@ static void bxt_init_cdclk(struct drm_i915_private =
*dev_priv)
>  	bxt_set_cdclk(dev_priv, &cdclk_config, INVALID_PIPE);
>  }
>  =

> -static void bxt_uninit_cdclk(struct drm_i915_private *dev_priv)
> +static void bxt_cdclk_uninit_hw(struct drm_i915_private *dev_priv)
>  {
>  	struct intel_cdclk_config cdclk_config =3D dev_priv->cdclk.hw;
>  =

> @@ -1719,7 +1719,7 @@ static void bxt_uninit_cdclk(struct drm_i915_privat=
e *dev_priv)
>  }
>  =

>  /**
> - * intel_cdclk_init - Initialize CDCLK
> + * intel_cdclk_init_hw - Initialize CDCLK hardware
>   * @i915: i915 device
>   *
>   * Initialize CDCLK. This consists mainly of initializing dev_priv->cdcl=
k.hw and
> @@ -1727,27 +1727,27 @@ static void bxt_uninit_cdclk(struct drm_i915_priv=
ate *dev_priv)
>   * during the display core initialization sequence, after which the DMC =
will
>   * take care of turning CDCLK off/on as needed.
>   */
> -void intel_cdclk_init(struct drm_i915_private *i915)
> +void intel_cdclk_init_hw(struct drm_i915_private *i915)
>  {
>  	if (IS_GEN9_LP(i915) || INTEL_GEN(i915) >=3D 10)
> -		bxt_init_cdclk(i915);
> +		bxt_cdclk_init_hw(i915);
>  	else if (IS_GEN9_BC(i915))
> -		skl_init_cdclk(i915);
> +		skl_cdclk_init_hw(i915);
>  }
>  =

>  /**
> - * intel_cdclk_uninit - Uninitialize CDCLK
> + * intel_cdclk_uninit_hw - Uninitialize CDCLK hardware
>   * @i915: i915 device
>   *
>   * Uninitialize CDCLK. This is done only during the display core
>   * uninitialization sequence.
>   */
> -void intel_cdclk_uninit(struct drm_i915_private *i915)
> +void intel_cdclk_uninit_hw(struct drm_i915_private *i915)
>  {
>  	if (INTEL_GEN(i915) >=3D 10 || IS_GEN9_LP(i915))
> -		bxt_uninit_cdclk(i915);
> +		bxt_cdclk_uninit_hw(i915);
>  	else if (IS_GEN9_BC(i915))
> -		skl_uninit_cdclk(i915);
> +		skl_cdclk_uninit_hw(i915);
>  }
>  =

>  /**
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm=
/i915/display/intel_cdclk.h
> index a3fb7b8e8d31..4b965db07720 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.h
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
> @@ -23,8 +23,8 @@ struct intel_cdclk_vals {
>  };
>  =

>  int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_sta=
te);
> -void intel_cdclk_init(struct drm_i915_private *i915);
> -void intel_cdclk_uninit(struct drm_i915_private *i915);
> +void intel_cdclk_init_hw(struct drm_i915_private *i915);
> +void intel_cdclk_uninit_hw(struct drm_i915_private *i915);
>  void intel_init_cdclk_hooks(struct drm_i915_private *dev_priv);
>  void intel_update_max_cdclk(struct drm_i915_private *dev_priv);
>  void intel_update_cdclk(struct drm_i915_private *dev_priv);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers=
/gpu/drm/i915/display/intel_display_power.c
> index 2dc00d4b115b..3412c56bea6d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -4763,7 +4763,7 @@ static void skl_display_core_init(struct drm_i915_p=
rivate *dev_priv,
>  =

>  	mutex_unlock(&power_domains->lock);
>  =

> -	intel_cdclk_init(dev_priv);
> +	intel_cdclk_init_hw(dev_priv);
>  =

>  	gen9_dbuf_enable(dev_priv);
>  =

> @@ -4780,7 +4780,7 @@ static void skl_display_core_uninit(struct drm_i915=
_private *dev_priv)
>  =

>  	gen9_dbuf_disable(dev_priv);
>  =

> -	intel_cdclk_uninit(dev_priv);
> +	intel_cdclk_uninit_hw(dev_priv);
>  =

>  	/* The spec doesn't call for removing the reset handshake flag */
>  	/* disable PG1 and Misc I/O */
> @@ -4824,7 +4824,7 @@ static void bxt_display_core_init(struct drm_i915_p=
rivate *dev_priv, bool resume
>  =

>  	mutex_unlock(&power_domains->lock);
>  =

> -	intel_cdclk_init(dev_priv);
> +	intel_cdclk_init_hw(dev_priv);
>  =

>  	gen9_dbuf_enable(dev_priv);
>  =

> @@ -4841,7 +4841,7 @@ static void bxt_display_core_uninit(struct drm_i915=
_private *dev_priv)
>  =

>  	gen9_dbuf_disable(dev_priv);
>  =

> -	intel_cdclk_uninit(dev_priv);
> +	intel_cdclk_uninit_hw(dev_priv);
>  =

>  	/* The spec doesn't call for removing the reset handshake flag */
>  =

> @@ -4883,7 +4883,7 @@ static void cnl_display_core_init(struct drm_i915_p=
rivate *dev_priv, bool resume
>  	mutex_unlock(&power_domains->lock);
>  =

>  	/* 5. Enable CD clock */
> -	intel_cdclk_init(dev_priv);
> +	intel_cdclk_init_hw(dev_priv);
>  =

>  	/* 6. Enable DBUF */
>  	gen9_dbuf_enable(dev_priv);
> @@ -4905,7 +4905,7 @@ static void cnl_display_core_uninit(struct drm_i915=
_private *dev_priv)
>  	gen9_dbuf_disable(dev_priv);
>  =

>  	/* 3. Disable CD clock */
> -	intel_cdclk_uninit(dev_priv);
> +	intel_cdclk_uninit_hw(dev_priv);
>  =

>  	/*
>  	 * 4. Disable Power Well 1 (PG1).
> @@ -4997,7 +4997,7 @@ static void icl_display_core_init(struct drm_i915_p=
rivate *dev_priv,
>  	mutex_unlock(&power_domains->lock);
>  =

>  	/* 4. Enable CDCLK. */
> -	intel_cdclk_init(dev_priv);
> +	intel_cdclk_init_hw(dev_priv);
>  =

>  	/* 5. Enable DBUF. */
>  	icl_dbuf_enable(dev_priv);
> @@ -5026,7 +5026,7 @@ static void icl_display_core_uninit(struct drm_i915=
_private *dev_priv)
>  	icl_dbuf_disable(dev_priv);
>  =

>  	/* 3. Disable CD clock */
> -	intel_cdclk_uninit(dev_priv);
> +	intel_cdclk_uninit_hw(dev_priv);
>  =

>  	/*
>  	 * 4. Disable Power Well 1 (PG1).
> -- =

> 2.24.1
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
