Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ACF06B52CE4
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Sep 2025 11:18:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4839710EA61;
	Thu, 11 Sep 2025 09:18:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CI/ClLz1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3250610EA61
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Sep 2025 09:18:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757582284; x=1789118284;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ypMgtS4xGxrlRAssPk1JhVchq7HraeosD3paosOsUaY=;
 b=CI/ClLz1d9N20YO8XzAzqoONryuGHS67DrkZEWgHCjHrUUZeAavnpveZ
 uwbGMCbu+LWmy3MSIJKX5gd9hxkWUiJ9ZzxDYtuto1oczXrm7E8vQZnr1
 xG5StYA4QAHpv5y9jonkGQ5bh50n4YMV5LBL82U58Bky3uguXx7cM+yyW
 rsW3+7qasPTpZBTqt+0kiVoJJz5gMsRLbKRLfRnMiCzU33RCiMJycLYCu
 lFC4lsE0cu28JNb1OTV39uNR/ziv6yRZ5Q8VyCN2Arj9i9o4X3mUiNHqc
 D+rmoaZnhXINTugmeDeO0tfmOqgWs00Rd18q90NvultIw10Z91DKtP6/g A==;
X-CSE-ConnectionGUID: RMuonBY9QbmfVZr+vvmgwQ==
X-CSE-MsgGUID: hq5re8bQT9a2kpVfoS2AjQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11549"; a="47480520"
X-IronPort-AV: E=Sophos;i="6.18,256,1751266800"; d="scan'208";a="47480520"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2025 02:18:04 -0700
X-CSE-ConnectionGUID: 74ghQBzHRFWyk8QGeX9vSQ==
X-CSE-MsgGUID: Is3v7qWtSr6TB+HUYjLVBQ==
X-ExtLoop1: 1
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.136])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2025 02:18:02 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [CI 4/4] drm/i915: split out i915_wait_util.h
Date: Thu, 11 Sep 2025 12:17:40 +0300
Message-ID: <431396ac8cdb3e2f4ff053a8933290289a66ce42.1757582214.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1757582214.git.jani.nikula@intel.com>
References: <cover.1757582214.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
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

Move waiting related utilities from i915_utils.h to separate new file
i915_wait_util.h. Clean up related includes.

Note: Many of the various wait macro usages could likely be refactored
to use poll_timeout_us().

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/gt/intel_execlists_submission.c  |   1 +
 drivers/gpu/drm/i915/gt/intel_gt_mcr.c        |   1 +
 drivers/gpu/drm/i915/gt/intel_reset.c         |   7 +-
 .../gpu/drm/i915/gt/intel_ring_submission.c   |   7 +-
 drivers/gpu/drm/i915/gt/intel_rps.c           |   2 +
 drivers/gpu/drm/i915/gt/selftest_tlb.c        |   6 +-
 drivers/gpu/drm/i915/gt/uc/intel_gsc_proxy.c  |   6 +-
 .../i915/gt/uc/intel_gsc_uc_heci_cmd_submit.c |   2 +
 drivers/gpu/drm/i915/gt/uc/intel_guc.c        |   8 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c     |   3 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c     |   4 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c   |  13 +-
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c |  10 +-
 drivers/gpu/drm/i915/gvt/mmio_context.c       |   6 +-
 drivers/gpu/drm/i915/i915_debugfs.c           |   3 +-
 drivers/gpu/drm/i915/i915_utils.h             | 106 ----------------
 drivers/gpu/drm/i915/i915_wait_util.h         | 119 ++++++++++++++++++
 drivers/gpu/drm/i915/intel_pcode.c            |   1 +
 drivers/gpu/drm/i915/intel_uncore.c           |   7 +-
 drivers/gpu/drm/i915/pxp/intel_pxp.c          |   4 +-
 drivers/gpu/drm/i915/selftests/i915_request.c |   5 +-
 .../gpu/drm/i915/selftests/i915_selftest.c    |   2 +-
 drivers/gpu/drm/i915/selftests/igt_spinner.c  |   5 +-
 drivers/gpu/drm/i915/vlv_suspend.c            |   5 +-
 24 files changed, 183 insertions(+), 150 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/i915_wait_util.h

diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index 0c1b2df02d26..7f389cb0bde4 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -117,6 +117,7 @@
 #include "i915_timer_util.h"
 #include "i915_trace.h"
 #include "i915_vgpu.h"
+#include "i915_wait_util.h"
 #include "intel_breadcrumbs.h"
 #include "intel_context.h"
 #include "intel_engine_heartbeat.h"
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
index a60822e2b5d4..c3afa321fe30 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
@@ -4,6 +4,7 @@
  */
 
 #include "i915_drv.h"
+#include "i915_wait_util.h"
 #include "intel_gt.h"
 #include "intel_gt_mcr.h"
 #include "intel_gt_print.h"
diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
index 4a1675dea1c7..41b5036dc538 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.c
+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
@@ -9,18 +9,17 @@
 
 #include "display/intel_display_reset.h"
 #include "display/intel_overlay.h"
-
 #include "gem/i915_gem_context.h"
-
 #include "gt/intel_gt_regs.h"
-
 #include "gt/uc/intel_gsc_fw.h"
+#include "uc/intel_guc.h"
 
 #include "i915_drv.h"
 #include "i915_file_private.h"
 #include "i915_gpu_error.h"
 #include "i915_irq.h"
 #include "i915_reg.h"
+#include "i915_wait_util.h"
 #include "intel_breadcrumbs.h"
 #include "intel_engine_pm.h"
 #include "intel_engine_regs.h"
@@ -32,8 +31,6 @@
 #include "intel_pci_config.h"
 #include "intel_reset.h"
 
-#include "uc/intel_guc.h"
-
 #define RESET_MAX_RETRIES 3
 
 static void client_mark_guilty(struct i915_gem_context *ctx, bool banned)
diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
index 2a6d79abf25b..8314a4b0505e 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
@@ -15,18 +15,19 @@
 #include "i915_irq.h"
 #include "i915_mitigations.h"
 #include "i915_reg.h"
+#include "i915_wait_util.h"
 #include "intel_breadcrumbs.h"
 #include "intel_context.h"
+#include "intel_engine_heartbeat.h"
+#include "intel_engine_pm.h"
 #include "intel_engine_regs.h"
 #include "intel_gt.h"
 #include "intel_gt_irq.h"
+#include "intel_gt_print.h"
 #include "intel_gt_regs.h"
 #include "intel_reset.h"
 #include "intel_ring.h"
 #include "shmem_utils.h"
-#include "intel_engine_heartbeat.h"
-#include "intel_engine_pm.h"
-#include "intel_gt_print.h"
 
 /* Rough estimate of the typical request size, performing a flush,
  * set-context and then emitting the batch.
diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index 006042e0b229..4da94098bd3e 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -10,9 +10,11 @@
 #include "display/intel_display.h"
 #include "display/intel_display_rps.h"
 #include "soc/intel_dram.h"
+
 #include "i915_drv.h"
 #include "i915_irq.h"
 #include "i915_reg.h"
+#include "i915_wait_util.h"
 #include "intel_breadcrumbs.h"
 #include "intel_gt.h"
 #include "intel_gt_clock_utils.h"
diff --git a/drivers/gpu/drm/i915/gt/selftest_tlb.c b/drivers/gpu/drm/i915/gt/selftest_tlb.c
index 69ed946a39e5..a5184f09d1de 100644
--- a/drivers/gpu/drm/i915/gt/selftest_tlb.c
+++ b/drivers/gpu/drm/i915/gt/selftest_tlb.c
@@ -3,17 +3,17 @@
  * Copyright © 2022 Intel Corporation
  */
 
-#include "i915_selftest.h"
-
 #include "gem/i915_gem_internal.h"
 #include "gem/i915_gem_lmem.h"
 #include "gem/i915_gem_region.h"
 
 #include "gen8_engine_cs.h"
 #include "i915_gem_ww.h"
+#include "i915_selftest.h"
+#include "i915_wait_util.h"
+#include "intel_context.h"
 #include "intel_engine_regs.h"
 #include "intel_gpu_commands.h"
-#include "intel_context.h"
 #include "intel_gt.h"
 #include "intel_ring.h"
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_gsc_proxy.c b/drivers/gpu/drm/i915/gt/uc/intel_gsc_proxy.c
index d8edd7c054c8..e7444ebc373e 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_gsc_proxy.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_gsc_proxy.c
@@ -10,11 +10,13 @@
 
 #include "gt/intel_gt.h"
 #include "gt/intel_gt_print.h"
+
+#include "i915_drv.h"
+#include "i915_reg.h"
+#include "i915_wait_util.h"
 #include "intel_gsc_proxy.h"
 #include "intel_gsc_uc.h"
 #include "intel_gsc_uc_heci_cmd_submit.h"
-#include "i915_drv.h"
-#include "i915_reg.h"
 
 /*
  * GSC proxy:
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_heci_cmd_submit.c b/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_heci_cmd_submit.c
index 2fde5c360cff..9bd29be7656f 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_heci_cmd_submit.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_heci_cmd_submit.c
@@ -8,6 +8,8 @@
 #include "gt/intel_gpu_commands.h"
 #include "gt/intel_gt.h"
 #include "gt/intel_ring.h"
+
+#include "i915_wait_util.h"
 #include "intel_gsc_uc_heci_cmd_submit.h"
 
 struct gsc_heci_pkt {
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
index f360f020d8f1..52ec4421a211 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
@@ -8,15 +8,17 @@
 #include "gt/intel_gt_irq.h"
 #include "gt/intel_gt_pm_irq.h"
 #include "gt/intel_gt_regs.h"
+
+#include "i915_drv.h"
+#include "i915_irq.h"
+#include "i915_reg.h"
+#include "i915_wait_util.h"
 #include "intel_guc.h"
 #include "intel_guc_ads.h"
 #include "intel_guc_capture.h"
 #include "intel_guc_print.h"
 #include "intel_guc_slpc.h"
 #include "intel_guc_submission.h"
-#include "i915_drv.h"
-#include "i915_irq.h"
-#include "i915_reg.h"
 
 /**
  * DOC: GuC
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
index 380a11c92d63..3e7e5badcc2b 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
@@ -5,11 +5,12 @@
 
 #include <linux/circ_buf.h>
 #include <linux/ktime.h>
-#include <linux/time64.h>
 #include <linux/string_helpers.h>
+#include <linux/time64.h>
 #include <linux/timekeeping.h>
 
 #include "i915_drv.h"
+#include "i915_wait_util.h"
 #include "intel_guc_ct.h"
 #include "intel_guc_print.h"
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c
index e7ccfa520df3..1bb1491f90fc 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c
@@ -13,9 +13,11 @@
 #include "gt/intel_gt_mcr.h"
 #include "gt/intel_gt_regs.h"
 #include "gt/intel_rps.h"
+
+#include "i915_drv.h"
+#include "i915_wait_util.h"
 #include "intel_guc_fw.h"
 #include "intel_guc_print.h"
-#include "i915_drv.h"
 
 static void guc_prepare_xfer(struct intel_gt *gt)
 {
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
index d5ee6e5e1443..fa9af08f9708 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
@@ -3,17 +3,20 @@
  * Copyright © 2021 Intel Corporation
  */
 
-#include <drm/drm_cache.h>
 #include <linux/string_helpers.h>
 
+#include <drm/drm_cache.h>
+
+#include "gt/intel_gt.h"
+#include "gt/intel_gt_regs.h"
+#include "gt/intel_rps.h"
+
 #include "i915_drv.h"
 #include "i915_reg.h"
-#include "intel_guc_slpc.h"
+#include "i915_wait_util.h"
 #include "intel_guc_print.h"
+#include "intel_guc_slpc.h"
 #include "intel_mchbar_regs.h"
-#include "gt/intel_gt.h"
-#include "gt/intel_gt_regs.h"
-#include "gt/intel_rps.h"
 
 /**
  * DOC: SLPC - Dynamic Frequency management
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 127316d2c8aa..68f2b8d363ac 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -25,16 +25,16 @@
 #include "gt/intel_mocs.h"
 #include "gt/intel_ring.h"
 
+#include "i915_drv.h"
+#include "i915_irq.h"
+#include "i915_reg.h"
+#include "i915_trace.h"
+#include "i915_wait_util.h"
 #include "intel_guc_ads.h"
 #include "intel_guc_capture.h"
 #include "intel_guc_print.h"
 #include "intel_guc_submission.h"
 
-#include "i915_drv.h"
-#include "i915_reg.h"
-#include "i915_irq.h"
-#include "i915_trace.h"
-
 /**
  * DOC: GuC-based command submission
  *
diff --git a/drivers/gpu/drm/i915/gvt/mmio_context.c b/drivers/gpu/drm/i915/gvt/mmio_context.c
index 2f7208843367..0b810baad20a 100644
--- a/drivers/gpu/drm/i915/gvt/mmio_context.c
+++ b/drivers/gpu/drm/i915/gvt/mmio_context.c
@@ -33,14 +33,16 @@
  *
  */
 
-#include "i915_drv.h"
-#include "i915_reg.h"
 #include "gt/intel_context.h"
 #include "gt/intel_engine_regs.h"
 #include "gt/intel_gpu_commands.h"
 #include "gt/intel_gt_regs.h"
 #include "gt/intel_ring.h"
+
 #include "gvt.h"
+#include "i915_drv.h"
+#include "i915_reg.h"
+#include "i915_wait_util.h"
 #include "trace.h"
 
 #define GEN9_MOCS_SIZE		64
diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index 23fa098c4479..c2e38d4bcd01 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -26,11 +26,11 @@
  *
  */
 
+#include <linux/debugfs.h>
 #include <linux/sched/mm.h>
 #include <linux/sort.h>
 #include <linux/string_helpers.h>
 
-#include <linux/debugfs.h>
 #include <drm/drm_debugfs.h>
 
 #include "gem/i915_gem_context.h"
@@ -54,6 +54,7 @@
 #include "i915_irq.h"
 #include "i915_reg.h"
 #include "i915_scheduler.h"
+#include "i915_wait_util.h"
 #include "intel_mchbar_regs.h"
 
 static inline struct drm_i915_private *node_to_i915(struct drm_info_node *node)
diff --git a/drivers/gpu/drm/i915/i915_utils.h b/drivers/gpu/drm/i915/i915_utils.h
index 4a6437d6e00e..a0c892e4c40d 100644
--- a/drivers/gpu/drm/i915/i915_utils.h
+++ b/drivers/gpu/drm/i915/i915_utils.h
@@ -134,112 +134,6 @@ wait_remaining_ms_from_jiffies(unsigned long timestamp_jiffies, int to_wait_ms)
 	}
 }
 
-/*
- * __wait_for - magic wait macro
- *
- * Macro to help avoid open coding check/wait/timeout patterns. Note that it's
- * important that we check the condition again after having timed out, since the
- * timeout could be due to preemption or similar and we've never had a chance to
- * check the condition before the timeout.
- */
-#define __wait_for(OP, COND, US, Wmin, Wmax) ({ \
-	const ktime_t end__ = ktime_add_ns(ktime_get_raw(), 1000ll * (US)); \
-	long wait__ = (Wmin); /* recommended min for usleep is 10 us */	\
-	int ret__;							\
-	might_sleep();							\
-	for (;;) {							\
-		const bool expired__ = ktime_after(ktime_get_raw(), end__); \
-		OP;							\
-		/* Guarantee COND check prior to timeout */		\
-		barrier();						\
-		if (COND) {						\
-			ret__ = 0;					\
-			break;						\
-		}							\
-		if (expired__) {					\
-			ret__ = -ETIMEDOUT;				\
-			break;						\
-		}							\
-		usleep_range(wait__, wait__ * 2);			\
-		if (wait__ < (Wmax))					\
-			wait__ <<= 1;					\
-	}								\
-	ret__;								\
-})
-
-#define _wait_for(COND, US, Wmin, Wmax)	__wait_for(, (COND), (US), (Wmin), \
-						   (Wmax))
-#define wait_for(COND, MS)		_wait_for((COND), (MS) * 1000, 10, 1000)
-
-/*
- * If CONFIG_PREEMPT_COUNT is disabled, in_atomic() always reports false.
- * On PREEMPT_RT the context isn't becoming atomic because it is used in an
- * interrupt handler or because a spinlock_t is acquired. This leads to
- * warnings which don't occur otherwise and therefore the check is disabled.
- */
-#if IS_ENABLED(CONFIG_DRM_I915_DEBUG) && IS_ENABLED(CONFIG_PREEMPT_COUNT) && !defined(CONFIG_PREEMPT_RT)
-# define _WAIT_FOR_ATOMIC_CHECK(ATOMIC) WARN_ON_ONCE((ATOMIC) && !in_atomic())
-#else
-# define _WAIT_FOR_ATOMIC_CHECK(ATOMIC) do { } while (0)
-#endif
-
-#define _wait_for_atomic(COND, US, ATOMIC) \
-({ \
-	int cpu, ret, timeout = (US) * 1000; \
-	u64 base; \
-	_WAIT_FOR_ATOMIC_CHECK(ATOMIC); \
-	if (!(ATOMIC)) { \
-		preempt_disable(); \
-		cpu = smp_processor_id(); \
-	} \
-	base = local_clock(); \
-	for (;;) { \
-		u64 now = local_clock(); \
-		if (!(ATOMIC)) \
-			preempt_enable(); \
-		/* Guarantee COND check prior to timeout */ \
-		barrier(); \
-		if (COND) { \
-			ret = 0; \
-			break; \
-		} \
-		if (now - base >= timeout) { \
-			ret = -ETIMEDOUT; \
-			break; \
-		} \
-		cpu_relax(); \
-		if (!(ATOMIC)) { \
-			preempt_disable(); \
-			if (unlikely(cpu != smp_processor_id())) { \
-				timeout -= now - base; \
-				cpu = smp_processor_id(); \
-				base = local_clock(); \
-			} \
-		} \
-	} \
-	ret; \
-})
-
-#define wait_for_us(COND, US) \
-({ \
-	int ret__; \
-	BUILD_BUG_ON(!__builtin_constant_p(US)); \
-	if ((US) > 10) \
-		ret__ = _wait_for((COND), (US), 10, 10); \
-	else \
-		ret__ = _wait_for_atomic((COND), (US), 0); \
-	ret__; \
-})
-
-#define wait_for_atomic_us(COND, US) \
-({ \
-	BUILD_BUG_ON(!__builtin_constant_p(US)); \
-	BUILD_BUG_ON((US) > 50000); \
-	_wait_for_atomic((COND), (US), 1); \
-})
-
-#define wait_for_atomic(COND, MS) wait_for_atomic_us((COND), (MS) * 1000)
-
 #define KHz(x) (1000 * (x))
 #define MHz(x) KHz(1000 * (x))
 
diff --git a/drivers/gpu/drm/i915/i915_wait_util.h b/drivers/gpu/drm/i915/i915_wait_util.h
new file mode 100644
index 000000000000..7376898e3bf8
--- /dev/null
+++ b/drivers/gpu/drm/i915/i915_wait_util.h
@@ -0,0 +1,119 @@
+/* SPDX-License-Identifier: MIT */
+/* Copyright © 2025 Intel Corporation */
+
+#ifndef __I915_WAIT_UTIL_H__
+#define __I915_WAIT_UTIL_H__
+
+#include <linux/compiler.h>
+#include <linux/delay.h>
+#include <linux/ktime.h>
+#include <linux/sched/clock.h>
+#include <linux/smp.h>
+
+/*
+ * __wait_for - magic wait macro
+ *
+ * Macro to help avoid open coding check/wait/timeout patterns. Note that it's
+ * important that we check the condition again after having timed out, since the
+ * timeout could be due to preemption or similar and we've never had a chance to
+ * check the condition before the timeout.
+ */
+#define __wait_for(OP, COND, US, Wmin, Wmax) ({ \
+	const ktime_t end__ = ktime_add_ns(ktime_get_raw(), 1000ll * (US)); \
+	long wait__ = (Wmin); /* recommended min for usleep is 10 us */	\
+	int ret__;							\
+	might_sleep();							\
+	for (;;) {							\
+		const bool expired__ = ktime_after(ktime_get_raw(), end__); \
+		OP;							\
+		/* Guarantee COND check prior to timeout */		\
+		barrier();						\
+		if (COND) {						\
+			ret__ = 0;					\
+			break;						\
+		}							\
+		if (expired__) {					\
+			ret__ = -ETIMEDOUT;				\
+			break;						\
+		}							\
+		usleep_range(wait__, wait__ * 2);			\
+		if (wait__ < (Wmax))					\
+			wait__ <<= 1;					\
+	}								\
+	ret__;								\
+})
+
+#define _wait_for(COND, US, Wmin, Wmax)	__wait_for(, (COND), (US), (Wmin), \
+						   (Wmax))
+#define wait_for(COND, MS)		_wait_for((COND), (MS) * 1000, 10, 1000)
+
+/*
+ * If CONFIG_PREEMPT_COUNT is disabled, in_atomic() always reports false.
+ * On PREEMPT_RT the context isn't becoming atomic because it is used in an
+ * interrupt handler or because a spinlock_t is acquired. This leads to
+ * warnings which don't occur otherwise and therefore the check is disabled.
+ */
+#if IS_ENABLED(CONFIG_DRM_I915_DEBUG) && IS_ENABLED(CONFIG_PREEMPT_COUNT) && !defined(CONFIG_PREEMPT_RT)
+# define _WAIT_FOR_ATOMIC_CHECK(ATOMIC) WARN_ON_ONCE((ATOMIC) && !in_atomic())
+#else
+# define _WAIT_FOR_ATOMIC_CHECK(ATOMIC) do { } while (0)
+#endif
+
+#define _wait_for_atomic(COND, US, ATOMIC) \
+({ \
+	int cpu, ret, timeout = (US) * 1000; \
+	u64 base; \
+	_WAIT_FOR_ATOMIC_CHECK(ATOMIC); \
+	if (!(ATOMIC)) { \
+		preempt_disable(); \
+		cpu = smp_processor_id(); \
+	} \
+	base = local_clock(); \
+	for (;;) { \
+		u64 now = local_clock(); \
+		if (!(ATOMIC)) \
+			preempt_enable(); \
+		/* Guarantee COND check prior to timeout */ \
+		barrier(); \
+		if (COND) { \
+			ret = 0; \
+			break; \
+		} \
+		if (now - base >= timeout) { \
+			ret = -ETIMEDOUT; \
+			break; \
+		} \
+		cpu_relax(); \
+		if (!(ATOMIC)) { \
+			preempt_disable(); \
+			if (unlikely(cpu != smp_processor_id())) { \
+				timeout -= now - base; \
+				cpu = smp_processor_id(); \
+				base = local_clock(); \
+			} \
+		} \
+	} \
+	ret; \
+})
+
+#define wait_for_us(COND, US) \
+({ \
+	int ret__; \
+	BUILD_BUG_ON(!__builtin_constant_p(US)); \
+	if ((US) > 10) \
+		ret__ = _wait_for((COND), (US), 10, 10); \
+	else \
+		ret__ = _wait_for_atomic((COND), (US), 0); \
+	ret__; \
+})
+
+#define wait_for_atomic_us(COND, US) \
+({ \
+	BUILD_BUG_ON(!__builtin_constant_p(US)); \
+	BUILD_BUG_ON((US) > 50000); \
+	_wait_for_atomic((COND), (US), 1); \
+})
+
+#define wait_for_atomic(COND, MS) wait_for_atomic_us((COND), (MS) * 1000)
+
+#endif /* __I915_WAIT_UTIL_H__ */
diff --git a/drivers/gpu/drm/i915/intel_pcode.c b/drivers/gpu/drm/i915/intel_pcode.c
index 81da75108c60..55ffedad2490 100644
--- a/drivers/gpu/drm/i915/intel_pcode.c
+++ b/drivers/gpu/drm/i915/intel_pcode.c
@@ -5,6 +5,7 @@
 
 #include "i915_drv.h"
 #include "i915_reg.h"
+#include "i915_wait_util.h"
 #include "intel_pcode.h"
 
 static int gen6_check_mailbox_status(u32 mbox)
diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
index 4ccba7c8ffb3..8cb59f8d1f4c 100644
--- a/drivers/gpu/drm/i915/intel_uncore.c
+++ b/drivers/gpu/drm/i915/intel_uncore.c
@@ -21,19 +21,20 @@
  * IN THE SOFTWARE.
  */
 
-#include <drm/drm_managed.h>
 #include <linux/pm_runtime.h>
 
-#include "display/intel_display_core.h"
+#include <drm/drm_managed.h>
 
-#include "gt/intel_gt.h"
+#include "display/intel_display_core.h"
 #include "gt/intel_engine_regs.h"
+#include "gt/intel_gt.h"
 #include "gt/intel_gt_regs.h"
 
 #include "i915_drv.h"
 #include "i915_iosf_mbi.h"
 #include "i915_reg.h"
 #include "i915_vgpu.h"
+#include "i915_wait_util.h"
 #include "intel_uncore_trace.h"
 
 #define FORCEWAKE_ACK_TIMEOUT_MS 50
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
index f8da693ad3ce..27d545c4e6a5 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -2,15 +2,15 @@
 /*
  * Copyright(c) 2020 Intel Corporation.
  */
+
 #include <linux/workqueue.h>
 
 #include "gem/i915_gem_context.h"
-
 #include "gt/intel_context.h"
 #include "gt/intel_gt.h"
 
 #include "i915_drv.h"
-
+#include "i915_wait_util.h"
 #include "intel_pxp.h"
 #include "intel_pxp_gsccs.h"
 #include "intel_pxp_irq.h"
diff --git a/drivers/gpu/drm/i915/selftests/i915_request.c b/drivers/gpu/drm/i915/selftests/i915_request.c
index 2fb7a9e7efec..48cd617247d1 100644
--- a/drivers/gpu/drm/i915/selftests/i915_request.c
+++ b/drivers/gpu/drm/i915/selftests/i915_request.c
@@ -22,14 +22,13 @@
  *
  */
 
-#include <linux/prime_numbers.h>
 #include <linux/pm_qos.h>
+#include <linux/prime_numbers.h>
 #include <linux/sort.h>
 
 #include "gem/i915_gem_internal.h"
 #include "gem/i915_gem_pm.h"
 #include "gem/selftests/mock_context.h"
-
 #include "gt/intel_engine_heartbeat.h"
 #include "gt/intel_engine_pm.h"
 #include "gt/intel_engine_user.h"
@@ -40,11 +39,11 @@
 
 #include "i915_random.h"
 #include "i915_selftest.h"
+#include "i915_wait_util.h"
 #include "igt_flush_test.h"
 #include "igt_live_test.h"
 #include "igt_spinner.h"
 #include "lib_sw_fence.h"
-
 #include "mock_drm.h"
 #include "mock_gem_device.h"
 
diff --git a/drivers/gpu/drm/i915/selftests/i915_selftest.c b/drivers/gpu/drm/i915/selftests/i915_selftest.c
index 889281819c5b..9c276c9d0a75 100644
--- a/drivers/gpu/drm/i915/selftests/i915_selftest.c
+++ b/drivers/gpu/drm/i915/selftests/i915_selftest.c
@@ -31,7 +31,7 @@
 #include "i915_driver.h"
 #include "i915_drv.h"
 #include "i915_selftest.h"
-
+#include "i915_wait_util.h"
 #include "igt_flush_test.h"
 
 struct i915_selftest i915_selftest __read_mostly = {
diff --git a/drivers/gpu/drm/i915/selftests/igt_spinner.c b/drivers/gpu/drm/i915/selftests/igt_spinner.c
index 8c3e1f20e5a1..820364171ebe 100644
--- a/drivers/gpu/drm/i915/selftests/igt_spinner.c
+++ b/drivers/gpu/drm/i915/selftests/igt_spinner.c
@@ -3,12 +3,13 @@
  *
  * Copyright © 2018 Intel Corporation
  */
-#include "gt/intel_gpu_commands.h"
-#include "gt/intel_gt.h"
 
 #include "gem/i915_gem_internal.h"
 #include "gem/selftests/igt_gem_utils.h"
+#include "gt/intel_gpu_commands.h"
+#include "gt/intel_gt.h"
 
+#include "i915_wait_util.h"
 #include "igt_spinner.h"
 
 int igt_spinner_init(struct igt_spinner *spin, struct intel_gt *gt)
diff --git a/drivers/gpu/drm/i915/vlv_suspend.c b/drivers/gpu/drm/i915/vlv_suspend.c
index fc9f311ea1db..221e4c0b2c58 100644
--- a/drivers/gpu/drm/i915/vlv_suspend.c
+++ b/drivers/gpu/drm/i915/vlv_suspend.c
@@ -8,16 +8,17 @@
 
 #include <drm/drm_print.h>
 
+#include "gt/intel_gt_regs.h"
+
 #include "i915_drv.h"
 #include "i915_reg.h"
 #include "i915_trace.h"
 #include "i915_utils.h"
+#include "i915_wait_util.h"
 #include "intel_clock_gating.h"
 #include "intel_uncore_trace.h"
 #include "vlv_suspend.h"
 
-#include "gt/intel_gt_regs.h"
-
 struct vlv_s0ix_state {
 	/* GAM */
 	u32 wr_watermark;
-- 
2.47.3

