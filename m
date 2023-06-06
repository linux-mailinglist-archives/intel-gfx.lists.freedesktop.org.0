Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 496597237FA
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Jun 2023 08:44:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FF4610E2AC;
	Tue,  6 Jun 2023 06:44:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BA6110E2AC
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Jun 2023 06:44:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686033845; x=1717569845;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9gVZjDEucHWQXp7dMtIN+cDRQVqK/bnOl9YTAtJhhaw=;
 b=P4t9HC9i4CECnJKaWh0hSHPJtkhKsjL1bOtLABqWKGxSwv2CFNibVeRK
 EJ+2gdkBTPEmGj5ykACpGr7VuWSNRUFgzIhIgz34/oDy3lIeIt84NOCw8
 1Zb2Uo/jWsP43V4/q/wJamW5N+pXAU14z1DIFGdAlPb3MZhoj2atz3WWV
 a8nvg9JViktrJMawHAnMSIeRJ5seyScJVxNjmVjjZafEA4I44UFV32If2
 SQjc+u5K6jW0ZTcp2KPzMIMJpGBSRUK9xpenScutYkQQF54Ey9IPdhT3b
 ZZgMvzHsDw0i8vvxsnzHCUFCkT39ysnKm31I/5uf2u6NFHhAXCkLuEc3P w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="336940622"
X-IronPort-AV: E=Sophos;i="6.00,219,1681196400"; d="scan'208";a="336940622"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2023 23:44:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="778865672"
X-IronPort-AV: E=Sophos;i="6.00,219,1681196400"; d="scan'208";a="778865672"
Received: from mgmohiud-mobl2.gar.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.249.42.181])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2023 23:44:01 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  6 Jun 2023 09:43:27 +0300
Message-Id: <20230606064327.188226-8-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230606064327.188226-1-vinod.govindapillai@intel.com>
References: <20230606064327.188226-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v13 7/7] drm/i915/mtl: Add support for PM DEMAND
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

From: Mika Kahola <mika.kahola@intel.com>

MTL introduces a new way to instruct the PUnit with
power and bandwidth requirements of DE. Add the functionality
to program the registers and handle waits using interrupts.
The current wait time for timeouts is programmed for 10 msecs to
factor in the worst case scenarios. Changes made to use REG_BIT
for a register that we touched(GEN8_DE_MISC_IER _MMIO).

Wa_14016740474 is added which applies to Xe_LPD+ display

v2: checkpatch warning fixes, simplify program pmdemand part

v3: update to dbufs and pipes values to pmdemand register(stan)
    Removed the macro usage in update_pmdemand_values()

v4: move the pmdemand_pre_plane_update before cdclk update
    pmdemand_needs_update included cdclk params comparisons
    pmdemand_state NULL check (Gustavo)
    pmdemand.o in sorted order in the makefile (Jani)
    update pmdemand misc irq handler loop (Gustavo)
    active phys bitmask and programming correction (Gustavo)

v5: simplify pmdemand_state structure
    simplify methods to find active phys and max port clock
    Timeout in case of previou pmdemand task pending (Gustavo)

v6: rebasing
    updates to max_ddiclk calculations (Gustavo)
    updates to active_phys count method (Gustavo)

v7: use two separate loop to iterate throug old and new
    crtc states to calculate the active phys (Gustavo)

v8: use uniform function names (Gustavo)

v9: For phys change iterate through connectors (Imre)
    Look for change in phys for pmdemand update (Gustavo, Imre)
    Some more stlying changes (Imre)
    Update pmdemand state during HW readout/sanitize (Imre)

v10: Fix CI checkpatch warnings

v11: use correct pmdemand object pointer during hw readout,
     simplify the check for phys need update (Gustavo)

v12: Handle possible non serialize cases (Imre)
     Initialise also pmdemand params HW readout (Imre)
     Update active phys mask during sanitize calls (Imre)
     Check TC/encoder changes to limit connector update (Imre)

Bspec: 66451, 64636, 64602, 64603
Cc: Matt Atwood <matthew.s.atwood@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Gustavo Sousa <gustavo.sousa@intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
Signed-off-by: Mika Kahola <mika.kahola@intel.com>
Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Acked-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/Makefile                 |   1 +
 drivers/gpu/drm/i915/display/intel_display.c  |  14 +
 .../gpu/drm/i915/display/intel_display_core.h |   9 +
 .../drm/i915/display/intel_display_driver.c   |   7 +
 .../gpu/drm/i915/display/intel_display_irq.c  |  23 +-
 .../drm/i915/display/intel_display_power.c    |  14 +-
 .../drm/i915/display/intel_modeset_setup.c    |  36 +
 drivers/gpu/drm/i915/display/intel_pmdemand.c | 667 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_pmdemand.h |  58 ++
 drivers/gpu/drm/i915/i915_reg.h               |  36 +-
 10 files changed, 859 insertions(+), 6 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_pmdemand.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_pmdemand.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 1c9ed4c52760..2cd8de174bf6 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -269,6 +269,7 @@ i915-y += \
 	display/intel_pch_display.o \
 	display/intel_pch_refclk.o \
 	display/intel_plane_initial.o \
+	display/intel_pmdemand.o \
 	display/intel_psr.o \
 	display/intel_quirks.o \
 	display/intel_sprite.o \
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index f51a55f4e9d0..5cbf5eae2414 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -99,6 +99,7 @@
 #include "intel_pcode.h"
 #include "intel_pipe_crc.h"
 #include "intel_plane_initial.h"
+#include "intel_pmdemand.h"
 #include "intel_pps.h"
 #include "intel_psr.h"
 #include "intel_sdvo.h"
@@ -6352,6 +6353,10 @@ int intel_atomic_check(struct drm_device *dev,
 			return ret;
 	}
 
+	ret = intel_pmdemand_atomic_check(state);
+	if (ret)
+		goto fail;
+
 	ret = intel_atomic_check_crtcs(state);
 	if (ret)
 		goto fail;
@@ -6997,6 +7002,14 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i)
 		crtc->config = new_crtc_state;
 
+	/*
+	 * In XE_LPD+ Pmdemand combines many parameters such as voltage index,
+	 * plls, cdclk frequency, QGV point selection parameter etc. Voltage
+	 * index, cdclk/ddiclk frequencies are supposed to be configured before
+	 * the cdclk config is set.
+	 */
+	intel_pmdemand_pre_plane_update(state);
+
 	if (state->modeset) {
 		drm_atomic_helper_update_legacy_modeset_state(dev, &state->base);
 
@@ -7116,6 +7129,7 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 		intel_verify_planes(state);
 
 	intel_sagv_post_plane_update(state);
+	intel_pmdemand_post_plane_update(state);
 
 	drm_atomic_helper_commit_hw_done(&state->base);
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index dd8e08c8598f..8d2243c71dd8 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -345,6 +345,15 @@ struct intel_display {
 		struct intel_global_obj obj;
 	} dbuf;
 
+	struct {
+		wait_queue_head_t waitqueue;
+
+		/* mutex to protect pmdemand programming sequence */
+		struct mutex lock;
+
+		struct intel_global_obj obj;
+	} pmdemand;
+
 	struct {
 		/*
 		 * dkl.phy_lock protects against concurrent access of the
diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index 60ce10fc7205..dc8de861339d 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -47,6 +47,7 @@
 #include "intel_opregion.h"
 #include "intel_overlay.h"
 #include "intel_plane_initial.h"
+#include "intel_pmdemand.h"
 #include "intel_pps.h"
 #include "intel_quirks.h"
 #include "intel_vga.h"
@@ -211,6 +212,8 @@ int intel_display_driver_probe_noirq(struct drm_i915_private *i915)
 	if (ret < 0)
 		goto cleanup_vga;
 
+	intel_pmdemand_init_early(i915);
+
 	intel_power_domains_init_hw(i915, false);
 
 	if (!HAS_DISPLAY(i915))
@@ -240,6 +243,10 @@ int intel_display_driver_probe_noirq(struct drm_i915_private *i915)
 	if (ret)
 		goto cleanup_vga_client_pw_domain_dmc;
 
+	ret = intel_pmdemand_init(i915);
+	if (ret)
+		goto cleanup_vga_client_pw_domain_dmc;
+
 	init_llist_head(&i915->display.atomic_helper.free_list);
 	INIT_WORK(&i915->display.atomic_helper.free_work,
 		  intel_atomic_helper_free_state_worker);
diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index 3b2a287d2041..0b3739310f81 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -18,6 +18,7 @@
 #include "intel_fifo_underrun.h"
 #include "intel_gmbus.h"
 #include "intel_hotplug_irq.h"
+#include "intel_pmdemand.h"
 #include "intel_psr.h"
 #include "intel_psr_regs.h"
 
@@ -827,12 +828,27 @@ static u32 gen8_de_pipe_fault_mask(struct drm_i915_private *dev_priv)
 		return GEN8_DE_PIPE_IRQ_FAULT_ERRORS;
 }
 
+static void intel_pmdemand_irq_handler(struct drm_i915_private *dev_priv)
+{
+	wake_up_all(&dev_priv->display.pmdemand.waitqueue);
+}
+
 static void
 gen8_de_misc_irq_handler(struct drm_i915_private *dev_priv, u32 iir)
 {
 	bool found = false;
 
-	if (iir & GEN8_DE_MISC_GSE) {
+	if (DISPLAY_VER(dev_priv) >= 14) {
+		if (iir & (XELPDP_PMDEMAND_RSP |
+			   XELPDP_PMDEMAND_RSPTOUT_ERR)) {
+			if (iir & XELPDP_PMDEMAND_RSPTOUT_ERR)
+				drm_dbg(&dev_priv->drm,
+					"Error waiting for Punit PM Demand Response\n");
+
+			intel_pmdemand_irq_handler(dev_priv);
+			found = true;
+		}
+	} else if (iir & GEN8_DE_MISC_GSE) {
 		intel_opregion_asle_intr(dev_priv);
 		found = true;
 	}
@@ -1576,7 +1592,10 @@ void gen8_de_irq_postinstall(struct drm_i915_private *dev_priv)
 	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
 		de_port_masked |= BXT_DE_PORT_GMBUS;
 
-	if (DISPLAY_VER(dev_priv) >= 11) {
+	if (DISPLAY_VER(dev_priv) >= 14) {
+		de_misc_masked |= XELPDP_PMDEMAND_RSPTOUT_ERR |
+				  XELPDP_PMDEMAND_RSP;
+	} else if (DISPLAY_VER(dev_priv) >= 11) {
 		enum port port;
 
 		if (intel_bios_is_dsi_present(dev_priv, &port))
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 2f4f00ae2f57..db5437043904 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -20,6 +20,7 @@
 #include "intel_mchbar_regs.h"
 #include "intel_pch_refclk.h"
 #include "intel_pcode.h"
+#include "intel_pmdemand.h"
 #include "intel_pps_regs.h"
 #include "intel_snps_phy.h"
 #include "skl_watermark.h"
@@ -1082,20 +1083,29 @@ void gen9_dbuf_slices_update(struct drm_i915_private *dev_priv,
 
 static void gen9_dbuf_enable(struct drm_i915_private *dev_priv)
 {
+	u8 slices_mask;
+
 	dev_priv->display.dbuf.enabled_slices =
 		intel_enabled_dbuf_slices_mask(dev_priv);
 
+	slices_mask = BIT(DBUF_S1) | dev_priv->display.dbuf.enabled_slices;
+
+	if (DISPLAY_VER(dev_priv) >= 14)
+		intel_pmdemand_program_dbuf(dev_priv, slices_mask);
+
 	/*
 	 * Just power up at least 1 slice, we will
 	 * figure out later which slices we have and what we need.
 	 */
-	gen9_dbuf_slices_update(dev_priv, BIT(DBUF_S1) |
-				dev_priv->display.dbuf.enabled_slices);
+	gen9_dbuf_slices_update(dev_priv, slices_mask);
 }
 
 static void gen9_dbuf_disable(struct drm_i915_private *dev_priv)
 {
 	gen9_dbuf_slices_update(dev_priv, 0);
+
+	if (DISPLAY_VER(dev_priv) >= 14)
+		intel_pmdemand_program_dbuf(dev_priv, 0);
 }
 
 static void gen12_dbuf_slices_config(struct drm_i915_private *dev_priv)
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index 5ff99ca7f1de..4046caeda6b9 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -26,6 +26,7 @@
 #include "intel_fifo_underrun.h"
 #include "intel_modeset_setup.h"
 #include "intel_pch_display.h"
+#include "intel_pmdemand.h"
 #include "intel_tc.h"
 #include "intel_vblank.h"
 #include "intel_wm.h"
@@ -115,14 +116,22 @@ static void set_encoder_for_connector(struct intel_connector *connector,
 static void reset_encoder_connector_state(struct intel_encoder *encoder)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_pmdemand_state *pmdemand_state =
+		to_intel_pmdemand_state(i915->display.pmdemand.obj.state);
 	struct intel_connector *connector;
 	struct drm_connector_list_iter conn_iter;
 
 	drm_connector_list_iter_begin(&i915->drm, &conn_iter);
 	for_each_intel_connector_iter(connector, &conn_iter) {
+		enum phy phy;
+
 		if (connector->base.encoder != &encoder->base)
 			continue;
 
+		phy = intel_port_to_phy(i915, encoder->port);
+		if (!intel_phy_is_tc(i915, phy))
+			pmdemand_state->active_phys_mask &= ~BIT(phy);
+
 		set_encoder_for_connector(connector, NULL);
 
 		connector->base.dpms = DRM_MODE_DPMS_OFF;
@@ -151,6 +160,8 @@ static void intel_crtc_disable_noatomic_complete(struct intel_crtc *crtc)
 		to_intel_cdclk_state(i915->display.cdclk.obj.state);
 	struct intel_dbuf_state *dbuf_state =
 		to_intel_dbuf_state(i915->display.dbuf.obj.state);
+	struct intel_pmdemand_state *pmdemand_state =
+		to_intel_pmdemand_state(i915->display.pmdemand.obj.state);
 	struct intel_crtc_state *crtc_state =
 		to_intel_crtc_state(crtc->base.state);
 	enum pipe pipe = crtc->pipe;
@@ -174,6 +185,8 @@ static void intel_crtc_disable_noatomic_complete(struct intel_crtc *crtc)
 
 	bw_state->data_rate[pipe] = 0;
 	bw_state->num_active_planes[pipe] = 0;
+
+	pmdemand_state->ddi_clocks[pipe] = 0;
 }
 
 /*
@@ -552,6 +565,8 @@ static void intel_sanitize_encoder(struct intel_encoder *encoder)
 	struct intel_crtc *crtc = to_intel_crtc(encoder->base.crtc);
 	struct intel_crtc_state *crtc_state = crtc ?
 		to_intel_crtc_state(crtc->base.state) : NULL;
+	struct intel_pmdemand_state *pmdemand_state =
+		to_intel_pmdemand_state(i915->display.pmdemand.obj.state);
 
 	/*
 	 * We need to check both for a crtc link (meaning that the encoder is
@@ -570,11 +585,17 @@ static void intel_sanitize_encoder(struct intel_encoder *encoder)
 
 	connector = intel_encoder_find_connector(encoder);
 	if (connector && !has_active_crtc) {
+		enum phy phy;
+
 		drm_dbg_kms(&i915->drm,
 			    "[ENCODER:%d:%s] has active connectors but no active pipe!\n",
 			    encoder->base.base.id,
 			    encoder->base.name);
 
+		phy = intel_port_to_phy(i915, encoder->port);
+		if (!intel_phy_is_tc(i915, phy))
+			pmdemand_state->active_phys_mask &= ~BIT(phy);
+
 		/*
 		 * Connector is active, but has no active pipe. This is fallout
 		 * from our resume register restoring. Disable the encoder
@@ -661,6 +682,9 @@ static void intel_modeset_readout_hw_state(struct drm_i915_private *i915)
 		to_intel_cdclk_state(i915->display.cdclk.obj.state);
 	struct intel_dbuf_state *dbuf_state =
 		to_intel_dbuf_state(i915->display.dbuf.obj.state);
+	struct intel_pmdemand_state *pmdemand_state =
+		to_intel_pmdemand_state(i915->display.pmdemand.obj.state);
+	u16 active_phys = 0;
 	enum pipe pipe;
 	struct intel_crtc *crtc;
 	struct intel_encoder *encoder;
@@ -742,6 +766,8 @@ static void intel_modeset_readout_hw_state(struct drm_i915_private *i915)
 
 	drm_connector_list_iter_begin(&i915->drm, &conn_iter);
 	for_each_intel_connector_iter(connector, &conn_iter) {
+		enum phy phy;
+
 		if (connector->get_hw_state(connector)) {
 			struct intel_crtc_state *crtc_state;
 			struct intel_crtc *crtc;
@@ -764,6 +790,10 @@ static void intel_modeset_readout_hw_state(struct drm_i915_private *i915)
 					drm_connector_mask(&connector->base);
 				crtc_state->uapi.encoder_mask |=
 					drm_encoder_mask(&encoder->base);
+
+				phy = intel_port_to_phy(i915, encoder->port);
+				if (!intel_phy_is_tc(i915, phy))
+					active_phys |= BIT(phy);
 			}
 		} else {
 			connector->base.dpms = DRM_MODE_DPMS_OFF;
@@ -776,6 +806,8 @@ static void intel_modeset_readout_hw_state(struct drm_i915_private *i915)
 	}
 	drm_connector_list_iter_end(&conn_iter);
 
+	pmdemand_state->active_phys_mask = active_phys;
+
 	for_each_intel_crtc(&i915->drm, crtc) {
 		struct intel_bw_state *bw_state =
 			to_intel_bw_state(i915->display.bw.obj.state);
@@ -840,9 +872,13 @@ static void intel_modeset_readout_hw_state(struct drm_i915_private *i915)
 		cdclk_state->min_cdclk[crtc->pipe] = min_cdclk;
 		cdclk_state->min_voltage_level[crtc->pipe] =
 			crtc_state->min_voltage_level;
+		pmdemand_state->ddi_clocks[crtc->pipe] =
+			crtc_state->port_clock;
 
 		intel_bw_crtc_update(bw_state, crtc_state);
 	}
+
+	intel_pmdemand_init_pmdemand_params(i915, pmdemand_state);
 }
 
 static void
diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.c b/drivers/gpu/drm/i915/display/intel_pmdemand.c
new file mode 100644
index 000000000000..9decbeb63fad
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_pmdemand.c
@@ -0,0 +1,667 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2023 Intel Corporation
+ */
+
+#include <linux/bitops.h>
+
+#include "i915_drv.h"
+#include "i915_reg.h"
+#include "intel_atomic.h"
+#include "intel_bw.h"
+#include "intel_cdclk.h"
+#include "intel_de.h"
+#include "intel_display_trace.h"
+#include "intel_pmdemand.h"
+#include "skl_watermark.h"
+
+static struct intel_global_state *
+intel_pmdemand_duplicate_state(struct intel_global_obj *obj)
+{
+	struct intel_pmdemand_state *pmdemand_state;
+
+	pmdemand_state = kmemdup(obj->state, sizeof(*pmdemand_state), GFP_KERNEL);
+	if (!pmdemand_state)
+		return NULL;
+
+	return &pmdemand_state->base;
+}
+
+static void intel_pmdemand_destroy_state(struct intel_global_obj *obj,
+					 struct intel_global_state *state)
+{
+	kfree(state);
+}
+
+static const struct intel_global_state_funcs intel_pmdemand_funcs = {
+	.atomic_duplicate_state = intel_pmdemand_duplicate_state,
+	.atomic_destroy_state = intel_pmdemand_destroy_state,
+};
+
+static struct intel_pmdemand_state *
+intel_atomic_get_pmdemand_state(struct intel_atomic_state *state)
+{
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_global_state *pmdemand_state =
+		intel_atomic_get_global_obj_state(state,
+						  &i915->display.pmdemand.obj);
+
+	if (IS_ERR(pmdemand_state))
+		return ERR_CAST(pmdemand_state);
+
+	return to_intel_pmdemand_state(pmdemand_state);
+}
+
+static struct intel_pmdemand_state *
+intel_atomic_get_old_pmdemand_state(struct intel_atomic_state *state)
+{
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_global_state *pmdemand_state =
+		intel_atomic_get_old_global_obj_state(state,
+						      &i915->display.pmdemand.obj);
+
+	if (!pmdemand_state)
+		return NULL;
+
+	return to_intel_pmdemand_state(pmdemand_state);
+}
+
+static struct intel_pmdemand_state *
+intel_atomic_get_new_pmdemand_state(struct intel_atomic_state *state)
+{
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_global_state *pmdemand_state =
+		intel_atomic_get_new_global_obj_state(state,
+						      &i915->display.pmdemand.obj);
+
+	if (!pmdemand_state)
+		return NULL;
+
+	return to_intel_pmdemand_state(pmdemand_state);
+}
+
+int intel_pmdemand_init(struct drm_i915_private *i915)
+{
+	struct intel_pmdemand_state *pmdemand_state;
+
+	pmdemand_state = kzalloc(sizeof(*pmdemand_state), GFP_KERNEL);
+	if (!pmdemand_state)
+		return -ENOMEM;
+
+	intel_atomic_global_obj_init(i915, &i915->display.pmdemand.obj,
+				     &pmdemand_state->base,
+				     &intel_pmdemand_funcs);
+
+	if (IS_MTL_DISPLAY_STEP(i915, STEP_A0, STEP_C0))
+		/* Wa_14016740474 */
+		intel_de_rmw(i915, XELPD_CHICKEN_DCPR_3, 0, DMD_RSP_TIMEOUT_DISABLE);
+
+	return 0;
+}
+
+void intel_pmdemand_init_early(struct drm_i915_private *i915)
+{
+	mutex_init(&i915->display.pmdemand.lock);
+	init_waitqueue_head(&i915->display.pmdemand.waitqueue);
+}
+
+static void
+intel_pmdemand_update_max_ddiclk(struct intel_atomic_state *state,
+				 struct intel_pmdemand_state *pmdemand_state)
+{
+	int max_ddiclk = 0;
+	struct intel_crtc *crtc;
+	int i;
+	const struct intel_crtc_state *new_crtc_state;
+
+	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i)
+		pmdemand_state->ddi_clocks[crtc->pipe] =
+			new_crtc_state->port_clock;
+
+	for (i = 0; i < ARRAY_SIZE(pmdemand_state->ddi_clocks); i++)
+		max_ddiclk = max(pmdemand_state->ddi_clocks[i], max_ddiclk);
+
+	pmdemand_state->params.ddiclk_max = DIV_ROUND_UP(max_ddiclk, 1000);
+}
+
+static void
+intel_pmdemand_update_phys_mask(struct drm_i915_private *i915,
+				struct intel_atomic_state *state,
+				struct drm_connector_state *conn_state,
+				bool for_old_state, u16 *phys_mask)
+{
+	struct intel_crtc *crtc = to_intel_crtc(conn_state->crtc);
+	struct intel_encoder *encoder = to_intel_encoder(conn_state->best_encoder);
+	struct intel_crtc_state *crtc_state;
+	enum phy phy;
+
+	if (!crtc || !encoder)
+		return;
+
+	phy = intel_port_to_phy(i915, encoder->port);
+	if (intel_phy_is_tc(i915, phy))
+		return;
+
+	if (for_old_state)
+		crtc_state = intel_atomic_get_old_crtc_state(state, crtc);
+	else
+		crtc_state = intel_atomic_get_new_crtc_state(state, crtc);
+
+	if (!crtc_state->hw.active)
+		return;
+
+	if (for_old_state)
+		*phys_mask &= ~BIT(phy);
+	else
+		*phys_mask |= BIT(phy);
+}
+
+static void
+intel_pmdemand_update_active_non_tc_phys(struct drm_i915_private *i915,
+					 struct intel_atomic_state *state,
+					 struct intel_pmdemand_state *pmdemand_state)
+{
+	u16 *phys_mask = &pmdemand_state->active_phys_mask;
+	struct drm_connector *connector;
+	int i;
+	struct drm_connector_state *old_conn_state, *new_conn_state;
+
+	for_each_oldnew_connector_in_state(&state->base, connector,
+					   old_conn_state, new_conn_state, i) {
+		if (!intel_connector_needs_modeset(state, connector))
+			continue;
+
+		/* First clear the active phys in the old connector state */
+		intel_pmdemand_update_phys_mask(i915, state, old_conn_state,
+						true, phys_mask);
+
+		/* Then set the active phys in new connector state */
+		intel_pmdemand_update_phys_mask(i915, state, new_conn_state,
+						false, phys_mask);
+	}
+
+	pmdemand_state->params.active_phys = hweight16(*phys_mask);
+}
+
+static bool
+intel_pmdemand_encoder_has_tc_phy(struct drm_i915_private *i915,
+				  struct intel_encoder *encoder)
+{
+	enum phy phy;
+
+	if (!encoder)
+		return false;
+
+	phy = intel_port_to_phy(i915, encoder->port);
+	if (intel_phy_is_tc(i915, phy))
+		return true;
+
+	return false;
+}
+
+static bool
+intel_pmdemand_connector_needs_update(struct intel_atomic_state *state)
+{
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct drm_connector *connector;
+	struct drm_connector_state *new_conn_state, *old_conn_state;
+	int i;
+
+	for_each_oldnew_connector_in_state(&state->base, connector,
+					   old_conn_state, new_conn_state, i) {
+		struct intel_encoder *old_encoder =
+			to_intel_encoder(old_conn_state->best_encoder);
+		struct intel_encoder *new_encoder =
+			to_intel_encoder(new_conn_state->best_encoder);
+
+		if (!intel_connector_needs_modeset(state, connector))
+			continue;
+
+		if (old_encoder == new_encoder ||
+		    (intel_pmdemand_encoder_has_tc_phy(i915, old_encoder) &&
+		     intel_pmdemand_encoder_has_tc_phy(i915, new_encoder)))
+			continue;
+
+		return true;
+	}
+
+	return false;
+}
+
+static bool intel_pmdemand_needs_update(struct intel_atomic_state *state)
+{
+	struct intel_crtc *crtc;
+	int i;
+	const struct intel_bw_state *new_bw_state, *old_bw_state;
+	const struct intel_cdclk_state *new_cdclk_state, *old_cdclk_state;
+	const struct intel_crtc_state *new_crtc_state, *old_crtc_state;
+	const struct intel_dbuf_state *new_dbuf_state, *old_dbuf_state;
+
+	new_bw_state = intel_atomic_get_new_bw_state(state);
+	old_bw_state = intel_atomic_get_old_bw_state(state);
+	if (new_bw_state && new_bw_state->qgv_point_peakbw !=
+	    old_bw_state->qgv_point_peakbw)
+		return true;
+
+	new_dbuf_state = intel_atomic_get_new_dbuf_state(state);
+	old_dbuf_state = intel_atomic_get_old_dbuf_state(state);
+	if (new_dbuf_state &&
+	    (new_dbuf_state->active_pipes !=
+	     old_dbuf_state->active_pipes ||
+	     new_dbuf_state->enabled_slices !=
+	     old_dbuf_state->enabled_slices))
+		return true;
+
+	new_cdclk_state = intel_atomic_get_new_cdclk_state(state);
+	old_cdclk_state = intel_atomic_get_old_cdclk_state(state);
+	if (new_cdclk_state &&
+	    (new_cdclk_state->actual.cdclk !=
+	     old_cdclk_state->actual.cdclk ||
+	     new_cdclk_state->actual.voltage_level !=
+	     old_cdclk_state->actual.voltage_level))
+		return true;
+
+	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
+					    new_crtc_state, i)
+		if (new_crtc_state->port_clock != old_crtc_state->port_clock)
+			return true;
+
+	if (intel_pmdemand_connector_needs_update(state))
+		return true;
+
+	return false;
+}
+
+int intel_pmdemand_atomic_check(struct intel_atomic_state *state)
+{
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	const struct intel_bw_state *new_bw_state;
+	const struct intel_cdclk_state *new_cdclk_state;
+	const struct intel_dbuf_state *new_dbuf_state;
+	struct intel_pmdemand_state *new_pmdemand_state;
+	int ret;
+
+	if (DISPLAY_VER(i915) < 14)
+		return 0;
+
+	if (!intel_pmdemand_needs_update(state))
+		return 0;
+
+	new_pmdemand_state = intel_atomic_get_pmdemand_state(state);
+	if (IS_ERR(new_pmdemand_state))
+		return PTR_ERR(new_pmdemand_state);
+
+	ret = intel_atomic_lock_global_state(&new_pmdemand_state->base);
+	if (ret)
+		return ret;
+
+	new_bw_state = intel_atomic_get_bw_state(state);
+	if (IS_ERR(new_bw_state))
+		return PTR_ERR(new_bw_state);
+
+	/* firmware will calculate the qclck_gc_index, requirement is set to 0 */
+	new_pmdemand_state->params.qclk_gv_index = 0;
+	new_pmdemand_state->params.qclk_gv_bw = new_bw_state->qgv_point_peakbw;
+
+	new_dbuf_state = intel_atomic_get_dbuf_state(state);
+	if (IS_ERR(new_dbuf_state))
+		return PTR_ERR(new_dbuf_state);
+
+	new_pmdemand_state->params.active_pipes =
+		min_t(u8, hweight8(new_dbuf_state->active_pipes), 3);
+	new_pmdemand_state->params.active_dbufs =
+		min_t(u8, hweight8(new_dbuf_state->enabled_slices), 3);
+
+	new_cdclk_state = intel_atomic_get_cdclk_state(state);
+	if (IS_ERR(new_cdclk_state))
+		return PTR_ERR(new_cdclk_state);
+
+	new_pmdemand_state->params.voltage_index =
+		new_cdclk_state->actual.voltage_level;
+	new_pmdemand_state->params.cdclk_freq_mhz =
+		DIV_ROUND_UP(new_cdclk_state->actual.cdclk, 1000);
+
+	intel_pmdemand_update_max_ddiclk(state, new_pmdemand_state);
+
+	intel_pmdemand_update_active_non_tc_phys(i915, state, new_pmdemand_state);
+
+	/*
+	 * Setting scalers to max as it can not be calculated during flips and
+	 * fastsets without taking global states locks.
+	 */
+	new_pmdemand_state->params.scalers = 7;
+
+	/*
+	 * If no modesetting is allowed, it doesn't allow adding additional
+	 * crtcs to the state. So we cannot call serialize here.
+	 */
+	if (!state->base.allow_modeset)
+		return 0;
+
+	return intel_atomic_serialize_global_state(&new_pmdemand_state->base);
+}
+
+static bool intel_pmdemand_check_prev_transaction(struct drm_i915_private *i915)
+{
+	return !(intel_de_wait_for_clear(i915,
+					 XELPDP_INITIATE_PMDEMAND_REQUEST(1),
+					 XELPDP_PMDEMAND_REQ_ENABLE, 10) ||
+		 intel_de_wait_for_clear(i915,
+					 GEN12_DCPR_STATUS_1,
+					 XELPDP_PMDEMAND_INFLIGHT_STATUS, 10));
+}
+
+void
+intel_pmdemand_init_pmdemand_params(struct drm_i915_private *i915,
+				    struct intel_pmdemand_state *pmdemand_state)
+{
+	u32 reg1, reg2;
+
+	mutex_lock(&i915->display.pmdemand.lock);
+	if (drm_WARN_ON(&i915->drm,
+			!intel_pmdemand_check_prev_transaction(i915)))
+		goto unlock;
+
+	reg1 = intel_de_read(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(0));
+
+	reg2 = intel_de_read(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(1));
+
+	/* Set 1*/
+	pmdemand_state->params.qclk_gv_bw =
+		REG_FIELD_GET(XELPDP_PMDEMAND_QCLK_GV_BW_MASK, reg1);
+	pmdemand_state->params.voltage_index =
+		REG_FIELD_GET(XELPDP_PMDEMAND_VOLTAGE_INDEX_MASK, reg1);
+	pmdemand_state->params.qclk_gv_index =
+		REG_FIELD_GET(XELPDP_PMDEMAND_QCLK_GV_INDEX_MASK, reg1);
+	pmdemand_state->params.active_pipes =
+		REG_FIELD_GET(XELPDP_PMDEMAND_PIPES_MASK, reg1);
+	pmdemand_state->params.active_dbufs =
+		REG_FIELD_GET(XELPDP_PMDEMAND_DBUFS_MASK, reg1);
+	pmdemand_state->params.active_phys =
+		REG_FIELD_GET(XELPDP_PMDEMAND_PHYS_MASK, reg1);
+
+	/* Set 2*/
+	pmdemand_state->params.cdclk_freq_mhz =
+		REG_FIELD_GET(XELPDP_PMDEMAND_CDCLK_FREQ_MASK, reg2);
+	pmdemand_state->params.ddiclk_max =
+		REG_FIELD_GET(XELPDP_PMDEMAND_DDICLK_FREQ_MASK, reg2);
+	pmdemand_state->params.scalers =
+		REG_FIELD_GET(XELPDP_PMDEMAND_SCALERS_MASK, reg2);
+
+unlock:
+	memset(&pmdemand_state->params, 0, sizeof(pmdemand_state->params));
+	mutex_unlock(&i915->display.pmdemand.lock);
+}
+
+static bool intel_pmdemand_req_complete(struct drm_i915_private *i915)
+{
+	return !(intel_de_read(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(1)) &
+		 XELPDP_PMDEMAND_REQ_ENABLE);
+}
+
+static void intel_pmdemand_wait(struct drm_i915_private *i915)
+{
+	if (!wait_event_timeout(i915->display.pmdemand.waitqueue,
+				intel_pmdemand_req_complete(i915),
+				msecs_to_jiffies_timeout(10)))
+		drm_err(&i915->drm,
+			"timed out waiting for Punit PM Demand Response\n");
+}
+
+/* Required to be programmed during Display Init Sequences. */
+void intel_pmdemand_program_dbuf(struct drm_i915_private *i915,
+				 u8 dbuf_slices)
+{
+	u32 dbufs = min_t(u32, hweight8(dbuf_slices), 3);
+
+	mutex_lock(&i915->display.pmdemand.lock);
+	if (drm_WARN_ON(&i915->drm,
+			!intel_pmdemand_check_prev_transaction(i915)))
+		goto unlock;
+
+	intel_de_rmw(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(0),
+		     XELPDP_PMDEMAND_DBUFS_MASK, XELPDP_PMDEMAND_DBUFS(dbufs));
+	intel_de_rmw(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(1), 0,
+		     XELPDP_PMDEMAND_REQ_ENABLE);
+
+	intel_pmdemand_wait(i915);
+
+unlock:
+	mutex_unlock(&i915->display.pmdemand.lock);
+}
+
+static void
+intel_pmdemand_update_params(const struct intel_pmdemand_state *new,
+			     const struct intel_pmdemand_state *old,
+			     u32 *reg1, u32 *reg2, bool serialized)
+{
+	u32 plls, tmp, current_val;
+
+	/*
+	 * The pmdemand parameter updates happens in two steps. Pre plane and
+	 * post plane updates. During the pre plane, as DE might still be
+	 * handling with some old operations, to avoid unexpected performance
+	 * issues, program the pmdemand parameters with higher of old and new
+	 * values. And then after once settled, use the new parameter values
+	 * as part of the post plane update.
+	 *
+	 * If the pmdemand params update happens without modeset allowed, this
+	 * means we can't serialize the updates. So that implies possbility of
+	 * some parallel atomic commits affecting the pmdemand parameters. In
+	 * that case, we need to consider the current values from the register
+	 * as well. So in pre-plane case, we need to check the max of old, new
+	 * and current register value if not serialized. In post plance update
+	 * we need to consider max of new and current register value if not
+	 * serialized
+	 */
+
+	/* Set 1*/
+	current_val = REG_FIELD_GET(XELPDP_PMDEMAND_QCLK_GV_BW_MASK, *reg1);
+	*reg1 &= ~XELPDP_PMDEMAND_QCLK_GV_BW_MASK;
+	tmp = old ? max(old->params.qclk_gv_bw, new->params.qclk_gv_bw) :
+		    new->params.qclk_gv_bw;
+	if (!serialized)
+		tmp = max(tmp, current_val);
+	*reg1 |= XELPDP_PMDEMAND_QCLK_GV_BW(tmp);
+
+	current_val = REG_FIELD_GET(XELPDP_PMDEMAND_VOLTAGE_INDEX_MASK, *reg1);
+	*reg1 &= ~XELPDP_PMDEMAND_VOLTAGE_INDEX_MASK;
+	tmp = old ? max(old->params.voltage_index, new->params.voltage_index) :
+		    new->params.voltage_index;
+	if (!serialized)
+		tmp = max(tmp, current_val);
+	*reg1 |= XELPDP_PMDEMAND_VOLTAGE_INDEX(tmp);
+
+	current_val = REG_FIELD_GET(XELPDP_PMDEMAND_QCLK_GV_INDEX_MASK, *reg1);
+	*reg1 &= ~XELPDP_PMDEMAND_QCLK_GV_INDEX_MASK;
+	tmp = old ? max(old->params.qclk_gv_index, new->params.qclk_gv_index) :
+		    new->params.qclk_gv_index;
+	if (!serialized)
+		tmp = max(tmp, current_val);
+	*reg1 |= XELPDP_PMDEMAND_QCLK_GV_INDEX(tmp);
+
+	current_val = REG_FIELD_GET(XELPDP_PMDEMAND_PIPES_MASK, *reg1);
+	*reg1 &= ~XELPDP_PMDEMAND_PIPES_MASK;
+	tmp = old ? max(old->params.active_pipes, new->params.active_pipes) :
+		    new->params.active_pipes;
+	if (!serialized)
+		tmp = max(tmp, current_val);
+	*reg1 |= XELPDP_PMDEMAND_PIPES(tmp);
+
+	current_val = REG_FIELD_GET(XELPDP_PMDEMAND_DBUFS_MASK, *reg1);
+	*reg1 &= ~XELPDP_PMDEMAND_DBUFS_MASK;
+	tmp = old ? max(old->params.active_dbufs, new->params.active_dbufs) :
+		    new->params.active_dbufs;
+	if (!serialized)
+		tmp = max(tmp, current_val);
+	*reg1 |= XELPDP_PMDEMAND_DBUFS(tmp);
+
+	current_val = REG_FIELD_GET(XELPDP_PMDEMAND_PHYS_MASK, *reg1);
+	*reg1 &= ~XELPDP_PMDEMAND_PHYS_MASK;
+	plls = old ? max(old->params.active_phys, new->params.active_phys) :
+		     new->params.active_phys;
+	if (!serialized)
+		plls = max(plls, current_val);
+	plls = min_t(u32, plls, 7);
+	*reg1 |= XELPDP_PMDEMAND_PHYS(plls);
+
+	/* Set 2*/
+	current_val = REG_FIELD_GET(XELPDP_PMDEMAND_CDCLK_FREQ_MASK, *reg2);
+	*reg2 &= ~XELPDP_PMDEMAND_CDCLK_FREQ_MASK;
+	tmp = old ? max(old->params.cdclk_freq_mhz,
+			new->params.cdclk_freq_mhz) :
+		    new->params.cdclk_freq_mhz;
+	if (!serialized)
+		tmp = max(tmp, current_val);
+	*reg2 |= XELPDP_PMDEMAND_CDCLK_FREQ(tmp);
+
+	current_val = REG_FIELD_GET(XELPDP_PMDEMAND_DDICLK_FREQ_MASK, *reg2);
+	*reg2 &= ~XELPDP_PMDEMAND_DDICLK_FREQ_MASK;
+	tmp = old ? max(old->params.ddiclk_max, new->params.ddiclk_max) :
+		    new->params.ddiclk_max;
+	if (!serialized)
+		tmp = max(tmp, current_val);
+	*reg2 |= XELPDP_PMDEMAND_DDICLK_FREQ(tmp);
+
+	current_val = REG_FIELD_GET(XELPDP_PMDEMAND_SCALERS_MASK, *reg2);
+	*reg2 &= ~XELPDP_PMDEMAND_SCALERS_MASK;
+	tmp = old ? max(old->params.scalers, new->params.scalers) :
+		    new->params.scalers;
+	if (!serialized)
+		tmp = max(tmp, current_val);
+	*reg2 |= XELPDP_PMDEMAND_SCALERS(tmp);
+
+	/*
+	 * Active_PLLs starts with 1 because of CDCLK PLL.
+	 * TODO: Missing to account genlock filter when it gets used.
+	 */
+	plls = min_t(u32, plls + 1, 7);
+	*reg2 &= ~XELPDP_PMDEMAND_PLLS_MASK;
+	*reg2 |= XELPDP_PMDEMAND_PLLS(plls);
+}
+
+static void
+intel_pmdemand_program_params(struct drm_i915_private *i915,
+			      const struct intel_pmdemand_state *new,
+			      const struct intel_pmdemand_state *old,
+			      bool serialized)
+{
+	bool changed = false;
+	u32 reg1, mod_reg1;
+	u32 reg2, mod_reg2;
+
+	mutex_lock(&i915->display.pmdemand.lock);
+	if (drm_WARN_ON(&i915->drm,
+			!intel_pmdemand_check_prev_transaction(i915)))
+		goto unlock;
+
+	reg1 = intel_de_read(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(0));
+	mod_reg1 = reg1;
+
+	reg2 = intel_de_read(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(1));
+	mod_reg2 = reg2;
+
+	intel_pmdemand_update_params(new, old, &mod_reg1, &mod_reg2,
+				     serialized);
+
+	if (reg1 != mod_reg1) {
+		intel_de_write(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(0),
+			       mod_reg1);
+		changed = true;
+	}
+
+	if (reg2 != mod_reg2) {
+		intel_de_write(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(1),
+			       mod_reg2);
+		changed = true;
+	}
+
+	/* Initiate pm demand request only if register values are changed */
+	if (!changed)
+		goto unlock;
+
+	drm_dbg_kms(&i915->drm,
+		    "initate pmdemand request values: (0x%x 0x%x)\n",
+		    mod_reg1, mod_reg2);
+
+	intel_de_rmw(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(1), 0,
+		     XELPDP_PMDEMAND_REQ_ENABLE);
+
+	intel_pmdemand_wait(i915);
+
+unlock:
+	mutex_unlock(&i915->display.pmdemand.lock);
+}
+
+static bool
+intel_pmdemand_state_changed(const struct intel_pmdemand_state *new,
+			     const struct intel_pmdemand_state *old)
+{
+	return memcmp(&new->params, &old->params, sizeof(new->params)) != 0;
+}
+
+static bool
+intel_pmdemand_check_serialized(struct intel_atomic_state *state)
+{
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_crtc *crtc;
+
+	for_each_intel_crtc(&i915->drm, crtc) {
+		struct intel_crtc_state *crtc_state =
+			intel_atomic_get_new_crtc_state(state, crtc);
+		if (!crtc_state)
+			return false;
+	}
+
+	return true;
+}
+
+void intel_pmdemand_pre_plane_update(struct intel_atomic_state *state)
+{
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	const struct intel_pmdemand_state *new_pmdemand_state =
+		intel_atomic_get_new_pmdemand_state(state);
+	const struct intel_pmdemand_state *old_pmdemand_state =
+		intel_atomic_get_old_pmdemand_state(state);
+	bool serialized;
+
+	if (DISPLAY_VER(i915) < 14)
+		return;
+
+	if (!new_pmdemand_state ||
+	    !intel_pmdemand_state_changed(new_pmdemand_state,
+					  old_pmdemand_state))
+		return;
+
+	serialized = intel_pmdemand_check_serialized(state);
+
+	WARN_ON(!new_pmdemand_state->base.changed);
+
+	intel_pmdemand_program_params(i915, new_pmdemand_state,
+				      old_pmdemand_state, serialized);
+}
+
+void intel_pmdemand_post_plane_update(struct intel_atomic_state *state)
+{
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	const struct intel_pmdemand_state *new_pmdemand_state =
+		intel_atomic_get_new_pmdemand_state(state);
+	const struct intel_pmdemand_state *old_pmdemand_state =
+		intel_atomic_get_old_pmdemand_state(state);
+	bool serialized;
+
+	if (DISPLAY_VER(i915) < 14)
+		return;
+
+	if (!new_pmdemand_state ||
+	    !intel_pmdemand_state_changed(new_pmdemand_state,
+					  old_pmdemand_state))
+		return;
+
+	serialized = intel_pmdemand_check_serialized(state);
+
+	WARN_ON(!new_pmdemand_state->base.changed);
+
+	intel_pmdemand_program_params(i915, new_pmdemand_state, NULL,
+				      serialized);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.h b/drivers/gpu/drm/i915/display/intel_pmdemand.h
new file mode 100644
index 000000000000..42b6de79f719
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_pmdemand.h
@@ -0,0 +1,58 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2023 Intel Corporation
+ */
+
+#ifndef __INTEL_PMDEMAND_H__
+#define __INTEL_PMDEMAND_H__
+
+#include "intel_display_limits.h"
+#include "intel_global_state.h"
+
+struct drm_i915_private;
+struct intel_atomic_state;
+struct intel_crtc_state;
+struct intel_plane_state;
+
+struct pmdemand_params {
+	u16 qclk_gv_bw;
+	u8 voltage_index;
+	u8 qclk_gv_index;
+	u8 active_pipes;
+	u8 active_dbufs;
+	/* Total number of non type C active phys from active_phys_mask */
+	u8 active_phys;
+	u16 cdclk_freq_mhz;
+	/* max from ddi_clocks[] */
+	u16 ddiclk_max;
+	u8 scalers;
+};
+
+struct intel_pmdemand_state {
+	struct intel_global_state base;
+
+	/* Maintain a persistent list of port clocks across all crtcs */
+	int ddi_clocks[I915_MAX_PIPES];
+
+	/* Maintain a persistent list of non type C phys mask */
+	u16 active_phys_mask;
+
+	/* Parameters to be configured in the pmdemand registers */
+	struct pmdemand_params params;
+};
+
+#define to_intel_pmdemand_state(x) container_of((x), \
+						struct intel_pmdemand_state, \
+						base)
+
+void intel_pmdemand_init_early(struct drm_i915_private *i915);
+int intel_pmdemand_init(struct drm_i915_private *i915);
+void intel_pmdemand_init_pmdemand_params(struct drm_i915_private *i915,
+					 struct intel_pmdemand_state *pmdemand_state);
+void intel_pmdemand_program_dbuf(struct drm_i915_private *i915,
+				 u8 dbuf_slices);
+void intel_pmdemand_pre_plane_update(struct intel_atomic_state *state);
+void intel_pmdemand_post_plane_update(struct intel_atomic_state *state);
+int intel_pmdemand_atomic_check(struct intel_atomic_state *state);
+
+#endif /* __INTEL_PMDEMAND_H__ */
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 0523418129c5..6d34d9f59b1c 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -4418,8 +4418,10 @@
 #define GEN8_DE_MISC_IMR _MMIO(0x44464)
 #define GEN8_DE_MISC_IIR _MMIO(0x44468)
 #define GEN8_DE_MISC_IER _MMIO(0x4446c)
-#define  GEN8_DE_MISC_GSE		(1 << 27)
-#define  GEN8_DE_EDP_PSR		(1 << 19)
+#define  XELPDP_PMDEMAND_RSPTOUT_ERR	REG_BIT(27)
+#define  GEN8_DE_MISC_GSE		REG_BIT(27)
+#define  GEN8_DE_EDP_PSR		REG_BIT(19)
+#define  XELPDP_PMDEMAND_RSP		REG_BIT(3)
 
 #define GEN8_PCU_ISR _MMIO(0x444e0)
 #define GEN8_PCU_IMR _MMIO(0x444e4)
@@ -4504,6 +4506,33 @@
 #define  XELPDP_DP_ALT_HPD_LONG_DETECT		REG_BIT(1)
 #define  XELPDP_DP_ALT_HPD_SHORT_DETECT		REG_BIT(0)
 
+#define XELPDP_INITIATE_PMDEMAND_REQUEST(dword)		_MMIO(0x45230 + 4 * (dword))
+#define  XELPDP_PMDEMAND_QCLK_GV_BW_MASK		REG_GENMASK(31, 16)
+#define  XELPDP_PMDEMAND_QCLK_GV_BW(x)			REG_FIELD_PREP(XELPDP_PMDEMAND_QCLK_GV_BW_MASK, x)
+#define  XELPDP_PMDEMAND_VOLTAGE_INDEX_MASK		REG_GENMASK(14, 12)
+#define  XELPDP_PMDEMAND_VOLTAGE_INDEX(x)		REG_FIELD_PREP(XELPDP_PMDEMAND_VOLTAGE_INDEX_MASK, x)
+#define  XELPDP_PMDEMAND_QCLK_GV_INDEX_MASK		REG_GENMASK(11, 8)
+#define  XELPDP_PMDEMAND_QCLK_GV_INDEX(x)		REG_FIELD_PREP(XELPDP_PMDEMAND_QCLK_GV_INDEX_MASK, x)
+#define  XELPDP_PMDEMAND_PIPES_MASK			REG_GENMASK(7, 6)
+#define  XELPDP_PMDEMAND_PIPES(x)			REG_FIELD_PREP(XELPDP_PMDEMAND_PIPES_MASK, x)
+#define  XELPDP_PMDEMAND_DBUFS_MASK			REG_GENMASK(5, 4)
+#define  XELPDP_PMDEMAND_DBUFS(x)			REG_FIELD_PREP(XELPDP_PMDEMAND_DBUFS_MASK, x)
+#define  XELPDP_PMDEMAND_PHYS_MASK			REG_GENMASK(2, 0)
+#define  XELPDP_PMDEMAND_PHYS(x)			REG_FIELD_PREP(XELPDP_PMDEMAND_PHYS_MASK, x)
+
+#define  XELPDP_PMDEMAND_REQ_ENABLE			REG_BIT(31)
+#define  XELPDP_PMDEMAND_CDCLK_FREQ_MASK		REG_GENMASK(30, 20)
+#define  XELPDP_PMDEMAND_CDCLK_FREQ(x)			REG_FIELD_PREP(XELPDP_PMDEMAND_CDCLK_FREQ_MASK, x)
+#define  XELPDP_PMDEMAND_DDICLK_FREQ_MASK		REG_GENMASK(18, 8)
+#define  XELPDP_PMDEMAND_DDICLK_FREQ(x)			REG_FIELD_PREP(XELPDP_PMDEMAND_DDICLK_FREQ_MASK, x)
+#define  XELPDP_PMDEMAND_SCALERS_MASK			REG_GENMASK(6, 4)
+#define  XELPDP_PMDEMAND_SCALERS(x)			REG_FIELD_PREP(XELPDP_PMDEMAND_SCALERS_MASK, x)
+#define  XELPDP_PMDEMAND_PLLS_MASK			REG_GENMASK(2, 0)
+#define  XELPDP_PMDEMAND_PLLS(x)			REG_FIELD_PREP(XELPDP_PMDEMAND_PLLS_MASK, x)
+
+#define GEN12_DCPR_STATUS_1				_MMIO(0x46440)
+#define  XELPDP_PMDEMAND_INFLIGHT_STATUS		REG_BIT(26)
+
 #define ILK_DISPLAY_CHICKEN2	_MMIO(0x42004)
 /* Required on all Ironlake and Sandybridge according to the B-Spec. */
 #define   ILK_ELPIN_409_SELECT	REG_BIT(25)
@@ -4663,6 +4692,9 @@
 #define   DCPR_SEND_RESP_IMM			REG_BIT(25)
 #define   DCPR_CLEAR_MEMSTAT_DIS		REG_BIT(24)
 
+#define XELPD_CHICKEN_DCPR_3			_MMIO(0x46438)
+#define   DMD_RSP_TIMEOUT_DISABLE		REG_BIT(19)
+
 #define SKL_DFSM			_MMIO(0x51000)
 #define   SKL_DFSM_DISPLAY_PM_DISABLE	(1 << 27)
 #define   SKL_DFSM_DISPLAY_HDCP_DISABLE	(1 << 25)
-- 
2.34.1

