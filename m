Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F54249EEF6
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jan 2022 00:43:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D373F10E4CE;
	Thu, 27 Jan 2022 23:43:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78C6410E42B
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jan 2022 23:43:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643327022; x=1674863022;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mCpJgrK0LvHmm3sz78ll59X5X15LEAFcuzNR9fJkPok=;
 b=ldkG+ruivY2za/wphw8hqTvMeMB7OEBOLN3gnUDWXFw2zGezU3mBoTFz
 fhZl1G5kghtjyYSTmlc1uRy07KqkXGIYsYua/OY+YilerPvC49/wpcecI
 1MsbdBpvfNs5Up32QS2F3yZo9q0ph9jADlOOqHU8jRr13GiQgrD0mRQQj
 OlVK/u1lac+0ki242ogRG/v2gBhGRMBq/Kw1WFofVnqZK0jPLp2aJvahQ
 ec1IEAJXo/9m4tCAXEqDLuFKeNpthP5eY0ZbmEFykOh0KGAV1mPbtexs4
 0iXatO4V51vINROsE4bOzukWDeL9KHIARtb5zcA+Wcyl5Xq6LS2n7cLJK Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10239"; a="226973778"
X-IronPort-AV: E=Sophos;i="5.88,321,1635231600"; d="scan'208";a="226973778"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2022 15:43:41 -0800
X-IronPort-AV: E=Sophos;i="5.88,321,1635231600"; d="scan'208";a="521448551"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2022 15:43:41 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Jan 2022 15:43:33 -0800
Message-Id: <20220127234334.4016964-6-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220127234334.4016964-1-matthew.d.roper@intel.com>
References: <20220127234334.4016964-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI v3 5/6] drm/i915: Move GT registers to their own
 header file
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
Cc: Jani Nikula <jani.nikula@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is a huge, chaotic mass of registers copied over as-is without any
real cleanup.  We'll come back and organize these better, align on
consistent coding style, remove dead code, etc. in separate patches
later that will be easier to review.

v2:
 - Add missing include in intel_pxp_irq.c
v3:
 - Correct a few indentation errors (Lucas)
 - Minor conflict resolution

Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 .../i915/gem/selftests/i915_gem_client_blt.c  |    3 +-
 drivers/gpu/drm/i915/gt/gen6_ppgtt.c          |    1 +
 drivers/gpu/drm/i915/gt/gen7_renderclear.c    |    1 +
 drivers/gpu/drm/i915/gt/gen8_engine_cs.c      |    3 +-
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |    1 +
 .../drm/i915/gt/intel_execlists_submission.c  |    1 +
 drivers/gpu/drm/i915/gt/intel_ggtt.c          |    1 +
 drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c  |    1 +
 drivers/gpu/drm/i915/gt/intel_gt.c            |    1 +
 .../gpu/drm/i915/gt/intel_gt_clock_utils.c    |    1 +
 drivers/gpu/drm/i915/gt/intel_gt_irq.c        |    2 +-
 drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c |    1 +
 drivers/gpu/drm/i915/gt/intel_gt_pm_irq.c     |    1 +
 drivers/gpu/drm/i915/gt/intel_gt_regs.h       | 1543 ++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_gtt.c           |    1 +
 drivers/gpu/drm/i915/gt/intel_lrc.c           |    1 +
 drivers/gpu/drm/i915/gt/intel_mocs.c          |    2 +-
 drivers/gpu/drm/i915/gt/intel_rc6.c           |    1 +
 drivers/gpu/drm/i915/gt/intel_reset.c         |    2 +
 .../gpu/drm/i915/gt/intel_ring_submission.c   |    1 +
 drivers/gpu/drm/i915/gt/intel_rps.c           |    1 +
 drivers/gpu/drm/i915/gt/intel_sseu.c          |    1 +
 drivers/gpu/drm/i915/gt/intel_sseu_debugfs.c  |    1 +
 drivers/gpu/drm/i915/gt/intel_workarounds.c   |    1 +
 drivers/gpu/drm/i915/gt/uc/intel_guc.c        |    1 +
 drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c    |    1 +
 drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c     |    1 +
 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c   |    1 +
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c |    1 +
 drivers/gpu/drm/i915/gvt/cmd_parser.c         |    1 +
 drivers/gpu/drm/i915/gvt/gtt.c                |    2 +
 drivers/gpu/drm/i915/gvt/handlers.c           |    1 +
 drivers/gpu/drm/i915/gvt/mmio.c               |    2 +
 drivers/gpu/drm/i915/gvt/mmio_context.c       |    1 +
 drivers/gpu/drm/i915/gvt/scheduler.c          |    1 +
 drivers/gpu/drm/i915/i915_cmd_parser.c        |    1 +
 drivers/gpu/drm/i915/i915_debugfs.c           |    1 +
 drivers/gpu/drm/i915/i915_gpu_error.c         |    1 +
 drivers/gpu/drm/i915/i915_irq.c               |    1 +
 drivers/gpu/drm/i915/i915_perf.c              |    1 +
 drivers/gpu/drm/i915/i915_pmu.c               |    1 +
 drivers/gpu/drm/i915/i915_reg.h               | 1545 -----------------
 drivers/gpu/drm/i915/i915_sysfs.c             |    1 +
 drivers/gpu/drm/i915/intel_pm.c               |    1 +
 drivers/gpu/drm/i915/intel_uncore.c           |    1 +
 drivers/gpu/drm/i915/pxp/intel_pxp_irq.c      |    1 +
 drivers/gpu/drm/i915/vlv_suspend.c            |    2 +
 47 files changed, 1594 insertions(+), 1549 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/gt/intel_gt_regs.h

diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
index c8ff8bf0986d..8f28e46e8ee5 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
@@ -7,8 +7,9 @@
 
 #include "gt/intel_context.h"
 #include "gt/intel_engine_user.h"
-#include "gt/intel_gt.h"
 #include "gt/intel_gpu_commands.h"
+#include "gt/intel_gt.h"
+#include "gt/intel_gt_regs.h"
 #include "gem/i915_gem_lmem.h"
 
 #include "selftests/igt_flush_test.h"
diff --git a/drivers/gpu/drm/i915/gt/gen6_ppgtt.c b/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
index 92649dbd2b06..be5b953ba07b 100644
--- a/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
@@ -9,6 +9,7 @@
 #include "i915_scatterlist.h"
 #include "i915_trace.h"
 #include "i915_vgpu.h"
+#include "intel_gt_regs.h"
 #include "intel_engine_regs.h"
 #include "intel_gt.h"
 
diff --git a/drivers/gpu/drm/i915/gt/gen7_renderclear.c b/drivers/gpu/drm/i915/gt/gen7_renderclear.c
index 21f08e53889c..317efb145787 100644
--- a/drivers/gpu/drm/i915/gt/gen7_renderclear.c
+++ b/drivers/gpu/drm/i915/gt/gen7_renderclear.c
@@ -6,6 +6,7 @@
 #include "gen7_renderclear.h"
 #include "i915_drv.h"
 #include "intel_gpu_commands.h"
+#include "intel_gt_regs.h"
 
 #define GT3_INLINE_DATA_DELAYS 0x1E00
 #define batch_advance(Y, CS) GEM_BUG_ON((Y)->end != (CS))
diff --git a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
index e320610dd0b8..1f8cf4f790b2 100644
--- a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
@@ -5,8 +5,9 @@
 
 #include "gen8_engine_cs.h"
 #include "i915_drv.h"
-#include "intel_lrc.h"
 #include "intel_gpu_commands.h"
+#include "intel_gt_regs.h"
+#include "intel_lrc.h"
 #include "intel_ring.h"
 
 int gen8_emit_flush_rcs(struct i915_request *rq, u32 mode)
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 4317ae5e525b..731c78a4acb0 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -6,6 +6,7 @@
 #include <drm/drm_print.h>
 
 #include "gem/i915_gem_context.h"
+#include "gt/intel_gt_regs.h"
 
 #include "i915_cmd_parser.h"
 #include "i915_drv.h"
diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index 960a9aaf4f3a..9bb7c863172f 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -122,6 +122,7 @@
 #include "intel_gt.h"
 #include "intel_gt_irq.h"
 #include "intel_gt_pm.h"
+#include "intel_gt_regs.h"
 #include "intel_gt_requests.h"
 #include "intel_lrc.h"
 #include "intel_lrc_reg.h"
diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index 536b0995b595..8850d4e0f9cc 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -15,6 +15,7 @@
 #include "gem/i915_gem_lmem.h"
 
 #include "intel_gt.h"
+#include "intel_gt_regs.h"
 #include "i915_drv.h"
 #include "i915_scatterlist.h"
 #include "i915_vgpu.h"
diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
index c52d255e8ef3..85d66bd1667f 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
@@ -7,6 +7,7 @@
 #include "i915_scatterlist.h"
 #include "i915_pvinfo.h"
 #include "i915_vgpu.h"
+#include "intel_gt_regs.h"
 
 /**
  * DOC: fence register handling
diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index 3889efb3ffa4..2948a0c1f944 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -16,6 +16,7 @@
 #include "intel_gt_buffer_pool.h"
 #include "intel_gt_clock_utils.h"
 #include "intel_gt_pm.h"
+#include "intel_gt_regs.h"
 #include "intel_gt_requests.h"
 #include "intel_migrate.h"
 #include "intel_mocs.h"
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c b/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c
index 3513d6f90747..c7321c94b956 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c
@@ -6,6 +6,7 @@
 #include "i915_drv.h"
 #include "intel_gt.h"
 #include "intel_gt_clock_utils.h"
+#include "intel_gt_regs.h"
 
 static u32 read_reference_ts_freq(struct intel_uncore *uncore)
 {
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_irq.c b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
index 699a74582d32..983264e10e0a 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_irq.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
@@ -10,7 +10,7 @@
 #include "intel_breadcrumbs.h"
 #include "intel_gt.h"
 #include "intel_gt_irq.h"
-#include "intel_lrc_reg.h"
+#include "intel_gt_regs.h"
 #include "intel_uncore.h"
 #include "intel_rps.h"
 #include "pxp/intel_pxp_irq.h"
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
index 6c5c1d0363bf..47ec4b2043e8 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
@@ -12,6 +12,7 @@
 #include "intel_gt_debugfs.h"
 #include "intel_gt_pm.h"
 #include "intel_gt_pm_debugfs.h"
+#include "intel_gt_regs.h"
 #include "intel_llc.h"
 #include "intel_pcode.h"
 #include "intel_rc6.h"
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm_irq.c b/drivers/gpu/drm/i915/gt/intel_gt_pm_irq.c
index fe51f894b073..11060f5a4c89 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm_irq.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm_irq.c
@@ -8,6 +8,7 @@
 #include "intel_gt.h"
 #include "intel_gt_irq.h"
 #include "intel_gt_pm_irq.h"
+#include "intel_gt_regs.h"
 
 static void write_pm_imr(struct intel_gt *gt)
 {
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
new file mode 100644
index 000000000000..6750f35804b5
--- /dev/null
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -0,0 +1,1543 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2022 Intel Corporation
+ */
+
+#ifndef __INTEL_GT_REGS__
+#define __INTEL_GT_REGS__
+
+#include "i915_reg_defs.h"
+
+#define ILK_GDSR _MMIO(MCHBAR_MIRROR_BASE + 0x2ca4)
+#define  ILK_GRDOM_FULL		(0 << 1)
+#define  ILK_GRDOM_RENDER	(1 << 1)
+#define  ILK_GRDOM_MEDIA	(3 << 1)
+#define  ILK_GRDOM_MASK		(3 << 1)
+#define  ILK_GRDOM_RESET_ENABLE (1 << 0)
+
+#define GEN6_MBCUNIT_SNPCR	_MMIO(0x900c) /* for LLC config */
+#define   GEN6_MBC_SNPCR_SHIFT	21
+#define   GEN6_MBC_SNPCR_MASK	(3 << 21)
+#define   GEN6_MBC_SNPCR_MAX	(0 << 21)
+#define   GEN6_MBC_SNPCR_MED	(1 << 21)
+#define   GEN6_MBC_SNPCR_LOW	(2 << 21)
+#define   GEN6_MBC_SNPCR_MIN	(3 << 21) /* only 1/16th of the cache is shared */
+
+#define VLV_G3DCTL		_MMIO(0x9024)
+#define VLV_GSCKGCTL		_MMIO(0x9028)
+
+#define FBC_LLC_READ_CTRL	_MMIO(0x9044)
+#define   FBC_LLC_FULLY_OPEN	REG_BIT(30)
+
+#define GEN6_MBCTL		_MMIO(0x0907c)
+#define   GEN6_MBCTL_ENABLE_BOOT_FETCH	(1 << 4)
+#define   GEN6_MBCTL_CTX_FETCH_NEEDED	(1 << 3)
+#define   GEN6_MBCTL_BME_UPDATE_ENABLE	(1 << 2)
+#define   GEN6_MBCTL_MAE_UPDATE_ENABLE	(1 << 1)
+#define   GEN6_MBCTL_BOOT_FETCH_MECH	(1 << 0)
+
+#define GEN6_GDRST	_MMIO(0x941c)
+#define  GEN6_GRDOM_FULL		(1 << 0)
+#define  GEN6_GRDOM_RENDER		(1 << 1)
+#define  GEN6_GRDOM_MEDIA		(1 << 2)
+#define  GEN6_GRDOM_BLT			(1 << 3)
+#define  GEN6_GRDOM_VECS		(1 << 4)
+#define  GEN9_GRDOM_GUC			(1 << 5)
+#define  GEN8_GRDOM_MEDIA2		(1 << 7)
+/* GEN11 changed all bit defs except for FULL & RENDER */
+#define  GEN11_GRDOM_FULL		GEN6_GRDOM_FULL
+#define  GEN11_GRDOM_RENDER		GEN6_GRDOM_RENDER
+#define  GEN11_GRDOM_BLT		(1 << 2)
+#define  GEN11_GRDOM_GUC		(1 << 3)
+#define  GEN11_GRDOM_MEDIA		(1 << 5)
+#define  GEN11_GRDOM_MEDIA2		(1 << 6)
+#define  GEN11_GRDOM_MEDIA3		(1 << 7)
+#define  GEN11_GRDOM_MEDIA4		(1 << 8)
+#define  GEN11_GRDOM_MEDIA5		(1 << 9)
+#define  GEN11_GRDOM_MEDIA6		(1 << 10)
+#define  GEN11_GRDOM_MEDIA7		(1 << 11)
+#define  GEN11_GRDOM_MEDIA8		(1 << 12)
+#define  GEN11_GRDOM_VECS		(1 << 13)
+#define  GEN11_GRDOM_VECS2		(1 << 14)
+#define  GEN11_GRDOM_VECS3		(1 << 15)
+#define  GEN11_GRDOM_VECS4		(1 << 16)
+#define  GEN11_GRDOM_SFC0		(1 << 17)
+#define  GEN11_GRDOM_SFC1		(1 << 18)
+#define  GEN11_GRDOM_SFC2		(1 << 19)
+#define  GEN11_GRDOM_SFC3		(1 << 20)
+#define  GEN11_VCS_SFC_RESET_BIT(instance)	(GEN11_GRDOM_SFC0 << ((instance) >> 1))
+#define  GEN11_VECS_SFC_RESET_BIT(instance)	(GEN11_GRDOM_SFC0 << (instance))
+
+#define GEN11_VCS_SFC_FORCED_LOCK(engine)	_MMIO((engine)->mmio_base + 0x88C)
+#define   GEN11_VCS_SFC_FORCED_LOCK_BIT		(1 << 0)
+#define GEN11_VCS_SFC_LOCK_STATUS(engine)	_MMIO((engine)->mmio_base + 0x890)
+#define   GEN11_VCS_SFC_USAGE_BIT		(1 << 0)
+#define   GEN11_VCS_SFC_LOCK_ACK_BIT		(1 << 1)
+
+#define GEN11_VECS_SFC_FORCED_LOCK(engine)	_MMIO((engine)->mmio_base + 0x201C)
+#define   GEN11_VECS_SFC_FORCED_LOCK_BIT	(1 << 0)
+#define GEN11_VECS_SFC_LOCK_ACK(engine)		_MMIO((engine)->mmio_base + 0x2018)
+#define   GEN11_VECS_SFC_LOCK_ACK_BIT		(1 << 0)
+#define GEN11_VECS_SFC_USAGE(engine)		_MMIO((engine)->mmio_base + 0x2014)
+#define   GEN11_VECS_SFC_USAGE_BIT		(1 << 0)
+
+#define GEN12_HCP_SFC_FORCED_LOCK(engine)	_MMIO((engine)->mmio_base + 0x2910)
+#define   GEN12_HCP_SFC_FORCED_LOCK_BIT		REG_BIT(0)
+#define GEN12_HCP_SFC_LOCK_STATUS(engine)	_MMIO((engine)->mmio_base + 0x2914)
+#define   GEN12_HCP_SFC_LOCK_ACK_BIT		REG_BIT(1)
+#define   GEN12_HCP_SFC_USAGE_BIT			REG_BIT(0)
+
+#define GEN12_SFC_DONE(n)		_MMIO(0x1cc000 + (n) * 0x1000)
+
+#define WAIT_FOR_RC6_EXIT		_MMIO(0x20CC)
+/* HSW only */
+#define   HSW_SELECTIVE_READ_ADDRESSING_SHIFT		2
+#define   HSW_SELECTIVE_READ_ADDRESSING_MASK		(0x3 << HSW_SLECTIVE_READ_ADDRESSING_SHIFT)
+#define   HSW_SELECTIVE_WRITE_ADDRESS_SHIFT		4
+#define   HSW_SELECTIVE_WRITE_ADDRESS_MASK		(0x7 << HSW_SELECTIVE_WRITE_ADDRESS_SHIFT)
+/* HSW+ */
+#define   HSW_WAIT_FOR_RC6_EXIT_ENABLE			(1 << 0)
+#define   HSW_RCS_CONTEXT_ENABLE			(1 << 7)
+#define   HSW_RCS_INHIBIT				(1 << 8)
+/* Gen8 */
+#define   GEN8_SELECTIVE_WRITE_ADDRESS_SHIFT		4
+#define   GEN8_SELECTIVE_WRITE_ADDRESS_MASK		(0x3 << GEN8_SELECTIVE_WRITE_ADDRESS_SHIFT)
+#define   GEN8_SELECTIVE_WRITE_ADDRESS_SHIFT		4
+#define   GEN8_SELECTIVE_WRITE_ADDRESS_MASK		(0x3 << GEN8_SELECTIVE_WRITE_ADDRESS_SHIFT)
+#define   GEN8_SELECTIVE_WRITE_ADDRESSING_ENABLE	(1 << 6)
+#define   GEN8_SELECTIVE_READ_SUBSLICE_SELECT_SHIFT	9
+#define   GEN8_SELECTIVE_READ_SUBSLICE_SELECT_MASK	(0x3 << GEN8_SELECTIVE_READ_SUBSLICE_SELECT_SHIFT)
+#define   GEN8_SELECTIVE_READ_SLICE_SELECT_SHIFT	11
+#define   GEN8_SELECTIVE_READ_SLICE_SELECT_MASK		(0x3 << GEN8_SELECTIVE_READ_SLICE_SELECT_SHIFT)
+#define   GEN8_SELECTIVE_READ_ADDRESSING_ENABLE         (1 << 13)
+
+#define GAM_ECOCHK			_MMIO(0x4090)
+#define   BDW_DISABLE_HDC_INVALIDATION	(1 << 25)
+#define   ECOCHK_SNB_BIT		(1 << 10)
+#define   ECOCHK_DIS_TLB		(1 << 8)
+#define   HSW_ECOCHK_ARB_PRIO_SOL	(1 << 6)
+#define   ECOCHK_PPGTT_CACHE64B		(0x3 << 3)
+#define   ECOCHK_PPGTT_CACHE4B		(0x0 << 3)
+#define   ECOCHK_PPGTT_GFDT_IVB		(0x1 << 4)
+#define   ECOCHK_PPGTT_LLC_IVB		(0x1 << 3)
+#define   ECOCHK_PPGTT_UC_HSW		(0x1 << 3)
+#define   ECOCHK_PPGTT_WT_HSW		(0x2 << 3)
+#define   ECOCHK_PPGTT_WB_HSW		(0x3 << 3)
+
+#define GEN8_RC6_CTX_INFO		_MMIO(0x8504)
+
+#define GAC_ECO_BITS			_MMIO(0x14090)
+#define   ECOBITS_SNB_BIT		(1 << 13)
+#define   ECOBITS_PPGTT_CACHE64B	(3 << 8)
+#define   ECOBITS_PPGTT_CACHE4B		(0 << 8)
+
+#define GEN12_GAMCNTRL_CTRL			_MMIO(0xcf54)
+#define   INVALIDATION_BROADCAST_MODE_DIS	REG_BIT(12)
+#define   GLOBAL_INVALIDATION_MODE		REG_BIT(2)
+
+#define GEN12_GAMSTLB_CTRL		_MMIO(0xcf4c)
+#define   CONTROL_BLOCK_CLKGATE_DIS	REG_BIT(12)
+#define   EGRESS_BLOCK_CLKGATE_DIS	REG_BIT(11)
+#define   TAG_BLOCK_CLKGATE_DIS		REG_BIT(7)
+
+#define GEN12_MERT_MOD_CTRL		_MMIO(0xcf28)
+#define RENDER_MOD_CTRL			_MMIO(0xcf2c)
+#define COMP_MOD_CTRL			_MMIO(0xcf30)
+#define VDBX_MOD_CTRL			_MMIO(0xcf34)
+#define VEBX_MOD_CTRL			_MMIO(0xcf38)
+#define   FORCE_MISS_FTLB		REG_BIT(3)
+
+#define GAB_CTL				_MMIO(0x24000)
+#define   GAB_CTL_CONT_AFTER_PAGEFAULT	(1 << 8)
+
+#define HSW_MI_PREDICATE_RESULT_2	_MMIO(0x2214)
+
+/*
+ * Registers used only by the command parser
+ */
+#define BCS_SWCTRL _MMIO(0x22200)
+#define   BCS_SRC_Y REG_BIT(0)
+#define   BCS_DST_Y REG_BIT(1)
+
+#define GPGPU_THREADS_DISPATCHED        _MMIO(0x2290)
+#define GPGPU_THREADS_DISPATCHED_UDW	_MMIO(0x2290 + 4)
+#define HS_INVOCATION_COUNT             _MMIO(0x2300)
+#define HS_INVOCATION_COUNT_UDW		_MMIO(0x2300 + 4)
+#define DS_INVOCATION_COUNT             _MMIO(0x2308)
+#define DS_INVOCATION_COUNT_UDW		_MMIO(0x2308 + 4)
+#define IA_VERTICES_COUNT               _MMIO(0x2310)
+#define IA_VERTICES_COUNT_UDW		_MMIO(0x2310 + 4)
+#define IA_PRIMITIVES_COUNT             _MMIO(0x2318)
+#define IA_PRIMITIVES_COUNT_UDW		_MMIO(0x2318 + 4)
+#define VS_INVOCATION_COUNT             _MMIO(0x2320)
+#define VS_INVOCATION_COUNT_UDW		_MMIO(0x2320 + 4)
+#define GS_INVOCATION_COUNT             _MMIO(0x2328)
+#define GS_INVOCATION_COUNT_UDW		_MMIO(0x2328 + 4)
+#define GS_PRIMITIVES_COUNT             _MMIO(0x2330)
+#define GS_PRIMITIVES_COUNT_UDW		_MMIO(0x2330 + 4)
+#define CL_INVOCATION_COUNT             _MMIO(0x2338)
+#define CL_INVOCATION_COUNT_UDW		_MMIO(0x2338 + 4)
+#define CL_PRIMITIVES_COUNT             _MMIO(0x2340)
+#define CL_PRIMITIVES_COUNT_UDW		_MMIO(0x2340 + 4)
+#define PS_INVOCATION_COUNT             _MMIO(0x2348)
+#define PS_INVOCATION_COUNT_UDW		_MMIO(0x2348 + 4)
+#define PS_DEPTH_COUNT                  _MMIO(0x2350)
+#define PS_DEPTH_COUNT_UDW		_MMIO(0x2350 + 4)
+
+/* There are the 4 64-bit counter registers, one for each stream output */
+#define GEN7_SO_NUM_PRIMS_WRITTEN(n)		_MMIO(0x5200 + (n) * 8)
+#define GEN7_SO_NUM_PRIMS_WRITTEN_UDW(n)	_MMIO(0x5200 + (n) * 8 + 4)
+
+#define GEN7_SO_PRIM_STORAGE_NEEDED(n)		_MMIO(0x5240 + (n) * 8)
+#define GEN7_SO_PRIM_STORAGE_NEEDED_UDW(n)	_MMIO(0x5240 + (n) * 8 + 4)
+
+#define GEN7_3DPRIM_END_OFFSET          _MMIO(0x2420)
+#define GEN7_3DPRIM_START_VERTEX        _MMIO(0x2430)
+#define GEN7_3DPRIM_VERTEX_COUNT        _MMIO(0x2434)
+#define GEN7_3DPRIM_INSTANCE_COUNT      _MMIO(0x2438)
+#define GEN7_3DPRIM_START_INSTANCE      _MMIO(0x243C)
+#define GEN7_3DPRIM_BASE_VERTEX         _MMIO(0x2440)
+
+#define GEN7_GPGPU_DISPATCHDIMX         _MMIO(0x2500)
+#define GEN7_GPGPU_DISPATCHDIMY         _MMIO(0x2504)
+#define GEN7_GPGPU_DISPATCHDIMZ         _MMIO(0x2508)
+
+#define GEN12_SQCM		_MMIO(0x8724)
+#define   EN_32B_ACCESS		REG_BIT(30)
+
+/*
+ * Flexible, Aggregate EU Counter Registers.
+ * Note: these aren't contiguous
+ */
+#define EU_PERF_CNTL0	    _MMIO(0xe458)
+#define EU_PERF_CNTL1	    _MMIO(0xe558)
+#define EU_PERF_CNTL2	    _MMIO(0xe658)
+#define EU_PERF_CNTL3	    _MMIO(0xe758)
+#define EU_PERF_CNTL4	    _MMIO(0xe45c)
+#define EU_PERF_CNTL5	    _MMIO(0xe55c)
+#define EU_PERF_CNTL6	    _MMIO(0xe65c)
+
+#define RT_CTRL			_MMIO(0xe530)
+#define  DIS_NULL_QUERY		REG_BIT(10)
+
+/* RPM unit config (Gen8+) */
+#define RPM_CONFIG0	    _MMIO(0x0D00)
+#define  GEN9_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_SHIFT	3
+#define  GEN9_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_MASK	(1 << GEN9_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_SHIFT)
+#define  GEN9_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_19_2_MHZ	0
+#define  GEN9_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_24_MHZ	1
+#define  GEN11_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_SHIFT	3
+#define  GEN11_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_MASK	(0x7 << GEN11_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_SHIFT)
+#define  GEN11_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_24_MHZ	0
+#define  GEN11_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_19_2_MHZ	1
+#define  GEN11_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_38_4_MHZ	2
+#define  GEN11_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_25_MHZ	3
+#define  GEN10_RPM_CONFIG0_CTC_SHIFT_PARAMETER_SHIFT	1
+#define  GEN10_RPM_CONFIG0_CTC_SHIFT_PARAMETER_MASK	(0x3 << GEN10_RPM_CONFIG0_CTC_SHIFT_PARAMETER_SHIFT)
+
+#define RPM_CONFIG1	    _MMIO(0x0D04)
+#define  GEN10_GT_NOA_ENABLE  (1 << 9)
+
+/* GPM unit config (Gen9+) */
+#define CTC_MODE			_MMIO(0xA26C)
+#define  CTC_SOURCE_PARAMETER_MASK 1
+#define  CTC_SOURCE_CRYSTAL_CLOCK	0
+#define  CTC_SOURCE_DIVIDE_LOGIC	1
+#define  CTC_SHIFT_PARAMETER_SHIFT	1
+#define  CTC_SHIFT_PARAMETER_MASK	(0x3 << CTC_SHIFT_PARAMETER_SHIFT)
+
+/* RCP unit config (Gen8+) */
+#define RCP_CONFIG	    _MMIO(0x0D08)
+
+#define MICRO_BP0_0	    _MMIO(0x9800)
+#define MICRO_BP0_2	    _MMIO(0x9804)
+#define MICRO_BP0_1	    _MMIO(0x9808)
+
+#define MICRO_BP1_0	    _MMIO(0x980C)
+#define MICRO_BP1_2	    _MMIO(0x9810)
+#define MICRO_BP1_1	    _MMIO(0x9814)
+
+#define MICRO_BP2_0	    _MMIO(0x9818)
+#define MICRO_BP2_2	    _MMIO(0x981C)
+#define MICRO_BP2_1	    _MMIO(0x9820)
+
+#define MICRO_BP3_0	    _MMIO(0x9824)
+#define MICRO_BP3_2	    _MMIO(0x9828)
+#define MICRO_BP3_1	    _MMIO(0x982C)
+
+#define MICRO_BP_TRIGGER		_MMIO(0x9830)
+#define MICRO_BP3_COUNT_STATUS01	_MMIO(0x9834)
+#define MICRO_BP3_COUNT_STATUS23	_MMIO(0x9838)
+#define MICRO_BP_FIRED_ARMED		_MMIO(0x983C)
+
+#define GAMTARBMODE		_MMIO(0x04a08)
+#define   ARB_MODE_BWGTLB_DISABLE (1 << 9)
+#define   ARB_MODE_SWIZZLE_BDW	(1 << 1)
+#define RENDER_HWS_PGA_GEN7	_MMIO(0x04080)
+
+#define _RING_FAULT_REG_RCS        0x4094
+#define _RING_FAULT_REG_VCS        0x4194
+#define _RING_FAULT_REG_BCS        0x4294
+#define _RING_FAULT_REG_VECS       0x4394
+#define RING_FAULT_REG(engine)     _MMIO(_PICK((engine)->class, \
+					       _RING_FAULT_REG_RCS, \
+					       _RING_FAULT_REG_VCS, \
+					       _RING_FAULT_REG_VECS, \
+					       _RING_FAULT_REG_BCS))
+#define GEN8_RING_FAULT_REG	_MMIO(0x4094)
+#define GEN12_RING_FAULT_REG	_MMIO(0xcec4)
+#define   GEN8_RING_FAULT_ENGINE_ID(x)	(((x) >> 12) & 0x7)
+#define   RING_FAULT_GTTSEL_MASK (1 << 11)
+#define   RING_FAULT_SRCID(x)	(((x) >> 3) & 0xff)
+#define   RING_FAULT_FAULT_TYPE(x) (((x) >> 1) & 0x3)
+#define   RING_FAULT_VALID	(1 << 0)
+#define DONE_REG		_MMIO(0x40b0)
+#define GEN12_GAM_DONE		_MMIO(0xcf68)
+#define GEN8_PRIVATE_PAT_LO	_MMIO(0x40e0)
+#define GEN8_PRIVATE_PAT_HI	_MMIO(0x40e0 + 4)
+#define GEN10_PAT_INDEX(index)	_MMIO(0x40e0 + (index) * 4)
+#define GEN12_PAT_INDEX(index)	_MMIO(0x4800 + (index) * 4)
+#define BSD_HWS_PGA_GEN7	_MMIO(0x04180)
+#define GEN12_GFX_CCS_AUX_NV	_MMIO(0x4208)
+#define GEN12_VD0_AUX_NV	_MMIO(0x4218)
+#define GEN12_VD1_AUX_NV	_MMIO(0x4228)
+#define GEN12_VD2_AUX_NV	_MMIO(0x4298)
+#define GEN12_VD3_AUX_NV	_MMIO(0x42A8)
+#define GEN12_VE0_AUX_NV	_MMIO(0x4238)
+#define GEN12_VE1_AUX_NV	_MMIO(0x42B8)
+#define   AUX_INV		REG_BIT(0)
+#define BLT_HWS_PGA_GEN7	_MMIO(0x04280)
+#define VEBOX_HWS_PGA_GEN7	_MMIO(0x04380)
+
+#define MISC_STATUS0		_MMIO(0xA500)
+#define MISC_STATUS1		_MMIO(0xA504)
+
+#define GEN7_TLB_RD_ADDR	_MMIO(0x4700)
+
+#define GEN9_GAMT_ECO_REG_RW_IA _MMIO(0x4ab0)
+#define   GAMT_ECO_ENABLE_IN_PLACE_DECOMPRESS	(1 << 18)
+
+#define GEN8_GAMW_ECO_DEV_RW_IA _MMIO(0x4080)
+#define   GAMW_ECO_ENABLE_64K_IPS_FIELD 0xF
+#define   GAMW_ECO_DEV_CTX_RELOAD_DISABLE	(1 << 7)
+
+#define GAMT_CHKN_BIT_REG	_MMIO(0x4ab8)
+#define   GAMT_CHKN_DISABLE_L3_COH_PIPE			(1 << 31)
+#define   GAMT_CHKN_DISABLE_DYNAMIC_CREDIT_SHARING	(1 << 28)
+#define   GAMT_CHKN_DISABLE_I2M_CYCLE_ON_WR_PORT	(1 << 24)
+
+#define IPEIR_I965	_MMIO(0x2064)
+#define IPEHR_I965	_MMIO(0x2068)
+#define GEN7_SC_INSTDONE	_MMIO(0x7100)
+#define GEN12_SC_INSTDONE_EXTRA		_MMIO(0x7104)
+#define GEN12_SC_INSTDONE_EXTRA2	_MMIO(0x7108)
+#define GEN7_SAMPLER_INSTDONE	_MMIO(0xe160)
+#define GEN7_ROW_INSTDONE	_MMIO(0xe164)
+#define XEHPG_INSTDONE_GEOM_SVG		_MMIO(0x666c)
+#define MCFG_MCR_SELECTOR		_MMIO(0xfd0)
+#define SF_MCR_SELECTOR			_MMIO(0xfd8)
+#define GEN8_MCR_SELECTOR		_MMIO(0xfdc)
+#define   GEN8_MCR_SLICE(slice)		(((slice) & 3) << 26)
+#define   GEN8_MCR_SLICE_MASK		GEN8_MCR_SLICE(3)
+#define   GEN8_MCR_SUBSLICE(subslice)	(((subslice) & 3) << 24)
+#define   GEN8_MCR_SUBSLICE_MASK	GEN8_MCR_SUBSLICE(3)
+#define   GEN11_MCR_SLICE(slice)	(((slice) & 0xf) << 27)
+#define   GEN11_MCR_SLICE_MASK		GEN11_MCR_SLICE(0xf)
+#define   GEN11_MCR_SUBSLICE(subslice)	(((subslice) & 0x7) << 24)
+#define   GEN11_MCR_SUBSLICE_MASK	GEN11_MCR_SUBSLICE(0x7)
+/*
+ * On GEN4, only the render ring INSTDONE exists and has a different
+ * layout than the GEN7+ version.
+ * The GEN2 counterpart of this register is GEN2_INSTDONE.
+ */
+#define INSTPS		_MMIO(0x2070) /* 965+ only */
+#define GEN4_INSTDONE1	_MMIO(0x207c) /* 965+ only, aka INSTDONE_2 on SNB */
+#define ACTHD_I965	_MMIO(0x2074)
+#define HWS_PGA		_MMIO(0x2080)
+#define HWS_ADDRESS_MASK	0xfffff000
+#define HWS_START_ADDRESS_SHIFT	4
+#define PWRCTXA		_MMIO(0x2088) /* 965GM+ only */
+#define   PWRCTX_EN	(1 << 0)
+#define GEN2_INSTDONE	_MMIO(0x2090)
+#define NOPID		_MMIO(0x2094)
+#define HWSTAM		_MMIO(0x2098)
+
+#define VDBOX_CGCTL3F18(base)		_MMIO((base) + 0x3f18)
+#define   ALNUNIT_CLKGATE_DIS		REG_BIT(13)
+
+#define ERROR_GEN6	_MMIO(0x40a0)
+
+#define GEN8_FAULT_TLB_DATA0		_MMIO(0x4b10)
+#define GEN8_FAULT_TLB_DATA1		_MMIO(0x4b14)
+#define GEN12_FAULT_TLB_DATA0		_MMIO(0xceb8)
+#define GEN12_FAULT_TLB_DATA1		_MMIO(0xcebc)
+#define   FAULT_VA_HIGH_BITS		(0xf << 0)
+#define   FAULT_GTT_SEL			(1 << 4)
+
+#define GEN12_AUX_ERR_DBG		_MMIO(0x43f4)
+
+/* GM45+ chicken bits -- debug workaround bits that may be required
+ * for various sorts of correct behavior.  The top 16 bits of each are
+ * the enables for writing to the corresponding low bit.
+ */
+#define _3D_CHICKEN	_MMIO(0x2084)
+#define  _3D_CHICKEN_HIZ_PLANE_DISABLE_MSAA_4X_SNB	(1 << 10)
+#define _3D_CHICKEN2	_MMIO(0x208c)
+
+#define FF_SLICE_CHICKEN	_MMIO(0x2088)
+#define  FF_SLICE_CHICKEN_CL_PROVOKING_VERTEX_FIX	(1 << 1)
+
+/* Disables pipelining of read flushes past the SF-WIZ interface.
+ * Required on all Ironlake steppings according to the B-Spec, but the
+ * particular danger of not doing so is not specified.
+ */
+# define _3D_CHICKEN2_WM_READ_PIPELINED			(1 << 14)
+#define _3D_CHICKEN3	_MMIO(0x2090)
+#define  _3D_CHICKEN_SF_PROVOKING_VERTEX_FIX		(1 << 12)
+#define  _3D_CHICKEN_SF_DISABLE_OBJEND_CULL		(1 << 10)
+#define  _3D_CHICKEN3_AA_LINE_QUALITY_FIX_ENABLE	(1 << 5)
+#define  _3D_CHICKEN3_SF_DISABLE_FASTCLIP_CULL		(1 << 5)
+#define  _3D_CHICKEN_SDE_LIMIT_FIFO_POLY_DEPTH(x)	((x) << 1) /* gen8+ */
+#define  _3D_CHICKEN3_SF_DISABLE_PIPELINED_ATTR_FETCH	(1 << 1) /* gen6 */
+
+#define MI_MODE		_MMIO(0x209c)
+# define VS_TIMER_DISPATCH				(1 << 6)
+# define MI_FLUSH_ENABLE				(1 << 12)
+# define TGL_NESTED_BB_EN				(1 << 12)
+# define ASYNC_FLIP_PERF_DISABLE			(1 << 14)
+# define MODE_IDLE					(1 << 9)
+# define STOP_RING					(1 << 8)
+
+#define GEN6_GT_MODE	_MMIO(0x20d0)
+#define GEN7_GT_MODE	_MMIO(0x7008)
+#define   GEN6_WIZ_HASHING(hi, lo)			(((hi) << 9) | ((lo) << 7))
+#define   GEN6_WIZ_HASHING_8x8				GEN6_WIZ_HASHING(0, 0)
+#define   GEN6_WIZ_HASHING_8x4				GEN6_WIZ_HASHING(0, 1)
+#define   GEN6_WIZ_HASHING_16x4				GEN6_WIZ_HASHING(1, 0)
+#define   GEN6_WIZ_HASHING_MASK				GEN6_WIZ_HASHING(1, 1)
+#define   GEN6_TD_FOUR_ROW_DISPATCH_DISABLE		(1 << 5)
+#define   GEN9_IZ_HASHING_MASK(slice)			(0x3 << ((slice) * 2))
+#define   GEN9_IZ_HASHING(slice, val)			((val) << ((slice) * 2))
+
+/* chicken reg for WaConextSwitchWithConcurrentTLBInvalidate */
+#define GEN9_CSFE_CHICKEN1_RCS _MMIO(0x20D4)
+#define   GEN9_PREEMPT_GPGPU_SYNC_SWITCH_DISABLE (1 << 2)
+#define   GEN11_ENABLE_32_PLANE_MODE (1 << 7)
+
+#define SCCGCTL94DC		_MMIO(0x94dc)
+#define   CG3DDISURB		REG_BIT(14)
+
+#define MLTICTXCTL		_MMIO(0xb170)
+#define   TDONRENDER		REG_BIT(2)
+
+#define L3SQCREG1_CCS0		_MMIO(0xb200)
+#define   FLUSHALLNONCOH	REG_BIT(5)
+
+/* WaClearTdlStateAckDirtyBits */
+#define GEN8_STATE_ACK		_MMIO(0x20F0)
+#define GEN9_STATE_ACK_SLICE1	_MMIO(0x20F8)
+#define GEN9_STATE_ACK_SLICE2	_MMIO(0x2100)
+#define   GEN9_STATE_ACK_TDL0 (1 << 12)
+#define   GEN9_STATE_ACK_TDL1 (1 << 13)
+#define   GEN9_STATE_ACK_TDL2 (1 << 14)
+#define   GEN9_STATE_ACK_TDL3 (1 << 15)
+#define   GEN9_SUBSLICE_TDL_ACK_BITS \
+	(GEN9_STATE_ACK_TDL3 | GEN9_STATE_ACK_TDL2 | \
+	 GEN9_STATE_ACK_TDL1 | GEN9_STATE_ACK_TDL0)
+
+#define GFX_MODE	_MMIO(0x2520)
+
+#define CACHE_MODE_0	_MMIO(0x2120) /* 915+ only */
+#define   CM0_PIPELINED_RENDER_FLUSH_DISABLE (1 << 8)
+#define   CM0_IZ_OPT_DISABLE      (1 << 6)
+#define   CM0_ZR_OPT_DISABLE      (1 << 5)
+#define	  CM0_STC_EVICT_DISABLE_LRA_SNB	(1 << 5)
+#define   CM0_DEPTH_EVICT_DISABLE (1 << 4)
+#define   CM0_COLOR_EVICT_DISABLE (1 << 3)
+#define   CM0_DEPTH_WRITE_DISABLE (1 << 1)
+#define   CM0_RC_OP_FLUSH_DISABLE (1 << 0)
+#define GFX_FLSH_CNTL	_MMIO(0x2170) /* 915+ only */
+#define GFX_FLSH_CNTL_GEN6	_MMIO(0x101008)
+#define   GFX_FLSH_CNTL_EN	(1 << 0)
+
+#define CACHE_MODE_0_GEN7	_MMIO(0x7000) /* IVB+ */
+#define RC_OP_FLUSH_ENABLE (1 << 0)
+#define   HIZ_RAW_STALL_OPT_DISABLE (1 << 2)
+#define CACHE_MODE_1		_MMIO(0x7004) /* IVB+ */
+#define   PIXEL_SUBSPAN_COLLECT_OPT_DISABLE	(1 << 6)
+#define   GEN8_4x4_STC_OPTIMIZATION_DISABLE	(1 << 6)
+#define   GEN9_PARTIAL_RESOLVE_IN_VC_DISABLE	(1 << 1)
+
+#define GEN6_RCS_PWR_FSM _MMIO(0x22ac)
+#define GEN9_RCS_FE_FSM2 _MMIO(0x22a4)
+
+#define GEN10_CACHE_MODE_SS			_MMIO(0xe420)
+#define   ENABLE_PREFETCH_INTO_IC		REG_BIT(3)
+#define   FLOAT_BLEND_OPTIMIZATION_ENABLE	REG_BIT(4)
+
+/* Fuse readout registers for GT */
+#define HSW_PAVP_FUSE1			_MMIO(0x911C)
+#define   XEHP_SFC_ENABLE_MASK		REG_GENMASK(27, 24)
+#define   HSW_F1_EU_DIS_MASK		REG_GENMASK(17, 16)
+#define   HSW_F1_EU_DIS_10EUS		0
+#define   HSW_F1_EU_DIS_8EUS		1
+#define   HSW_F1_EU_DIS_6EUS		2
+
+#define CHV_FUSE_GT			_MMIO(VLV_DISPLAY_BASE + 0x2168)
+#define   CHV_FGT_DISABLE_SS0		(1 << 10)
+#define   CHV_FGT_DISABLE_SS1		(1 << 11)
+#define   CHV_FGT_EU_DIS_SS0_R0_SHIFT	16
+#define   CHV_FGT_EU_DIS_SS0_R0_MASK	(0xf << CHV_FGT_EU_DIS_SS0_R0_SHIFT)
+#define   CHV_FGT_EU_DIS_SS0_R1_SHIFT	20
+#define   CHV_FGT_EU_DIS_SS0_R1_MASK	(0xf << CHV_FGT_EU_DIS_SS0_R1_SHIFT)
+#define   CHV_FGT_EU_DIS_SS1_R0_SHIFT	24
+#define   CHV_FGT_EU_DIS_SS1_R0_MASK	(0xf << CHV_FGT_EU_DIS_SS1_R0_SHIFT)
+#define   CHV_FGT_EU_DIS_SS1_R1_SHIFT	28
+#define   CHV_FGT_EU_DIS_SS1_R1_MASK	(0xf << CHV_FGT_EU_DIS_SS1_R1_SHIFT)
+
+#define GEN8_FUSE2			_MMIO(0x9120)
+#define   GEN8_F2_SS_DIS_SHIFT		21
+#define   GEN8_F2_SS_DIS_MASK		(0x7 << GEN8_F2_SS_DIS_SHIFT)
+#define   GEN8_F2_S_ENA_SHIFT		25
+#define   GEN8_F2_S_ENA_MASK		(0x7 << GEN8_F2_S_ENA_SHIFT)
+
+#define   GEN9_F2_SS_DIS_SHIFT		20
+#define   GEN9_F2_SS_DIS_MASK		(0xf << GEN9_F2_SS_DIS_SHIFT)
+
+#define   GEN10_F2_S_ENA_SHIFT		22
+#define   GEN10_F2_S_ENA_MASK		(0x3f << GEN10_F2_S_ENA_SHIFT)
+#define   GEN10_F2_SS_DIS_SHIFT		18
+#define   GEN10_F2_SS_DIS_MASK		(0xf << GEN10_F2_SS_DIS_SHIFT)
+
+#define	GEN10_MIRROR_FUSE3		_MMIO(0x9118)
+#define GEN10_L3BANK_PAIR_COUNT     4
+#define GEN10_L3BANK_MASK   0x0F
+/* on Xe_HP the same fuses indicates mslices instead of L3 banks */
+#define GEN12_MAX_MSLICES 4
+#define GEN12_MEML3_EN_MASK 0x0F
+
+#define GEN8_EU_DISABLE0		_MMIO(0x9134)
+#define   GEN8_EU_DIS0_S0_MASK		0xffffff
+#define   GEN8_EU_DIS0_S1_SHIFT		24
+#define   GEN8_EU_DIS0_S1_MASK		(0xff << GEN8_EU_DIS0_S1_SHIFT)
+
+#define GEN8_EU_DISABLE1		_MMIO(0x9138)
+#define   GEN8_EU_DIS1_S1_MASK		0xffff
+#define   GEN8_EU_DIS1_S2_SHIFT		16
+#define   GEN8_EU_DIS1_S2_MASK		(0xffff << GEN8_EU_DIS1_S2_SHIFT)
+
+#define GEN8_EU_DISABLE2		_MMIO(0x913c)
+#define   GEN8_EU_DIS2_S2_MASK		0xff
+
+#define GEN9_EU_DISABLE(slice)		_MMIO(0x9134 + (slice) * 0x4)
+
+#define GEN10_EU_DISABLE3		_MMIO(0x9140)
+#define   GEN10_EU_DIS_SS_MASK		0xff
+
+#define GEN11_GT_VEBOX_VDBOX_DISABLE	_MMIO(0x9140)
+#define   GEN11_GT_VDBOX_DISABLE_MASK	0xff
+#define   GEN11_GT_VEBOX_DISABLE_SHIFT	16
+#define   GEN11_GT_VEBOX_DISABLE_MASK	(0x0f << GEN11_GT_VEBOX_DISABLE_SHIFT)
+
+#define GEN11_EU_DISABLE _MMIO(0x9134)
+#define GEN11_EU_DIS_MASK 0xFF
+
+#define GEN11_GT_SLICE_ENABLE _MMIO(0x9138)
+#define GEN11_GT_S_ENA_MASK 0xFF
+
+#define GEN11_GT_SUBSLICE_DISABLE _MMIO(0x913C)
+
+#define GEN12_GT_GEOMETRY_DSS_ENABLE _MMIO(0x913C)
+#define GEN12_GT_COMPUTE_DSS_ENABLE _MMIO(0x9144)
+
+#define XEHP_EU_ENABLE			_MMIO(0x9134)
+#define XEHP_EU_ENA_MASK		0xFF
+
+#define CRSTANDVID		_MMIO(0x11100)
+#define PXVFREQ(fstart)		_MMIO(0x11110 + (fstart) * 4)  /* P[0-15]VIDFREQ (0x1114c) (Ironlake) */
+#define   PXVFREQ_PX_MASK	0x7f000000
+#define   PXVFREQ_PX_SHIFT	24
+#define VIDFREQ_BASE		_MMIO(0x11110)
+#define VIDFREQ1		_MMIO(0x11110) /* VIDFREQ1-4 (0x1111c) (Cantiga) */
+#define VIDFREQ2		_MMIO(0x11114)
+#define VIDFREQ3		_MMIO(0x11118)
+#define VIDFREQ4		_MMIO(0x1111c)
+#define   VIDFREQ_P0_MASK	0x1f000000
+#define   VIDFREQ_P0_SHIFT	24
+#define   VIDFREQ_P0_CSCLK_MASK	0x00f00000
+#define   VIDFREQ_P0_CSCLK_SHIFT 20
+#define   VIDFREQ_P0_CRCLK_MASK	0x000f0000
+#define   VIDFREQ_P0_CRCLK_SHIFT 16
+#define   VIDFREQ_P1_MASK	0x00001f00
+#define   VIDFREQ_P1_SHIFT	8
+#define   VIDFREQ_P1_CSCLK_MASK	0x000000f0
+#define   VIDFREQ_P1_CSCLK_SHIFT 4
+#define   VIDFREQ_P1_CRCLK_MASK	0x0000000f
+#define INTTOEXT_BASE_ILK	_MMIO(0x11300)
+#define INTTOEXT_BASE		_MMIO(0x11120) /* INTTOEXT1-8 (0x1113c) */
+#define   INTTOEXT_MAP3_SHIFT	24
+#define   INTTOEXT_MAP3_MASK	(0x1f << INTTOEXT_MAP3_SHIFT)
+#define   INTTOEXT_MAP2_SHIFT	16
+#define   INTTOEXT_MAP2_MASK	(0x1f << INTTOEXT_MAP2_SHIFT)
+#define   INTTOEXT_MAP1_SHIFT	8
+#define   INTTOEXT_MAP1_MASK	(0x1f << INTTOEXT_MAP1_SHIFT)
+#define   INTTOEXT_MAP0_SHIFT	0
+#define   INTTOEXT_MAP0_MASK	(0x1f << INTTOEXT_MAP0_SHIFT)
+#define MEMSWCTL		_MMIO(0x11170) /* Ironlake only */
+#define   MEMCTL_CMD_MASK	0xe000
+#define   MEMCTL_CMD_SHIFT	13
+#define   MEMCTL_CMD_RCLK_OFF	0
+#define   MEMCTL_CMD_RCLK_ON	1
+#define   MEMCTL_CMD_CHFREQ	2
+#define   MEMCTL_CMD_CHVID	3
+#define   MEMCTL_CMD_VMMOFF	4
+#define   MEMCTL_CMD_VMMON	5
+#define   MEMCTL_CMD_STS	(1 << 12) /* write 1 triggers command, clears
+					     when command complete */
+#define   MEMCTL_FREQ_MASK	0x0f00 /* jitter, from 0-15 */
+#define   MEMCTL_FREQ_SHIFT	8
+#define   MEMCTL_SFCAVM		(1 << 7)
+#define   MEMCTL_TGT_VID_MASK	0x007f
+#define MEMIHYST		_MMIO(0x1117c)
+#define MEMINTREN		_MMIO(0x11180) /* 16 bits */
+#define   MEMINT_RSEXIT_EN	(1 << 8)
+#define   MEMINT_CX_SUPR_EN	(1 << 7)
+#define   MEMINT_CONT_BUSY_EN	(1 << 6)
+#define   MEMINT_AVG_BUSY_EN	(1 << 5)
+#define   MEMINT_EVAL_CHG_EN	(1 << 4)
+#define   MEMINT_MON_IDLE_EN	(1 << 3)
+#define   MEMINT_UP_EVAL_EN	(1 << 2)
+#define   MEMINT_DOWN_EVAL_EN	(1 << 1)
+#define   MEMINT_SW_CMD_EN	(1 << 0)
+#define MEMINTRSTR		_MMIO(0x11182) /* 16 bits */
+#define   MEM_RSEXIT_MASK	0xc000
+#define   MEM_RSEXIT_SHIFT	14
+#define   MEM_CONT_BUSY_MASK	0x3000
+#define   MEM_CONT_BUSY_SHIFT	12
+#define   MEM_AVG_BUSY_MASK	0x0c00
+#define   MEM_AVG_BUSY_SHIFT	10
+#define   MEM_EVAL_CHG_MASK	0x0300
+#define   MEM_EVAL_BUSY_SHIFT	8
+#define   MEM_MON_IDLE_MASK	0x00c0
+#define   MEM_MON_IDLE_SHIFT	6
+#define   MEM_UP_EVAL_MASK	0x0030
+#define   MEM_UP_EVAL_SHIFT	4
+#define   MEM_DOWN_EVAL_MASK	0x000c
+#define   MEM_DOWN_EVAL_SHIFT	2
+#define   MEM_SW_CMD_MASK	0x0003
+#define   MEM_INT_STEER_GFX	0
+#define   MEM_INT_STEER_CMR	1
+#define   MEM_INT_STEER_SMI	2
+#define   MEM_INT_STEER_SCI	3
+#define MEMINTRSTS		_MMIO(0x11184)
+#define   MEMINT_RSEXIT		(1 << 7)
+#define   MEMINT_CONT_BUSY	(1 << 6)
+#define   MEMINT_AVG_BUSY	(1 << 5)
+#define   MEMINT_EVAL_CHG	(1 << 4)
+#define   MEMINT_MON_IDLE	(1 << 3)
+#define   MEMINT_UP_EVAL	(1 << 2)
+#define   MEMINT_DOWN_EVAL	(1 << 1)
+#define   MEMINT_SW_CMD		(1 << 0)
+#define MEMMODECTL		_MMIO(0x11190)
+#define   MEMMODE_BOOST_EN	(1 << 31)
+#define   MEMMODE_BOOST_FREQ_MASK 0x0f000000 /* jitter for boost, 0-15 */
+#define   MEMMODE_BOOST_FREQ_SHIFT 24
+#define   MEMMODE_IDLE_MODE_MASK 0x00030000
+#define   MEMMODE_IDLE_MODE_SHIFT 16
+#define   MEMMODE_IDLE_MODE_EVAL 0
+#define   MEMMODE_IDLE_MODE_CONT 1
+#define   MEMMODE_HWIDLE_EN	(1 << 15)
+#define   MEMMODE_SWMODE_EN	(1 << 14)
+#define   MEMMODE_RCLK_GATE	(1 << 13)
+#define   MEMMODE_HW_UPDATE	(1 << 12)
+#define   MEMMODE_FSTART_MASK	0x00000f00 /* starting jitter, 0-15 */
+#define   MEMMODE_FSTART_SHIFT	8
+#define   MEMMODE_FMAX_MASK	0x000000f0 /* max jitter, 0-15 */
+#define   MEMMODE_FMAX_SHIFT	4
+#define   MEMMODE_FMIN_MASK	0x0000000f /* min jitter, 0-15 */
+#define RCBMAXAVG		_MMIO(0x1119c)
+#define MEMSWCTL2		_MMIO(0x1119e) /* Cantiga only */
+#define   SWMEMCMD_RENDER_OFF	(0 << 13)
+#define   SWMEMCMD_RENDER_ON	(1 << 13)
+#define   SWMEMCMD_SWFREQ	(2 << 13)
+#define   SWMEMCMD_TARVID	(3 << 13)
+#define   SWMEMCMD_VRM_OFF	(4 << 13)
+#define   SWMEMCMD_VRM_ON	(5 << 13)
+#define   CMDSTS		(1 << 12)
+#define   SFCAVM		(1 << 11)
+#define   SWFREQ_MASK		0x0380 /* P0-7 */
+#define   SWFREQ_SHIFT		7
+#define   TARVID_MASK		0x001f
+#define MEMSTAT_CTG		_MMIO(0x111a0)
+#define RCBMINAVG		_MMIO(0x111a0)
+#define RCUPEI			_MMIO(0x111b0)
+#define RCDNEI			_MMIO(0x111b4)
+#define RSTDBYCTL		_MMIO(0x111b8)
+#define   RS1EN			(1 << 31)
+#define   RS2EN			(1 << 30)
+#define   RS3EN			(1 << 29)
+#define   D3RS3EN		(1 << 28) /* Display D3 imlies RS3 */
+#define   SWPROMORSX		(1 << 27) /* RSx promotion timers ignored */
+#define   RCWAKERW		(1 << 26) /* Resetwarn from PCH causes wakeup */
+#define   DPRSLPVREN		(1 << 25) /* Fast voltage ramp enable */
+#define   GFXTGHYST		(1 << 24) /* Hysteresis to allow trunk gating */
+#define   RCX_SW_EXIT		(1 << 23) /* Leave RSx and prevent re-entry */
+#define   RSX_STATUS_MASK	(7 << 20)
+#define   RSX_STATUS_ON		(0 << 20)
+#define   RSX_STATUS_RC1	(1 << 20)
+#define   RSX_STATUS_RC1E	(2 << 20)
+#define   RSX_STATUS_RS1	(3 << 20)
+#define   RSX_STATUS_RS2	(4 << 20) /* aka rc6 */
+#define   RSX_STATUS_RSVD	(5 << 20) /* deep rc6 unsupported on ilk */
+#define   RSX_STATUS_RS3	(6 << 20) /* rs3 unsupported on ilk */
+#define   RSX_STATUS_RSVD2	(7 << 20)
+#define   UWRCRSXE		(1 << 19) /* wake counter limit prevents rsx */
+#define   RSCRP			(1 << 18) /* rs requests control on rs1/2 reqs */
+#define   JRSC			(1 << 17) /* rsx coupled to cpu c-state */
+#define   RS2INC0		(1 << 16) /* allow rs2 in cpu c0 */
+#define   RS1CONTSAV_MASK	(3 << 14)
+#define   RS1CONTSAV_NO_RS1	(0 << 14) /* rs1 doesn't save/restore context */
+#define   RS1CONTSAV_RSVD	(1 << 14)
+#define   RS1CONTSAV_SAVE_RS1	(2 << 14) /* rs1 saves context */
+#define   RS1CONTSAV_FULL_RS1	(3 << 14) /* rs1 saves and restores context */
+#define   NORMSLEXLAT_MASK	(3 << 12)
+#define   SLOW_RS123		(0 << 12)
+#define   SLOW_RS23		(1 << 12)
+#define   SLOW_RS3		(2 << 12)
+#define   NORMAL_RS123		(3 << 12)
+#define   RCMODE_TIMEOUT	(1 << 11) /* 0 is eval interval method */
+#define   IMPROMOEN		(1 << 10) /* promo is immediate or delayed until next idle interval (only for timeout method above) */
+#define   RCENTSYNC		(1 << 9) /* rs coupled to cpu c-state (3/6/7) */
+#define   STATELOCK		(1 << 7) /* locked to rs_cstate if 0 */
+#define   RS_CSTATE_MASK	(3 << 4)
+#define   RS_CSTATE_C367_RS1	(0 << 4)
+#define   RS_CSTATE_C36_RS1_C7_RS2 (1 << 4)
+#define   RS_CSTATE_RSVD	(2 << 4)
+#define   RS_CSTATE_C367_RS2	(3 << 4)
+#define   REDSAVES		(1 << 3) /* no context save if was idle during rs0 */
+#define   REDRESTORES		(1 << 2) /* no restore if was idle during rs0 */
+#define VIDCTL			_MMIO(0x111c0)
+#define VIDSTS			_MMIO(0x111c8)
+#define VIDSTART		_MMIO(0x111cc) /* 8 bits */
+#define MEMSTAT_ILK		_MMIO(0x111f8)
+#define   MEMSTAT_VID_MASK	0x7f00
+#define   MEMSTAT_VID_SHIFT	8
+#define   MEMSTAT_PSTATE_MASK	0x00f8
+#define   MEMSTAT_PSTATE_SHIFT  3
+#define   MEMSTAT_MON_ACTV	(1 << 2)
+#define   MEMSTAT_SRC_CTL_MASK	0x0003
+#define   MEMSTAT_SRC_CTL_CORE	0
+#define   MEMSTAT_SRC_CTL_TRB	1
+#define   MEMSTAT_SRC_CTL_THM	2
+#define   MEMSTAT_SRC_CTL_STDBY 3
+#define RCPREVBSYTUPAVG		_MMIO(0x113b8)
+#define RCPREVBSYTDNAVG		_MMIO(0x113bc)
+#define PMMISC			_MMIO(0x11214)
+#define   MCPPCE_EN		(1 << 0) /* enable PM_MSG from PCH->MPC */
+#define SDEW			_MMIO(0x1124c)
+#define CSIEW0			_MMIO(0x11250)
+#define CSIEW1			_MMIO(0x11254)
+#define CSIEW2			_MMIO(0x11258)
+#define PEW(i)			_MMIO(0x1125c + (i) * 4) /* 5 registers */
+#define DEW(i)			_MMIO(0x11270 + (i) * 4) /* 3 registers */
+#define MCHAFE			_MMIO(0x112c0)
+#define CSIEC			_MMIO(0x112e0)
+#define DMIEC			_MMIO(0x112e4)
+#define DDREC			_MMIO(0x112e8)
+#define PEG0EC			_MMIO(0x112ec)
+#define PEG1EC			_MMIO(0x112f0)
+#define GFXEC			_MMIO(0x112f4)
+#define RPPREVBSYTUPAVG		_MMIO(0x113b8)
+#define RPPREVBSYTDNAVG		_MMIO(0x113bc)
+#define ECR			_MMIO(0x11600)
+#define   ECR_GPFE		(1 << 31)
+#define   ECR_IMONE		(1 << 30)
+#define   ECR_CAP_MASK		0x0000001f /* Event range, 0-31 */
+#define OGW0			_MMIO(0x11608)
+#define OGW1			_MMIO(0x1160c)
+#define EG0			_MMIO(0x11610)
+#define EG1			_MMIO(0x11614)
+#define EG2			_MMIO(0x11618)
+#define EG3			_MMIO(0x1161c)
+#define EG4			_MMIO(0x11620)
+#define EG5			_MMIO(0x11624)
+#define EG6			_MMIO(0x11628)
+#define EG7			_MMIO(0x1162c)
+#define PXW(i)			_MMIO(0x11664 + (i) * 4) /* 4 registers */
+#define PXWL(i)			_MMIO(0x11680 + (i) * 8) /* 8 registers */
+#define LCFUSE02		_MMIO(0x116c0)
+#define   LCFUSE_HIV_MASK	0x000000ff
+
+#define GEN6_GT_THREAD_STATUS_REG _MMIO(0x13805c)
+#define GEN6_GT_THREAD_STATUS_CORE_MASK 0x7
+
+/*
+ * Logical Context regs
+ */
+/*
+ * Notes on SNB/IVB/VLV context size:
+ * - Power context is saved elsewhere (LLC or stolen)
+ * - Ring/execlist context is saved on SNB, not on IVB
+ * - Extended context size already includes render context size
+ * - We always need to follow the extended context size.
+ *   SNB BSpec has comments indicating that we should use the
+ *   render context size instead if execlists are disabled, but
+ *   based on empirical testing that's just nonsense.
+ * - Pipelined/VF state is saved on SNB/IVB respectively
+ * - GT1 size just indicates how much of render context
+ *   doesn't need saving on GT1
+ */
+#define CXT_SIZE		_MMIO(0x21a0)
+#define GEN6_CXT_POWER_SIZE(cxt_reg)	(((cxt_reg) >> 24) & 0x3f)
+#define GEN6_CXT_RING_SIZE(cxt_reg)	(((cxt_reg) >> 18) & 0x3f)
+#define GEN6_CXT_RENDER_SIZE(cxt_reg)	(((cxt_reg) >> 12) & 0x3f)
+#define GEN6_CXT_EXTENDED_SIZE(cxt_reg)	(((cxt_reg) >> 6) & 0x3f)
+#define GEN6_CXT_PIPELINE_SIZE(cxt_reg)	(((cxt_reg) >> 0) & 0x3f)
+#define GEN6_CXT_TOTAL_SIZE(cxt_reg)	(GEN6_CXT_RING_SIZE(cxt_reg) + \
+					GEN6_CXT_EXTENDED_SIZE(cxt_reg) + \
+					GEN6_CXT_PIPELINE_SIZE(cxt_reg))
+#define GEN7_CXT_SIZE		_MMIO(0x21a8)
+#define GEN7_CXT_POWER_SIZE(ctx_reg)	(((ctx_reg) >> 25) & 0x7f)
+#define GEN7_CXT_RING_SIZE(ctx_reg)	(((ctx_reg) >> 22) & 0x7)
+#define GEN7_CXT_RENDER_SIZE(ctx_reg)	(((ctx_reg) >> 16) & 0x3f)
+#define GEN7_CXT_EXTENDED_SIZE(ctx_reg)	(((ctx_reg) >> 9) & 0x7f)
+#define GEN7_CXT_GT1_SIZE(ctx_reg)	(((ctx_reg) >> 6) & 0x7)
+#define GEN7_CXT_VFSTATE_SIZE(ctx_reg)	(((ctx_reg) >> 0) & 0x3f)
+#define GEN7_CXT_TOTAL_SIZE(ctx_reg)	(GEN7_CXT_EXTENDED_SIZE(ctx_reg) + \
+					 GEN7_CXT_VFSTATE_SIZE(ctx_reg))
+
+enum {
+	INTEL_ADVANCED_CONTEXT = 0,
+	INTEL_LEGACY_32B_CONTEXT,
+	INTEL_ADVANCED_AD_CONTEXT,
+	INTEL_LEGACY_64B_CONTEXT
+};
+
+enum {
+	FAULT_AND_HANG = 0,
+	FAULT_AND_HALT, /* Debug only */
+	FAULT_AND_STREAM,
+	FAULT_AND_CONTINUE /* Unsupported */
+};
+
+#define CTX_GTT_ADDRESS_MASK GENMASK(31, 12)
+#define GEN8_CTX_VALID (1 << 0)
+#define GEN8_CTX_FORCE_PD_RESTORE (1 << 1)
+#define GEN8_CTX_FORCE_RESTORE (1 << 2)
+#define GEN8_CTX_L3LLC_COHERENT (1 << 5)
+#define GEN8_CTX_PRIVILEGE (1 << 8)
+#define GEN8_CTX_ADDRESSING_MODE_SHIFT 3
+
+#define GEN8_CTX_ID_SHIFT 32
+#define GEN8_CTX_ID_WIDTH 21
+#define GEN11_SW_CTX_ID_SHIFT 37
+#define GEN11_SW_CTX_ID_WIDTH 11
+#define GEN11_ENGINE_CLASS_SHIFT 61
+#define GEN11_ENGINE_CLASS_WIDTH 3
+#define GEN11_ENGINE_INSTANCE_SHIFT 48
+#define GEN11_ENGINE_INSTANCE_WIDTH 6
+
+#define XEHP_SW_CTX_ID_SHIFT 39
+#define XEHP_SW_CTX_ID_WIDTH 16
+#define XEHP_SW_COUNTER_SHIFT 58
+#define XEHP_SW_COUNTER_WIDTH 6
+
+#define UNSLCGCTL9440			_MMIO(0x9440)
+#define   GAMTLBOACS_CLKGATE_DIS	REG_BIT(28)
+#define   GAMTLBVDBOX5_CLKGATE_DIS	REG_BIT(27)
+#define   GAMTLBVDBOX6_CLKGATE_DIS	REG_BIT(26)
+#define   GAMTLBVDBOX3_CLKGATE_DIS	REG_BIT(24)
+#define   GAMTLBVDBOX4_CLKGATE_DIS	REG_BIT(23)
+#define   GAMTLBVDBOX7_CLKGATE_DIS	REG_BIT(22)
+#define   GAMTLBVDBOX2_CLKGATE_DIS	REG_BIT(21)
+#define   GAMTLBVDBOX0_CLKGATE_DIS	REG_BIT(17)
+#define   GAMTLBKCR_CLKGATE_DIS		REG_BIT(16)
+#define   GAMTLBGUC_CLKGATE_DIS		REG_BIT(15)
+#define   GAMTLBBLT_CLKGATE_DIS		REG_BIT(14)
+#define   GAMTLBVDBOX1_CLKGATE_DIS	REG_BIT(6)
+
+#define UNSLCGCTL9444			_MMIO(0x9444)
+#define   GAMTLBGFXA0_CLKGATE_DIS	REG_BIT(30)
+#define   GAMTLBGFXA1_CLKGATE_DIS	REG_BIT(29)
+#define   GAMTLBCOMPA0_CLKGATE_DIS	REG_BIT(28)
+#define   GAMTLBCOMPA1_CLKGATE_DIS	REG_BIT(27)
+#define   GAMTLBCOMPB0_CLKGATE_DIS	REG_BIT(26)
+#define   GAMTLBCOMPB1_CLKGATE_DIS	REG_BIT(25)
+#define   GAMTLBCOMPC0_CLKGATE_DIS	REG_BIT(24)
+#define   GAMTLBCOMPC1_CLKGATE_DIS	REG_BIT(23)
+#define   GAMTLBCOMPD0_CLKGATE_DIS	REG_BIT(22)
+#define   GAMTLBCOMPD1_CLKGATE_DIS	REG_BIT(21)
+#define   GAMTLBMERT_CLKGATE_DIS	REG_BIT(20)
+#define   GAMTLBVEBOX3_CLKGATE_DIS	REG_BIT(19)
+#define   GAMTLBVEBOX2_CLKGATE_DIS	REG_BIT(18)
+#define   GAMTLBVEBOX1_CLKGATE_DIS	REG_BIT(17)
+#define   GAMTLBVEBOX0_CLKGATE_DIS	REG_BIT(16)
+#define   LTCDD_CLKGATE_DIS		REG_BIT(10)
+
+#define SLICE_UNIT_LEVEL_CLKGATE	_MMIO(0x94d4)
+#define  SARBUNIT_CLKGATE_DIS		(1 << 5)
+#define  RCCUNIT_CLKGATE_DIS		(1 << 7)
+#define  MSCUNIT_CLKGATE_DIS		(1 << 10)
+#define  NODEDSS_CLKGATE_DIS		REG_BIT(12)
+#define  L3_CLKGATE_DIS			REG_BIT(16)
+#define  L3_CR2X_CLKGATE_DIS		REG_BIT(17)
+
+#define SUBSLICE_UNIT_LEVEL_CLKGATE	_MMIO(0x9524)
+#define   DSS_ROUTER_CLKGATE_DIS	REG_BIT(28)
+#define   GWUNIT_CLKGATE_DIS		REG_BIT(16)
+
+#define SUBSLICE_UNIT_LEVEL_CLKGATE2	_MMIO(0x9528)
+#define  CPSSUNIT_CLKGATE_DIS		REG_BIT(9)
+
+#define SSMCGCTL9530			_MMIO(0x9530)
+#define   RTFUNIT_CLKGATE_DIS		REG_BIT(18)
+
+#define UNSLICE_UNIT_LEVEL_CLKGATE	_MMIO(0x9434)
+#define   VFUNIT_CLKGATE_DIS		REG_BIT(20)
+#define   TSGUNIT_CLKGATE_DIS		REG_BIT(17) /* XEHPSDV */
+#define   CG3DDISCFEG_CLKGATE_DIS	REG_BIT(17) /* DG2 */
+#define   GAMEDIA_CLKGATE_DIS		REG_BIT(11)
+#define   HSUNIT_CLKGATE_DIS		REG_BIT(8)
+#define   VSUNIT_CLKGATE_DIS		REG_BIT(3)
+
+#define UNSLICE_UNIT_LEVEL_CLKGATE2	_MMIO(0x94e4)
+#define   VSUNIT_CLKGATE_DIS_TGL	REG_BIT(19)
+#define   PSDUNIT_CLKGATE_DIS		REG_BIT(5)
+
+#define INF_UNIT_LEVEL_CLKGATE		_MMIO(0x9560)
+#define   CGPSF_CLKGATE_DIS		(1 << 3)
+
+#define GEN11_GT_INTR_DW0		_MMIO(0x190018)
+#define  GEN11_CSME			(31)
+#define  GEN11_GUNIT			(28)
+#define  GEN11_GUC			(25)
+#define  GEN11_WDPERF			(20)
+#define  GEN11_KCR			(19)
+#define  GEN11_GTPM			(16)
+#define  GEN11_BCS			(15)
+#define  GEN11_RCS0			(0)
+
+#define GEN11_GT_INTR_DW1		_MMIO(0x19001c)
+#define  GEN11_VECS(x)			(31 - (x))
+#define  GEN11_VCS(x)			(x)
+
+#define GEN11_GT_INTR_DW(x)		_MMIO(0x190018 + ((x) * 4))
+
+#define GEN11_INTR_IDENTITY_REG0	_MMIO(0x190060)
+#define GEN11_INTR_IDENTITY_REG1	_MMIO(0x190064)
+#define  GEN11_INTR_DATA_VALID		(1 << 31)
+#define  GEN11_INTR_ENGINE_CLASS(x)	(((x) & GENMASK(18, 16)) >> 16)
+#define  GEN11_INTR_ENGINE_INSTANCE(x)	(((x) & GENMASK(25, 20)) >> 20)
+#define  GEN11_INTR_ENGINE_INTR(x)	((x) & 0xffff)
+/* irq instances for OTHER_CLASS */
+#define OTHER_GUC_INSTANCE	0
+#define OTHER_GTPM_INSTANCE	1
+#define OTHER_KCR_INSTANCE	4
+
+#define GEN11_INTR_IDENTITY_REG(x)	_MMIO(0x190060 + ((x) * 4))
+
+#define GEN11_IIR_REG0_SELECTOR		_MMIO(0x190070)
+#define GEN11_IIR_REG1_SELECTOR		_MMIO(0x190074)
+
+#define GEN11_IIR_REG_SELECTOR(x)	_MMIO(0x190070 + ((x) * 4))
+
+#define GEN11_RENDER_COPY_INTR_ENABLE	_MMIO(0x190030)
+#define GEN11_VCS_VECS_INTR_ENABLE	_MMIO(0x190034)
+#define GEN11_GUC_SG_INTR_ENABLE	_MMIO(0x190038)
+#define GEN11_GPM_WGBOXPERF_INTR_ENABLE	_MMIO(0x19003c)
+#define GEN11_CRYPTO_RSVD_INTR_ENABLE	_MMIO(0x190040)
+#define GEN11_GUNIT_CSME_INTR_ENABLE	_MMIO(0x190044)
+
+#define GEN11_RCS0_RSVD_INTR_MASK	_MMIO(0x190090)
+#define GEN11_BCS_RSVD_INTR_MASK	_MMIO(0x1900a0)
+#define GEN11_VCS0_VCS1_INTR_MASK	_MMIO(0x1900a8)
+#define GEN11_VCS2_VCS3_INTR_MASK	_MMIO(0x1900ac)
+#define GEN12_VCS4_VCS5_INTR_MASK	_MMIO(0x1900b0)
+#define GEN12_VCS6_VCS7_INTR_MASK	_MMIO(0x1900b4)
+#define GEN11_VECS0_VECS1_INTR_MASK	_MMIO(0x1900d0)
+#define GEN12_VECS2_VECS3_INTR_MASK	_MMIO(0x1900d4)
+#define GEN11_GUC_SG_INTR_MASK		_MMIO(0x1900e8)
+#define GEN11_GPM_WGBOXPERF_INTR_MASK	_MMIO(0x1900ec)
+#define GEN11_CRYPTO_RSVD_INTR_MASK	_MMIO(0x1900f0)
+#define GEN11_GUNIT_CSME_INTR_MASK	_MMIO(0x1900f4)
+
+#define   ENGINE1_MASK			REG_GENMASK(31, 16)
+#define   ENGINE0_MASK			REG_GENMASK(15, 0)
+
+#define GEN7_FF_SLICE_CS_CHICKEN1	_MMIO(0x20e0)
+#define   GEN9_FFSC_PERCTX_PREEMPT_CTRL	(1 << 14)
+
+#define FF_SLICE_CS_CHICKEN2			_MMIO(0x20e4)
+#define  GEN9_TSG_BARRIER_ACK_DISABLE		(1 << 8)
+#define  GEN9_POOLED_EU_LOAD_BALANCING_FIX_DISABLE  (1 << 10)
+
+#define GEN9_CS_DEBUG_MODE1		_MMIO(0x20ec)
+#define   FF_DOP_CLOCK_GATE_DISABLE	REG_BIT(1)
+#define GEN9_CTX_PREEMPT_REG		_MMIO(0x2248)
+#define   GEN12_DISABLE_POSH_BUSY_FF_DOP_CG REG_BIT(11)
+
+#define GEN12_CS_DEBUG_MODE1_CCCSUNIT_BE_COMMON		_MMIO(0x20EC)
+#define   GEN12_REPLAY_MODE_GRANULARITY			REG_BIT(0)
+
+#define GEN8_CS_CHICKEN1		_MMIO(0x2580)
+#define GEN9_PREEMPT_3D_OBJECT_LEVEL		(1 << 0)
+#define GEN9_PREEMPT_GPGPU_LEVEL(hi, lo)	(((hi) << 2) | ((lo) << 1))
+#define GEN9_PREEMPT_GPGPU_MID_THREAD_LEVEL	GEN9_PREEMPT_GPGPU_LEVEL(0, 0)
+#define GEN9_PREEMPT_GPGPU_THREAD_GROUP_LEVEL	GEN9_PREEMPT_GPGPU_LEVEL(0, 1)
+#define GEN9_PREEMPT_GPGPU_COMMAND_LEVEL	GEN9_PREEMPT_GPGPU_LEVEL(1, 0)
+#define GEN9_PREEMPT_GPGPU_LEVEL_MASK		GEN9_PREEMPT_GPGPU_LEVEL(1, 1)
+
+/* GEN7 chicken */
+#define GEN7_COMMON_SLICE_CHICKEN1		_MMIO(0x7010)
+  #define GEN7_CSC1_RHWO_OPT_DISABLE_IN_RCC	(1 << 10)
+  #define GEN9_RHWO_OPTIMIZATION_DISABLE	(1 << 14)
+
+#define COMMON_SLICE_CHICKEN2					_MMIO(0x7014)
+  #define GEN9_PBE_COMPRESSED_HASH_SELECTION			(1 << 13)
+  #define GEN9_DISABLE_GATHER_AT_SET_SHADER_COMMON_SLICE	(1 << 12)
+  #define GEN8_SBE_DISABLE_REPLAY_BUF_OPTIMIZATION		(1 << 8)
+  #define GEN8_CSC2_SBE_VUE_CACHE_CONSERVATIVE			(1 << 0)
+
+#define GEN8_L3CNTLREG	_MMIO(0x7034)
+  #define GEN8_ERRDETBCTRL (1 << 9)
+
+#define GEN11_COMMON_SLICE_CHICKEN3			_MMIO(0x7304)
+#define   DG1_FLOAT_POINT_BLEND_OPT_STRICT_MODE_EN	REG_BIT(12)
+#define   XEHP_DUAL_SIMD8_SEQ_MERGE_DISABLE		REG_BIT(12)
+#define   GEN11_BLEND_EMB_FIX_DISABLE_IN_RCC		REG_BIT(11)
+#define   GEN12_DISABLE_CPS_AWARE_COLOR_PIPE		REG_BIT(9)
+
+#define HIZ_CHICKEN					_MMIO(0x7018)
+# define CHV_HZ_8X8_MODE_IN_1X				REG_BIT(15)
+# define DG1_HZ_READ_SUPPRESSION_OPTIMIZATION_DISABLE   REG_BIT(14)
+# define BDW_HIZ_POWER_COMPILER_CLOCK_GATING_DISABLE	REG_BIT(3)
+
+#define GEN9_SLICE_COMMON_ECO_CHICKEN0		_MMIO(0x7308)
+#define  DISABLE_PIXEL_MASK_CAMMING		(1 << 14)
+
+#define GEN9_SLICE_COMMON_ECO_CHICKEN1		_MMIO(0x731c)
+#define   GEN11_STATE_CACHE_REDIRECT_TO_CS	(1 << 11)
+
+#define GEN7_SARCHKMD				_MMIO(0xB000)
+#define GEN7_DISABLE_DEMAND_PREFETCH		(1 << 31)
+#define GEN7_DISABLE_SAMPLER_PREFETCH           (1 << 30)
+
+#define GEN7_L3SQCREG1				_MMIO(0xB010)
+#define  VLV_B0_WA_L3SQCREG1_VALUE		0x00D30000
+
+#define GEN8_L3SQCREG1				_MMIO(0xB100)
+/*
+ * Note that on CHV the following has an off-by-one error wrt. to BSpec.
+ * Using the formula in BSpec leads to a hang, while the formula here works
+ * fine and matches the formulas for all other platforms. A BSpec change
+ * request has been filed to clarify this.
+ */
+#define  L3_GENERAL_PRIO_CREDITS(x)		(((x) >> 1) << 19)
+#define  L3_HIGH_PRIO_CREDITS(x)		(((x) >> 1) << 14)
+#define  L3_PRIO_CREDITS_MASK			((0x1f << 19) | (0x1f << 14))
+
+#define GEN7_L3CNTLREG1				_MMIO(0xB01C)
+#define  GEN7_WA_FOR_GEN7_L3_CONTROL			0x3C47FF8C
+#define  GEN7_L3AGDIS				(1 << 19)
+#define GEN7_L3CNTLREG2				_MMIO(0xB020)
+#define GEN7_L3CNTLREG3				_MMIO(0xB024)
+
+#define GEN7_L3_CHICKEN_MODE_REGISTER		_MMIO(0xB030)
+#define   GEN7_WA_L3_CHICKEN_MODE		0x20000000
+#define GEN10_L3_CHICKEN_MODE_REGISTER		_MMIO(0xB114)
+#define   GEN11_I2M_WRITE_DISABLE		(1 << 28)
+
+#define GEN7_L3SQCREG4				_MMIO(0xb034)
+#define  L3SQ_URB_READ_CAM_MATCH_DISABLE	(1 << 27)
+
+#define GEN11_SCRATCH2					_MMIO(0xb140)
+#define  GEN11_COHERENT_PARTIAL_WRITE_MERGE_ENABLE	(1 << 19)
+
+#define GEN8_L3SQCREG4				_MMIO(0xb118)
+#define  GEN11_LQSC_CLEAN_EVICT_DISABLE		(1 << 6)
+#define  GEN8_LQSC_RO_PERF_DIS			(1 << 27)
+#define  GEN8_LQSC_FLUSH_COHERENT_LINES		(1 << 21)
+#define  GEN8_LQSQ_NONIA_COHERENT_ATOMICS_ENABLE REG_BIT(22)
+
+#define GEN11_L3SQCREG5				_MMIO(0xb158)
+#define   L3_PWM_TIMER_INIT_VAL_MASK		REG_GENMASK(9, 0)
+
+#define XEHP_L3SCQREG7				_MMIO(0xb188)
+#define   BLEND_FILL_CACHING_OPT_DIS		REG_BIT(3)
+
+/* GEN8 chicken */
+#define HDC_CHICKEN0				_MMIO(0x7300)
+#define ICL_HDC_MODE				_MMIO(0xE5F4)
+#define  HDC_FORCE_CSR_NON_COHERENT_OVR_DISABLE	(1 << 15)
+#define  HDC_FENCE_DEST_SLM_DISABLE		(1 << 14)
+#define  HDC_DONOT_FETCH_MEM_WHEN_MASKED	(1 << 11)
+#define  HDC_FORCE_CONTEXT_SAVE_RESTORE_NON_COHERENT	(1 << 5)
+#define  HDC_FORCE_NON_COHERENT			(1 << 4)
+#define  HDC_BARRIER_PERFORMANCE_DISABLE	(1 << 10)
+
+#define GEN12_HDC_CHICKEN0					_MMIO(0xE5F0)
+#define   LSC_L1_FLUSH_CTL_3D_DATAPORT_FLUSH_EVENTS_MASK	REG_GENMASK(13, 11)
+
+#define SARB_CHICKEN1				_MMIO(0xe90c)
+#define   COMP_CKN_IN				REG_GENMASK(30, 29)
+
+#define GEN8_HDC_CHICKEN1			_MMIO(0x7304)
+
+/* GEN9 chicken */
+#define SLICE_ECO_CHICKEN0			_MMIO(0x7308)
+#define   PIXEL_MASK_CAMMING_DISABLE		(1 << 14)
+
+#define GEN9_WM_CHICKEN3			_MMIO(0x5588)
+#define   GEN9_FACTOR_IN_CLR_VAL_HIZ		(1 << 9)
+
+/* WaCatErrorRejectionIssue */
+#define GEN7_SQ_CHICKEN_MBCUNIT_CONFIG		_MMIO(0x9030)
+#define  GEN7_SQ_CHICKEN_MBCUNIT_SQINTMOB	(1 << 11)
+
+#define HSW_SCRATCH1				_MMIO(0xb038)
+#define  HSW_SCRATCH1_L3_DATA_ATOMICS_DISABLE	(1 << 27)
+
+#define BDW_SCRATCH1					_MMIO(0xb11c)
+#define  GEN9_LBS_SLA_RETRY_TIMER_DECREMENT_ENABLE	(1 << 2)
+
+#define VFLSKPD				_MMIO(0x62a8)
+#define   DIS_OVER_FETCH_CACHE		REG_BIT(1)
+#define   DIS_MULT_MISS_RD_SQUASH	REG_BIT(0)
+
+#define FF_MODE2			_MMIO(0x6604)
+#define   FF_MODE2_GS_TIMER_MASK	REG_GENMASK(31, 24)
+#define   FF_MODE2_GS_TIMER_224		REG_FIELD_PREP(FF_MODE2_GS_TIMER_MASK, 224)
+#define   FF_MODE2_TDS_TIMER_MASK	REG_GENMASK(23, 16)
+#define   FF_MODE2_TDS_TIMER_128	REG_FIELD_PREP(FF_MODE2_TDS_TIMER_MASK, 4)
+
+#define  RC6_LOCATION				_MMIO(0xD40)
+#define	   RC6_CTX_IN_DRAM			(1 << 0)
+#define  RC6_CTX_BASE				_MMIO(0xD48)
+#define    RC6_CTX_BASE_MASK			0xFFFFFFF0
+#define  FORCEWAKE				_MMIO(0xA18C)
+#define  FORCEWAKE_VLV				_MMIO(0x1300b0)
+#define  FORCEWAKE_ACK_VLV			_MMIO(0x1300b4)
+#define  FORCEWAKE_MEDIA_VLV			_MMIO(0x1300b8)
+#define  FORCEWAKE_ACK_MEDIA_VLV		_MMIO(0x1300bc)
+#define  FORCEWAKE_ACK_HSW			_MMIO(0x130044)
+#define  FORCEWAKE_ACK				_MMIO(0x130090)
+#define  VLV_GTLC_WAKE_CTRL			_MMIO(0x130090)
+#define   VLV_GTLC_RENDER_CTX_EXISTS		(1 << 25)
+#define   VLV_GTLC_MEDIA_CTX_EXISTS		(1 << 24)
+#define   VLV_GTLC_ALLOWWAKEREQ			(1 << 0)
+
+#define  VLV_GTLC_PW_STATUS			_MMIO(0x130094)
+#define   VLV_GTLC_ALLOWWAKEACK			(1 << 0)
+#define   VLV_GTLC_ALLOWWAKEERR			(1 << 1)
+#define   VLV_GTLC_PW_MEDIA_STATUS_MASK		(1 << 5)
+#define   VLV_GTLC_PW_RENDER_STATUS_MASK	(1 << 7)
+#define  FORCEWAKE_MT				_MMIO(0xa188) /* multi-threaded */
+#define  FORCEWAKE_MEDIA_GEN9			_MMIO(0xa270)
+#define  FORCEWAKE_MEDIA_VDBOX_GEN11(n)		_MMIO(0xa540 + (n) * 4)
+#define  FORCEWAKE_MEDIA_VEBOX_GEN11(n)		_MMIO(0xa560 + (n) * 4)
+#define  FORCEWAKE_RENDER_GEN9			_MMIO(0xa278)
+#define  FORCEWAKE_GT_GEN9			_MMIO(0xa188)
+#define  FORCEWAKE_ACK_MEDIA_GEN9		_MMIO(0x0D88)
+#define  FORCEWAKE_ACK_MEDIA_VDBOX_GEN11(n)	_MMIO(0x0D50 + (n) * 4)
+#define  FORCEWAKE_ACK_MEDIA_VEBOX_GEN11(n)	_MMIO(0x0D70 + (n) * 4)
+#define  FORCEWAKE_ACK_RENDER_GEN9		_MMIO(0x0D84)
+#define  FORCEWAKE_ACK_GT_GEN9			_MMIO(0x130044)
+#define   FORCEWAKE_KERNEL			BIT(0)
+#define   FORCEWAKE_USER			BIT(1)
+#define   FORCEWAKE_KERNEL_FALLBACK		BIT(15)
+#define  FORCEWAKE_MT_ACK			_MMIO(0x130040)
+#define  ECOBUS					_MMIO(0xa180)
+#define    FORCEWAKE_MT_ENABLE			(1 << 5)
+#define  VLV_SPAREG2H				_MMIO(0xA194)
+#define  GEN9_PWRGT_DOMAIN_STATUS		_MMIO(0xA2A0)
+#define   GEN9_PWRGT_MEDIA_STATUS_MASK		(1 << 0)
+#define   GEN9_PWRGT_RENDER_STATUS_MASK		(1 << 1)
+
+#define  GTFIFODBG				_MMIO(0x120000)
+#define    GT_FIFO_SBDEDICATE_FREE_ENTRY_CHV	(0x1f << 20)
+#define    GT_FIFO_FREE_ENTRIES_CHV		(0x7f << 13)
+#define    GT_FIFO_SBDROPERR			(1 << 6)
+#define    GT_FIFO_BLOBDROPERR			(1 << 5)
+#define    GT_FIFO_SB_READ_ABORTERR		(1 << 4)
+#define    GT_FIFO_DROPERR			(1 << 3)
+#define    GT_FIFO_OVFERR			(1 << 2)
+#define    GT_FIFO_IAWRERR			(1 << 1)
+#define    GT_FIFO_IARDERR			(1 << 0)
+
+#define  GTFIFOCTL				_MMIO(0x120008)
+#define    GT_FIFO_FREE_ENTRIES_MASK		0x7f
+#define    GT_FIFO_NUM_RESERVED_ENTRIES		20
+#define    GT_FIFO_CTL_BLOCK_ALL_POLICY_STALL	(1 << 12)
+#define    GT_FIFO_CTL_RC6_POLICY_STALL		(1 << 11)
+
+#define  HSW_IDICR				_MMIO(0x9008)
+#define    IDIHASHMSK(x)			(((x) & 0x3f) << 16)
+
+#define GEN6_UCGCTL1				_MMIO(0x9400)
+# define GEN6_GAMUNIT_CLOCK_GATE_DISABLE		(1 << 22)
+# define GEN6_EU_TCUNIT_CLOCK_GATE_DISABLE		(1 << 16)
+# define GEN6_BLBUNIT_CLOCK_GATE_DISABLE		(1 << 5)
+# define GEN6_CSUNIT_CLOCK_GATE_DISABLE			(1 << 7)
+
+#define GEN6_UCGCTL2				_MMIO(0x9404)
+# define GEN6_VFUNIT_CLOCK_GATE_DISABLE			(1 << 31)
+# define GEN7_VDSUNIT_CLOCK_GATE_DISABLE		(1 << 30)
+# define GEN7_TDLUNIT_CLOCK_GATE_DISABLE		(1 << 22)
+# define GEN6_RCZUNIT_CLOCK_GATE_DISABLE		(1 << 13)
+# define GEN6_RCPBUNIT_CLOCK_GATE_DISABLE		(1 << 12)
+# define GEN6_RCCUNIT_CLOCK_GATE_DISABLE		(1 << 11)
+
+#define GEN6_UCGCTL3				_MMIO(0x9408)
+# define GEN6_OACSUNIT_CLOCK_GATE_DISABLE		(1 << 20)
+
+#define GEN7_UCGCTL4				_MMIO(0x940c)
+#define  GEN7_L3BANK2X_CLOCK_GATE_DISABLE	(1 << 25)
+#define  GEN8_EU_GAUNIT_CLOCK_GATE_DISABLE	(1 << 14)
+
+#define GEN6_RCGCTL1				_MMIO(0x9410)
+#define GEN6_RCGCTL2				_MMIO(0x9414)
+#define GEN6_RSTCTL				_MMIO(0x9420)
+
+#define GEN8_UCGCTL6				_MMIO(0x9430)
+#define   GEN8_GAPSUNIT_CLOCK_GATE_DISABLE	(1 << 24)
+#define   GEN8_SDEUNIT_CLOCK_GATE_DISABLE	(1 << 14)
+#define   GEN8_HDCUNIT_CLOCK_GATE_DISABLE_HDCREQ (1 << 28)
+
+#define UNSLCGCTL9430				_MMIO(0x9430)
+#define   MSQDUNIT_CLKGATE_DIS			REG_BIT(3)
+
+#define GEN6_GFXPAUSE				_MMIO(0xA000)
+#define GEN6_RPNSWREQ				_MMIO(0xA008)
+#define   GEN6_TURBO_DISABLE			(1 << 31)
+#define   GEN6_FREQUENCY(x)			((x) << 25)
+#define   HSW_FREQUENCY(x)			((x) << 24)
+#define   GEN9_FREQUENCY(x)			((x) << 23)
+#define   GEN6_OFFSET(x)			((x) << 19)
+#define   GEN6_AGGRESSIVE_TURBO			(0 << 15)
+#define   GEN9_SW_REQ_UNSLICE_RATIO_SHIFT	23
+#define   GEN9_IGNORE_SLICE_RATIO		(0 << 0)
+
+#define GEN6_RC_VIDEO_FREQ			_MMIO(0xA00C)
+#define GEN6_RC_CONTROL				_MMIO(0xA090)
+#define   GEN6_RC_CTL_RC6pp_ENABLE		(1 << 16)
+#define   GEN6_RC_CTL_RC6p_ENABLE		(1 << 17)
+#define   GEN6_RC_CTL_RC6_ENABLE		(1 << 18)
+#define   GEN6_RC_CTL_RC1e_ENABLE		(1 << 20)
+#define   GEN6_RC_CTL_RC7_ENABLE		(1 << 22)
+#define   VLV_RC_CTL_CTX_RST_PARALLEL		(1 << 24)
+#define   GEN7_RC_CTL_TO_MODE			(1 << 28)
+#define   GEN6_RC_CTL_EI_MODE(x)		((x) << 27)
+#define   GEN6_RC_CTL_HW_ENABLE			(1 << 31)
+#define GEN6_RP_DOWN_TIMEOUT			_MMIO(0xA010)
+#define GEN6_RP_INTERRUPT_LIMITS		_MMIO(0xA014)
+#define GEN6_RPSTAT1				_MMIO(0xA01C)
+#define   GEN6_CAGF_SHIFT			8
+#define   HSW_CAGF_SHIFT			7
+#define   GEN9_CAGF_SHIFT			23
+#define   GEN6_CAGF_MASK			(0x7f << GEN6_CAGF_SHIFT)
+#define   HSW_CAGF_MASK				(0x7f << HSW_CAGF_SHIFT)
+#define   GEN9_CAGF_MASK			(0x1ff << GEN9_CAGF_SHIFT)
+#define GEN6_RP_CONTROL				_MMIO(0xA024)
+#define   GEN6_RP_MEDIA_TURBO			(1 << 11)
+#define   GEN6_RP_MEDIA_MODE_MASK		(3 << 9)
+#define   GEN6_RP_MEDIA_HW_TURBO_MODE		(3 << 9)
+#define   GEN6_RP_MEDIA_HW_NORMAL_MODE		(2 << 9)
+#define   GEN6_RP_MEDIA_HW_MODE			(1 << 9)
+#define   GEN6_RP_MEDIA_SW_MODE			(0 << 9)
+#define   GEN6_RP_MEDIA_IS_GFX			(1 << 8)
+#define   GEN6_RP_ENABLE			(1 << 7)
+#define   GEN6_RP_UP_IDLE_MIN			(0x1 << 3)
+#define   GEN6_RP_UP_BUSY_AVG			(0x2 << 3)
+#define   GEN6_RP_UP_BUSY_CONT			(0x4 << 3)
+#define   GEN6_RP_DOWN_IDLE_AVG			(0x2 << 0)
+#define   GEN6_RP_DOWN_IDLE_CONT		(0x1 << 0)
+#define   GEN6_RPSWCTL_SHIFT			9
+#define   GEN9_RPSWCTL_ENABLE			(0x2 << GEN6_RPSWCTL_SHIFT)
+#define   GEN9_RPSWCTL_DISABLE			(0x0 << GEN6_RPSWCTL_SHIFT)
+#define GEN6_RP_UP_THRESHOLD			_MMIO(0xA02C)
+#define GEN6_RP_DOWN_THRESHOLD			_MMIO(0xA030)
+#define GEN6_RP_CUR_UP_EI			_MMIO(0xA050)
+#define   GEN6_RP_EI_MASK			0xffffff
+#define   GEN6_CURICONT_MASK			GEN6_RP_EI_MASK
+#define GEN6_RP_CUR_UP				_MMIO(0xA054)
+#define   GEN6_CURBSYTAVG_MASK			GEN6_RP_EI_MASK
+#define GEN6_RP_PREV_UP				_MMIO(0xA058)
+#define GEN6_RP_CUR_DOWN_EI			_MMIO(0xA05C)
+#define   GEN6_CURIAVG_MASK			GEN6_RP_EI_MASK
+#define GEN6_RP_CUR_DOWN			_MMIO(0xA060)
+#define GEN6_RP_PREV_DOWN			_MMIO(0xA064)
+#define GEN6_RP_UP_EI				_MMIO(0xA068)
+#define GEN6_RP_DOWN_EI				_MMIO(0xA06C)
+#define GEN6_RP_IDLE_HYSTERSIS			_MMIO(0xA070)
+#define GEN6_RPDEUHWTC				_MMIO(0xA080)
+#define GEN6_RPDEUC				_MMIO(0xA084)
+#define GEN6_RPDEUCSW				_MMIO(0xA088)
+#define GEN6_RC_STATE				_MMIO(0xA094)
+#define   RC_SW_TARGET_STATE_SHIFT		16
+#define   RC_SW_TARGET_STATE_MASK		(7 << RC_SW_TARGET_STATE_SHIFT)
+#define GEN6_RC1_WAKE_RATE_LIMIT		_MMIO(0xA098)
+#define GEN6_RC6_WAKE_RATE_LIMIT		_MMIO(0xA09C)
+#define GEN6_RC6pp_WAKE_RATE_LIMIT		_MMIO(0xA0A0)
+#define GEN10_MEDIA_WAKE_RATE_LIMIT		_MMIO(0xA0A0)
+#define GEN6_RC_EVALUATION_INTERVAL		_MMIO(0xA0A8)
+#define GEN6_RC_IDLE_HYSTERSIS			_MMIO(0xA0AC)
+#define GEN6_RC_SLEEP				_MMIO(0xA0B0)
+#define GEN6_RCUBMABDTMR			_MMIO(0xA0B0)
+#define GEN6_RC1e_THRESHOLD			_MMIO(0xA0B4)
+#define GEN6_RC6_THRESHOLD			_MMIO(0xA0B8)
+#define GEN6_RC6p_THRESHOLD			_MMIO(0xA0BC)
+#define VLV_RCEDATA				_MMIO(0xA0BC)
+#define GEN6_RC6pp_THRESHOLD			_MMIO(0xA0C0)
+#define GEN6_PMINTRMSK				_MMIO(0xA168)
+#define   GEN8_PMINTR_DISABLE_REDIRECT_TO_GUC	(1 << 31)
+#define   ARAT_EXPIRED_INTRMSK			(1 << 9)
+#define GEN8_MISC_CTRL0				_MMIO(0xA180)
+#define VLV_PWRDWNUPCTL				_MMIO(0xA294)
+#define GEN9_MEDIA_PG_IDLE_HYSTERESIS		_MMIO(0xA0C4)
+#define GEN9_RENDER_PG_IDLE_HYSTERESIS		_MMIO(0xA0C8)
+#define GEN9_PG_ENABLE				_MMIO(0xA210)
+#define   GEN9_RENDER_PG_ENABLE			REG_BIT(0)
+#define   GEN9_MEDIA_PG_ENABLE			REG_BIT(1)
+#define   GEN11_MEDIA_SAMPLER_PG_ENABLE		REG_BIT(2)
+#define   VDN_HCP_POWERGATE_ENABLE(n)		REG_BIT(3 + 2 * (n))
+#define   VDN_MFX_POWERGATE_ENABLE(n)		REG_BIT(4 + 2 * (n))
+#define GEN8_PUSHBUS_CONTROL			_MMIO(0xA248)
+#define GEN8_PUSHBUS_ENABLE			_MMIO(0xA250)
+#define GEN8_PUSHBUS_SHIFT			_MMIO(0xA25C)
+
+#define GEN6_PMISR				_MMIO(0x44020)
+#define GEN6_PMIMR				_MMIO(0x44024) /* rps_lock */
+#define GEN6_PMIIR				_MMIO(0x44028)
+#define GEN6_PMIER				_MMIO(0x4402C)
+#define  GEN6_PM_MBOX_EVENT			(1 << 25)
+#define  GEN6_PM_THERMAL_EVENT			(1 << 24)
+
+/*
+ * For Gen11 these are in the upper word of the GPM_WGBOXPERF
+ * registers. Shifting is handled on accessing the imr and ier.
+ */
+#define  GEN6_PM_RP_DOWN_TIMEOUT		(1 << 6)
+#define  GEN6_PM_RP_UP_THRESHOLD		(1 << 5)
+#define  GEN6_PM_RP_DOWN_THRESHOLD		(1 << 4)
+#define  GEN6_PM_RP_UP_EI_EXPIRED		(1 << 2)
+#define  GEN6_PM_RP_DOWN_EI_EXPIRED		(1 << 1)
+#define  GEN6_PM_RPS_EVENTS			(GEN6_PM_RP_UP_EI_EXPIRED   | \
+						 GEN6_PM_RP_UP_THRESHOLD    | \
+						 GEN6_PM_RP_DOWN_EI_EXPIRED | \
+						 GEN6_PM_RP_DOWN_THRESHOLD  | \
+						 GEN6_PM_RP_DOWN_TIMEOUT)
+
+#define GEN7_GT_SCRATCH(i)			_MMIO(0x4F100 + (i) * 4)
+#define GEN7_GT_SCRATCH_REG_NUM			8
+
+#define VLV_GTLC_SURVIVABILITY_REG              _MMIO(0x130098)
+#define VLV_GFX_CLK_STATUS_BIT			(1 << 3)
+#define VLV_GFX_CLK_FORCE_ON_BIT		(1 << 2)
+
+#define GEN6_GT_GFX_RC6_LOCKED			_MMIO(0x138104)
+#define VLV_COUNTER_CONTROL			_MMIO(0x138104)
+#define   VLV_COUNT_RANGE_HIGH			(1 << 15)
+#define   VLV_MEDIA_RC0_COUNT_EN		(1 << 5)
+#define   VLV_RENDER_RC0_COUNT_EN		(1 << 4)
+#define   VLV_MEDIA_RC6_COUNT_EN		(1 << 1)
+#define   VLV_RENDER_RC6_COUNT_EN		(1 << 0)
+#define GEN6_GT_GFX_RC6				_MMIO(0x138108)
+#define VLV_GT_RENDER_RC6			_MMIO(0x138108)
+#define VLV_GT_MEDIA_RC6			_MMIO(0x13810C)
+
+#define GEN6_GT_GFX_RC6p			_MMIO(0x13810C)
+#define GEN6_GT_GFX_RC6pp			_MMIO(0x138110)
+#define VLV_RENDER_C0_COUNT			_MMIO(0x138118)
+#define VLV_MEDIA_C0_COUNT			_MMIO(0x13811C)
+
+#define GEN6_GT_CORE_STATUS		_MMIO(0x138060)
+#define   GEN6_CORE_CPD_STATE_MASK	(7 << 4)
+#define   GEN6_RCn_MASK			7
+#define   GEN6_RC0			0
+#define   GEN6_RC3			2
+#define   GEN6_RC6			3
+#define   GEN6_RC7			4
+
+#define GEN8_GT_SLICE_INFO		_MMIO(0x138064)
+#define   GEN8_LSLICESTAT_MASK		0x7
+
+#define CHV_POWER_SS0_SIG1		_MMIO(0xa720)
+#define CHV_POWER_SS1_SIG1		_MMIO(0xa728)
+#define   CHV_SS_PG_ENABLE		(1 << 1)
+#define   CHV_EU08_PG_ENABLE		(1 << 9)
+#define   CHV_EU19_PG_ENABLE		(1 << 17)
+#define   CHV_EU210_PG_ENABLE		(1 << 25)
+
+#define CHV_POWER_SS0_SIG2		_MMIO(0xa724)
+#define CHV_POWER_SS1_SIG2		_MMIO(0xa72c)
+#define   CHV_EU311_PG_ENABLE		(1 << 1)
+
+#define GEN9_SLICE_PGCTL_ACK(slice)	_MMIO(0x804c + (slice) * 0x4)
+#define GEN10_SLICE_PGCTL_ACK(slice)	_MMIO(0x804c + ((slice) / 3) * 0x34 + \
+					      ((slice) % 3) * 0x4)
+#define   GEN9_PGCTL_SLICE_ACK		(1 << 0)
+#define   GEN9_PGCTL_SS_ACK(subslice)	(1 << (2 + (subslice) * 2))
+#define   GEN10_PGCTL_VALID_SS_MASK(slice) ((slice) == 0 ? 0x7F : 0x1F)
+
+#define GEN9_SS01_EU_PGCTL_ACK(slice)	_MMIO(0x805c + (slice) * 0x8)
+#define GEN10_SS01_EU_PGCTL_ACK(slice)	_MMIO(0x805c + ((slice) / 3) * 0x30 + \
+					      ((slice) % 3) * 0x8)
+#define GEN9_SS23_EU_PGCTL_ACK(slice)	_MMIO(0x8060 + (slice) * 0x8)
+#define GEN10_SS23_EU_PGCTL_ACK(slice)	_MMIO(0x8060 + ((slice) / 3) * 0x30 + \
+					      ((slice) % 3) * 0x8)
+#define   GEN9_PGCTL_SSA_EU08_ACK	(1 << 0)
+#define   GEN9_PGCTL_SSA_EU19_ACK	(1 << 2)
+#define   GEN9_PGCTL_SSA_EU210_ACK	(1 << 4)
+#define   GEN9_PGCTL_SSA_EU311_ACK	(1 << 6)
+#define   GEN9_PGCTL_SSB_EU08_ACK	(1 << 8)
+#define   GEN9_PGCTL_SSB_EU19_ACK	(1 << 10)
+#define   GEN9_PGCTL_SSB_EU210_ACK	(1 << 12)
+#define   GEN9_PGCTL_SSB_EU311_ACK	(1 << 14)
+
+#define GEN7_MISCCPCTL				_MMIO(0x9424)
+#define   GEN7_DOP_CLOCK_GATE_ENABLE		(1 << 0)
+#define   GEN8_DOP_CLOCK_GATE_CFCLK_ENABLE	(1 << 2)
+#define   GEN8_DOP_CLOCK_GATE_GUC_ENABLE	(1 << 4)
+#define   GEN8_DOP_CLOCK_GATE_MEDIA_ENABLE     (1 << 6)
+
+#define GEN8_GARBCNTL				_MMIO(0xB004)
+#define   GEN9_GAPS_TSV_CREDIT_DISABLE		(1 << 7)
+#define   GEN11_ARBITRATION_PRIO_ORDER_MASK	(0x3f << 22)
+#define   GEN11_HASH_CTRL_EXCL_MASK		(0x7f << 0)
+#define   GEN11_HASH_CTRL_EXCL_BIT0		(1 << 0)
+
+#define GEN11_GLBLINVL				_MMIO(0xB404)
+#define   GEN11_BANK_HASH_ADDR_EXCL_MASK	(0x7f << 5)
+#define   GEN11_BANK_HASH_ADDR_EXCL_BIT0	(1 << 5)
+
+#define GEN10_DFR_RATIO_EN_AND_CHICKEN	_MMIO(0x9550)
+#define   DFR_DISABLE			(1 << 9)
+
+#define GEN11_GACB_PERF_CTRL			_MMIO(0x4B80)
+#define   GEN11_HASH_CTRL_MASK			(0x3 << 12 | 0xf << 0)
+#define   GEN11_HASH_CTRL_BIT0			(1 << 0)
+#define   GEN11_HASH_CTRL_BIT4			(1 << 12)
+
+#define GEN11_LSN_UNSLCVC				_MMIO(0xB43C)
+#define   GEN11_LSN_UNSLCVC_GAFS_HALF_CL2_MAXALLOC	(1 << 9)
+#define   GEN11_LSN_UNSLCVC_GAFS_HALF_SF_MAXALLOC	(1 << 7)
+
+#define GEN10_SAMPLER_MODE		_MMIO(0xE18C)
+#define   ENABLE_SMALLPL			REG_BIT(15)
+#define   GEN11_SAMPLER_ENABLE_HEADLESS_MSG	REG_BIT(5)
+
+#define GEN7_L3LOG(slice, i)		_MMIO(0xB070 + (slice) * 0x200 + (i) * 4)
+#define GEN7_L3LOG_SIZE			0x80
+
+#define GEN7_HALF_SLICE_CHICKEN1	_MMIO(0xe100) /* IVB GT1 + VLV */
+#define GEN7_HALF_SLICE_CHICKEN1_GT2	_MMIO(0xf100)
+#define   GEN7_MAX_PS_THREAD_DEP		(8 << 12)
+#define   GEN7_SINGLE_SUBSCAN_DISPATCH_ENABLE	(1 << 10)
+#define   GEN7_SBE_SS_CACHE_DISPATCH_PORT_SHARING_DISABLE	(1 << 4)
+#define   GEN7_PSD_SINGLE_PORT_DISPATCH_ENABLE	(1 << 3)
+
+#define GEN9_HALF_SLICE_CHICKEN5	_MMIO(0xe188)
+#define   GEN9_DG_MIRROR_FIX_ENABLE	(1 << 5)
+#define   GEN9_CCS_TLB_PREFETCH_ENABLE	(1 << 3)
+
+#define GEN8_ROW_CHICKEN		_MMIO(0xe4f0)
+#define   FLOW_CONTROL_ENABLE			REG_BIT(15)
+#define   UGM_BACKUP_MODE			REG_BIT(13)
+#define   MDQ_ARBITRATION_MODE			REG_BIT(12)
+#define   PARTIAL_INSTRUCTION_SHOOTDOWN_DISABLE	REG_BIT(8)
+#define   STALL_DOP_GATING_DISABLE		REG_BIT(5)
+#define   THROTTLE_12_5				REG_GENMASK(4, 2)
+#define   DISABLE_EARLY_EOT			REG_BIT(1)
+
+#define GEN7_ROW_CHICKEN2			_MMIO(0xe4f4)
+#define   GEN12_DISABLE_READ_SUPPRESSION	REG_BIT(15)
+#define   GEN12_DISABLE_EARLY_READ		REG_BIT(14)
+#define   GEN12_ENABLE_LARGE_GRF_MODE		REG_BIT(12)
+#define   GEN12_PUSH_CONST_DEREF_HOLD_DIS	REG_BIT(8)
+
+#define LSC_CHICKEN_BIT_0			_MMIO(0xe7c8)
+#define   FORCE_1_SUB_MESSAGE_PER_FRAGMENT	REG_BIT(15)
+#define LSC_CHICKEN_BIT_0_UDW			_MMIO(0xe7c8 + 4)
+#define   DIS_CHAIN_2XSIMD8			REG_BIT(55 - 32)
+#define   FORCE_SLM_FENCE_SCOPE_TO_TILE		REG_BIT(42 - 32)
+#define   FORCE_UGM_FENCE_SCOPE_TO_TILE		REG_BIT(41 - 32)
+#define   MAXREQS_PER_BANK			REG_GENMASK(39 - 32, 37 - 32)
+#define   DISABLE_128B_EVICTION_COMMAND_UDW	REG_BIT(36 - 32)
+
+#define GEN7_ROW_CHICKEN2_GT2		_MMIO(0xf4f4)
+#define   DOP_CLOCK_GATING_DISABLE	(1 << 0)
+#define   PUSH_CONSTANT_DEREF_DISABLE	(1 << 8)
+#define   GEN11_TDL_CLOCK_GATING_FIX_DISABLE	(1 << 1)
+
+#define GEN9_ROW_CHICKEN4				_MMIO(0xe48c)
+#define   GEN12_DISABLE_GRF_CLEAR			REG_BIT(13)
+#define   GEN12_DISABLE_TDL_PUSH			REG_BIT(9)
+#define   GEN11_DIS_PICK_2ND_EU				REG_BIT(7)
+#define   GEN12_DISABLE_HDR_PAST_PAYLOAD_HOLD_FIX	REG_BIT(4)
+
+#define HSW_ROW_CHICKEN3		_MMIO(0xe49c)
+#define  HSW_ROW_CHICKEN3_L3_GLOBAL_ATOMICS_DISABLE    (1 << 6)
+
+#define HALF_SLICE_CHICKEN2		_MMIO(0xe180)
+#define   GEN8_ST_PO_DISABLE		(1 << 13)
+
+#define HALF_SLICE_CHICKEN3		_MMIO(0xe184)
+#define   HSW_SAMPLE_C_PERFORMANCE	(1 << 9)
+#define   GEN8_CENTROID_PIXEL_OPT_DIS	(1 << 8)
+#define   GEN9_DISABLE_OCL_OOB_SUPPRESS_LOGIC	(1 << 5)
+#define   GEN8_SAMPLER_POWER_BYPASS_DIS	(1 << 1)
+
+#define GEN9_HALF_SLICE_CHICKEN7	_MMIO(0xe194)
+#define   DG2_DISABLE_ROUND_ENABLE_ALLOW_FOR_SSLA	REG_BIT(15)
+#define   GEN9_SAMPLER_HASH_COMPRESSED_READ_ADDR	REG_BIT(8)
+#define   GEN9_ENABLE_YV12_BUGFIX			REG_BIT(4)
+#define   GEN9_ENABLE_GPGPU_PREEMPTION			REG_BIT(2)
+
+/* MOCS (Memory Object Control State) registers */
+#define GEN9_LNCFCMOCS(i)	_MMIO(0xb020 + (i) * 4)	/* L3 Cache Control */
+#define GEN9_LNCFCMOCS_REG_COUNT	32
+
+#define __GEN9_RCS0_MOCS0	0xc800
+#define GEN9_GFX_MOCS(i)	_MMIO(__GEN9_RCS0_MOCS0 + (i) * 4)
+#define __GEN9_VCS0_MOCS0	0xc900
+#define GEN9_MFX0_MOCS(i)	_MMIO(__GEN9_VCS0_MOCS0 + (i) * 4)
+#define __GEN9_VCS1_MOCS0	0xca00
+#define GEN9_MFX1_MOCS(i)	_MMIO(__GEN9_VCS1_MOCS0 + (i) * 4)
+#define __GEN9_VECS0_MOCS0	0xcb00
+#define GEN9_VEBOX_MOCS(i)	_MMIO(__GEN9_VECS0_MOCS0 + (i) * 4)
+#define __GEN9_BCS0_MOCS0	0xcc00
+#define GEN9_BLT_MOCS(i)	_MMIO(__GEN9_BCS0_MOCS0 + (i) * 4)
+#define __GEN11_VCS2_MOCS0	0x10000
+#define GEN11_MFX2_MOCS(i)	_MMIO(__GEN11_VCS2_MOCS0 + (i) * 4)
+
+#define GEN9_SCRATCH_LNCF1		_MMIO(0xb008)
+#define   GEN9_LNCF_NONIA_COHERENT_ATOMICS_ENABLE REG_BIT(0)
+
+#define GEN9_SCRATCH1			_MMIO(0xb11c)
+#define   EVICTION_PERF_FIX_ENABLE	REG_BIT(8)
+
+#define GEN10_SCRATCH_LNCF2		_MMIO(0xb0a0)
+#define   PMFLUSHDONE_LNICRSDROP	(1 << 20)
+#define   PMFLUSH_GAPL3UNBLOCK		(1 << 21)
+#define   PMFLUSHDONE_LNEBLK		(1 << 22)
+
+#define XEHP_L3NODEARBCFG		_MMIO(0xb0b4)
+#define   XEHP_LNESPARE			REG_BIT(19)
+
+#define GEN12_GLOBAL_MOCS(i)	_MMIO(0x4000 + (i) * 4) /* Global MOCS regs */
+
+/* gamt regs */
+#define GEN8_L3_LRA_1_GPGPU _MMIO(0x4dd4)
+#define   GEN8_L3_LRA_1_GPGPU_DEFAULT_VALUE_BDW  0x67F1427F /* max/min for LRA1/2 */
+#define   GEN8_L3_LRA_1_GPGPU_DEFAULT_VALUE_CHV  0x5FF101FF /* max/min for LRA1/2 */
+#define   GEN9_L3_LRA_1_GPGPU_DEFAULT_VALUE_SKL  0x67F1427F /*    "        " */
+#define   GEN9_L3_LRA_1_GPGPU_DEFAULT_VALUE_BXT  0x5FF101FF /*    "        " */
+
+#define MMCD_MISC_CTRL		_MMIO(0x4ddc) /* skl+ */
+#define  MMCD_PCLA		(1 << 31)
+#define  MMCD_HOTSPOT_EN	(1 << 27)
+
+#define SLICE_COMMON_ECO_CHICKEN1		_MMIO(0x731C)
+#define   MSC_MSAA_REODER_BUF_BYPASS_DISABLE	REG_BIT(14)
+
+#endif /* __INTEL_GT_REGS__ */
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c b/drivers/gpu/drm/i915/gt/intel_gtt.c
index 46be4197b93f..0d6bbc8c57f2 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
@@ -13,6 +13,7 @@
 #include "gem/i915_gem_lmem.h"
 #include "i915_trace.h"
 #include "intel_gt.h"
+#include "intel_gt_regs.h"
 #include "intel_gtt.h"
 
 struct drm_i915_gem_object *alloc_pt_lmem(struct i915_address_space *vm, int sz)
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 89a95a125fc8..c23dd70d606d 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -12,6 +12,7 @@
 #include "intel_engine_regs.h"
 #include "intel_gpu_commands.h"
 #include "intel_gt.h"
+#include "intel_gt_regs.h"
 #include "intel_lrc.h"
 #include "intel_lrc_reg.h"
 #include "intel_ring.h"
diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.c b/drivers/gpu/drm/i915/gt/intel_mocs.c
index 9c253ba593c6..c4c37585ae8c 100644
--- a/drivers/gpu/drm/i915/gt/intel_mocs.c
+++ b/drivers/gpu/drm/i915/gt/intel_mocs.c
@@ -7,7 +7,7 @@
 
 #include "intel_engine.h"
 #include "intel_gt.h"
-#include "intel_lrc_reg.h"
+#include "intel_gt_regs.h"
 #include "intel_mocs.h"
 #include "intel_ring.h"
 
diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
index bb0d6e363f5d..5458e6606301 100644
--- a/drivers/gpu/drm/i915/gt/intel_rc6.c
+++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
@@ -10,6 +10,7 @@
 #include "intel_engine_regs.h"
 #include "intel_gt.h"
 #include "intel_gt_pm.h"
+#include "intel_gt_regs.h"
 #include "intel_pcode.h"
 #include "intel_rc6.h"
 
diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
index 6f2821cca409..59beb69ff6f2 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.c
+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
@@ -11,6 +11,8 @@
 
 #include "gem/i915_gem_context.h"
 
+#include "gt/intel_gt_regs.h"
+
 #include "i915_drv.h"
 #include "i915_gpu_error.h"
 #include "i915_irq.h"
diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
index a2b7be1d4f5c..8362eb09092e 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
@@ -14,6 +14,7 @@
 #include "intel_engine_regs.h"
 #include "intel_gt.h"
 #include "intel_gt_irq.h"
+#include "intel_gt_regs.h"
 #include "intel_reset.h"
 #include "intel_ring.h"
 #include "shmem_utils.h"
diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index 8a13bc005b45..0cb299cdfc8f 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -12,6 +12,7 @@
 #include "intel_gt_clock_utils.h"
 #include "intel_gt_irq.h"
 #include "intel_gt_pm_irq.h"
+#include "intel_gt_regs.h"
 #include "intel_pcode.h"
 #include "intel_rps.h"
 #include "vlv_sideband.h"
diff --git a/drivers/gpu/drm/i915/gt/intel_sseu.c b/drivers/gpu/drm/i915/gt/intel_sseu.c
index f161087f30d0..29118c652811 100644
--- a/drivers/gpu/drm/i915/gt/intel_sseu.c
+++ b/drivers/gpu/drm/i915/gt/intel_sseu.c
@@ -5,6 +5,7 @@
 
 #include "i915_drv.h"
 #include "intel_engine_regs.h"
+#include "intel_gt_regs.h"
 #include "intel_sseu.h"
 
 void intel_sseu_set_info(struct sseu_dev_info *sseu, u8 max_slices,
diff --git a/drivers/gpu/drm/i915/gt/intel_sseu_debugfs.c b/drivers/gpu/drm/i915/gt/intel_sseu_debugfs.c
index 8bb3a91dad82..903626f106ea 100644
--- a/drivers/gpu/drm/i915/gt/intel_sseu_debugfs.c
+++ b/drivers/gpu/drm/i915/gt/intel_sseu_debugfs.c
@@ -6,6 +6,7 @@
 
 #include "i915_drv.h"
 #include "intel_gt_debugfs.h"
+#include "intel_gt_regs.h"
 #include "intel_sseu_debugfs.h"
 
 static void sseu_copy_subslices(const struct sseu_dev_info *sseu,
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 748b2daf043f..727cdb80a4ee 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -9,6 +9,7 @@
 #include "intel_engine_regs.h"
 #include "intel_gpu_commands.h"
 #include "intel_gt.h"
+#include "intel_gt_regs.h"
 #include "intel_ring.h"
 #include "intel_workarounds.h"
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
index ba2a67f9e500..447a976c9f25 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
@@ -7,6 +7,7 @@
 #include "gt/intel_gt.h"
 #include "gt/intel_gt_irq.h"
 #include "gt/intel_gt_pm_irq.h"
+#include "gt/intel_gt_regs.h"
 #include "intel_guc.h"
 #include "intel_guc_slpc.h"
 #include "intel_guc_ads.h"
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
index 668bf4ac9b0c..e61150adcbe9 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
@@ -7,6 +7,7 @@
 
 #include "gt/intel_engine_regs.h"
 #include "gt/intel_gt.h"
+#include "gt/intel_gt_regs.h"
 #include "gt/intel_lrc.h"
 #include "gt/shmem_utils.h"
 #include "intel_guc_ads.h"
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c
index 40f7d4779c9e..a0372735cddb 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c
@@ -10,6 +10,7 @@
  */
 
 #include "gt/intel_gt.h"
+#include "gt/intel_gt_regs.h"
 #include "intel_guc_fw.h"
 #include "i915_drv.h"
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
index 13b27b8ff74e..57ae9ac98505 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
@@ -6,6 +6,7 @@
 #include "i915_drv.h"
 #include "intel_guc_slpc.h"
 #include "gt/intel_gt.h"
+#include "gt/intel_gt_regs.h"
 
 static inline struct intel_guc *slpc_to_guc(struct intel_guc_slpc *slpc)
 {
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index db9615dcb0ec..a0d5ebcb0f24 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -17,6 +17,7 @@
 #include "gt/intel_gt_clock_utils.h"
 #include "gt/intel_gt_irq.h"
 #include "gt/intel_gt_pm.h"
+#include "gt/intel_gt_regs.h"
 #include "gt/intel_gt_requests.h"
 #include "gt/intel_lrc.h"
 #include "gt/intel_lrc_reg.h"
diff --git a/drivers/gpu/drm/i915/gvt/cmd_parser.c b/drivers/gpu/drm/i915/gvt/cmd_parser.c
index ec18122cc216..2459213b6c87 100644
--- a/drivers/gpu/drm/i915/gvt/cmd_parser.c
+++ b/drivers/gpu/drm/i915/gvt/cmd_parser.c
@@ -39,6 +39,7 @@
 #include "i915_drv.h"
 #include "gt/intel_engine_regs.h"
 #include "gt/intel_gpu_commands.h"
+#include "gt/intel_gt_regs.h"
 #include "gt/intel_lrc.h"
 #include "gt/intel_ring.h"
 #include "gt/intel_gt_requests.h"
diff --git a/drivers/gpu/drm/i915/gvt/gtt.c b/drivers/gpu/drm/i915/gvt/gtt.c
index 2aeaf8fd68f0..28a94c3dc991 100644
--- a/drivers/gpu/drm/i915/gvt/gtt.c
+++ b/drivers/gpu/drm/i915/gvt/gtt.c
@@ -38,6 +38,8 @@
 #include "i915_pvinfo.h"
 #include "trace.h"
 
+#include "gt/intel_gt_regs.h"
+
 #if defined(VERBOSE_DEBUG)
 #define gvt_vdbg_mm(fmt, args...) gvt_dbg_mm(fmt, ##args)
 #else
diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/gvt/handlers.c
index a1f9ab4a4e63..02271b920843 100644
--- a/drivers/gpu/drm/i915/gvt/handlers.c
+++ b/drivers/gpu/drm/i915/gvt/handlers.c
@@ -41,6 +41,7 @@
 #include "i915_pvinfo.h"
 #include "display/intel_display_types.h"
 #include "display/intel_fbc.h"
+#include "gt/intel_gt_regs.h"
 
 /* XXX FIXME i915 has changed PP_XXX definition */
 #define PCH_PP_STATUS  _MMIO(0xc7200)
diff --git a/drivers/gpu/drm/i915/gvt/mmio.c b/drivers/gpu/drm/i915/gvt/mmio.c
index 24210b1eaec5..0215e1ea621d 100644
--- a/drivers/gpu/drm/i915/gvt/mmio.c
+++ b/drivers/gpu/drm/i915/gvt/mmio.c
@@ -36,6 +36,8 @@
 #include "i915_drv.h"
 #include "gvt.h"
 
+#include "gt/intel_gt_regs.h"
+
 /**
  * intel_vgpu_gpa_to_mmio_offset - translate a GPA to MMIO offset
  * @vgpu: a vGPU
diff --git a/drivers/gpu/drm/i915/gvt/mmio_context.c b/drivers/gpu/drm/i915/gvt/mmio_context.c
index 99d3534d2bd8..c85bafe7539e 100644
--- a/drivers/gpu/drm/i915/gvt/mmio_context.c
+++ b/drivers/gpu/drm/i915/gvt/mmio_context.c
@@ -37,6 +37,7 @@
 #include "gt/intel_context.h"
 #include "gt/intel_engine_regs.h"
 #include "gt/intel_gpu_commands.h"
+#include "gt/intel_gt_regs.h"
 #include "gt/intel_ring.h"
 #include "gvt.h"
 #include "trace.h"
diff --git a/drivers/gpu/drm/i915/gvt/scheduler.c b/drivers/gpu/drm/i915/gvt/scheduler.c
index ecd90dbd9544..679476da0640 100644
--- a/drivers/gpu/drm/i915/gvt/scheduler.c
+++ b/drivers/gpu/drm/i915/gvt/scheduler.c
@@ -38,6 +38,7 @@
 #include "gem/i915_gem_pm.h"
 #include "gt/intel_context.h"
 #include "gt/intel_execlists_submission.h"
+#include "gt/intel_gt_regs.h"
 #include "gt/intel_lrc.h"
 #include "gt/intel_ring.h"
 
diff --git a/drivers/gpu/drm/i915/i915_cmd_parser.c b/drivers/gpu/drm/i915/i915_cmd_parser.c
index 332b8ffb58f8..b394b3c3e073 100644
--- a/drivers/gpu/drm/i915/i915_cmd_parser.c
+++ b/drivers/gpu/drm/i915/i915_cmd_parser.c
@@ -28,6 +28,7 @@
 #include "gt/intel_engine.h"
 #include "gt/intel_engine_regs.h"
 #include "gt/intel_gpu_commands.h"
+#include "gt/intel_gt_regs.h"
 
 #include "i915_cmd_parser.h"
 #include "i915_drv.h"
diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index f3141b58d912..ca52ee0742ce 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -38,6 +38,7 @@
 #include "gt/intel_gt_debugfs.h"
 #include "gt/intel_gt_pm.h"
 #include "gt/intel_gt_pm_debugfs.h"
+#include "gt/intel_gt_regs.h"
 #include "gt/intel_gt_requests.h"
 #include "gt/intel_rc6.h"
 #include "gt/intel_reset.h"
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index aee42eae4729..127ff56c8ce6 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -44,6 +44,7 @@
 #include "gt/intel_engine_regs.h"
 #include "gt/intel_gt.h"
 #include "gt/intel_gt_pm.h"
+#include "gt/intel_gt_regs.h"
 
 #include "i915_drv.h"
 #include "i915_gpu_error.h"
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 5d0bffa472bc..c05eb09d8a66 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -46,6 +46,7 @@
 #include "gt/intel_gt.h"
 #include "gt/intel_gt_irq.h"
 #include "gt/intel_gt_pm_irq.h"
+#include "gt/intel_gt_regs.h"
 #include "gt/intel_rps.h"
 
 #include "i915_drv.h"
diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 7eb22c767c1c..f8d36d27866c 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -203,6 +203,7 @@
 #include "gt/intel_gpu_commands.h"
 #include "gt/intel_gt.h"
 #include "gt/intel_gt_clock_utils.h"
+#include "gt/intel_gt_regs.h"
 #include "gt/intel_lrc.h"
 #include "gt/intel_ring.h"
 
diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
index bf93f9720e0a..cfc21042499d 100644
--- a/drivers/gpu/drm/i915/i915_pmu.c
+++ b/drivers/gpu/drm/i915/i915_pmu.c
@@ -11,6 +11,7 @@
 #include "gt/intel_engine_regs.h"
 #include "gt/intel_engine_user.h"
 #include "gt/intel_gt_pm.h"
+#include "gt/intel_gt_regs.h"
 #include "gt/intel_rc6.h"
 #include "gt/intel_rps.h"
 
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 3b1931244afe..91c9c2eb57f2 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -189,150 +189,8 @@
 #define _MASKED_BIT_ENABLE(a)	({ typeof(a) _a = (a); _MASKED_FIELD(_a, _a); })
 #define _MASKED_BIT_DISABLE(a)	(_MASKED_FIELD((a), 0))
 
-#define ILK_GDSR _MMIO(MCHBAR_MIRROR_BASE + 0x2ca4)
-#define  ILK_GRDOM_FULL		(0 << 1)
-#define  ILK_GRDOM_RENDER	(1 << 1)
-#define  ILK_GRDOM_MEDIA	(3 << 1)
-#define  ILK_GRDOM_MASK		(3 << 1)
-#define  ILK_GRDOM_RESET_ENABLE (1 << 0)
-
-#define GEN6_MBCUNIT_SNPCR	_MMIO(0x900c) /* for LLC config */
-#define   GEN6_MBC_SNPCR_SHIFT	21
-#define   GEN6_MBC_SNPCR_MASK	(3 << 21)
-#define   GEN6_MBC_SNPCR_MAX	(0 << 21)
-#define   GEN6_MBC_SNPCR_MED	(1 << 21)
-#define   GEN6_MBC_SNPCR_LOW	(2 << 21)
-#define   GEN6_MBC_SNPCR_MIN	(3 << 21) /* only 1/16th of the cache is shared */
-
-#define VLV_G3DCTL		_MMIO(0x9024)
-#define VLV_GSCKGCTL		_MMIO(0x9028)
-
-#define FBC_LLC_READ_CTRL	_MMIO(0x9044)
-#define   FBC_LLC_FULLY_OPEN	REG_BIT(30)
-
-#define GEN6_MBCTL		_MMIO(0x0907c)
-#define   GEN6_MBCTL_ENABLE_BOOT_FETCH	(1 << 4)
-#define   GEN6_MBCTL_CTX_FETCH_NEEDED	(1 << 3)
-#define   GEN6_MBCTL_BME_UPDATE_ENABLE	(1 << 2)
-#define   GEN6_MBCTL_MAE_UPDATE_ENABLE	(1 << 1)
-#define   GEN6_MBCTL_BOOT_FETCH_MECH	(1 << 0)
-
-#define GEN6_GDRST	_MMIO(0x941c)
-#define  GEN6_GRDOM_FULL		(1 << 0)
-#define  GEN6_GRDOM_RENDER		(1 << 1)
-#define  GEN6_GRDOM_MEDIA		(1 << 2)
-#define  GEN6_GRDOM_BLT			(1 << 3)
-#define  GEN6_GRDOM_VECS		(1 << 4)
-#define  GEN9_GRDOM_GUC			(1 << 5)
-#define  GEN8_GRDOM_MEDIA2		(1 << 7)
-/* GEN11 changed all bit defs except for FULL & RENDER */
-#define  GEN11_GRDOM_FULL		GEN6_GRDOM_FULL
-#define  GEN11_GRDOM_RENDER		GEN6_GRDOM_RENDER
-#define  GEN11_GRDOM_BLT		(1 << 2)
-#define  GEN11_GRDOM_GUC		(1 << 3)
-#define  GEN11_GRDOM_MEDIA		(1 << 5)
-#define  GEN11_GRDOM_MEDIA2		(1 << 6)
-#define  GEN11_GRDOM_MEDIA3		(1 << 7)
-#define  GEN11_GRDOM_MEDIA4		(1 << 8)
-#define  GEN11_GRDOM_MEDIA5		(1 << 9)
-#define  GEN11_GRDOM_MEDIA6		(1 << 10)
-#define  GEN11_GRDOM_MEDIA7		(1 << 11)
-#define  GEN11_GRDOM_MEDIA8		(1 << 12)
-#define  GEN11_GRDOM_VECS		(1 << 13)
-#define  GEN11_GRDOM_VECS2		(1 << 14)
-#define  GEN11_GRDOM_VECS3		(1 << 15)
-#define  GEN11_GRDOM_VECS4		(1 << 16)
-#define  GEN11_GRDOM_SFC0		(1 << 17)
-#define  GEN11_GRDOM_SFC1		(1 << 18)
-#define  GEN11_GRDOM_SFC2		(1 << 19)
-#define  GEN11_GRDOM_SFC3		(1 << 20)
-
-#define  GEN11_VCS_SFC_RESET_BIT(instance)	(GEN11_GRDOM_SFC0 << ((instance) >> 1))
-#define  GEN11_VECS_SFC_RESET_BIT(instance)	(GEN11_GRDOM_SFC0 << (instance))
-
-#define GEN11_VCS_SFC_FORCED_LOCK(engine)	_MMIO((engine)->mmio_base + 0x88C)
-#define   GEN11_VCS_SFC_FORCED_LOCK_BIT		(1 << 0)
-#define GEN11_VCS_SFC_LOCK_STATUS(engine)	_MMIO((engine)->mmio_base + 0x890)
-#define   GEN11_VCS_SFC_USAGE_BIT		(1 << 0)
-#define   GEN11_VCS_SFC_LOCK_ACK_BIT		(1 << 1)
-
-#define GEN11_VECS_SFC_FORCED_LOCK(engine)	_MMIO((engine)->mmio_base + 0x201C)
-#define   GEN11_VECS_SFC_FORCED_LOCK_BIT	(1 << 0)
-#define GEN11_VECS_SFC_LOCK_ACK(engine)		_MMIO((engine)->mmio_base + 0x2018)
-#define   GEN11_VECS_SFC_LOCK_ACK_BIT		(1 << 0)
-#define GEN11_VECS_SFC_USAGE(engine)		_MMIO((engine)->mmio_base + 0x2014)
-#define   GEN11_VECS_SFC_USAGE_BIT		(1 << 0)
-
-#define GEN12_HCP_SFC_FORCED_LOCK(engine)	_MMIO((engine)->mmio_base + 0x2910)
-#define   GEN12_HCP_SFC_FORCED_LOCK_BIT		REG_BIT(0)
-#define GEN12_HCP_SFC_LOCK_STATUS(engine)	_MMIO((engine)->mmio_base + 0x2914)
-#define   GEN12_HCP_SFC_LOCK_ACK_BIT		REG_BIT(1)
-#define   GEN12_HCP_SFC_USAGE_BIT			REG_BIT(0)
-
-#define GEN12_SFC_DONE(n)		_MMIO(0x1cc000 + (n) * 0x1000)
 #define GEN12_SFC_DONE_MAX		4
 
-#define WAIT_FOR_RC6_EXIT		_MMIO(0x20CC)
-/* HSW only */
-#define   HSW_SELECTIVE_READ_ADDRESSING_SHIFT		2
-#define   HSW_SELECTIVE_READ_ADDRESSING_MASK		(0x3 << HSW_SLECTIVE_READ_ADDRESSING_SHIFT)
-#define   HSW_SELECTIVE_WRITE_ADDRESS_SHIFT		4
-#define   HSW_SELECTIVE_WRITE_ADDRESS_MASK		(0x7 << HSW_SELECTIVE_WRITE_ADDRESS_SHIFT)
-/* HSW+ */
-#define   HSW_WAIT_FOR_RC6_EXIT_ENABLE			(1 << 0)
-#define   HSW_RCS_CONTEXT_ENABLE			(1 << 7)
-#define   HSW_RCS_INHIBIT				(1 << 8)
-/* Gen8 */
-#define   GEN8_SELECTIVE_WRITE_ADDRESS_SHIFT		4
-#define   GEN8_SELECTIVE_WRITE_ADDRESS_MASK		(0x3 << GEN8_SELECTIVE_WRITE_ADDRESS_SHIFT)
-#define   GEN8_SELECTIVE_WRITE_ADDRESS_SHIFT		4
-#define   GEN8_SELECTIVE_WRITE_ADDRESS_MASK		(0x3 << GEN8_SELECTIVE_WRITE_ADDRESS_SHIFT)
-#define   GEN8_SELECTIVE_WRITE_ADDRESSING_ENABLE	(1 << 6)
-#define   GEN8_SELECTIVE_READ_SUBSLICE_SELECT_SHIFT	9
-#define   GEN8_SELECTIVE_READ_SUBSLICE_SELECT_MASK	(0x3 << GEN8_SELECTIVE_READ_SUBSLICE_SELECT_SHIFT)
-#define   GEN8_SELECTIVE_READ_SLICE_SELECT_SHIFT	11
-#define   GEN8_SELECTIVE_READ_SLICE_SELECT_MASK		(0x3 << GEN8_SELECTIVE_READ_SLICE_SELECT_SHIFT)
-#define   GEN8_SELECTIVE_READ_ADDRESSING_ENABLE         (1 << 13)
-
-#define GAM_ECOCHK			_MMIO(0x4090)
-#define   BDW_DISABLE_HDC_INVALIDATION	(1 << 25)
-#define   ECOCHK_SNB_BIT		(1 << 10)
-#define   ECOCHK_DIS_TLB		(1 << 8)
-#define   HSW_ECOCHK_ARB_PRIO_SOL	(1 << 6)
-#define   ECOCHK_PPGTT_CACHE64B		(0x3 << 3)
-#define   ECOCHK_PPGTT_CACHE4B		(0x0 << 3)
-#define   ECOCHK_PPGTT_GFDT_IVB		(0x1 << 4)
-#define   ECOCHK_PPGTT_LLC_IVB		(0x1 << 3)
-#define   ECOCHK_PPGTT_UC_HSW		(0x1 << 3)
-#define   ECOCHK_PPGTT_WT_HSW		(0x2 << 3)
-#define   ECOCHK_PPGTT_WB_HSW		(0x3 << 3)
-
-#define GEN8_RC6_CTX_INFO		_MMIO(0x8504)
-
-#define GAC_ECO_BITS			_MMIO(0x14090)
-#define   ECOBITS_SNB_BIT		(1 << 13)
-#define   ECOBITS_PPGTT_CACHE64B	(3 << 8)
-#define   ECOBITS_PPGTT_CACHE4B		(0 << 8)
-
-#define GEN12_GAMCNTRL_CTRL			_MMIO(0xcf54)
-#define   INVALIDATION_BROADCAST_MODE_DIS	REG_BIT(12)
-#define   GLOBAL_INVALIDATION_MODE		REG_BIT(2)
-
-#define GEN12_GAMSTLB_CTRL		_MMIO(0xcf4c)
-#define   CONTROL_BLOCK_CLKGATE_DIS	REG_BIT(12)
-#define   EGRESS_BLOCK_CLKGATE_DIS	REG_BIT(11)
-#define   TAG_BLOCK_CLKGATE_DIS		REG_BIT(7)
-
-#define GEN12_MERT_MOD_CTRL		_MMIO(0xcf28)
-#define RENDER_MOD_CTRL			_MMIO(0xcf2c)
-#define COMP_MOD_CTRL			_MMIO(0xcf30)
-#define VDBX_MOD_CTRL			_MMIO(0xcf34)
-#define VEBX_MOD_CTRL			_MMIO(0xcf38)
-#define   FORCE_MISS_FTLB		REG_BIT(3)
-
-#define GAB_CTL				_MMIO(0x24000)
-#define   GAB_CTL_CONT_AFTER_PAGEFAULT	(1 << 8)
-
 #define GU_CNTL				_MMIO(0x101010)
 #define   LMEM_INIT			REG_BIT(7)
 
@@ -398,127 +256,6 @@
 #define VGA_CR_INDEX_CGA 0x3d4
 #define VGA_CR_DATA_CGA 0x3d5
 
-#define HSW_MI_PREDICATE_RESULT_2	_MMIO(0x2214)
-
-/*
- * Registers used only by the command parser
- */
-#define BCS_SWCTRL _MMIO(0x22200)
-#define   BCS_SRC_Y REG_BIT(0)
-#define   BCS_DST_Y REG_BIT(1)
-
-#define GPGPU_THREADS_DISPATCHED        _MMIO(0x2290)
-#define GPGPU_THREADS_DISPATCHED_UDW	_MMIO(0x2290 + 4)
-#define HS_INVOCATION_COUNT             _MMIO(0x2300)
-#define HS_INVOCATION_COUNT_UDW		_MMIO(0x2300 + 4)
-#define DS_INVOCATION_COUNT             _MMIO(0x2308)
-#define DS_INVOCATION_COUNT_UDW		_MMIO(0x2308 + 4)
-#define IA_VERTICES_COUNT               _MMIO(0x2310)
-#define IA_VERTICES_COUNT_UDW		_MMIO(0x2310 + 4)
-#define IA_PRIMITIVES_COUNT             _MMIO(0x2318)
-#define IA_PRIMITIVES_COUNT_UDW		_MMIO(0x2318 + 4)
-#define VS_INVOCATION_COUNT             _MMIO(0x2320)
-#define VS_INVOCATION_COUNT_UDW		_MMIO(0x2320 + 4)
-#define GS_INVOCATION_COUNT             _MMIO(0x2328)
-#define GS_INVOCATION_COUNT_UDW		_MMIO(0x2328 + 4)
-#define GS_PRIMITIVES_COUNT             _MMIO(0x2330)
-#define GS_PRIMITIVES_COUNT_UDW		_MMIO(0x2330 + 4)
-#define CL_INVOCATION_COUNT             _MMIO(0x2338)
-#define CL_INVOCATION_COUNT_UDW		_MMIO(0x2338 + 4)
-#define CL_PRIMITIVES_COUNT             _MMIO(0x2340)
-#define CL_PRIMITIVES_COUNT_UDW		_MMIO(0x2340 + 4)
-#define PS_INVOCATION_COUNT             _MMIO(0x2348)
-#define PS_INVOCATION_COUNT_UDW		_MMIO(0x2348 + 4)
-#define PS_DEPTH_COUNT                  _MMIO(0x2350)
-#define PS_DEPTH_COUNT_UDW		_MMIO(0x2350 + 4)
-
-/* There are the 4 64-bit counter registers, one for each stream output */
-#define GEN7_SO_NUM_PRIMS_WRITTEN(n)		_MMIO(0x5200 + (n) * 8)
-#define GEN7_SO_NUM_PRIMS_WRITTEN_UDW(n)	_MMIO(0x5200 + (n) * 8 + 4)
-
-#define GEN7_SO_PRIM_STORAGE_NEEDED(n)		_MMIO(0x5240 + (n) * 8)
-#define GEN7_SO_PRIM_STORAGE_NEEDED_UDW(n)	_MMIO(0x5240 + (n) * 8 + 4)
-
-#define GEN7_3DPRIM_END_OFFSET          _MMIO(0x2420)
-#define GEN7_3DPRIM_START_VERTEX        _MMIO(0x2430)
-#define GEN7_3DPRIM_VERTEX_COUNT        _MMIO(0x2434)
-#define GEN7_3DPRIM_INSTANCE_COUNT      _MMIO(0x2438)
-#define GEN7_3DPRIM_START_INSTANCE      _MMIO(0x243C)
-#define GEN7_3DPRIM_BASE_VERTEX         _MMIO(0x2440)
-
-#define GEN7_GPGPU_DISPATCHDIMX         _MMIO(0x2500)
-#define GEN7_GPGPU_DISPATCHDIMY         _MMIO(0x2504)
-#define GEN7_GPGPU_DISPATCHDIMZ         _MMIO(0x2508)
-
-#define GEN12_SQCM		_MMIO(0x8724)
-#define   EN_32B_ACCESS		REG_BIT(30)
-
-/*
- * Flexible, Aggregate EU Counter Registers.
- * Note: these aren't contiguous
- */
-#define EU_PERF_CNTL0	    _MMIO(0xe458)
-#define EU_PERF_CNTL1	    _MMIO(0xe558)
-#define EU_PERF_CNTL2	    _MMIO(0xe658)
-#define EU_PERF_CNTL3	    _MMIO(0xe758)
-#define EU_PERF_CNTL4	    _MMIO(0xe45c)
-#define EU_PERF_CNTL5	    _MMIO(0xe55c)
-#define EU_PERF_CNTL6	    _MMIO(0xe65c)
-
-#define RT_CTRL			_MMIO(0xe530)
-#define  DIS_NULL_QUERY		REG_BIT(10)
-
-/* RPM unit config (Gen8+) */
-#define RPM_CONFIG0	    _MMIO(0x0D00)
-#define  GEN9_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_SHIFT	3
-#define  GEN9_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_MASK	(1 << GEN9_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_SHIFT)
-#define  GEN9_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_19_2_MHZ	0
-#define  GEN9_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_24_MHZ	1
-#define  GEN11_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_SHIFT	3
-#define  GEN11_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_MASK	(0x7 << GEN11_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_SHIFT)
-#define  GEN11_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_24_MHZ	0
-#define  GEN11_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_19_2_MHZ	1
-#define  GEN11_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_38_4_MHZ	2
-#define  GEN11_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_25_MHZ	3
-#define  GEN10_RPM_CONFIG0_CTC_SHIFT_PARAMETER_SHIFT	1
-#define  GEN10_RPM_CONFIG0_CTC_SHIFT_PARAMETER_MASK	(0x3 << GEN10_RPM_CONFIG0_CTC_SHIFT_PARAMETER_SHIFT)
-
-#define RPM_CONFIG1	    _MMIO(0x0D04)
-#define  GEN10_GT_NOA_ENABLE  (1 << 9)
-
-/* GPM unit config (Gen9+) */
-#define CTC_MODE			_MMIO(0xA26C)
-#define  CTC_SOURCE_PARAMETER_MASK 1
-#define  CTC_SOURCE_CRYSTAL_CLOCK	0
-#define  CTC_SOURCE_DIVIDE_LOGIC	1
-#define  CTC_SHIFT_PARAMETER_SHIFT	1
-#define  CTC_SHIFT_PARAMETER_MASK	(0x3 << CTC_SHIFT_PARAMETER_SHIFT)
-
-/* RCP unit config (Gen8+) */
-#define RCP_CONFIG	    _MMIO(0x0D08)
-
-#define MICRO_BP0_0	    _MMIO(0x9800)
-#define MICRO_BP0_2	    _MMIO(0x9804)
-#define MICRO_BP0_1	    _MMIO(0x9808)
-
-#define MICRO_BP1_0	    _MMIO(0x980C)
-#define MICRO_BP1_2	    _MMIO(0x9810)
-#define MICRO_BP1_1	    _MMIO(0x9814)
-
-#define MICRO_BP2_0	    _MMIO(0x9818)
-#define MICRO_BP2_2	    _MMIO(0x981C)
-#define MICRO_BP2_1	    _MMIO(0x9820)
-
-#define MICRO_BP3_0	    _MMIO(0x9824)
-#define MICRO_BP3_2	    _MMIO(0x9828)
-#define MICRO_BP3_1	    _MMIO(0x982C)
-
-#define MICRO_BP_TRIGGER		_MMIO(0x9830)
-#define MICRO_BP3_COUNT_STATUS01	_MMIO(0x9834)
-#define MICRO_BP3_COUNT_STATUS23	_MMIO(0x9838)
-#define MICRO_BP_FIRED_ARMED		_MMIO(0x983C)
-
-
 #define _GEN7_PIPEA_DE_LOAD_SL	0x70068
 #define _GEN7_PIPEB_DE_LOAD_SL	0x71068
 #define GEN7_PIPE_DE_LOAD_SL(pipe) _MMIO_PIPE(pipe, _GEN7_PIPEA_DE_LOAD_SL, _GEN7_PIPEB_DE_LOAD_SL)
@@ -1300,112 +1037,6 @@
 #define GEN7_MEDIA_MAX_REQ_COUNT	_MMIO(0x4070)
 #define GEN7_GFX_MAX_REQ_COUNT		_MMIO(0x4074)
 
-#define GAMTARBMODE		_MMIO(0x04a08)
-#define   ARB_MODE_BWGTLB_DISABLE (1 << 9)
-#define   ARB_MODE_SWIZZLE_BDW	(1 << 1)
-#define RENDER_HWS_PGA_GEN7	_MMIO(0x04080)
-
-#define _RING_FAULT_REG_RCS        0x4094
-#define _RING_FAULT_REG_VCS        0x4194
-#define _RING_FAULT_REG_BCS        0x4294
-#define _RING_FAULT_REG_VECS       0x4394
-#define RING_FAULT_REG(engine)     _MMIO(_PICK((engine)->class, \
-					       _RING_FAULT_REG_RCS, \
-					       _RING_FAULT_REG_VCS, \
-					       _RING_FAULT_REG_VECS, \
-					       _RING_FAULT_REG_BCS))
-#define GEN8_RING_FAULT_REG	_MMIO(0x4094)
-#define GEN12_RING_FAULT_REG	_MMIO(0xcec4)
-#define   GEN8_RING_FAULT_ENGINE_ID(x)	(((x) >> 12) & 0x7)
-#define   RING_FAULT_GTTSEL_MASK (1 << 11)
-#define   RING_FAULT_SRCID(x)	(((x) >> 3) & 0xff)
-#define   RING_FAULT_FAULT_TYPE(x) (((x) >> 1) & 0x3)
-#define   RING_FAULT_VALID	(1 << 0)
-#define DONE_REG		_MMIO(0x40b0)
-#define GEN12_GAM_DONE		_MMIO(0xcf68)
-#define GEN8_PRIVATE_PAT_LO	_MMIO(0x40e0)
-#define GEN8_PRIVATE_PAT_HI	_MMIO(0x40e0 + 4)
-#define GEN10_PAT_INDEX(index)	_MMIO(0x40e0 + (index) * 4)
-#define GEN12_PAT_INDEX(index)	_MMIO(0x4800 + (index) * 4)
-#define BSD_HWS_PGA_GEN7	_MMIO(0x04180)
-#define GEN12_GFX_CCS_AUX_NV	_MMIO(0x4208)
-#define GEN12_VD0_AUX_NV	_MMIO(0x4218)
-#define GEN12_VD1_AUX_NV	_MMIO(0x4228)
-#define GEN12_VD2_AUX_NV	_MMIO(0x4298)
-#define GEN12_VD3_AUX_NV	_MMIO(0x42A8)
-#define GEN12_VE0_AUX_NV	_MMIO(0x4238)
-#define GEN12_VE1_AUX_NV	_MMIO(0x42B8)
-#define   AUX_INV		REG_BIT(0)
-#define BLT_HWS_PGA_GEN7	_MMIO(0x04280)
-#define VEBOX_HWS_PGA_GEN7	_MMIO(0x04380)
-
-#define MISC_STATUS0		_MMIO(0xA500)
-#define MISC_STATUS1		_MMIO(0xA504)
-
-#define GEN7_TLB_RD_ADDR	_MMIO(0x4700)
-
-#define GEN9_GAMT_ECO_REG_RW_IA _MMIO(0x4ab0)
-#define   GAMT_ECO_ENABLE_IN_PLACE_DECOMPRESS	(1 << 18)
-
-#define GEN8_GAMW_ECO_DEV_RW_IA _MMIO(0x4080)
-#define   GAMW_ECO_ENABLE_64K_IPS_FIELD 0xF
-#define   GAMW_ECO_DEV_CTX_RELOAD_DISABLE	(1 << 7)
-
-#define GAMT_CHKN_BIT_REG	_MMIO(0x4ab8)
-#define   GAMT_CHKN_DISABLE_L3_COH_PIPE			(1 << 31)
-#define   GAMT_CHKN_DISABLE_DYNAMIC_CREDIT_SHARING	(1 << 28)
-#define   GAMT_CHKN_DISABLE_I2M_CYCLE_ON_WR_PORT	(1 << 24)
-
-#if 0
-#define PRB0_TAIL	_MMIO(0x2030)
-#define PRB0_HEAD	_MMIO(0x2034)
-#define PRB0_START	_MMIO(0x2038)
-#define PRB0_CTL	_MMIO(0x203c)
-#define PRB1_TAIL	_MMIO(0x2040) /* 915+ only */
-#define PRB1_HEAD	_MMIO(0x2044) /* 915+ only */
-#define PRB1_START	_MMIO(0x2048) /* 915+ only */
-#define PRB1_CTL	_MMIO(0x204c) /* 915+ only */
-#endif
-#define IPEIR_I965	_MMIO(0x2064)
-#define IPEHR_I965	_MMIO(0x2068)
-#define GEN7_SC_INSTDONE	_MMIO(0x7100)
-#define GEN12_SC_INSTDONE_EXTRA		_MMIO(0x7104)
-#define GEN12_SC_INSTDONE_EXTRA2	_MMIO(0x7108)
-#define GEN7_SAMPLER_INSTDONE	_MMIO(0xe160)
-#define GEN7_ROW_INSTDONE	_MMIO(0xe164)
-#define XEHPG_INSTDONE_GEOM_SVG		_MMIO(0x666c)
-#define MCFG_MCR_SELECTOR		_MMIO(0xfd0)
-#define SF_MCR_SELECTOR			_MMIO(0xfd8)
-#define GEN8_MCR_SELECTOR		_MMIO(0xfdc)
-#define   GEN8_MCR_SLICE(slice)		(((slice) & 3) << 26)
-#define   GEN8_MCR_SLICE_MASK		GEN8_MCR_SLICE(3)
-#define   GEN8_MCR_SUBSLICE(subslice)	(((subslice) & 3) << 24)
-#define   GEN8_MCR_SUBSLICE_MASK	GEN8_MCR_SUBSLICE(3)
-#define   GEN11_MCR_SLICE(slice)	(((slice) & 0xf) << 27)
-#define   GEN11_MCR_SLICE_MASK		GEN11_MCR_SLICE(0xf)
-#define   GEN11_MCR_SUBSLICE(subslice)	(((subslice) & 0x7) << 24)
-#define   GEN11_MCR_SUBSLICE_MASK	GEN11_MCR_SUBSLICE(0x7)
-/*
- * On GEN4, only the render ring INSTDONE exists and has a different
- * layout than the GEN7+ version.
- * The GEN2 counterpart of this register is GEN2_INSTDONE.
- */
-#define INSTPS		_MMIO(0x2070) /* 965+ only */
-#define GEN4_INSTDONE1	_MMIO(0x207c) /* 965+ only, aka INSTDONE_2 on SNB */
-#define ACTHD_I965	_MMIO(0x2074)
-#define HWS_PGA		_MMIO(0x2080)
-#define HWS_ADDRESS_MASK	0xfffff000
-#define HWS_START_ADDRESS_SHIFT	4
-#define PWRCTXA		_MMIO(0x2088) /* 965GM+ only */
-#define   PWRCTX_EN	(1 << 0)
-#define GEN2_INSTDONE	_MMIO(0x2090)
-#define NOPID		_MMIO(0x2094)
-#define HWSTAM		_MMIO(0x2098)
-
-#define VDBOX_CGCTL3F18(base)		_MMIO((base) + 0x3f18)
-#define   ALNUNIT_CLKGATE_DIS		REG_BIT(13)
-
-#define ERROR_GEN6	_MMIO(0x40a0)
 #define GEN7_ERR_INT	_MMIO(0x44040)
 #define   ERR_INT_POISON		(1 << 31)
 #define   ERR_INT_MMIO_UNCLAIMED	(1 << 13)
@@ -1418,15 +1049,6 @@
 #define   ERR_INT_FIFO_UNDERRUN_A	(1 << 0)
 #define   ERR_INT_FIFO_UNDERRUN(pipe)	(1 << ((pipe) * 3))
 
-#define GEN8_FAULT_TLB_DATA0		_MMIO(0x4b10)
-#define GEN8_FAULT_TLB_DATA1		_MMIO(0x4b14)
-#define GEN12_FAULT_TLB_DATA0		_MMIO(0xceb8)
-#define GEN12_FAULT_TLB_DATA1		_MMIO(0xcebc)
-#define   FAULT_VA_HIGH_BITS		(0xf << 0)
-#define   FAULT_GTT_SEL			(1 << 4)
-
-#define GEN12_AUX_ERR_DBG		_MMIO(0x43f4)
-
 #define FPGA_DBG		_MMIO(0x42300)
 #define   FPGA_DBG_RM_NOCLAIM	REG_BIT(31)
 
@@ -1454,78 +1076,6 @@
 #define   DERRMR_PIPEC_VBLANK		(1 << 21)
 #define   DERRMR_PIPEC_HBLANK		(1 << 22)
 
-
-/* GM45+ chicken bits -- debug workaround bits that may be required
- * for various sorts of correct behavior.  The top 16 bits of each are
- * the enables for writing to the corresponding low bit.
- */
-#define _3D_CHICKEN	_MMIO(0x2084)
-#define  _3D_CHICKEN_HIZ_PLANE_DISABLE_MSAA_4X_SNB	(1 << 10)
-#define _3D_CHICKEN2	_MMIO(0x208c)
-
-#define FF_SLICE_CHICKEN	_MMIO(0x2088)
-#define  FF_SLICE_CHICKEN_CL_PROVOKING_VERTEX_FIX	(1 << 1)
-
-/* Disables pipelining of read flushes past the SF-WIZ interface.
- * Required on all Ironlake steppings according to the B-Spec, but the
- * particular danger of not doing so is not specified.
- */
-# define _3D_CHICKEN2_WM_READ_PIPELINED			(1 << 14)
-#define _3D_CHICKEN3	_MMIO(0x2090)
-#define  _3D_CHICKEN_SF_PROVOKING_VERTEX_FIX		(1 << 12)
-#define  _3D_CHICKEN_SF_DISABLE_OBJEND_CULL		(1 << 10)
-#define  _3D_CHICKEN3_AA_LINE_QUALITY_FIX_ENABLE	(1 << 5)
-#define  _3D_CHICKEN3_SF_DISABLE_FASTCLIP_CULL		(1 << 5)
-#define  _3D_CHICKEN_SDE_LIMIT_FIFO_POLY_DEPTH(x)	((x) << 1) /* gen8+ */
-#define  _3D_CHICKEN3_SF_DISABLE_PIPELINED_ATTR_FETCH	(1 << 1) /* gen6 */
-
-#define MI_MODE		_MMIO(0x209c)
-# define VS_TIMER_DISPATCH				(1 << 6)
-# define MI_FLUSH_ENABLE				(1 << 12)
-# define TGL_NESTED_BB_EN				(1 << 12)
-# define ASYNC_FLIP_PERF_DISABLE			(1 << 14)
-# define MODE_IDLE					(1 << 9)
-# define STOP_RING					(1 << 8)
-
-#define GEN6_GT_MODE	_MMIO(0x20d0)
-#define GEN7_GT_MODE	_MMIO(0x7008)
-#define   GEN6_WIZ_HASHING(hi, lo)			(((hi) << 9) | ((lo) << 7))
-#define   GEN6_WIZ_HASHING_8x8				GEN6_WIZ_HASHING(0, 0)
-#define   GEN6_WIZ_HASHING_8x4				GEN6_WIZ_HASHING(0, 1)
-#define   GEN6_WIZ_HASHING_16x4				GEN6_WIZ_HASHING(1, 0)
-#define   GEN6_WIZ_HASHING_MASK				GEN6_WIZ_HASHING(1, 1)
-#define   GEN6_TD_FOUR_ROW_DISPATCH_DISABLE		(1 << 5)
-#define   GEN9_IZ_HASHING_MASK(slice)			(0x3 << ((slice) * 2))
-#define   GEN9_IZ_HASHING(slice, val)			((val) << ((slice) * 2))
-
-/* chicken reg for WaConextSwitchWithConcurrentTLBInvalidate */
-#define GEN9_CSFE_CHICKEN1_RCS _MMIO(0x20D4)
-#define   GEN9_PREEMPT_GPGPU_SYNC_SWITCH_DISABLE (1 << 2)
-#define   GEN11_ENABLE_32_PLANE_MODE (1 << 7)
-
-#define SCCGCTL94DC		_MMIO(0x94dc)
-#define   CG3DDISURB		REG_BIT(14)
-
-#define MLTICTXCTL		_MMIO(0xb170)
-#define   TDONRENDER		REG_BIT(2)
-
-#define L3SQCREG1_CCS0		_MMIO(0xb200)
-#define   FLUSHALLNONCOH	REG_BIT(5)
-
-/* WaClearTdlStateAckDirtyBits */
-#define GEN8_STATE_ACK		_MMIO(0x20F0)
-#define GEN9_STATE_ACK_SLICE1	_MMIO(0x20F8)
-#define GEN9_STATE_ACK_SLICE2	_MMIO(0x2100)
-#define   GEN9_STATE_ACK_TDL0 (1 << 12)
-#define   GEN9_STATE_ACK_TDL1 (1 << 13)
-#define   GEN9_STATE_ACK_TDL2 (1 << 14)
-#define   GEN9_STATE_ACK_TDL3 (1 << 15)
-#define   GEN9_SUBSLICE_TDL_ACK_BITS \
-	(GEN9_STATE_ACK_TDL3 | GEN9_STATE_ACK_TDL2 | \
-	 GEN9_STATE_ACK_TDL1 | GEN9_STATE_ACK_TDL0)
-
-#define GFX_MODE	_MMIO(0x2520)
-
 #define VLV_GU_CTL0	_MMIO(VLV_DISPLAY_BASE + 0x2030)
 #define VLV_GU_CTL1	_MMIO(VLV_DISPLAY_BASE + 0x2034)
 #define SCPD0		_MMIO(0x209c) /* 915+ only */
@@ -1691,112 +1241,6 @@
 #define   MI_AGPBUSY_INT_EN			(1 << 1) /* 85x only */
 #define   MI_AGPBUSY_830_MODE			(1 << 0) /* 85x only */
 
-#define CACHE_MODE_0	_MMIO(0x2120) /* 915+ only */
-#define   CM0_PIPELINED_RENDER_FLUSH_DISABLE (1 << 8)
-#define   CM0_IZ_OPT_DISABLE      (1 << 6)
-#define   CM0_ZR_OPT_DISABLE      (1 << 5)
-#define	  CM0_STC_EVICT_DISABLE_LRA_SNB	(1 << 5)
-#define   CM0_DEPTH_EVICT_DISABLE (1 << 4)
-#define   CM0_COLOR_EVICT_DISABLE (1 << 3)
-#define   CM0_DEPTH_WRITE_DISABLE (1 << 1)
-#define   CM0_RC_OP_FLUSH_DISABLE (1 << 0)
-#define GFX_FLSH_CNTL	_MMIO(0x2170) /* 915+ only */
-#define GFX_FLSH_CNTL_GEN6	_MMIO(0x101008)
-#define   GFX_FLSH_CNTL_EN	(1 << 0)
-
-#define CACHE_MODE_0_GEN7	_MMIO(0x7000) /* IVB+ */
-#define RC_OP_FLUSH_ENABLE (1 << 0)
-#define   HIZ_RAW_STALL_OPT_DISABLE (1 << 2)
-#define CACHE_MODE_1		_MMIO(0x7004) /* IVB+ */
-#define   PIXEL_SUBSPAN_COLLECT_OPT_DISABLE	(1 << 6)
-#define   GEN8_4x4_STC_OPTIMIZATION_DISABLE	(1 << 6)
-#define   GEN9_PARTIAL_RESOLVE_IN_VC_DISABLE	(1 << 1)
-
-#define GEN6_RCS_PWR_FSM _MMIO(0x22ac)
-#define GEN9_RCS_FE_FSM2 _MMIO(0x22a4)
-
-#define GEN10_CACHE_MODE_SS			_MMIO(0xe420)
-#define   ENABLE_PREFETCH_INTO_IC		REG_BIT(3)
-#define   FLOAT_BLEND_OPTIMIZATION_ENABLE	REG_BIT(4)
-
-/* Fuse readout registers for GT */
-#define HSW_PAVP_FUSE1			_MMIO(0x911C)
-#define   XEHP_SFC_ENABLE_MASK		REG_GENMASK(27, 24)
-#define   HSW_F1_EU_DIS_MASK		REG_GENMASK(17, 16)
-#define   HSW_F1_EU_DIS_10EUS		0
-#define   HSW_F1_EU_DIS_8EUS		1
-#define   HSW_F1_EU_DIS_6EUS		2
-
-#define CHV_FUSE_GT			_MMIO(VLV_DISPLAY_BASE + 0x2168)
-#define   CHV_FGT_DISABLE_SS0		(1 << 10)
-#define   CHV_FGT_DISABLE_SS1		(1 << 11)
-#define   CHV_FGT_EU_DIS_SS0_R0_SHIFT	16
-#define   CHV_FGT_EU_DIS_SS0_R0_MASK	(0xf << CHV_FGT_EU_DIS_SS0_R0_SHIFT)
-#define   CHV_FGT_EU_DIS_SS0_R1_SHIFT	20
-#define   CHV_FGT_EU_DIS_SS0_R1_MASK	(0xf << CHV_FGT_EU_DIS_SS0_R1_SHIFT)
-#define   CHV_FGT_EU_DIS_SS1_R0_SHIFT	24
-#define   CHV_FGT_EU_DIS_SS1_R0_MASK	(0xf << CHV_FGT_EU_DIS_SS1_R0_SHIFT)
-#define   CHV_FGT_EU_DIS_SS1_R1_SHIFT	28
-#define   CHV_FGT_EU_DIS_SS1_R1_MASK	(0xf << CHV_FGT_EU_DIS_SS1_R1_SHIFT)
-
-#define GEN8_FUSE2			_MMIO(0x9120)
-#define   GEN8_F2_SS_DIS_SHIFT		21
-#define   GEN8_F2_SS_DIS_MASK		(0x7 << GEN8_F2_SS_DIS_SHIFT)
-#define   GEN8_F2_S_ENA_SHIFT		25
-#define   GEN8_F2_S_ENA_MASK		(0x7 << GEN8_F2_S_ENA_SHIFT)
-
-#define   GEN9_F2_SS_DIS_SHIFT		20
-#define   GEN9_F2_SS_DIS_MASK		(0xf << GEN9_F2_SS_DIS_SHIFT)
-
-#define   GEN10_F2_S_ENA_SHIFT		22
-#define   GEN10_F2_S_ENA_MASK		(0x3f << GEN10_F2_S_ENA_SHIFT)
-#define   GEN10_F2_SS_DIS_SHIFT		18
-#define   GEN10_F2_SS_DIS_MASK		(0xf << GEN10_F2_SS_DIS_SHIFT)
-
-#define	GEN10_MIRROR_FUSE3		_MMIO(0x9118)
-#define GEN10_L3BANK_PAIR_COUNT     4
-#define GEN10_L3BANK_MASK   0x0F
-/* on Xe_HP the same fuses indicates mslices instead of L3 banks */
-#define GEN12_MAX_MSLICES 4
-#define GEN12_MEML3_EN_MASK 0x0F
-
-#define GEN8_EU_DISABLE0		_MMIO(0x9134)
-#define   GEN8_EU_DIS0_S0_MASK		0xffffff
-#define   GEN8_EU_DIS0_S1_SHIFT		24
-#define   GEN8_EU_DIS0_S1_MASK		(0xff << GEN8_EU_DIS0_S1_SHIFT)
-
-#define GEN8_EU_DISABLE1		_MMIO(0x9138)
-#define   GEN8_EU_DIS1_S1_MASK		0xffff
-#define   GEN8_EU_DIS1_S2_SHIFT		16
-#define   GEN8_EU_DIS1_S2_MASK		(0xffff << GEN8_EU_DIS1_S2_SHIFT)
-
-#define GEN8_EU_DISABLE2		_MMIO(0x913c)
-#define   GEN8_EU_DIS2_S2_MASK		0xff
-
-#define GEN9_EU_DISABLE(slice)		_MMIO(0x9134 + (slice) * 0x4)
-
-#define GEN10_EU_DISABLE3		_MMIO(0x9140)
-#define   GEN10_EU_DIS_SS_MASK		0xff
-
-#define GEN11_GT_VEBOX_VDBOX_DISABLE	_MMIO(0x9140)
-#define   GEN11_GT_VDBOX_DISABLE_MASK	0xff
-#define   GEN11_GT_VEBOX_DISABLE_SHIFT	16
-#define   GEN11_GT_VEBOX_DISABLE_MASK	(0x0f << GEN11_GT_VEBOX_DISABLE_SHIFT)
-
-#define GEN11_EU_DISABLE _MMIO(0x9134)
-#define GEN11_EU_DIS_MASK 0xFF
-
-#define GEN11_GT_SLICE_ENABLE _MMIO(0x9138)
-#define GEN11_GT_S_ENA_MASK 0xFF
-
-#define GEN11_GT_SUBSLICE_DISABLE _MMIO(0x913C)
-
-#define GEN12_GT_GEOMETRY_DSS_ENABLE _MMIO(0x913C)
-#define GEN12_GT_COMPUTE_DSS_ENABLE _MMIO(0x9144)
-
-#define XEHP_EU_ENABLE			_MMIO(0x9134)
-#define XEHP_EU_ENA_MASK		0xFF
-
 /* On modern GEN architectures interrupt control consists of two sets
  * of registers. The first set pertains to the ring generating the
  * interrupt. The second control is for the functional block generating the
@@ -2530,227 +1974,10 @@
 #define   TSFS_SLOPE_SHIFT	8
 #define   TSFS_INTR_MASK	0x000000ff
 
-#define CRSTANDVID		_MMIO(0x11100)
-#define PXVFREQ(fstart)		_MMIO(0x11110 + (fstart) * 4)  /* P[0-15]VIDFREQ (0x1114c) (Ironlake) */
-#define   PXVFREQ_PX_MASK	0x7f000000
-#define   PXVFREQ_PX_SHIFT	24
-#define VIDFREQ_BASE		_MMIO(0x11110)
-#define VIDFREQ1		_MMIO(0x11110) /* VIDFREQ1-4 (0x1111c) (Cantiga) */
-#define VIDFREQ2		_MMIO(0x11114)
-#define VIDFREQ3		_MMIO(0x11118)
-#define VIDFREQ4		_MMIO(0x1111c)
-#define   VIDFREQ_P0_MASK	0x1f000000
-#define   VIDFREQ_P0_SHIFT	24
-#define   VIDFREQ_P0_CSCLK_MASK	0x00f00000
-#define   VIDFREQ_P0_CSCLK_SHIFT 20
-#define   VIDFREQ_P0_CRCLK_MASK	0x000f0000
-#define   VIDFREQ_P0_CRCLK_SHIFT 16
-#define   VIDFREQ_P1_MASK	0x00001f00
-#define   VIDFREQ_P1_SHIFT	8
-#define   VIDFREQ_P1_CSCLK_MASK	0x000000f0
-#define   VIDFREQ_P1_CSCLK_SHIFT 4
-#define   VIDFREQ_P1_CRCLK_MASK	0x0000000f
-#define INTTOEXT_BASE_ILK	_MMIO(0x11300)
-#define INTTOEXT_BASE		_MMIO(0x11120) /* INTTOEXT1-8 (0x1113c) */
-#define   INTTOEXT_MAP3_SHIFT	24
-#define   INTTOEXT_MAP3_MASK	(0x1f << INTTOEXT_MAP3_SHIFT)
-#define   INTTOEXT_MAP2_SHIFT	16
-#define   INTTOEXT_MAP2_MASK	(0x1f << INTTOEXT_MAP2_SHIFT)
-#define   INTTOEXT_MAP1_SHIFT	8
-#define   INTTOEXT_MAP1_MASK	(0x1f << INTTOEXT_MAP1_SHIFT)
-#define   INTTOEXT_MAP0_SHIFT	0
-#define   INTTOEXT_MAP0_MASK	(0x1f << INTTOEXT_MAP0_SHIFT)
-#define MEMSWCTL		_MMIO(0x11170) /* Ironlake only */
-#define   MEMCTL_CMD_MASK	0xe000
-#define   MEMCTL_CMD_SHIFT	13
-#define   MEMCTL_CMD_RCLK_OFF	0
-#define   MEMCTL_CMD_RCLK_ON	1
-#define   MEMCTL_CMD_CHFREQ	2
-#define   MEMCTL_CMD_CHVID	3
-#define   MEMCTL_CMD_VMMOFF	4
-#define   MEMCTL_CMD_VMMON	5
-#define   MEMCTL_CMD_STS	(1 << 12) /* write 1 triggers command, clears
-					   when command complete */
-#define   MEMCTL_FREQ_MASK	0x0f00 /* jitter, from 0-15 */
-#define   MEMCTL_FREQ_SHIFT	8
-#define   MEMCTL_SFCAVM		(1 << 7)
-#define   MEMCTL_TGT_VID_MASK	0x007f
-#define MEMIHYST		_MMIO(0x1117c)
-#define MEMINTREN		_MMIO(0x11180) /* 16 bits */
-#define   MEMINT_RSEXIT_EN	(1 << 8)
-#define   MEMINT_CX_SUPR_EN	(1 << 7)
-#define   MEMINT_CONT_BUSY_EN	(1 << 6)
-#define   MEMINT_AVG_BUSY_EN	(1 << 5)
-#define   MEMINT_EVAL_CHG_EN	(1 << 4)
-#define   MEMINT_MON_IDLE_EN	(1 << 3)
-#define   MEMINT_UP_EVAL_EN	(1 << 2)
-#define   MEMINT_DOWN_EVAL_EN	(1 << 1)
-#define   MEMINT_SW_CMD_EN	(1 << 0)
-#define MEMINTRSTR		_MMIO(0x11182) /* 16 bits */
-#define   MEM_RSEXIT_MASK	0xc000
-#define   MEM_RSEXIT_SHIFT	14
-#define   MEM_CONT_BUSY_MASK	0x3000
-#define   MEM_CONT_BUSY_SHIFT	12
-#define   MEM_AVG_BUSY_MASK	0x0c00
-#define   MEM_AVG_BUSY_SHIFT	10
-#define   MEM_EVAL_CHG_MASK	0x0300
-#define   MEM_EVAL_BUSY_SHIFT	8
-#define   MEM_MON_IDLE_MASK	0x00c0
-#define   MEM_MON_IDLE_SHIFT	6
-#define   MEM_UP_EVAL_MASK	0x0030
-#define   MEM_UP_EVAL_SHIFT	4
-#define   MEM_DOWN_EVAL_MASK	0x000c
-#define   MEM_DOWN_EVAL_SHIFT	2
-#define   MEM_SW_CMD_MASK	0x0003
-#define   MEM_INT_STEER_GFX	0
-#define   MEM_INT_STEER_CMR	1
-#define   MEM_INT_STEER_SMI	2
-#define   MEM_INT_STEER_SCI	3
-#define MEMINTRSTS		_MMIO(0x11184)
-#define   MEMINT_RSEXIT		(1 << 7)
-#define   MEMINT_CONT_BUSY	(1 << 6)
-#define   MEMINT_AVG_BUSY	(1 << 5)
-#define   MEMINT_EVAL_CHG	(1 << 4)
-#define   MEMINT_MON_IDLE	(1 << 3)
-#define   MEMINT_UP_EVAL	(1 << 2)
-#define   MEMINT_DOWN_EVAL	(1 << 1)
-#define   MEMINT_SW_CMD		(1 << 0)
-#define MEMMODECTL		_MMIO(0x11190)
-#define   MEMMODE_BOOST_EN	(1 << 31)
-#define   MEMMODE_BOOST_FREQ_MASK 0x0f000000 /* jitter for boost, 0-15 */
-#define   MEMMODE_BOOST_FREQ_SHIFT 24
-#define   MEMMODE_IDLE_MODE_MASK 0x00030000
-#define   MEMMODE_IDLE_MODE_SHIFT 16
-#define   MEMMODE_IDLE_MODE_EVAL 0
-#define   MEMMODE_IDLE_MODE_CONT 1
-#define   MEMMODE_HWIDLE_EN	(1 << 15)
-#define   MEMMODE_SWMODE_EN	(1 << 14)
-#define   MEMMODE_RCLK_GATE	(1 << 13)
-#define   MEMMODE_HW_UPDATE	(1 << 12)
-#define   MEMMODE_FSTART_MASK	0x00000f00 /* starting jitter, 0-15 */
-#define   MEMMODE_FSTART_SHIFT	8
-#define   MEMMODE_FMAX_MASK	0x000000f0 /* max jitter, 0-15 */
-#define   MEMMODE_FMAX_SHIFT	4
-#define   MEMMODE_FMIN_MASK	0x0000000f /* min jitter, 0-15 */
-#define RCBMAXAVG		_MMIO(0x1119c)
-#define MEMSWCTL2		_MMIO(0x1119e) /* Cantiga only */
-#define   SWMEMCMD_RENDER_OFF	(0 << 13)
-#define   SWMEMCMD_RENDER_ON	(1 << 13)
-#define   SWMEMCMD_SWFREQ	(2 << 13)
-#define   SWMEMCMD_TARVID	(3 << 13)
-#define   SWMEMCMD_VRM_OFF	(4 << 13)
-#define   SWMEMCMD_VRM_ON	(5 << 13)
-#define   CMDSTS		(1 << 12)
-#define   SFCAVM		(1 << 11)
-#define   SWFREQ_MASK		0x0380 /* P0-7 */
-#define   SWFREQ_SHIFT		7
-#define   TARVID_MASK		0x001f
-#define MEMSTAT_CTG		_MMIO(0x111a0)
-#define RCBMINAVG		_MMIO(0x111a0)
-#define RCUPEI			_MMIO(0x111b0)
-#define RCDNEI			_MMIO(0x111b4)
-#define RSTDBYCTL		_MMIO(0x111b8)
-#define   RS1EN			(1 << 31)
-#define   RS2EN			(1 << 30)
-#define   RS3EN			(1 << 29)
-#define   D3RS3EN		(1 << 28) /* Display D3 imlies RS3 */
-#define   SWPROMORSX		(1 << 27) /* RSx promotion timers ignored */
-#define   RCWAKERW		(1 << 26) /* Resetwarn from PCH causes wakeup */
-#define   DPRSLPVREN		(1 << 25) /* Fast voltage ramp enable */
-#define   GFXTGHYST		(1 << 24) /* Hysteresis to allow trunk gating */
-#define   RCX_SW_EXIT		(1 << 23) /* Leave RSx and prevent re-entry */
-#define   RSX_STATUS_MASK	(7 << 20)
-#define   RSX_STATUS_ON		(0 << 20)
-#define   RSX_STATUS_RC1	(1 << 20)
-#define   RSX_STATUS_RC1E	(2 << 20)
-#define   RSX_STATUS_RS1	(3 << 20)
-#define   RSX_STATUS_RS2	(4 << 20) /* aka rc6 */
-#define   RSX_STATUS_RSVD	(5 << 20) /* deep rc6 unsupported on ilk */
-#define   RSX_STATUS_RS3	(6 << 20) /* rs3 unsupported on ilk */
-#define   RSX_STATUS_RSVD2	(7 << 20)
-#define   UWRCRSXE		(1 << 19) /* wake counter limit prevents rsx */
-#define   RSCRP			(1 << 18) /* rs requests control on rs1/2 reqs */
-#define   JRSC			(1 << 17) /* rsx coupled to cpu c-state */
-#define   RS2INC0		(1 << 16) /* allow rs2 in cpu c0 */
-#define   RS1CONTSAV_MASK	(3 << 14)
-#define   RS1CONTSAV_NO_RS1	(0 << 14) /* rs1 doesn't save/restore context */
-#define   RS1CONTSAV_RSVD	(1 << 14)
-#define   RS1CONTSAV_SAVE_RS1	(2 << 14) /* rs1 saves context */
-#define   RS1CONTSAV_FULL_RS1	(3 << 14) /* rs1 saves and restores context */
-#define   NORMSLEXLAT_MASK	(3 << 12)
-#define   SLOW_RS123		(0 << 12)
-#define   SLOW_RS23		(1 << 12)
-#define   SLOW_RS3		(2 << 12)
-#define   NORMAL_RS123		(3 << 12)
-#define   RCMODE_TIMEOUT	(1 << 11) /* 0 is eval interval method */
-#define   IMPROMOEN		(1 << 10) /* promo is immediate or delayed until next idle interval (only for timeout method above) */
-#define   RCENTSYNC		(1 << 9) /* rs coupled to cpu c-state (3/6/7) */
-#define   STATELOCK		(1 << 7) /* locked to rs_cstate if 0 */
-#define   RS_CSTATE_MASK	(3 << 4)
-#define   RS_CSTATE_C367_RS1	(0 << 4)
-#define   RS_CSTATE_C36_RS1_C7_RS2 (1 << 4)
-#define   RS_CSTATE_RSVD	(2 << 4)
-#define   RS_CSTATE_C367_RS2	(3 << 4)
-#define   REDSAVES		(1 << 3) /* no context save if was idle during rs0 */
-#define   REDRESTORES		(1 << 2) /* no restore if was idle during rs0 */
-#define VIDCTL			_MMIO(0x111c0)
-#define VIDSTS			_MMIO(0x111c8)
-#define VIDSTART		_MMIO(0x111cc) /* 8 bits */
-#define MEMSTAT_ILK		_MMIO(0x111f8)
-#define   MEMSTAT_VID_MASK	0x7f00
-#define   MEMSTAT_VID_SHIFT	8
-#define   MEMSTAT_PSTATE_MASK	0x00f8
-#define   MEMSTAT_PSTATE_SHIFT  3
-#define   MEMSTAT_MON_ACTV	(1 << 2)
-#define   MEMSTAT_SRC_CTL_MASK	0x0003
-#define   MEMSTAT_SRC_CTL_CORE	0
-#define   MEMSTAT_SRC_CTL_TRB	1
-#define   MEMSTAT_SRC_CTL_THM	2
-#define   MEMSTAT_SRC_CTL_STDBY 3
-#define RCPREVBSYTUPAVG		_MMIO(0x113b8)
-#define RCPREVBSYTDNAVG		_MMIO(0x113bc)
-#define PMMISC			_MMIO(0x11214)
-#define   MCPPCE_EN		(1 << 0) /* enable PM_MSG from PCH->MPC */
-#define SDEW			_MMIO(0x1124c)
-#define CSIEW0			_MMIO(0x11250)
-#define CSIEW1			_MMIO(0x11254)
-#define CSIEW2			_MMIO(0x11258)
-#define PEW(i)			_MMIO(0x1125c + (i) * 4) /* 5 registers */
-#define DEW(i)			_MMIO(0x11270 + (i) * 4) /* 3 registers */
-#define MCHAFE			_MMIO(0x112c0)
-#define CSIEC			_MMIO(0x112e0)
-#define DMIEC			_MMIO(0x112e4)
-#define DDREC			_MMIO(0x112e8)
-#define PEG0EC			_MMIO(0x112ec)
-#define PEG1EC			_MMIO(0x112f0)
-#define GFXEC			_MMIO(0x112f4)
-#define RPPREVBSYTUPAVG		_MMIO(0x113b8)
-#define RPPREVBSYTDNAVG		_MMIO(0x113bc)
-#define ECR			_MMIO(0x11600)
-#define   ECR_GPFE		(1 << 31)
-#define   ECR_IMONE		(1 << 30)
-#define   ECR_CAP_MASK		0x0000001f /* Event range, 0-31 */
-#define OGW0			_MMIO(0x11608)
-#define OGW1			_MMIO(0x1160c)
-#define EG0			_MMIO(0x11610)
-#define EG1			_MMIO(0x11614)
-#define EG2			_MMIO(0x11618)
-#define EG3			_MMIO(0x1161c)
-#define EG4			_MMIO(0x11620)
-#define EG5			_MMIO(0x11624)
-#define EG6			_MMIO(0x11628)
-#define EG7			_MMIO(0x1162c)
-#define PXW(i)			_MMIO(0x11664 + (i) * 4) /* 4 registers */
-#define PXWL(i)			_MMIO(0x11680 + (i) * 8) /* 8 registers */
-#define LCFUSE02		_MMIO(0x116c0)
-#define   LCFUSE_HIV_MASK	0x000000ff
 #define CSIPLL0			_MMIO(0x12c10)
 #define DDRMPLL1		_MMIO(0X12c20)
 #define PEG_BAND_GAP_DATA	_MMIO(0x14d68)
 
-#define GEN6_GT_THREAD_STATUS_REG _MMIO(0x13805c)
-#define GEN6_GT_THREAD_STATUS_CORE_MASK 0x7
-
 #define GEN6_GT_PERF_STATUS	_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5948)
 #define BXT_GT_PERF_STATUS      _MMIO(MCHBAR_MIRROR_BASE_SNB + 0x7070)
 #define GEN6_RP_STATE_LIMITS	_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5994)
@@ -2762,77 +1989,6 @@
 #define GEN9_RP_STATE_LIMITS	_MMIO(0x138148)
 #define XEHPSDV_RP_STATE_CAP	_MMIO(0x250014)
 
-/*
- * Logical Context regs
- */
-/*
- * Notes on SNB/IVB/VLV context size:
- * - Power context is saved elsewhere (LLC or stolen)
- * - Ring/execlist context is saved on SNB, not on IVB
- * - Extended context size already includes render context size
- * - We always need to follow the extended context size.
- *   SNB BSpec has comments indicating that we should use the
- *   render context size instead if execlists are disabled, but
- *   based on empirical testing that's just nonsense.
- * - Pipelined/VF state is saved on SNB/IVB respectively
- * - GT1 size just indicates how much of render context
- *   doesn't need saving on GT1
- */
-#define CXT_SIZE		_MMIO(0x21a0)
-#define GEN6_CXT_POWER_SIZE(cxt_reg)	(((cxt_reg) >> 24) & 0x3f)
-#define GEN6_CXT_RING_SIZE(cxt_reg)	(((cxt_reg) >> 18) & 0x3f)
-#define GEN6_CXT_RENDER_SIZE(cxt_reg)	(((cxt_reg) >> 12) & 0x3f)
-#define GEN6_CXT_EXTENDED_SIZE(cxt_reg)	(((cxt_reg) >> 6) & 0x3f)
-#define GEN6_CXT_PIPELINE_SIZE(cxt_reg)	(((cxt_reg) >> 0) & 0x3f)
-#define GEN6_CXT_TOTAL_SIZE(cxt_reg)	(GEN6_CXT_RING_SIZE(cxt_reg) + \
-					GEN6_CXT_EXTENDED_SIZE(cxt_reg) + \
-					GEN6_CXT_PIPELINE_SIZE(cxt_reg))
-#define GEN7_CXT_SIZE		_MMIO(0x21a8)
-#define GEN7_CXT_POWER_SIZE(ctx_reg)	(((ctx_reg) >> 25) & 0x7f)
-#define GEN7_CXT_RING_SIZE(ctx_reg)	(((ctx_reg) >> 22) & 0x7)
-#define GEN7_CXT_RENDER_SIZE(ctx_reg)	(((ctx_reg) >> 16) & 0x3f)
-#define GEN7_CXT_EXTENDED_SIZE(ctx_reg)	(((ctx_reg) >> 9) & 0x7f)
-#define GEN7_CXT_GT1_SIZE(ctx_reg)	(((ctx_reg) >> 6) & 0x7)
-#define GEN7_CXT_VFSTATE_SIZE(ctx_reg)	(((ctx_reg) >> 0) & 0x3f)
-#define GEN7_CXT_TOTAL_SIZE(ctx_reg)	(GEN7_CXT_EXTENDED_SIZE(ctx_reg) + \
-					 GEN7_CXT_VFSTATE_SIZE(ctx_reg))
-
-enum {
-	INTEL_ADVANCED_CONTEXT = 0,
-	INTEL_LEGACY_32B_CONTEXT,
-	INTEL_ADVANCED_AD_CONTEXT,
-	INTEL_LEGACY_64B_CONTEXT
-};
-
-enum {
-	FAULT_AND_HANG = 0,
-	FAULT_AND_HALT, /* Debug only */
-	FAULT_AND_STREAM,
-	FAULT_AND_CONTINUE /* Unsupported */
-};
-
-#define CTX_GTT_ADDRESS_MASK GENMASK(31, 12)
-#define GEN8_CTX_VALID (1 << 0)
-#define GEN8_CTX_FORCE_PD_RESTORE (1 << 1)
-#define GEN8_CTX_FORCE_RESTORE (1 << 2)
-#define GEN8_CTX_L3LLC_COHERENT (1 << 5)
-#define GEN8_CTX_PRIVILEGE (1 << 8)
-#define GEN8_CTX_ADDRESSING_MODE_SHIFT 3
-
-#define GEN8_CTX_ID_SHIFT 32
-#define GEN8_CTX_ID_WIDTH 21
-#define GEN11_SW_CTX_ID_SHIFT 37
-#define GEN11_SW_CTX_ID_WIDTH 11
-#define GEN11_ENGINE_CLASS_SHIFT 61
-#define GEN11_ENGINE_CLASS_WIDTH 3
-#define GEN11_ENGINE_INSTANCE_SHIFT 48
-#define GEN11_ENGINE_INSTANCE_WIDTH 6
-
-#define XEHP_SW_CTX_ID_SHIFT 39
-#define XEHP_SW_CTX_ID_WIDTH 16
-#define XEHP_SW_COUNTER_SHIFT 58
-#define XEHP_SW_COUNTER_WIDTH 6
-
 #define CHV_CLK_CTL1			_MMIO(0x101100)
 #define VLV_CLK_CTL2			_MMIO(0x101104)
 #define   CLK_CTL2_CZCOUNT_30NS_SHIFT	28
@@ -2883,75 +2039,6 @@ enum {
 #define CLKGATE_DIS_PSL(pipe) \
 	_MMIO_PIPE(pipe, _CLKGATE_DIS_PSL_A, _CLKGATE_DIS_PSL_B)
 
-/*
- * GEN10 clock gating regs
- */
-
-#define UNSLCGCTL9440			_MMIO(0x9440)
-#define   GAMTLBOACS_CLKGATE_DIS	REG_BIT(28)
-#define   GAMTLBVDBOX5_CLKGATE_DIS	REG_BIT(27)
-#define   GAMTLBVDBOX6_CLKGATE_DIS	REG_BIT(26)
-#define   GAMTLBVDBOX3_CLKGATE_DIS	REG_BIT(24)
-#define   GAMTLBVDBOX4_CLKGATE_DIS	REG_BIT(23)
-#define   GAMTLBVDBOX7_CLKGATE_DIS	REG_BIT(22)
-#define   GAMTLBVDBOX2_CLKGATE_DIS	REG_BIT(21)
-#define   GAMTLBVDBOX0_CLKGATE_DIS	REG_BIT(17)
-#define   GAMTLBKCR_CLKGATE_DIS		REG_BIT(16)
-#define   GAMTLBGUC_CLKGATE_DIS		REG_BIT(15)
-#define   GAMTLBBLT_CLKGATE_DIS		REG_BIT(14)
-#define   GAMTLBVDBOX1_CLKGATE_DIS	REG_BIT(6)
-
-#define UNSLCGCTL9444			_MMIO(0x9444)
-#define   GAMTLBGFXA0_CLKGATE_DIS	REG_BIT(30)
-#define   GAMTLBGFXA1_CLKGATE_DIS	REG_BIT(29)
-#define   GAMTLBCOMPA0_CLKGATE_DIS	REG_BIT(28)
-#define   GAMTLBCOMPA1_CLKGATE_DIS	REG_BIT(27)
-#define   GAMTLBCOMPB0_CLKGATE_DIS	REG_BIT(26)
-#define   GAMTLBCOMPB1_CLKGATE_DIS	REG_BIT(25)
-#define   GAMTLBCOMPC0_CLKGATE_DIS	REG_BIT(24)
-#define   GAMTLBCOMPC1_CLKGATE_DIS	REG_BIT(23)
-#define   GAMTLBCOMPD0_CLKGATE_DIS	REG_BIT(22)
-#define   GAMTLBCOMPD1_CLKGATE_DIS	REG_BIT(21)
-#define   GAMTLBMERT_CLKGATE_DIS	REG_BIT(20)
-#define   GAMTLBVEBOX3_CLKGATE_DIS	REG_BIT(19)
-#define   GAMTLBVEBOX2_CLKGATE_DIS	REG_BIT(18)
-#define   GAMTLBVEBOX1_CLKGATE_DIS	REG_BIT(17)
-#define   GAMTLBVEBOX0_CLKGATE_DIS	REG_BIT(16)
-#define   LTCDD_CLKGATE_DIS		REG_BIT(10)
-
-#define SLICE_UNIT_LEVEL_CLKGATE	_MMIO(0x94d4)
-#define  SARBUNIT_CLKGATE_DIS		(1 << 5)
-#define  RCCUNIT_CLKGATE_DIS		(1 << 7)
-#define  MSCUNIT_CLKGATE_DIS		(1 << 10)
-#define  NODEDSS_CLKGATE_DIS		REG_BIT(12)
-#define  L3_CLKGATE_DIS			REG_BIT(16)
-#define  L3_CR2X_CLKGATE_DIS		REG_BIT(17)
-
-#define SUBSLICE_UNIT_LEVEL_CLKGATE	_MMIO(0x9524)
-#define   DSS_ROUTER_CLKGATE_DIS	REG_BIT(28)
-#define   GWUNIT_CLKGATE_DIS		REG_BIT(16)
-
-#define SUBSLICE_UNIT_LEVEL_CLKGATE2	_MMIO(0x9528)
-#define  CPSSUNIT_CLKGATE_DIS		REG_BIT(9)
-
-#define SSMCGCTL9530			_MMIO(0x9530)
-#define   RTFUNIT_CLKGATE_DIS		REG_BIT(18)
-
-#define UNSLICE_UNIT_LEVEL_CLKGATE	_MMIO(0x9434)
-#define   VFUNIT_CLKGATE_DIS		REG_BIT(20)
-#define   TSGUNIT_CLKGATE_DIS		REG_BIT(17) /* XEHPSDV */
-#define   CG3DDISCFEG_CLKGATE_DIS	REG_BIT(17) /* DG2 */
-#define   GAMEDIA_CLKGATE_DIS		REG_BIT(11)
-#define   HSUNIT_CLKGATE_DIS		REG_BIT(8)
-#define   VSUNIT_CLKGATE_DIS		REG_BIT(3)
-
-#define UNSLICE_UNIT_LEVEL_CLKGATE2	_MMIO(0x94e4)
-#define   VSUNIT_CLKGATE_DIS_TGL	REG_BIT(19)
-#define   PSDUNIT_CLKGATE_DIS		REG_BIT(5)
-
-#define INF_UNIT_LEVEL_CLKGATE		_MMIO(0x9560)
-#define   CGPSF_CLKGATE_DIS		(1 << 3)
-
 /*
  * Display engine regs
  */
@@ -6860,63 +5947,6 @@ enum {
 #define  GEN11_HOTPLUG_CTL_SHORT_DETECT(hpd_pin)	(1 << (_HPD_PIN_TC(hpd_pin) * 4))
 #define  GEN11_HOTPLUG_CTL_NO_DETECT(hpd_pin)		(0 << (_HPD_PIN_TC(hpd_pin) * 4))
 
-#define GEN11_GT_INTR_DW0		_MMIO(0x190018)
-#define  GEN11_CSME			(31)
-#define  GEN11_GUNIT			(28)
-#define  GEN11_GUC			(25)
-#define  GEN11_WDPERF			(20)
-#define  GEN11_KCR			(19)
-#define  GEN11_GTPM			(16)
-#define  GEN11_BCS			(15)
-#define  GEN11_RCS0			(0)
-
-#define GEN11_GT_INTR_DW1		_MMIO(0x19001c)
-#define  GEN11_VECS(x)			(31 - (x))
-#define  GEN11_VCS(x)			(x)
-
-#define GEN11_GT_INTR_DW(x)		_MMIO(0x190018 + ((x) * 4))
-
-#define GEN11_INTR_IDENTITY_REG0	_MMIO(0x190060)
-#define GEN11_INTR_IDENTITY_REG1	_MMIO(0x190064)
-#define  GEN11_INTR_DATA_VALID		(1 << 31)
-#define  GEN11_INTR_ENGINE_CLASS(x)	(((x) & GENMASK(18, 16)) >> 16)
-#define  GEN11_INTR_ENGINE_INSTANCE(x)	(((x) & GENMASK(25, 20)) >> 20)
-#define  GEN11_INTR_ENGINE_INTR(x)	((x) & 0xffff)
-/* irq instances for OTHER_CLASS */
-#define OTHER_GUC_INSTANCE	0
-#define OTHER_GTPM_INSTANCE	1
-#define OTHER_KCR_INSTANCE	4
-
-#define GEN11_INTR_IDENTITY_REG(x)	_MMIO(0x190060 + ((x) * 4))
-
-#define GEN11_IIR_REG0_SELECTOR		_MMIO(0x190070)
-#define GEN11_IIR_REG1_SELECTOR		_MMIO(0x190074)
-
-#define GEN11_IIR_REG_SELECTOR(x)	_MMIO(0x190070 + ((x) * 4))
-
-#define GEN11_RENDER_COPY_INTR_ENABLE	_MMIO(0x190030)
-#define GEN11_VCS_VECS_INTR_ENABLE	_MMIO(0x190034)
-#define GEN11_GUC_SG_INTR_ENABLE	_MMIO(0x190038)
-#define GEN11_GPM_WGBOXPERF_INTR_ENABLE	_MMIO(0x19003c)
-#define GEN11_CRYPTO_RSVD_INTR_ENABLE	_MMIO(0x190040)
-#define GEN11_GUNIT_CSME_INTR_ENABLE	_MMIO(0x190044)
-
-#define GEN11_RCS0_RSVD_INTR_MASK	_MMIO(0x190090)
-#define GEN11_BCS_RSVD_INTR_MASK	_MMIO(0x1900a0)
-#define GEN11_VCS0_VCS1_INTR_MASK	_MMIO(0x1900a8)
-#define GEN11_VCS2_VCS3_INTR_MASK	_MMIO(0x1900ac)
-#define GEN12_VCS4_VCS5_INTR_MASK	_MMIO(0x1900b0)
-#define GEN12_VCS6_VCS7_INTR_MASK	_MMIO(0x1900b4)
-#define GEN11_VECS0_VECS1_INTR_MASK	_MMIO(0x1900d0)
-#define GEN12_VECS2_VECS3_INTR_MASK	_MMIO(0x1900d4)
-#define GEN11_GUC_SG_INTR_MASK		_MMIO(0x1900e8)
-#define GEN11_GPM_WGBOXPERF_INTR_MASK	_MMIO(0x1900ec)
-#define GEN11_CRYPTO_RSVD_INTR_MASK	_MMIO(0x1900f0)
-#define GEN11_GUNIT_CSME_INTR_MASK	_MMIO(0x1900f4)
-
-#define   ENGINE1_MASK			REG_GENMASK(31, 16)
-#define   ENGINE0_MASK			REG_GENMASK(15, 0)
-
 #define ILK_DISPLAY_CHICKEN2	_MMIO(0x42004)
 /* Required on all Ironlake and Sandybridge according to the B-Spec. */
 #define  ILK_ELPIN_409_SELECT	(1 << 25)
@@ -7103,142 +6133,6 @@ enum {
 #define ICL_DSSM_CDCLK_PLL_REFCLK_19_2MHz	(1 << 29)
 #define ICL_DSSM_CDCLK_PLL_REFCLK_38_4MHz	(2 << 29)
 
-#define GEN7_FF_SLICE_CS_CHICKEN1	_MMIO(0x20e0)
-#define   GEN9_FFSC_PERCTX_PREEMPT_CTRL	(1 << 14)
-
-#define FF_SLICE_CS_CHICKEN2			_MMIO(0x20e4)
-#define  GEN9_TSG_BARRIER_ACK_DISABLE		(1 << 8)
-#define  GEN9_POOLED_EU_LOAD_BALANCING_FIX_DISABLE  (1 << 10)
-
-#define GEN9_CS_DEBUG_MODE1		_MMIO(0x20ec)
-#define   FF_DOP_CLOCK_GATE_DISABLE	REG_BIT(1)
-#define GEN9_CTX_PREEMPT_REG		_MMIO(0x2248)
-#define   GEN12_DISABLE_POSH_BUSY_FF_DOP_CG REG_BIT(11)
-
-#define GEN12_CS_DEBUG_MODE1_CCCSUNIT_BE_COMMON		_MMIO(0x20EC)
-#define   GEN12_REPLAY_MODE_GRANULARITY			REG_BIT(0)
-
-#define GEN8_CS_CHICKEN1		_MMIO(0x2580)
-#define GEN9_PREEMPT_3D_OBJECT_LEVEL		(1 << 0)
-#define GEN9_PREEMPT_GPGPU_LEVEL(hi, lo)	(((hi) << 2) | ((lo) << 1))
-#define GEN9_PREEMPT_GPGPU_MID_THREAD_LEVEL	GEN9_PREEMPT_GPGPU_LEVEL(0, 0)
-#define GEN9_PREEMPT_GPGPU_THREAD_GROUP_LEVEL	GEN9_PREEMPT_GPGPU_LEVEL(0, 1)
-#define GEN9_PREEMPT_GPGPU_COMMAND_LEVEL	GEN9_PREEMPT_GPGPU_LEVEL(1, 0)
-#define GEN9_PREEMPT_GPGPU_LEVEL_MASK		GEN9_PREEMPT_GPGPU_LEVEL(1, 1)
-
-/* GEN7 chicken */
-#define GEN7_COMMON_SLICE_CHICKEN1		_MMIO(0x7010)
-  #define GEN7_CSC1_RHWO_OPT_DISABLE_IN_RCC	(1 << 10)
-  #define GEN9_RHWO_OPTIMIZATION_DISABLE	(1 << 14)
-
-#define COMMON_SLICE_CHICKEN2					_MMIO(0x7014)
-  #define GEN9_PBE_COMPRESSED_HASH_SELECTION			(1 << 13)
-  #define GEN9_DISABLE_GATHER_AT_SET_SHADER_COMMON_SLICE	(1 << 12)
-  #define GEN8_SBE_DISABLE_REPLAY_BUF_OPTIMIZATION		(1 << 8)
-  #define GEN8_CSC2_SBE_VUE_CACHE_CONSERVATIVE			(1 << 0)
-
-#define GEN8_L3CNTLREG	_MMIO(0x7034)
-  #define GEN8_ERRDETBCTRL (1 << 9)
-
-#define GEN11_COMMON_SLICE_CHICKEN3			_MMIO(0x7304)
-#define   DG1_FLOAT_POINT_BLEND_OPT_STRICT_MODE_EN	REG_BIT(12)
-#define   XEHP_DUAL_SIMD8_SEQ_MERGE_DISABLE		REG_BIT(12)
-#define   GEN11_BLEND_EMB_FIX_DISABLE_IN_RCC		REG_BIT(11)
-#define   GEN12_DISABLE_CPS_AWARE_COLOR_PIPE		REG_BIT(9)
-
-#define HIZ_CHICKEN					_MMIO(0x7018)
-# define CHV_HZ_8X8_MODE_IN_1X				REG_BIT(15)
-# define DG1_HZ_READ_SUPPRESSION_OPTIMIZATION_DISABLE   REG_BIT(14)
-# define BDW_HIZ_POWER_COMPILER_CLOCK_GATING_DISABLE	REG_BIT(3)
-
-#define GEN9_SLICE_COMMON_ECO_CHICKEN0		_MMIO(0x7308)
-#define  DISABLE_PIXEL_MASK_CAMMING		(1 << 14)
-
-#define GEN9_SLICE_COMMON_ECO_CHICKEN1		_MMIO(0x731c)
-#define   GEN11_STATE_CACHE_REDIRECT_TO_CS	(1 << 11)
-
-#define GEN7_SARCHKMD				_MMIO(0xB000)
-#define GEN7_DISABLE_DEMAND_PREFETCH		(1 << 31)
-#define GEN7_DISABLE_SAMPLER_PREFETCH           (1 << 30)
-
-#define GEN7_L3SQCREG1				_MMIO(0xB010)
-#define  VLV_B0_WA_L3SQCREG1_VALUE		0x00D30000
-
-#define GEN8_L3SQCREG1				_MMIO(0xB100)
-/*
- * Note that on CHV the following has an off-by-one error wrt. to BSpec.
- * Using the formula in BSpec leads to a hang, while the formula here works
- * fine and matches the formulas for all other platforms. A BSpec change
- * request has been filed to clarify this.
- */
-#define  L3_GENERAL_PRIO_CREDITS(x)		(((x) >> 1) << 19)
-#define  L3_HIGH_PRIO_CREDITS(x)		(((x) >> 1) << 14)
-#define  L3_PRIO_CREDITS_MASK			((0x1f << 19) | (0x1f << 14))
-
-#define GEN7_L3CNTLREG1				_MMIO(0xB01C)
-#define  GEN7_WA_FOR_GEN7_L3_CONTROL			0x3C47FF8C
-#define  GEN7_L3AGDIS				(1 << 19)
-#define GEN7_L3CNTLREG2				_MMIO(0xB020)
-#define GEN7_L3CNTLREG3				_MMIO(0xB024)
-
-#define GEN7_L3_CHICKEN_MODE_REGISTER		_MMIO(0xB030)
-#define   GEN7_WA_L3_CHICKEN_MODE		0x20000000
-#define GEN10_L3_CHICKEN_MODE_REGISTER		_MMIO(0xB114)
-#define   GEN11_I2M_WRITE_DISABLE		(1 << 28)
-
-#define GEN7_L3SQCREG4				_MMIO(0xb034)
-#define  L3SQ_URB_READ_CAM_MATCH_DISABLE	(1 << 27)
-
-#define GEN11_SCRATCH2					_MMIO(0xb140)
-#define  GEN11_COHERENT_PARTIAL_WRITE_MERGE_ENABLE	(1 << 19)
-
-#define GEN8_L3SQCREG4				_MMIO(0xb118)
-#define  GEN11_LQSC_CLEAN_EVICT_DISABLE		(1 << 6)
-#define  GEN8_LQSC_RO_PERF_DIS			(1 << 27)
-#define  GEN8_LQSC_FLUSH_COHERENT_LINES		(1 << 21)
-#define  GEN8_LQSQ_NONIA_COHERENT_ATOMICS_ENABLE REG_BIT(22)
-
-#define GEN11_L3SQCREG5				_MMIO(0xb158)
-#define   L3_PWM_TIMER_INIT_VAL_MASK		REG_GENMASK(9, 0)
-
-#define XEHP_L3SCQREG7				_MMIO(0xb188)
-#define   BLEND_FILL_CACHING_OPT_DIS		REG_BIT(3)
-
-/* GEN8 chicken */
-#define HDC_CHICKEN0				_MMIO(0x7300)
-#define ICL_HDC_MODE				_MMIO(0xE5F4)
-#define  HDC_FORCE_CSR_NON_COHERENT_OVR_DISABLE	(1 << 15)
-#define  HDC_FENCE_DEST_SLM_DISABLE		(1 << 14)
-#define  HDC_DONOT_FETCH_MEM_WHEN_MASKED	(1 << 11)
-#define  HDC_FORCE_CONTEXT_SAVE_RESTORE_NON_COHERENT	(1 << 5)
-#define  HDC_FORCE_NON_COHERENT			(1 << 4)
-#define  HDC_BARRIER_PERFORMANCE_DISABLE	(1 << 10)
-
-#define GEN12_HDC_CHICKEN0					_MMIO(0xE5F0)
-#define   LSC_L1_FLUSH_CTL_3D_DATAPORT_FLUSH_EVENTS_MASK	REG_GENMASK(13, 11)
-
-#define SARB_CHICKEN1				_MMIO(0xe90c)
-#define   COMP_CKN_IN				REG_GENMASK(30, 29)
-
-#define GEN8_HDC_CHICKEN1			_MMIO(0x7304)
-
-/* GEN9 chicken */
-#define SLICE_ECO_CHICKEN0			_MMIO(0x7308)
-#define   PIXEL_MASK_CAMMING_DISABLE		(1 << 14)
-
-#define GEN9_WM_CHICKEN3			_MMIO(0x5588)
-#define   GEN9_FACTOR_IN_CLR_VAL_HIZ		(1 << 9)
-
-/* WaCatErrorRejectionIssue */
-#define GEN7_SQ_CHICKEN_MBCUNIT_CONFIG		_MMIO(0x9030)
-#define  GEN7_SQ_CHICKEN_MBCUNIT_SQINTMOB	(1 << 11)
-
-#define HSW_SCRATCH1				_MMIO(0xb038)
-#define  HSW_SCRATCH1_L3_DATA_ATOMICS_DISABLE	(1 << 27)
-
-#define BDW_SCRATCH1					_MMIO(0xb11c)
-#define  GEN9_LBS_SLA_RETRY_TIMER_DECREMENT_ENABLE	(1 << 2)
-
 /*GEN11 chicken */
 #define _PIPEA_CHICKEN				0x70038
 #define _PIPEB_CHICKEN				0x71038
@@ -7251,16 +6145,6 @@ enum {
 #define   DG2_RENDER_CCSTAG_4_3_EN		REG_BIT(12)
 #define   PER_PIXEL_ALPHA_BYPASS_EN		REG_BIT(7)
 
-#define VFLSKPD				_MMIO(0x62a8)
-#define   DIS_OVER_FETCH_CACHE		REG_BIT(1)
-#define   DIS_MULT_MISS_RD_SQUASH	REG_BIT(0)
-
-#define FF_MODE2			_MMIO(0x6604)
-#define   FF_MODE2_GS_TIMER_MASK	REG_GENMASK(31, 24)
-#define   FF_MODE2_GS_TIMER_224		REG_FIELD_PREP(FF_MODE2_GS_TIMER_MASK, 224)
-#define   FF_MODE2_TDS_TIMER_MASK	REG_GENMASK(23, 16)
-#define   FF_MODE2_TDS_TIMER_128	REG_FIELD_PREP(FF_MODE2_TDS_TIMER_MASK, 4)
-
 /* PCH */
 
 #define PCH_DISPLAY_BASE	0xc0000u
@@ -7968,255 +6852,16 @@ enum {
 
 #define  VLV_PMWGICZ				_MMIO(0x1300a4)
 
-#define  RC6_LOCATION				_MMIO(0xD40)
-#define	   RC6_CTX_IN_DRAM			(1 << 0)
-#define  RC6_CTX_BASE				_MMIO(0xD48)
-#define    RC6_CTX_BASE_MASK			0xFFFFFFF0
-#define  FORCEWAKE				_MMIO(0xA18C)
-#define  FORCEWAKE_VLV				_MMIO(0x1300b0)
-#define  FORCEWAKE_ACK_VLV			_MMIO(0x1300b4)
-#define  FORCEWAKE_MEDIA_VLV			_MMIO(0x1300b8)
-#define  FORCEWAKE_ACK_MEDIA_VLV		_MMIO(0x1300bc)
-#define  FORCEWAKE_ACK_HSW			_MMIO(0x130044)
-#define  FORCEWAKE_ACK				_MMIO(0x130090)
-#define  VLV_GTLC_WAKE_CTRL			_MMIO(0x130090)
-#define   VLV_GTLC_RENDER_CTX_EXISTS		(1 << 25)
-#define   VLV_GTLC_MEDIA_CTX_EXISTS		(1 << 24)
-#define   VLV_GTLC_ALLOWWAKEREQ			(1 << 0)
-
-#define  VLV_GTLC_PW_STATUS			_MMIO(0x130094)
-#define   VLV_GTLC_ALLOWWAKEACK			(1 << 0)
-#define   VLV_GTLC_ALLOWWAKEERR			(1 << 1)
-#define   VLV_GTLC_PW_MEDIA_STATUS_MASK		(1 << 5)
-#define   VLV_GTLC_PW_RENDER_STATUS_MASK	(1 << 7)
-#define  FORCEWAKE_MT				_MMIO(0xa188) /* multi-threaded */
-#define  FORCEWAKE_MEDIA_GEN9			_MMIO(0xa270)
-#define  FORCEWAKE_MEDIA_VDBOX_GEN11(n)		_MMIO(0xa540 + (n) * 4)
-#define  FORCEWAKE_MEDIA_VEBOX_GEN11(n)		_MMIO(0xa560 + (n) * 4)
-#define  FORCEWAKE_RENDER_GEN9			_MMIO(0xa278)
-#define  FORCEWAKE_GT_GEN9			_MMIO(0xa188)
-#define  FORCEWAKE_ACK_MEDIA_GEN9		_MMIO(0x0D88)
-#define  FORCEWAKE_ACK_MEDIA_VDBOX_GEN11(n)	_MMIO(0x0D50 + (n) * 4)
-#define  FORCEWAKE_ACK_MEDIA_VEBOX_GEN11(n)	_MMIO(0x0D70 + (n) * 4)
-#define  FORCEWAKE_ACK_RENDER_GEN9		_MMIO(0x0D84)
-#define  FORCEWAKE_ACK_GT_GEN9			_MMIO(0x130044)
-#define   FORCEWAKE_KERNEL			BIT(0)
-#define   FORCEWAKE_USER			BIT(1)
-#define   FORCEWAKE_KERNEL_FALLBACK		BIT(15)
-#define  FORCEWAKE_MT_ACK			_MMIO(0x130040)
-#define  ECOBUS					_MMIO(0xa180)
-#define    FORCEWAKE_MT_ENABLE			(1 << 5)
-#define  VLV_SPAREG2H				_MMIO(0xA194)
-#define  GEN9_PWRGT_DOMAIN_STATUS		_MMIO(0xA2A0)
-#define   GEN9_PWRGT_MEDIA_STATUS_MASK		(1 << 0)
-#define   GEN9_PWRGT_RENDER_STATUS_MASK		(1 << 1)
-
-#define  GTFIFODBG				_MMIO(0x120000)
-#define    GT_FIFO_SBDEDICATE_FREE_ENTRY_CHV	(0x1f << 20)
-#define    GT_FIFO_FREE_ENTRIES_CHV		(0x7f << 13)
-#define    GT_FIFO_SBDROPERR			(1 << 6)
-#define    GT_FIFO_BLOBDROPERR			(1 << 5)
-#define    GT_FIFO_SB_READ_ABORTERR		(1 << 4)
-#define    GT_FIFO_DROPERR			(1 << 3)
-#define    GT_FIFO_OVFERR			(1 << 2)
-#define    GT_FIFO_IAWRERR			(1 << 1)
-#define    GT_FIFO_IARDERR			(1 << 0)
-
-#define  GTFIFOCTL				_MMIO(0x120008)
-#define    GT_FIFO_FREE_ENTRIES_MASK		0x7f
-#define    GT_FIFO_NUM_RESERVED_ENTRIES		20
-#define    GT_FIFO_CTL_BLOCK_ALL_POLICY_STALL	(1 << 12)
-#define    GT_FIFO_CTL_RC6_POLICY_STALL		(1 << 11)
-
-#define  HSW_IDICR				_MMIO(0x9008)
-#define    IDIHASHMSK(x)			(((x) & 0x3f) << 16)
 #define  HSW_EDRAM_CAP				_MMIO(0x120010)
 #define    EDRAM_ENABLED			0x1
 #define    EDRAM_NUM_BANKS(cap)			(((cap) >> 1) & 0xf)
 #define    EDRAM_WAYS_IDX(cap)			(((cap) >> 5) & 0x7)
 #define    EDRAM_SETS_IDX(cap)			(((cap) >> 8) & 0x3)
 
-#define GEN6_UCGCTL1				_MMIO(0x9400)
-# define GEN6_GAMUNIT_CLOCK_GATE_DISABLE		(1 << 22)
-# define GEN6_EU_TCUNIT_CLOCK_GATE_DISABLE		(1 << 16)
-# define GEN6_BLBUNIT_CLOCK_GATE_DISABLE		(1 << 5)
-# define GEN6_CSUNIT_CLOCK_GATE_DISABLE			(1 << 7)
-
-#define GEN6_UCGCTL2				_MMIO(0x9404)
-# define GEN6_VFUNIT_CLOCK_GATE_DISABLE			(1 << 31)
-# define GEN7_VDSUNIT_CLOCK_GATE_DISABLE		(1 << 30)
-# define GEN7_TDLUNIT_CLOCK_GATE_DISABLE		(1 << 22)
-# define GEN6_RCZUNIT_CLOCK_GATE_DISABLE		(1 << 13)
-# define GEN6_RCPBUNIT_CLOCK_GATE_DISABLE		(1 << 12)
-# define GEN6_RCCUNIT_CLOCK_GATE_DISABLE		(1 << 11)
-
-#define GEN6_UCGCTL3				_MMIO(0x9408)
-# define GEN6_OACSUNIT_CLOCK_GATE_DISABLE		(1 << 20)
-
-#define GEN7_UCGCTL4				_MMIO(0x940c)
-#define  GEN7_L3BANK2X_CLOCK_GATE_DISABLE	(1 << 25)
-#define  GEN8_EU_GAUNIT_CLOCK_GATE_DISABLE	(1 << 14)
-
-#define GEN6_RCGCTL1				_MMIO(0x9410)
-#define GEN6_RCGCTL2				_MMIO(0x9414)
-#define GEN6_RSTCTL				_MMIO(0x9420)
-
-#define GEN8_UCGCTL6				_MMIO(0x9430)
-#define   GEN8_GAPSUNIT_CLOCK_GATE_DISABLE	(1 << 24)
-#define   GEN8_SDEUNIT_CLOCK_GATE_DISABLE	(1 << 14)
-#define   GEN8_HDCUNIT_CLOCK_GATE_DISABLE_HDCREQ (1 << 28)
-
-#define UNSLCGCTL9430				_MMIO(0x9430)
-#define   MSQDUNIT_CLKGATE_DIS			REG_BIT(3)
-
-#define GEN6_GFXPAUSE				_MMIO(0xA000)
-#define GEN6_RPNSWREQ				_MMIO(0xA008)
-#define   GEN6_TURBO_DISABLE			(1 << 31)
-#define   GEN6_FREQUENCY(x)			((x) << 25)
-#define   HSW_FREQUENCY(x)			((x) << 24)
-#define   GEN9_FREQUENCY(x)			((x) << 23)
-#define   GEN6_OFFSET(x)			((x) << 19)
-#define   GEN6_AGGRESSIVE_TURBO			(0 << 15)
-#define   GEN9_SW_REQ_UNSLICE_RATIO_SHIFT	23
-#define   GEN9_IGNORE_SLICE_RATIO		(0 << 0)
-
-#define GEN6_RC_VIDEO_FREQ			_MMIO(0xA00C)
-#define GEN6_RC_CONTROL				_MMIO(0xA090)
-#define   GEN6_RC_CTL_RC6pp_ENABLE		(1 << 16)
-#define   GEN6_RC_CTL_RC6p_ENABLE		(1 << 17)
-#define   GEN6_RC_CTL_RC6_ENABLE		(1 << 18)
-#define   GEN6_RC_CTL_RC1e_ENABLE		(1 << 20)
-#define   GEN6_RC_CTL_RC7_ENABLE		(1 << 22)
-#define   VLV_RC_CTL_CTX_RST_PARALLEL		(1 << 24)
-#define   GEN7_RC_CTL_TO_MODE			(1 << 28)
-#define   GEN6_RC_CTL_EI_MODE(x)		((x) << 27)
-#define   GEN6_RC_CTL_HW_ENABLE			(1 << 31)
-#define GEN6_RP_DOWN_TIMEOUT			_MMIO(0xA010)
-#define GEN6_RP_INTERRUPT_LIMITS		_MMIO(0xA014)
-#define GEN6_RPSTAT1				_MMIO(0xA01C)
-#define   GEN6_CAGF_SHIFT			8
-#define   HSW_CAGF_SHIFT			7
-#define   GEN9_CAGF_SHIFT			23
-#define   GEN6_CAGF_MASK			(0x7f << GEN6_CAGF_SHIFT)
-#define   HSW_CAGF_MASK				(0x7f << HSW_CAGF_SHIFT)
-#define   GEN9_CAGF_MASK			(0x1ff << GEN9_CAGF_SHIFT)
-#define GEN6_RP_CONTROL				_MMIO(0xA024)
-#define   GEN6_RP_MEDIA_TURBO			(1 << 11)
-#define   GEN6_RP_MEDIA_MODE_MASK		(3 << 9)
-#define   GEN6_RP_MEDIA_HW_TURBO_MODE		(3 << 9)
-#define   GEN6_RP_MEDIA_HW_NORMAL_MODE		(2 << 9)
-#define   GEN6_RP_MEDIA_HW_MODE			(1 << 9)
-#define   GEN6_RP_MEDIA_SW_MODE			(0 << 9)
-#define   GEN6_RP_MEDIA_IS_GFX			(1 << 8)
-#define   GEN6_RP_ENABLE			(1 << 7)
-#define   GEN6_RP_UP_IDLE_MIN			(0x1 << 3)
-#define   GEN6_RP_UP_BUSY_AVG			(0x2 << 3)
-#define   GEN6_RP_UP_BUSY_CONT			(0x4 << 3)
-#define   GEN6_RP_DOWN_IDLE_AVG			(0x2 << 0)
-#define   GEN6_RP_DOWN_IDLE_CONT		(0x1 << 0)
-#define   GEN6_RPSWCTL_SHIFT			9
-#define   GEN9_RPSWCTL_ENABLE			(0x2 << GEN6_RPSWCTL_SHIFT)
-#define   GEN9_RPSWCTL_DISABLE			(0x0 << GEN6_RPSWCTL_SHIFT)
-#define GEN6_RP_UP_THRESHOLD			_MMIO(0xA02C)
-#define GEN6_RP_DOWN_THRESHOLD			_MMIO(0xA030)
-#define GEN6_RP_CUR_UP_EI			_MMIO(0xA050)
-#define   GEN6_RP_EI_MASK			0xffffff
-#define   GEN6_CURICONT_MASK			GEN6_RP_EI_MASK
-#define GEN6_RP_CUR_UP				_MMIO(0xA054)
-#define   GEN6_CURBSYTAVG_MASK			GEN6_RP_EI_MASK
-#define GEN6_RP_PREV_UP				_MMIO(0xA058)
-#define GEN6_RP_CUR_DOWN_EI			_MMIO(0xA05C)
-#define   GEN6_CURIAVG_MASK			GEN6_RP_EI_MASK
-#define GEN6_RP_CUR_DOWN			_MMIO(0xA060)
-#define GEN6_RP_PREV_DOWN			_MMIO(0xA064)
-#define GEN6_RP_UP_EI				_MMIO(0xA068)
-#define GEN6_RP_DOWN_EI				_MMIO(0xA06C)
-#define GEN6_RP_IDLE_HYSTERSIS			_MMIO(0xA070)
-#define GEN6_RPDEUHWTC				_MMIO(0xA080)
-#define GEN6_RPDEUC				_MMIO(0xA084)
-#define GEN6_RPDEUCSW				_MMIO(0xA088)
-#define GEN6_RC_STATE				_MMIO(0xA094)
-#define   RC_SW_TARGET_STATE_SHIFT		16
-#define   RC_SW_TARGET_STATE_MASK		(7 << RC_SW_TARGET_STATE_SHIFT)
-#define GEN6_RC1_WAKE_RATE_LIMIT		_MMIO(0xA098)
-#define GEN6_RC6_WAKE_RATE_LIMIT		_MMIO(0xA09C)
-#define GEN6_RC6pp_WAKE_RATE_LIMIT		_MMIO(0xA0A0)
-#define GEN10_MEDIA_WAKE_RATE_LIMIT		_MMIO(0xA0A0)
-#define GEN6_RC_EVALUATION_INTERVAL		_MMIO(0xA0A8)
-#define GEN6_RC_IDLE_HYSTERSIS			_MMIO(0xA0AC)
-#define GEN6_RC_SLEEP				_MMIO(0xA0B0)
-#define GEN6_RCUBMABDTMR			_MMIO(0xA0B0)
-#define GEN6_RC1e_THRESHOLD			_MMIO(0xA0B4)
-#define GEN6_RC6_THRESHOLD			_MMIO(0xA0B8)
-#define GEN6_RC6p_THRESHOLD			_MMIO(0xA0BC)
-#define VLV_RCEDATA				_MMIO(0xA0BC)
-#define GEN6_RC6pp_THRESHOLD			_MMIO(0xA0C0)
-#define GEN6_PMINTRMSK				_MMIO(0xA168)
-#define   GEN8_PMINTR_DISABLE_REDIRECT_TO_GUC	(1 << 31)
-#define   ARAT_EXPIRED_INTRMSK			(1 << 9)
-#define GEN8_MISC_CTRL0				_MMIO(0xA180)
-#define VLV_PWRDWNUPCTL				_MMIO(0xA294)
-#define GEN9_MEDIA_PG_IDLE_HYSTERESIS		_MMIO(0xA0C4)
-#define GEN9_RENDER_PG_IDLE_HYSTERESIS		_MMIO(0xA0C8)
-#define GEN9_PG_ENABLE				_MMIO(0xA210)
-#define   GEN9_RENDER_PG_ENABLE			REG_BIT(0)
-#define   GEN9_MEDIA_PG_ENABLE			REG_BIT(1)
-#define   GEN11_MEDIA_SAMPLER_PG_ENABLE		REG_BIT(2)
-#define   VDN_HCP_POWERGATE_ENABLE(n)		REG_BIT(3 + 2 * (n))
-#define   VDN_MFX_POWERGATE_ENABLE(n)		REG_BIT(4 + 2 * (n))
-#define GEN8_PUSHBUS_CONTROL			_MMIO(0xA248)
-#define GEN8_PUSHBUS_ENABLE			_MMIO(0xA250)
-#define GEN8_PUSHBUS_SHIFT			_MMIO(0xA25C)
-
 #define VLV_CHICKEN_3				_MMIO(VLV_DISPLAY_BASE + 0x7040C)
 #define  PIXEL_OVERLAP_CNT_MASK			(3 << 30)
 #define  PIXEL_OVERLAP_CNT_SHIFT		30
 
-#define GEN6_PMISR				_MMIO(0x44020)
-#define GEN6_PMIMR				_MMIO(0x44024) /* rps_lock */
-#define GEN6_PMIIR				_MMIO(0x44028)
-#define GEN6_PMIER				_MMIO(0x4402C)
-#define  GEN6_PM_MBOX_EVENT			(1 << 25)
-#define  GEN6_PM_THERMAL_EVENT			(1 << 24)
-
-/*
- * For Gen11 these are in the upper word of the GPM_WGBOXPERF
- * registers. Shifting is handled on accessing the imr and ier.
- */
-#define  GEN6_PM_RP_DOWN_TIMEOUT		(1 << 6)
-#define  GEN6_PM_RP_UP_THRESHOLD		(1 << 5)
-#define  GEN6_PM_RP_DOWN_THRESHOLD		(1 << 4)
-#define  GEN6_PM_RP_UP_EI_EXPIRED		(1 << 2)
-#define  GEN6_PM_RP_DOWN_EI_EXPIRED		(1 << 1)
-#define  GEN6_PM_RPS_EVENTS			(GEN6_PM_RP_UP_EI_EXPIRED   | \
-						 GEN6_PM_RP_UP_THRESHOLD    | \
-						 GEN6_PM_RP_DOWN_EI_EXPIRED | \
-						 GEN6_PM_RP_DOWN_THRESHOLD  | \
-						 GEN6_PM_RP_DOWN_TIMEOUT)
-
-#define GEN7_GT_SCRATCH(i)			_MMIO(0x4F100 + (i) * 4)
-#define GEN7_GT_SCRATCH_REG_NUM			8
-
-#define VLV_GTLC_SURVIVABILITY_REG              _MMIO(0x130098)
-#define VLV_GFX_CLK_STATUS_BIT			(1 << 3)
-#define VLV_GFX_CLK_FORCE_ON_BIT		(1 << 2)
-
-#define GEN6_GT_GFX_RC6_LOCKED			_MMIO(0x138104)
-#define VLV_COUNTER_CONTROL			_MMIO(0x138104)
-#define   VLV_COUNT_RANGE_HIGH			(1 << 15)
-#define   VLV_MEDIA_RC0_COUNT_EN		(1 << 5)
-#define   VLV_RENDER_RC0_COUNT_EN		(1 << 4)
-#define   VLV_MEDIA_RC6_COUNT_EN		(1 << 1)
-#define   VLV_RENDER_RC6_COUNT_EN		(1 << 0)
-#define GEN6_GT_GFX_RC6				_MMIO(0x138108)
-#define VLV_GT_RENDER_RC6			_MMIO(0x138108)
-#define VLV_GT_MEDIA_RC6			_MMIO(0x13810C)
-
-#define GEN6_GT_GFX_RC6p			_MMIO(0x13810C)
-#define GEN6_GT_GFX_RC6pp			_MMIO(0x138110)
-#define VLV_RENDER_C0_COUNT			_MMIO(0x138118)
-#define VLV_MEDIA_C0_COUNT			_MMIO(0x13811C)
-
 #define GEN6_PCODE_MAILBOX			_MMIO(0x138124)
 #define   GEN6_PCODE_READY			(1 << 31)
 #define   GEN6_PCODE_ERROR_MASK			0xFF
@@ -8283,82 +6928,6 @@ enum {
 #define   GEN6_PCODE_FREQ_RING_RATIO_SHIFT	16
 #define GEN6_PCODE_DATA1			_MMIO(0x13812C)
 
-#define GEN6_GT_CORE_STATUS		_MMIO(0x138060)
-#define   GEN6_CORE_CPD_STATE_MASK	(7 << 4)
-#define   GEN6_RCn_MASK			7
-#define   GEN6_RC0			0
-#define   GEN6_RC3			2
-#define   GEN6_RC6			3
-#define   GEN6_RC7			4
-
-#define GEN8_GT_SLICE_INFO		_MMIO(0x138064)
-#define   GEN8_LSLICESTAT_MASK		0x7
-
-#define CHV_POWER_SS0_SIG1		_MMIO(0xa720)
-#define CHV_POWER_SS1_SIG1		_MMIO(0xa728)
-#define   CHV_SS_PG_ENABLE		(1 << 1)
-#define   CHV_EU08_PG_ENABLE		(1 << 9)
-#define   CHV_EU19_PG_ENABLE		(1 << 17)
-#define   CHV_EU210_PG_ENABLE		(1 << 25)
-
-#define CHV_POWER_SS0_SIG2		_MMIO(0xa724)
-#define CHV_POWER_SS1_SIG2		_MMIO(0xa72c)
-#define   CHV_EU311_PG_ENABLE		(1 << 1)
-
-#define GEN9_SLICE_PGCTL_ACK(slice)	_MMIO(0x804c + (slice) * 0x4)
-#define GEN10_SLICE_PGCTL_ACK(slice)	_MMIO(0x804c + ((slice) / 3) * 0x34 + \
-					      ((slice) % 3) * 0x4)
-#define   GEN9_PGCTL_SLICE_ACK		(1 << 0)
-#define   GEN9_PGCTL_SS_ACK(subslice)	(1 << (2 + (subslice) * 2))
-#define   GEN10_PGCTL_VALID_SS_MASK(slice) ((slice) == 0 ? 0x7F : 0x1F)
-
-#define GEN9_SS01_EU_PGCTL_ACK(slice)	_MMIO(0x805c + (slice) * 0x8)
-#define GEN10_SS01_EU_PGCTL_ACK(slice)	_MMIO(0x805c + ((slice) / 3) * 0x30 + \
-					      ((slice) % 3) * 0x8)
-#define GEN9_SS23_EU_PGCTL_ACK(slice)	_MMIO(0x8060 + (slice) * 0x8)
-#define GEN10_SS23_EU_PGCTL_ACK(slice)	_MMIO(0x8060 + ((slice) / 3) * 0x30 + \
-					      ((slice) % 3) * 0x8)
-#define   GEN9_PGCTL_SSA_EU08_ACK	(1 << 0)
-#define   GEN9_PGCTL_SSA_EU19_ACK	(1 << 2)
-#define   GEN9_PGCTL_SSA_EU210_ACK	(1 << 4)
-#define   GEN9_PGCTL_SSA_EU311_ACK	(1 << 6)
-#define   GEN9_PGCTL_SSB_EU08_ACK	(1 << 8)
-#define   GEN9_PGCTL_SSB_EU19_ACK	(1 << 10)
-#define   GEN9_PGCTL_SSB_EU210_ACK	(1 << 12)
-#define   GEN9_PGCTL_SSB_EU311_ACK	(1 << 14)
-
-#define GEN7_MISCCPCTL				_MMIO(0x9424)
-#define   GEN7_DOP_CLOCK_GATE_ENABLE		(1 << 0)
-#define   GEN8_DOP_CLOCK_GATE_CFCLK_ENABLE	(1 << 2)
-#define   GEN8_DOP_CLOCK_GATE_GUC_ENABLE	(1 << 4)
-#define   GEN8_DOP_CLOCK_GATE_MEDIA_ENABLE     (1 << 6)
-
-#define GEN8_GARBCNTL				_MMIO(0xB004)
-#define   GEN9_GAPS_TSV_CREDIT_DISABLE		(1 << 7)
-#define   GEN11_ARBITRATION_PRIO_ORDER_MASK	(0x3f << 22)
-#define   GEN11_HASH_CTRL_EXCL_MASK		(0x7f << 0)
-#define   GEN11_HASH_CTRL_EXCL_BIT0		(1 << 0)
-
-#define GEN11_GLBLINVL				_MMIO(0xB404)
-#define   GEN11_BANK_HASH_ADDR_EXCL_MASK	(0x7f << 5)
-#define   GEN11_BANK_HASH_ADDR_EXCL_BIT0	(1 << 5)
-
-#define GEN10_DFR_RATIO_EN_AND_CHICKEN	_MMIO(0x9550)
-#define   DFR_DISABLE			(1 << 9)
-
-#define GEN11_GACB_PERF_CTRL			_MMIO(0x4B80)
-#define   GEN11_HASH_CTRL_MASK			(0x3 << 12 | 0xf << 0)
-#define   GEN11_HASH_CTRL_BIT0			(1 << 0)
-#define   GEN11_HASH_CTRL_BIT4			(1 << 12)
-
-#define GEN11_LSN_UNSLCVC				_MMIO(0xB43C)
-#define   GEN11_LSN_UNSLCVC_GAFS_HALF_CL2_MAXALLOC	(1 << 9)
-#define   GEN11_LSN_UNSLCVC_GAFS_HALF_SF_MAXALLOC	(1 << 7)
-
-#define GEN10_SAMPLER_MODE		_MMIO(0xE18C)
-#define   ENABLE_SMALLPL			REG_BIT(15)
-#define   GEN11_SAMPLER_ENABLE_HEADLESS_MSG	REG_BIT(5)
-
 /* IVYBRIDGE DPF */
 #define GEN7_L3CDERRST1(slice)		_MMIO(0xB008 + (slice) * 0x200) /* L3CD Error Status 1 */
 #define   GEN7_L3CDERRST1_ROW_MASK	(0x7ff << 14)
@@ -8373,73 +6942,6 @@ enum {
 		(((reg) & GEN7_L3CDERRST1_SUBBANK_MASK) >> 8)
 #define   GEN7_L3CDERRST1_ENABLE	(1 << 7)
 
-#define GEN7_L3LOG(slice, i)		_MMIO(0xB070 + (slice) * 0x200 + (i) * 4)
-#define GEN7_L3LOG_SIZE			0x80
-
-#define GEN7_HALF_SLICE_CHICKEN1	_MMIO(0xe100) /* IVB GT1 + VLV */
-#define GEN7_HALF_SLICE_CHICKEN1_GT2	_MMIO(0xf100)
-#define   GEN7_MAX_PS_THREAD_DEP		(8 << 12)
-#define   GEN7_SINGLE_SUBSCAN_DISPATCH_ENABLE	(1 << 10)
-#define   GEN7_SBE_SS_CACHE_DISPATCH_PORT_SHARING_DISABLE	(1 << 4)
-#define   GEN7_PSD_SINGLE_PORT_DISPATCH_ENABLE	(1 << 3)
-
-#define GEN9_HALF_SLICE_CHICKEN5	_MMIO(0xe188)
-#define   GEN9_DG_MIRROR_FIX_ENABLE	(1 << 5)
-#define   GEN9_CCS_TLB_PREFETCH_ENABLE	(1 << 3)
-
-#define GEN8_ROW_CHICKEN		_MMIO(0xe4f0)
-#define   FLOW_CONTROL_ENABLE			REG_BIT(15)
-#define   UGM_BACKUP_MODE			REG_BIT(13)
-#define   MDQ_ARBITRATION_MODE			REG_BIT(12)
-#define   PARTIAL_INSTRUCTION_SHOOTDOWN_DISABLE	REG_BIT(8)
-#define   STALL_DOP_GATING_DISABLE		REG_BIT(5)
-#define   THROTTLE_12_5				REG_GENMASK(4, 2)
-#define   DISABLE_EARLY_EOT			REG_BIT(1)
-
-#define GEN7_ROW_CHICKEN2			_MMIO(0xe4f4)
-#define   GEN12_DISABLE_READ_SUPPRESSION	REG_BIT(15)
-#define   GEN12_DISABLE_EARLY_READ		REG_BIT(14)
-#define   GEN12_ENABLE_LARGE_GRF_MODE		REG_BIT(12)
-#define   GEN12_PUSH_CONST_DEREF_HOLD_DIS	REG_BIT(8)
-
-#define LSC_CHICKEN_BIT_0			_MMIO(0xe7c8)
-#define   FORCE_1_SUB_MESSAGE_PER_FRAGMENT	REG_BIT(15)
-#define LSC_CHICKEN_BIT_0_UDW			_MMIO(0xe7c8 + 4)
-#define   DIS_CHAIN_2XSIMD8			REG_BIT(55 - 32)
-#define   FORCE_SLM_FENCE_SCOPE_TO_TILE		REG_BIT(42 - 32)
-#define   FORCE_UGM_FENCE_SCOPE_TO_TILE		REG_BIT(41 - 32)
-#define   MAXREQS_PER_BANK			REG_GENMASK(39 - 32, 37 - 32)
-#define   DISABLE_128B_EVICTION_COMMAND_UDW	REG_BIT(36 - 32)
-
-#define GEN7_ROW_CHICKEN2_GT2		_MMIO(0xf4f4)
-#define   DOP_CLOCK_GATING_DISABLE	(1 << 0)
-#define   PUSH_CONSTANT_DEREF_DISABLE	(1 << 8)
-#define   GEN11_TDL_CLOCK_GATING_FIX_DISABLE	(1 << 1)
-
-#define GEN9_ROW_CHICKEN4				_MMIO(0xe48c)
-#define   GEN12_DISABLE_GRF_CLEAR			REG_BIT(13)
-#define   GEN12_DISABLE_TDL_PUSH			REG_BIT(9)
-#define   GEN11_DIS_PICK_2ND_EU				REG_BIT(7)
-#define   GEN12_DISABLE_HDR_PAST_PAYLOAD_HOLD_FIX	REG_BIT(4)
-
-#define HSW_ROW_CHICKEN3		_MMIO(0xe49c)
-#define  HSW_ROW_CHICKEN3_L3_GLOBAL_ATOMICS_DISABLE    (1 << 6)
-
-#define HALF_SLICE_CHICKEN2		_MMIO(0xe180)
-#define   GEN8_ST_PO_DISABLE		(1 << 13)
-
-#define HALF_SLICE_CHICKEN3		_MMIO(0xe184)
-#define   HSW_SAMPLE_C_PERFORMANCE	(1 << 9)
-#define   GEN8_CENTROID_PIXEL_OPT_DIS	(1 << 8)
-#define   GEN9_DISABLE_OCL_OOB_SUPPRESS_LOGIC	(1 << 5)
-#define   GEN8_SAMPLER_POWER_BYPASS_DIS	(1 << 1)
-
-#define GEN9_HALF_SLICE_CHICKEN7	_MMIO(0xe194)
-#define   DG2_DISABLE_ROUND_ENABLE_ALLOW_FOR_SSLA	REG_BIT(15)
-#define   GEN9_SAMPLER_HASH_COMPRESSED_READ_ADDR	REG_BIT(8)
-#define   GEN9_ENABLE_YV12_BUGFIX			REG_BIT(4)
-#define   GEN9_ENABLE_GPGPU_PREEMPTION			REG_BIT(2)
-
 /* Audio */
 #define G4X_AUD_VID_DID			_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x62020)
 #define   INTEL_AUDIO_DEVCL		0x808629FB
@@ -11105,39 +9607,6 @@ enum skl_power_gate {
 #define MIPI_READ_DATA_VALID(port)	_MMIO_MIPI(port, _MIPIA_READ_DATA_VALID, _MIPIC_READ_DATA_VALID)
 #define  READ_DATA_VALID(n)				(1 << (n))
 
-/* MOCS (Memory Object Control State) registers */
-#define GEN9_LNCFCMOCS(i)	_MMIO(0xb020 + (i) * 4)	/* L3 Cache Control */
-#define GEN9_LNCFCMOCS_REG_COUNT	32
-
-#define __GEN9_RCS0_MOCS0	0xc800
-#define GEN9_GFX_MOCS(i)	_MMIO(__GEN9_RCS0_MOCS0 + (i) * 4)
-#define __GEN9_VCS0_MOCS0	0xc900
-#define GEN9_MFX0_MOCS(i)	_MMIO(__GEN9_VCS0_MOCS0 + (i) * 4)
-#define __GEN9_VCS1_MOCS0	0xca00
-#define GEN9_MFX1_MOCS(i)	_MMIO(__GEN9_VCS1_MOCS0 + (i) * 4)
-#define __GEN9_VECS0_MOCS0	0xcb00
-#define GEN9_VEBOX_MOCS(i)	_MMIO(__GEN9_VECS0_MOCS0 + (i) * 4)
-#define __GEN9_BCS0_MOCS0	0xcc00
-#define GEN9_BLT_MOCS(i)	_MMIO(__GEN9_BCS0_MOCS0 + (i) * 4)
-#define __GEN11_VCS2_MOCS0	0x10000
-#define GEN11_MFX2_MOCS(i)	_MMIO(__GEN11_VCS2_MOCS0 + (i) * 4)
-
-#define GEN9_SCRATCH_LNCF1		_MMIO(0xb008)
-#define   GEN9_LNCF_NONIA_COHERENT_ATOMICS_ENABLE REG_BIT(0)
-
-#define GEN9_SCRATCH1			_MMIO(0xb11c)
-#define   EVICTION_PERF_FIX_ENABLE	REG_BIT(8)
-
-#define GEN10_SCRATCH_LNCF2		_MMIO(0xb0a0)
-#define   PMFLUSHDONE_LNICRSDROP	(1 << 20)
-#define   PMFLUSH_GAPL3UNBLOCK		(1 << 21)
-#define   PMFLUSHDONE_LNEBLK		(1 << 22)
-
-#define XEHP_L3NODEARBCFG		_MMIO(0xb0b4)
-#define   XEHP_LNESPARE			REG_BIT(19)
-
-#define GEN12_GLOBAL_MOCS(i)	_MMIO(0x4000 + (i) * 4) /* Global MOCS regs */
-
 #define GEN12_GSMBASE			_MMIO(0x108100)
 #define GEN12_DSMBASE			_MMIO(0x1080C0)
 
@@ -11146,17 +9615,6 @@ enum skl_power_gate {
 #define   SGGI_DIS			REG_BIT(15)
 #define   SGR_DIS			REG_BIT(13)
 
-/* gamt regs */
-#define GEN8_L3_LRA_1_GPGPU _MMIO(0x4dd4)
-#define   GEN8_L3_LRA_1_GPGPU_DEFAULT_VALUE_BDW  0x67F1427F /* max/min for LRA1/2 */
-#define   GEN8_L3_LRA_1_GPGPU_DEFAULT_VALUE_CHV  0x5FF101FF /* max/min for LRA1/2 */
-#define   GEN9_L3_LRA_1_GPGPU_DEFAULT_VALUE_SKL  0x67F1427F /*    "        " */
-#define   GEN9_L3_LRA_1_GPGPU_DEFAULT_VALUE_BXT  0x5FF101FF /*    "        " */
-
-#define MMCD_MISC_CTRL		_MMIO(0x4ddc) /* skl+ */
-#define  MMCD_PCLA		(1 << 31)
-#define  MMCD_HOTSPOT_EN	(1 << 27)
-
 #define _ICL_PHY_MISC_A		0x64C00
 #define _ICL_PHY_MISC_B		0x64C04
 #define ICL_PHY_MISC(port)	_MMIO_PORT(port, _ICL_PHY_MISC_A, \
@@ -11530,7 +9988,4 @@ enum skl_power_gate {
 #define CLKGATE_DIS_MISC			_MMIO(0x46534)
 #define  CLKGATE_DIS_MISC_DMASC_GATING_DIS	REG_BIT(21)
 
-#define SLICE_COMMON_ECO_CHICKEN1		_MMIO(0x731C)
-#define   MSC_MSAA_REODER_BUF_BYPASS_DISABLE	REG_BIT(14)
-
 #endif /* _I915_REG_H_ */
diff --git a/drivers/gpu/drm/i915/i915_sysfs.c b/drivers/gpu/drm/i915/i915_sysfs.c
index fae4d1f4f275..a4d1759375b9 100644
--- a/drivers/gpu/drm/i915/i915_sysfs.c
+++ b/drivers/gpu/drm/i915/i915_sysfs.c
@@ -30,6 +30,7 @@
 #include <linux/stat.h>
 #include <linux/sysfs.h>
 
+#include "gt/intel_gt_regs.h"
 #include "gt/intel_rc6.h"
 #include "gt/intel_rps.h"
 #include "gt/sysfs_engines.h"
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 46b21680e601..859be750fb22 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -44,6 +44,7 @@
 #include "display/skl_universal_plane.h"
 
 #include "gt/intel_engine_regs.h"
+#include "gt/intel_gt_regs.h"
 #include "gt/intel_llc.h"
 
 #include "i915_drv.h"
diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
index 00f9a05d2686..67ca4ecbc9e5 100644
--- a/drivers/gpu/drm/i915/intel_uncore.c
+++ b/drivers/gpu/drm/i915/intel_uncore.c
@@ -24,6 +24,7 @@
 #include <linux/pm_runtime.h>
 
 #include "gt/intel_engine_regs.h"
+#include "gt/intel_gt_regs.h"
 
 #include "i915_drv.h"
 #include "i915_iosf_mbi.h"
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_irq.c b/drivers/gpu/drm/i915/pxp/intel_pxp_irq.c
index 8d5553772ded..04745f914407 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_irq.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_irq.c
@@ -7,6 +7,7 @@
 #include "intel_pxp_irq.h"
 #include "intel_pxp_session.h"
 #include "gt/intel_gt_irq.h"
+#include "gt/intel_gt_regs.h"
 #include "gt/intel_gt_types.h"
 #include "i915_irq.h"
 #include "i915_reg.h"
diff --git a/drivers/gpu/drm/i915/vlv_suspend.c b/drivers/gpu/drm/i915/vlv_suspend.c
index 23adb64d640a..1d9da32195c2 100644
--- a/drivers/gpu/drm/i915/vlv_suspend.c
+++ b/drivers/gpu/drm/i915/vlv_suspend.c
@@ -14,6 +14,8 @@
 #include "intel_pm.h"
 #include "vlv_suspend.h"
 
+#include "gt/intel_gt_regs.h"
+
 struct vlv_s0ix_state {
 	/* GAM */
 	u32 wr_watermark;
-- 
2.34.1

