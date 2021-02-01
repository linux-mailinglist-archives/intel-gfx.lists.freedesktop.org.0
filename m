Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CC2FA30AFE4
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Feb 2021 19:59:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3AD06E871;
	Mon,  1 Feb 2021 18:59:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDF736EA48
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Feb 2021 18:59:06 +0000 (UTC)
IronPort-SDR: 6Hvu8B3EXvpTsDxq2F409kxOTITsXzHB7qBJDOrPe6p9cB4Z2l3LqjLZrSVU9JfLUhuUD7MMe6
 v7QhFoipZtww==
X-IronPort-AV: E=McAfee;i="6000,8403,9882"; a="160501858"
X-IronPort-AV: E=Sophos;i="5.79,393,1602572400"; d="scan'208";a="160501858"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2021 10:59:06 -0800
IronPort-SDR: 0JNug/ZINKrSUEp/Rd9bLDs3FYsggsMWryXPyHaOjRpTGng/OTuqlg7Wi1jqSuGsUPH0ERDlE1
 nG4WxJM0w+gQ==
X-IronPort-AV: E=Sophos;i="5.79,393,1602572400"; d="scan'208";a="479200283"
Received: from scewbso01.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.209.142.9])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2021 10:59:05 -0800
Date: Mon, 1 Feb 2021 10:59:03 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20210201185903.si26zwk3yu67lmiz@ldmartin-desk1>
X-Patchwork-Hint: comment
References: <20210201183343.15292-1-ville.syrjala@linux.intel.com>
 <20210201183343.15292-3-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210201183343.15292-3-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 02/15] drm/i915: Extract
 icl_dpclka_cfgcr0_clk_sel*()
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

On Mon, Feb 01, 2021 at 08:33:30PM +0200, Ville Syrj=E4l=E4 wrote:
>From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>
>Extract some helpers to calculate the correct CLK_SEL values
>for DPCLKA_CFGCR.
>
>Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>---
> drivers/gpu/drm/i915/display/intel_ddi.c | 39 +++++++++++++++---------
> 1 file changed, 25 insertions(+), 14 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i9=
15/display/intel_ddi.c
>index a3aeb1c2821c..23fbb9013e09 100644
>--- a/drivers/gpu/drm/i915/display/intel_ddi.c
>+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
>@@ -3127,6 +3127,28 @@ static u32 icl_dpclka_cfgcr0_clk_off(struct drm_i91=
5_private *dev_priv,
> 	return 0;
> }
>
>+static u32 icl_dpclka_cfgcr0_clk_sel(struct drm_i915_private *dev_priv,
>+				     enum intel_dpll_id id, enum phy phy)
>+{
>+	if (IS_ALDERLAKE_S(dev_priv))
>+		return id << ADLS_DPCLKA_CFGCR_DDI_SHIFT(phy);

for consistency we should actually have a _SEL macro like below, or....

>+	else if (IS_ROCKETLAKE(dev_priv))
>+		return RKL_DPCLKA_CFGCR0_DDI_CLK_SEL(id, phy);
>+	else
>+		return ICL_DPCLKA_CFGCR0_DDI_CLK_SEL(id, phy);
>+}
>+
>+static u32 icl_dpclka_cfgcr0_clk_sel_mask(struct drm_i915_private *dev_pr=
iv,
>+					  enum phy phy)
>+{
>+	if (IS_ALDERLAKE_S(dev_priv))
>+		return ADLS_DPCLKA_CFGCR_DDI_CLK_SEL_MASK(phy);
>+	else if (IS_ROCKETLAKE(dev_priv))
>+		return RKL_DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(phy);
>+	else
>+		return ICL_DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(phy);
>+}

since now we have a separate function for that, do we even need the
macro definitions? We could very well just nuke them.

anyway, for this mechanical move


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi

>+
> static i915_reg_t icl_dpclka_cfgcr0_reg(struct drm_i915_private *i915,
> 					enum phy phy)
> {
>@@ -3177,18 +3199,7 @@ static void icl_map_plls_to_ports(struct intel_enco=
der *encoder,
> 	struct intel_shared_dpll *pll =3D crtc_state->shared_dpll;
> 	enum phy phy =3D intel_port_to_phy(dev_priv, encoder->port);
> 	i915_reg_t reg =3D icl_dpclka_cfgcr0_reg(dev_priv, phy);
>-	u32 val, mask, sel;
>-
>-	if (IS_ALDERLAKE_S(dev_priv)) {
>-		mask =3D ADLS_DPCLKA_CFGCR_DDI_CLK_SEL_MASK(phy);
>-		sel =3D ((pll->info->id) << ADLS_DPCLKA_CFGCR_DDI_SHIFT(phy));
>-	} else if (IS_ROCKETLAKE(dev_priv)) {
>-		mask =3D RKL_DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(phy);
>-		sel =3D RKL_DPCLKA_CFGCR0_DDI_CLK_SEL(pll->info->id, phy);
>-	} else {
>-		mask =3D ICL_DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(phy);
>-		sel =3D ICL_DPCLKA_CFGCR0_DDI_CLK_SEL(pll->info->id, phy);
>-	}
>+	u32 val;
>
> 	mutex_lock(&dev_priv->dpll.lock);
>
>@@ -3207,8 +3218,8 @@ static void icl_map_plls_to_ports(struct intel_encod=
er *encoder,
> 		 *   Clock Select chooses the PLL for both DDIA and DDID and
> 		 *   drives port A in all cases."
> 		 */
>-		val &=3D ~mask;
>-		val |=3D sel;
>+		val &=3D ~icl_dpclka_cfgcr0_clk_sel_mask(dev_priv, phy);
>+		val |=3D icl_dpclka_cfgcr0_clk_sel(dev_priv, pll->info->id, phy);
> 		intel_de_write(dev_priv, reg, val);
> 		intel_de_posting_read(dev_priv, reg);
> 	}
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
