Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 980435AD8B3
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Sep 2022 20:01:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC6EE10E475;
	Mon,  5 Sep 2022 18:01:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9341510E473
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Sep 2022 18:01:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662400890; x=1693936890;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UrT47pIlNG7XJ69JocxidHQUfEz18xauGTiLjOhkpio=;
 b=aO1j/ccwXAQ3Fh8EVgduhoi6Aw2wjViUyMSY/eV52IQE2k87Lz7ogTqX
 1tcgYWea5rEsxw4RfGQYD8Sg2VZJEfJ0QcuNjM+Z4aCiGQXupbG0cSe/z
 DMQRMNlD54v4RYFQFm9zKFM8eXwuiJ+hJ/tVVfKZ68lsrN82JbBWMhPy2
 JdgDZxR7OdD8TC5Ot5M1mmZdwdrHImJMWq/h5Nz24Fu1fFzS87u8Q0DR0
 16KnXHOMvnGM1NBAQKa2nNMlzkqe5hB4Pe4O0VX65u5qhM096mdRBlKon
 eO0oy7oHobOIXRcWpeMlXNCPFUduifFLhXfW98qPdV7bYB5tKHZW4F0vA g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10461"; a="360383816"
X-IronPort-AV: E=Sophos;i="5.93,291,1654585200"; d="scan'208";a="360383816"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2022 11:01:30 -0700
X-IronPort-AV: E=Sophos;i="5.93,291,1654585200"; d="scan'208";a="643878393"
Received: from smaciag-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.57.57])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2022 11:01:28 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  5 Sep 2022 21:01:04 +0300
Message-Id: <07fd31b48aad0cdaf0248b967ebe155d1c1b9f26.1662400767.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1662400767.git.jani.nikula@intel.com>
References: <cover.1662400767.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/5] drm/i915/ipc: split out intel_ipc.[ch]
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

Add new files display/intel_ipc.[ch] for the Isochronous Priority
Control (IPC) functionality. Rename functions accordingly, and abstract
direct i915->is_enabled access behind a intel_ipc_is_enabled() function.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/Makefile                 |  1 +
 drivers/gpu/drm/i915/display/intel_display.c  |  7 ++-
 .../drm/i915/display/intel_display_debugfs.c  |  7 ++-
 drivers/gpu/drm/i915/display/intel_ipc.c      | 56 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_ipc.h      | 17 ++++++
 drivers/gpu/drm/i915/i915_driver.c            |  3 +-
 drivers/gpu/drm/i915/intel_pm.c               | 47 +---------------
 drivers/gpu/drm/i915/intel_pm.h               |  2 -
 8 files changed, 87 insertions(+), 53 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_ipc.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_ipc.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 522ef9b4aff3..535dcd7e3512 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -243,6 +243,7 @@ i915-y += \
 	display/intel_global_state.o \
 	display/intel_hdcp.o \
 	display/intel_hotplug.o \
+	display/intel_ipc.o \
 	display/intel_lpe_audio.o \
 	display/intel_modeset_verify.o \
 	display/intel_modeset_setup.o \
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index be7cff722196..7834a47e0b4b 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -98,6 +98,7 @@
 #include "intel_frontbuffer.h"
 #include "intel_hdcp.h"
 #include "intel_hotplug.h"
+#include "intel_ipc.h"
 #include "intel_modeset_verify.h"
 #include "intel_modeset_setup.h"
 #include "intel_overlay.h"
@@ -4751,7 +4752,7 @@ static u16 skl_linetime_wm(const struct intel_crtc_state *crtc_state)
 
 	/* Display WA #1135: BXT:ALL GLK:ALL */
 	if ((IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) &&
-	    dev_priv->ipc_enabled)
+	    intel_ipc_is_enabled(dev_priv))
 		linetime_wm /= 2;
 
 	return min(linetime_wm, 0x1ff);
@@ -8829,7 +8830,7 @@ int intel_modeset_init(struct drm_i915_private *i915)
 	intel_hpd_init(i915);
 	intel_hpd_poll_disable(i915);
 
-	intel_init_ipc(i915);
+	intel_ipc_init(i915);
 
 	return 0;
 }
@@ -8960,7 +8961,7 @@ void intel_display_resume(struct drm_device *dev)
 	if (!ret)
 		ret = __intel_display_resume(i915, state, &ctx);
 
-	intel_enable_ipc(i915);
+	intel_ipc_enable(i915);
 	drm_modeset_drop_locks(&ctx);
 	drm_modeset_acquire_fini(&ctx);
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 5dc364e9db49..a85e6219b403 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -22,6 +22,7 @@
 #include "intel_fbdev.h"
 #include "intel_hdcp.h"
 #include "intel_hdmi.h"
+#include "intel_ipc.h"
 #include "intel_panel.h"
 #include "intel_pm.h"
 #include "intel_psr.h"
@@ -987,7 +988,7 @@ static int i915_ipc_status_show(struct seq_file *m, void *data)
 	struct drm_i915_private *dev_priv = m->private;
 
 	seq_printf(m, "Isochronous Priority Control: %s\n",
-			str_yes_no(dev_priv->ipc_enabled));
+		   str_yes_no(intel_ipc_is_enabled(dev_priv)));
 	return 0;
 }
 
@@ -1015,11 +1016,11 @@ static ssize_t i915_ipc_status_write(struct file *file, const char __user *ubuf,
 		return ret;
 
 	with_intel_runtime_pm(&dev_priv->runtime_pm, wakeref) {
-		if (!dev_priv->ipc_enabled && enable)
+		if (!intel_ipc_is_enabled(dev_priv) && enable)
 			drm_info(&dev_priv->drm,
 				 "Enabling IPC: WM will be proper only after next commit\n");
 		dev_priv->ipc_enabled = enable;
-		intel_enable_ipc(dev_priv);
+		intel_ipc_enable(dev_priv);
 	}
 
 	return len;
diff --git a/drivers/gpu/drm/i915/display/intel_ipc.c b/drivers/gpu/drm/i915/display/intel_ipc.c
new file mode 100644
index 000000000000..71afec42d374
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_ipc.c
@@ -0,0 +1,56 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2022 Intel Corporation
+ */
+
+#include "i915_drv.h"
+#include "i915_reg.h"
+#include "intel_ipc.h"
+#include "intel_uncore.h"
+
+bool intel_ipc_is_enabled(struct drm_i915_private *i915)
+{
+	return i915->ipc_enabled;
+}
+
+void intel_ipc_enable(struct drm_i915_private *i915)
+{
+	u32 val;
+
+	if (!HAS_IPC(i915))
+		return;
+
+	val = intel_uncore_read(&i915->uncore, DISP_ARB_CTL2);
+
+	if (intel_ipc_is_enabled(i915))
+		val |= DISP_IPC_ENABLE;
+	else
+		val &= ~DISP_IPC_ENABLE;
+
+	intel_uncore_write(&i915->uncore, DISP_ARB_CTL2, val);
+}
+
+static bool intel_ipc_can_enable(struct drm_i915_private *i915)
+{
+	/* Display WA #0477 WaDisableIPC: skl */
+	if (IS_SKYLAKE(i915))
+		return false;
+
+	/* Display WA #1141: SKL:all KBL:all CFL */
+	if (IS_KABYLAKE(i915) ||
+	    IS_COFFEELAKE(i915) ||
+	    IS_COMETLAKE(i915))
+		return i915->dram_info.symmetric_memory;
+
+	return true;
+}
+
+void intel_ipc_init(struct drm_i915_private *i915)
+{
+	if (!HAS_IPC(i915))
+		return;
+
+	i915->ipc_enabled = intel_ipc_can_enable(i915);
+
+	intel_ipc_enable(i915);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_ipc.h b/drivers/gpu/drm/i915/display/intel_ipc.h
new file mode 100644
index 000000000000..1a82d8ee07da
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_ipc.h
@@ -0,0 +1,17 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2022 Intel Corporation
+ */
+
+#ifndef __INTEL_IPC_H__
+#define __INTEL_IPC_H__
+
+#include <linux/types.h>
+
+struct drm_i915_private;
+
+void intel_ipc_init(struct drm_i915_private *i915);
+void intel_ipc_enable(struct drm_i915_private *i915);
+bool intel_ipc_is_enabled(struct drm_i915_private *i915);
+
+#endif /* __INTEL_IPC_H__ */
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 56a2bcddb2af..f222ef97194d 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -55,6 +55,7 @@
 #include "display/intel_dpt.h"
 #include "display/intel_fbdev.h"
 #include "display/intel_hotplug.h"
+#include "display/intel_ipc.h"
 #include "display/intel_overlay.h"
 #include "display/intel_pch_refclk.h"
 #include "display/intel_pipe_crc.h"
@@ -1712,7 +1713,7 @@ static int intel_runtime_resume(struct device *kdev)
 		intel_hpd_poll_disable(dev_priv);
 	}
 
-	intel_enable_ipc(dev_priv);
+	intel_ipc_enable(dev_priv);
 
 	enable_rpm_wakeref_asserts(rpm);
 
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 210c1f78cc90..fe74a959b11f 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -41,6 +41,7 @@
 #include "display/intel_display_types.h"
 #include "display/intel_fb.h"
 #include "display/intel_fbc.h"
+#include "display/intel_ipc.h"
 #include "display/intel_sprite.h"
 #include "display/skl_universal_plane.h"
 
@@ -5466,7 +5467,7 @@ static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
 	if ((IS_KABYLAKE(dev_priv) ||
 	     IS_COFFEELAKE(dev_priv) ||
 	     IS_COMETLAKE(dev_priv)) &&
-	    dev_priv->ipc_enabled)
+	    intel_ipc_is_enabled(dev_priv))
 		latency += 4;
 
 	if (skl_needs_memory_bw_wa(dev_priv) && wp->x_tiled)
@@ -5634,7 +5635,7 @@ static void skl_compute_transition_wm(struct drm_i915_private *dev_priv,
 	u16 wm0_blocks, trans_offset, blocks;
 
 	/* Transition WM don't make any sense if ipc is disabled */
-	if (!dev_priv->ipc_enabled)
+	if (!intel_ipc_is_enabled(dev_priv))
 		return;
 
 	/*
@@ -7314,48 +7315,6 @@ void intel_wm_state_verify(struct intel_crtc *crtc,
 	kfree(hw);
 }
 
-void intel_enable_ipc(struct drm_i915_private *dev_priv)
-{
-	u32 val;
-
-	if (!HAS_IPC(dev_priv))
-		return;
-
-	val = intel_uncore_read(&dev_priv->uncore, DISP_ARB_CTL2);
-
-	if (dev_priv->ipc_enabled)
-		val |= DISP_IPC_ENABLE;
-	else
-		val &= ~DISP_IPC_ENABLE;
-
-	intel_uncore_write(&dev_priv->uncore, DISP_ARB_CTL2, val);
-}
-
-static bool intel_can_enable_ipc(struct drm_i915_private *dev_priv)
-{
-	/* Display WA #0477 WaDisableIPC: skl */
-	if (IS_SKYLAKE(dev_priv))
-		return false;
-
-	/* Display WA #1141: SKL:all KBL:all CFL */
-	if (IS_KABYLAKE(dev_priv) ||
-	    IS_COFFEELAKE(dev_priv) ||
-	    IS_COMETLAKE(dev_priv))
-		return dev_priv->dram_info.symmetric_memory;
-
-	return true;
-}
-
-void intel_init_ipc(struct drm_i915_private *dev_priv)
-{
-	if (!HAS_IPC(dev_priv))
-		return;
-
-	dev_priv->ipc_enabled = intel_can_enable_ipc(dev_priv);
-
-	intel_enable_ipc(dev_priv);
-}
-
 static void ibx_init_clock_gating(struct drm_i915_private *dev_priv)
 {
 	/*
diff --git a/drivers/gpu/drm/i915/intel_pm.h b/drivers/gpu/drm/i915/intel_pm.h
index 3ee71831d1a4..89ddad008ad8 100644
--- a/drivers/gpu/drm/i915/intel_pm.h
+++ b/drivers/gpu/drm/i915/intel_pm.h
@@ -56,8 +56,6 @@ void skl_write_plane_wm(struct intel_plane *plane,
 void skl_write_cursor_wm(struct intel_plane *plane,
 			 const struct intel_crtc_state *crtc_state);
 bool ilk_disable_lp_wm(struct drm_i915_private *dev_priv);
-void intel_init_ipc(struct drm_i915_private *dev_priv);
-void intel_enable_ipc(struct drm_i915_private *dev_priv);
 
 bool intel_set_memory_cxsr(struct drm_i915_private *dev_priv, bool enable);
 
-- 
2.34.1

