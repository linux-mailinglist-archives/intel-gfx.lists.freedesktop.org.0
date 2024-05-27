Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EADB8CFE43
	for <lists+intel-gfx@lfdr.de>; Mon, 27 May 2024 12:42:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 855FC10FA44;
	Mon, 27 May 2024 10:42:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ah9V/6av";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55F1810FA44
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 May 2024 10:42:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716806540; x=1748342540;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Z2x3rWerMYb16UVBtxunY6GAe7cd/8HH3EhVs1FECjo=;
 b=ah9V/6avIv4S/to18BDQ6qj+7L51yu2PIKhFr6IlS7MII3Gb5ipVtp94
 tEaljiKAo06hbluhB+8Y353cujLIEoTLDQ7iIfVVeH114hX7nfO2oq/HQ
 LVNsrhcvq82W0izMReu/wXUO75/qCQ2nEcgK2oge4PXquEW0zFpfH59Qk
 4jZvmfQI3jLTwlwLMOlBZQO1QJbr9+3lhtQvHpxd+hCLLv3YYNivDX6lT
 NfLG0AMPPKAgUb5I8VqUqx1DOQCkMa1XfjATFoNV+sE6VvZXxifEH/zLD
 t7OpcVrUAPB47Vf5quGR0oB5d3LMnnOCixcD3UardTsr0+qmcMhu7FUIv A==;
X-CSE-ConnectionGUID: OkuRrzSzQqixF4B+EN0zvw==
X-CSE-MsgGUID: ZA1OUURuQ7usor1hNhlGVA==
X-IronPort-AV: E=McAfee;i="6600,9927,11084"; a="23718233"
X-IronPort-AV: E=Sophos;i="6.08,192,1712646000"; d="scan'208";a="23718233"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 03:42:20 -0700
X-CSE-ConnectionGUID: 2+5LPKTRTXKF1JBuobOaOA==
X-CSE-MsgGUID: rkAJM1tqQdKED2FEDCae8w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,192,1712646000"; d="scan'208";a="39122768"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.200])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 03:42:18 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 3/6] drm/i915: pass dev_priv explicitly to PP_CONTROL
Date: Mon, 27 May 2024 13:41:59 +0300
Message-Id: <01024887af682d4c9ddfb440af98284c44422df7.1716806471.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1716806471.git.jani.nikula@intel.com>
References: <cover.1716806471.git.jani.nikula@intel.com>
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

Avoid the implicit dev_priv local variable use, and pass dev_priv
explicitly to the PP_CONTROL register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsi_vbt.c  |  4 ++--
 drivers/gpu/drm/i915/display/intel_lvds.c     | 11 ++++++-----
 drivers/gpu/drm/i915/display/intel_pps.c      | 12 ++++++------
 drivers/gpu/drm/i915/display/intel_pps_regs.h |  2 +-
 4 files changed, 15 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
index cdc9dadb578d..072ef1d62bda 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
+++ b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
@@ -353,14 +353,14 @@ static void icl_native_gpio_set_value(struct drm_i915_private *dev_priv,
 	case MIPI_AVDD_EN_2:
 		index = gpio == MIPI_AVDD_EN_1 ? 0 : 1;
 
-		intel_de_rmw(dev_priv, PP_CONTROL(index), PANEL_POWER_ON,
+		intel_de_rmw(dev_priv, PP_CONTROL(dev_priv, index), PANEL_POWER_ON,
 			     value ? PANEL_POWER_ON : 0);
 		break;
 	case MIPI_BKLT_EN_1:
 	case MIPI_BKLT_EN_2:
 		index = gpio == MIPI_BKLT_EN_1 ? 0 : 1;
 
-		intel_de_rmw(dev_priv, PP_CONTROL(index), EDP_BLC_ENABLE,
+		intel_de_rmw(dev_priv, PP_CONTROL(dev_priv, index), EDP_BLC_ENABLE,
 			     value ? EDP_BLC_ENABLE : 0);
 		break;
 	case MIPI_AVEE_EN_1:
diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index eec0dab3c3b2..367b3528e141 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -161,7 +161,8 @@ static void intel_lvds_pps_get_hw_state(struct drm_i915_private *dev_priv,
 {
 	u32 val;
 
-	pps->powerdown_on_reset = intel_de_read(dev_priv, PP_CONTROL(0)) & PANEL_POWER_RESET;
+	pps->powerdown_on_reset = intel_de_read(dev_priv,
+						PP_CONTROL(dev_priv, 0)) & PANEL_POWER_RESET;
 
 	val = intel_de_read(dev_priv, PP_ON_DELAYS(0));
 	pps->port = REG_FIELD_GET(PANEL_PORT_SELECT_MASK, val);
@@ -209,12 +210,12 @@ static void intel_lvds_pps_init_hw(struct drm_i915_private *dev_priv,
 {
 	u32 val;
 
-	val = intel_de_read(dev_priv, PP_CONTROL(0));
+	val = intel_de_read(dev_priv, PP_CONTROL(dev_priv, 0));
 	drm_WARN_ON(&dev_priv->drm,
 		    (val & PANEL_UNLOCK_MASK) != PANEL_UNLOCK_REGS);
 	if (pps->powerdown_on_reset)
 		val |= PANEL_POWER_RESET;
-	intel_de_write(dev_priv, PP_CONTROL(0), val);
+	intel_de_write(dev_priv, PP_CONTROL(dev_priv, 0), val);
 
 	intel_de_write(dev_priv, PP_ON_DELAYS(0),
 		       REG_FIELD_PREP(PANEL_PORT_SELECT_MASK, pps->port) |
@@ -321,7 +322,7 @@ static void intel_enable_lvds(struct intel_atomic_state *state,
 
 	intel_de_rmw(dev_priv, lvds_encoder->reg, 0, LVDS_PORT_EN);
 
-	intel_de_rmw(dev_priv, PP_CONTROL(0), 0, PANEL_POWER_ON);
+	intel_de_rmw(dev_priv, PP_CONTROL(dev_priv, 0), 0, PANEL_POWER_ON);
 	intel_de_posting_read(dev_priv, lvds_encoder->reg);
 
 	if (intel_de_wait_for_set(dev_priv, PP_STATUS(dev_priv, 0), PP_ON, 5000))
@@ -339,7 +340,7 @@ static void intel_disable_lvds(struct intel_atomic_state *state,
 	struct intel_lvds_encoder *lvds_encoder = to_lvds_encoder(encoder);
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 
-	intel_de_rmw(dev_priv, PP_CONTROL(0), PANEL_POWER_ON, 0);
+	intel_de_rmw(dev_priv, PP_CONTROL(dev_priv, 0), PANEL_POWER_ON, 0);
 	if (intel_de_wait_for_clear(dev_priv, PP_STATUS(dev_priv, 0), PP_ON, 1000))
 		drm_err(&dev_priv->drm,
 			"timed out waiting for panel to power off\n");
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 9aa08b525810..6b185424271d 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -277,7 +277,7 @@ static bool pps_has_pp_on(struct drm_i915_private *dev_priv, int pps_idx)
 
 static bool pps_has_vdd_on(struct drm_i915_private *dev_priv, int pps_idx)
 {
-	return intel_de_read(dev_priv, PP_CONTROL(pps_idx)) & EDP_FORCE_VDD;
+	return intel_de_read(dev_priv, PP_CONTROL(dev_priv, pps_idx)) & EDP_FORCE_VDD;
 }
 
 static bool pps_any(struct drm_i915_private *dev_priv, int pps_idx)
@@ -491,7 +491,7 @@ static void intel_pps_get_registers(struct intel_dp *intel_dp,
 	else
 		pps_idx = intel_dp->pps.pps_idx;
 
-	regs->pp_ctrl = PP_CONTROL(pps_idx);
+	regs->pp_ctrl = PP_CONTROL(dev_priv, pps_idx);
 	regs->pp_stat = PP_STATUS(dev_priv, pps_idx);
 	regs->pp_on = PP_ON_DELAYS(pps_idx);
 	regs->pp_off = PP_OFF_DELAYS(pps_idx);
@@ -1656,7 +1656,7 @@ void intel_pps_unlock_regs_wa(struct drm_i915_private *dev_priv)
 	pps_num = intel_num_pps(dev_priv);
 
 	for (pps_idx = 0; pps_idx < pps_num; pps_idx++)
-		intel_de_rmw(dev_priv, PP_CONTROL(pps_idx),
+		intel_de_rmw(dev_priv, PP_CONTROL(dev_priv, pps_idx),
 			     PANEL_UNLOCK_MASK, PANEL_UNLOCK_REGS);
 }
 
@@ -1714,7 +1714,7 @@ void assert_pps_unlocked(struct drm_i915_private *dev_priv, enum pipe pipe)
 	if (HAS_PCH_SPLIT(dev_priv)) {
 		u32 port_sel;
 
-		pp_reg = PP_CONTROL(0);
+		pp_reg = PP_CONTROL(dev_priv, 0);
 		port_sel = intel_de_read(dev_priv, PP_ON_DELAYS(0)) & PANEL_PORT_SELECT_MASK;
 
 		switch (port_sel) {
@@ -1736,12 +1736,12 @@ void assert_pps_unlocked(struct drm_i915_private *dev_priv, enum pipe pipe)
 		}
 	} else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
 		/* presumably write lock depends on pipe, not port select */
-		pp_reg = PP_CONTROL(pipe);
+		pp_reg = PP_CONTROL(dev_priv, pipe);
 		panel_pipe = pipe;
 	} else {
 		u32 port_sel;
 
-		pp_reg = PP_CONTROL(0);
+		pp_reg = PP_CONTROL(dev_priv, 0);
 		port_sel = intel_de_read(dev_priv, PP_ON_DELAYS(0)) & PANEL_PORT_SELECT_MASK;
 
 		drm_WARN_ON(&dev_priv->drm,
diff --git a/drivers/gpu/drm/i915/display/intel_pps_regs.h b/drivers/gpu/drm/i915/display/intel_pps_regs.h
index 06bdf766b749..e52d87b9f0ad 100644
--- a/drivers/gpu/drm/i915/display/intel_pps_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_pps_regs.h
@@ -45,7 +45,7 @@
 #define   PP_SEQUENCE_STATE_RESET	REG_FIELD_PREP(PP_SEQUENCE_STATE_MASK, 0xf)
 
 #define _PP_CONTROL			0x61204
-#define PP_CONTROL(pps_idx)		_MMIO_PPS(dev_priv, pps_idx, _PP_CONTROL)
+#define PP_CONTROL(dev_priv, pps_idx)	_MMIO_PPS(dev_priv, pps_idx, _PP_CONTROL)
 #define  PANEL_UNLOCK_MASK		REG_GENMASK(31, 16)
 #define  PANEL_UNLOCK_REGS		REG_FIELD_PREP(PANEL_UNLOCK_MASK, 0xabcd)
 #define  BXT_POWER_CYCLE_DELAY_MASK	REG_GENMASK(8, 4)
-- 
2.39.2

