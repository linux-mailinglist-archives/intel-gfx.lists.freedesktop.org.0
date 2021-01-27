Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 24123304F5D
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Jan 2021 04:06:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BF3F6E4FB;
	Wed, 27 Jan 2021 03:06:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-44.mimecast.com
 (us-smtp-delivery-44.mimecast.com [205.139.111.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17FB76E4F4
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Jan 2021 03:06:14 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-550-kldgsOk-MSac404qIhtXeA-1; Tue, 26 Jan 2021 22:06:11 -0500
X-MC-Unique: kldgsOk-MSac404qIhtXeA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E6F3C10054FF
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Jan 2021 03:06:10 +0000 (UTC)
Received: from dreadlord-bne-redhat-com.bne.redhat.com (unknown [10.64.32.209])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 2A07460C05;
 Wed, 27 Jan 2021 03:06:09 +0000 (UTC)
From: Dave Airlie <airlied@gmail.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Jan 2021 13:05:48 +1000
Message-Id: <20210127030548.29296-11-airlied@gmail.com>
In-Reply-To: <20210127030548.29296-1-airlied@gmail.com>
References: <20210127030548.29296-1-airlied@gmail.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Subject: [Intel-gfx] [PATCH 10/10] drm/i915: move ddi pll state get to dpll
 mgr
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
Cc: Dave Airlie <airlied@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Dave Airlie <airlied@redhat.com>

This just migrates the hsw+ code to a better place.

Signed-off-by: Dave Airlie <airlied@redhat.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  | 212 +----------------
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 216 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h |   2 +
 3 files changed, 219 insertions(+), 211 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index b025af8a98c1..5a69c7414f43 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6575,205 +6575,6 @@ static bool ilk_get_pipe_config(struct intel_crtc *crtc,
 	return ret;
 }
 
-static void dg1_get_ddi_pll(struct drm_i915_private *dev_priv, enum port port,
-			    struct intel_crtc_state *pipe_config)
-{
-	enum icl_port_dpll_id port_dpll_id = ICL_PORT_DPLL_DEFAULT;
-	enum phy phy = intel_port_to_phy(dev_priv, port);
-	struct icl_port_dpll *port_dpll;
-	struct intel_shared_dpll *pll;
-	enum intel_dpll_id id;
-	bool pll_active;
-	u32 clk_sel;
-
-	clk_sel = intel_de_read(dev_priv, DG1_DPCLKA_CFGCR0(phy)) & DG1_DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(phy);
-	id = DG1_DPCLKA_CFGCR0_DDI_CLK_SEL_DPLL_MAP(clk_sel, phy);
-
-	if (WARN_ON(id > DPLL_ID_DG1_DPLL3))
-		return;
-
-	pll = intel_get_shared_dpll_by_id(dev_priv, id);
-	port_dpll = &pipe_config->icl_port_dplls[port_dpll_id];
-
-	port_dpll->pll = pll;
-	pll_active = intel_dpll_get_hw_state(dev_priv, pll,
-					     &port_dpll->hw_state);
-	drm_WARN_ON(&dev_priv->drm, !pll_active);
-
-	icl_set_active_port_dpll(pipe_config, port_dpll_id);
-}
-
-static void icl_get_ddi_pll(struct drm_i915_private *dev_priv, enum port port,
-			    struct intel_crtc_state *pipe_config)
-{
-	enum phy phy = intel_port_to_phy(dev_priv, port);
-	enum icl_port_dpll_id port_dpll_id;
-	struct icl_port_dpll *port_dpll;
-	struct intel_shared_dpll *pll;
-	enum intel_dpll_id id;
-	bool pll_active;
-	u32 temp;
-
-	if (intel_phy_is_combo(dev_priv, phy)) {
-		u32 mask, shift;
-
-		if (IS_ROCKETLAKE(dev_priv)) {
-			mask = RKL_DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(phy);
-			shift = RKL_DPCLKA_CFGCR0_DDI_CLK_SEL_SHIFT(phy);
-		} else {
-			mask = ICL_DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(phy);
-			shift = ICL_DPCLKA_CFGCR0_DDI_CLK_SEL_SHIFT(phy);
-		}
-
-		temp = intel_de_read(dev_priv, ICL_DPCLKA_CFGCR0) & mask;
-		id = temp >> shift;
-		port_dpll_id = ICL_PORT_DPLL_DEFAULT;
-	} else if (intel_phy_is_tc(dev_priv, phy)) {
-		u32 clk_sel = intel_de_read(dev_priv, DDI_CLK_SEL(port)) & DDI_CLK_SEL_MASK;
-
-		if (clk_sel == DDI_CLK_SEL_MG) {
-			id = icl_tc_port_to_pll_id(intel_port_to_tc(dev_priv,
-								    port));
-			port_dpll_id = ICL_PORT_DPLL_MG_PHY;
-		} else {
-			drm_WARN_ON(&dev_priv->drm,
-				    clk_sel < DDI_CLK_SEL_TBT_162);
-			id = DPLL_ID_ICL_TBTPLL;
-			port_dpll_id = ICL_PORT_DPLL_DEFAULT;
-		}
-	} else {
-		drm_WARN(&dev_priv->drm, 1, "Invalid port %x\n", port);
-		return;
-	}
-
-	pll = intel_get_shared_dpll_by_id(dev_priv, id);
-	port_dpll = &pipe_config->icl_port_dplls[port_dpll_id];
-
-	port_dpll->pll = pll;
-	pll_active = intel_dpll_get_hw_state(dev_priv, pll,
-					     &port_dpll->hw_state);
-	drm_WARN_ON(&dev_priv->drm, !pll_active);
-
-	icl_set_active_port_dpll(pipe_config, port_dpll_id);
-}
-
-static void cnl_get_ddi_pll(struct drm_i915_private *dev_priv, enum port port,
-			    struct intel_crtc_state *pipe_config)
-{
-	struct intel_shared_dpll *pll;
-	enum intel_dpll_id id;
-	bool pll_active;
-	u32 temp;
-
-	temp = intel_de_read(dev_priv, DPCLKA_CFGCR0) & DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(port);
-	id = temp >> DPCLKA_CFGCR0_DDI_CLK_SEL_SHIFT(port);
-
-	if (drm_WARN_ON(&dev_priv->drm, id < SKL_DPLL0 || id > SKL_DPLL2))
-		return;
-
-	pll = intel_get_shared_dpll_by_id(dev_priv, id);
-
-	pipe_config->shared_dpll = pll;
-	pll_active = intel_dpll_get_hw_state(dev_priv, pll,
-					     &pipe_config->dpll_hw_state);
-	drm_WARN_ON(&dev_priv->drm, !pll_active);
-}
-
-static void bxt_get_ddi_pll(struct drm_i915_private *dev_priv,
-				enum port port,
-				struct intel_crtc_state *pipe_config)
-{
-	struct intel_shared_dpll *pll;
-	enum intel_dpll_id id;
-	bool pll_active;
-
-	switch (port) {
-	case PORT_A:
-		id = DPLL_ID_SKL_DPLL0;
-		break;
-	case PORT_B:
-		id = DPLL_ID_SKL_DPLL1;
-		break;
-	case PORT_C:
-		id = DPLL_ID_SKL_DPLL2;
-		break;
-	default:
-		drm_err(&dev_priv->drm, "Incorrect port type\n");
-		return;
-	}
-
-	pll = intel_get_shared_dpll_by_id(dev_priv, id);
-
-	pipe_config->shared_dpll = pll;
-	pll_active = intel_dpll_get_hw_state(dev_priv, pll,
-					     &pipe_config->dpll_hw_state);
-	drm_WARN_ON(&dev_priv->drm, !pll_active);
-}
-
-static void skl_get_ddi_pll(struct drm_i915_private *dev_priv, enum port port,
-			    struct intel_crtc_state *pipe_config)
-{
-	struct intel_shared_dpll *pll;
-	enum intel_dpll_id id;
-	bool pll_active;
-	u32 temp;
-
-	temp = intel_de_read(dev_priv, DPLL_CTRL2) & DPLL_CTRL2_DDI_CLK_SEL_MASK(port);
-	id = temp >> (port * 3 + 1);
-
-	if (drm_WARN_ON(&dev_priv->drm, id < SKL_DPLL0 || id > SKL_DPLL3))
-		return;
-
-	pll = intel_get_shared_dpll_by_id(dev_priv, id);
-
-	pipe_config->shared_dpll = pll;
-	pll_active = intel_dpll_get_hw_state(dev_priv, pll,
-					     &pipe_config->dpll_hw_state);
-	drm_WARN_ON(&dev_priv->drm, !pll_active);
-}
-
-static void hsw_get_ddi_pll(struct drm_i915_private *dev_priv, enum port port,
-			    struct intel_crtc_state *pipe_config)
-{
-	struct intel_shared_dpll *pll;
-	enum intel_dpll_id id;
-	u32 ddi_pll_sel = intel_de_read(dev_priv, PORT_CLK_SEL(port));
-	bool pll_active;
-
-	switch (ddi_pll_sel) {
-	case PORT_CLK_SEL_WRPLL1:
-		id = DPLL_ID_WRPLL1;
-		break;
-	case PORT_CLK_SEL_WRPLL2:
-		id = DPLL_ID_WRPLL2;
-		break;
-	case PORT_CLK_SEL_SPLL:
-		id = DPLL_ID_SPLL;
-		break;
-	case PORT_CLK_SEL_LCPLL_810:
-		id = DPLL_ID_LCPLL_810;
-		break;
-	case PORT_CLK_SEL_LCPLL_1350:
-		id = DPLL_ID_LCPLL_1350;
-		break;
-	case PORT_CLK_SEL_LCPLL_2700:
-		id = DPLL_ID_LCPLL_2700;
-		break;
-	default:
-		MISSING_CASE(ddi_pll_sel);
-		fallthrough;
-	case PORT_CLK_SEL_NONE:
-		return;
-	}
-
-	pll = intel_get_shared_dpll_by_id(dev_priv, id);
-
-	pipe_config->shared_dpll = pll;
-	pll_active = intel_dpll_get_hw_state(dev_priv, pll,
-					     &pipe_config->dpll_hw_state);
-	drm_WARN_ON(&dev_priv->drm, !pll_active);
-}
-
 static bool hsw_get_transcoder_state(struct intel_crtc *crtc,
 				     struct intel_crtc_state *pipe_config,
 				     struct intel_display_power_domain_set *power_domain_set)
@@ -6930,18 +6731,7 @@ static void hsw_get_ddi_port_state(struct intel_crtc *crtc,
 			port = TRANS_DDI_FUNC_CTL_VAL_TO_PORT(tmp);
 	}
 
-	if (IS_DG1(dev_priv))
-		dg1_get_ddi_pll(dev_priv, port, pipe_config);
-	else if (INTEL_GEN(dev_priv) >= 11)
-		icl_get_ddi_pll(dev_priv, port, pipe_config);
-	else if (IS_CANNONLAKE(dev_priv))
-		cnl_get_ddi_pll(dev_priv, port, pipe_config);
-	else if (IS_GEN9_LP(dev_priv))
-		bxt_get_ddi_pll(dev_priv, port, pipe_config);
-	else if (IS_GEN9_BC(dev_priv))
-		skl_get_ddi_pll(dev_priv, port, pipe_config);
-	else
-		hsw_get_ddi_pll(dev_priv, port, pipe_config);
+	intel_get_ddi_pll(dev_priv, port, pipe_config);
 
 	/*
 	 * Haswell has only FDI/PCH transcoder A. It is which is connected to
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index f6ad257a260e..30ace3be59de 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -4640,3 +4640,219 @@ void intel_dpll_dump_hw_state(struct drm_i915_private *dev_priv,
 			    hw_state->fp1);
 	}
 }
+
+static void dg1_get_ddi_pll(struct drm_i915_private *dev_priv, enum port port,
+			    struct intel_crtc_state *pipe_config)
+{
+	enum icl_port_dpll_id port_dpll_id = ICL_PORT_DPLL_DEFAULT;
+	enum phy phy = intel_port_to_phy(dev_priv, port);
+	struct icl_port_dpll *port_dpll;
+	struct intel_shared_dpll *pll;
+	enum intel_dpll_id id;
+	bool pll_active;
+	u32 clk_sel;
+
+	clk_sel = intel_de_read(dev_priv, DG1_DPCLKA_CFGCR0(phy)) & DG1_DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(phy);
+	id = DG1_DPCLKA_CFGCR0_DDI_CLK_SEL_DPLL_MAP(clk_sel, phy);
+
+	if (WARN_ON(id > DPLL_ID_DG1_DPLL3))
+		return;
+
+	pll = intel_get_shared_dpll_by_id(dev_priv, id);
+	port_dpll = &pipe_config->icl_port_dplls[port_dpll_id];
+
+	port_dpll->pll = pll;
+	pll_active = intel_dpll_get_hw_state(dev_priv, pll,
+					     &port_dpll->hw_state);
+	drm_WARN_ON(&dev_priv->drm, !pll_active);
+
+	icl_set_active_port_dpll(pipe_config, port_dpll_id);
+}
+
+static void icl_get_ddi_pll(struct drm_i915_private *dev_priv, enum port port,
+			    struct intel_crtc_state *pipe_config)
+{
+	enum phy phy = intel_port_to_phy(dev_priv, port);
+	enum icl_port_dpll_id port_dpll_id;
+	struct icl_port_dpll *port_dpll;
+	struct intel_shared_dpll *pll;
+	enum intel_dpll_id id;
+	bool pll_active;
+	u32 temp;
+
+	if (intel_phy_is_combo(dev_priv, phy)) {
+		u32 mask, shift;
+
+		if (IS_ROCKETLAKE(dev_priv)) {
+			mask = RKL_DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(phy);
+			shift = RKL_DPCLKA_CFGCR0_DDI_CLK_SEL_SHIFT(phy);
+		} else {
+			mask = ICL_DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(phy);
+			shift = ICL_DPCLKA_CFGCR0_DDI_CLK_SEL_SHIFT(phy);
+		}
+
+		temp = intel_de_read(dev_priv, ICL_DPCLKA_CFGCR0) & mask;
+		id = temp >> shift;
+		port_dpll_id = ICL_PORT_DPLL_DEFAULT;
+	} else if (intel_phy_is_tc(dev_priv, phy)) {
+		u32 clk_sel = intel_de_read(dev_priv, DDI_CLK_SEL(port)) & DDI_CLK_SEL_MASK;
+
+		if (clk_sel == DDI_CLK_SEL_MG) {
+			id = icl_tc_port_to_pll_id(intel_port_to_tc(dev_priv,
+								    port));
+			port_dpll_id = ICL_PORT_DPLL_MG_PHY;
+		} else {
+			drm_WARN_ON(&dev_priv->drm,
+				    clk_sel < DDI_CLK_SEL_TBT_162);
+			id = DPLL_ID_ICL_TBTPLL;
+			port_dpll_id = ICL_PORT_DPLL_DEFAULT;
+		}
+	} else {
+		drm_WARN(&dev_priv->drm, 1, "Invalid port %x\n", port);
+		return;
+	}
+
+	pll = intel_get_shared_dpll_by_id(dev_priv, id);
+	port_dpll = &pipe_config->icl_port_dplls[port_dpll_id];
+
+	port_dpll->pll = pll;
+	pll_active = intel_dpll_get_hw_state(dev_priv, pll,
+					     &port_dpll->hw_state);
+	drm_WARN_ON(&dev_priv->drm, !pll_active);
+
+	icl_set_active_port_dpll(pipe_config, port_dpll_id);
+}
+
+static void cnl_get_ddi_pll(struct drm_i915_private *dev_priv, enum port port,
+			    struct intel_crtc_state *pipe_config)
+{
+	struct intel_shared_dpll *pll;
+	enum intel_dpll_id id;
+	bool pll_active;
+	u32 temp;
+
+	temp = intel_de_read(dev_priv, DPCLKA_CFGCR0) & DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(port);
+	id = temp >> DPCLKA_CFGCR0_DDI_CLK_SEL_SHIFT(port);
+
+	if (drm_WARN_ON(&dev_priv->drm, id < SKL_DPLL0 || id > SKL_DPLL2))
+		return;
+
+	pll = intel_get_shared_dpll_by_id(dev_priv, id);
+
+	pipe_config->shared_dpll = pll;
+	pll_active = intel_dpll_get_hw_state(dev_priv, pll,
+					     &pipe_config->dpll_hw_state);
+	drm_WARN_ON(&dev_priv->drm, !pll_active);
+}
+
+static void bxt_get_ddi_pll(struct drm_i915_private *dev_priv,
+				enum port port,
+				struct intel_crtc_state *pipe_config)
+{
+	struct intel_shared_dpll *pll;
+	enum intel_dpll_id id;
+	bool pll_active;
+
+	switch (port) {
+	case PORT_A:
+		id = DPLL_ID_SKL_DPLL0;
+		break;
+	case PORT_B:
+		id = DPLL_ID_SKL_DPLL1;
+		break;
+	case PORT_C:
+		id = DPLL_ID_SKL_DPLL2;
+		break;
+	default:
+		drm_err(&dev_priv->drm, "Incorrect port type\n");
+		return;
+	}
+
+	pll = intel_get_shared_dpll_by_id(dev_priv, id);
+
+	pipe_config->shared_dpll = pll;
+	pll_active = intel_dpll_get_hw_state(dev_priv, pll,
+					     &pipe_config->dpll_hw_state);
+	drm_WARN_ON(&dev_priv->drm, !pll_active);
+}
+
+static void skl_get_ddi_pll(struct drm_i915_private *dev_priv, enum port port,
+			    struct intel_crtc_state *pipe_config)
+{
+	struct intel_shared_dpll *pll;
+	enum intel_dpll_id id;
+	bool pll_active;
+	u32 temp;
+
+	temp = intel_de_read(dev_priv, DPLL_CTRL2) & DPLL_CTRL2_DDI_CLK_SEL_MASK(port);
+	id = temp >> (port * 3 + 1);
+
+	if (drm_WARN_ON(&dev_priv->drm, id < SKL_DPLL0 || id > SKL_DPLL3))
+		return;
+
+	pll = intel_get_shared_dpll_by_id(dev_priv, id);
+
+	pipe_config->shared_dpll = pll;
+	pll_active = intel_dpll_get_hw_state(dev_priv, pll,
+					     &pipe_config->dpll_hw_state);
+	drm_WARN_ON(&dev_priv->drm, !pll_active);
+}
+
+static void hsw_get_ddi_pll(struct drm_i915_private *dev_priv, enum port port,
+			    struct intel_crtc_state *pipe_config)
+{
+	struct intel_shared_dpll *pll;
+	enum intel_dpll_id id;
+	u32 ddi_pll_sel = intel_de_read(dev_priv, PORT_CLK_SEL(port));
+	bool pll_active;
+
+	switch (ddi_pll_sel) {
+	case PORT_CLK_SEL_WRPLL1:
+		id = DPLL_ID_WRPLL1;
+		break;
+	case PORT_CLK_SEL_WRPLL2:
+		id = DPLL_ID_WRPLL2;
+		break;
+	case PORT_CLK_SEL_SPLL:
+		id = DPLL_ID_SPLL;
+		break;
+	case PORT_CLK_SEL_LCPLL_810:
+		id = DPLL_ID_LCPLL_810;
+		break;
+	case PORT_CLK_SEL_LCPLL_1350:
+		id = DPLL_ID_LCPLL_1350;
+		break;
+	case PORT_CLK_SEL_LCPLL_2700:
+		id = DPLL_ID_LCPLL_2700;
+		break;
+	default:
+		MISSING_CASE(ddi_pll_sel);
+		fallthrough;
+	case PORT_CLK_SEL_NONE:
+		return;
+	}
+
+	pll = intel_get_shared_dpll_by_id(dev_priv, id);
+
+	pipe_config->shared_dpll = pll;
+	pll_active = intel_dpll_get_hw_state(dev_priv, pll,
+					     &pipe_config->dpll_hw_state);
+	drm_WARN_ON(&dev_priv->drm, !pll_active);
+}
+
+void intel_get_ddi_pll(struct drm_i915_private *dev_priv, enum port port,
+		       struct intel_crtc_state *pipe_config)
+{
+	if (IS_DG1(dev_priv))
+		dg1_get_ddi_pll(dev_priv, port, pipe_config);
+	else if (INTEL_GEN(dev_priv) >= 11)
+		icl_get_ddi_pll(dev_priv, port, pipe_config);
+	else if (IS_CANNONLAKE(dev_priv))
+		cnl_get_ddi_pll(dev_priv, port, pipe_config);
+	else if (IS_GEN9_LP(dev_priv))
+		bxt_get_ddi_pll(dev_priv, port, pipe_config);
+	else if (IS_GEN9_BC(dev_priv))
+		skl_get_ddi_pll(dev_priv, port, pipe_config);
+	else
+		hsw_get_ddi_pll(dev_priv, port, pipe_config);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
index 2eb7618ef957..fe4e99355d6d 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
@@ -418,4 +418,6 @@ void intel_dpll_dump_hw_state(struct drm_i915_private *dev_priv,
 enum intel_dpll_id icl_tc_port_to_pll_id(enum tc_port tc_port);
 bool intel_dpll_is_combophy(enum intel_dpll_id id);
 
+void intel_get_ddi_pll(struct drm_i915_private *dev_priv, enum port port,
+		       struct intel_crtc_state *pipe_config);
 #endif /* _INTEL_DPLL_MGR_H_ */
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
