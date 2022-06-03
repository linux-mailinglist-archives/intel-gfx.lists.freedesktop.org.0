Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CFFA253CA66
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jun 2022 15:06:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34343113666;
	Fri,  3 Jun 2022 13:06:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2014113666
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jun 2022 13:06:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654261601; x=1685797601;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Hy3twg5hINi+T2pYICCxGNq9cwSbjb/oostZKYBbBIY=;
 b=H82Y4EKhEr5xOPT5mlNxePpodXm6L8eBVsKhvH47MJ0oiWvjMlA2942t
 kFxDzHo7dfr/Hrrp/GIJSMz8zNuwtpyM4IiDV2yKCpKt56yc8S24RTKew
 V6gMJgh2aQjucRcqCBz5PTmLWZUiSbnCoQZqml0bQFOeEz/eaYiyGREJL
 wnAfff66QaTDpkGzoETW9okzezrP3/lxATs5+AamgAeqz+Tr3D5MFjk30
 ye+DxWeA6HU0t/fcCnJYNE7lEBoaw0BS7DXpeZudde+5RRJJ/e+SVoQhC
 j3MuTT8DOaf3RnyOZYkN86kxuXcoiEHd4rrinOOhFmpT0Iqu+eXMZ0pAj A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10366"; a="362615658"
X-IronPort-AV: E=Sophos;i="5.91,274,1647327600"; d="scan'208";a="362615658"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2022 06:06:21 -0700
X-IronPort-AV: E=Sophos;i="5.91,274,1647327600"; d="scan'208";a="578015461"
Received: from richardf-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.55.27])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2022 06:06:20 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  3 Jun 2022 16:05:57 +0300
Message-Id: <8488036303d01479225564438f0d7b8e711990d2.1654261471.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1654261471.git.jani.nikula@intel.com>
References: <cover.1654261471.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/7] drm/i915/gem: split out the gem stuff from
 i915_drv.h
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

Turn i915_gem.h into a useful header for declaring the functions in
i915_gem.c.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpt.c      |  1 +
 drivers/gpu/drm/i915/display/intel_dsb.c      |  1 +
 drivers/gpu/drm/i915/display/intel_overlay.c  |  1 +
 drivers/gpu/drm/i915/gem/i915_gem_domain.c    |  1 +
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |  1 +
 drivers/gpu/drm/i915/gem/i915_gem_mman.c      |  5 ++-
 drivers/gpu/drm/i915/gem/i915_gem_object.c    |  1 +
 drivers/gpu/drm/i915/gem/i915_gem_phys.c      |  1 +
 drivers/gpu/drm/i915/gem/i915_gem_pm.c        |  1 +
 drivers/gpu/drm/i915/gem/i915_gem_shrinker.c  |  1 +
 drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c  |  1 +
 drivers/gpu/drm/i915/gem/i915_gem_userptr.c   |  1 +
 .../i915/gem/selftests/i915_gem_coherency.c   |  1 +
 .../drm/i915/gem/selftests/i915_gem_context.c |  1 +
 .../drm/i915/gem/selftests/i915_gem_mman.c    |  1 +
 drivers/gpu/drm/i915/gt/intel_ggtt.c          | 10 ++---
 drivers/gpu/drm/i915/gt/selftest_migrate.c    |  2 +
 drivers/gpu/drm/i915/gt/selftest_timeline.c   |  1 +
 drivers/gpu/drm/i915/gvt/scheduler.c          |  1 +
 drivers/gpu/drm/i915/i915_debugfs.c           |  1 +
 drivers/gpu/drm/i915/i915_driver.c            |  3 +-
 drivers/gpu/drm/i915/i915_drv.h               | 38 ----------------
 drivers/gpu/drm/i915/i915_gem.c               |  1 +
 drivers/gpu/drm/i915/i915_gem.h               | 44 +++++++++++++++++++
 drivers/gpu/drm/i915/i915_perf.c              |  1 +
 drivers/gpu/drm/i915/intel_gvt.c              |  1 +
 .../gpu/drm/i915/selftests/i915_gem_evict.c   |  2 +-
 drivers/gpu/drm/i915/selftests/i915_gem_gtt.c |  4 +-
 .../gpu/drm/i915/selftests/i915_selftest.c    |  1 +
 drivers/gpu/drm/i915/selftests/i915_vma.c     |  2 +-
 .../drm/i915/selftests/intel_memory_region.c  |  1 +
 31 files changed, 82 insertions(+), 50 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpt.c b/drivers/gpu/drm/i915/display/intel_dpt.c
index fb0e7e79e0cd..9f374c964549 100644
--- a/drivers/gpu/drm/i915/display/intel_dpt.c
+++ b/drivers/gpu/drm/i915/display/intel_dpt.c
@@ -7,6 +7,7 @@
 #include "gt/gen8_ppgtt.h"
 
 #include "i915_drv.h"
+#include "i915_gem.h"
 #include "intel_display_types.h"
 #include "intel_dpt.h"
 #include "intel_fb.h"
diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index c4affcb216fd..b48fb10efb39 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -7,6 +7,7 @@
 #include "gem/i915_gem_internal.h"
 
 #include "i915_drv.h"
+#include "i915_gem.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
 
diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/drm/i915/display/intel_overlay.c
index ee46561b5ae8..dab4cd42c91b 100644
--- a/drivers/gpu/drm/i915/display/intel_overlay.c
+++ b/drivers/gpu/drm/i915/display/intel_overlay.c
@@ -34,6 +34,7 @@
 #include "gt/intel_ring.h"
 
 #include "i915_drv.h"
+#include "i915_gem.h"
 #include "i915_reg.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_domain.c b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
index 3e5d6057b3ef..68d96fefb91b 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_domain.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
@@ -8,6 +8,7 @@
 #include "gt/intel_gt.h"
 
 #include "i915_drv.h"
+#include "i915_gem.h"
 #include "i915_gem_clflush.h"
 #include "i915_gem_domain.h"
 #include "i915_gem_gtt.h"
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 30fe847c6664..eb7ed00bf9f6 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -27,6 +27,7 @@
 #include "i915_cmd_parser.h"
 #include "i915_drv.h"
 #include "i915_file_private.h"
+#include "i915_gem.h"
 #include "i915_gem_clflush.h"
 #include "i915_gem_context.h"
 #include "i915_gem_evict.h"
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
index 0c5c43852e24..ef36d1f72724 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
@@ -15,15 +15,16 @@
 #include "gt/intel_gt_requests.h"
 
 #include "i915_drv.h"
+#include "i915_gem.h"
 #include "i915_gem_evict.h"
 #include "i915_gem_gtt.h"
 #include "i915_gem_ioctls.h"
-#include "i915_gem_object.h"
 #include "i915_gem_mman.h"
+#include "i915_gem_object.h"
+#include "i915_gem_ttm.h"
 #include "i915_mm.h"
 #include "i915_trace.h"
 #include "i915_user_extensions.h"
-#include "i915_gem_ttm.h"
 #include "i915_vma.h"
 
 static inline bool
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.c b/drivers/gpu/drm/i915/gem/i915_gem_object.c
index 06b1b188ce5a..1a34a8057ab3 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
@@ -32,6 +32,7 @@
 
 #include "i915_drv.h"
 #include "i915_file_private.h"
+#include "i915_gem.h"
 #include "i915_gem_clflush.h"
 #include "i915_gem_context.h"
 #include "i915_gem_dmabuf.h"
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_phys.c b/drivers/gpu/drm/i915/gem/i915_gem_phys.c
index 0d0e46dae559..74d2efe8915c 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_phys.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_phys.c
@@ -12,6 +12,7 @@
 
 #include "gt/intel_gt.h"
 #include "i915_drv.h"
+#include "i915_gem.h"
 #include "i915_gem_object.h"
 #include "i915_gem_region.h"
 #include "i915_gem_tiling.h"
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pm.c b/drivers/gpu/drm/i915/gem/i915_gem_pm.c
index 00359ec9d58b..cd2519a8b373 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_pm.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_pm.c
@@ -12,6 +12,7 @@
 
 #include "i915_driver.h"
 #include "i915_drv.h"
+#include "i915_gem.h"
 
 #if defined(CONFIG_X86)
 #include <asm/smp.h>
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c b/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
index 1030053571a2..f76f7f6e49f1 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
@@ -15,6 +15,7 @@
 
 #include "gt/intel_gt_requests.h"
 
+#include "i915_gem.h"
 #include "i915_trace.h"
 
 static bool swap_available(void)
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
index a10716f4e717..1602b66ab459 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
@@ -7,6 +7,7 @@
 
 #include "i915_deps.h"
 #include "i915_drv.h"
+#include "i915_gem.h"
 #include "intel_memory_region.h"
 #include "intel_region_ttm.h"
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
index 094f06b4ce33..360bbbf1e396 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
@@ -40,6 +40,7 @@
 #include <linux/sched/mm.h>
 
 #include "i915_drv.h"
+#include "i915_gem.h"
 #include "i915_gem_ioctls.h"
 #include "i915_gem_object.h"
 #include "i915_gem_userptr.h"
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_coherency.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_coherency.c
index 13b088cc787e..3433647fc57b 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_coherency.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_coherency.c
@@ -12,6 +12,7 @@
 #include "gt/intel_gt_pm.h"
 #include "gt/intel_ring.h"
 
+#include "i915_gem.h"
 #include "i915_selftest.h"
 #include "selftests/i915_random.h"
 
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
index 93a67422ca3b..2b34befad24b 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
@@ -14,6 +14,7 @@
 #include "gt/intel_gt.h"
 #include "gt/intel_gt_requests.h"
 #include "gt/intel_reset.h"
+#include "i915_gem.h"
 #include "i915_selftest.h"
 
 #include "gem/selftests/igt_gem_utils.h"
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
index 5bc93a1ce3e3..7af8c309afb5 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
@@ -18,6 +18,7 @@
 #include "i915_ttm_buddy_manager.h"
 
 #include "huge_gem_object.h"
+#include "i915_gem.h"
 #include "i915_selftest.h"
 #include "selftests/i915_random.h"
 #include "selftests/igt_flush_test.h"
diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index e6b2eb122ad7..6e8511bde456 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -11,16 +11,16 @@
 
 #include "gem/i915_gem_lmem.h"
 
-#include "intel_gt.h"
-#include "intel_gt_gmch.h"
-#include "intel_gt_regs.h"
+#include "gen8_ppgtt.h"
 #include "i915_drv.h"
+#include "i915_gem.h"
 #include "i915_scatterlist.h"
 #include "i915_utils.h"
 #include "i915_vgpu.h"
-
+#include "intel_gt.h"
+#include "intel_gt_gmch.h"
+#include "intel_gt_regs.h"
 #include "intel_gtt.h"
-#include "gen8_ppgtt.h"
 
 static void i915_ggtt_color_adjust(const struct drm_mm_node *node,
 				   unsigned long color,
diff --git a/drivers/gpu/drm/i915/gt/selftest_migrate.c b/drivers/gpu/drm/i915/gt/selftest_migrate.c
index 2b0c87999949..91a4f4cd37d3 100644
--- a/drivers/gpu/drm/i915/gt/selftest_migrate.c
+++ b/drivers/gpu/drm/i915/gt/selftest_migrate.c
@@ -9,6 +9,8 @@
 
 #include "selftests/i915_random.h"
 
+#include "i915_gem.h"
+
 static const unsigned int sizes[] = {
 	SZ_4K,
 	SZ_64K,
diff --git a/drivers/gpu/drm/i915/gt/selftest_timeline.c b/drivers/gpu/drm/i915/gt/selftest_timeline.c
index 522d0190509c..badcdfd69bc4 100644
--- a/drivers/gpu/drm/i915/gt/selftest_timeline.c
+++ b/drivers/gpu/drm/i915/gt/selftest_timeline.c
@@ -6,6 +6,7 @@
 #include <linux/prime_numbers.h>
 #include <linux/string_helpers.h>
 
+#include "i915_gem.h"
 #include "intel_context.h"
 #include "intel_engine_heartbeat.h"
 #include "intel_engine_pm.h"
diff --git a/drivers/gpu/drm/i915/gvt/scheduler.c b/drivers/gpu/drm/i915/gvt/scheduler.c
index d6fe94cd0fdb..a1f93f45d19e 100644
--- a/drivers/gpu/drm/i915/gvt/scheduler.c
+++ b/drivers/gpu/drm/i915/gvt/scheduler.c
@@ -43,6 +43,7 @@
 #include "gt/intel_ring.h"
 
 #include "i915_drv.h"
+#include "i915_gem.h"
 #include "i915_gem_gtt.h"
 #include "i915_perf_oa_regs.h"
 #include "gvt.h"
diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index 94e5c29d2ee3..25ef6a41f2d2 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -49,6 +49,7 @@
 #include "i915_debugfs.h"
 #include "i915_debugfs_params.h"
 #include "i915_driver.h"
+#include "i915_gem.h"
 #include "i915_irq.h"
 #include "i915_scheduler.h"
 #include "intel_mchbar_regs.h"
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index d26dcca7e654..f154914d4bfc 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -74,11 +74,12 @@
 
 #include "pxp/intel_pxp_pm.h"
 
-#include "i915_file_private.h"
 #include "i915_debugfs.h"
 #include "i915_driver.h"
 #include "i915_drm_client.h"
 #include "i915_drv.h"
+#include "i915_file_private.h"
+#include "i915_gem.h"
 #include "i915_getparam.h"
 #include "i915_ioc32.h"
 #include "i915_ioctl.h"
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index c3b2cbf8bfb7..fa8f208c8939 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1360,44 +1360,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 
 #define HAS_ONE_EU_PER_FUSE_BIT(i915)	(INTEL_INFO(i915)->has_one_eu_per_fuse_bit)
 
-/* i915_gem.c */
-void i915_gem_init_early(struct drm_i915_private *dev_priv);
-void i915_gem_cleanup_early(struct drm_i915_private *dev_priv);
-
-void i915_gem_drain_freed_objects(struct drm_i915_private *i915);
-void i915_gem_drain_workqueue(struct drm_i915_private *i915);
-
-struct i915_vma * __must_check
-i915_gem_object_ggtt_pin_ww(struct drm_i915_gem_object *obj,
-			    struct i915_gem_ww_ctx *ww,
-			    const struct i915_ggtt_view *view,
-			    u64 size, u64 alignment, u64 flags);
-
-struct i915_vma * __must_check
-i915_gem_object_ggtt_pin(struct drm_i915_gem_object *obj,
-			 const struct i915_ggtt_view *view,
-			 u64 size, u64 alignment, u64 flags);
-
-int i915_gem_object_unbind(struct drm_i915_gem_object *obj,
-			   unsigned long flags);
-#define I915_GEM_OBJECT_UNBIND_ACTIVE BIT(0)
-#define I915_GEM_OBJECT_UNBIND_BARRIER BIT(1)
-#define I915_GEM_OBJECT_UNBIND_TEST BIT(2)
-#define I915_GEM_OBJECT_UNBIND_VM_TRYLOCK BIT(3)
-#define I915_GEM_OBJECT_UNBIND_ASYNC BIT(4)
-
-void i915_gem_runtime_suspend(struct drm_i915_private *dev_priv);
-
-int __must_check i915_gem_set_global_seqno(struct drm_device *dev, u32 seqno);
-
-int __must_check i915_gem_init(struct drm_i915_private *dev_priv);
-void i915_gem_driver_register(struct drm_i915_private *i915);
-void i915_gem_driver_unregister(struct drm_i915_private *i915);
-void i915_gem_driver_remove(struct drm_i915_private *dev_priv);
-void i915_gem_driver_release(struct drm_i915_private *dev_priv);
-
-int i915_gem_open(struct drm_i915_private *i915, struct drm_file *file);
-
 /* intel_device_info.c */
 static inline struct intel_device_info *
 mkwrite_device_info(struct drm_i915_private *dev_priv)
diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index 5a6bd2547f04..665282237b45 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -56,6 +56,7 @@
 
 #include "i915_drv.h"
 #include "i915_file_private.h"
+#include "i915_gem.h"
 #include "i915_trace.h"
 #include "i915_vgpu.h"
 #include "intel_pm.h"
diff --git a/drivers/gpu/drm/i915/i915_gem.h b/drivers/gpu/drm/i915/i915_gem.h
index 4403221c16a5..98c5c1572307 100644
--- a/drivers/gpu/drm/i915/i915_gem.h
+++ b/drivers/gpu/drm/i915/i915_gem.h
@@ -25,6 +25,50 @@
 #ifndef __I915_GEM_H__
 #define __I915_GEM_H__
 
+#include <linux/types.h>
+
+struct drm_file;
+struct drm_i915_gem_object;
+struct drm_i915_private;
+struct i915_gem_ww_ctx;
+struct i915_ggtt_view;
+struct i915_vma;
+
 #define I915_GEM_IDLE_TIMEOUT (HZ / 5)
 
+void i915_gem_init_early(struct drm_i915_private *i915);
+void i915_gem_cleanup_early(struct drm_i915_private *i915);
+
+void i915_gem_drain_freed_objects(struct drm_i915_private *i915);
+void i915_gem_drain_workqueue(struct drm_i915_private *i915);
+
+struct i915_vma * __must_check
+i915_gem_object_ggtt_pin_ww(struct drm_i915_gem_object *obj,
+			    struct i915_gem_ww_ctx *ww,
+			    const struct i915_ggtt_view *view,
+			    u64 size, u64 alignment, u64 flags);
+
+struct i915_vma * __must_check
+i915_gem_object_ggtt_pin(struct drm_i915_gem_object *obj,
+			 const struct i915_ggtt_view *view,
+			 u64 size, u64 alignment, u64 flags);
+
+int i915_gem_object_unbind(struct drm_i915_gem_object *obj,
+			   unsigned long flags);
+#define I915_GEM_OBJECT_UNBIND_ACTIVE BIT(0)
+#define I915_GEM_OBJECT_UNBIND_BARRIER BIT(1)
+#define I915_GEM_OBJECT_UNBIND_TEST BIT(2)
+#define I915_GEM_OBJECT_UNBIND_VM_TRYLOCK BIT(3)
+#define I915_GEM_OBJECT_UNBIND_ASYNC BIT(4)
+
+void i915_gem_runtime_suspend(struct drm_i915_private *i915);
+
+int __must_check i915_gem_init(struct drm_i915_private *i915);
+void i915_gem_driver_register(struct drm_i915_private *i915);
+void i915_gem_driver_unregister(struct drm_i915_private *i915);
+void i915_gem_driver_remove(struct drm_i915_private *i915);
+void i915_gem_driver_release(struct drm_i915_private *i915);
+
+int i915_gem_open(struct drm_i915_private *i915, struct drm_file *file);
+
 #endif /* __I915_GEM_H__ */
diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 1577ab6754db..0066557b7ccc 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -211,6 +211,7 @@
 
 #include "i915_drv.h"
 #include "i915_file_private.h"
+#include "i915_gem.h"
 #include "i915_perf.h"
 #include "i915_perf_oa_regs.h"
 
diff --git a/drivers/gpu/drm/i915/intel_gvt.c b/drivers/gpu/drm/i915/intel_gvt.c
index e98b6d69a91a..e4e391bff938 100644
--- a/drivers/gpu/drm/i915/intel_gvt.c
+++ b/drivers/gpu/drm/i915/intel_gvt.c
@@ -22,6 +22,7 @@
  */
 
 #include "i915_drv.h"
+#include "i915_gem.h"
 #include "i915_vgpu.h"
 #include "intel_gvt.h"
 #include "gem/i915_gem_dmabuf.h"
diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_evict.c b/drivers/gpu/drm/i915/selftests/i915_gem_evict.c
index 8c6517d29b8e..bac6bbad311d 100644
--- a/drivers/gpu/drm/i915/selftests/i915_gem_evict.c
+++ b/drivers/gpu/drm/i915/selftests/i915_gem_evict.c
@@ -28,8 +28,8 @@
 #include "gem/selftests/mock_context.h"
 #include "gt/intel_gt.h"
 
+#include "i915_gem.h"
 #include "i915_selftest.h"
-
 #include "igt_flush_test.h"
 #include "lib_sw_fence.h"
 #include "mock_drm.h"
diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
index 8633bec18fa7..ecf343e347ee 100644
--- a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
+++ b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
@@ -33,14 +33,14 @@
 #include "gt/intel_gpu_commands.h"
 #include "gt/intel_gtt.h"
 
+#include "i915_gem.h"
 #include "i915_random.h"
 #include "i915_selftest.h"
 #include "i915_vma_resource.h"
-
+#include "igt_flush_test.h"
 #include "mock_drm.h"
 #include "mock_gem_device.h"
 #include "mock_gtt.h"
-#include "igt_flush_test.h"
 
 static void cleanup_freed_objects(struct drm_i915_private *i915)
 {
diff --git a/drivers/gpu/drm/i915/selftests/i915_selftest.c b/drivers/gpu/drm/i915/selftests/i915_selftest.c
index c4e932368b37..9a8bda364b1b 100644
--- a/drivers/gpu/drm/i915/selftests/i915_selftest.c
+++ b/drivers/gpu/drm/i915/selftests/i915_selftest.c
@@ -26,6 +26,7 @@
 #include "gt/intel_gt_pm.h"
 #include "i915_driver.h"
 #include "i915_drv.h"
+#include "i915_gem.h"
 #include "i915_selftest.h"
 
 #include "igt_flush_test.h"
diff --git a/drivers/gpu/drm/i915/selftests/i915_vma.c b/drivers/gpu/drm/i915/selftests/i915_vma.c
index 6921ba128015..97da5f4b8d9c 100644
--- a/drivers/gpu/drm/i915/selftests/i915_vma.c
+++ b/drivers/gpu/drm/i915/selftests/i915_vma.c
@@ -28,9 +28,9 @@
 #include "gem/i915_gem_internal.h"
 #include "gem/selftests/mock_context.h"
 
+#include "i915_gem.h"
 #include "i915_scatterlist.h"
 #include "i915_selftest.h"
-
 #include "mock_gem_device.h"
 #include "mock_gtt.h"
 
diff --git a/drivers/gpu/drm/i915/selftests/intel_memory_region.c b/drivers/gpu/drm/i915/selftests/intel_memory_region.c
index 73eb53edb8de..2065bf321491 100644
--- a/drivers/gpu/drm/i915/selftests/intel_memory_region.c
+++ b/drivers/gpu/drm/i915/selftests/intel_memory_region.c
@@ -24,6 +24,7 @@
 #include "gt/intel_engine_user.h"
 #include "gt/intel_gt.h"
 #include "gt/intel_migrate.h"
+#include "i915_gem.h"
 #include "i915_memcpy.h"
 #include "i915_ttm_buddy_manager.h"
 #include "selftests/igt_flush_test.h"
-- 
2.30.2

