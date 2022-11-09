Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EB7B622E2D
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Nov 2022 15:42:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7AE810E5E0;
	Wed,  9 Nov 2022 14:42:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB98C10E5E0
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Nov 2022 14:42:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668004936; x=1699540936;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=0bmpz6KZ6lHZpxiS6GELcHtNRtXOFGYyPCe3Bqh6tek=;
 b=gdQ82ma2agnh5p3Tyzn3oZODcdEq4Kx8CfIU+ng4IZ8zfbNLHnQZnOdh
 rINUozT8QBa3Z9fhAZIsYPgkUtbXT5/JSlQYzwrUVvovMlqlm1ZrRBX7D
 OakF4WRJAZKU2AwLs0coZmXiqG2yifQfFuY7yt5PQguvKHnIruqhRwl69
 X5Wwnlp2NNybuiWPCv71Wr8i4jLX+ct2PDFqmswbRdjz2MLCJFZhjrKE/
 Oo/DqHd3KTxUQN4B4LKKdkHU4nb6jbl9AAc8xuCFCM/Cw4qtT1+QuW2Aj
 LE2W4oVNwLm5Xb8VVxWOqPtG6iQNCFTr4csogkSEPJKAwP9e2dEFthPdr g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="294365998"
X-IronPort-AV: E=Sophos;i="5.96,150,1665471600"; d="scan'208";a="294365998"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2022 06:42:14 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="669970281"
X-IronPort-AV: E=Sophos;i="5.96,150,1665471600"; d="scan'208";a="669970281"
Received: from skorobko-mobl2.ccr.corp.intel.com (HELO localhost)
 ([10.252.15.56])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2022 06:42:13 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  9 Nov 2022 16:42:06 +0200
Message-Id: <20221109144209.3624739-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/4] drm/i915/hti: abstract hti handling
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

The HTI or HDPORT handling is sprinkled around. Centralize to one place.

Add a note about how subtle the mapping from HDPORT_STATE register to
dpll mask actually is.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/Makefile                 |  1 +
 drivers/gpu/drm/i915/display/intel_ddi.c      |  9 +----
 drivers/gpu/drm/i915/display/intel_display.c  |  8 +---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 11 +-----
 drivers/gpu/drm/i915/display/intel_hti.c      | 39 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_hti.h      | 18 +++++++++
 drivers/gpu/drm/i915/display/intel_hti_regs.h | 16 ++++++++
 drivers/gpu/drm/i915/i915_reg.h               |  5 ---
 8 files changed, 80 insertions(+), 27 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_hti.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_hti.h
 create mode 100644 drivers/gpu/drm/i915/display/intel_hti_regs.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 51704b54317c..cb8232bd315b 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -247,6 +247,7 @@ i915-y += \
 	display/intel_global_state.o \
 	display/intel_hdcp.o \
 	display/intel_hotplug.o \
+	display/intel_hti.o \
 	display/intel_lpe_audio.o \
 	display/intel_modeset_verify.o \
 	display/intel_modeset_setup.o \
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index e95bde5cf060..5be9573bf65c 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -56,6 +56,7 @@
 #include "intel_hdcp.h"
 #include "intel_hdmi.h"
 #include "intel_hotplug.h"
+#include "intel_hti.h"
 #include "intel_lspcon.h"
 #include "intel_mg_phy_regs.h"
 #include "intel_pps.h"
@@ -4113,12 +4114,6 @@ intel_ddi_max_lanes(struct intel_digital_port *dig_port)
 	return max_lanes;
 }
 
-static bool hti_uses_phy(struct drm_i915_private *i915, enum phy phy)
-{
-	return i915->hti_state & HDPORT_ENABLED &&
-	       i915->hti_state & HDPORT_DDI_USED(phy);
-}
-
 static enum hpd_pin xelpd_hpd_pin(struct drm_i915_private *dev_priv,
 				  enum port port)
 {
@@ -4247,7 +4242,7 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 	 * driver.  In that case we should skip initializing the corresponding
 	 * outputs.
 	 */
-	if (hti_uses_phy(dev_priv, phy)) {
+	if (intel_hti_uses_phy(dev_priv, phy)) {
 		drm_dbg_kms(&dev_priv->drm, "PORT %c / PHY %c reserved by HTI\n",
 			    port_name(port), phy_name(phy));
 		return;
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 0d3353c403af..90219e7abc7c 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -100,6 +100,7 @@
 #include "intel_frontbuffer.h"
 #include "intel_hdcp.h"
 #include "intel_hotplug.h"
+#include "intel_hti.h"
 #include "intel_modeset_verify.h"
 #include "intel_modeset_setup.h"
 #include "intel_overlay.h"
@@ -8735,12 +8736,7 @@ int intel_modeset_init_nogem(struct drm_i915_private *i915)
 	if (i915->display.cdclk.max_cdclk_freq == 0)
 		intel_update_max_cdclk(i915);
 
-	/*
-	 * If the platform has HTI, we need to find out whether it has reserved
-	 * any display resources before we create our display outputs.
-	 */
-	if (INTEL_INFO(i915)->display.has_hti)
-		i915->hti_state = intel_de_read(i915, HDPORT_STATE);
+	intel_hti_init(i915);
 
 	/* Just disable it once at startup */
 	intel_vga_disable(i915);
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 7c6c094a0a01..28f7dcb170c7 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -30,6 +30,7 @@
 #include "intel_dpio_phy.h"
 #include "intel_dpll.h"
 #include "intel_dpll_mgr.h"
+#include "intel_hti.h"
 #include "intel_mg_phy_regs.h"
 #include "intel_pch_refclk.h"
 #include "intel_tc.h"
@@ -3163,14 +3164,6 @@ static void icl_update_active_dpll(struct intel_atomic_state *state,
 	icl_set_active_port_dpll(crtc_state, port_dpll_id);
 }
 
-static u32 intel_get_hti_plls(struct drm_i915_private *i915)
-{
-	if (!(i915->hti_state & HDPORT_ENABLED))
-		return 0;
-
-	return REG_FIELD_GET(HDPORT_DPLL_USED_MASK, i915->hti_state);
-}
-
 static int icl_compute_combo_phy_dpll(struct intel_atomic_state *state,
 				      struct intel_crtc *crtc)
 {
@@ -3245,7 +3238,7 @@ static int icl_get_combo_phy_dpll(struct intel_atomic_state *state,
 	}
 
 	/* Eliminate DPLLs from consideration if reserved by HTI */
-	dpll_mask &= ~intel_get_hti_plls(dev_priv);
+	dpll_mask &= ~intel_hti_dpll_mask(dev_priv);
 
 	port_dpll->pll = intel_find_shared_dpll(state, crtc,
 						&port_dpll->hw_state,
diff --git a/drivers/gpu/drm/i915/display/intel_hti.c b/drivers/gpu/drm/i915/display/intel_hti.c
new file mode 100644
index 000000000000..e2b09e96f9a9
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_hti.c
@@ -0,0 +1,39 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2022 Intel Corporation
+ */
+
+#include "i915_drv.h"
+#include "intel_de.h"
+#include "intel_display.h"
+#include "intel_hti.h"
+#include "intel_hti_regs.h"
+
+void intel_hti_init(struct drm_i915_private *i915)
+{
+	/*
+	 * If the platform has HTI, we need to find out whether it has reserved
+	 * any display resources before we create our display outputs.
+	 */
+	if (INTEL_INFO(i915)->display.has_hti)
+		i915->hti_state = intel_de_read(i915, HDPORT_STATE);
+}
+
+bool intel_hti_uses_phy(struct drm_i915_private *i915, enum phy phy)
+{
+	return i915->hti_state & HDPORT_ENABLED &&
+		i915->hti_state & HDPORT_DDI_USED(phy);
+}
+
+u32 intel_hti_dpll_mask(struct drm_i915_private *i915)
+{
+	if (!(i915->hti_state & HDPORT_ENABLED))
+		return 0;
+
+	/*
+	 * Note: This is subtle. The values must coincide with what's defined
+	 * for the platform.
+	 */
+	return REG_FIELD_GET(HDPORT_DPLL_USED_MASK, i915->hti_state);
+}
+
diff --git a/drivers/gpu/drm/i915/display/intel_hti.h b/drivers/gpu/drm/i915/display/intel_hti.h
new file mode 100644
index 000000000000..2893d6668657
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_hti.h
@@ -0,0 +1,18 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2022 Intel Corporation
+ */
+
+#ifndef __INTEL_HTI_H__
+#define __INTEL_HTI_H__
+
+#include <linux/types.h>
+
+struct drm_i915_private;
+enum phy;
+
+void intel_hti_init(struct drm_i915_private *i915);
+bool intel_hti_uses_phy(struct drm_i915_private *i915, enum phy phy);
+u32 intel_hti_dpll_mask(struct drm_i915_private *i915);
+
+#endif /* __INTEL_HTI_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_hti_regs.h b/drivers/gpu/drm/i915/display/intel_hti_regs.h
new file mode 100644
index 000000000000..e206f2837fc8
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_hti_regs.h
@@ -0,0 +1,16 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2022 Intel Corporation
+ */
+
+#ifndef __INTEL_HTI_REGS_H__
+#define __INTEL_HTI_REGS_H__
+
+#include "i915_reg_defs.h"
+
+#define HDPORT_STATE			_MMIO(0x45050)
+#define   HDPORT_DPLL_USED_MASK		REG_GENMASK(15, 12)
+#define   HDPORT_DDI_USED(phy)		REG_BIT(2 * (phy) + 1)
+#define   HDPORT_ENABLED		REG_BIT(0)
+
+#endif /* __INTEL_HTI_REGS_H__ */
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index a37ed0c61f20..fd60d335d9cb 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1148,11 +1148,6 @@
 #define MBUS_JOIN_PIPE_SELECT(pipe)	REG_FIELD_PREP(MBUS_JOIN_PIPE_SELECT_MASK, pipe)
 #define MBUS_JOIN_PIPE_SELECT_NONE	MBUS_JOIN_PIPE_SELECT(7)
 
-#define HDPORT_STATE			_MMIO(0x45050)
-#define   HDPORT_DPLL_USED_MASK		REG_GENMASK(15, 12)
-#define   HDPORT_DDI_USED(phy)		REG_BIT(2 * (phy) + 1)
-#define   HDPORT_ENABLED		REG_BIT(0)
-
 /* Make render/texture TLB fetches lower priorty than associated data
  *   fetches. This is not turned on by default
  */
-- 
2.34.1

