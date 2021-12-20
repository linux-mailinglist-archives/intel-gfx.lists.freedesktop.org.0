Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E169D47A53C
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Dec 2021 08:00:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13EF210E628;
	Mon, 20 Dec 2021 07:00:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 339DA10E628
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Dec 2021 07:00:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639983616; x=1671519616;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=uT24qW3hHctT7C7OxAVCmxfZMyOmW3pExWfEua5lD08=;
 b=ZQQOFtroOM5u9qwu3u1RiUcxZqc7c8m3s/NLsjmUfwmsDsTulydFEY+Q
 /ihZVsr+KZCymuo9TJbKgALF1D40SqaqyocTfcPgREykYsWW1ZQ7UtpR5
 H317MxtjAstLgBa/wLigUi6vm/SoQDCBZmNBSeQvcD6QMkRvpKrkYe1La
 CRemUAD9ET3Rd7UsPrcsOwRbqjVHh34B3nfpM2E+jrqsKcoK2aAomk2Vq
 ny+lXzr1s2+cIvjAq7wYus1T+zpA6NKv/gSyz+DXDkmhJ7BJiqiMP89jc
 XXMCJNPK2lX4wEEEmTI5X4j8OqQ5LgUqEpzyDqHNPQ9cgVJhKRba0Ih+g g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10203"; a="220787204"
X-IronPort-AV: E=Sophos;i="5.88,219,1635231600"; d="scan'208";a="220787204"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2021 23:00:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,219,1635231600"; d="scan'208";a="755270841"
Received: from amanna.iind.intel.com ([10.223.74.76])
 by fmsmga006.fm.intel.com with ESMTP; 19 Dec 2021 23:00:13 -0800
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Dec 2021 12:05:40 +0530
Message-Id: <20211220063540.19636-1-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: pps_lock moved to encoder to support
 dual EDP
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Currently dev_priv->pps_lock is used for locking mechanism and one
instance of pps registers are used for pps register programming.
Second instance enabled as per port number and pps_lock is moved
under encoder.

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  3 ++
 drivers/gpu/drm/i915/display/intel_dp.c       |  1 +
 drivers/gpu/drm/i915/display/intel_pps.c      | 43 +++++++++----------
 drivers/gpu/drm/i915/i915_driver.c            |  1 -
 drivers/gpu/drm/i915/i915_drv.h               |  3 --
 5 files changed, 24 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index c9c6efadf8b4..a091ad10c213 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1664,6 +1664,9 @@ struct intel_dp {
 
 	/* When we last wrote the OUI for eDP */
 	unsigned long last_oui_write;
+
+	/* protects panel power sequencer state */
+	struct mutex pps_mutex;
 };
 
 enum lspcon_vendor {
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index b5e2508db1cf..a1ef497de773 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5089,6 +5089,7 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
 	intel_dp->reset_link_params = true;
 	intel_dp->pps.pps_pipe = INVALID_PIPE;
 	intel_dp->pps.active_pipe = INVALID_PIPE;
+	mutex_init(&intel_dp->pps_mutex);
 
 	/* Preserve the current hw state. */
 	intel_dp->DP = intel_de_read(dev_priv, intel_dp->output_reg);
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index e9c679bb1b2e..f6e86a17ea48 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -27,7 +27,7 @@ intel_wakeref_t intel_pps_lock(struct intel_dp *intel_dp)
 	 * See intel_pps_reset_all() why we need a power domain reference here.
 	 */
 	wakeref = intel_display_power_get(dev_priv, POWER_DOMAIN_DISPLAY_CORE);
-	mutex_lock(&dev_priv->pps_mutex);
+	mutex_lock(&intel_dp->pps_mutex);
 
 	return wakeref;
 }
@@ -37,7 +37,7 @@ intel_wakeref_t intel_pps_unlock(struct intel_dp *intel_dp,
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 
-	mutex_unlock(&dev_priv->pps_mutex);
+	mutex_unlock(&intel_dp->pps_mutex);
 	intel_display_power_put(dev_priv, POWER_DOMAIN_DISPLAY_CORE, wakeref);
 
 	return 0;
@@ -162,7 +162,7 @@ vlv_power_sequencer_pipe(struct intel_dp *intel_dp)
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	enum pipe pipe;
 
-	lockdep_assert_held(&dev_priv->pps_mutex);
+	lockdep_assert_held(&intel_dp->pps_mutex);
 
 	/* We should never land here with regular DP ports */
 	drm_WARN_ON(&dev_priv->drm, !intel_dp_is_edp(intel_dp));
@@ -210,7 +210,7 @@ bxt_power_sequencer_idx(struct intel_dp *intel_dp)
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 	int backlight_controller = dev_priv->vbt.backlight.controller;
 
-	lockdep_assert_held(&dev_priv->pps_mutex);
+	lockdep_assert_held(&intel_dp->pps_mutex);
 
 	/* We should never land here with regular DP ports */
 	drm_WARN_ON(&dev_priv->drm, !intel_dp_is_edp(intel_dp));
@@ -280,7 +280,7 @@ vlv_initial_power_sequencer_setup(struct intel_dp *intel_dp)
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	enum port port = dig_port->base.port;
 
-	lockdep_assert_held(&dev_priv->pps_mutex);
+	lockdep_assert_held(&intel_dp->pps_mutex);
 
 	/* try to find a pipe with this port selected */
 	/* first pick one where the panel is on */
@@ -359,7 +359,7 @@ static void intel_pps_get_registers(struct intel_dp *intel_dp,
 				    struct pps_registers *regs)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
-	int pps_idx = 0;
+	int pps_idx = dp_to_dig_port(intel_dp)->base.port;
 
 	memset(regs, 0, sizeof(*regs));
 
@@ -405,7 +405,7 @@ static bool edp_have_panel_power(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 
-	lockdep_assert_held(&dev_priv->pps_mutex);
+	lockdep_assert_held(&intel_dp->pps_mutex);
 
 	if ((IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) &&
 	    intel_dp->pps.pps_pipe == INVALID_PIPE)
@@ -418,7 +418,7 @@ static bool edp_have_panel_vdd(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 
-	lockdep_assert_held(&dev_priv->pps_mutex);
+	lockdep_assert_held(&intel_dp->pps_mutex);
 
 	if ((IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) &&
 	    intel_dp->pps.pps_pipe == INVALID_PIPE)
@@ -461,7 +461,7 @@ static void wait_panel_status(struct intel_dp *intel_dp,
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 	i915_reg_t pp_stat_reg, pp_ctrl_reg;
 
-	lockdep_assert_held(&dev_priv->pps_mutex);
+	lockdep_assert_held(&intel_dp->pps_mutex);
 
 	intel_pps_verify_state(intel_dp);
 
@@ -554,7 +554,7 @@ static  u32 ilk_get_pp_control(struct intel_dp *intel_dp)
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 	u32 control;
 
-	lockdep_assert_held(&dev_priv->pps_mutex);
+	lockdep_assert_held(&intel_dp->pps_mutex);
 
 	control = intel_de_read(dev_priv, _pp_ctrl_reg(intel_dp));
 	if (drm_WARN_ON(&dev_priv->drm, !HAS_DDI(dev_priv) &&
@@ -578,7 +578,7 @@ bool intel_pps_vdd_on_unlocked(struct intel_dp *intel_dp)
 	i915_reg_t pp_stat_reg, pp_ctrl_reg;
 	bool need_to_disable = !intel_dp->pps.want_panel_vdd;
 
-	lockdep_assert_held(&dev_priv->pps_mutex);
+	lockdep_assert_held(&intel_dp->pps_mutex);
 
 	if (!intel_dp_is_edp(intel_dp))
 		return false;
@@ -655,7 +655,7 @@ static void intel_pps_vdd_off_sync_unlocked(struct intel_dp *intel_dp)
 	u32 pp;
 	i915_reg_t pp_stat_reg, pp_ctrl_reg;
 
-	lockdep_assert_held(&dev_priv->pps_mutex);
+	lockdep_assert_held(&intel_dp->pps_mutex);
 
 	drm_WARN_ON(&dev_priv->drm, intel_dp->pps.want_panel_vdd);
 
@@ -737,9 +737,7 @@ static void edp_panel_vdd_schedule_off(struct intel_dp *intel_dp)
  */
 void intel_pps_vdd_off_unlocked(struct intel_dp *intel_dp, bool sync)
 {
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
-
-	lockdep_assert_held(&dev_priv->pps_mutex);
+	lockdep_assert_held(&intel_dp->pps_mutex);
 
 	if (!intel_dp_is_edp(intel_dp))
 		return;
@@ -762,7 +760,7 @@ void intel_pps_on_unlocked(struct intel_dp *intel_dp)
 	u32 pp;
 	i915_reg_t pp_ctrl_reg;
 
-	lockdep_assert_held(&dev_priv->pps_mutex);
+	lockdep_assert_held(&intel_dp->pps_mutex);
 
 	if (!intel_dp_is_edp(intel_dp))
 		return;
@@ -823,7 +821,7 @@ void intel_pps_off_unlocked(struct intel_dp *intel_dp)
 	u32 pp;
 	i915_reg_t pp_ctrl_reg;
 
-	lockdep_assert_held(&dev_priv->pps_mutex);
+	lockdep_assert_held(&intel_dp->pps_mutex);
 
 	if (!intel_dp_is_edp(intel_dp))
 		return;
@@ -982,11 +980,10 @@ static void vlv_steal_power_sequencer(struct drm_i915_private *dev_priv,
 {
 	struct intel_encoder *encoder;
 
-	lockdep_assert_held(&dev_priv->pps_mutex);
-
 	for_each_intel_dp(&dev_priv->drm, encoder) {
 		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 
+		lockdep_assert_held(&intel_dp->pps_mutex);
 		drm_WARN(&dev_priv->drm, intel_dp->pps.active_pipe == pipe,
 			 "stealing pipe %c power sequencer from active [ENCODER:%d:%s]\n",
 			 pipe_name(pipe), encoder->base.base.id,
@@ -1012,7 +1009,7 @@ void vlv_pps_init(struct intel_encoder *encoder,
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 
-	lockdep_assert_held(&dev_priv->pps_mutex);
+	lockdep_assert_held(&intel_dp->pps_mutex);
 
 	drm_WARN_ON(&dev_priv->drm, intel_dp->pps.active_pipe != INVALID_PIPE);
 
@@ -1055,7 +1052,7 @@ static void intel_pps_vdd_sanitize(struct intel_dp *intel_dp)
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 
-	lockdep_assert_held(&dev_priv->pps_mutex);
+	lockdep_assert_held(&intel_dp->pps_mutex);
 
 	if (!edp_have_panel_vdd(intel_dp))
 		return;
@@ -1160,7 +1157,7 @@ static void pps_init_delays(struct intel_dp *intel_dp)
 	struct edp_power_seq cur, vbt, spec,
 		*final = &intel_dp->pps.pps_delays;
 
-	lockdep_assert_held(&dev_priv->pps_mutex);
+	lockdep_assert_held(&intel_dp->pps_mutex);
 
 	/* already initialized? */
 	if (final->t11_t12 != 0)
@@ -1258,7 +1255,7 @@ static void pps_init_registers(struct intel_dp *intel_dp, bool force_disable_vdd
 	enum port port = dp_to_dig_port(intel_dp)->base.port;
 	const struct edp_power_seq *seq = &intel_dp->pps.pps_delays;
 
-	lockdep_assert_held(&dev_priv->pps_mutex);
+	lockdep_assert_held(&intel_dp->pps_mutex);
 
 	intel_pps_get_registers(intel_dp, &regs);
 
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 95174938b160..9e337e4216d7 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -327,7 +327,6 @@ static int i915_driver_early_probe(struct drm_i915_private *dev_priv)
 
 	mutex_init(&dev_priv->audio.mutex);
 	mutex_init(&dev_priv->wm.wm_mutex);
-	mutex_init(&dev_priv->pps_mutex);
 	mutex_init(&dev_priv->hdcp_comp_mutex);
 
 	i915_memcpy_init_early(dev_priv);
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 471be2716abe..4680e1c84985 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -749,9 +749,6 @@ struct drm_i915_private {
 	/* backlight registers and fields in struct intel_panel */
 	struct mutex backlight_lock;
 
-	/* protects panel power sequencer state */
-	struct mutex pps_mutex;
-
 	unsigned int fsb_freq, mem_freq, is_ddr3;
 	unsigned int skl_preferred_vco_freq;
 	unsigned int max_cdclk_freq;
-- 
2.29.0

