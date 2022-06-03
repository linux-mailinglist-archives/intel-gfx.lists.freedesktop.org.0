Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E537653CA60
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jun 2022 15:06:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D8391134C3;
	Fri,  3 Jun 2022 13:06:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ABEB71134C3
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jun 2022 13:06:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654261573; x=1685797573;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+53iuusBXvs9ck7/peRmGtOL/OMTCHE+iHs/tzC89pU=;
 b=UUp+APYrinmGNf8/fbSIETEUvc6aocGjFnk7HFVjkkhObGEqx5K06SJo
 jjzU+nYaU56zY9CLpSt7gogyzS/7EIeQsjr4c9wrVLYuoQzBKqgDbQHX8
 kqBjntniYor3w6hu/m5DWQth81krbgGCCbN7W48Cy8frWO8G8D8fJUjSw
 J+djqnt4T6DmOyaKyQXARGMUTYuovA28jZyRC5jEYTv71jQvoFXLkaUWS
 MqtT7uDYcjRZoNLWuvoCAY9pKonuPjV6reC5VvSWXr/YvokocLSPm6O+7
 YcysAYwhrf/MmLP8iUxOzpa8Q2bXnAtb0Dh2Db7yzmzlm09/81ysEaaP/ Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10366"; a="263897459"
X-IronPort-AV: E=Sophos;i="5.91,274,1647327600"; d="scan'208";a="263897459"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2022 06:06:13 -0700
X-IronPort-AV: E=Sophos;i="5.91,274,1647327600"; d="scan'208";a="607389764"
Received: from richardf-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.55.27])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2022 06:06:11 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  3 Jun 2022 16:05:55 +0300
Message-Id: <46e237c35203fd07f9c28afd33de8b5cfbfe2d71.1654261471.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1654261471.git.jani.nikula@intel.com>
References: <cover.1654261471.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/7] drm/i915/debug: add new i915_debug.h for
 debug asserts
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

Move the various GEM_BUG_ON(), GEM_WARN_ON(), etc. debug macros to a
dedicated i915_debug.h file.

Unfortunately, the i915_debug.h needs to be included from some headers
that get included from i915_drv.h, so we don't really get much build
benefits here, other than getting rid of superfluous i915_gem.h
includes.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.h   |  1 -
 drivers/gpu/drm/i915/gem/i915_gem_internal.c  |  1 -
 drivers/gpu/drm/i915/gem/i915_gem_object.h    |  5 +-
 drivers/gpu/drm/i915/gem/i915_gem_tiling.c    |  1 -
 drivers/gpu/drm/i915/gt/gen8_engine_cs.h      |  2 +-
 drivers/gpu/drm/i915/gt/intel_engine_stats.h  |  2 +-
 drivers/gpu/drm/i915/gt/intel_engine_types.h  |  1 -
 drivers/gpu/drm/i915/gt/intel_gt.c            |  1 +
 drivers/gpu/drm/i915/gt/intel_gt_sysfs.h      |  2 -
 drivers/gpu/drm/i915/gt/intel_renderstate.h   |  2 +-
 drivers/gpu/drm/i915/gt/intel_ring.h          |  2 +-
 drivers/gpu/drm/i915/gt/intel_sseu.h          |  5 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h   |  2 +
 drivers/gpu/drm/i915/gt/uc/intel_guc_log.h    |  1 -
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h      |  1 -
 drivers/gpu/drm/i915/i915_debug.h             | 63 +++++++++++++++++++
 drivers/gpu/drm/i915/i915_drm_client.c        |  1 -
 drivers/gpu/drm/i915/i915_drv.h               |  1 -
 drivers/gpu/drm/i915/i915_gem.h               | 57 -----------------
 drivers/gpu/drm/i915/i915_gpu_error.h         |  1 -
 drivers/gpu/drm/i915/i915_ioctl.c             |  1 -
 drivers/gpu/drm/i915/i915_request.h           |  1 -
 drivers/gpu/drm/i915/i915_scatterlist.h       |  2 +-
 drivers/gpu/drm/i915/i915_syncmap.c           |  5 +-
 drivers/gpu/drm/i915/i915_ttm_buddy_manager.c |  3 +-
 drivers/gpu/drm/i915/i915_vma_resource.h      |  1 -
 26 files changed, 80 insertions(+), 85 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/i915_debug.h

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.h b/drivers/gpu/drm/i915/gem/i915_gem_context.h
index e5b0f66ea1fe..0529bbf5f51c 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.h
@@ -12,7 +12,6 @@
 #include "gt/intel_context.h"
 
 #include "i915_drv.h"
-#include "i915_gem.h"
 #include "i915_scheduler.h"
 #include "intel_device_info.h"
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_internal.c b/drivers/gpu/drm/i915/gem/i915_gem_internal.c
index c698f95af15f..9f4050933d6e 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_internal.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_internal.c
@@ -9,7 +9,6 @@
 #include <linux/swiotlb.h>
 
 #include "i915_drv.h"
-#include "i915_gem.h"
 #include "i915_gem_internal.h"
 #include "i915_gem_object.h"
 #include "i915_scatterlist.h"
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
index e11d82a9f7c3..9308f3ab9c98 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
@@ -12,11 +12,12 @@
 #include <drm/drm_device.h>
 
 #include "display/intel_frontbuffer.h"
-#include "intel_memory_region.h"
-#include "i915_gem_object_types.h"
+#include "i915_debug.h"
 #include "i915_gem_gtt.h"
+#include "i915_gem_object_types.h"
 #include "i915_gem_ww.h"
 #include "i915_vma_types.h"
+#include "intel_memory_region.h"
 
 enum intel_region_id;
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_tiling.c b/drivers/gpu/drm/i915/gem/i915_gem_tiling.c
index 80ac0db1ae8c..ef8767f3d432 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_tiling.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_tiling.c
@@ -8,7 +8,6 @@
 #include <linux/bitops.h>
 
 #include "i915_drv.h"
-#include "i915_gem.h"
 #include "i915_gem_ioctls.h"
 #include "i915_gem_mman.h"
 #include "i915_gem_object.h"
diff --git a/drivers/gpu/drm/i915/gt/gen8_engine_cs.h b/drivers/gpu/drm/i915/gt/gen8_engine_cs.h
index 32e3d2b831bb..1e693f1a924b 100644
--- a/drivers/gpu/drm/i915/gt/gen8_engine_cs.h
+++ b/drivers/gpu/drm/i915/gt/gen8_engine_cs.h
@@ -9,7 +9,7 @@
 #include <linux/string.h>
 #include <linux/types.h>
 
-#include "i915_gem.h" /* GEM_BUG_ON */
+#include "i915_debug.h"
 #include "intel_gt_regs.h"
 #include "intel_gpu_commands.h"
 
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_stats.h b/drivers/gpu/drm/i915/gt/intel_engine_stats.h
index 8e762d683e50..c7673af7bc01 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_stats.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_stats.h
@@ -10,7 +10,7 @@
 #include <linux/ktime.h>
 #include <linux/seqlock.h>
 
-#include "i915_gem.h" /* GEM_BUG_ON */
+#include "i915_debug.h"
 #include "intel_engine.h"
 
 static inline void intel_engine_context_in(struct intel_engine_cs *engine)
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index 2286f96f5f87..5f6334bd6f41 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
@@ -17,7 +17,6 @@
 #include <linux/types.h>
 #include <linux/workqueue.h>
 
-#include "i915_gem.h"
 #include "i915_pmu.h"
 #include "i915_priolist_types.h"
 #include "i915_selftest.h"
diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index ddfb98f70489..b5f445aaa7ab 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -10,6 +10,7 @@
 #include "pxp/intel_pxp.h"
 
 #include "i915_drv.h"
+#include "i915_gem.h"
 #include "intel_context.h"
 #include "intel_engine_regs.h"
 #include "intel_gt.h"
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_sysfs.h b/drivers/gpu/drm/i915/gt/intel_gt_sysfs.h
index a99aa7e8b01a..acebf48720fa 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_sysfs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_sysfs.h
@@ -9,8 +9,6 @@
 #include <linux/ctype.h>
 #include <linux/kobject.h>
 
-#include "i915_gem.h" /* GEM_BUG_ON() */
-
 struct intel_gt;
 
 bool is_object_gt(struct kobject *kobj);
diff --git a/drivers/gpu/drm/i915/gt/intel_renderstate.h b/drivers/gpu/drm/i915/gt/intel_renderstate.h
index 4da4c5234ef0..5e8c28c7e770 100644
--- a/drivers/gpu/drm/i915/gt/intel_renderstate.h
+++ b/drivers/gpu/drm/i915/gt/intel_renderstate.h
@@ -7,7 +7,7 @@
 #define _INTEL_RENDERSTATE_H_
 
 #include <linux/types.h>
-#include "i915_gem.h"
+
 #include "i915_gem_ww.h"
 
 struct i915_request;
diff --git a/drivers/gpu/drm/i915/gt/intel_ring.h b/drivers/gpu/drm/i915/gt/intel_ring.h
index 1b32dadfb8c3..3504f5346493 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring.h
+++ b/drivers/gpu/drm/i915/gt/intel_ring.h
@@ -6,7 +6,7 @@
 #ifndef INTEL_RING_H
 #define INTEL_RING_H
 
-#include "i915_gem.h" /* GEM_BUG_ON */
+#include "i915_debug.h"
 #include "i915_request.h"
 #include "intel_ring_types.h"
 
diff --git a/drivers/gpu/drm/i915/gt/intel_sseu.h b/drivers/gpu/drm/i915/gt/intel_sseu.h
index aa87d3832d60..0b2e4d6fd4b5 100644
--- a/drivers/gpu/drm/i915/gt/intel_sseu.h
+++ b/drivers/gpu/drm/i915/gt/intel_sseu.h
@@ -9,11 +9,12 @@
 #include <linux/types.h>
 #include <linux/kernel.h>
 
-#include "i915_gem.h"
+#include "i915_utils.h"
 
 struct drm_i915_private;
-struct intel_gt;
 struct drm_printer;
+struct intel_gt;
+struct seq_file;
 
 /*
  * Maximum number of slices on older platforms.  Slices no longer exist
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
index 42cb7a9a6199..2e7e43533e7c 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
@@ -19,6 +19,8 @@
 #include "abi/guc_klvs_abi.h"
 #include "abi/guc_messages_abi.h"
 
+#include "i915_debug.h"
+
 /* Payload length only i.e. don't include G2H header length */
 #define G2H_LEN_DW_SCHED_CONTEXT_MODE_SET	2
 #define G2H_LEN_DW_DEREGISTER_CONTEXT		1
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.h
index 18007e639be9..475e1c95597a 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.h
@@ -11,7 +11,6 @@
 #include <linux/workqueue.h>
 
 #include "intel_guc_fwif.h"
-#include "i915_gem.h"
 
 struct intel_guc;
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h
index 4f169035f504..bc4095837476 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h
@@ -9,7 +9,6 @@
 #include <linux/types.h>
 #include "intel_uc_fw_abi.h"
 #include "intel_device_info.h"
-#include "i915_gem.h"
 #include "i915_vma.h"
 
 struct drm_printer;
diff --git a/drivers/gpu/drm/i915/i915_debug.h b/drivers/gpu/drm/i915/i915_debug.h
new file mode 100644
index 000000000000..6b1867fa4b52
--- /dev/null
+++ b/drivers/gpu/drm/i915/i915_debug.h
@@ -0,0 +1,63 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2022 Intel Corporation
+ */
+
+#ifndef __I915_DEBUG_H__
+#define __I915_DEBUG_H__
+
+#include <linux/bug.h>
+#include <drm/drm_print.h>
+
+#include "i915_utils.h"
+
+#ifdef CONFIG_DRM_I915_DEBUG_GEM
+
+#define GEM_SHOW_DEBUG() drm_debug_enabled(DRM_UT_DRIVER)
+
+#ifdef CONFIG_DRM_I915_DEBUG_GEM_ONCE
+#define __GEM_BUG(cond) BUG()
+#else
+#define __GEM_BUG(cond) \
+	WARN(1, "%s:%d GEM_BUG_ON(%s)\n", __func__, __LINE__, __stringify(cond))
+#endif
+
+#define GEM_BUG_ON(condition) do { if (unlikely((condition))) {	\
+		GEM_TRACE_ERR("%s:%d GEM_BUG_ON(%s)\n", \
+			      __func__, __LINE__, __stringify(condition)); \
+		GEM_TRACE_DUMP(); \
+		__GEM_BUG(condition); \
+		} \
+	} while(0)
+#define GEM_WARN_ON(expr) WARN_ON(expr)
+
+#define GEM_DEBUG_WARN_ON(expr) GEM_WARN_ON(expr)
+
+#else
+
+#define GEM_SHOW_DEBUG() (0)
+
+#define GEM_BUG_ON(expr) BUILD_BUG_ON_INVALID(expr)
+#define GEM_WARN_ON(expr) ({ unlikely(!!(expr)); })
+
+#define GEM_DEBUG_WARN_ON(expr) ({ BUILD_BUG_ON_INVALID(expr); 0; })
+#endif
+
+#if IS_ENABLED(CONFIG_DRM_I915_TRACE_GEM)
+#define GEM_TRACE(...) trace_printk(__VA_ARGS__)
+#define GEM_TRACE_ERR(...) do {						\
+	pr_err(__VA_ARGS__);						\
+	trace_printk(__VA_ARGS__);					\
+} while (0)
+#define GEM_TRACE_DUMP() \
+	do { ftrace_dump(DUMP_ALL); __add_taint_for_CI(TAINT_WARN); } while (0)
+#define GEM_TRACE_DUMP_ON(expr) \
+	do { if (expr) GEM_TRACE_DUMP(); } while (0)
+#else
+#define GEM_TRACE(...) do { } while (0)
+#define GEM_TRACE_ERR(...) do { } while (0)
+#define GEM_TRACE_DUMP() do { } while (0)
+#define GEM_TRACE_DUMP_ON(expr) BUILD_BUG_ON_INVALID(expr)
+#endif
+
+#endif /* __I915_DEBUG_H__ */
diff --git a/drivers/gpu/drm/i915/i915_drm_client.c b/drivers/gpu/drm/i915/i915_drm_client.c
index 18d38cb59923..f2241bf61b5d 100644
--- a/drivers/gpu/drm/i915/i915_drm_client.c
+++ b/drivers/gpu/drm/i915/i915_drm_client.c
@@ -14,7 +14,6 @@
 #include "gem/i915_gem_context.h"
 #include "i915_drm_client.h"
 #include "i915_file_private.h"
-#include "i915_gem.h"
 #include "i915_utils.h"
 
 void i915_drm_clients_init(struct i915_drm_clients *clients,
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index c3854b8a014f..5d4607535f2a 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -62,7 +62,6 @@
 #include "gt/uc/intel_uc.h"
 
 #include "i915_drm_client.h"
-#include "i915_gem.h"
 #include "i915_gpu_error.h"
 #include "i915_params.h"
 #include "i915_perf_types.h"
diff --git a/drivers/gpu/drm/i915/i915_gem.h b/drivers/gpu/drm/i915/i915_gem.h
index 68d8d52bd541..4403221c16a5 100644
--- a/drivers/gpu/drm/i915/i915_gem.h
+++ b/drivers/gpu/drm/i915/i915_gem.h
@@ -25,63 +25,6 @@
 #ifndef __I915_GEM_H__
 #define __I915_GEM_H__
 
-#include <linux/bug.h>
-
-#include <drm/drm_drv.h>
-
-#include "i915_utils.h"
-
-struct drm_i915_private;
-
-#ifdef CONFIG_DRM_I915_DEBUG_GEM
-
-#define GEM_SHOW_DEBUG() drm_debug_enabled(DRM_UT_DRIVER)
-
-#ifdef CONFIG_DRM_I915_DEBUG_GEM_ONCE
-#define __GEM_BUG(cond) BUG()
-#else
-#define __GEM_BUG(cond) \
-	WARN(1, "%s:%d GEM_BUG_ON(%s)\n", __func__, __LINE__, __stringify(cond))
-#endif
-
-#define GEM_BUG_ON(condition) do { if (unlikely((condition))) {	\
-		GEM_TRACE_ERR("%s:%d GEM_BUG_ON(%s)\n", \
-			      __func__, __LINE__, __stringify(condition)); \
-		GEM_TRACE_DUMP(); \
-		__GEM_BUG(condition); \
-		} \
-	} while(0)
-#define GEM_WARN_ON(expr) WARN_ON(expr)
-
-#define GEM_DEBUG_WARN_ON(expr) GEM_WARN_ON(expr)
-
-#else
-
-#define GEM_SHOW_DEBUG() (0)
-
-#define GEM_BUG_ON(expr) BUILD_BUG_ON_INVALID(expr)
-#define GEM_WARN_ON(expr) ({ unlikely(!!(expr)); })
-
-#define GEM_DEBUG_WARN_ON(expr) ({ BUILD_BUG_ON_INVALID(expr); 0; })
-#endif
-
-#if IS_ENABLED(CONFIG_DRM_I915_TRACE_GEM)
-#define GEM_TRACE(...) trace_printk(__VA_ARGS__)
-#define GEM_TRACE_ERR(...) do {						\
-	pr_err(__VA_ARGS__);						\
-	trace_printk(__VA_ARGS__);					\
-} while (0)
-#define GEM_TRACE_DUMP() \
-	do { ftrace_dump(DUMP_ALL); __add_taint_for_CI(TAINT_WARN); } while (0)
-#define GEM_TRACE_DUMP_ON(expr) \
-	do { if (expr) GEM_TRACE_DUMP(); } while (0)
-#else
-#define GEM_TRACE(...) do { } while (0)
-#define GEM_TRACE_ERR(...) do { } while (0)
-#define GEM_TRACE_DUMP() do { } while (0)
-#define GEM_TRACE_DUMP_ON(expr) BUILD_BUG_ON_INVALID(expr)
-#endif
-
 #define I915_GEM_IDLE_TIMEOUT (HZ / 5)
 
 #endif /* __I915_GEM_H__ */
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.h b/drivers/gpu/drm/i915/i915_gpu_error.h
index 55a143b92d10..86ea6df83e72 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.h
+++ b/drivers/gpu/drm/i915/i915_gpu_error.h
@@ -20,7 +20,6 @@
 
 #include "intel_device_info.h"
 
-#include "i915_gem.h"
 #include "i915_gem_gtt.h"
 #include "i915_params.h"
 #include "i915_scheduler.h"
diff --git a/drivers/gpu/drm/i915/i915_ioctl.c b/drivers/gpu/drm/i915/i915_ioctl.c
index 06a10ccea80b..fb7075af3e13 100644
--- a/drivers/gpu/drm/i915/i915_ioctl.c
+++ b/drivers/gpu/drm/i915/i915_ioctl.c
@@ -6,7 +6,6 @@
 #include "gt/intel_engine_regs.h"
 
 #include "i915_drv.h"
-#include "i915_gem.h"
 #include "i915_ioctl.h"
 #include "i915_reg.h"
 #include "intel_runtime_pm.h"
diff --git a/drivers/gpu/drm/i915/i915_request.h b/drivers/gpu/drm/i915/i915_request.h
index 28b1f9db5487..137474003719 100644
--- a/drivers/gpu/drm/i915/i915_request.h
+++ b/drivers/gpu/drm/i915/i915_request.h
@@ -36,7 +36,6 @@
 #include "gt/intel_engine_types.h"
 #include "gt/intel_timeline_types.h"
 
-#include "i915_gem.h"
 #include "i915_scheduler.h"
 #include "i915_selftest.h"
 #include "i915_sw_fence.h"
diff --git a/drivers/gpu/drm/i915/i915_scatterlist.h b/drivers/gpu/drm/i915/i915_scatterlist.h
index 12c6a1684081..6cf7cf8b3d65 100644
--- a/drivers/gpu/drm/i915/i915_scatterlist.h
+++ b/drivers/gpu/drm/i915/i915_scatterlist.h
@@ -11,7 +11,7 @@
 #include <linux/scatterlist.h>
 #include <linux/swiotlb.h>
 
-#include "i915_gem.h"
+#include "i915_debug.h"
 
 struct drm_mm_node;
 struct ttm_resource;
diff --git a/drivers/gpu/drm/i915/i915_syncmap.c b/drivers/gpu/drm/i915/i915_syncmap.c
index 60404dbb2e9f..1e9547e35e4d 100644
--- a/drivers/gpu/drm/i915/i915_syncmap.c
+++ b/drivers/gpu/drm/i915/i915_syncmap.c
@@ -24,10 +24,9 @@
 
 #include <linux/slab.h>
 
-#include "i915_syncmap.h"
-
-#include "i915_gem.h" /* GEM_BUG_ON() */
+#include "i915_debug.h"
 #include "i915_selftest.h"
+#include "i915_syncmap.h"
 
 #define SHIFT ilog2(KSYNCMAP)
 #define MASK (KSYNCMAP - 1)
diff --git a/drivers/gpu/drm/i915/i915_ttm_buddy_manager.c b/drivers/gpu/drm/i915/i915_ttm_buddy_manager.c
index a5109548abc0..5d5a8bab4b0b 100644
--- a/drivers/gpu/drm/i915/i915_ttm_buddy_manager.c
+++ b/drivers/gpu/drm/i915/i915_ttm_buddy_manager.c
@@ -10,10 +10,9 @@
 
 #include <drm/drm_buddy.h>
 
+#include "i915_debug.h"
 #include "i915_ttm_buddy_manager.h"
 
-#include "i915_gem.h"
-
 struct i915_ttm_buddy_manager {
 	struct ttm_resource_manager manager;
 	struct drm_buddy mm;
diff --git a/drivers/gpu/drm/i915/i915_vma_resource.h b/drivers/gpu/drm/i915/i915_vma_resource.h
index 5d8427caa2ba..d249f4047ae0 100644
--- a/drivers/gpu/drm/i915/i915_vma_resource.h
+++ b/drivers/gpu/drm/i915/i915_vma_resource.h
@@ -9,7 +9,6 @@
 #include <linux/dma-fence.h>
 #include <linux/refcount.h>
 
-#include "i915_gem.h"
 #include "i915_scatterlist.h"
 #include "i915_sw_fence.h"
 #include "intel_runtime_pm.h"
-- 
2.30.2

