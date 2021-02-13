Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F90431AD65
	for <lists+intel-gfx@lfdr.de>; Sat, 13 Feb 2021 18:34:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2BD16E85A;
	Sat, 13 Feb 2021 17:34:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6631D6E85A
 for <intel-gfx@lists.freedesktop.org>; Sat, 13 Feb 2021 17:34:30 +0000 (UTC)
IronPort-SDR: kTOWJh3vdkGJ1WeFMeF2fs74FUZCfYvnLhzUqP/NJVqym9cfgNZa/kQOy/MJGQeO+Y7IfKClQm
 uyW6WqY1cIxQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9894"; a="179980263"
X-IronPort-AV: E=Sophos;i="5.81,176,1610438400"; d="scan'208";a="179980263"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2021 09:34:30 -0800
IronPort-SDR: 0AO5ZegO1lw4ewkn4IrkLh+DhhrCz3rvyF5+y/6V1b13BCKPLtFdhyDmyIG0wZfE26PJvo8SZ7
 gUGXPs7FMGGw==
X-IronPort-AV: E=Sophos;i="5.81,176,1610438400"; d="scan'208";a="588361416"
Received: from aureliaw-mobl.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.212.211.220])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2021 09:34:29 -0800
Date: Sat, 13 Feb 2021 09:34:29 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20210213173429.mkcxbdyioyzk4qx4@ldmartin-desk1>
X-Patchwork-Hint: comment
References: <20210205214634.19341-1-ville.syrjala@linux.intel.com>
 <20210205214634.19341-16-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210205214634.19341-16-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH v3 15/15] drm/i915: s/dev_priv/i915/ for the
 remainder of DDI clock routing
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

On Fri, Feb 05, 2021 at 11:46:34PM +0200, Ville Syrj=E4l=E4 wrote:
>From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>
>Convert the remaining 'dev_priv's to 'i915's in the DDI
>clock routing functions.
>
>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

when merging you may probably need to update this due to conflicts,
though.


Lucas De Marchi

>---
> drivers/gpu/drm/i915/display/intel_ddi.c | 38 ++++++++++++------------
> 1 file changed, 19 insertions(+), 19 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i9=
15/display/intel_ddi.c
>index d4b9410110fd..0f0e68c99589 100644
>--- a/drivers/gpu/drm/i915/display/intel_ddi.c
>+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
>@@ -1659,23 +1659,23 @@ static void rkl_ddi_disable_clock(struct intel_enc=
oder *encoder)
> static void dg1_ddi_enable_clock(struct intel_encoder *encoder,
> 				 const struct intel_crtc_state *crtc_state)
> {
>-	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>+	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> 	const struct intel_shared_dpll *pll =3D crtc_state->shared_dpll;
>-	enum phy phy =3D intel_port_to_phy(dev_priv, encoder->port);
>+	enum phy phy =3D intel_port_to_phy(i915, encoder->port);
>
>-	if (drm_WARN_ON(&dev_priv->drm, !pll))
>+	if (drm_WARN_ON(&i915->drm, !pll))
> 		return;
>
> 	/*
> 	 * If we fail this, something went very wrong: first 2 PLLs should be
> 	 * used by first 2 phys and last 2 PLLs by last phys
> 	 */
>-	if (drm_WARN_ON(&dev_priv->drm,
>+	if (drm_WARN_ON(&i915->drm,
> 			(pll->info->id < DPLL_ID_DG1_DPLL2 && phy >=3D PHY_C) ||
> 			(pll->info->id >=3D DPLL_ID_DG1_DPLL2 && phy < PHY_C)))
> 		return;
>
>-	_cnl_ddi_enable_clock(dev_priv, DG1_DPCLKA_CFGCR0(phy),
>+	_cnl_ddi_enable_clock(i915, DG1_DPCLKA_CFGCR0(phy),
> 			      DG1_DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(phy),
> 			      DG1_DPCLKA_CFGCR0_DDI_CLK_SEL(pll->info->id, phy),
> 			      DG1_DPCLKA_CFGCR0_DDI_CLK_OFF(phy));
>@@ -1683,24 +1683,24 @@ static void dg1_ddi_enable_clock(struct intel_enco=
der *encoder,
>
> static void dg1_ddi_disable_clock(struct intel_encoder *encoder)
> {
>-	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>-	enum phy phy =3D intel_port_to_phy(dev_priv, encoder->port);
>+	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
>+	enum phy phy =3D intel_port_to_phy(i915, encoder->port);
>
>-	_cnl_ddi_disable_clock(dev_priv, DG1_DPCLKA_CFGCR0(phy),
>+	_cnl_ddi_disable_clock(i915, DG1_DPCLKA_CFGCR0(phy),
> 			       DG1_DPCLKA_CFGCR0_DDI_CLK_OFF(phy));
> }
>
> static void icl_ddi_combo_enable_clock(struct intel_encoder *encoder,
> 				       const struct intel_crtc_state *crtc_state)
> {
>-	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>+	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> 	const struct intel_shared_dpll *pll =3D crtc_state->shared_dpll;
>-	enum phy phy =3D intel_port_to_phy(dev_priv, encoder->port);
>+	enum phy phy =3D intel_port_to_phy(i915, encoder->port);
>
>-	if (drm_WARN_ON(&dev_priv->drm, !pll))
>+	if (drm_WARN_ON(&i915->drm, !pll))
> 		return;
>
>-	_cnl_ddi_enable_clock(dev_priv, ICL_DPCLKA_CFGCR0,
>+	_cnl_ddi_enable_clock(i915, ICL_DPCLKA_CFGCR0,
> 			      ICL_DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(phy),
> 			      ICL_DPCLKA_CFGCR0_DDI_CLK_SEL(pll->info->id, phy),
> 			      ICL_DPCLKA_CFGCR0_DDI_CLK_OFF(phy));
>@@ -1708,10 +1708,10 @@ static void icl_ddi_combo_enable_clock(struct inte=
l_encoder *encoder,
>
> static void icl_ddi_combo_disable_clock(struct intel_encoder *encoder)
> {
>-	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>-	enum phy phy =3D intel_port_to_phy(dev_priv, encoder->port);
>+	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
>+	enum phy phy =3D intel_port_to_phy(i915, encoder->port);
>
>-	_cnl_ddi_disable_clock(dev_priv, ICL_DPCLKA_CFGCR0,
>+	_cnl_ddi_disable_clock(i915, ICL_DPCLKA_CFGCR0,
> 			       ICL_DPCLKA_CFGCR0_DDI_CLK_OFF(phy));
> }
>
>@@ -1877,7 +1877,7 @@ static void intel_ddi_disable_clock(struct intel_enc=
oder *encoder)
>
> void icl_sanitize_encoder_pll_mapping(struct intel_encoder *encoder)
> {
>-	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>+	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> 	u32 port_mask;
> 	bool ddi_clk_needed;
>
>@@ -1897,7 +1897,7 @@ void icl_sanitize_encoder_pll_mapping(struct intel_e=
ncoder *encoder)
> 		 * In the unlikely case that BIOS enables DP in MST mode, just
> 		 * warn since our MST HW readout is incomplete.
> 		 */
>-		if (drm_WARN_ON(&dev_priv->drm, is_mst))
>+		if (drm_WARN_ON(&i915->drm, is_mst))
> 			return;
> 	}
>
>@@ -1912,11 +1912,11 @@ void icl_sanitize_encoder_pll_mapping(struct intel=
_encoder *encoder)
> 		 * Sanity check that we haven't incorrectly registered another
> 		 * encoder using any of the ports of this DSI encoder.
> 		 */
>-		for_each_intel_encoder(&dev_priv->drm, other_encoder) {
>+		for_each_intel_encoder(&i915->drm, other_encoder) {
> 			if (other_encoder =3D=3D encoder)
> 				continue;
>
>-			if (drm_WARN_ON(&dev_priv->drm,
>+			if (drm_WARN_ON(&i915->drm,
> 					port_mask & BIT(other_encoder->port)))
> 				return;
> 		}
>-- =

>2.26.2
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
