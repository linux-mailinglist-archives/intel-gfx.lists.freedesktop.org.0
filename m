Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1145C58FEF0
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Aug 2022 17:13:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 459CBB3DB0;
	Thu, 11 Aug 2022 15:13:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD863B3D4C
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Aug 2022 15:13:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660230798; x=1691766798;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hshvqb5vanbyL1uJNVUNSJTioiicoZtk0ffeEki+81Q=;
 b=PKSIzrzjvAB9d87WFxo94qS1W7Bj8aeBm0AiHghUt1nT7dHKagOXj40T
 5wE/pHbRBJ1AJ2m7P4T3Mc4SzyubBGZxZVWrjAz/JmLS4QYv95xfy+oFE
 Zv0cExuNRSbcuF1if7mIixbL4ZCjHF0ejy2IqAnug/2EJ0BKmTKYTFh/h
 dYrKt0KB+mhTyHpApUFgQPcOsSNdaOJNeptySRYu+SjAgRRXbi+BaGX7J
 ZSkcGbE/cNqZ+IWw8R2cV62cCDBer2nRdFdv9IkJqRX4rpmyCcwE8ft3H
 r+L1AjIOTmp0mXdmLCORuUxEL/o7sMPtQWb/oZpczMfD3jOFkkXKmCKlU A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10436"; a="355376174"
X-IronPort-AV: E=Sophos;i="5.93,230,1654585200"; d="scan'208";a="355376174"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 08:08:47 -0700
X-IronPort-AV: E=Sophos;i="5.93,230,1654585200"; d="scan'208";a="933350599"
Received: from gdogaru-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.48.102])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 08:08:45 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Aug 2022 18:07:21 +0300
Message-Id: <b4e59508841a110f16d76a8da08ad94fdfd3a4b4.1660230121.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1660230121.git.jani.nikula@intel.com>
References: <cover.1660230121.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 10/39] drm/i915: move and group pps members
 under display.pps
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
Cc: jani.nikula@intel.com, lucas.demarchi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Move display related members under drm_i915_private display sub-struct.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_display_core.h |  7 +++
 drivers/gpu/drm/i915/display/intel_pps.c      | 48 +++++++++----------
 drivers/gpu/drm/i915/i915_driver.c            |  2 +-
 drivers/gpu/drm/i915/i915_drv.h               |  5 --
 drivers/gpu/drm/i915/i915_reg.h               |  2 +-
 5 files changed, 33 insertions(+), 31 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index fe19d4f9a9ab..030ced4068bb 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -101,6 +101,13 @@ struct intel_display {
 
 		wait_queue_head_t wait_queue;
 	} gmbus;
+
+	struct {
+		u32 mmio_base;
+
+		/* protects panel power sequencer state */
+		struct mutex mutex;
+	} pps;
 };
 
 #endif /* __INTEL_DISPLAY_CORE_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 1b21a341962f..9a66e03aa2d6 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -28,7 +28,7 @@ intel_wakeref_t intel_pps_lock(struct intel_dp *intel_dp)
 	 * See intel_pps_reset_all() why we need a power domain reference here.
 	 */
 	wakeref = intel_display_power_get(dev_priv, POWER_DOMAIN_DISPLAY_CORE);
-	mutex_lock(&dev_priv->pps_mutex);
+	mutex_lock(&dev_priv->display.pps.mutex);
 
 	return wakeref;
 }
@@ -38,7 +38,7 @@ intel_wakeref_t intel_pps_unlock(struct intel_dp *intel_dp,
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 
-	mutex_unlock(&dev_priv->pps_mutex);
+	mutex_unlock(&dev_priv->display.pps.mutex);
 	intel_display_power_put(dev_priv, POWER_DOMAIN_DISPLAY_CORE, wakeref);
 
 	return 0;
@@ -163,7 +163,7 @@ vlv_power_sequencer_pipe(struct intel_dp *intel_dp)
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	enum pipe pipe;
 
-	lockdep_assert_held(&dev_priv->pps_mutex);
+	lockdep_assert_held(&dev_priv->display.pps.mutex);
 
 	/* We should never land here with regular DP ports */
 	drm_WARN_ON(&dev_priv->drm, !intel_dp_is_edp(intel_dp));
@@ -212,7 +212,7 @@ bxt_power_sequencer_idx(struct intel_dp *intel_dp)
 	struct intel_connector *connector = intel_dp->attached_connector;
 	int backlight_controller = connector->panel.vbt.backlight.controller;
 
-	lockdep_assert_held(&dev_priv->pps_mutex);
+	lockdep_assert_held(&dev_priv->display.pps.mutex);
 
 	/* We should never land here with regular DP ports */
 	drm_WARN_ON(&dev_priv->drm, !intel_dp_is_edp(intel_dp));
@@ -282,7 +282,7 @@ vlv_initial_power_sequencer_setup(struct intel_dp *intel_dp)
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	enum port port = dig_port->base.port;
 
-	lockdep_assert_held(&dev_priv->pps_mutex);
+	lockdep_assert_held(&dev_priv->display.pps.mutex);
 
 	/* try to find a pipe with this port selected */
 	/* first pick one where the panel is on */
@@ -407,7 +407,7 @@ static bool edp_have_panel_power(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 
-	lockdep_assert_held(&dev_priv->pps_mutex);
+	lockdep_assert_held(&dev_priv->display.pps.mutex);
 
 	if ((IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) &&
 	    intel_dp->pps.pps_pipe == INVALID_PIPE)
@@ -420,7 +420,7 @@ static bool edp_have_panel_vdd(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 
-	lockdep_assert_held(&dev_priv->pps_mutex);
+	lockdep_assert_held(&dev_priv->display.pps.mutex);
 
 	if ((IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) &&
 	    intel_dp->pps.pps_pipe == INVALID_PIPE)
@@ -463,7 +463,7 @@ static void wait_panel_status(struct intel_dp *intel_dp,
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 	i915_reg_t pp_stat_reg, pp_ctrl_reg;
 
-	lockdep_assert_held(&dev_priv->pps_mutex);
+	lockdep_assert_held(&dev_priv->display.pps.mutex);
 
 	intel_pps_verify_state(intel_dp);
 
@@ -556,7 +556,7 @@ static  u32 ilk_get_pp_control(struct intel_dp *intel_dp)
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 	u32 control;
 
-	lockdep_assert_held(&dev_priv->pps_mutex);
+	lockdep_assert_held(&dev_priv->display.pps.mutex);
 
 	control = intel_de_read(dev_priv, _pp_ctrl_reg(intel_dp));
 	if (drm_WARN_ON(&dev_priv->drm, !HAS_DDI(dev_priv) &&
@@ -580,7 +580,7 @@ bool intel_pps_vdd_on_unlocked(struct intel_dp *intel_dp)
 	i915_reg_t pp_stat_reg, pp_ctrl_reg;
 	bool need_to_disable = !intel_dp->pps.want_panel_vdd;
 
-	lockdep_assert_held(&dev_priv->pps_mutex);
+	lockdep_assert_held(&dev_priv->display.pps.mutex);
 
 	if (!intel_dp_is_edp(intel_dp))
 		return false;
@@ -657,7 +657,7 @@ static void intel_pps_vdd_off_sync_unlocked(struct intel_dp *intel_dp)
 	u32 pp;
 	i915_reg_t pp_stat_reg, pp_ctrl_reg;
 
-	lockdep_assert_held(&dev_priv->pps_mutex);
+	lockdep_assert_held(&dev_priv->display.pps.mutex);
 
 	drm_WARN_ON(&dev_priv->drm, intel_dp->pps.want_panel_vdd);
 
@@ -748,7 +748,7 @@ void intel_pps_vdd_off_unlocked(struct intel_dp *intel_dp, bool sync)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 
-	lockdep_assert_held(&dev_priv->pps_mutex);
+	lockdep_assert_held(&dev_priv->display.pps.mutex);
 
 	if (!intel_dp_is_edp(intel_dp))
 		return;
@@ -771,7 +771,7 @@ void intel_pps_on_unlocked(struct intel_dp *intel_dp)
 	u32 pp;
 	i915_reg_t pp_ctrl_reg;
 
-	lockdep_assert_held(&dev_priv->pps_mutex);
+	lockdep_assert_held(&dev_priv->display.pps.mutex);
 
 	if (!intel_dp_is_edp(intel_dp))
 		return;
@@ -832,7 +832,7 @@ void intel_pps_off_unlocked(struct intel_dp *intel_dp)
 	u32 pp;
 	i915_reg_t pp_ctrl_reg;
 
-	lockdep_assert_held(&dev_priv->pps_mutex);
+	lockdep_assert_held(&dev_priv->display.pps.mutex);
 
 	if (!intel_dp_is_edp(intel_dp))
 		return;
@@ -991,7 +991,7 @@ static void vlv_steal_power_sequencer(struct drm_i915_private *dev_priv,
 {
 	struct intel_encoder *encoder;
 
-	lockdep_assert_held(&dev_priv->pps_mutex);
+	lockdep_assert_held(&dev_priv->display.pps.mutex);
 
 	for_each_intel_dp(&dev_priv->drm, encoder) {
 		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
@@ -1021,7 +1021,7 @@ void vlv_pps_init(struct intel_encoder *encoder,
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 
-	lockdep_assert_held(&dev_priv->pps_mutex);
+	lockdep_assert_held(&dev_priv->display.pps.mutex);
 
 	drm_WARN_ON(&dev_priv->drm, intel_dp->pps.active_pipe != INVALID_PIPE);
 
@@ -1064,7 +1064,7 @@ static void pps_vdd_init(struct intel_dp *intel_dp)
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 
-	lockdep_assert_held(&dev_priv->pps_mutex);
+	lockdep_assert_held(&dev_priv->display.pps.mutex);
 
 	if (!edp_have_panel_vdd(intel_dp))
 		return;
@@ -1176,7 +1176,7 @@ static void pps_init_delays_bios(struct intel_dp *intel_dp,
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 
-	lockdep_assert_held(&dev_priv->pps_mutex);
+	lockdep_assert_held(&dev_priv->display.pps.mutex);
 
 	if (!pps_delays_valid(&intel_dp->pps.bios_pps_delays))
 		intel_pps_readout_hw_state(intel_dp, &intel_dp->pps.bios_pps_delays);
@@ -1223,7 +1223,7 @@ static void pps_init_delays_spec(struct intel_dp *intel_dp,
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 
-	lockdep_assert_held(&dev_priv->pps_mutex);
+	lockdep_assert_held(&dev_priv->display.pps.mutex);
 
 	/* Upper limits from eDP 1.3 spec. Note that we use the clunky units of
 	 * our hw here, which are all in 100usec. */
@@ -1246,7 +1246,7 @@ static void pps_init_delays(struct intel_dp *intel_dp)
 	struct edp_power_seq cur, vbt, spec,
 		*final = &intel_dp->pps.pps_delays;
 
-	lockdep_assert_held(&dev_priv->pps_mutex);
+	lockdep_assert_held(&dev_priv->display.pps.mutex);
 
 	/* already initialized? */
 	if (pps_delays_valid(final))
@@ -1312,7 +1312,7 @@ static void pps_init_registers(struct intel_dp *intel_dp, bool force_disable_vdd
 	enum port port = dp_to_dig_port(intel_dp)->base.port;
 	const struct edp_power_seq *seq = &intel_dp->pps.pps_delays;
 
-	lockdep_assert_held(&dev_priv->pps_mutex);
+	lockdep_assert_held(&dev_priv->display.pps.mutex);
 
 	intel_pps_get_registers(intel_dp, &regs);
 
@@ -1487,11 +1487,11 @@ void intel_pps_unlock_regs_wa(struct drm_i915_private *dev_priv)
 void intel_pps_setup(struct drm_i915_private *i915)
 {
 	if (HAS_PCH_SPLIT(i915) || IS_GEMINILAKE(i915) || IS_BROXTON(i915))
-		i915->pps_mmio_base = PCH_PPS_BASE;
+		i915->display.pps.mmio_base = PCH_PPS_BASE;
 	else if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
-		i915->pps_mmio_base = VLV_PPS_BASE;
+		i915->display.pps.mmio_base = VLV_PPS_BASE;
 	else
-		i915->pps_mmio_base = PPS_BASE;
+		i915->display.pps.mmio_base = PPS_BASE;
 }
 
 void assert_pps_unlocked(struct drm_i915_private *dev_priv, enum pipe pipe)
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index deb8a8b76965..694384e54fd7 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -337,7 +337,7 @@ static int i915_driver_early_probe(struct drm_i915_private *dev_priv)
 
 	mutex_init(&dev_priv->audio.mutex);
 	mutex_init(&dev_priv->wm.wm_mutex);
-	mutex_init(&dev_priv->pps_mutex);
+	mutex_init(&dev_priv->display.pps.mutex);
 	mutex_init(&dev_priv->hdcp_comp_mutex);
 
 	i915_memcpy_init_early(dev_priv);
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 413d037a214d..8ba133f37fb5 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -383,8 +383,6 @@ struct drm_i915_private {
 	/* MMIO base address for MIPI regs */
 	u32 mipi_mmio_base;
 
-	u32 pps_mmio_base;
-
 	struct pci_dev *bridge_dev;
 
 	struct rb_root uabi_engines;
@@ -421,9 +419,6 @@ struct drm_i915_private {
 	/* backlight registers and fields in struct intel_panel */
 	struct mutex backlight_lock;
 
-	/* protects panel power sequencer state */
-	struct mutex pps_mutex;
-
 	unsigned int fsb_freq, mem_freq, is_ddr3;
 	unsigned int skl_preferred_vco_freq;
 	unsigned int max_cdclk_freq;
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 64342d8ccc5e..0edb4490fc76 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2829,7 +2829,7 @@
 #define VLV_PPS_BASE			(VLV_DISPLAY_BASE + PPS_BASE)
 #define PCH_PPS_BASE			0xC7200
 
-#define _MMIO_PPS(pps_idx, reg)		_MMIO(dev_priv->pps_mmio_base -	\
+#define _MMIO_PPS(pps_idx, reg)		_MMIO(dev_priv->display.pps.mmio_base -	\
 					      PPS_BASE + (reg) +	\
 					      (pps_idx) * 0x100)
 
-- 
2.34.1

