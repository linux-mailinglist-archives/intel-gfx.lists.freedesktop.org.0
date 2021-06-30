Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E5FE3B8A9F
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Jul 2021 00:50:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98F1E6EA8F;
	Wed, 30 Jun 2021 22:50:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 722BE6EA8F
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Jun 2021 22:50:30 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10031"; a="206617606"
X-IronPort-AV: E=Sophos;i="5.83,312,1616482800"; d="scan'208";a="206617606"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2021 15:50:29 -0700
X-IronPort-AV: E=Sophos;i="5.83,312,1616482800"; d="scan'208";a="489738208"
Received: from mkkharas-mobl1.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.254.8.178])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2021 15:50:29 -0700
Date: Wed, 30 Jun 2021 15:50:28 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: =?utf-8?B?Sm9zw6k=?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20210630225028.puix645w3zrecdmj@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20210630210522.162674-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210630210522.162674-1-jose.souza@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display/dg1: Correctly map DPLLs
 during state readout
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

On Wed, Jun 30, 2021 at 02:05:22PM -0700, Jose Souza wrote:
>_DG1_DPCLKA0_CFGCR0 maps between DPLL 0 and 1 with one bit for phy A
>and B while _DG1_DPCLKA1_CFGCR0 maps between DPLL 2 and 3 with one
>bit for phy C and D.
>
>Reusing _cnl_ddi_get_pll() don't take that into cosideration returing
>DPLL 0 and 1 for phy C and D.
>
>That is a regression introduced in the refactor done in commit
>c9fdceaa64dc ("drm/i915: Move DDI clock readout to encoder->get_config()").
>While at it also dropping the macros previously used, not reusing it
>to improve readability.
>
>BSpec: 50286
>Fixes: c9fdceaa64dc ("drm/i915: Move DDI clock readout to encoder->get_con=
fig()")
>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

thanks
Lucas De Marchi

>---
> drivers/gpu/drm/i915/display/intel_ddi.c | 19 ++++++++++++++++---
> drivers/gpu/drm/i915/i915_reg.h          |  3 ---
> 2 files changed, 16 insertions(+), 6 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i9=
15/display/intel_ddi.c
>index 91fd85bee1d27..26a3aa73fcc43 100644
>--- a/drivers/gpu/drm/i915/display/intel_ddi.c
>+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
>@@ -1738,10 +1738,23 @@ static struct intel_shared_dpll *dg1_ddi_get_pll(s=
truct intel_encoder *encoder)
> {
> 	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> 	enum phy phy =3D intel_port_to_phy(i915, encoder->port);
>+	enum intel_dpll_id id;
>+	u32 val;
>
>-	return _cnl_ddi_get_pll(i915, DG1_DPCLKA_CFGCR0(phy),
>-				DG1_DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(phy),
>-				DG1_DPCLKA_CFGCR0_DDI_CLK_SEL_SHIFT(phy));
>+	val =3D intel_de_read(i915, DG1_DPCLKA_CFGCR0(phy));
>+	val &=3D DG1_DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(phy);
>+	val >>=3D DG1_DPCLKA_CFGCR0_DDI_CLK_SEL_SHIFT(phy);
>+	id =3D val;
>+
>+	/*
>+	 * _DG1_DPCLKA0_CFGCR0 maps between DPLL 0 and 1 with one bit for phy A
>+	 * and B while _DG1_DPCLKA1_CFGCR0 maps between DPLL 2 and 3 with one
>+	 * bit for phy C and D.
>+	 */
>+	if (phy >=3D PHY_C)
>+		id +=3D DPLL_ID_DG1_DPLL2;
>+
>+	return intel_get_shared_dpll_by_id(i915, id);
> }
>
> static void icl_ddi_combo_enable_clock(struct intel_encoder *encoder,
>diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_r=
eg.h
>index 65c155b141899..16a19239d86dd 100644
>--- a/drivers/gpu/drm/i915/i915_reg.h
>+++ b/drivers/gpu/drm/i915/i915_reg.h
>@@ -10525,7 +10525,6 @@ enum skl_power_gate {
> #define _DG1_DPCLKA1_CFGCR0				0x16C280
> #define _DG1_DPCLKA_PHY_IDX(phy)			((phy) % 2)
> #define _DG1_DPCLKA_PLL_IDX(pll)			((pll) % 2)
>-#define _DG1_PHY_DPLL_MAP(phy)				((phy) >=3D PHY_C ? DPLL_ID_DG1_DPLL2 :=
 DPLL_ID_DG1_DPLL0)
> #define DG1_DPCLKA_CFGCR0(phy)				_MMIO_PHY((phy) / 2, \
> 								  _DG1_DPCLKA_CFGCR0, \
> 								  _DG1_DPCLKA1_CFGCR0)
>@@ -10533,8 +10532,6 @@ enum skl_power_gate {
> #define   DG1_DPCLKA_CFGCR0_DDI_CLK_SEL_SHIFT(phy)	(_DG1_DPCLKA_PHY_IDX(p=
hy) * 2)
> #define   DG1_DPCLKA_CFGCR0_DDI_CLK_SEL(pll, phy)	(_DG1_DPCLKA_PLL_IDX(pl=
l) << DG1_DPCLKA_CFGCR0_DDI_CLK_SEL_SHIFT(phy))
> #define   DG1_DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(phy)	(0x3 << DG1_DPCLKA_CFGC=
R0_DDI_CLK_SEL_SHIFT(phy))
>-#define   DG1_DPCLKA_CFGCR0_DDI_CLK_SEL_DPLL_MAP(clk_sel, phy) \
>-	(((clk_sel) >> DG1_DPCLKA_CFGCR0_DDI_CLK_SEL_SHIFT(phy)) + _DG1_PHY_DPLL=
_MAP(phy))
>
> /* ADLS Clocks */
> #define _ADLS_DPCLKA_CFGCR0			0x164280
>-- =

>2.32.0
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
