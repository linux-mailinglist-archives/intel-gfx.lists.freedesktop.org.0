Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 97F069FC078
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Dec 2024 17:55:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 731C510E1C0;
	Tue, 24 Dec 2024 16:55:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Um9cf0VL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2835E10E33C;
 Tue, 24 Dec 2024 16:55:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735059357; x=1766595357;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=YGiV7ldg6u2W+2aWIwPAaGaJPsmN58Q4jT8vCAMXAT8=;
 b=Um9cf0VLmrc+UE/j1zrnPQApTxKYNLvD9UoGnmKzMv1rYCyNcRyQHo4W
 NbfH86ehYneq3IUTSyVKTfJ/NFXODdCknJt3ONMCxb4Rsy9hNstHnJesB
 kVkiR8x7SUFk/qqk/jG3ZRIgKeXCLBNDsQBOpYgkSM+MZfu5qj8oKq9bY
 AGRfijCN8/JFECr3Ge5m/QjA1zSSRPFjbHUbWI1YJC4jz38KPklZs00Gt
 oHA4TqRDKqaIKnw/GovGdU0O46jmWQseRwKxLnurvUS2A//56r1P/8jnb
 jWjgwR3wpkR2GOAC9kdOXYTcPTkTaXGu9zCKUszoBuvlOu6r5wMJ9MLDm w==;
X-CSE-ConnectionGUID: 1AgCT8VbQCO1+3Xs/tiH8w==
X-CSE-MsgGUID: ylLshe2LSVatNxaDvZf+lA==
X-IronPort-AV: E=McAfee;i="6700,10204,11296"; a="35422892"
X-IronPort-AV: E=Sophos;i="6.12,260,1728975600"; d="scan'208";a="35422892"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Dec 2024 08:55:56 -0800
X-CSE-ConnectionGUID: BvprqrD2ToGjfDRNeyyGCA==
X-CSE-MsgGUID: vPFU1bZBTaOGfeUBZsw5eA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="104523933"
Received: from mgoodin-mobl2.amr.corp.intel.com (HELO
 gjsousa-mobl2.corp.amr.intel.com) ([10.125.109.2])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Dec 2024 08:55:55 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [PATCH v3] drm/i915/cmtg: Disable the CMTG
Date: Tue, 24 Dec 2024 13:53:45 -0300
Message-ID: <20241224165408.43778-1-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.47.1
MIME-Version: 1.0
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

The CMTG is a timing generator that runs in parallel with transcoders
timing generators and can be used as a reference for synchronization.

On PTL (display Xe3_LPD), we have observed that we are inheriting from
GOP a display configuration with the CMTG enabled. Because our driver
doesn't currently implement any CMTG sequences, the CMTG ends up still
enabled after our driver takes over.

We need to make sure that the CMTG is not enabled if we are not going to
use it. For that, let's add a partial implementation in our driver that
only cares about disabling the CMTG if it was found enabled during
initial hardware readout. In the future, we can also implement sequences
for enabling CMTG if that becomes a needed feature.

For completeness, we do not only cover Xe3_LPD but also all previous
display IPs that provide the CMTG.

v2:
 - DG2 does not have the CMTG. Update HAS_CMTG() accordingly.
 - Update logic to force disabling of CMTG only for initial commit.
v3:
 - Add missing changes for v2 that were staged but not committed.

Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/Makefile                 |   1 +
 drivers/gpu/drm/i915/display/intel_cmtg.c     | 311 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_cmtg.h     |  38 +++
 .../gpu/drm/i915/display/intel_cmtg_regs.h    |  21 ++
 drivers/gpu/drm/i915/display/intel_display.c  |  11 +
 .../gpu/drm/i915/display/intel_display_core.h |   4 +
 .../drm/i915/display/intel_display_device.h   |   1 +
 .../drm/i915/display/intel_display_driver.c   |   5 +
 .../drm/i915/display/intel_modeset_setup.c    |   5 +
 drivers/gpu/drm/i915/i915_reg.h               |   1 +
 drivers/gpu/drm/xe/Makefile                   |   1 +
 11 files changed, 399 insertions(+)
 create mode 100644 drivers/gpu/drm/i915/display/intel_cmtg.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_cmtg.h
 create mode 100644 drivers/gpu/drm/i915/display/intel_cmtg_regs.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 3dda9f0eda82..7e7414453765 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -231,6 +231,7 @@ i915-y += \
 	display/intel_bo.o \
 	display/intel_bw.o \
 	display/intel_cdclk.o \
+	display/intel_cmtg.o \
 	display/intel_color.o \
 	display/intel_combo_phy.o \
 	display/intel_connector.o \
diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c b/drivers/gpu/drm/i915/display/intel_cmtg.c
new file mode 100644
index 000000000000..27491497f515
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
@@ -0,0 +1,311 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright (C) 2024 Intel Corporation
+ */
+
+#include <linux/string.h>
+#include <linux/string_choices.h>
+#include <linux/types.h>
+
+#include "i915_drv.h"
+#include "i915_reg.h"
+#include "intel_crtc.h"
+#include "intel_de.h"
+#include "intel_cmtg.h"
+#include "intel_cmtg_regs.h"
+#include "intel_display_device.h"
+#include "intel_display_types.h"
+
+/**
+ * DOC: Common Primary Timing Generator (CMTG)
+ *
+ * The CMTG is a timing generator that runs in parallel to transcoders timing
+ * generators (TG) to provide a synchronization mechanism where CMTG acts as
+ * primary and transcoders TGs act as secondary to the CMTG. The CMTG outputs
+ * its TG start and frame sync signals to the transcoders that are configured
+ * as secondary, which use those signals to synchronize their own timing with
+ * the CMTG's.
+ *
+ * The CMTG can be used only with eDP or MIPI command mode and supports the
+ * following use cases:
+ *
+ * - Dual eDP: The CMTG can be used to keep two eDP TGs in sync when on a
+ *   dual eDP configuration (with or without PSR/PSR2 enabled).
+ *
+ * - Single eDP as secondary: It is also possible to use a single eDP
+ *   configuration with the transcoder TG as secondary to the CMTG. That would
+ *   allow a flow that would not require a modeset on the existing eDP when a
+ *   new eDP is added for a dual eDP configuration with CMTG.
+ *
+ * - DC6v: In DC6v, the transcoder might be off but the CMTG keeps running to
+ *   maintain frame timings. When exiting DC6v, the transcoder TG then is
+ *   synced back the CMTG.
+ *
+ * Currently, the driver does not use the CMTG, but we need to make sure that
+ * we disable it in case we inherit a display configuration with it enabled.
+ */
+
+static struct intel_global_state *
+intel_cmtg_duplicate_state(struct intel_global_obj *obj)
+{
+	struct intel_cmtg_state *cmtg_state = to_intel_cmtg_state(obj->state);
+
+	cmtg_state = kmemdup(cmtg_state, sizeof(*cmtg_state), GFP_KERNEL);
+	if (!cmtg_state)
+		return NULL;
+
+	return &cmtg_state->base;
+}
+
+static void intel_cmtg_destroy_state(struct intel_global_obj *obj,
+				     struct intel_global_state *state)
+{
+	kfree(state);
+}
+
+static const struct intel_global_state_funcs intel_cmtg_state_funcs = {
+	.atomic_duplicate_state = intel_cmtg_duplicate_state,
+	.atomic_destroy_state = intel_cmtg_destroy_state,
+};
+
+static bool intel_cmtg_has_cmtg_b(struct intel_display *display)
+{
+	return DISPLAY_VER(display) >= 20;
+}
+
+static bool intel_cmtg_has_clock_sel(struct intel_display *display)
+{
+	return DISPLAY_VER(display) >= 14;
+}
+
+static bool intel_cmtg_requires_modeset(struct intel_display *display)
+{
+	return DISPLAY_VER(display) < 20;
+}
+
+static void intel_cmtg_dump_state(struct intel_display *display,
+				  struct intel_cmtg_state *cmtg_state)
+{
+	if (intel_cmtg_has_cmtg_b(display))
+		drm_dbg_kms(display->drm,
+			    "CMTG state readout: CMTG A: %s, CMTG B: %s, transcoder A secondary: %s, transcoder B secondary: %s\n",
+			    str_enabled_disabled(cmtg_state->cmtg_a_enable),
+			    str_enabled_disabled(cmtg_state->cmtg_b_enable),
+			    str_yes_no(cmtg_state->trans_a_secondary),
+			    str_yes_no(cmtg_state->trans_b_secondary));
+	else
+		drm_dbg_kms(display->drm,
+			    "CMTG state readout: %s, Transcoder A secondary: %s, Transcoder B secondary: %s\n",
+			    str_enabled_disabled(cmtg_state->cmtg_a_enable),
+			    str_yes_no(cmtg_state->trans_a_secondary),
+			    str_yes_no(cmtg_state->trans_b_secondary));
+}
+
+int intel_cmtg_init(struct intel_display *display)
+{
+	struct drm_i915_private *i915 = to_i915(display->drm);
+	struct intel_cmtg_state *cmtg_state;
+
+	cmtg_state = kzalloc(sizeof(*cmtg_state), GFP_KERNEL);
+	if (!cmtg_state)
+		return -ENOMEM;
+
+	intel_atomic_global_obj_init(i915, &display->cmtg.obj,
+				     &cmtg_state->base,
+				     &intel_cmtg_state_funcs);
+
+	return 0;
+}
+
+void intel_cmtg_readout_state(struct intel_display *display,
+			      struct intel_cmtg_state *cmtg_state)
+{
+	struct drm_i915_private *i915 = to_i915(display->drm);
+	u32 val;
+
+	if (!HAS_CMTG(display))
+		return;
+
+	val = intel_de_read(display, TRANS_CMTG_CTL_A);
+	cmtg_state->cmtg_a_enable = val & CMTG_ENABLE;
+
+	if (intel_cmtg_has_cmtg_b(display)) {
+		val = intel_de_read(display, TRANS_CMTG_CTL_B);
+		cmtg_state->cmtg_b_enable = val & CMTG_ENABLE;
+	}
+
+	if (intel_crtc_for_pipe(display, PIPE_A)) {
+		val = intel_de_read(display, TRANS_DDI_FUNC_CTL2(i915, TRANSCODER_A));
+		cmtg_state->trans_a_secondary = val & CMTG_SECONDARY_MODE;
+	}
+
+	if (intel_crtc_for_pipe(display, PIPE_B)) {
+		val = intel_de_read(display, TRANS_DDI_FUNC_CTL2(i915, TRANSCODER_B));
+		cmtg_state->trans_b_secondary = val & CMTG_SECONDARY_MODE;
+	}
+
+	intel_cmtg_dump_state(display, cmtg_state);
+}
+
+static struct intel_cmtg_state *
+intel_atomic_get_cmtg_state(struct intel_atomic_state *state)
+{
+	struct intel_display *display = to_intel_display(state);
+	struct intel_global_state *obj_state =
+		intel_atomic_get_global_obj_state(state,
+						  &display->cmtg.obj);
+
+	if (IS_ERR(obj_state))
+		return ERR_CAST(obj_state);
+
+	return to_intel_cmtg_state(obj_state);
+}
+
+static struct intel_cmtg_state *
+intel_atomic_get_old_cmtg_state(struct intel_atomic_state *state)
+{
+	struct intel_display *display = to_intel_display(state);
+	struct intel_global_state *obj_state =
+		intel_atomic_get_old_global_obj_state(state,
+						      &display->cmtg.obj);
+
+	if (!obj_state)
+		return NULL;
+
+	return to_intel_cmtg_state(obj_state);
+}
+
+static struct intel_cmtg_state *
+intel_atomic_get_new_cmtg_state(struct intel_atomic_state *state)
+{
+	struct intel_display *display = to_intel_display(state);
+	struct intel_global_state *obj_state =
+		intel_atomic_get_new_global_obj_state(state,
+						      &display->cmtg.obj);
+
+	if (!obj_state)
+		return NULL;
+
+	return to_intel_cmtg_state(obj_state);
+}
+
+static bool intel_cmtg_state_changed(struct intel_cmtg_state *old_cmtg_state,
+				     struct intel_cmtg_state *new_cmtg_state)
+{
+	if (!new_cmtg_state)
+		return false;
+
+	return old_cmtg_state->cmtg_a_enable != new_cmtg_state->cmtg_a_enable ||
+		old_cmtg_state->cmtg_b_enable != new_cmtg_state->cmtg_b_enable ||
+		old_cmtg_state->trans_a_secondary != new_cmtg_state->trans_a_secondary ||
+		old_cmtg_state->trans_b_secondary != new_cmtg_state->trans_b_secondary;
+}
+
+static int intel_cmtg_check_modeset(struct intel_atomic_state *state,
+				    struct intel_cmtg_state *old_cmtg_state,
+				    struct intel_cmtg_state *new_cmtg_state)
+{
+	struct intel_display *display = to_intel_display(state);
+	u8 pipe_mask;
+
+	if (!intel_cmtg_requires_modeset(display))
+		return 0;
+
+	pipe_mask = 0;
+
+	if (old_cmtg_state->trans_a_secondary != new_cmtg_state->trans_a_secondary)
+		pipe_mask |= BIT(PIPE_A);
+
+	if (old_cmtg_state->trans_b_secondary != new_cmtg_state->trans_b_secondary)
+		pipe_mask |= BIT(PIPE_B);
+
+	if (!pipe_mask)
+		return 0;
+
+	return intel_modeset_pipes_in_mask_early(state, "updating CMTG config", pipe_mask);
+}
+
+int intel_cmtg_force_disabled(struct intel_atomic_state *state)
+{
+	struct intel_display *display = to_intel_display(state);
+	struct intel_cmtg_state *new_cmtg_state;
+
+	if (!HAS_CMTG(display))
+		return 0;
+
+	new_cmtg_state = intel_atomic_get_cmtg_state(state);
+	if (IS_ERR(new_cmtg_state))
+		return PTR_ERR(new_cmtg_state);
+
+	new_cmtg_state->cmtg_a_enable = false;
+	new_cmtg_state->cmtg_b_enable = false;
+	new_cmtg_state->trans_a_secondary = false;
+	new_cmtg_state->trans_b_secondary = false;
+	return 0;
+}
+
+int intel_cmtg_atomic_check(struct intel_atomic_state *state)
+{
+	struct intel_display *display = to_intel_display(state);
+	struct intel_cmtg_state *old_cmtg_state;
+	struct intel_cmtg_state *new_cmtg_state;
+	int ret;
+
+	if (!HAS_CMTG(display))
+		return 0;
+
+	old_cmtg_state = intel_atomic_get_old_cmtg_state(state);
+	new_cmtg_state = intel_atomic_get_new_cmtg_state(state);
+	if (!intel_cmtg_state_changed(old_cmtg_state, new_cmtg_state))
+		return 0;
+
+	ret = intel_cmtg_check_modeset(state, old_cmtg_state, new_cmtg_state);
+	if (ret)
+		return ret;
+
+	return intel_atomic_serialize_global_state(&new_cmtg_state->base);
+}
+
+/*
+ * Access to CMTG registers require the PHY PLL that provides its clock to be
+ * running (which is configured via CMTG_CLK_SEL). As such, this function needs
+ * to be called before intel_commit_modeset_disables() to ensure that the PHY
+ * PLL is still enabled when doing this.
+ */
+void intel_cmtg_disable(struct intel_atomic_state *state)
+{
+	struct intel_display *display = to_intel_display(state);
+	struct drm_i915_private *i915 = to_i915(display->drm);
+	struct intel_cmtg_state *old_cmtg_state;
+	struct intel_cmtg_state *new_cmtg_state;
+
+	if (!HAS_CMTG(display))
+		return;
+
+	old_cmtg_state = intel_atomic_get_old_cmtg_state(state);
+	new_cmtg_state = intel_atomic_get_new_cmtg_state(state);
+	if (!intel_cmtg_state_changed(old_cmtg_state, new_cmtg_state))
+		return;
+
+	drm_info(display->drm, "Disabling CMTG\n");
+
+	intel_de_rmw(display, TRANS_DDI_FUNC_CTL2(i915, TRANSCODER_A), CMTG_SECONDARY_MODE, 0);
+	intel_de_rmw(display, TRANS_DDI_FUNC_CTL2(i915, TRANSCODER_B), CMTG_SECONDARY_MODE, 0);
+
+	intel_de_rmw(display, TRANS_CMTG_CTL_A, CMTG_ENABLE, 0);
+
+	if (intel_cmtg_has_cmtg_b(display))
+		intel_de_rmw(display, TRANS_CMTG_CTL_B, CMTG_ENABLE, 0);
+
+	if (intel_cmtg_has_clock_sel(display)) {
+		u32 clk_sel_clr = CMTG_CLK_SEL_A_MASK;
+		u32 clk_sel_set = CMTG_CLK_SEL_A_DISABLED;
+
+		if (intel_cmtg_has_cmtg_b(display)) {
+			clk_sel_clr |= CMTG_CLK_SEL_B_MASK;
+			clk_sel_set |= CMTG_CLK_SEL_B_DISABLED;
+		}
+
+		intel_de_rmw(display, CMTG_CLK_SEL, clk_sel_clr, clk_sel_set);
+	}
+}
diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.h b/drivers/gpu/drm/i915/display/intel_cmtg.h
new file mode 100644
index 000000000000..4dfd31906d81
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_cmtg.h
@@ -0,0 +1,38 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright (C) 2024 Intel Corporation
+ */
+
+#ifndef __INTEL_CMTG_H__
+#define __INTEL_CMTG_H__
+
+#include "intel_display_core.h"
+#include "intel_global_state.h"
+
+/*
+ * We describe here only the minimum state required to allow us to properly
+ * disable the CMTG if necessary.
+ */
+struct intel_cmtg_state {
+	struct intel_global_state base;
+
+	bool cmtg_a_enable;
+	/*
+	 * Xe3_LPD adds a second CMTG that can be used for dual eDP async mode.
+	 */
+	bool cmtg_b_enable;
+	bool trans_a_secondary;
+	bool trans_b_secondary;
+};
+
+#define to_intel_cmtg_state(global_state) \
+	container_of_const((global_state), struct intel_cmtg_state, base)
+
+int intel_cmtg_init(struct intel_display *display);
+void intel_cmtg_readout_state(struct intel_display *display,
+			      struct intel_cmtg_state *cmtg_state);
+int intel_cmtg_force_disabled(struct intel_atomic_state *state);
+int intel_cmtg_atomic_check(struct intel_atomic_state *state);
+void intel_cmtg_disable(struct intel_atomic_state *state);
+
+#endif /* __INTEL_CMTG_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
new file mode 100644
index 000000000000..082f96cad284
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
@@ -0,0 +1,21 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright (C) 2024 Intel Corporation
+ */
+
+#ifndef __INTEL_CMTG_REGS_H__
+#define __INTEL_CMTG_REGS_H__
+
+#include "i915_reg_defs.h"
+
+#define CMTG_CLK_SEL			_MMIO(0x46160)
+#define CMTG_CLK_SEL_A_MASK		REG_GENMASK(31, 29)
+#define CMTG_CLK_SEL_A_DISABLED		REG_FIELD_PREP(CMTG_CLK_SEL_A_MASK, 0)
+#define CMTG_CLK_SEL_B_MASK		REG_GENMASK(15, 13)
+#define CMTG_CLK_SEL_B_DISABLED		REG_FIELD_PREP(CMTG_CLK_SEL_B_MASK, 0)
+
+#define TRANS_CMTG_CTL_A		_MMIO(0x6fa88)
+#define TRANS_CMTG_CTL_B		_MMIO(0x6fb88)
+#define  CMTG_ENABLE			REG_BIT(31)
+
+#endif /* __INTEL_CMTG_REGS_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 4271da219b41..098985ad7ad4 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -62,6 +62,7 @@
 #include "intel_bw.h"
 #include "intel_cdclk.h"
 #include "intel_clock_gating.h"
+#include "intel_cmtg.h"
 #include "intel_color.h"
 #include "intel_crt.h"
 #include "intel_crtc.h"
@@ -6828,6 +6829,10 @@ int intel_atomic_check(struct drm_device *dev,
 	if (ret)
 		goto fail;
 
+	ret = intel_cmtg_atomic_check(state);
+	if (ret)
+		goto fail;
+
 	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
 		if (!intel_crtc_needs_modeset(new_crtc_state))
 			continue;
@@ -7757,6 +7762,8 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 			intel_modeset_get_crtc_power_domains(new_crtc_state, &put_domains[crtc->pipe]);
 	}
 
+	intel_cmtg_disable(state);
+
 	intel_commit_modeset_disables(state);
 
 	intel_dp_tunnel_atomic_alloc_bw(state);
@@ -8582,6 +8589,10 @@ int intel_initial_commit(struct drm_device *dev)
 		}
 	}
 
+	ret = intel_cmtg_force_disabled(to_intel_atomic_state(state));
+	if (ret)
+		goto out;
+
 	ret = drm_atomic_commit(state);
 
 out:
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 554870d2494b..d0b039114e2d 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -354,6 +354,10 @@ struct intel_display {
 		unsigned int skl_preferred_vco_freq;
 	} cdclk;
 
+	struct {
+		struct intel_global_obj obj;
+	} cmtg;
+
 	struct {
 		struct drm_property_blob *glk_linear_degamma_lut;
 	} color;
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 9a333d9e6601..a126247eb6b8 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -145,6 +145,7 @@ struct intel_display_platforms {
 #define HAS_BIGJOINER(__display)	(DISPLAY_VER(__display) >= 11 && HAS_DSC(__display))
 #define HAS_CDCLK_CRAWL(__display)	(DISPLAY_INFO(__display)->has_cdclk_crawl)
 #define HAS_CDCLK_SQUASH(__display)	(DISPLAY_INFO(__display)->has_cdclk_squash)
+#define HAS_CMTG(__display)		(!(__display)->platform.dg2 && DISPLAY_VER(__display) >= 13)
 #define HAS_CUR_FBC(__display)		(!HAS_GMCH(__display) && IS_DISPLAY_VER(__display, 7, 13))
 #define HAS_D12_PLANE_MINIMIZATION(__display)	((__display)->platform.rocketlake || (__display)->platform.alderlake_s)
 #define HAS_DBUF_OVERLAP_DETECTION(__display)	(DISPLAY_RUNTIME_INFO(__display)->has_dbuf_overlap_detection)
diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index 497b4a1f045f..3e1483814e8d 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -25,6 +25,7 @@
 #include "intel_bios.h"
 #include "intel_bw.h"
 #include "intel_cdclk.h"
+#include "intel_cmtg.h"
 #include "intel_color.h"
 #include "intel_crtc.h"
 #include "intel_display_debugfs.h"
@@ -269,6 +270,10 @@ int intel_display_driver_probe_noirq(struct intel_display *display)
 	if (ret)
 		goto cleanup_vga_client_pw_domain_dmc;
 
+	ret = intel_cmtg_init(display);
+	if (ret)
+		goto cleanup_vga_client_pw_domain_dmc;
+
 	intel_init_quirks(display);
 
 	intel_fbc_init(display);
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index 9db30db428f7..737a43916ac5 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -15,6 +15,7 @@
 #include "i9xx_wm.h"
 #include "intel_atomic.h"
 #include "intel_bw.h"
+#include "intel_cmtg.h"
 #include "intel_color.h"
 #include "intel_crtc.h"
 #include "intel_crtc_state_dump.h"
@@ -702,6 +703,8 @@ static void intel_modeset_readout_hw_state(struct drm_i915_private *i915)
 	struct intel_display *display = &i915->display;
 	struct intel_cdclk_state *cdclk_state =
 		to_intel_cdclk_state(i915->display.cdclk.obj.state);
+	struct intel_cmtg_state *cmtg_state =
+		to_intel_cmtg_state(display->cmtg.obj.state);
 	struct intel_dbuf_state *dbuf_state =
 		to_intel_dbuf_state(i915->display.dbuf.obj.state);
 	struct intel_pmdemand_state *pmdemand_state =
@@ -906,6 +909,8 @@ static void intel_modeset_readout_hw_state(struct drm_i915_private *i915)
 	}
 
 	intel_pmdemand_init_pmdemand_params(i915, pmdemand_state);
+
+	intel_cmtg_readout_state(display, cmtg_state);
 }
 
 static void
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 765e6c0528fb..b34bccfb1ccc 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -3565,6 +3565,7 @@ enum skl_power_gate {
 #define _TRANS_DDI_FUNC_CTL2_DSI1	0x6bc04
 #define TRANS_DDI_FUNC_CTL2(dev_priv, tran)	_MMIO_TRANS2(dev_priv, tran, _TRANS_DDI_FUNC_CTL2_A)
 #define  PORT_SYNC_MODE_ENABLE			REG_BIT(4)
+#define  CMTG_SECONDARY_MODE			REG_BIT(3)
 #define  PORT_SYNC_MODE_MASTER_SELECT_MASK	REG_GENMASK(2, 0)
 #define  PORT_SYNC_MODE_MASTER_SELECT(x)	REG_FIELD_PREP(PORT_SYNC_MODE_MASTER_SELECT_MASK, (x))
 
diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
index 5c97ad6ed738..cd0e25fce14b 100644
--- a/drivers/gpu/drm/xe/Makefile
+++ b/drivers/gpu/drm/xe/Makefile
@@ -199,6 +199,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
 	i915-display/intel_bios.o \
 	i915-display/intel_bw.o \
 	i915-display/intel_cdclk.o \
+	i915-display/intel_cmtg.o \
 	i915-display/intel_color.o \
 	i915-display/intel_combo_phy.o \
 	i915-display/intel_connector.o \
-- 
2.47.1

