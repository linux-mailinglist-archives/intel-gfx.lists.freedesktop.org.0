Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 30C1930B049
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Feb 2021 20:22:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94EA86E0BF;
	Mon,  1 Feb 2021 19:22:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 118966E209
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Feb 2021 19:22:51 +0000 (UTC)
IronPort-SDR: H00X0F94UeRZ79xMjoF3EQIOBooCni7vPvq1ndzXY/I0gFPSGgiW30c+5Xcyky1WtYupEEj3Mh
 63S/MJxS76zQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9882"; a="180883052"
X-IronPort-AV: E=Sophos;i="5.79,393,1602572400"; d="scan'208";a="180883052"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2021 11:22:43 -0800
IronPort-SDR: gNn58DAtUk7rVHsHS7Z8oqSjZinyR0lBwaxYLonRPG1GsDrmi61Sjtg7QKkhbLGHXlChU/oQ0H
 LR7HIewyJwcg==
X-IronPort-AV: E=Sophos;i="5.79,393,1602572400"; d="scan'208";a="575223681"
Received: from scewbso01.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.209.142.9])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2021 11:22:42 -0800
Date: Mon, 1 Feb 2021 11:22:39 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20210201192239.aqdln6mbjveaqkub@ldmartin-desk1>
X-Patchwork-Hint: comment
References: <20210201183343.15292-1-ville.syrjala@linux.intel.com>
 <20210201183343.15292-14-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210201183343.15292-14-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 13/15] drm/i915: Split alds/rkl from
 icl_ddi_combo_{enable, disable}_clock()
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

On Mon, Feb 01, 2021 at 08:33:41PM +0200, Ville Syrj=E4l=E4 wrote:
>From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>
>Since .{enable,disable}_clock() are already vfuncs it's a bit silly to
>have if-ladders inside them. Just provide specialized version for adlp
>and rkl so we don't need any of that.

s/alds/adl-s/

s/adlp/adl-s/


>
>Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>---
> drivers/gpu/drm/i915/display/intel_ddi.c | 93 ++++++++++++++++--------
> 1 file changed, 62 insertions(+), 31 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i9=
15/display/intel_ddi.c
>index 1bd2aa86183d..bafb754d1b66 100644
>--- a/drivers/gpu/drm/i915/display/intel_ddi.c
>+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
>@@ -3127,28 +3127,6 @@ static u32 icl_dpclka_cfgcr0_clk_off(struct drm_i91=
5_private *dev_priv,
> 	return 0;
> }
>
>-static u32 icl_dpclka_cfgcr0_clk_sel(struct drm_i915_private *dev_priv,
>-				     enum intel_dpll_id id, enum phy phy)

ok, but why do we even add them in this series if we are going to
remove. Just makes it harder to review.

For this end state:


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi

>-{
>-	if (IS_ALDERLAKE_S(dev_priv))
>-		return id << ADLS_DPCLKA_CFGCR_DDI_SHIFT(phy);
>-	else if (IS_ROCKETLAKE(dev_priv))
>-		return RKL_DPCLKA_CFGCR0_DDI_CLK_SEL(id, phy);
>-	else
>-		return ICL_DPCLKA_CFGCR0_DDI_CLK_SEL(id, phy);
>-}
>-
>-static u32 icl_dpclka_cfgcr0_clk_sel_mask(struct drm_i915_private *dev_pr=
iv,
>-					  enum phy phy)
>-{
>-	if (IS_ALDERLAKE_S(dev_priv))
>-		return ADLS_DPCLKA_CFGCR_DDI_CLK_SEL_MASK(phy);
>-	else if (IS_ROCKETLAKE(dev_priv))
>-		return RKL_DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(phy);
>-	else
>-		return ICL_DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(phy);
>-}
>-
> static i915_reg_t icl_dpclka_cfgcr0_reg(struct drm_i915_private *i915,
> 					enum phy phy)
> {
>@@ -3184,6 +3162,56 @@ static void _cnl_ddi_disable_clock(struct drm_i915_=
private *i915, i915_reg_t reg
> 	mutex_unlock(&i915->dpll.lock);
> }
>
>+static void adls_ddi_enable_clock(struct intel_encoder *encoder,
>+				  const struct intel_crtc_state *crtc_state)
>+{
>+	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>+	const struct intel_shared_dpll *pll =3D crtc_state->shared_dpll;
>+	enum phy phy =3D intel_port_to_phy(dev_priv, encoder->port);
>+
>+	if (drm_WARN_ON(&dev_priv->drm, !pll))
>+		return;
>+
>+	_cnl_ddi_enable_clock(dev_priv, ADLS_DPCLKA_CFGCR(phy),
>+			      ADLS_DPCLKA_CFGCR_DDI_CLK_SEL_MASK(phy),
>+			      pll->info->id << ADLS_DPCLKA_CFGCR_DDI_SHIFT(phy),
>+			      ICL_DPCLKA_CFGCR0_DDI_CLK_OFF(phy));
>+}
>+
>+static void adls_ddi_disable_clock(struct intel_encoder *encoder)
>+{
>+	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>+	enum phy phy =3D intel_port_to_phy(dev_priv, encoder->port);
>+
>+	_cnl_ddi_disable_clock(dev_priv, ADLS_DPCLKA_CFGCR(phy),
>+			       ICL_DPCLKA_CFGCR0_DDI_CLK_OFF(phy));
>+}
>+
>+static void rkl_ddi_enable_clock(struct intel_encoder *encoder,
>+				 const struct intel_crtc_state *crtc_state)
>+{
>+	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>+	const struct intel_shared_dpll *pll =3D crtc_state->shared_dpll;
>+	enum phy phy =3D intel_port_to_phy(dev_priv, encoder->port);
>+
>+	if (drm_WARN_ON(&dev_priv->drm, !pll))
>+		return;
>+
>+	_cnl_ddi_enable_clock(dev_priv, ICL_DPCLKA_CFGCR0,
>+			      RKL_DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(phy),
>+			      RKL_DPCLKA_CFGCR0_DDI_CLK_SEL(pll->info->id, phy),
>+			      RKL_DPCLKA_CFGCR0_DDI_CLK_OFF(phy));
>+}
>+
>+static void rkl_ddi_disable_clock(struct intel_encoder *encoder)
>+{
>+	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>+	enum phy phy =3D intel_port_to_phy(dev_priv, encoder->port);
>+
>+	_cnl_ddi_disable_clock(dev_priv, ICL_DPCLKA_CFGCR0,
>+			       RKL_DPCLKA_CFGCR0_DDI_CLK_OFF(phy));
>+}
>+
> static void dg1_ddi_enable_clock(struct intel_encoder *encoder,
> 				 const struct intel_crtc_state *crtc_state)
> {
>@@ -3228,10 +3256,10 @@ static void icl_ddi_combo_enable_clock(struct inte=
l_encoder *encoder,
> 	if (drm_WARN_ON(&dev_priv->drm, !pll))
> 		return;
>
>-	_cnl_ddi_enable_clock(dev_priv, icl_dpclka_cfgcr0_reg(dev_priv, phy),
>-			      icl_dpclka_cfgcr0_clk_sel_mask(dev_priv, phy),
>-			      icl_dpclka_cfgcr0_clk_sel(dev_priv, pll->info->id, phy),
>-			      icl_dpclka_cfgcr0_clk_off(dev_priv, phy));
>+	_cnl_ddi_enable_clock(dev_priv, ICL_DPCLKA_CFGCR0,
>+			      ICL_DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(phy),
>+			      ICL_DPCLKA_CFGCR0_DDI_CLK_SEL(pll->info->id, phy),
>+			      ICL_DPCLKA_CFGCR0_DDI_CLK_OFF(phy));
> }
>
> static void icl_ddi_combo_disable_clock(struct intel_encoder *encoder)
>@@ -3239,8 +3267,8 @@ static void icl_ddi_combo_disable_clock(struct intel=
_encoder *encoder)
> 	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> 	enum phy phy =3D intel_port_to_phy(dev_priv, encoder->port);
>
>-	_cnl_ddi_disable_clock(dev_priv, icl_dpclka_cfgcr0_reg(dev_priv, phy),
>-			       icl_dpclka_cfgcr0_clk_off(dev_priv, phy));
>+	_cnl_ddi_disable_clock(dev_priv, ICL_DPCLKA_CFGCR0,
>+			       ICL_DPCLKA_CFGCR0_DDI_CLK_OFF(phy));
> }
>
> static void dg1_sanitize_port_clk_off(struct drm_i915_private *dev_priv,
>@@ -5654,9 +5682,12 @@ void intel_ddi_init(struct drm_i915_private *dev_pr=
iv, enum port port)
> 	encoder->cloneable =3D 0;
> 	encoder->pipe_mask =3D ~0;
>
>-	if (IS_ALDERLAKE_S(dev_priv) || IS_ROCKETLAKE(dev_priv)) {
>-		encoder->enable_clock =3D icl_ddi_combo_enable_clock;
>-		encoder->disable_clock =3D icl_ddi_combo_disable_clock;
>+	if (IS_ALDERLAKE_S(dev_priv)) {
>+		encoder->enable_clock =3D adls_ddi_enable_clock;
>+		encoder->disable_clock =3D adls_ddi_disable_clock;
>+	} else if (IS_ROCKETLAKE(dev_priv)) {
>+		encoder->enable_clock =3D rkl_ddi_enable_clock;
>+		encoder->disable_clock =3D rkl_ddi_disable_clock;
> 	} else if (IS_DG1(dev_priv)) {
> 		encoder->enable_clock =3D dg1_ddi_enable_clock;
> 		encoder->disable_clock =3D dg1_ddi_disable_clock;
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
