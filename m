Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5850489FD69
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Apr 2024 18:51:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82D8A10E6D6;
	Wed, 10 Apr 2024 16:51:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VQS36lO/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B50E010E67F
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Apr 2024 16:50:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712767860; x=1744303860;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=kq5tQRO2p/GFoH1BAv4iy+DWbk4AlaPNWVSBdi02bBA=;
 b=VQS36lO/XIA4nqadwM7J62nfGr3cKqI2Ee7FTxHNFrpY08rdaEzeL2Jo
 RXYlrILnmXXtomxvZ314ZBmJsVY80CkdfWpvRVpUzZK4h8w8k4M+I1bBM
 pChPGc0uq9wA5S5+RBPlh22SyhuObrIZo+dgPmELVB78D9qLEzGzzbqEz
 5w7KI/EnWZvmqHZezUBTCAXPICrlJqy9rtWAuGvkS3nyhnXZzwwroYc1m
 XgOK2RyxqRMaOdWeRs6Nd/OBdgsy//3HOshQmvgbOjSl/35GtipiulbLf
 9o0RHLCcf07vj0ecRfuaDCzPtHUgnzQyd9PhZowNw/3n2KWTSXTfj1z/W Q==;
X-CSE-ConnectionGUID: 6clHCGDVSlCq74FtF0QzCw==
X-CSE-MsgGUID: mE7h6jUfR/O3opLEC4j5VA==
X-IronPort-AV: E=McAfee;i="6600,9927,11039"; a="25658458"
X-IronPort-AV: E=Sophos;i="6.07,190,1708416000"; d="scan'208";a="25658458"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2024 09:50:59 -0700
X-CSE-ConnectionGUID: mBfL1SHbTWmU1E/hZccueg==
X-CSE-MsgGUID: u4MWXT3RRwur4TXDm7ynBA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,190,1708416000"; d="scan'208";a="58044287"
Received: from oakasatk-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.60.54])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2024 09:50:57 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH] drm/i915/pps: pass display to PPS register macros
Date: Wed, 10 Apr 2024 19:50:52 +0300
Message-Id: <20240410165052.234695-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Pass struct intel_display pointer to PPS register macros intead of
implicitly relying on the dev_priv local variable.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>

---

Mostly see how this feels. Might be better to wait for [1] to land so we
could more easily pass display pointer everywhere.

[1] https://lore.kernel.org/r/cover.1712665176.git.jani.nikula@intel.com
---
 .../drm/i915/display/intel_display_power.c    |  2 +-
 drivers/gpu/drm/i915/display/intel_dsi_vbt.c  |  4 +--
 drivers/gpu/drm/i915/display/intel_lvds.c     | 32 +++++++++++--------
 drivers/gpu/drm/i915/display/intel_pps.c      | 32 ++++++++++---------
 drivers/gpu/drm/i915/display/intel_pps_regs.h | 16 +++++-----
 5 files changed, 46 insertions(+), 40 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 6fd4fa52253a..1ebdc8527f7f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -1213,7 +1213,7 @@ static void assert_can_disable_lcpll(struct drm_i915_private *dev_priv)
 			intel_de_read(dev_priv, WRPLL_CTL(1)) & WRPLL_PLL_ENABLE,
 			"WRPLL2 enabled\n");
 	I915_STATE_WARN(dev_priv,
-			intel_de_read(dev_priv, PP_STATUS(0)) & PP_ON,
+			intel_de_read(dev_priv, PP_STATUS(&dev_priv->display, 0)) & PP_ON,
 			"Panel power on\n");
 	I915_STATE_WARN(dev_priv,
 			intel_de_read(dev_priv, BLC_PWM_CPU_CTL2) & BLM_PWM_ENABLE,
diff --git a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
index a5d7fc8418c9..97dd1fc7fdba 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
+++ b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
@@ -353,14 +353,14 @@ static void icl_native_gpio_set_value(struct drm_i915_private *dev_priv,
 	case MIPI_AVDD_EN_2:
 		index = gpio == MIPI_AVDD_EN_1 ? 0 : 1;
 
-		intel_de_rmw(dev_priv, PP_CONTROL(index), PANEL_POWER_ON,
+		intel_de_rmw(dev_priv, PP_CONTROL(&dev_priv->display, index), PANEL_POWER_ON,
 			     value ? PANEL_POWER_ON : 0);
 		break;
 	case MIPI_BKLT_EN_1:
 	case MIPI_BKLT_EN_2:
 		index = gpio == MIPI_BKLT_EN_1 ? 0 : 1;
 
-		intel_de_rmw(dev_priv, PP_CONTROL(index), EDP_BLC_ENABLE,
+		intel_de_rmw(dev_priv, PP_CONTROL(&dev_priv->display, index), EDP_BLC_ENABLE,
 			     value ? EDP_BLC_ENABLE : 0);
 		break;
 	case MIPI_AVEE_EN_1:
diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index 8b8959073466..5edc5e8da19b 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -159,20 +159,21 @@ static void intel_lvds_get_config(struct intel_encoder *encoder,
 static void intel_lvds_pps_get_hw_state(struct drm_i915_private *dev_priv,
 					struct intel_lvds_pps *pps)
 {
+	struct intel_display *display = &dev_priv->display;
 	u32 val;
 
-	pps->powerdown_on_reset = intel_de_read(dev_priv, PP_CONTROL(0)) & PANEL_POWER_RESET;
+	pps->powerdown_on_reset = intel_de_read(dev_priv, PP_CONTROL(display, 0)) & PANEL_POWER_RESET;
 
-	val = intel_de_read(dev_priv, PP_ON_DELAYS(0));
+	val = intel_de_read(dev_priv, PP_ON_DELAYS(display, 0));
 	pps->port = REG_FIELD_GET(PANEL_PORT_SELECT_MASK, val);
 	pps->t1_t2 = REG_FIELD_GET(PANEL_POWER_UP_DELAY_MASK, val);
 	pps->t5 = REG_FIELD_GET(PANEL_LIGHT_ON_DELAY_MASK, val);
 
-	val = intel_de_read(dev_priv, PP_OFF_DELAYS(0));
+	val = intel_de_read(dev_priv, PP_OFF_DELAYS(display, 0));
 	pps->t3 = REG_FIELD_GET(PANEL_POWER_DOWN_DELAY_MASK, val);
 	pps->tx = REG_FIELD_GET(PANEL_LIGHT_OFF_DELAY_MASK, val);
 
-	val = intel_de_read(dev_priv, PP_DIVISOR(0));
+	val = intel_de_read(dev_priv, PP_DIVISOR(display, 0));
 	pps->divider = REG_FIELD_GET(PP_REFERENCE_DIVIDER_MASK, val);
 	val = REG_FIELD_GET(PANEL_POWER_CYCLE_DELAY_MASK, val);
 	/*
@@ -207,25 +208,26 @@ static void intel_lvds_pps_get_hw_state(struct drm_i915_private *dev_priv,
 static void intel_lvds_pps_init_hw(struct drm_i915_private *dev_priv,
 				   struct intel_lvds_pps *pps)
 {
+	struct intel_display *display = &dev_priv->display;
 	u32 val;
 
-	val = intel_de_read(dev_priv, PP_CONTROL(0));
+	val = intel_de_read(dev_priv, PP_CONTROL(display, 0));
 	drm_WARN_ON(&dev_priv->drm,
 		    (val & PANEL_UNLOCK_MASK) != PANEL_UNLOCK_REGS);
 	if (pps->powerdown_on_reset)
 		val |= PANEL_POWER_RESET;
-	intel_de_write(dev_priv, PP_CONTROL(0), val);
+	intel_de_write(dev_priv, PP_CONTROL(display, 0), val);
 
-	intel_de_write(dev_priv, PP_ON_DELAYS(0),
+	intel_de_write(dev_priv, PP_ON_DELAYS(display, 0),
 		       REG_FIELD_PREP(PANEL_PORT_SELECT_MASK, pps->port) |
 		       REG_FIELD_PREP(PANEL_POWER_UP_DELAY_MASK, pps->t1_t2) |
 		       REG_FIELD_PREP(PANEL_LIGHT_ON_DELAY_MASK, pps->t5));
 
-	intel_de_write(dev_priv, PP_OFF_DELAYS(0),
+	intel_de_write(dev_priv, PP_OFF_DELAYS(display, 0),
 		       REG_FIELD_PREP(PANEL_POWER_DOWN_DELAY_MASK, pps->t3) |
 		       REG_FIELD_PREP(PANEL_LIGHT_OFF_DELAY_MASK, pps->tx));
 
-	intel_de_write(dev_priv, PP_DIVISOR(0),
+	intel_de_write(dev_priv, PP_DIVISOR(display, 0),
 		       REG_FIELD_PREP(PP_REFERENCE_DIVIDER_MASK, pps->divider) |
 		       REG_FIELD_PREP(PANEL_POWER_CYCLE_DELAY_MASK, DIV_ROUND_UP(pps->t4, 1000) + 1));
 }
@@ -318,13 +320,14 @@ static void intel_enable_lvds(struct intel_atomic_state *state,
 {
 	struct intel_lvds_encoder *lvds_encoder = to_lvds_encoder(encoder);
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_display *display = &dev_priv->display;
 
 	intel_de_rmw(dev_priv, lvds_encoder->reg, 0, LVDS_PORT_EN);
 
-	intel_de_rmw(dev_priv, PP_CONTROL(0), 0, PANEL_POWER_ON);
+	intel_de_rmw(dev_priv, PP_CONTROL(display, 0), 0, PANEL_POWER_ON);
 	intel_de_posting_read(dev_priv, lvds_encoder->reg);
 
-	if (intel_de_wait_for_set(dev_priv, PP_STATUS(0), PP_ON, 5000))
+	if (intel_de_wait_for_set(dev_priv, PP_STATUS(display, 0), PP_ON, 5000))
 		drm_err(&dev_priv->drm,
 			"timed out waiting for panel to power on\n");
 
@@ -338,9 +341,10 @@ static void intel_disable_lvds(struct intel_atomic_state *state,
 {
 	struct intel_lvds_encoder *lvds_encoder = to_lvds_encoder(encoder);
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_display *display = &dev_priv->display;
 
-	intel_de_rmw(dev_priv, PP_CONTROL(0), PANEL_POWER_ON, 0);
-	if (intel_de_wait_for_clear(dev_priv, PP_STATUS(0), PP_ON, 1000))
+	intel_de_rmw(dev_priv, PP_CONTROL(display, 0), PANEL_POWER_ON, 0);
+	if (intel_de_wait_for_clear(dev_priv, PP_STATUS(display, 0), PP_ON, 1000))
 		drm_err(&dev_priv->drm,
 			"timed out waiting for panel to power off\n");
 
@@ -379,7 +383,7 @@ static void intel_lvds_shutdown(struct intel_encoder *encoder)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 
-	if (intel_de_wait_for_clear(dev_priv, PP_STATUS(0), PP_CYCLE_DELAY_ACTIVE, 5000))
+	if (intel_de_wait_for_clear(dev_priv, PP_STATUS(&dev_priv->display, 0), PP_CYCLE_DELAY_ACTIVE, 5000))
 		drm_err(&dev_priv->drm,
 			"timed out waiting for panel power cycle delay\n");
 }
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 3078dfac7817..78986cbedd2e 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -272,12 +272,12 @@ typedef bool (*pps_check)(struct drm_i915_private *dev_priv, int pps_idx);
 
 static bool pps_has_pp_on(struct drm_i915_private *dev_priv, int pps_idx)
 {
-	return intel_de_read(dev_priv, PP_STATUS(pps_idx)) & PP_ON;
+	return intel_de_read(dev_priv, PP_STATUS(&dev_priv->display, pps_idx)) & PP_ON;
 }
 
 static bool pps_has_vdd_on(struct drm_i915_private *dev_priv, int pps_idx)
 {
-	return intel_de_read(dev_priv, PP_CONTROL(pps_idx)) & EDP_FORCE_VDD;
+	return intel_de_read(dev_priv, PP_CONTROL(&dev_priv->display, pps_idx)) & EDP_FORCE_VDD;
 }
 
 static bool pps_any(struct drm_i915_private *dev_priv, int pps_idx)
@@ -292,7 +292,7 @@ vlv_initial_pps_pipe(struct drm_i915_private *dev_priv,
 	enum pipe pipe;
 
 	for (pipe = PIPE_A; pipe <= PIPE_B; pipe++) {
-		u32 port_sel = intel_de_read(dev_priv, PP_ON_DELAYS(pipe)) &
+		u32 port_sel = intel_de_read(dev_priv, PP_ON_DELAYS(&dev_priv->display, pipe)) &
 			PANEL_PORT_SELECT_MASK;
 
 		if (port_sel != PANEL_PORT_SELECT_VLV(port))
@@ -480,6 +480,7 @@ static void intel_pps_get_registers(struct intel_dp *intel_dp,
 				    struct pps_registers *regs)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct intel_display *display = &dev_priv->display;
 	int pps_idx;
 
 	memset(regs, 0, sizeof(*regs));
@@ -491,17 +492,17 @@ static void intel_pps_get_registers(struct intel_dp *intel_dp,
 	else
 		pps_idx = intel_dp->pps.pps_idx;
 
-	regs->pp_ctrl = PP_CONTROL(pps_idx);
-	regs->pp_stat = PP_STATUS(pps_idx);
-	regs->pp_on = PP_ON_DELAYS(pps_idx);
-	regs->pp_off = PP_OFF_DELAYS(pps_idx);
+	regs->pp_ctrl = PP_CONTROL(display, pps_idx);
+	regs->pp_stat = PP_STATUS(display, pps_idx);
+	regs->pp_on = PP_ON_DELAYS(display, pps_idx);
+	regs->pp_off = PP_OFF_DELAYS(display, pps_idx);
 
 	/* Cycle delay moved from PP_DIVISOR to PP_CONTROL */
 	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv) ||
 	    INTEL_PCH_TYPE(dev_priv) >= PCH_CNP)
 		regs->pp_div = INVALID_MMIO_REG;
 	else
-		regs->pp_div = PP_DIVISOR(pps_idx);
+		regs->pp_div = PP_DIVISOR(display, pps_idx);
 }
 
 static i915_reg_t
@@ -1111,7 +1112,7 @@ static void vlv_detach_power_sequencer(struct intel_dp *intel_dp)
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	struct drm_i915_private *dev_priv = to_i915(dig_port->base.base.dev);
 	enum pipe pipe = intel_dp->pps.pps_pipe;
-	i915_reg_t pp_on_reg = PP_ON_DELAYS(pipe);
+	i915_reg_t pp_on_reg = PP_ON_DELAYS(&dev_priv->display, pipe);
 
 	drm_WARN_ON(&dev_priv->drm, intel_dp->pps.active_pipe != INVALID_PIPE);
 
@@ -1656,7 +1657,7 @@ void intel_pps_unlock_regs_wa(struct drm_i915_private *dev_priv)
 	pps_num = intel_num_pps(dev_priv);
 
 	for (pps_idx = 0; pps_idx < pps_num; pps_idx++)
-		intel_de_rmw(dev_priv, PP_CONTROL(pps_idx),
+		intel_de_rmw(dev_priv, PP_CONTROL(&dev_priv->display, pps_idx),
 			     PANEL_UNLOCK_MASK, PANEL_UNLOCK_REGS);
 }
 
@@ -1703,6 +1704,7 @@ void intel_pps_connector_debugfs_add(struct intel_connector *connector)
 
 void assert_pps_unlocked(struct drm_i915_private *dev_priv, enum pipe pipe)
 {
+	struct intel_display *display = &dev_priv->display;
 	i915_reg_t pp_reg;
 	u32 val;
 	enum pipe panel_pipe = INVALID_PIPE;
@@ -1714,8 +1716,8 @@ void assert_pps_unlocked(struct drm_i915_private *dev_priv, enum pipe pipe)
 	if (HAS_PCH_SPLIT(dev_priv)) {
 		u32 port_sel;
 
-		pp_reg = PP_CONTROL(0);
-		port_sel = intel_de_read(dev_priv, PP_ON_DELAYS(0)) & PANEL_PORT_SELECT_MASK;
+		pp_reg = PP_CONTROL(display, 0);
+		port_sel = intel_de_read(dev_priv, PP_ON_DELAYS(display, 0)) & PANEL_PORT_SELECT_MASK;
 
 		switch (port_sel) {
 		case PANEL_PORT_SELECT_LVDS:
@@ -1736,13 +1738,13 @@ void assert_pps_unlocked(struct drm_i915_private *dev_priv, enum pipe pipe)
 		}
 	} else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
 		/* presumably write lock depends on pipe, not port select */
-		pp_reg = PP_CONTROL(pipe);
+		pp_reg = PP_CONTROL(display, pipe);
 		panel_pipe = pipe;
 	} else {
 		u32 port_sel;
 
-		pp_reg = PP_CONTROL(0);
-		port_sel = intel_de_read(dev_priv, PP_ON_DELAYS(0)) & PANEL_PORT_SELECT_MASK;
+		pp_reg = PP_CONTROL(display, 0);
+		port_sel = intel_de_read(dev_priv, PP_ON_DELAYS(display, 0)) & PANEL_PORT_SELECT_MASK;
 
 		drm_WARN_ON(&dev_priv->drm,
 			    port_sel != PANEL_PORT_SELECT_LVDS);
diff --git a/drivers/gpu/drm/i915/display/intel_pps_regs.h b/drivers/gpu/drm/i915/display/intel_pps_regs.h
index 60edd2a27100..d9a51ff68906 100644
--- a/drivers/gpu/drm/i915/display/intel_pps_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_pps_regs.h
@@ -13,12 +13,12 @@
 #define VLV_PPS_BASE			(VLV_DISPLAY_BASE + PPS_BASE)
 #define PCH_PPS_BASE			0xC7200
 
-#define _MMIO_PPS(pps_idx, reg)		_MMIO(dev_priv->display.pps.mmio_base -	\
-					      PPS_BASE + (reg) +	\
-					      (pps_idx) * 0x100)
+#define _MMIO_PPS(display, pps_idx, reg)	_MMIO((display)->pps.mmio_base - \
+						      PPS_BASE + (reg) + \
+						      (pps_idx) * 0x100)
 
 #define _PP_STATUS			0x61200
-#define PP_STATUS(pps_idx)		_MMIO_PPS(pps_idx, _PP_STATUS)
+#define PP_STATUS(display, pps_idx)	_MMIO_PPS(display, pps_idx, _PP_STATUS)
 #define   PP_ON				REG_BIT(31)
 /*
  * Indicates that all dependencies of the panel are on:
@@ -45,7 +45,7 @@
 #define   PP_SEQUENCE_STATE_RESET	REG_FIELD_PREP(PP_SEQUENCE_STATE_MASK, 0xf)
 
 #define _PP_CONTROL			0x61204
-#define PP_CONTROL(pps_idx)		_MMIO_PPS(pps_idx, _PP_CONTROL)
+#define PP_CONTROL(display, pps_idx)	_MMIO_PPS(display, pps_idx, _PP_CONTROL)
 #define  PANEL_UNLOCK_MASK		REG_GENMASK(31, 16)
 #define  PANEL_UNLOCK_REGS		REG_FIELD_PREP(PANEL_UNLOCK_MASK, 0xabcd)
 #define  BXT_POWER_CYCLE_DELAY_MASK	REG_GENMASK(8, 4)
@@ -55,7 +55,7 @@
 #define  PANEL_POWER_ON			REG_BIT(0)
 
 #define _PP_ON_DELAYS			0x61208
-#define PP_ON_DELAYS(pps_idx)		_MMIO_PPS(pps_idx, _PP_ON_DELAYS)
+#define PP_ON_DELAYS(display, pps_idx)	_MMIO_PPS(display, pps_idx, _PP_ON_DELAYS)
 #define  PANEL_PORT_SELECT_MASK		REG_GENMASK(31, 30)
 #define  PANEL_PORT_SELECT_LVDS		REG_FIELD_PREP(PANEL_PORT_SELECT_MASK, 0)
 #define  PANEL_PORT_SELECT_DPA		REG_FIELD_PREP(PANEL_PORT_SELECT_MASK, 1)
@@ -66,12 +66,12 @@
 #define  PANEL_LIGHT_ON_DELAY_MASK	REG_GENMASK(12, 0)
 
 #define _PP_OFF_DELAYS			0x6120C
-#define PP_OFF_DELAYS(pps_idx)		_MMIO_PPS(pps_idx, _PP_OFF_DELAYS)
+#define PP_OFF_DELAYS(display, pps_idx)	_MMIO_PPS(display, pps_idx, _PP_OFF_DELAYS)
 #define  PANEL_POWER_DOWN_DELAY_MASK	REG_GENMASK(28, 16)
 #define  PANEL_LIGHT_OFF_DELAY_MASK	REG_GENMASK(12, 0)
 
 #define _PP_DIVISOR			0x61210
-#define PP_DIVISOR(pps_idx)		_MMIO_PPS(pps_idx, _PP_DIVISOR)
+#define PP_DIVISOR(display, pps_idx)	_MMIO_PPS(display, pps_idx, _PP_DIVISOR)
 #define  PP_REFERENCE_DIVIDER_MASK	REG_GENMASK(31, 8)
 #define  PANEL_POWER_CYCLE_DELAY_MASK	REG_GENMASK(4, 0)
 
-- 
2.39.2

