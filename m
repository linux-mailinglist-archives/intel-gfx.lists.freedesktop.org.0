Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C3E517126F1
	for <lists+intel-gfx@lfdr.de>; Fri, 26 May 2023 14:52:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43B3C10E802;
	Fri, 26 May 2023 12:52:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF28410E800
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 May 2023 12:52:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685105520; x=1716641520;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZkJh8QBz7MDznuxCqxbNEogZEbm9b7cnME889403JBo=;
 b=RVqcHaVGtfzCnJVYFQwtFR8Bg7G7N9tdLrHP6PlS8+gqFo2pgkfTc2tS
 z0VSuLCtDmr2PRxR0HdDEmqB2KTBrdGpDINOs0tAnhj4eu2flJVXoEQpP
 6/JbinkL3sBvFDe2BjbxBtsBlGku+z370nZPRb45O+UbE4V+Vcbc2LPTp
 3GD4xNx3uUUwfwQetoF5Q0jIJUp8MA237OYrrV/a3eTN2GBi8mK5bpoYH
 FafDaPklf4/TCDzKDH2uHJsAyhRBs5NdczMZ4aLA7cOyGGAi4A3lSareV
 793zE0Cq2iIjzWIwLe1ew8Nxn19/6g6f2hNjMfftfHERdr1K5KsHjFdS8 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10722"; a="334545667"
X-IronPort-AV: E=Sophos;i="6.00,194,1681196400"; d="scan'208";a="334545667"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2023 05:52:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10722"; a="682708063"
X-IronPort-AV: E=Sophos;i="6.00,194,1681196400"; d="scan'208";a="682708063"
Received: from vcouthon-mobl1.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.251.208.134])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2023 05:51:54 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 26 May 2023 15:50:55 +0300
Message-Id: <20230526125055.39886-8-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230526125055.39886-1-vinod.govindapillai@intel.com>
References: <20230526125055.39886-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v8 7/7] drm/i915/mtl: Add support for PM DEMAND
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
Cc: ville.syrjala@intel.com
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
---
 drivers/gpu/drm/i915/Makefile                 |   1 +
 drivers/gpu/drm/i915/display/intel_display.c  |  14 +
 .../gpu/drm/i915/display/intel_display_core.h |   9 +
 .../drm/i915/display/intel_display_driver.c   |   7 +
 .../gpu/drm/i915/display/intel_display_irq.c  |  23 +-
 .../drm/i915/display/intel_display_power.c    |   8 +
 drivers/gpu/drm/i915/display/intel_pmdemand.c | 572 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_pmdemand.h |  24 +
 drivers/gpu/drm/i915/i915_reg.h               |  36 +-
 9 files changed, 690 insertions(+), 4 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_pmdemand.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_pmdemand.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index dd9ca69f4998..358463d02a57 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -273,6 +273,7 @@ i915-y += \
 	display/intel_pch_display.o \
 	display/intel_pch_refclk.o \
 	display/intel_plane_initial.o \
+	display/intel_pmdemand.o \
 	display/intel_psr.o \
 	display/intel_quirks.o \
 	display/intel_sprite.o \
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 0490c6412ab5..b3bb2c607650 100644
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
@@ -6343,6 +6344,10 @@ int intel_atomic_check(struct drm_device *dev,
 			return ret;
 	}
 
+	ret = intel_pmdemand_atomic_check(state);
+	if (ret)
+		goto fail;
+
 	ret = intel_atomic_check_crtcs(state);
 	if (ret)
 		goto fail;
@@ -6988,6 +6993,14 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
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
 
@@ -7107,6 +7120,7 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 		intel_verify_planes(state);
 
 	intel_sagv_post_plane_update(state);
+	intel_pmdemand_post_plane_update(state);
 
 	drm_atomic_helper_commit_hw_done(&state->base);
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 9f66d734edf6..ae45b2c42eb1 100644
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
index 6ed2ece89c3f..b801d93d936a 100644
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
@@ -1085,6 +1086,10 @@ static void gen9_dbuf_enable(struct drm_i915_private *dev_priv)
 	dev_priv->display.dbuf.enabled_slices =
 		intel_enabled_dbuf_slices_mask(dev_priv);
 
+	if (DISPLAY_VER(dev_priv) >= 14)
+		intel_pmdemand_program_dbuf(dev_priv, BIT(DBUF_S1) |
+					    dev_priv->display.dbuf.enabled_slices);
+
 	/*
 	 * Just power up at least 1 slice, we will
 	 * figure out later which slices we have and what we need.
@@ -1096,6 +1101,9 @@ static void gen9_dbuf_enable(struct drm_i915_private *dev_priv)
 static void gen9_dbuf_disable(struct drm_i915_private *dev_priv)
 {
 	gen9_dbuf_slices_update(dev_priv, 0);
+
+	if (DISPLAY_VER(dev_priv) >= 14)
+		intel_pmdemand_program_dbuf(dev_priv, 0);
 }
 
 static void gen12_dbuf_slices_config(struct drm_i915_private *dev_priv)
diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.c b/drivers/gpu/drm/i915/display/intel_pmdemand.c
new file mode 100644
index 000000000000..122ee00ce04b
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_pmdemand.c
@@ -0,0 +1,572 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2023 Intel Corporation
+ */
+
+#include <linux/bitops.h>
+
+#include "i915_drv.h"
+#include "i915_reg.h"
+#include "intel_bw.h"
+#include "intel_cdclk.h"
+#include "intel_cx0_phy.h"
+#include "intel_de.h"
+#include "intel_display.h"
+#include "intel_display_trace.h"
+#include "intel_pmdemand.h"
+#include "skl_watermark.h"
+
+struct pmdemand_params {
+	u16 qclk_gv_bw;
+	u8 voltage_index;
+	u8 qclk_gv_index;
+	u8 active_pipes;
+	/* Total number of non type C active phys from active_phys_mask */
+	u8 active_phys;
+	u16 cdclk_freq_mhz;
+	/* max from ddi_clocks[]*/
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
+static struct intel_global_state *
+intel_pmdemand_duplicate_state(struct intel_global_obj *obj)
+{
+	struct intel_pmdemand_state *pmdmnd_state;
+
+	pmdmnd_state = kmemdup(obj->state, sizeof(*pmdmnd_state), GFP_KERNEL);
+	if (!pmdmnd_state)
+		return NULL;
+
+	return &pmdmnd_state->base;
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
+				 struct intel_pmdemand_state *pmd_state)
+{
+	int max_ddiclk = 0;
+	struct intel_crtc *crtc;
+	int i;
+	const struct intel_crtc_state *new_crtc_state;
+
+	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i)
+		pmd_state->ddi_clocks[crtc->pipe] = new_crtc_state->port_clock;
+
+	for (i = 0; i < ARRAY_SIZE(pmd_state->ddi_clocks); i++)
+		max_ddiclk = max(pmd_state->ddi_clocks[i], max_ddiclk);
+
+	pmd_state->params.ddiclk_max = DIV_ROUND_UP(max_ddiclk, 1000);
+}
+
+static struct intel_encoder *
+intel_pmdemand_get_crtc_old_encoder(const struct intel_atomic_state *state,
+				    const struct intel_crtc_state *crtc_state)
+{
+	const struct drm_connector_state *connector_state;
+	const struct drm_connector *connector;
+	struct intel_encoder *encoder = NULL;
+	struct intel_crtc *master_crtc;
+	int i;
+
+	master_crtc = intel_master_crtc(crtc_state);
+
+	for_each_old_connector_in_state(&state->base, connector, connector_state, i) {
+		if (connector_state->crtc != &master_crtc->base)
+			continue;
+
+		encoder = to_intel_encoder(connector_state->best_encoder);
+	}
+
+	return encoder;
+}
+
+static void
+intel_pmdemand_update_active_non_tc_phys(struct drm_i915_private *i915,
+					 const struct intel_atomic_state *state,
+					 struct intel_pmdemand_state *pmd_state)
+{
+	struct intel_crtc *crtc;
+	struct intel_encoder *encoder;
+	int i;
+	const struct intel_crtc_state *new_crtc_state, *old_crtc_state;
+	enum phy phy;
+
+	/*
+	 * Active phys are checked using two separate loops - one over old crtc
+	 * state to clear the bit from the mask corresponding to the phys which
+	 * are active in old crtc state. The other over new crtc state to set
+	 * the bit from the mask which are active in new crtc state. This is
+	 * intentionally split into two separate loops because the same connector
+	 * could be attached to a crtc in old state but to another crtc in a new
+	 * state.
+	 */
+	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
+					    new_crtc_state, i) {
+		if (!intel_crtc_needs_modeset(new_crtc_state))
+			continue;
+
+		if (!old_crtc_state->hw.active)
+			continue;
+
+		encoder = intel_pmdemand_get_crtc_old_encoder(state,
+							      old_crtc_state);
+		if (!encoder)
+			continue;
+
+		phy = intel_port_to_phy(i915, encoder->port);
+
+		pmd_state->active_phys_mask &= ~BIT(phy);
+	}
+
+	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
+					    new_crtc_state, i) {
+		if (!intel_crtc_needs_modeset(new_crtc_state))
+			continue;
+
+		if (!new_crtc_state->hw.active)
+			continue;
+
+		encoder = intel_get_crtc_new_encoder(state, new_crtc_state);
+		if (!encoder)
+			continue;
+
+		phy = intel_port_to_phy(i915, encoder->port);
+
+		if (intel_phy_is_tc(i915, phy))
+			continue;
+
+		pmd_state->active_phys_mask |= BIT(phy);
+	}
+
+	pmd_state->params.active_phys = hweight16(pmd_state->active_phys_mask);
+}
+
+static bool intel_pmdemand_needs_update(struct intel_atomic_state *state)
+{
+	bool states_checked = false;
+	struct intel_crtc *crtc;
+	int i;
+	const struct intel_crtc_state *new_crtc_state, *old_crtc_state;
+
+	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
+					    new_crtc_state, i) {
+		const struct intel_bw_state *new_bw_state, *old_bw_state;
+		const struct intel_cdclk_state *new_cdclk_state;
+		const struct intel_cdclk_state *old_cdclk_state;
+		const struct intel_dbuf_state *new_dbuf_state, *old_dbuf_state;
+
+		if (old_crtc_state->port_clock != new_crtc_state->port_clock)
+			return true;
+
+		/*
+		 * For the below settings once through the loop is enough.
+		 * Some pmdemand_atomic_check calls might trigger read lock not
+		 * taken assert if these following checks are kept outside this
+		 * loop.
+		 */
+		if (states_checked)
+			continue;
+
+		new_bw_state = intel_atomic_get_new_bw_state(state);
+		old_bw_state = intel_atomic_get_old_bw_state(state);
+		if (new_bw_state && new_bw_state->qgv_point_peakbw !=
+		    old_bw_state->qgv_point_peakbw)
+			return true;
+
+		new_dbuf_state = intel_atomic_get_new_dbuf_state(state);
+		old_dbuf_state = intel_atomic_get_old_dbuf_state(state);
+		if (new_dbuf_state && new_dbuf_state->active_pipes !=
+		    old_dbuf_state->active_pipes)
+			return true;
+
+		new_cdclk_state = intel_atomic_get_new_cdclk_state(state);
+		old_cdclk_state = intel_atomic_get_old_cdclk_state(state);
+		if (new_cdclk_state &&
+		    (new_cdclk_state->logical.cdclk !=
+		     old_cdclk_state->logical.cdclk ||
+		     new_cdclk_state->logical.voltage_level !=
+		     old_cdclk_state->logical.voltage_level))
+			return true;
+
+		states_checked = true;
+	}
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
+	new_pmdemand_state->params.qclk_gv_bw =
+		min_t(u16, new_bw_state->qgv_point_peakbw, 0xffff);
+
+	new_dbuf_state = intel_atomic_get_dbuf_state(state);
+	if (IS_ERR(new_dbuf_state))
+		return PTR_ERR(new_dbuf_state);
+
+	new_pmdemand_state->params.active_pipes =
+		min_t(u8, hweight8(new_dbuf_state->active_pipes), 3);
+
+	new_cdclk_state = intel_atomic_get_cdclk_state(state);
+	if (IS_ERR(new_cdclk_state))
+		return PTR_ERR(new_cdclk_state);
+
+	new_pmdemand_state->params.voltage_index =
+		new_cdclk_state->logical.voltage_level;
+	new_pmdemand_state->params.cdclk_freq_mhz =
+		DIV_ROUND_UP(new_cdclk_state->logical.cdclk, 1000);
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
+	ret = intel_atomic_serialize_global_state(&new_pmdemand_state->base);
+	if (ret)
+		return ret;
+
+	return 0;
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
+static bool intel_pmdemand_req_complete(struct drm_i915_private *i915)
+{
+	return !(intel_de_read(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(1)) &
+		 XELPDP_PMDEMAND_REQ_ENABLE);
+}
+
+static int intel_pmdemand_wait(struct drm_i915_private *i915)
+{
+	int ret;
+	const unsigned int timeout_ms = 10;
+
+	ret = wait_event_timeout(i915->display.pmdemand.waitqueue,
+				 intel_pmdemand_req_complete(i915),
+				 msecs_to_jiffies_timeout(timeout_ms));
+	if (ret == 0)
+		drm_err(&i915->drm,
+			"timed out waiting for Punit PM Demand Response\n");
+
+	return ret;
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
+			     u32 *reg1, u32 *reg2)
+{
+	u32 plls, tmp;
+
+	/*
+	 * The pmdemand parameter updates happens in two steps. Pre plane and
+	 * post plane updates. During the pre plane, as DE might still be
+	 * handling with some old operations, to avoid unwanted performance
+	 * issues, program the pmdemand parameters with higher of old and new
+	 * values. And then after once settled, use the new parameter values
+	 * as part of the post plane update.
+	 */
+
+	/* Set 1*/
+	*reg1 &= ~XELPDP_PMDEMAND_QCLK_GV_BW_MASK;
+	tmp = old ? max(old->params.qclk_gv_bw, new->params.qclk_gv_bw) :
+		    new->params.qclk_gv_bw;
+	*reg1 |= XELPDP_PMDEMAND_QCLK_GV_BW(tmp);
+
+	*reg1 &= ~XELPDP_PMDEMAND_VOLTAGE_INDEX_MASK;
+	tmp = old ? max(old->params.voltage_index, new->params.voltage_index) :
+		    new->params.voltage_index;
+	*reg1 |= XELPDP_PMDEMAND_VOLTAGE_INDEX(tmp);
+
+	*reg1 &= ~XELPDP_PMDEMAND_QCLK_GV_INDEX_MASK;
+	tmp = old ? max(old->params.qclk_gv_index, new->params.qclk_gv_index) :
+		    new->params.qclk_gv_index;
+	*reg1 |= XELPDP_PMDEMAND_QCLK_GV_INDEX(tmp);
+
+	*reg1 &= ~XELPDP_PMDEMAND_PIPES_MASK;
+	tmp = old ? max(old->params.active_pipes, new->params.active_pipes) :
+		    new->params.active_pipes;
+	*reg1 |= XELPDP_PMDEMAND_PIPES(tmp);
+
+	*reg1 &= ~XELPDP_PMDEMAND_PHYS_MASK;
+	plls = old ? max(old->params.active_phys, new->params.active_phys) :
+		     new->params.active_phys;
+	plls = min_t(u32, plls, 7);
+	*reg1 |= XELPDP_PMDEMAND_PHYS(plls);
+
+	/* Set 2*/
+	*reg2 &= ~XELPDP_PMDEMAND_CDCLK_FREQ_MASK;
+	tmp = old ? max(old->params.cdclk_freq_mhz,
+			new->params.cdclk_freq_mhz) :
+		    new->params.cdclk_freq_mhz;
+	*reg2 |= XELPDP_PMDEMAND_CDCLK_FREQ(tmp);
+
+	*reg2 &= ~XELPDP_PMDEMAND_DDICLK_FREQ_MASK;
+	tmp = old ? max(old->params.ddiclk_max, new->params.ddiclk_max) :
+		    new->params.ddiclk_max;
+	*reg2 |= XELPDP_PMDEMAND_DDICLK_FREQ(tmp);
+
+	*reg2 &= ~XELPDP_PMDEMAND_SCALERS_MASK;
+	tmp = old ? max(old->params.scalers, new->params.scalers) :
+		    new->params.scalers;
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
+			      const struct intel_pmdemand_state *old)
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
+	intel_pmdemand_update_params(new, old, &mod_reg1, &mod_reg2);
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
+void intel_pmdemand_pre_plane_update(struct intel_atomic_state *state)
+{
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	const struct intel_pmdemand_state *new_pmdmnd_state =
+		intel_atomic_get_new_pmdemand_state(state);
+	const struct intel_pmdemand_state *old_pmdmnd_state =
+		intel_atomic_get_old_pmdemand_state(state);
+
+	if (DISPLAY_VER(i915) < 14)
+		return;
+
+	if (!new_pmdmnd_state ||
+	    !intel_pmdemand_state_changed(new_pmdmnd_state, old_pmdmnd_state))
+		return;
+
+	intel_pmdemand_program_params(i915, new_pmdmnd_state,
+				      old_pmdmnd_state);
+}
+
+void intel_pmdemand_post_plane_update(struct intel_atomic_state *state)
+{
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	const struct intel_pmdemand_state *new_pmdmnd_state =
+		intel_atomic_get_new_pmdemand_state(state);
+	const struct intel_pmdemand_state *old_pmdmnd_state =
+		intel_atomic_get_old_pmdemand_state(state);
+
+	if (DISPLAY_VER(i915) < 14)
+		return;
+
+	if (!new_pmdmnd_state ||
+	    !intel_pmdemand_state_changed(new_pmdmnd_state, old_pmdmnd_state))
+		return;
+
+	intel_pmdemand_program_params(i915, new_pmdmnd_state, NULL);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.h b/drivers/gpu/drm/i915/display/intel_pmdemand.h
new file mode 100644
index 000000000000..fa7a601ddafa
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_pmdemand.h
@@ -0,0 +1,24 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2023 Intel Corporation
+ */
+
+#ifndef __INTEL_PMDEMAND_H__
+#define __INTEL_PMDEMAND_H__
+
+#include <linux/types.h>
+
+struct drm_i915_private;
+struct intel_atomic_state;
+struct intel_crtc_state;
+struct intel_plane_state;
+
+void intel_pmdemand_init_early(struct drm_i915_private *i915);
+int intel_pmdemand_init(struct drm_i915_private *i915);
+void intel_pmdemand_program_dbuf(struct drm_i915_private *i915,
+				 u8 dbuf_slices);
+void intel_pmdemand_pre_plane_update(struct intel_atomic_state *state);
+void intel_pmdemand_post_plane_update(struct intel_atomic_state *state);
+int intel_pmdemand_atomic_check(struct intel_atomic_state *state);
+
+#endif /* __INTEL_PMDEMAND_H__ */
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 2a9ab8de8421..91fb12b65c92 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -4450,8 +4450,10 @@
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
@@ -4536,6 +4538,33 @@
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
@@ -4695,6 +4724,9 @@
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

