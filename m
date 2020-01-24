Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE60814860D
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2020 14:26:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 310B972A8A;
	Fri, 24 Jan 2020 13:26:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D0F072A8D
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jan 2020 13:26:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 05:26:36 -0800
X-IronPort-AV: E=Sophos;i="5.70,357,1574150400"; d="scan'208";a="308126493"
Received: from omarkovx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.37.60])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 05:26:34 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Jan 2020 15:25:43 +0200
Message-Id: <75c2aa6ff0f0aa744de006c0bd6e33fb91b20994.1579871655.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1579871655.git.jani.nikula@intel.com>
References: <cover.1579871655.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [RFC 22/33] drm/i915/lvds: use intel_de_*() functions
 for register access
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The implicit "dev_priv" local variable use has been a long-standing pain
point in the register access macros I915_READ(), I915_WRITE(),
POSTING_READ(), I915_READ_FW(), and I915_WRITE_FW().

Replace them with the corresponding new display engine register
accessors intel_de_read(), intel_de_write(), intel_de_posting_read(),
intel_de_read_fw(), and intel_de_write_fw().

No functional changes.

Generated using the following semantic patch:

@@
expression REG, OFFSET;
@@
- I915_READ(REG)
+ intel_de_read(dev_priv, REG)

@@
expression REG, OFFSET;
@@
- POSTING_READ(REG)
+ intel_de_posting_read(dev_priv, REG)

@@
expression REG, OFFSET;
@@
- I915_WRITE(REG, OFFSET)
+ intel_de_write(dev_priv, REG, OFFSET)

@@
expression REG;
@@
- I915_READ_FW(REG)
+ intel_de_read_fw(dev_priv, REG)

@@
expression REG, OFFSET;
@@
- I915_WRITE_FW(REG, OFFSET)
+ intel_de_write_fw(dev_priv, REG, OFFSET)

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_lvds.c | 57 +++++++++++------------
 1 file changed, 28 insertions(+), 29 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index 10696bb99dcf..47c49f317e07 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -85,7 +85,7 @@ bool intel_lvds_port_enabled(struct drm_i915_private *dev_priv,
 {
 	u32 val;
 
-	val = I915_READ(lvds_reg);
+	val = intel_de_read(dev_priv, lvds_reg);
 
 	/* asserts want to know the pipe even if the port is disabled */
 	if (HAS_PCH_CPT(dev_priv))
@@ -125,7 +125,7 @@ static void intel_lvds_get_config(struct intel_encoder *encoder,
 
 	pipe_config->output_types |= BIT(INTEL_OUTPUT_LVDS);
 
-	tmp = I915_READ(lvds_encoder->reg);
+	tmp = intel_de_read(dev_priv, lvds_encoder->reg);
 	if (tmp & LVDS_HSYNC_POLARITY)
 		flags |= DRM_MODE_FLAG_NHSYNC;
 	else
@@ -143,7 +143,7 @@ static void intel_lvds_get_config(struct intel_encoder *encoder,
 
 	/* gen2/3 store dither state in pfit control, needs to match */
 	if (INTEL_GEN(dev_priv) < 4) {
-		tmp = I915_READ(PFIT_CONTROL);
+		tmp = intel_de_read(dev_priv, PFIT_CONTROL);
 
 		pipe_config->gmch_pfit.control |= tmp & PANEL_8TO6_DITHER_ENABLE;
 	}
@@ -156,18 +156,18 @@ static void intel_lvds_pps_get_hw_state(struct drm_i915_private *dev_priv,
 {
 	u32 val;
 
-	pps->powerdown_on_reset = I915_READ(PP_CONTROL(0)) & PANEL_POWER_RESET;
+	pps->powerdown_on_reset = intel_de_read(dev_priv, PP_CONTROL(0)) & PANEL_POWER_RESET;
 
-	val = I915_READ(PP_ON_DELAYS(0));
+	val = intel_de_read(dev_priv, PP_ON_DELAYS(0));
 	pps->port = REG_FIELD_GET(PANEL_PORT_SELECT_MASK, val);
 	pps->t1_t2 = REG_FIELD_GET(PANEL_POWER_UP_DELAY_MASK, val);
 	pps->t5 = REG_FIELD_GET(PANEL_LIGHT_ON_DELAY_MASK, val);
 
-	val = I915_READ(PP_OFF_DELAYS(0));
+	val = intel_de_read(dev_priv, PP_OFF_DELAYS(0));
 	pps->t3 = REG_FIELD_GET(PANEL_POWER_DOWN_DELAY_MASK, val);
 	pps->tx = REG_FIELD_GET(PANEL_LIGHT_OFF_DELAY_MASK, val);
 
-	val = I915_READ(PP_DIVISOR(0));
+	val = intel_de_read(dev_priv, PP_DIVISOR(0));
 	pps->divider = REG_FIELD_GET(PP_REFERENCE_DIVIDER_MASK, val);
 	val = REG_FIELD_GET(PANEL_POWER_CYCLE_DELAY_MASK, val);
 	/*
@@ -203,25 +203,20 @@ static void intel_lvds_pps_init_hw(struct drm_i915_private *dev_priv,
 {
 	u32 val;
 
-	val = I915_READ(PP_CONTROL(0));
+	val = intel_de_read(dev_priv, PP_CONTROL(0));
 	WARN_ON((val & PANEL_UNLOCK_MASK) != PANEL_UNLOCK_REGS);
 	if (pps->powerdown_on_reset)
 		val |= PANEL_POWER_RESET;
-	I915_WRITE(PP_CONTROL(0), val);
+	intel_de_write(dev_priv, PP_CONTROL(0), val);
 
-	I915_WRITE(PP_ON_DELAYS(0),
-		   REG_FIELD_PREP(PANEL_PORT_SELECT_MASK, pps->port) |
-		   REG_FIELD_PREP(PANEL_POWER_UP_DELAY_MASK, pps->t1_t2) |
-		   REG_FIELD_PREP(PANEL_LIGHT_ON_DELAY_MASK, pps->t5));
+	intel_de_write(dev_priv, PP_ON_DELAYS(0),
+		       REG_FIELD_PREP(PANEL_PORT_SELECT_MASK, pps->port) | REG_FIELD_PREP(PANEL_POWER_UP_DELAY_MASK, pps->t1_t2) | REG_FIELD_PREP(PANEL_LIGHT_ON_DELAY_MASK, pps->t5));
 
-	I915_WRITE(PP_OFF_DELAYS(0),
-		   REG_FIELD_PREP(PANEL_POWER_DOWN_DELAY_MASK, pps->t3) |
-		   REG_FIELD_PREP(PANEL_LIGHT_OFF_DELAY_MASK, pps->tx));
+	intel_de_write(dev_priv, PP_OFF_DELAYS(0),
+		       REG_FIELD_PREP(PANEL_POWER_DOWN_DELAY_MASK, pps->t3) | REG_FIELD_PREP(PANEL_LIGHT_OFF_DELAY_MASK, pps->tx));
 
-	I915_WRITE(PP_DIVISOR(0),
-		   REG_FIELD_PREP(PP_REFERENCE_DIVIDER_MASK, pps->divider) |
-		   REG_FIELD_PREP(PANEL_POWER_CYCLE_DELAY_MASK,
-				  DIV_ROUND_UP(pps->t4, 1000) + 1));
+	intel_de_write(dev_priv, PP_DIVISOR(0),
+		       REG_FIELD_PREP(PP_REFERENCE_DIVIDER_MASK, pps->divider) | REG_FIELD_PREP(PANEL_POWER_CYCLE_DELAY_MASK, DIV_ROUND_UP(pps->t4, 1000) + 1));
 }
 
 static void intel_pre_enable_lvds(struct intel_encoder *encoder,
@@ -299,7 +294,7 @@ static void intel_pre_enable_lvds(struct intel_encoder *encoder,
 	if (adjusted_mode->flags & DRM_MODE_FLAG_NVSYNC)
 		temp |= LVDS_VSYNC_POLARITY;
 
-	I915_WRITE(lvds_encoder->reg, temp);
+	intel_de_write(dev_priv, lvds_encoder->reg, temp);
 }
 
 /*
@@ -313,10 +308,12 @@ static void intel_enable_lvds(struct intel_encoder *encoder,
 	struct intel_lvds_encoder *lvds_encoder = to_lvds_encoder(&encoder->base);
 	struct drm_i915_private *dev_priv = to_i915(dev);
 
-	I915_WRITE(lvds_encoder->reg, I915_READ(lvds_encoder->reg) | LVDS_PORT_EN);
+	intel_de_write(dev_priv, lvds_encoder->reg,
+		       intel_de_read(dev_priv, lvds_encoder->reg) | LVDS_PORT_EN);
 
-	I915_WRITE(PP_CONTROL(0), I915_READ(PP_CONTROL(0)) | PANEL_POWER_ON);
-	POSTING_READ(lvds_encoder->reg);
+	intel_de_write(dev_priv, PP_CONTROL(0),
+		       intel_de_read(dev_priv, PP_CONTROL(0)) | PANEL_POWER_ON);
+	intel_de_posting_read(dev_priv, lvds_encoder->reg);
 
 	if (intel_de_wait_for_set(dev_priv, PP_STATUS(0), PP_ON, 5000))
 		DRM_ERROR("timed out waiting for panel to power on\n");
@@ -331,12 +328,14 @@ static void intel_disable_lvds(struct intel_encoder *encoder,
 	struct intel_lvds_encoder *lvds_encoder = to_lvds_encoder(&encoder->base);
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 
-	I915_WRITE(PP_CONTROL(0), I915_READ(PP_CONTROL(0)) & ~PANEL_POWER_ON);
+	intel_de_write(dev_priv, PP_CONTROL(0),
+		       intel_de_read(dev_priv, PP_CONTROL(0)) & ~PANEL_POWER_ON);
 	if (intel_de_wait_for_clear(dev_priv, PP_STATUS(0), PP_ON, 1000))
 		DRM_ERROR("timed out waiting for panel to power off\n");
 
-	I915_WRITE(lvds_encoder->reg, I915_READ(lvds_encoder->reg) & ~LVDS_PORT_EN);
-	POSTING_READ(lvds_encoder->reg);
+	intel_de_write(dev_priv, lvds_encoder->reg,
+		       intel_de_read(dev_priv, lvds_encoder->reg) & ~LVDS_PORT_EN);
+	intel_de_posting_read(dev_priv, lvds_encoder->reg);
 }
 
 static void gmch_disable_lvds(struct intel_encoder *encoder,
@@ -791,7 +790,7 @@ static bool compute_is_dual_link_lvds(struct intel_lvds_encoder *lvds_encoder)
 	 * we need to check "the value to be set" in VBT when LVDS
 	 * register is uninitialized.
 	 */
-	val = I915_READ(lvds_encoder->reg);
+	val = intel_de_read(dev_priv, lvds_encoder->reg);
 	if (HAS_PCH_CPT(dev_priv))
 		val &= ~(LVDS_DETECTED | LVDS_PIPE_SEL_MASK_CPT);
 	else
@@ -842,7 +841,7 @@ void intel_lvds_init(struct drm_i915_private *dev_priv)
 	else
 		lvds_reg = LVDS;
 
-	lvds = I915_READ(lvds_reg);
+	lvds = intel_de_read(dev_priv, lvds_reg);
 
 	if (HAS_PCH_SPLIT(dev_priv)) {
 		if ((lvds & LVDS_DETECTED) == 0)
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
