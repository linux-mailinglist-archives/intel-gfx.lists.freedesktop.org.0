Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 529DC2AD739
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Nov 2020 14:13:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9D748958E;
	Tue, 10 Nov 2020 13:13:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2B2D89850
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Nov 2020 13:13:55 +0000 (UTC)
IronPort-SDR: TUk3l/8r1++1rchGhAG9jNvmfh2Y88IjpfmQTBupKX0GByuNas2DqIhIcfJya40VgPhuJN3+es
 6voS+bIwSBrQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9800"; a="149818172"
X-IronPort-AV: E=Sophos;i="5.77,466,1596524400"; d="scan'208";a="149818172"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2020 05:13:54 -0800
IronPort-SDR: EL5OROLARxpKpfzDK0ohFn+zPgo3LYI9hoQaV8Zq+HHUADP7hKu4utavCli/LDUbccNJiEae2C
 IKYDnf+4Vu/w==
X-IronPort-AV: E=Sophos;i="5.77,466,1596524400"; d="scan'208";a="541318614"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2020 05:13:52 -0800
Date: Tue, 10 Nov 2020 15:13:49 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20201110131349.GE425411@ideak-desk.fi.intel.com>
References: <20201109231239.17002-1-ville.syrjala@linux.intel.com>
 <20201109231239.17002-2-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201109231239.17002-2-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915: Move
 intel_dpll_get_hw_state() into the hsw+ platform specific functions
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

On Tue, Nov 10, 2020 at 01:12:37AM +0200, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> On icl+ we want to populate both crtc_state.{shared_dpll,dpll_hw_state}
> and crtc_state.port_dplls[] during readout, whereas on pre-icl we
> want to leave the latter stuff untouched. Rather than adding more ifs
> into hsw_get_ddi_port_state() to copy the DPLL hw state around let's
> just move the whole dpll readout into hsw_get_ddi_dpll() & co.

making the port_dpll->hw_state -> crtc_state->dpll_hw_state copy
in icl_set_active_port_dpll() having more sense.

> Slightly repetitive, but meh.
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 68 +++++++++++++++-----
>  1 file changed, 52 insertions(+), 16 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index a7c4cd7a8a31..8ab622c0186e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -11010,7 +11010,10 @@ static void dg1_get_ddi_pll(struct drm_i915_priv=
ate *dev_priv, enum port port,
>  {
>  	enum icl_port_dpll_id port_dpll_id =3D ICL_PORT_DPLL_DEFAULT;
>  	enum phy phy =3D intel_port_to_phy(dev_priv, port);
> +	struct icl_port_dpll *port_dpll;
> +	struct intel_shared_dpll *pll;
>  	enum intel_dpll_id id;
> +	bool pll_active;
>  	u32 clk_sel;
>  =

>  	clk_sel =3D intel_de_read(dev_priv, DG1_DPCLKA_CFGCR0(phy)) & DG1_DPCLK=
A_CFGCR0_DDI_CLK_SEL_MASK(phy);
> @@ -11019,8 +11022,13 @@ static void dg1_get_ddi_pll(struct drm_i915_priv=
ate *dev_priv, enum port port,
>  	if (WARN_ON(id > DPLL_ID_DG1_DPLL3))
>  		return;
>  =

> -	pipe_config->icl_port_dplls[port_dpll_id].pll =3D
> -		intel_get_shared_dpll_by_id(dev_priv, id);
> +	pll =3D intel_get_shared_dpll_by_id(dev_priv, id);
> +	port_dpll =3D &pipe_config->icl_port_dplls[port_dpll_id];
> +
> +	port_dpll->pll =3D pll;
> +	pll_active =3D intel_dpll_get_hw_state(dev_priv, pll,
> +					     &port_dpll->hw_state);
> +	drm_WARN_ON(&dev_priv->drm, !pll_active);
>  =

>  	icl_set_active_port_dpll(pipe_config, port_dpll_id);
>  }
> @@ -11028,7 +11036,9 @@ static void dg1_get_ddi_pll(struct drm_i915_priva=
te *dev_priv, enum port port,
>  static void cnl_get_ddi_pll(struct drm_i915_private *dev_priv, enum port=
 port,
>  			    struct intel_crtc_state *pipe_config)
>  {
> +	struct intel_shared_dpll *pll;
>  	enum intel_dpll_id id;
> +	bool pll_active;
>  	u32 temp;
>  =

>  	temp =3D intel_de_read(dev_priv, DPCLKA_CFGCR0) & DPCLKA_CFGCR0_DDI_CLK=
_SEL_MASK(port);
> @@ -11037,7 +11047,12 @@ static void cnl_get_ddi_pll(struct drm_i915_priv=
ate *dev_priv, enum port port,
>  	if (drm_WARN_ON(&dev_priv->drm, id < SKL_DPLL0 || id > SKL_DPLL2))
>  		return;
>  =

> -	pipe_config->shared_dpll =3D intel_get_shared_dpll_by_id(dev_priv, id);
> +	pll =3D intel_get_shared_dpll_by_id(dev_priv, id);
> +
> +	pipe_config->shared_dpll =3D pll;
> +	pll_active =3D intel_dpll_get_hw_state(dev_priv, pll,
> +					     &pipe_config->dpll_hw_state);
> +	drm_WARN_ON(&dev_priv->drm, !pll_active);
>  }
>  =

>  static void icl_get_ddi_pll(struct drm_i915_private *dev_priv, enum port=
 port,
> @@ -11045,7 +11060,10 @@ static void icl_get_ddi_pll(struct drm_i915_priv=
ate *dev_priv, enum port port,
>  {
>  	enum phy phy =3D intel_port_to_phy(dev_priv, port);
>  	enum icl_port_dpll_id port_dpll_id;
> +	struct icl_port_dpll *port_dpll;
> +	struct intel_shared_dpll *pll;
>  	enum intel_dpll_id id;
> +	bool pll_active;
>  	u32 temp;
>  =

>  	if (intel_phy_is_combo(dev_priv, phy)) {
> @@ -11080,8 +11098,13 @@ static void icl_get_ddi_pll(struct drm_i915_priv=
ate *dev_priv, enum port port,
>  		return;
>  	}
>  =

> -	pipe_config->icl_port_dplls[port_dpll_id].pll =3D
> -		intel_get_shared_dpll_by_id(dev_priv, id);
> +	pll =3D intel_get_shared_dpll_by_id(dev_priv, id);
> +	port_dpll =3D &pipe_config->icl_port_dplls[port_dpll_id];
> +
> +	port_dpll->pll =3D pll;
> +	pll_active =3D intel_dpll_get_hw_state(dev_priv, pll,
> +					     &port_dpll->hw_state);
> +	drm_WARN_ON(&dev_priv->drm, !pll_active);
>  =

>  	icl_set_active_port_dpll(pipe_config, port_dpll_id);
>  }
> @@ -11090,7 +11113,9 @@ static void bxt_get_ddi_pll(struct drm_i915_priva=
te *dev_priv,
>  				enum port port,
>  				struct intel_crtc_state *pipe_config)
>  {
> +	struct intel_shared_dpll *pll;
>  	enum intel_dpll_id id;
> +	bool pll_active;
>  =

>  	switch (port) {
>  	case PORT_A:
> @@ -11107,13 +11132,20 @@ static void bxt_get_ddi_pll(struct drm_i915_pri=
vate *dev_priv,
>  		return;
>  	}
>  =

> -	pipe_config->shared_dpll =3D intel_get_shared_dpll_by_id(dev_priv, id);
> +	pll =3D intel_get_shared_dpll_by_id(dev_priv, id);
> +
> +	pipe_config->shared_dpll =3D pll;
> +	pll_active =3D intel_dpll_get_hw_state(dev_priv, pll,
> +					     &pipe_config->dpll_hw_state);
> +	drm_WARN_ON(&dev_priv->drm, !pll_active);
>  }
>  =

>  static void skl_get_ddi_pll(struct drm_i915_private *dev_priv, enum port=
 port,
>  			    struct intel_crtc_state *pipe_config)
>  {
> +	struct intel_shared_dpll *pll;
>  	enum intel_dpll_id id;
> +	bool pll_active;
>  	u32 temp;
>  =

>  	temp =3D intel_de_read(dev_priv, DPLL_CTRL2) & DPLL_CTRL2_DDI_CLK_SEL_M=
ASK(port);
> @@ -11122,14 +11154,21 @@ static void skl_get_ddi_pll(struct drm_i915_pri=
vate *dev_priv, enum port port,
>  	if (drm_WARN_ON(&dev_priv->drm, id < SKL_DPLL0 || id > SKL_DPLL3))
>  		return;
>  =

> -	pipe_config->shared_dpll =3D intel_get_shared_dpll_by_id(dev_priv, id);
> +	pll =3D intel_get_shared_dpll_by_id(dev_priv, id);
> +
> +	pipe_config->shared_dpll =3D pll;
> +	pll_active =3D intel_dpll_get_hw_state(dev_priv, pll,
> +					     &pipe_config->dpll_hw_state);
> +	drm_WARN_ON(&dev_priv->drm, !pll_active);
>  }
>  =

>  static void hsw_get_ddi_pll(struct drm_i915_private *dev_priv, enum port=
 port,
>  			    struct intel_crtc_state *pipe_config)
>  {
> +	struct intel_shared_dpll *pll;
>  	enum intel_dpll_id id;
>  	u32 ddi_pll_sel =3D intel_de_read(dev_priv, PORT_CLK_SEL(port));
> +	bool pll_active;
>  =

>  	switch (ddi_pll_sel) {
>  	case PORT_CLK_SEL_WRPLL1:
> @@ -11157,7 +11196,12 @@ static void hsw_get_ddi_pll(struct drm_i915_priv=
ate *dev_priv, enum port port,
>  		return;
>  	}
>  =

> -	pipe_config->shared_dpll =3D intel_get_shared_dpll_by_id(dev_priv, id);
> +	pll =3D intel_get_shared_dpll_by_id(dev_priv, id);
> +
> +	pipe_config->shared_dpll =3D pll;
> +	pll_active =3D intel_dpll_get_hw_state(dev_priv, pll,
> +					     &pipe_config->dpll_hw_state);
> +	drm_WARN_ON(&dev_priv->drm, !pll_active);
>  }
>  =

>  static bool hsw_get_transcoder_state(struct intel_crtc *crtc,
> @@ -11317,7 +11361,6 @@ static void hsw_get_ddi_port_state(struct intel_c=
rtc *crtc,
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>  	enum transcoder cpu_transcoder =3D pipe_config->cpu_transcoder;
> -	struct intel_shared_dpll *pll;
>  	enum port port;
>  	u32 tmp;
>  =

> @@ -11346,13 +11389,6 @@ static void hsw_get_ddi_port_state(struct intel_=
crtc *crtc,
>  	else
>  		hsw_get_ddi_pll(dev_priv, port, pipe_config);
>  =

> -	pll =3D pipe_config->shared_dpll;
> -	if (pll) {
> -		bool pll_active =3D intel_dpll_get_hw_state(dev_priv, pll,
> -							  &pipe_config->dpll_hw_state);
> -		drm_WARN_ON(&dev_priv->drm, !pll_active);
> -	}
> -
>  	/*
>  	 * Haswell has only FDI/PCH transcoder A. It is which is connected to
>  	 * DDI E. So just check whether this pipe is wired to DDI E and whether
> -- =

> 2.26.2
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
