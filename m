Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A8C83090DC
	for <lists+intel-gfx@lfdr.de>; Sat, 30 Jan 2021 01:16:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 585E86EC6C;
	Sat, 30 Jan 2021 00:16:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B06E6EC6C
 for <intel-gfx@lists.freedesktop.org>; Sat, 30 Jan 2021 00:16:30 +0000 (UTC)
IronPort-SDR: cCkMCHmsJxZwK59h++SpEg6X1hAtcEtP7h5kr177mpzSI2+sUNU/sj1DL1nR384669Nd9IKjim
 RbnPacny0pcw==
X-IronPort-AV: E=McAfee;i="6000,8403,9879"; a="176993013"
X-IronPort-AV: E=Sophos;i="5.79,387,1602572400"; d="scan'208";a="176993013"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2021 16:16:29 -0800
IronPort-SDR: kJFg/5jp9mlAT/SCJIu+7ie+0mEINhBRjc4t2CCFtfURR/vtLqRlXfW3mFICbavOqwxqCnYkGe
 WXyYRSImLF+w==
X-IronPort-AV: E=Sophos;i="5.79,386,1602572400"; d="scan'208";a="505901027"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2021 16:16:29 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 29 Jan 2021 16:16:20 -0800
Message-Id: <20210130001620.2056241-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Don't access non-existent PGTBL_ER
 register
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PGTBL_ER (0x2024) isn't documented in the bspec of any recent (SNB+)
platform; it seems this register was removed ages ago and we probably
shouldn't still be trying to clear it at init or read it during error
state dump.

Since I don't have easy access to a gen4 or gen5 era bspec to confirm
exactly when it went away, I've left the initial clearing of the
register on those platforms to be safe, but removed it for everything
newer.  The error state's readout and printing of the register is
removed for all platforms, as is the GVT trap setup on BXT.

Bspec: 94, 34387
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt.c    | 2 +-
 drivers/gpu/drm/i915/gvt/handlers.c   | 1 -
 drivers/gpu/drm/i915/i915_gpu_error.c | 2 --
 drivers/gpu/drm/i915/i915_gpu_error.h | 1 -
 4 files changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index 35ff68ada4f1..57456a1af5e0 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -203,7 +203,7 @@ intel_gt_clear_error_registers(struct intel_gt *gt,
 	struct intel_uncore *uncore = gt->uncore;
 	u32 eir;
 
-	if (!IS_GEN(i915, 2))
+	if (IS_GEN_RANGE(i915, 3, 5))
 		clear_register(uncore, PGTBL_ER);
 
 	if (INTEL_GEN(i915) < 4)
diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/gvt/handlers.c
index 6eeaeecb7f85..8db71d3b36ba 100644
--- a/drivers/gpu/drm/i915/gvt/handlers.c
+++ b/drivers/gpu/drm/i915/gvt/handlers.c
@@ -3189,7 +3189,6 @@ static int init_bxt_mmio_info(struct intel_gvt *gvt)
 	MMIO_D(ERROR_GEN6, D_BXT);
 	MMIO_D(DONE_REG, D_BXT);
 	MMIO_D(EIR, D_BXT);
-	MMIO_D(PGTBL_ER, D_BXT);
 	MMIO_D(_MMIO(0x4194), D_BXT);
 	MMIO_D(_MMIO(0x4294), D_BXT);
 	MMIO_D(_MMIO(0x4494), D_BXT);
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index 0cb3686ed91d..c9eb076ad1c2 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -697,7 +697,6 @@ static void err_print_gt(struct drm_i915_error_state_buf *m,
 	err_printf(m, "IER: 0x%08x\n", gt->ier);
 	for (i = 0; i < gt->ngtier; i++)
 		err_printf(m, "GTIER[%d]: 0x%08x\n", i, gt->gtier[i]);
-	err_printf(m, "PGTBL_ER: 0x%08x\n", gt->pgtbl_er);
 	err_printf(m, "FORCEWAKE: 0x%08x\n", gt->forcewake);
 	err_printf(m, "DERRMR: 0x%08x\n", gt->derrmr);
 
@@ -1630,7 +1629,6 @@ static void gt_record_regs(struct intel_gt_coredump *gt)
 		gt->ier = intel_uncore_read(uncore, GEN2_IER);
 	}
 	gt->eir = intel_uncore_read(uncore, EIR);
-	gt->pgtbl_er = intel_uncore_read(uncore, PGTBL_ER);
 }
 
 static void gt_record_info(struct intel_gt_coredump *gt)
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.h b/drivers/gpu/drm/i915/i915_gpu_error.h
index 1764fd254df3..05c601e9c97f 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.h
+++ b/drivers/gpu/drm/i915/i915_gpu_error.h
@@ -124,7 +124,6 @@ struct intel_gt_coredump {
 
 	/* Generic register state */
 	u32 eir;
-	u32 pgtbl_er;
 	u32 ier;
 	u32 gtier[6], ngtier;
 	u32 derrmr;
-- 
2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
