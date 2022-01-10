Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 41965489C80
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jan 2022 16:46:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C9CE112860;
	Mon, 10 Jan 2022 15:46:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12CEF112860
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jan 2022 15:46:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641829566; x=1673365566;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XXOLhA8PdKw8zis4tSp9GqiwPgIiu3VMJw8sSXuwWpI=;
 b=H6HtXDY1S4en2pEp/2wrllhc62A+EXZx7x1MbyI583R3ZNJdeZzNQB/0
 OmmZMx5l0FgUMgcKiigvv4FSBvpg4f2KHYcO/3B/Q/Uhl/RzDOulxdvJ5
 h4weUCQ2nmEw37Pgaft0VzpUn58gSu4wCxPHFc5HyIZi6h/XhxfsV9wUJ
 T/ubQfplD5HktSY3a84OYt8JwhS9hK7ovtLrFJ2HHMMI5dRAF0oLr70TD
 AYOLhuTyoZw2Cveq6wo68tC3KkSK5N1pgXSRyCNBSPpvMjscS4VxVr6dB
 zBvv7lJWdU2VZcccLEvNvtVHKusxTFWqR24baD20vOKJI4mFH0OO9OsCQ Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10222"; a="242065242"
X-IronPort-AV: E=Sophos;i="5.88,277,1635231600"; d="scan'208";a="242065242"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2022 07:46:05 -0800
X-IronPort-AV: E=Sophos;i="5.88,277,1635231600"; d="scan'208";a="514712108"
Received: from bdoyle2-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.26.184])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2022 07:45:59 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 10 Jan 2022 17:45:38 +0200
Message-Id: <9942e52dd46542263273ee0471a25417d75b62b0.1641829429.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1641829428.git.jani.nikula@intel.com>
References: <cover.1641829428.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/6] drm/i915: split out i915_gem_internal.h
 from i915_drv.h
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

We already have the i915_gem_internal.c file.

Acked-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c      |  2 ++
 drivers/gpu/drm/i915/display/intel_overlay.c  |  1 +
 drivers/gpu/drm/i915/gem/i915_gem_internal.c  |  1 +
 drivers/gpu/drm/i915/gem/i915_gem_internal.h  | 23 +++++++++++++++++++
 .../gpu/drm/i915/gem/selftests/huge_pages.c   |  3 ++-
 .../drm/i915/gem/selftests/i915_gem_context.c |  1 +
 .../drm/i915/gem/selftests/i915_gem_mman.c    |  4 +++-
 .../drm/i915/gem/selftests/igt_gem_utils.c    |  1 +
 drivers/gpu/drm/i915/gt/gen6_ppgtt.c          |  2 ++
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  1 +
 drivers/gpu/drm/i915/gt/intel_gt.c            |  7 +++---
 .../gpu/drm/i915/gt/intel_gt_buffer_pool.c    |  1 +
 drivers/gpu/drm/i915/gt/intel_gtt.c           |  1 +
 drivers/gpu/drm/i915/gt/intel_renderstate.c   |  2 ++
 drivers/gpu/drm/i915/gt/intel_ring.c          |  1 +
 .../gpu/drm/i915/gt/intel_ring_submission.c   |  2 ++
 drivers/gpu/drm/i915/gt/intel_timeline.c      |  3 ++-
 drivers/gpu/drm/i915/gt/selftest_execlists.c  |  1 +
 drivers/gpu/drm/i915/gt/selftest_hangcheck.c  |  1 +
 drivers/gpu/drm/i915/gt/selftest_lrc.c        |  2 ++
 drivers/gpu/drm/i915/gt/selftest_migrate.c    |  2 ++
 drivers/gpu/drm/i915/gt/selftest_rps.c        |  2 ++
 .../gpu/drm/i915/gt/selftest_workarounds.c    |  1 +
 drivers/gpu/drm/i915/i915_drv.h               |  9 --------
 drivers/gpu/drm/i915/i915_perf.c              |  1 +
 drivers/gpu/drm/i915/selftests/i915_gem.c     |  3 ++-
 .../gpu/drm/i915/selftests/i915_gem_evict.c   |  1 +
 drivers/gpu/drm/i915/selftests/i915_gem_gtt.c |  1 +
 drivers/gpu/drm/i915/selftests/i915_request.c |  1 +
 drivers/gpu/drm/i915/selftests/i915_vma.c     |  1 +
 drivers/gpu/drm/i915/selftests/igt_spinner.c  |  1 +
 31 files changed, 67 insertions(+), 16 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/gem/i915_gem_internal.h

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index 83a69a4a4fea..b34a67309976 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -4,6 +4,8 @@
  *
  */
 
+#include "gem/i915_gem_internal.h"
+
 #include "i915_drv.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/drm/i915/display/intel_overlay.c
index 991624a1351a..def4a90aec8b 100644
--- a/drivers/gpu/drm/i915/display/intel_overlay.c
+++ b/drivers/gpu/drm/i915/display/intel_overlay.c
@@ -28,6 +28,7 @@
 
 #include <drm/drm_fourcc.h>
 
+#include "gem/i915_gem_internal.h"
 #include "gem/i915_gem_pm.h"
 #include "gt/intel_gpu_commands.h"
 #include "gt/intel_ring.h"
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_internal.c b/drivers/gpu/drm/i915/gem/i915_gem_internal.c
index c5150a1ee3d2..c698f95af15f 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_internal.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_internal.c
@@ -10,6 +10,7 @@
 
 #include "i915_drv.h"
 #include "i915_gem.h"
+#include "i915_gem_internal.h"
 #include "i915_gem_object.h"
 #include "i915_scatterlist.h"
 #include "i915_utils.h"
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_internal.h b/drivers/gpu/drm/i915/gem/i915_gem_internal.h
new file mode 100644
index 000000000000..6664e06112fc
--- /dev/null
+++ b/drivers/gpu/drm/i915/gem/i915_gem_internal.h
@@ -0,0 +1,23 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2022 Intel Corporation
+ */
+
+#ifndef __I915_GEM_INTERNAL_H__
+#define __I915_GEM_INTERNAL_H__
+
+#include <linux/types.h>
+
+struct drm_i915_gem_object;
+struct drm_i915_gem_object_ops;
+struct drm_i915_private;
+
+struct drm_i915_gem_object *
+i915_gem_object_create_internal(struct drm_i915_private *i915,
+				phys_addr_t size);
+struct drm_i915_gem_object *
+__i915_gem_object_create_internal(struct drm_i915_private *i915,
+				  const struct drm_i915_gem_object_ops *ops,
+				  phys_addr_t size);
+
+#endif /* __I915_GEM_INTERNAL_H__ */
diff --git a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
index 11f0aa65f8a3..6af237aa1854 100644
--- a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
+++ b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
@@ -8,9 +8,10 @@
 
 #include "i915_selftest.h"
 
-#include "gem/i915_gem_region.h"
+#include "gem/i915_gem_internal.h"
 #include "gem/i915_gem_lmem.h"
 #include "gem/i915_gem_pm.h"
+#include "gem/i915_gem_region.h"
 
 #include "gt/intel_gt.h"
 
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
index 80d99b9c694f..2783c0bedf13 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
@@ -6,6 +6,7 @@
 
 #include <linux/prime_numbers.h>
 
+#include "gem/i915_gem_internal.h"
 #include "gem/i915_gem_pm.h"
 #include "gt/intel_engine_pm.h"
 #include "gt/intel_gt.h"
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
index f61356b72b1c..dc69de3f2b6d 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
@@ -6,11 +6,13 @@
 
 #include <linux/prime_numbers.h>
 
+#include "gem/i915_gem_internal.h"
+#include "gem/i915_gem_region.h"
 #include "gt/intel_engine_pm.h"
 #include "gt/intel_gpu_commands.h"
 #include "gt/intel_gt.h"
 #include "gt/intel_gt_pm.h"
-#include "gem/i915_gem_region.h"
+
 #include "huge_gem_object.h"
 #include "i915_selftest.h"
 #include "selftests/i915_random.h"
diff --git a/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.c b/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.c
index b35c1219c852..3c55e77b0f1b 100644
--- a/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.c
+++ b/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.c
@@ -7,6 +7,7 @@
 #include "igt_gem_utils.h"
 
 #include "gem/i915_gem_context.h"
+#include "gem/i915_gem_internal.h"
 #include "gem/i915_gem_pm.h"
 #include "gt/intel_context.h"
 #include "gt/intel_gpu_commands.h"
diff --git a/drivers/gpu/drm/i915/gt/gen6_ppgtt.c b/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
index 6e9292918bfc..15964c2e8d5c 100644
--- a/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
@@ -5,6 +5,8 @@
 
 #include <linux/log2.h>
 
+#include "gem/i915_gem_internal.h"
+
 #include "gen6_ppgtt.h"
 #include "i915_scatterlist.h"
 #include "i915_trace.h"
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 548d599c09dc..bc21d30f7abb 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -6,6 +6,7 @@
 #include <drm/drm_print.h>
 
 #include "gem/i915_gem_context.h"
+#include "gem/i915_gem_internal.h"
 
 #include "i915_cmd_parser.h"
 #include "i915_drv.h"
diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index 298ff32c8d0c..4596157d8981 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -6,14 +6,16 @@
 #include <drm/drm_managed.h>
 #include <drm/intel-gtt.h>
 
-#include "intel_gt_debugfs.h"
-
+#include "gem/i915_gem_internal.h"
 #include "gem/i915_gem_lmem.h"
+#include "pxp/intel_pxp.h"
+
 #include "i915_drv.h"
 #include "intel_context.h"
 #include "intel_gt.h"
 #include "intel_gt_buffer_pool.h"
 #include "intel_gt_clock_utils.h"
+#include "intel_gt_debugfs.h"
 #include "intel_gt_pm.h"
 #include "intel_gt_requests.h"
 #include "intel_migrate.h"
@@ -24,7 +26,6 @@
 #include "intel_rps.h"
 #include "intel_uncore.h"
 #include "shmem_utils.h"
-#include "pxp/intel_pxp.h"
 
 void __intel_gt_init_early(struct intel_gt *gt, struct drm_i915_private *i915)
 {
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.c b/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.c
index 9db3dcbd917f..cadfd85785b1 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.c
@@ -3,6 +3,7 @@
  * Copyright © 2014-2018 Intel Corporation
  */
 
+#include "gem/i915_gem_internal.h"
 #include "gem/i915_gem_object.h"
 
 #include "i915_drv.h"
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c b/drivers/gpu/drm/i915/gt/intel_gtt.c
index a94be0306464..1eac0254bf6f 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
@@ -10,6 +10,7 @@
 
 #include <drm/drm_cache.h>
 
+#include "gem/i915_gem_internal.h"
 #include "gem/i915_gem_lmem.h"
 #include "i915_trace.h"
 #include "intel_gt.h"
diff --git a/drivers/gpu/drm/i915/gt/intel_renderstate.c b/drivers/gpu/drm/i915/gt/intel_renderstate.c
index b575cd6e0b7a..5121e6dc2fa5 100644
--- a/drivers/gpu/drm/i915/gt/intel_renderstate.c
+++ b/drivers/gpu/drm/i915/gt/intel_renderstate.c
@@ -3,6 +3,8 @@
  * Copyright © 2014 Intel Corporation
  */
 
+#include "gem/i915_gem_internal.h"
+
 #include "i915_drv.h"
 #include "intel_renderstate.h"
 #include "intel_context.h"
diff --git a/drivers/gpu/drm/i915/gt/intel_ring.c b/drivers/gpu/drm/i915/gt/intel_ring.c
index 2fdd52b62092..91c6a1881d18 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring.c
@@ -3,6 +3,7 @@
  * Copyright © 2019 Intel Corporation
  */
 
+#include "gem/i915_gem_internal.h"
 #include "gem/i915_gem_lmem.h"
 #include "gem/i915_gem_object.h"
 
diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
index 3e6fac0340ef..40a008d71795 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
@@ -3,6 +3,8 @@
  * Copyright © 2008-2021 Intel Corporation
  */
 
+#include "gem/i915_gem_internal.h"
+
 #include "gen2_engine_cs.h"
 #include "gen6_engine_cs.h"
 #include "gen6_ppgtt.h"
diff --git a/drivers/gpu/drm/i915/gt/intel_timeline.c b/drivers/gpu/drm/i915/gt/intel_timeline.c
index 438bbc7b8147..2962be6d4d00 100644
--- a/drivers/gpu/drm/i915/gt/intel_timeline.c
+++ b/drivers/gpu/drm/i915/gt/intel_timeline.c
@@ -3,9 +3,10 @@
  * Copyright © 2016-2018 Intel Corporation
  */
 
-#include "i915_drv.h"
+#include "gem/i915_gem_internal.h"
 
 #include "i915_active.h"
+#include "i915_drv.h"
 #include "i915_syncmap.h"
 #include "intel_gt.h"
 #include "intel_ring.h"
diff --git a/drivers/gpu/drm/i915/gt/selftest_execlists.c b/drivers/gpu/drm/i915/gt/selftest_execlists.c
index e10da897e07a..72d5faab8f9a 100644
--- a/drivers/gpu/drm/i915/gt/selftest_execlists.c
+++ b/drivers/gpu/drm/i915/gt/selftest_execlists.c
@@ -5,6 +5,7 @@
 
 #include <linux/prime_numbers.h>
 
+#include "gem/i915_gem_internal.h"
 #include "gem/i915_gem_pm.h"
 #include "gt/intel_engine_heartbeat.h"
 #include "gt/intel_reset.h"
diff --git a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
index 4a20ba63446c..9e9ccb139ba7 100644
--- a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
+++ b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
@@ -6,6 +6,7 @@
 #include <linux/kthread.h>
 
 #include "gem/i915_gem_context.h"
+#include "gem/i915_gem_internal.h"
 
 #include "i915_gem_evict.h"
 #include "intel_gt.h"
diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index 618c905daa19..21c29d315cc0 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -5,6 +5,8 @@
 
 #include <linux/prime_numbers.h>
 
+#include "gem/i915_gem_internal.h"
+
 #include "i915_selftest.h"
 #include "intel_engine_heartbeat.h"
 #include "intel_engine_pm.h"
diff --git a/drivers/gpu/drm/i915/gt/selftest_migrate.c b/drivers/gpu/drm/i915/gt/selftest_migrate.c
index fa4293d2944f..c9c4f391c5cc 100644
--- a/drivers/gpu/drm/i915/gt/selftest_migrate.c
+++ b/drivers/gpu/drm/i915/gt/selftest_migrate.c
@@ -5,6 +5,8 @@
 
 #include <linux/sort.h>
 
+#include "gem/i915_gem_internal.h"
+
 #include "selftests/i915_random.h"
 
 static const unsigned int sizes[] = {
diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i915/gt/selftest_rps.c
index 7ee2513e15f9..a85bda53b767 100644
--- a/drivers/gpu/drm/i915/gt/selftest_rps.c
+++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
@@ -6,6 +6,8 @@
 #include <linux/pm_qos.h>
 #include <linux/sort.h>
 
+#include "gem/i915_gem_internal.h"
+
 #include "intel_engine_heartbeat.h"
 #include "intel_engine_pm.h"
 #include "intel_gpu_commands.h"
diff --git a/drivers/gpu/drm/i915/gt/selftest_workarounds.c b/drivers/gpu/drm/i915/gt/selftest_workarounds.c
index 0287c2573c51..67a9aab801dd 100644
--- a/drivers/gpu/drm/i915/gt/selftest_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/selftest_workarounds.c
@@ -3,6 +3,7 @@
  * Copyright © 2018 Intel Corporation
  */
 
+#include "gem/i915_gem_internal.h"
 #include "gem/i915_gem_pm.h"
 #include "gt/intel_engine_user.h"
 #include "gt/intel_gt.h"
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index e55a50d255a6..bb8d57aafba8 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1682,15 +1682,6 @@ i915_gem_vm_lookup(struct drm_i915_file_private *file_priv, u32 id)
 	return vm;
 }
 
-/* i915_gem_internal.c */
-struct drm_i915_gem_object *
-i915_gem_object_create_internal(struct drm_i915_private *dev_priv,
-				phys_addr_t size);
-struct drm_i915_gem_object *
-__i915_gem_object_create_internal(struct drm_i915_private *dev_priv,
-				  const struct drm_i915_gem_object_ops *ops,
-				  phys_addr_t size);
-
 /* i915_gem_tiling.c */
 static inline bool i915_gem_object_needs_bit17_swizzle(struct drm_i915_gem_object *obj)
 {
diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 298857b69180..81b2d01cde50 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -196,6 +196,7 @@
 #include <linux/uuid.h>
 
 #include "gem/i915_gem_context.h"
+#include "gem/i915_gem_internal.h"
 #include "gt/intel_engine_pm.h"
 #include "gt/intel_engine_user.h"
 #include "gt/intel_execlists_submission.h"
diff --git a/drivers/gpu/drm/i915/selftests/i915_gem.c b/drivers/gpu/drm/i915/selftests/i915_gem.c
index 1628b81d0a35..e5dd82e7e480 100644
--- a/drivers/gpu/drm/i915/selftests/i915_gem.c
+++ b/drivers/gpu/drm/i915/selftests/i915_gem.c
@@ -6,9 +6,10 @@
 
 #include <linux/random.h>
 
+#include "gem/i915_gem_internal.h"
+#include "gem/i915_gem_pm.h"
 #include "gem/selftests/igt_gem_utils.h"
 #include "gem/selftests/mock_context.h"
-#include "gem/i915_gem_pm.h"
 #include "gt/intel_gt.h"
 #include "gt/intel_gt_pm.h"
 
diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_evict.c b/drivers/gpu/drm/i915/selftests/i915_gem_evict.c
index 75b709c26dd3..74a1b2ecf48f 100644
--- a/drivers/gpu/drm/i915/selftests/i915_gem_evict.c
+++ b/drivers/gpu/drm/i915/selftests/i915_gem_evict.c
@@ -22,6 +22,7 @@
  *
  */
 
+#include "gem/i915_gem_internal.h"
 #include "gem/i915_gem_pm.h"
 #include "gem/selftests/igt_gem_utils.h"
 #include "gem/selftests/mock_context.h"
diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
index 357ced0b88e7..49baa18f27aa 100644
--- a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
+++ b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
@@ -26,6 +26,7 @@
 #include <linux/prime_numbers.h>
 
 #include "gem/i915_gem_context.h"
+#include "gem/i915_gem_internal.h"
 #include "gem/selftests/mock_context.h"
 #include "gt/intel_context.h"
 #include "gt/intel_gpu_commands.h"
diff --git a/drivers/gpu/drm/i915/selftests/i915_request.c b/drivers/gpu/drm/i915/selftests/i915_request.c
index 7f66f6d299b2..cae78e301ccb 100644
--- a/drivers/gpu/drm/i915/selftests/i915_request.c
+++ b/drivers/gpu/drm/i915/selftests/i915_request.c
@@ -26,6 +26,7 @@
 #include <linux/pm_qos.h>
 #include <linux/sort.h>
 
+#include "gem/i915_gem_internal.h"
 #include "gem/i915_gem_pm.h"
 #include "gem/selftests/mock_context.h"
 
diff --git a/drivers/gpu/drm/i915/selftests/i915_vma.c b/drivers/gpu/drm/i915/selftests/i915_vma.c
index de37cfa4c65f..753b133ee4c6 100644
--- a/drivers/gpu/drm/i915/selftests/i915_vma.c
+++ b/drivers/gpu/drm/i915/selftests/i915_vma.c
@@ -25,6 +25,7 @@
 #include <linux/prime_numbers.h>
 
 #include "gem/i915_gem_context.h"
+#include "gem/i915_gem_internal.h"
 #include "gem/selftests/mock_context.h"
 
 #include "i915_scatterlist.h"
diff --git a/drivers/gpu/drm/i915/selftests/igt_spinner.c b/drivers/gpu/drm/i915/selftests/igt_spinner.c
index 24d87d0fc747..0c22594ae274 100644
--- a/drivers/gpu/drm/i915/selftests/igt_spinner.c
+++ b/drivers/gpu/drm/i915/selftests/igt_spinner.c
@@ -6,6 +6,7 @@
 #include "gt/intel_gpu_commands.h"
 #include "gt/intel_gt.h"
 
+#include "gem/i915_gem_internal.h"
 #include "gem/selftests/igt_gem_utils.h"
 
 #include "igt_spinner.h"
-- 
2.30.2

