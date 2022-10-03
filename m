Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3873B5F391F
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Oct 2022 00:33:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17ED610E50A;
	Mon,  3 Oct 2022 22:33:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F02010E507
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Oct 2022 22:33:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664836406; x=1696372406;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NL5RiPwsoAtZVcKHTh6fXZfoMk8fkk1EslwxZGAJ7TE=;
 b=eQSW18N4cMy/1mg5ffQuf3OrHe1gUDblwBXnrhrDp0+WuSujPoSvFVpB
 gFVj8LL/yin0VNB7+nxe5oQ2XIinkRlnxL6jDj+k48Q3jbUbA7S1Ie/39
 G+8rQ3OFpbi0VGdjqBJvIoze5LdUZdNdvo308utu5RVqFKgL6eApIJeAC
 4d70BGN2MNtEwxtPocZ6TufuKAPUaWd2dFZOLI0ITBfVGLAu4f9Cpm+II
 SJlHHg31sFM2CxB9dHLzAwM5qEZl4AVnEMxQDRPuze5kPoZoSz7cdLb8I
 2Ua8HoletuwUVqvnl128ZgzQC/2YyHEw7kufrwSnkFakZ6nWrd7Yh3VPZ Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="285967365"
X-IronPort-AV: E=Sophos;i="5.93,366,1654585200"; d="scan'208";a="285967365"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2022 15:33:25 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="692262859"
X-IronPort-AV: E=Sophos;i="5.93,366,1654585200"; d="scan'208";a="692262859"
Received: from lab-ah.igk.intel.com ([10.91.215.196])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2022 15:33:23 -0700
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  4 Oct 2022 00:32:58 +0200
Message-Id: <20221003223258.2650934-5-andrzej.hajda@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221003223258.2650934-1-andrzej.hajda@intel.com>
References: <20221003223258.2650934-1-andrzej.hajda@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/4] drm/i915: use proper helper for register
 updates
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

There is special helper for register read/modify/write.

Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
---
 drivers/gpu/drm/i915/display/intel_tc.c |   9 +-
 drivers/gpu/drm/i915/i915_irq.c         | 221 +++++++++---------------
 drivers/gpu/drm/i915/intel_pm.c         |  59 ++-----
 drivers/gpu/drm/i915/vlv_suspend.c      |  28 +--
 4 files changed, 106 insertions(+), 211 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index b0aa1edd830289..8cecd41ed00338 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -408,14 +408,9 @@ static bool adl_tc_phy_take_ownership(struct intel_digital_port *dig_port,
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	struct intel_uncore *uncore = &i915->uncore;
 	enum port port = dig_port->base.port;
-	u32 val;
 
-	val = intel_uncore_read(uncore, DDI_BUF_CTL(port));
-	if (take)
-		val |= DDI_BUF_CTL_TC_PHY_OWNERSHIP;
-	else
-		val &= ~DDI_BUF_CTL_TC_PHY_OWNERSHIP;
-	intel_uncore_write(uncore, DDI_BUF_CTL(port), val);
+	intel_uncore_rmw(uncore, DDI_BUF_CTL(port), DDI_BUF_CTL_TC_PHY_OWNERSHIP,
+			 take ? DDI_BUF_CTL_TC_PHY_OWNERSHIP : 0);
 
 	return true;
 }
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index a1217c7fe6efb0..98f46917eee680 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -325,15 +325,10 @@ i915_hotplug_interrupt_update_locked(struct drm_i915_private *dev_priv,
 				     u32 mask,
 				     u32 bits)
 {
-	u32 val;
-
 	lockdep_assert_held(&dev_priv->irq_lock);
 	drm_WARN_ON(&dev_priv->drm, bits & ~mask);
 
-	val = intel_uncore_read(&dev_priv->uncore, PORT_HOTPLUG_EN);
-	val &= ~mask;
-	val |= bits;
-	intel_uncore_write(&dev_priv->uncore, PORT_HOTPLUG_EN, val);
+	intel_uncore_rmw(&dev_priv->uncore, PORT_HOTPLUG_EN, mask, bits);
 }
 
 /**
@@ -1057,8 +1052,8 @@ static void ivb_parity_work(struct work_struct *work)
 	if (drm_WARN_ON(&dev_priv->drm, !dev_priv->l3_parity.which_slice))
 		goto out;
 
-	misccpctl = intel_uncore_read(&dev_priv->uncore, GEN7_MISCCPCTL);
-	intel_uncore_write(&dev_priv->uncore, GEN7_MISCCPCTL, misccpctl & ~GEN7_DOP_CLOCK_GATE_ENABLE);
+	misccpctl = intel_uncore_rmw(&dev_priv->uncore, GEN7_MISCCPCTL, ~GEN7_DOP_CLOCK_GATE_ENABLE,
+				     0);
 	intel_uncore_posting_read(&dev_priv->uncore, GEN7_MISCCPCTL);
 
 	while ((slice = ffs(dev_priv->l3_parity.which_slice)) != 0) {
@@ -1689,8 +1684,7 @@ static irqreturn_t valleyview_irq_handler(int irq, void *arg)
 		 * bits this time around.
 		 */
 		intel_uncore_write(&dev_priv->uncore, VLV_MASTER_IER, 0);
-		ier = intel_uncore_read(&dev_priv->uncore, VLV_IER);
-		intel_uncore_write(&dev_priv->uncore, VLV_IER, 0);
+		ier = intel_uncore_rmw(&dev_priv->uncore, VLV_IER, ~0, 0);
 
 		if (gt_iir)
 			intel_uncore_write(&dev_priv->uncore, GTIIR, gt_iir);
@@ -1775,8 +1769,7 @@ static irqreturn_t cherryview_irq_handler(int irq, void *arg)
 		 * bits this time around.
 		 */
 		intel_uncore_write(&dev_priv->uncore, GEN8_MASTER_IRQ, 0);
-		ier = intel_uncore_read(&dev_priv->uncore, VLV_IER);
-		intel_uncore_write(&dev_priv->uncore, VLV_IER, 0);
+		ier = intel_uncore_rmw(&dev_priv->uncore, VLV_IER, ~0, 0);
 
 		gen8_gt_irq_handler(to_gt(dev_priv), master_ctl);
 
@@ -1981,8 +1974,7 @@ static void icp_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
 	if (ddi_hotplug_trigger) {
 		u32 dig_hotplug_reg;
 
-		dig_hotplug_reg = intel_uncore_read(&dev_priv->uncore, SHOTPLUG_CTL_DDI);
-		intel_uncore_write(&dev_priv->uncore, SHOTPLUG_CTL_DDI, dig_hotplug_reg);
+		dig_hotplug_reg = intel_uncore_rmw(&dev_priv->uncore, SHOTPLUG_CTL_DDI, 0, 0);
 
 		intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
 				   ddi_hotplug_trigger, dig_hotplug_reg,
@@ -1993,8 +1985,7 @@ static void icp_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
 	if (tc_hotplug_trigger) {
 		u32 dig_hotplug_reg;
 
-		dig_hotplug_reg = intel_uncore_read(&dev_priv->uncore, SHOTPLUG_CTL_TC);
-		intel_uncore_write(&dev_priv->uncore, SHOTPLUG_CTL_TC, dig_hotplug_reg);
+		dig_hotplug_reg = intel_uncore_rmw(&dev_priv->uncore, SHOTPLUG_CTL_TC, 0, 0);
 
 		intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
 				   tc_hotplug_trigger, dig_hotplug_reg,
@@ -2019,8 +2010,7 @@ static void spt_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
 	if (hotplug_trigger) {
 		u32 dig_hotplug_reg;
 
-		dig_hotplug_reg = intel_uncore_read(&dev_priv->uncore, PCH_PORT_HOTPLUG);
-		intel_uncore_write(&dev_priv->uncore, PCH_PORT_HOTPLUG, dig_hotplug_reg);
+		dig_hotplug_reg = intel_uncore_rmw(&dev_priv->uncore, PCH_PORT_HOTPLUG, 0, 0);
 
 		intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
 				   hotplug_trigger, dig_hotplug_reg,
@@ -2031,8 +2021,7 @@ static void spt_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
 	if (hotplug2_trigger) {
 		u32 dig_hotplug_reg;
 
-		dig_hotplug_reg = intel_uncore_read(&dev_priv->uncore, PCH_PORT_HOTPLUG2);
-		intel_uncore_write(&dev_priv->uncore, PCH_PORT_HOTPLUG2, dig_hotplug_reg);
+		dig_hotplug_reg = intel_uncore_rmw(&dev_priv->uncore, PCH_PORT_HOTPLUG2, 0, 0);
 
 		intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
 				   hotplug2_trigger, dig_hotplug_reg,
@@ -2052,8 +2041,7 @@ static void ilk_hpd_irq_handler(struct drm_i915_private *dev_priv,
 {
 	u32 dig_hotplug_reg, pin_mask = 0, long_mask = 0;
 
-	dig_hotplug_reg = intel_uncore_read(&dev_priv->uncore, DIGITAL_PORT_HOTPLUG_CNTRL);
-	intel_uncore_write(&dev_priv->uncore, DIGITAL_PORT_HOTPLUG_CNTRL, dig_hotplug_reg);
+	dig_hotplug_reg = intel_uncore_rmw(&dev_priv->uncore, DIGITAL_PORT_HOTPLUG_CNTRL, 0, 0);
 
 	intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
 			   hotplug_trigger, dig_hotplug_reg,
@@ -2232,8 +2220,7 @@ static void bxt_hpd_irq_handler(struct drm_i915_private *dev_priv,
 {
 	u32 dig_hotplug_reg, pin_mask = 0, long_mask = 0;
 
-	dig_hotplug_reg = intel_uncore_read(&dev_priv->uncore, PCH_PORT_HOTPLUG);
-	intel_uncore_write(&dev_priv->uncore, PCH_PORT_HOTPLUG, dig_hotplug_reg);
+	dig_hotplug_reg = intel_uncore_rmw(&dev_priv->uncore, PCH_PORT_HOTPLUG, 0, 0);
 
 	intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
 			   hotplug_trigger, dig_hotplug_reg,
@@ -2252,8 +2239,7 @@ static void gen11_hpd_irq_handler(struct drm_i915_private *dev_priv, u32 iir)
 	if (trigger_tc) {
 		u32 dig_hotplug_reg;
 
-		dig_hotplug_reg = intel_uncore_read(&dev_priv->uncore, GEN11_TC_HOTPLUG_CTL);
-		intel_uncore_write(&dev_priv->uncore, GEN11_TC_HOTPLUG_CTL, dig_hotplug_reg);
+		dig_hotplug_reg = intel_uncore_rmw(&dev_priv->uncore, GEN11_TC_HOTPLUG_CTL, 0, 0);
 
 		intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
 				   trigger_tc, dig_hotplug_reg,
@@ -2264,8 +2250,7 @@ static void gen11_hpd_irq_handler(struct drm_i915_private *dev_priv, u32 iir)
 	if (trigger_tbt) {
 		u32 dig_hotplug_reg;
 
-		dig_hotplug_reg = intel_uncore_read(&dev_priv->uncore, GEN11_TBT_HOTPLUG_CTL);
-		intel_uncore_write(&dev_priv->uncore, GEN11_TBT_HOTPLUG_CTL, dig_hotplug_reg);
+		dig_hotplug_reg = intel_uncore_rmw(&dev_priv->uncore, GEN11_TBT_HOTPLUG_CTL, 0, 0);
 
 		intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
 				   trigger_tbt, dig_hotplug_reg,
@@ -2355,8 +2340,7 @@ gen8_de_misc_irq_handler(struct drm_i915_private *dev_priv, u32 iir)
 			else
 				iir_reg = EDP_PSR_IIR;
 
-			psr_iir = intel_uncore_read(&dev_priv->uncore, iir_reg);
-			intel_uncore_write(&dev_priv->uncore, iir_reg, psr_iir);
+			psr_iir = intel_uncore_rmw(&dev_priv->uncore, iir_reg, 0, 0);
 
 			if (psr_iir)
 				found = true;
@@ -2426,8 +2410,7 @@ static void gen11_dsi_te_interrupt_handler(struct drm_i915_private *dev_priv,
 
 	/* clear TE in dsi IIR */
 	port = (te_trigger & DSI1_TE) ? PORT_B : PORT_A;
-	tmp = intel_uncore_read(&dev_priv->uncore, DSI_INTR_IDENT_REG(port));
-	intel_uncore_write(&dev_priv->uncore, DSI_INTR_IDENT_REG(port), tmp);
+	tmp = intel_uncore_rmw(&dev_priv->uncore, DSI_INTR_IDENT_REG(port), 0, 0);
 }
 
 static u32 gen8_de_pipe_flip_done_mask(struct drm_i915_private *i915)
@@ -2884,7 +2867,6 @@ static bool gen11_dsi_configure_te(struct intel_crtc *intel_crtc,
 {
 	struct drm_i915_private *dev_priv = to_i915(intel_crtc->base.dev);
 	enum port port;
-	u32 tmp;
 
 	if (!(intel_crtc->mode_flags &
 	    (I915_MODE_FLAG_DSI_USE_TE1 | I915_MODE_FLAG_DSI_USE_TE0)))
@@ -2896,16 +2878,10 @@ static bool gen11_dsi_configure_te(struct intel_crtc *intel_crtc,
 	else
 		port = PORT_A;
 
-	tmp =  intel_uncore_read(&dev_priv->uncore, DSI_INTR_MASK_REG(port));
-	if (enable)
-		tmp &= ~DSI_TE_EVENT;
-	else
-		tmp |= DSI_TE_EVENT;
-
-	intel_uncore_write(&dev_priv->uncore, DSI_INTR_MASK_REG(port), tmp);
+	intel_uncore_rmw(&dev_priv->uncore, DSI_INTR_MASK_REG(port), DSI_TE_EVENT,
+			 enable ? 0 : DSI_TE_EVENT);
 
-	tmp = intel_uncore_read(&dev_priv->uncore, DSI_INTR_IDENT_REG(port));
-	intel_uncore_write(&dev_priv->uncore, DSI_INTR_IDENT_REG(port), tmp);
+	intel_uncore_rmw(&dev_priv->uncore, DSI_INTR_IDENT_REG(port), 0, 0);
 
 	return true;
 }
@@ -3291,23 +3267,20 @@ static u32 ibx_hotplug_enables(struct drm_i915_private *i915,
 
 static void ibx_hpd_detection_setup(struct drm_i915_private *dev_priv)
 {
-	u32 hotplug;
-
 	/*
 	 * Enable digital hotplug on the PCH, and configure the DP short pulse
 	 * duration to 2ms (which is the minimum in the Display Port spec).
 	 * The pulse duration bits are reserved on LPT+.
 	 */
-	hotplug = intel_uncore_read(&dev_priv->uncore, PCH_PORT_HOTPLUG);
-	hotplug &= ~(PORTA_HOTPLUG_ENABLE |
-		     PORTB_HOTPLUG_ENABLE |
-		     PORTC_HOTPLUG_ENABLE |
-		     PORTD_HOTPLUG_ENABLE |
-		     PORTB_PULSE_DURATION_MASK |
-		     PORTC_PULSE_DURATION_MASK |
-		     PORTD_PULSE_DURATION_MASK);
-	hotplug |= intel_hpd_hotplug_enables(dev_priv, ibx_hotplug_enables);
-	intel_uncore_write(&dev_priv->uncore, PCH_PORT_HOTPLUG, hotplug);
+	intel_uncore_rmw(&dev_priv->uncore, PCH_PORT_HOTPLUG,
+			 PORTA_HOTPLUG_ENABLE |
+			 PORTB_HOTPLUG_ENABLE |
+			 PORTC_HOTPLUG_ENABLE |
+			 PORTD_HOTPLUG_ENABLE |
+			 PORTB_PULSE_DURATION_MASK |
+			 PORTC_PULSE_DURATION_MASK |
+			 PORTD_PULSE_DURATION_MASK,
+			 intel_hpd_hotplug_enables(dev_priv, ibx_hotplug_enables));
 }
 
 static void ibx_hpd_irq_setup(struct drm_i915_private *dev_priv)
@@ -3354,30 +3327,24 @@ static u32 icp_tc_hotplug_enables(struct drm_i915_private *i915,
 
 static void icp_ddi_hpd_detection_setup(struct drm_i915_private *dev_priv)
 {
-	u32 hotplug;
-
-	hotplug = intel_uncore_read(&dev_priv->uncore, SHOTPLUG_CTL_DDI);
-	hotplug &= ~(SHOTPLUG_CTL_DDI_HPD_ENABLE(HPD_PORT_A) |
-		     SHOTPLUG_CTL_DDI_HPD_ENABLE(HPD_PORT_B) |
-		     SHOTPLUG_CTL_DDI_HPD_ENABLE(HPD_PORT_C) |
-		     SHOTPLUG_CTL_DDI_HPD_ENABLE(HPD_PORT_D));
-	hotplug |= intel_hpd_hotplug_enables(dev_priv, icp_ddi_hotplug_enables);
-	intel_uncore_write(&dev_priv->uncore, SHOTPLUG_CTL_DDI, hotplug);
+	intel_uncore_rmw(&dev_priv->uncore, SHOTPLUG_CTL_DDI,
+			 SHOTPLUG_CTL_DDI_HPD_ENABLE(HPD_PORT_A) |
+			 SHOTPLUG_CTL_DDI_HPD_ENABLE(HPD_PORT_B) |
+			 SHOTPLUG_CTL_DDI_HPD_ENABLE(HPD_PORT_C) |
+			 SHOTPLUG_CTL_DDI_HPD_ENABLE(HPD_PORT_D),
+			 intel_hpd_hotplug_enables(dev_priv, icp_ddi_hotplug_enables));
 }
 
 static void icp_tc_hpd_detection_setup(struct drm_i915_private *dev_priv)
 {
-	u32 hotplug;
-
-	hotplug = intel_uncore_read(&dev_priv->uncore, SHOTPLUG_CTL_TC);
-	hotplug &= ~(ICP_TC_HPD_ENABLE(HPD_PORT_TC1) |
-		     ICP_TC_HPD_ENABLE(HPD_PORT_TC2) |
-		     ICP_TC_HPD_ENABLE(HPD_PORT_TC3) |
-		     ICP_TC_HPD_ENABLE(HPD_PORT_TC4) |
-		     ICP_TC_HPD_ENABLE(HPD_PORT_TC5) |
-		     ICP_TC_HPD_ENABLE(HPD_PORT_TC6));
-	hotplug |= intel_hpd_hotplug_enables(dev_priv, icp_tc_hotplug_enables);
-	intel_uncore_write(&dev_priv->uncore, SHOTPLUG_CTL_TC, hotplug);
+	intel_uncore_rmw(&dev_priv->uncore, SHOTPLUG_CTL_TC,
+			 ICP_TC_HPD_ENABLE(HPD_PORT_TC1) |
+			 ICP_TC_HPD_ENABLE(HPD_PORT_TC2) |
+			 ICP_TC_HPD_ENABLE(HPD_PORT_TC3) |
+			 ICP_TC_HPD_ENABLE(HPD_PORT_TC4) |
+			 ICP_TC_HPD_ENABLE(HPD_PORT_TC5) |
+			 ICP_TC_HPD_ENABLE(HPD_PORT_TC6),
+			 intel_hpd_hotplug_enables(dev_priv, icp_tc_hotplug_enables));
 }
 
 static void icp_hpd_irq_setup(struct drm_i915_private *dev_priv)
@@ -3429,46 +3396,37 @@ static void dg1_hpd_irq_setup(struct drm_i915_private *dev_priv)
 
 static void gen11_tc_hpd_detection_setup(struct drm_i915_private *dev_priv)
 {
-	u32 hotplug;
-
-	hotplug = intel_uncore_read(&dev_priv->uncore, GEN11_TC_HOTPLUG_CTL);
-	hotplug &= ~(GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC1) |
-		     GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC2) |
-		     GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC3) |
-		     GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC4) |
-		     GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC5) |
-		     GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC6));
-	hotplug |= intel_hpd_hotplug_enables(dev_priv, gen11_hotplug_enables);
-	intel_uncore_write(&dev_priv->uncore, GEN11_TC_HOTPLUG_CTL, hotplug);
+	intel_uncore_rmw(&dev_priv->uncore, GEN11_TC_HOTPLUG_CTL,
+			 GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC1) |
+			 GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC2) |
+			 GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC3) |
+			 GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC4) |
+			 GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC5) |
+			 GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC6),
+			 intel_hpd_hotplug_enables(dev_priv, gen11_hotplug_enables));
 }
 
 static void gen11_tbt_hpd_detection_setup(struct drm_i915_private *dev_priv)
 {
-	u32 hotplug;
-
-	hotplug = intel_uncore_read(&dev_priv->uncore, GEN11_TBT_HOTPLUG_CTL);
-	hotplug &= ~(GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC1) |
-		     GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC2) |
-		     GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC3) |
-		     GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC4) |
-		     GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC5) |
-		     GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC6));
-	hotplug |= intel_hpd_hotplug_enables(dev_priv, gen11_hotplug_enables);
-	intel_uncore_write(&dev_priv->uncore, GEN11_TBT_HOTPLUG_CTL, hotplug);
+	intel_uncore_rmw(&dev_priv->uncore, GEN11_TBT_HOTPLUG_CTL,
+			 GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC1) |
+			 GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC2) |
+			 GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC3) |
+			 GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC4) |
+			 GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC5) |
+			 GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC6),
+			 intel_hpd_hotplug_enables(dev_priv, gen11_hotplug_enables));
 }
 
 static void gen11_hpd_irq_setup(struct drm_i915_private *dev_priv)
 {
 	u32 hotplug_irqs, enabled_irqs;
-	u32 val;
 
 	enabled_irqs = intel_hpd_enabled_irqs(dev_priv, dev_priv->display.hotplug.hpd);
 	hotplug_irqs = intel_hpd_hotplug_irqs(dev_priv, dev_priv->display.hotplug.hpd);
 
-	val = intel_uncore_read(&dev_priv->uncore, GEN11_DE_HPD_IMR);
-	val &= ~hotplug_irqs;
-	val |= ~enabled_irqs & hotplug_irqs;
-	intel_uncore_write(&dev_priv->uncore, GEN11_DE_HPD_IMR, val);
+	intel_uncore_rmw(&dev_priv->uncore, GEN11_DE_HPD_IMR, hotplug_irqs,
+		         ~enabled_irqs & hotplug_irqs);
 	intel_uncore_posting_read(&dev_priv->uncore, GEN11_DE_HPD_IMR);
 
 	gen11_tc_hpd_detection_setup(dev_priv);
@@ -3508,29 +3466,22 @@ static u32 spt_hotplug2_enables(struct drm_i915_private *i915,
 
 static void spt_hpd_detection_setup(struct drm_i915_private *dev_priv)
 {
-	u32 val, hotplug;
-
 	/* Display WA #1179 WaHardHangonHotPlug: cnp */
 	if (HAS_PCH_CNP(dev_priv)) {
-		val = intel_uncore_read(&dev_priv->uncore, SOUTH_CHICKEN1);
-		val &= ~CHASSIS_CLK_REQ_DURATION_MASK;
-		val |= CHASSIS_CLK_REQ_DURATION(0xf);
-		intel_uncore_write(&dev_priv->uncore, SOUTH_CHICKEN1, val);
+		intel_uncore_rmw(&dev_priv->uncore, SOUTH_CHICKEN1, CHASSIS_CLK_REQ_DURATION_MASK,
+				 CHASSIS_CLK_REQ_DURATION(0xf));
 	}
 
 	/* Enable digital hotplug on the PCH */
-	hotplug = intel_uncore_read(&dev_priv->uncore, PCH_PORT_HOTPLUG);
-	hotplug &= ~(PORTA_HOTPLUG_ENABLE |
-		     PORTB_HOTPLUG_ENABLE |
-		     PORTC_HOTPLUG_ENABLE |
-		     PORTD_HOTPLUG_ENABLE);
-	hotplug |= intel_hpd_hotplug_enables(dev_priv, spt_hotplug_enables);
-	intel_uncore_write(&dev_priv->uncore, PCH_PORT_HOTPLUG, hotplug);
+	intel_uncore_rmw(&dev_priv->uncore, PCH_PORT_HOTPLUG,
+			 PORTA_HOTPLUG_ENABLE |
+			 PORTB_HOTPLUG_ENABLE |
+			 PORTC_HOTPLUG_ENABLE |
+			 PORTD_HOTPLUG_ENABLE,
+			 intel_hpd_hotplug_enables(dev_priv, spt_hotplug_enables));
 
-	hotplug = intel_uncore_read(&dev_priv->uncore, PCH_PORT_HOTPLUG2);
-	hotplug &= ~PORTE_HOTPLUG_ENABLE;
-	hotplug |= intel_hpd_hotplug_enables(dev_priv, spt_hotplug2_enables);
-	intel_uncore_write(&dev_priv->uncore, PCH_PORT_HOTPLUG2, hotplug);
+	intel_uncore_rmw(&dev_priv->uncore, PCH_PORT_HOTPLUG2, PORTE_HOTPLUG_ENABLE,
+			 intel_hpd_hotplug_enables(dev_priv, spt_hotplug2_enables));
 }
 
 static void spt_hpd_irq_setup(struct drm_i915_private *dev_priv)
@@ -3562,18 +3513,14 @@ static u32 ilk_hotplug_enables(struct drm_i915_private *i915,
 
 static void ilk_hpd_detection_setup(struct drm_i915_private *dev_priv)
 {
-	u32 hotplug;
-
 	/*
 	 * Enable digital hotplug on the CPU, and configure the DP short pulse
 	 * duration to 2ms (which is the minimum in the Display Port spec)
 	 * The pulse duration bits are reserved on HSW+.
 	 */
-	hotplug = intel_uncore_read(&dev_priv->uncore, DIGITAL_PORT_HOTPLUG_CNTRL);
-	hotplug &= ~(DIGITAL_PORTA_HOTPLUG_ENABLE |
-		     DIGITAL_PORTA_PULSE_DURATION_MASK);
-	hotplug |= intel_hpd_hotplug_enables(dev_priv, ilk_hotplug_enables);
-	intel_uncore_write(&dev_priv->uncore, DIGITAL_PORT_HOTPLUG_CNTRL, hotplug);
+	intel_uncore_rmw(&dev_priv->uncore, DIGITAL_PORT_HOTPLUG_CNTRL,
+			 DIGITAL_PORTA_HOTPLUG_ENABLE | DIGITAL_PORTA_PULSE_DURATION_MASK,
+			 intel_hpd_hotplug_enables(dev_priv, ilk_hotplug_enables));
 }
 
 static void ilk_hpd_irq_setup(struct drm_i915_private *dev_priv)
@@ -3621,17 +3568,12 @@ static u32 bxt_hotplug_enables(struct drm_i915_private *i915,
 
 static void bxt_hpd_detection_setup(struct drm_i915_private *dev_priv)
 {
-	u32 hotplug;
-
-	hotplug = intel_uncore_read(&dev_priv->uncore, PCH_PORT_HOTPLUG);
-	hotplug &= ~(PORTA_HOTPLUG_ENABLE |
-		     PORTB_HOTPLUG_ENABLE |
-		     PORTC_HOTPLUG_ENABLE |
-		     BXT_DDIA_HPD_INVERT |
-		     BXT_DDIB_HPD_INVERT |
-		     BXT_DDIC_HPD_INVERT);
-	hotplug |= intel_hpd_hotplug_enables(dev_priv, bxt_hotplug_enables);
-	intel_uncore_write(&dev_priv->uncore, PCH_PORT_HOTPLUG, hotplug);
+	intel_uncore_rmw(&dev_priv->uncore, PCH_PORT_HOTPLUG,
+			 PORTA_HOTPLUG_ENABLE |
+			 PORTB_HOTPLUG_ENABLE |
+			 PORTC_HOTPLUG_ENABLE |
+			 BXT_DDI_HPD_INVERT_MASK,
+			 intel_hpd_hotplug_enables(dev_priv, bxt_hotplug_enables));
 }
 
 static void bxt_hpd_irq_setup(struct drm_i915_private *dev_priv)
@@ -4011,9 +3953,7 @@ static void i9xx_error_irq_ack(struct drm_i915_private *dev_priv,
 {
 	u32 emr;
 
-	*eir = intel_uncore_read(&dev_priv->uncore, EIR);
-
-	intel_uncore_write(&dev_priv->uncore, EIR, *eir);
+	*eir = intel_uncore_rmw(&dev_priv->uncore, EIR, 0, 0);
 
 	*eir_stuck = intel_uncore_read(&dev_priv->uncore, EIR);
 	if (*eir_stuck == 0)
@@ -4029,8 +3969,7 @@ static void i9xx_error_irq_ack(struct drm_i915_private *dev_priv,
 	 * (or by a GPU reset) so we mask any bit that
 	 * remains set.
 	 */
-	emr = intel_uncore_read(&dev_priv->uncore, EMR);
-	intel_uncore_write(&dev_priv->uncore, EMR, 0xffffffff);
+	emr = intel_uncore_rmw(&dev_priv->uncore, EMR, ~0, 0xffffffff);
 	intel_uncore_write(&dev_priv->uncore, EMR, emr | *eir_stuck);
 }
 
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 2595ec5aeb77f6..c07c97f4036abd 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -885,38 +885,28 @@ static void pnv_update_wm(struct drm_i915_private *dev_priv)
 		wm = intel_calculate_wm(pixel_rate, &pnv_display_wm,
 					pnv_display_wm.fifo_size,
 					cpp, latency->display_sr);
-		reg = intel_uncore_read(&dev_priv->uncore, DSPFW1);
-		reg &= ~DSPFW_SR_MASK;
-		reg |= FW_WM(wm, SR);
-		intel_uncore_write(&dev_priv->uncore, DSPFW1, reg);
+		intel_uncore_rmw(&dev_priv->uncore, DSPFW1, DSPFW_SR_MASK, FW_WM(wm, SR));
 		drm_dbg_kms(&dev_priv->drm, "DSPFW1 register is %x\n", reg);
 
 		/* cursor SR */
 		wm = intel_calculate_wm(pixel_rate, &pnv_cursor_wm,
 					pnv_display_wm.fifo_size,
 					4, latency->cursor_sr);
-		reg = intel_uncore_read(&dev_priv->uncore, DSPFW3);
-		reg &= ~DSPFW_CURSOR_SR_MASK;
-		reg |= FW_WM(wm, CURSOR_SR);
-		intel_uncore_write(&dev_priv->uncore, DSPFW3, reg);
+		intel_uncore_rmw(&dev_priv->uncore, DSPFW3, DSPFW_CURSOR_SR_MASK,
+				 FW_WM(wm, CURSOR_SR));
 
 		/* Display HPLL off SR */
 		wm = intel_calculate_wm(pixel_rate, &pnv_display_hplloff_wm,
 					pnv_display_hplloff_wm.fifo_size,
 					cpp, latency->display_hpll_disable);
-		reg = intel_uncore_read(&dev_priv->uncore, DSPFW3);
-		reg &= ~DSPFW_HPLL_SR_MASK;
-		reg |= FW_WM(wm, HPLL_SR);
-		intel_uncore_write(&dev_priv->uncore, DSPFW3, reg);
+		intel_uncore_rmw(&dev_priv->uncore, DSPFW3, DSPFW_HPLL_SR_MASK, FW_WM(wm, HPLL_SR));
 
 		/* cursor HPLL off SR */
 		wm = intel_calculate_wm(pixel_rate, &pnv_cursor_hplloff_wm,
 					pnv_display_hplloff_wm.fifo_size,
 					4, latency->cursor_hpll_disable);
-		reg = intel_uncore_read(&dev_priv->uncore, DSPFW3);
-		reg &= ~DSPFW_HPLL_CURSOR_MASK;
-		reg |= FW_WM(wm, HPLL_CURSOR);
-		intel_uncore_write(&dev_priv->uncore, DSPFW3, reg);
+		intel_uncore_rmw(&dev_priv->uncore, DSPFW3, DSPFW_HPLL_CURSOR_MASK,
+				 FW_WM(wm, HPLL_CURSOR));
 		drm_dbg_kms(&dev_priv->drm, "DSPFW3 register is %x\n", reg);
 
 		intel_set_memory_cxsr(dev_priv, true);
@@ -3480,7 +3470,6 @@ static void ilk_write_wm_values(struct drm_i915_private *dev_priv,
 {
 	struct ilk_wm_values *previous = &dev_priv->display.wm.hw;
 	unsigned int dirty;
-	u32 val;
 
 	dirty = ilk_compute_wm_dirty(dev_priv, previous, results);
 	if (!dirty)
@@ -3497,29 +3486,17 @@ static void ilk_write_wm_values(struct drm_i915_private *dev_priv,
 
 	if (dirty & WM_DIRTY_DDB) {
 		if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv)) {
-			val = intel_uncore_read(&dev_priv->uncore, WM_MISC);
-			if (results->partitioning == INTEL_DDB_PART_1_2)
-				val &= ~WM_MISC_DATA_PARTITION_5_6;
-			else
-				val |= WM_MISC_DATA_PARTITION_5_6;
-			intel_uncore_write(&dev_priv->uncore, WM_MISC, val);
+			intel_uncore_rmw(&dev_priv->uncore, WM_MISC, WM_MISC_DATA_PARTITION_5_6,
+					 results->partitioning == INTEL_DDB_PART_1_2 ? 0 : WM_MISC_DATA_PARTITION_5_6);
 		} else {
-			val = intel_uncore_read(&dev_priv->uncore, DISP_ARB_CTL2);
-			if (results->partitioning == INTEL_DDB_PART_1_2)
-				val &= ~DISP_DATA_PARTITION_5_6;
-			else
-				val |= DISP_DATA_PARTITION_5_6;
-			intel_uncore_write(&dev_priv->uncore, DISP_ARB_CTL2, val);
+			intel_uncore_rmw(&dev_priv->uncore, DISP_ARB_CTL2, DISP_DATA_PARTITION_5_6,
+					 results->partitioning == INTEL_DDB_PART_1_2 ? 0 : DISP_DATA_PARTITION_5_6);
 		}
 	}
 
 	if (dirty & WM_DIRTY_FBC) {
-		val = intel_uncore_read(&dev_priv->uncore, DISP_ARB_CTL);
-		if (results->enable_fbc_wm)
-			val &= ~DISP_FBC_WM_DIS;
-		else
-			val |= DISP_FBC_WM_DIS;
-		intel_uncore_write(&dev_priv->uncore, DISP_ARB_CTL, val);
+		intel_uncore_rmw(&dev_priv->uncore, DISP_ARB_CTL, DISP_FBC_WM_DIS,
+				 results->enable_fbc_wm ? 0 : DISP_FBC_WM_DIS);
 	}
 
 	if (dirty & WM_DIRTY_LP(1) &&
@@ -4339,8 +4316,8 @@ static void gen8_set_l3sqc_credits(struct drm_i915_private *dev_priv,
 	u32 val;
 
 	/* WaTempDisableDOPClkGating:bdw */
-	misccpctl = intel_uncore_read(&dev_priv->uncore, GEN7_MISCCPCTL);
-	intel_uncore_write(&dev_priv->uncore, GEN7_MISCCPCTL, misccpctl & ~GEN7_DOP_CLOCK_GATE_ENABLE);
+	misccpctl = intel_uncore_rmw(&dev_priv->uncore, GEN7_MISCCPCTL, ~GEN7_DOP_CLOCK_GATE_ENABLE,
+				     0);
 
 	val = intel_uncore_read(&dev_priv->uncore, GEN8_L3SQCREG1);
 	val &= ~L3_PRIO_CREDITS_MASK;
@@ -4619,8 +4596,6 @@ static void hsw_init_clock_gating(struct drm_i915_private *dev_priv)
 
 static void ivb_init_clock_gating(struct drm_i915_private *dev_priv)
 {
-	u32 snpcr;
-
 	intel_uncore_write(&dev_priv->uncore, ILK_DSPCLK_GATE_D, ILK_VRHUNIT_CLOCK_GATE_DISABLE);
 
 	/* WaFbcAsynchFlipDisableFbcQueue:ivb */
@@ -4658,10 +4633,8 @@ static void ivb_init_clock_gating(struct drm_i915_private *dev_priv)
 
 	g4x_disable_trickle_feed(dev_priv);
 
-	snpcr = intel_uncore_read(&dev_priv->uncore, GEN6_MBCUNIT_SNPCR);
-	snpcr &= ~GEN6_MBC_SNPCR_MASK;
-	snpcr |= GEN6_MBC_SNPCR_MED;
-	intel_uncore_write(&dev_priv->uncore, GEN6_MBCUNIT_SNPCR, snpcr);
+	intel_uncore_rmw(&dev_priv->uncore, GEN6_MBCUNIT_SNPCR, GEN6_MBC_SNPCR_MASK,
+			 GEN6_MBC_SNPCR_MED);
 
 	if (!HAS_PCH_NOP(dev_priv))
 		cpt_init_clock_gating(dev_priv);
diff --git a/drivers/gpu/drm/i915/vlv_suspend.c b/drivers/gpu/drm/i915/vlv_suspend.c
index 664fde244f59b0..02e63ed77f608d 100644
--- a/drivers/gpu/drm/i915/vlv_suspend.c
+++ b/drivers/gpu/drm/i915/vlv_suspend.c
@@ -194,7 +194,6 @@ static void vlv_restore_gunit_s0ix_state(struct drm_i915_private *i915)
 {
 	struct vlv_s0ix_state *s = i915->vlv_s0ix_state;
 	struct intel_uncore *uncore = &i915->uncore;
-	u32 val;
 	int i;
 
 	if (!s)
@@ -262,15 +261,11 @@ static void vlv_restore_gunit_s0ix_state(struct drm_i915_private *i915)
 	 * be restored, as they are used to control the s0ix suspend/resume
 	 * sequence by the caller.
 	 */
-	val = intel_uncore_read(uncore, VLV_GTLC_WAKE_CTRL);
-	val &= VLV_GTLC_ALLOWWAKEREQ;
-	val |= s->gtlc_wake_ctrl & ~VLV_GTLC_ALLOWWAKEREQ;
-	intel_uncore_write(uncore, VLV_GTLC_WAKE_CTRL, val);
+	intel_uncore_rmw(uncore, VLV_GTLC_WAKE_CTRL, ~VLV_GTLC_ALLOWWAKEREQ,
+			 s->gtlc_wake_ctrl & ~VLV_GTLC_ALLOWWAKEREQ);
 
-	val = intel_uncore_read(uncore, VLV_GTLC_SURVIVABILITY_REG);
-	val &= VLV_GFX_CLK_FORCE_ON_BIT;
-	val |= s->gtlc_survive & ~VLV_GFX_CLK_FORCE_ON_BIT;
-	intel_uncore_write(uncore, VLV_GTLC_SURVIVABILITY_REG, val);
+	intel_uncore_rmw(uncore, VLV_GTLC_SURVIVABILITY_REG, ~VLV_GFX_CLK_FORCE_ON_BIT,
+			 s->gtlc_survive & ~VLV_GFX_CLK_FORCE_ON_BIT);
 
 	intel_uncore_write(uncore, VLV_PMWGICZ, s->pmwgicz);
 
@@ -308,14 +303,10 @@ static int vlv_wait_for_pw_status(struct drm_i915_private *i915,
 static int vlv_force_gfx_clock(struct drm_i915_private *i915, bool force_on)
 {
 	struct intel_uncore *uncore = &i915->uncore;
-	u32 val;
 	int err;
 
-	val = intel_uncore_read(uncore, VLV_GTLC_SURVIVABILITY_REG);
-	val &= ~VLV_GFX_CLK_FORCE_ON_BIT;
-	if (force_on)
-		val |= VLV_GFX_CLK_FORCE_ON_BIT;
-	intel_uncore_write(uncore, VLV_GTLC_SURVIVABILITY_REG, val);
+	intel_uncore_rmw(uncore, VLV_GTLC_SURVIVABILITY_REG, VLV_GFX_CLK_FORCE_ON_BIT,
+			 force_on ? VLV_GFX_CLK_FORCE_ON_BIT : 0);
 
 	if (!force_on)
 		return 0;
@@ -340,11 +331,8 @@ static int vlv_allow_gt_wake(struct drm_i915_private *i915, bool allow)
 	u32 val;
 	int err;
 
-	val = intel_uncore_read(uncore, VLV_GTLC_WAKE_CTRL);
-	val &= ~VLV_GTLC_ALLOWWAKEREQ;
-	if (allow)
-		val |= VLV_GTLC_ALLOWWAKEREQ;
-	intel_uncore_write(uncore, VLV_GTLC_WAKE_CTRL, val);
+	intel_uncore_rmw(uncore, VLV_GTLC_WAKE_CTRL, VLV_GTLC_ALLOWWAKEREQ,
+			 allow ? VLV_GTLC_ALLOWWAKEREQ : 0);
 	intel_uncore_posting_read(uncore, VLV_GTLC_WAKE_CTRL);
 
 	mask = VLV_GTLC_ALLOWWAKEACK;
-- 
2.34.1

