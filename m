Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1970C6386E5
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Nov 2022 10:59:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC61810E5D5;
	Fri, 25 Nov 2022 09:59:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ADB6C10E5D5
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Nov 2022 09:59:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669370348; x=1700906348;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=UqiQvv6GI0FXIyvv0322sNyZ/wmb/tn8yy9+Abe74Tg=;
 b=Nt5a4MQDNwfjVVGtYXtpb3+jPpvfzHxMR5WgNpkCkIVEYBF9K5v3lwDu
 lkbm9KII5otkpRlN49yv8oLKjJqJLZ0iGKoTAepkIzdN15kHjfXHJitft
 eKyNePToxY8si9h/L2GL9216vlR5g75suUQKlQnMY8oHNzsKv2uqJDUY+
 11sy8LDcOOP/hVfRm9lM3ZRqYoaRntHosmwxyKt09KPCBWvUU2zxkIFBn
 O7kWqOR/eo1hCrYDaRuNHFQsrX72n6TJTu7zXNc5QDNN7ykWxkb67M7E9
 bmKQUb23WC4mDPWSGZ58rER6xaIDdW43Jva0lzwO52JHU0WtgnymnjjMR A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10541"; a="294155228"
X-IronPort-AV: E=Sophos;i="5.96,193,1665471600"; d="scan'208";a="294155228"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2022 01:59:08 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10541"; a="731393246"
X-IronPort-AV: E=Sophos;i="5.96,193,1665471600"; d="scan'208";a="731393246"
Received: from kfirmill-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.50.133])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2022 01:59:06 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Nov 2022 11:59:02 +0200
Message-Id: <20221125095902.120882-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC] drm/i915/display: add intel_display_limits.h for
 key enums
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

Move a handful of key enums to a new file intel_display_limits.h. These
are the enum types, and the MAX/NUM enumerations within them, that are
used in other headers. Otherwise, there's no common theme between them.

Replace intel_display.h include with intel_display_limit.h where
relevant, and add the intel_display.h include directly in the .c files
where needed.

Since intel_display.h is used almost everywhere in display/, include it
from intel_display_types.h to avoid massive changes across the
board. There are very few files that would need intel_display_types.h
but not intel_display.h so this is neglible, and further cleanup between
these headers can be left for the future.

Overall this change drops the direct and indirect dependencies on
intel_display.h from about 300 to about 100 compilation units.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>

---

N.b. intel_display_limits.h is not a great name. I was hoping it was
only needed for the MAX/NUM enumerations such as I915_MAX_PIPES but
there are a number of headers that use the types for struct members as
well. intel_display_enums.h sounds too generic too. Suggestions?
---
 drivers/gpu/drm/i915/display/intel_bw.h       |   2 +-
 drivers/gpu/drm/i915/display/intel_cdclk.h    |   2 +-
 drivers/gpu/drm/i915/display/intel_display.h  | 115 +---------------
 .../gpu/drm/i915/display/intel_display_core.h |   2 +-
 .../drm/i915/display/intel_display_limits.h   | 124 ++++++++++++++++++
 .../i915/display/intel_display_power_map.c    |   1 +
 .../drm/i915/display/intel_display_types.h    |   1 +
 drivers/gpu/drm/i915/display/intel_dvo_dev.h  |   2 +-
 drivers/gpu/drm/i915/display/skl_watermark.h  |   2 +-
 drivers/gpu/drm/i915/gem/i915_gem_create.c    |   1 +
 drivers/gpu/drm/i915/gt/intel_ggtt.c          |   1 +
 drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c  |   1 +
 drivers/gpu/drm/i915/gt/intel_rps.c           |   1 +
 drivers/gpu/drm/i915/gvt/cmd_parser.c         |   1 +
 drivers/gpu/drm/i915/gvt/display.c            |   1 +
 drivers/gpu/drm/i915/gvt/fb_decoder.h         |   2 +-
 drivers/gpu/drm/i915/i915_drv.h               |   2 +-
 drivers/gpu/drm/i915/i915_pci.c               |   1 +
 drivers/gpu/drm/i915/i915_vma.c               |   1 +
 drivers/gpu/drm/i915/intel_device_info.c      |   1 +
 drivers/gpu/drm/i915/intel_device_info.h      |   2 +-
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c   |   1 +
 drivers/gpu/drm/i915/intel_pm.c               |   1 +
 drivers/gpu/drm/i915/intel_pm_types.h         |   2 +-
 drivers/gpu/drm/i915/vlv_sideband.c           |   1 +
 25 files changed, 148 insertions(+), 123 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_limits.h

diff --git a/drivers/gpu/drm/i915/display/intel_bw.h b/drivers/gpu/drm/i915/display/intel_bw.h
index cb7ee3a24a58..f20292143745 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.h
+++ b/drivers/gpu/drm/i915/display/intel_bw.h
@@ -8,7 +8,7 @@
 
 #include <drm/drm_atomic.h>
 
-#include "intel_display.h"
+#include "intel_display_limits.h"
 #include "intel_display_power.h"
 #include "intel_global_state.h"
 
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm/i915/display/intel_cdclk.h
index c674879a84a5..51e2f6a11ce4 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.h
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
@@ -8,7 +8,7 @@
 
 #include <linux/types.h>
 
-#include "intel_display.h"
+#include "intel_display_limits.h"
 #include "intel_global_state.h"
 
 struct drm_i915_private;
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 714030136b7f..057445da54e2 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -28,6 +28,7 @@
 #include <drm/drm_util.h>
 
 #include "i915_reg_defs.h"
+#include "intel_display_limits.h"
 
 enum drm_scaling_filter;
 struct dpll;
@@ -62,51 +63,9 @@ struct intel_remapped_info;
 struct intel_rotation_info;
 struct pci_dev;
 
-/*
- * Keep the pipe enum values fixed: the code assumes that PIPE_A=0, the
- * rest have consecutive values and match the enum values of transcoders
- * with a 1:1 transcoder -> pipe mapping.
- */
-enum pipe {
-	INVALID_PIPE = -1,
-
-	PIPE_A = 0,
-	PIPE_B,
-	PIPE_C,
-	PIPE_D,
-	_PIPE_EDP,
-
-	I915_MAX_PIPES = _PIPE_EDP
-};
 
 #define pipe_name(p) ((p) + 'A')
 
-enum transcoder {
-	INVALID_TRANSCODER = -1,
-	/*
-	 * The following transcoders have a 1:1 transcoder -> pipe mapping,
-	 * keep their values fixed: the code assumes that TRANSCODER_A=0, the
-	 * rest have consecutive values and match the enum values of the pipes
-	 * they map to.
-	 */
-	TRANSCODER_A = PIPE_A,
-	TRANSCODER_B = PIPE_B,
-	TRANSCODER_C = PIPE_C,
-	TRANSCODER_D = PIPE_D,
-
-	/*
-	 * The following transcoders can map to any pipe, their enum value
-	 * doesn't need to stay fixed.
-	 */
-	TRANSCODER_EDP,
-	TRANSCODER_DSI_0,
-	TRANSCODER_DSI_1,
-	TRANSCODER_DSI_A = TRANSCODER_DSI_0,	/* legacy DSI */
-	TRANSCODER_DSI_C = TRANSCODER_DSI_1,	/* legacy DSI */
-
-	I915_MAX_TRANSCODERS
-};
-
 static inline const char *transcoder_name(enum transcoder transcoder)
 {
 	switch (transcoder) {
@@ -147,29 +106,6 @@ enum i9xx_plane_id {
 #define plane_name(p) ((p) + 'A')
 #define sprite_name(p, s) ((p) * RUNTIME_INFO(dev_priv)->num_sprites[(p)] + (s) + 'A')
 
-/*
- * Per-pipe plane identifier.
- * I915_MAX_PLANES in the enum below is the maximum (across all platforms)
- * number of planes per CRTC.  Not all platforms really have this many planes,
- * which means some arrays of size I915_MAX_PLANES may have unused entries
- * between the topmost sprite plane and the cursor plane.
- *
- * This is expected to be passed to various register macros
- * (eg. PLANE_CTL(), PS_PLANE_SEL(), etc.) so adjust with care.
- */
-enum plane_id {
-	PLANE_PRIMARY,
-	PLANE_SPRITE0,
-	PLANE_SPRITE1,
-	PLANE_SPRITE2,
-	PLANE_SPRITE3,
-	PLANE_SPRITE4,
-	PLANE_SPRITE5,
-	PLANE_CURSOR,
-
-	I915_MAX_PLANES,
-};
-
 #define for_each_plane_id_on_crtc(__crtc, __p) \
 	for ((__p) = PLANE_PRIMARY; (__p) < I915_MAX_PLANES; (__p)++) \
 		for_each_if((__crtc)->plane_ids_mask & BIT(__p))
@@ -182,34 +118,6 @@ enum plane_id {
 	for_each_dbuf_slice((__dev_priv), (__slice)) \
 		for_each_if((__mask) & BIT(__slice))
 
-enum port {
-	PORT_NONE = -1,
-
-	PORT_A = 0,
-	PORT_B,
-	PORT_C,
-	PORT_D,
-	PORT_E,
-	PORT_F,
-	PORT_G,
-	PORT_H,
-	PORT_I,
-
-	/* tgl+ */
-	PORT_TC1 = PORT_D,
-	PORT_TC2,
-	PORT_TC3,
-	PORT_TC4,
-	PORT_TC5,
-	PORT_TC6,
-
-	/* XE_LPD repositions D/E offsets and bitfields */
-	PORT_D_XELPD = PORT_TC5,
-	PORT_E_XELPD,
-
-	I915_MAX_PORTS
-};
-
 #define port_name(p) ((p) + 'A')
 
 /*
@@ -312,27 +220,6 @@ enum phy_fia {
 	FIA3,
 };
 
-enum hpd_pin {
-	HPD_NONE = 0,
-	HPD_TV = HPD_NONE,     /* TV is known to be unreliable */
-	HPD_CRT,
-	HPD_SDVO_B,
-	HPD_SDVO_C,
-	HPD_PORT_A,
-	HPD_PORT_B,
-	HPD_PORT_C,
-	HPD_PORT_D,
-	HPD_PORT_E,
-	HPD_PORT_TC1,
-	HPD_PORT_TC2,
-	HPD_PORT_TC3,
-	HPD_PORT_TC4,
-	HPD_PORT_TC5,
-	HPD_PORT_TC6,
-
-	HPD_NUM_PINS
-};
-
 #define for_each_hpd_pin(__pin) \
 	for ((__pin) = (HPD_NONE + 1); (__pin) < HPD_NUM_PINS; (__pin)++)
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 57ddce3ba02b..1d5d9d56fb3f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -17,7 +17,7 @@
 #include <drm/drm_modeset_lock.h>
 
 #include "intel_cdclk.h"
-#include "intel_display.h"
+#include "intel_display_limits.h"
 #include "intel_display_power.h"
 #include "intel_dmc.h"
 #include "intel_dpll_mgr.h"
diff --git a/drivers/gpu/drm/i915/display/intel_display_limits.h b/drivers/gpu/drm/i915/display/intel_display_limits.h
new file mode 100644
index 000000000000..5126d0b5ae5d
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_display_limits.h
@@ -0,0 +1,124 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2022 Intel Corporation
+ */
+
+#ifndef __INTEL_DISPLAY_LIMITS_H__
+#define __INTEL_DISPLAY_LIMITS_H__
+
+/*
+ * Keep the pipe enum values fixed: the code assumes that PIPE_A=0, the
+ * rest have consecutive values and match the enum values of transcoders
+ * with a 1:1 transcoder -> pipe mapping.
+ */
+enum pipe {
+	INVALID_PIPE = -1,
+
+	PIPE_A = 0,
+	PIPE_B,
+	PIPE_C,
+	PIPE_D,
+	_PIPE_EDP,
+
+	I915_MAX_PIPES = _PIPE_EDP
+};
+
+enum transcoder {
+	INVALID_TRANSCODER = -1,
+	/*
+	 * The following transcoders have a 1:1 transcoder -> pipe mapping,
+	 * keep their values fixed: the code assumes that TRANSCODER_A=0, the
+	 * rest have consecutive values and match the enum values of the pipes
+	 * they map to.
+	 */
+	TRANSCODER_A = PIPE_A,
+	TRANSCODER_B = PIPE_B,
+	TRANSCODER_C = PIPE_C,
+	TRANSCODER_D = PIPE_D,
+
+	/*
+	 * The following transcoders can map to any pipe, their enum value
+	 * doesn't need to stay fixed.
+	 */
+	TRANSCODER_EDP,
+	TRANSCODER_DSI_0,
+	TRANSCODER_DSI_1,
+	TRANSCODER_DSI_A = TRANSCODER_DSI_0,	/* legacy DSI */
+	TRANSCODER_DSI_C = TRANSCODER_DSI_1,	/* legacy DSI */
+
+	I915_MAX_TRANSCODERS
+};
+
+/*
+ * Per-pipe plane identifier.
+ * I915_MAX_PLANES in the enum below is the maximum (across all platforms)
+ * number of planes per CRTC.  Not all platforms really have this many planes,
+ * which means some arrays of size I915_MAX_PLANES may have unused entries
+ * between the topmost sprite plane and the cursor plane.
+ *
+ * This is expected to be passed to various register macros
+ * (eg. PLANE_CTL(), PS_PLANE_SEL(), etc.) so adjust with care.
+ */
+enum plane_id {
+	PLANE_PRIMARY,
+	PLANE_SPRITE0,
+	PLANE_SPRITE1,
+	PLANE_SPRITE2,
+	PLANE_SPRITE3,
+	PLANE_SPRITE4,
+	PLANE_SPRITE5,
+	PLANE_CURSOR,
+
+	I915_MAX_PLANES,
+};
+
+enum port {
+	PORT_NONE = -1,
+
+	PORT_A = 0,
+	PORT_B,
+	PORT_C,
+	PORT_D,
+	PORT_E,
+	PORT_F,
+	PORT_G,
+	PORT_H,
+	PORT_I,
+
+	/* tgl+ */
+	PORT_TC1 = PORT_D,
+	PORT_TC2,
+	PORT_TC3,
+	PORT_TC4,
+	PORT_TC5,
+	PORT_TC6,
+
+	/* XE_LPD repositions D/E offsets and bitfields */
+	PORT_D_XELPD = PORT_TC5,
+	PORT_E_XELPD,
+
+	I915_MAX_PORTS
+};
+
+enum hpd_pin {
+	HPD_NONE = 0,
+	HPD_TV = HPD_NONE,     /* TV is known to be unreliable */
+	HPD_CRT,
+	HPD_SDVO_B,
+	HPD_SDVO_C,
+	HPD_PORT_A,
+	HPD_PORT_B,
+	HPD_PORT_C,
+	HPD_PORT_D,
+	HPD_PORT_E,
+	HPD_PORT_TC1,
+	HPD_PORT_TC2,
+	HPD_PORT_TC3,
+	HPD_PORT_TC4,
+	HPD_PORT_TC5,
+	HPD_PORT_TC6,
+
+	HPD_NUM_PINS
+};
+
+#endif /* __INTEL_DISPLAY_LIMITS_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/drivers/gpu/drm/i915/display/intel_display_power_map.c
index f5d66ca85b19..6645eb1911d8 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
@@ -10,6 +10,7 @@
 
 #include "intel_display_power_map.h"
 #include "intel_display_power_well.h"
+#include "intel_display_types.h"
 
 #define __LIST_INLINE_ELEMS(__elem_type, ...) \
 	((__elem_type[]) { __VA_ARGS__ })
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index ff3ef37d099e..7787989fe6d9 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -50,6 +50,7 @@
 #include "i915_vma_types.h"
 #include "intel_bios.h"
 #include "intel_display.h"
+#include "intel_display_limits.h"
 #include "intel_display_power.h"
 #include "intel_dpll_mgr.h"
 #include "intel_pm_types.h"
diff --git a/drivers/gpu/drm/i915/display/intel_dvo_dev.h b/drivers/gpu/drm/i915/display/intel_dvo_dev.h
index ea8eb7dcee38..f7e98e1c6470 100644
--- a/drivers/gpu/drm/i915/display/intel_dvo_dev.h
+++ b/drivers/gpu/drm/i915/display/intel_dvo_dev.h
@@ -25,7 +25,7 @@
 
 #include "i915_reg_defs.h"
 
-#include "intel_display.h"
+#include "intel_display_limits.h"
 
 enum drm_connector_status;
 struct drm_display_mode;
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.h b/drivers/gpu/drm/i915/display/skl_watermark.h
index 7a5a4e67cd73..37954c472070 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.h
+++ b/drivers/gpu/drm/i915/display/skl_watermark.h
@@ -8,7 +8,7 @@
 
 #include <linux/types.h>
 
-#include "intel_display.h"
+#include "intel_display_limits.h"
 #include "intel_global_state.h"
 #include "intel_pm_types.h"
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_create.c b/drivers/gpu/drm/i915/gem/i915_gem_create.c
index 33673fe7ee0a..fa5356da62b4 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_create.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_create.c
@@ -5,6 +5,7 @@
 
 #include <drm/drm_fourcc.h>
 
+#include "display/intel_display.h"
 #include "gem/i915_gem_ioctls.h"
 #include "gem/i915_gem_lmem.h"
 #include "gem/i915_gem_region.h"
diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index 8145851ad23d..2161971727a2 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -11,6 +11,7 @@
 #include <drm/i915_drm.h>
 #include <drm/intel-gtt.h>
 
+#include "display/intel_display.h"
 #include "gem/i915_gem_lmem.h"
 
 #include "intel_ggtt_gmch.h"
diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
index 995082d45cb2..4fa203cece62 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
@@ -5,6 +5,7 @@
 
 #include <linux/highmem.h>
 
+#include "display/intel_display.h"
 #include "i915_drv.h"
 #include "i915_reg.h"
 #include "i915_scatterlist.h"
diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index 9ad3bc7201cb..f5d7b5126433 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -7,6 +7,7 @@
 
 #include <drm/i915_drm.h>
 
+#include "display/intel_display.h"
 #include "i915_drv.h"
 #include "i915_irq.h"
 #include "intel_breadcrumbs.h"
diff --git a/drivers/gpu/drm/i915/gvt/cmd_parser.c b/drivers/gpu/drm/i915/gvt/cmd_parser.c
index 0ebf5fbf0e39..3c4ae1da0d41 100644
--- a/drivers/gpu/drm/i915/gvt/cmd_parser.c
+++ b/drivers/gpu/drm/i915/gvt/cmd_parser.c
@@ -49,6 +49,7 @@
 #include "i915_pvinfo.h"
 #include "trace.h"
 
+#include "display/intel_display.h"
 #include "gem/i915_gem_context.h"
 #include "gem/i915_gem_pm.h"
 #include "gt/intel_context.h"
diff --git a/drivers/gpu/drm/i915/gvt/display.c b/drivers/gpu/drm/i915/gvt/display.c
index c033249e73f4..4d898b14de93 100644
--- a/drivers/gpu/drm/i915/gvt/display.c
+++ b/drivers/gpu/drm/i915/gvt/display.c
@@ -36,6 +36,7 @@
 #include "i915_reg.h"
 #include "gvt.h"
 
+#include "display/intel_display.h"
 #include "display/intel_dpio_phy.h"
 
 static int get_edp_pipe(struct intel_vgpu *vgpu)
diff --git a/drivers/gpu/drm/i915/gvt/fb_decoder.h b/drivers/gpu/drm/i915/gvt/fb_decoder.h
index 0daa3931aef7..4eff44194439 100644
--- a/drivers/gpu/drm/i915/gvt/fb_decoder.h
+++ b/drivers/gpu/drm/i915/gvt/fb_decoder.h
@@ -38,7 +38,7 @@
 
 #include <linux/types.h>
 
-#include "display/intel_display.h"
+#include "display/intel_display_limits.h"
 
 struct intel_vgpu;
 
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index a380db36d52c..8495624e3aa6 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -36,7 +36,7 @@
 
 #include <drm/ttm/ttm_device.h>
 
-#include "display/intel_display.h"
+#include "display/intel_display_limits.h"
 #include "display/intel_display_core.h"
 
 #include "gem/i915_gem_context_types.h"
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 414b4bfd514b..9571dde7c6c0 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -26,6 +26,7 @@
 #include <drm/drm_drv.h>
 #include <drm/i915_pciids.h>
 
+#include "display/intel_display.h"
 #include "gt/intel_gt_regs.h"
 #include "gt/intel_sa_media.h"
 
diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index 703fee6b5f75..f0473f93fbb2 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -26,6 +26,7 @@
 #include <linux/dma-fence-array.h>
 #include <drm/drm_gem.h>
 
+#include "display/intel_display.h"
 #include "display/intel_frontbuffer.h"
 #include "gem/i915_gem_lmem.h"
 #include "gem/i915_gem_tiling.h"
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index 849baf6c3b3c..8953fc355d79 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -29,6 +29,7 @@
 
 #include "display/intel_cdclk.h"
 #include "display/intel_de.h"
+#include "display/intel_display.h"
 #include "gt/intel_gt_regs.h"
 #include "i915_drv.h"
 #include "i915_reg.h"
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index d588e5fd2eea..80bda653d61b 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -29,7 +29,7 @@
 
 #include "intel_step.h"
 
-#include "display/intel_display.h"
+#include "display/intel_display_limits.h"
 
 #include "gt/intel_engine_types.h"
 #include "gt/intel_context_types.h"
diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
index ce6b3c3b636a..1f4805aa2b08 100644
--- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
+++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
@@ -5,6 +5,7 @@
 
 #include "display/intel_audio_regs.h"
 #include "display/intel_backlight_regs.h"
+#include "display/intel_display_types.h"
 #include "display/intel_dmc_regs.h"
 #include "display/intel_dpio_phy.h"
 #include "display/vlv_dsi_pll_regs.h"
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 73c88b1c9545..3fc65bd12cc1 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -26,6 +26,7 @@
  */
 
 #include "display/intel_de.h"
+#include "display/intel_display.h"
 #include "display/intel_display_trace.h"
 #include "display/skl_watermark.h"
 
diff --git a/drivers/gpu/drm/i915/intel_pm_types.h b/drivers/gpu/drm/i915/intel_pm_types.h
index 211632f58751..93152537b420 100644
--- a/drivers/gpu/drm/i915/intel_pm_types.h
+++ b/drivers/gpu/drm/i915/intel_pm_types.h
@@ -8,7 +8,7 @@
 
 #include <linux/types.h>
 
-#include "display/intel_display.h"
+#include "display/intel_display_limits.h"
 
 enum intel_ddb_partitioning {
 	INTEL_DDB_PART_1_2,
diff --git a/drivers/gpu/drm/i915/vlv_sideband.c b/drivers/gpu/drm/i915/vlv_sideband.c
index 6eea6e1a99c0..b98dec3ad817 100644
--- a/drivers/gpu/drm/i915/vlv_sideband.c
+++ b/drivers/gpu/drm/i915/vlv_sideband.c
@@ -9,6 +9,7 @@
 #include "vlv_sideband.h"
 
 #include "display/intel_dpio_phy.h"
+#include "display/intel_display_types.h"
 
 /*
  * IOSF sideband, see VLV2_SidebandMsg_HAS.docx and
-- 
2.34.1

