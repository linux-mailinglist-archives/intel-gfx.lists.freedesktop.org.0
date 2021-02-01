Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE54930AFD4
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Feb 2021 19:55:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 007116E85F;
	Mon,  1 Feb 2021 18:55:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B2186E85F
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Feb 2021 18:55:41 +0000 (UTC)
IronPort-SDR: Q41EM5/LNEnKxlCPKqrJff7yXRno84nvq1tmtfaRfSvtYjbI0BopBg2XQE7gdb+k5y9+6Gsswv
 dSKSawRW1SbQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9882"; a="168415772"
X-IronPort-AV: E=Sophos;i="5.79,393,1602572400"; d="scan'208";a="168415772"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2021 10:55:41 -0800
IronPort-SDR: zI6egVN2WWCE3d9L6aTGzoyx9gP89BafCL7YAMYLwTtvrwjlaIMPOtwQLzE5ktnsJLZtceN75U
 3Dj+9h9VjAnw==
X-IronPort-AV: E=Sophos;i="5.79,393,1602572400"; d="scan'208";a="371656015"
Received: from scewbso01.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.209.142.9])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2021 10:55:39 -0800
Date: Mon, 1 Feb 2021 10:55:37 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20210201185537.lqaxxqlf3iimeuxh@ldmartin-desk1>
X-Patchwork-Hint: comment
References: <20210201183343.15292-1-ville.syrjala@linux.intel.com>
 <20210201183343.15292-2-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210201183343.15292-2-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 01/15] drm/i915: Extract
 icl_dpclka_cfgcr0_reg()
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
Cc: intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Feb 01, 2021 at 08:33:29PM +0200, Ville Syrj=E4l=E4 wrote:
>From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>
>Extract the code to determine the DPCLK_CFGCR register
>to use.
>
>Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi

>---
> drivers/gpu/drm/i915/display/intel_ddi.c | 28 ++++++++++--------------
> 1 file changed, 12 insertions(+), 16 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i9=
15/display/intel_ddi.c
>index 5bc5033a2dea..a3aeb1c2821c 100644
>--- a/drivers/gpu/drm/i915/display/intel_ddi.c
>+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
>@@ -3127,6 +3127,15 @@ static u32 icl_dpclka_cfgcr0_clk_off(struct drm_i91=
5_private *dev_priv,
> 	return 0;
> }
>
>+static i915_reg_t icl_dpclka_cfgcr0_reg(struct drm_i915_private *i915,
>+					enum phy phy)
>+{
>+	if (IS_ALDERLAKE_S(i915))
>+		return ADLS_DPCLKA_CFGCR(phy);
>+	else
>+		return ICL_DPCLKA_CFGCR0;
>+}
>+
> static void dg1_map_plls_to_ports(struct intel_encoder *encoder,
> 				  const struct intel_crtc_state *crtc_state)
> {
>@@ -3167,19 +3176,16 @@ static void icl_map_plls_to_ports(struct intel_enc=
oder *encoder,
> 	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> 	struct intel_shared_dpll *pll =3D crtc_state->shared_dpll;
> 	enum phy phy =3D intel_port_to_phy(dev_priv, encoder->port);
>+	i915_reg_t reg =3D icl_dpclka_cfgcr0_reg(dev_priv, phy);
> 	u32 val, mask, sel;
>-	i915_reg_t reg;
>
> 	if (IS_ALDERLAKE_S(dev_priv)) {
>-		reg =3D ADLS_DPCLKA_CFGCR(phy);
> 		mask =3D ADLS_DPCLKA_CFGCR_DDI_CLK_SEL_MASK(phy);
> 		sel =3D ((pll->info->id) << ADLS_DPCLKA_CFGCR_DDI_SHIFT(phy));
> 	} else if (IS_ROCKETLAKE(dev_priv)) {
>-		reg =3D ICL_DPCLKA_CFGCR0;
> 		mask =3D RKL_DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(phy);
> 		sel =3D RKL_DPCLKA_CFGCR0_DDI_CLK_SEL(pll->info->id, phy);
> 	} else {
>-		reg =3D ICL_DPCLKA_CFGCR0;
> 		mask =3D ICL_DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(phy);
> 		sel =3D ICL_DPCLKA_CFGCR0_DDI_CLK_SEL(pll->info->id, phy);
> 	}
>@@ -3230,16 +3236,11 @@ static void icl_unmap_plls_to_ports(struct intel_e=
ncoder *encoder)
> {
> 	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> 	enum phy phy =3D intel_port_to_phy(dev_priv, encoder->port);
>+	i915_reg_t reg =3D icl_dpclka_cfgcr0_reg(dev_priv, phy);
> 	u32 val;
>-	i915_reg_t reg;
>
> 	mutex_lock(&dev_priv->dpll.lock);
>
>-	if (IS_ALDERLAKE_S(dev_priv))
>-		reg =3D ADLS_DPCLKA_CFGCR(phy);
>-	else
>-		reg =3D ICL_DPCLKA_CFGCR0;
>-
> 	val =3D intel_de_read(dev_priv, reg);
> 	val |=3D icl_dpclka_cfgcr0_clk_off(dev_priv, phy);
>
>@@ -3285,15 +3286,10 @@ static void icl_sanitize_port_clk_off(struct drm_i=
915_private *dev_priv,
> 	enum port port;
> 	bool ddi_clk_off;
> 	u32 val;
>-	i915_reg_t reg;
>
> 	for_each_port_masked(port, port_mask) {
> 		enum phy phy =3D intel_port_to_phy(dev_priv, port);
>-
>-		if (IS_ALDERLAKE_S(dev_priv))
>-			reg =3D ADLS_DPCLKA_CFGCR(phy);
>-		else
>-			reg =3D ICL_DPCLKA_CFGCR0;
>+		i915_reg_t reg =3D icl_dpclka_cfgcr0_reg(dev_priv, phy);
>
> 		val =3D intel_de_read(dev_priv, reg);
> 		ddi_clk_off =3D val & icl_dpclka_cfgcr0_clk_off(dev_priv,
>-- =

>2.26.2
>
>_______________________________________________
>Intel-gfx mailing list
>Intel-gfx@lists.freedesktop.org
>https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
