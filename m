Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 85F0029A3A6
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Oct 2020 05:35:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6FA46E185;
	Tue, 27 Oct 2020 04:35:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F28B26E185
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Oct 2020 04:35:10 +0000 (UTC)
IronPort-SDR: oqFxTJGE2jJrHHZ6dVUfUd/J9fCnz2mwCMnGN4KL3o090KDM/Lp9nEHxFjiuG1J+pE9zDEQCW9
 mAbvp1XybQBA==
X-IronPort-AV: E=McAfee;i="6000,8403,9786"; a="165435191"
X-IronPort-AV: E=Sophos;i="5.77,422,1596524400"; d="scan'208";a="165435191"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2020 21:35:10 -0700
IronPort-SDR: Qmk9knG7/upSJ/4R5NsQTBwJntxQTNyk6+REziw6htJ6+0jsnQSJ/RTOSJyt8ilIiC9OQ8VdOy
 TF4wCicsxxTQ==
X-IronPort-AV: E=Sophos;i="5.77,422,1596524400"; d="scan'208";a="334260739"
Received: from rle-mobl1.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.212.245.84])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2020 21:35:10 -0700
Date: Mon, 26 Oct 2020 21:35:09 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20201027043509.xd54q2tkldc4ybyo@ldmartin-desk1>
X-Patchwork-Hint: comment
References: <20201027043228.696518-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201027043228.696518-1-lucas.demarchi@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/dg1: map/unmap pll clocks
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
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Oct 26, 2020 at 09:32:26PM -0700, Lucas De Marchi wrote:
>DG1 uses 2 registers for the ddi clock mapping, with PHY A and B using
>DPCLKA_CFGCR0 and PHY C and D using DPCLKA1_CFGCR0. Hide this behind a
>single macro that chooses the correct register according to the phy
>being accessed, use the correct bitfields for each pll/phy and implement
>separate functions for DG1 since it doesn't share much with ICL/TGL
>anymore.
>
>The previous values were correct for PHY A and B since they were using
>the same register as before and the bitfields were matching.
>
>v2: Add comment and try to simplify DG1_DPCLKA* macros by reusing
>previous ones
>
>Cc: Jos=E9 Roberto de Souza <jose.souza@intel.com>
>Cc: Clinton Taylor <Clinton.A.Taylor@intel.com>
>Cc: Matt Roper <matthew.d.roper@intel.com>
>Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>

Matt, you had given you R-b but since I changed the macros considerably,
please take a look if it still stands.

thanks
Lucas De Marchi

>---
> drivers/gpu/drm/i915/display/intel_ddi.c     | 92 +++++++++++++++++++-
> drivers/gpu/drm/i915/display/intel_display.c | 25 +++++-
> drivers/gpu/drm/i915/i915_reg.h              | 23 +++++
> 3 files changed, 136 insertions(+), 4 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i9=
15/display/intel_ddi.c
>index 63380b166c25..f6343a950b3a 100644
>--- a/drivers/gpu/drm/i915/display/intel_ddi.c
>+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
>@@ -2970,6 +2970,38 @@ static u32 icl_dpclka_cfgcr0_clk_off(struct drm_i91=
5_private *dev_priv,
> 	return 0;
> }
>
>+static void dg1_map_plls_to_ports(struct intel_encoder *encoder,
>+				  const struct intel_crtc_state *crtc_state)
>+{
>+	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>+	struct intel_shared_dpll *pll =3D crtc_state->shared_dpll;
>+	enum phy phy =3D intel_port_to_phy(dev_priv, encoder->port);
>+	u32 val;
>+
>+	/*
>+	 * If we fail this, something went very wrong: first 2 PLLs should be
>+	 * used by first 2 phys and last 2 PLLs by last phys
>+	 */
>+	if (WARN_ON((pll->info->id < DPLL_ID_DG1_DPLL2 && phy >=3D PHY_C) ||
>+		    (pll->info->id >=3D DPLL_ID_DG1_DPLL2 && phy < PHY_C)))
>+		return;
>+
>+	mutex_lock(&dev_priv->dpll.lock);
>+
>+	val =3D intel_de_read(dev_priv, DG1_DPCLKA_CFGCR0(phy));
>+	WARN_ON((val & DG1_DPCLKA_CFGCR0_DDI_CLK_OFF(phy)) =3D=3D 0);
>+
>+	val &=3D ~DG1_DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(phy);
>+	val |=3D DG1_DPCLKA_CFGCR0_DDI_CLK_SEL(pll->info->id, phy);
>+	intel_de_write(dev_priv, DG1_DPCLKA_CFGCR0(phy), val);
>+	intel_de_posting_read(dev_priv, DG1_DPCLKA_CFGCR0(phy));
>+
>+	val &=3D ~DG1_DPCLKA_CFGCR0_DDI_CLK_OFF(phy);
>+	intel_de_write(dev_priv, DG1_DPCLKA_CFGCR0(phy), val);
>+
>+	mutex_unlock(&dev_priv->dpll.lock);
>+}
>+
> static void icl_map_plls_to_ports(struct intel_encoder *encoder,
> 				  const struct intel_crtc_state *crtc_state)
> {
>@@ -3017,6 +3049,19 @@ static void icl_map_plls_to_ports(struct intel_enco=
der *encoder,
> 	mutex_unlock(&dev_priv->dpll.lock);
> }
>
>+static void dg1_unmap_plls_to_ports(struct intel_encoder *encoder)
>+{
>+	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>+	enum phy phy =3D intel_port_to_phy(dev_priv, encoder->port);
>+
>+	mutex_lock(&dev_priv->dpll.lock);
>+
>+	intel_de_rmw(dev_priv, DG1_DPCLKA_CFGCR0(phy), 0,
>+		     DG1_DPCLKA_CFGCR0_DDI_CLK_OFF(phy));
>+
>+	mutex_unlock(&dev_priv->dpll.lock);
>+}
>+
> static void icl_unmap_plls_to_ports(struct intel_encoder *encoder)
> {
> 	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>@@ -3032,6 +3077,40 @@ static void icl_unmap_plls_to_ports(struct intel_en=
coder *encoder)
> 	mutex_unlock(&dev_priv->dpll.lock);
> }
>
>+static void dg1_sanitize_port_clk_off(struct drm_i915_private *dev_priv,
>+				      u32 port_mask, bool ddi_clk_needed)
>+{
>+	enum port port;
>+	u32 val;
>+
>+	for_each_port_masked(port, port_mask) {
>+		enum phy phy =3D intel_port_to_phy(dev_priv, port);
>+		bool ddi_clk_off;
>+
>+		val =3D intel_de_read(dev_priv, DG1_DPCLKA_CFGCR0(phy));
>+		ddi_clk_off =3D val & DG1_DPCLKA_CFGCR0_DDI_CLK_OFF(phy);
>+
>+		if (ddi_clk_needed =3D=3D !ddi_clk_off)
>+			continue;
>+
>+		/*
>+		 * Punt on the case now where clock is gated, but it would
>+		 * be needed by the port. Something else is really broken then.
>+		 */
>+		if (ddi_clk_needed) {
>+			WARN(1, "ddi_clk_needed=3D%u ddi_clk_off=3D%u phy=3D%u\n",
>+			     ddi_clk_needed, ddi_clk_off, phy);
>+			continue;
>+		}
>+
>+		DRM_NOTE("PHY %c is disabled/in DSI mode with an ungated DDI clock, gat=
e it\n",
>+			 phy_name(phy));
>+
>+		val |=3D DG1_DPCLKA_CFGCR0_DDI_CLK_OFF(phy);
>+		intel_de_write(dev_priv, DG1_DPCLKA_CFGCR0(phy), val);
>+	}
>+}
>+
> static void icl_sanitize_port_clk_off(struct drm_i915_private *dev_priv,
> 				      u32 port_mask, bool ddi_clk_needed)
> {
>@@ -3114,7 +3193,10 @@ void icl_sanitize_encoder_pll_mapping(struct intel_=
encoder *encoder)
> 		ddi_clk_needed =3D false;
> 	}
>
>-	icl_sanitize_port_clk_off(dev_priv, port_mask, ddi_clk_needed);
>+	if (IS_DG1(dev_priv))
>+		dg1_sanitize_port_clk_off(dev_priv, port_mask, ddi_clk_needed);
>+	else
>+		icl_sanitize_port_clk_off(dev_priv, port_mask, ddi_clk_needed);
> }
>
> static void intel_ddi_clk_select(struct intel_encoder *encoder,
>@@ -3666,7 +3748,9 @@ static void intel_ddi_pre_enable(struct intel_atomic=
_state *state,
>
> 	drm_WARN_ON(&dev_priv->drm, crtc_state->has_pch_encoder);
>
>-	if (INTEL_GEN(dev_priv) >=3D 11)
>+	if (IS_DG1(dev_priv))
>+		dg1_map_plls_to_ports(encoder, crtc_state);
>+	else if (INTEL_GEN(dev_priv) >=3D 11)
> 		icl_map_plls_to_ports(encoder, crtc_state);
>
> 	intel_set_cpu_fifo_underrun_reporting(dev_priv, pipe, true);
>@@ -3848,7 +3932,9 @@ static void intel_ddi_post_disable(struct intel_atom=
ic_state *state,
> 		intel_ddi_post_disable_dp(state, encoder, old_crtc_state,
> 					  old_conn_state);
>
>-	if (INTEL_GEN(dev_priv) >=3D 11)
>+	if (IS_DG1(dev_priv))
>+		dg1_unmap_plls_to_ports(encoder);
>+	else if (INTEL_GEN(dev_priv) >=3D 11)
> 		icl_unmap_plls_to_ports(encoder);
>
> 	if (intel_crtc_has_dp_encoder(old_crtc_state) || is_tc_port)
>diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/dr=
m/i915/display/intel_display.c
>index f41b6f8b5618..97c14d187a83 100644
>--- a/drivers/gpu/drm/i915/display/intel_display.c
>+++ b/drivers/gpu/drm/i915/display/intel_display.c
>@@ -11003,6 +11003,27 @@ static int hsw_crtc_compute_clock(struct intel_cr=
tc *crtc,
> 	return 0;
> }
>
>+static void dg1_get_ddi_pll(struct drm_i915_private *dev_priv, enum port =
port,
>+			    struct intel_crtc_state *pipe_config)
>+{
>+	enum icl_port_dpll_id port_dpll_id =3D ICL_PORT_DPLL_DEFAULT;
>+	enum phy phy =3D intel_port_to_phy(dev_priv, port);
>+	enum intel_dpll_id id;
>+	u32 val;
>+
>+	val =3D intel_de_read(dev_priv, DG1_DPCLKA_CFGCR0(phy))
>+		& DG1_DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(phy);
>+	id =3D DG1_DPCLKA_CFGCR0_DDI_CLK_SEL_TO_PLL_ID(val, phy);
>+
>+	if (WARN_ON(id > DPLL_ID_DG1_DPLL3))
>+		return;
>+
>+	pipe_config->icl_port_dplls[port_dpll_id].pll =3D
>+		intel_get_shared_dpll_by_id(dev_priv, id);
>+
>+	icl_set_active_port_dpll(pipe_config, port_dpll_id);
>+}
>+
> static void cnl_get_ddi_pll(struct drm_i915_private *dev_priv, enum port =
port,
> 			    struct intel_crtc_state *pipe_config)
> {
>@@ -11311,7 +11332,9 @@ static void hsw_get_ddi_port_state(struct intel_cr=
tc *crtc,
> 			port =3D TRANS_DDI_FUNC_CTL_VAL_TO_PORT(tmp);
> 	}
>
>-	if (INTEL_GEN(dev_priv) >=3D 11)
>+	if (IS_DG1(dev_priv))
>+		dg1_get_ddi_pll(dev_priv, port, pipe_config);
>+	else if (INTEL_GEN(dev_priv) >=3D 11)
> 		icl_get_ddi_pll(dev_priv, port, pipe_config);
> 	else if (IS_CANNONLAKE(dev_priv))
> 		cnl_get_ddi_pll(dev_priv, port, pipe_config);
>diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_r=
eg.h
>index 8b021f77cb1f..99c749787541 100644
>--- a/drivers/gpu/drm/i915/i915_reg.h
>+++ b/drivers/gpu/drm/i915/i915_reg.h
>@@ -230,12 +230,14 @@ static inline bool i915_mmio_reg_valid(i915_reg_t re=
g)
> #define _TRANS(tran, a, b)		_PICK_EVEN(tran, a, b)
> #define _PORT(port, a, b)		_PICK_EVEN(port, a, b)
> #define _PLL(pll, a, b)			_PICK_EVEN(pll, a, b)
>+#define _PHY(phy, a, b)			_PICK_EVEN(phy, a, b)
>
> #define _MMIO_PIPE(pipe, a, b)		_MMIO(_PIPE(pipe, a, b))
> #define _MMIO_PLANE(plane, a, b)	_MMIO(_PLANE(plane, a, b))
> #define _MMIO_TRANS(tran, a, b)		_MMIO(_TRANS(tran, a, b))
> #define _MMIO_PORT(port, a, b)		_MMIO(_PORT(port, a, b))
> #define _MMIO_PLL(pll, a, b)		_MMIO(_PLL(pll, a, b))
>+#define _MMIO_PHY(phy, a, b)		_MMIO(_PHY(phy, a, b))
>
> #define _PHY3(phy, ...)			_PICK(phy, __VA_ARGS__)
>
>@@ -10324,6 +10326,7 @@ enum skl_power_gate {
> #define  DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(port)	(3 << DPCLKA_CFGCR0_DDI_CLK=
_SEL_SHIFT(port))
> #define  DPCLKA_CFGCR0_DDI_CLK_SEL(pll, port)	((pll) << DPCLKA_CFGCR0_DDI=
_CLK_SEL_SHIFT(port))
>
>+/* ICL Clocks */
> #define ICL_DPCLKA_CFGCR0			_MMIO(0x164280)
> #define  ICL_DPCLKA_CFGCR0_DDI_CLK_OFF(phy)	(1 << _PICK(phy, 10, 11, 24))
> #define  RKL_DPCLKA_CFGCR0_DDI_CLK_OFF(phy)	REG_BIT((phy) + 10)
>@@ -10339,6 +10342,26 @@ enum skl_power_gate {
> #define  RKL_DPCLKA_CFGCR0_DDI_CLK_SEL(pll, phy) \
> 	((pll) << RKL_DPCLKA_CFGCR0_DDI_CLK_SEL_SHIFT(phy))
>
>+/*
>+ * DG1 Clocks
>+ * First registers controls the first A and B, while the second register
>+ * controls the phy C and D. The bits on these registers are the
>+ * same, but refer to different phys
>+ */
>+#define _DG1_DPCLKA_CFGCR0				0x164280
>+#define _DG1_DPCLKA1_CFGCR0				0x16C280
>+#define _DG1_DPCLKA_PHY_IDX(phy)			((phy) % 2)
>+#define _DG1_DPCLKA_PLL_IDX(pll)			((pll) % 2)
>+#define DG1_DPCLKA_CFGCR0(phy)				_MMIO_PHY((phy) / 2, \
>+								  _DG1_DPCLKA_CFGCR0, \
>+								  _DG1_DPCLKA1_CFGCR0)
>+#define   DG1_DPCLKA_CFGCR0_DDI_CLK_OFF(phy)		REG_BIT(_DG1_DPCLKA_PHY_IDX=
(phy) + 10)
>+#define   DG1_DPCLKA_CFGCR0_DDI_CLK_SEL(pll, phy)	(_DG1_DPCLKA_PLL_IDX(pl=
l) << (_DG1_DPCLKA_PHY_IDX(phy) * 2))
>+#define   DG1_DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(phy)	DG1_DPCLKA_CFGCR0_DDI_C=
LK_SEL(0x3, phy)
>+#define   DG1_DPCLKA_CFGCR0_DDI_CLK_SEL_TO_PLL_ID(val, phy) \
>+	((((val) & DG1_DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(phy)) >> (_DG1_DPCLKA_PHY_=
IDX(phy) * 2)) + \
>+	 ((phy) >=3D PHY_C ? DPLL_ID_DG1_DPLL2 : DPLL_ID_DG1_DPLL0))
>+
> /* CNL PLL */
> #define DPLL0_ENABLE		0x46010
> #define DPLL1_ENABLE		0x46014
>-- =

>2.29.0
>
>_______________________________________________
>Intel-gfx mailing list
>Intel-gfx@lists.freedesktop.org
>https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
