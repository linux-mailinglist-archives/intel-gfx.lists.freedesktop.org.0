Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9447846F6A9
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Dec 2021 23:18:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C63C10E225;
	Thu,  9 Dec 2021 22:18:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42F1F10E220;
 Thu,  9 Dec 2021 22:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639088296; x=1670624296;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ExDWmgbFmgQ3T+PD5ZiQaZV/em6QjeWb0HbwidEPOGM=;
 b=GRy73aoot9o0tM9vsjDYrUD0LYMVZNyEUoE4PlLWdBPwlet4zrMtXxdt
 PvEE03ZiIwfeLz+jvfPW3exl3rNE2muTrhYwmj9U5ygq2QvPo36ayf1OV
 hVyFI5vVMlo8ksTsIXeD1qpY5PP5PbrSCJxdD5cZuCSjG4DLa3TbXiPcG
 T2yV2fsHwob4XX3Z4x3w+Q5cSPE03yil0ev+3kDHGF/OW82yzVi+9oGe4
 c01OGGba51xxCnnBVKBictjcRXvfJdvkSg4WYSSZcoB4WB/orEdLGsx8z
 OnzVuH/WUOp/Td9CkvgyAGvZ1gxwJOk2c2gZXjYE60Ob85yzEG0MZjhvy w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10193"; a="225488593"
X-IronPort-AV: E=Sophos;i="5.88,193,1635231600"; d="scan'208";a="225488593"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2021 14:18:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,193,1635231600"; d="scan'208";a="680507761"
Received: from vbelgaum-ubuntu.fm.intel.com ([10.1.27.27])
 by orsmga005.jf.intel.com with ESMTP; 09 Dec 2021 14:18:15 -0800
From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Thu,  9 Dec 2021 14:18:05 -0800
Message-Id: <20211209221805.26960-1-vinay.belgaumkar@intel.com>
X-Mailer: git-send-email 2.34.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/guc: Request RP0 before loading
 firmware
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

By default, GT (and GuC) run at RPn. Requesting for RP0
before firmware load can speed up DMA and HuC auth as well.
In addition to writing to 0xA008, we also need to enable
swreq in 0xA024 so that Punit will pay heed to our request.

SLPC will restore the frequency back to RPn after initialization,
but we need to manually do that for the non-SLPC path.

Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_rps.c   | 59 +++++++++++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_rps.h   |  2 +
 drivers/gpu/drm/i915/gt/uc/intel_uc.c |  9 ++++
 drivers/gpu/drm/i915/i915_reg.h       |  4 ++
 4 files changed, 74 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index 07ff7ba7b2b7..4f7fe079ed4a 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -2226,6 +2226,65 @@ u32 intel_rps_read_state_cap(struct intel_rps *rps)
 		return intel_uncore_read(uncore, GEN6_RP_STATE_CAP);
 }
 
+static void intel_rps_set_manual(struct intel_rps *rps, bool enable)
+{
+	struct intel_uncore *uncore = rps_to_uncore(rps);
+	u32 state = enable ? GEN9_RPSWCTL_ENABLE : GEN9_RPSWCTL_DISABLE;
+
+	if (enable)
+		intel_rps_clear_timer(rps);
+
+	/* Allow punit to process software requests */
+	intel_uncore_write(uncore, GEN6_RP_CONTROL, state);
+
+	if (!enable)
+		intel_rps_set_timer(rps);
+}
+
+void intel_rps_raise_unslice(struct intel_rps *rps)
+{
+	struct intel_uncore *uncore = rps_to_uncore(rps);
+	u32 rp0_unslice_req;
+
+	intel_rps_set_manual(rps, true);
+
+	/* RP limits have not been read yet */
+	if (!rps->rp0_freq)
+		rp0_unslice_req = ((intel_rps_read_state_cap(rps) >> 0)
+				   & 0xff) * GEN9_FREQ_SCALER;
+	else
+		rp0_unslice_req = rps->rp0_freq;
+
+	intel_uncore_write(uncore, GEN6_RPNSWREQ,
+			   ((rp0_unslice_req <<
+			   GEN9_SW_REQ_UNSLICE_RATIO_SHIFT) |
+			   GEN9_IGNORE_SLICE_RATIO));
+
+	intel_rps_set_manual(rps, false);
+}
+
+void intel_rps_lower_unslice(struct intel_rps *rps)
+{
+	struct intel_uncore *uncore = rps_to_uncore(rps);
+	u32 rpn_unslice_req;
+
+	intel_rps_set_manual(rps, true);
+
+	/* RP limits have not been read yet */
+	if (!rps->min_freq)
+		rpn_unslice_req = ((intel_rps_read_state_cap(rps) >> 16)
+				   & 0xff) * GEN9_FREQ_SCALER;
+	else
+		rpn_unslice_req = rps->min_freq;
+
+	intel_uncore_write(uncore, GEN6_RPNSWREQ,
+			   ((rpn_unslice_req <<
+			   GEN9_SW_REQ_UNSLICE_RATIO_SHIFT) |
+			   GEN9_IGNORE_SLICE_RATIO));
+
+	intel_rps_set_manual(rps, false);
+}
+
 /* External interface for intel_ips.ko */
 
 static struct drm_i915_private __rcu *ips_mchdev;
diff --git a/drivers/gpu/drm/i915/gt/intel_rps.h b/drivers/gpu/drm/i915/gt/intel_rps.h
index aee12f37d38a..c6d76a3d1331 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.h
+++ b/drivers/gpu/drm/i915/gt/intel_rps.h
@@ -45,6 +45,8 @@ u32 intel_rps_get_rpn_frequency(struct intel_rps *rps);
 u32 intel_rps_read_punit_req(struct intel_rps *rps);
 u32 intel_rps_read_punit_req_frequency(struct intel_rps *rps);
 u32 intel_rps_read_state_cap(struct intel_rps *rps);
+void intel_rps_raise_unslice(struct intel_rps *rps);
+void intel_rps_lower_unslice(struct intel_rps *rps);
 
 void gen5_rps_irq_handler(struct intel_rps *rps);
 void gen6_rps_irq_handler(struct intel_rps *rps, u32 pm_iir);
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
index 2fef3b0bbe95..3693c4e7dad0 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
@@ -8,6 +8,7 @@
 #include "intel_guc.h"
 #include "intel_guc_ads.h"
 #include "intel_guc_submission.h"
+#include "gt/intel_rps.h"
 #include "intel_uc.h"
 
 #include "i915_drv.h"
@@ -462,6 +463,8 @@ static int __uc_init_hw(struct intel_uc *uc)
 	else
 		attempts = 1;
 
+	intel_rps_raise_unslice(&uc_to_gt(uc)->rps);
+
 	while (attempts--) {
 		/*
 		 * Always reset the GuC just before (re)loading, so
@@ -499,6 +502,9 @@ static int __uc_init_hw(struct intel_uc *uc)
 		ret = intel_guc_slpc_enable(&guc->slpc);
 		if (ret)
 			goto err_submission;
+	} else {
+		/* Restore GT back to RPn for non-SLPC path */
+		intel_rps_lower_unslice(&uc_to_gt(uc)->rps);
 	}
 
 	drm_info(&i915->drm, "%s firmware %s version %u.%u %s:%s\n",
@@ -529,6 +535,9 @@ static int __uc_init_hw(struct intel_uc *uc)
 err_log_capture:
 	__uc_capture_load_err_log(uc);
 err_out:
+	/* Return GT back to RPn */
+	intel_rps_lower_unslice(&uc_to_gt(uc)->rps);
+
 	__uc_sanitize(uc);
 
 	if (!ret) {
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 1891e7fac39b..b2a86a26b843 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -9399,6 +9399,7 @@ enum {
 #define   GEN6_OFFSET(x)			((x) << 19)
 #define   GEN6_AGGRESSIVE_TURBO			(0 << 15)
 #define   GEN9_SW_REQ_UNSLICE_RATIO_SHIFT	23
+#define   GEN9_IGNORE_SLICE_RATIO		(0 << 0)
 
 #define GEN6_RC_VIDEO_FREQ			_MMIO(0xA00C)
 #define GEN6_RC_CONTROL				_MMIO(0xA090)
@@ -9434,6 +9435,9 @@ enum {
 #define   GEN6_RP_UP_BUSY_CONT			(0x4 << 3)
 #define   GEN6_RP_DOWN_IDLE_AVG			(0x2 << 0)
 #define   GEN6_RP_DOWN_IDLE_CONT		(0x1 << 0)
+#define   GEN6_RPSWCTL_SHIFT			9
+#define   GEN9_RPSWCTL_ENABLE			(0x2 << GEN6_RPSWCTL_SHIFT)
+#define   GEN9_RPSWCTL_DISABLE			(0x0 << GEN6_RPSWCTL_SHIFT)
 #define GEN6_RP_UP_THRESHOLD			_MMIO(0xA02C)
 #define GEN6_RP_DOWN_THRESHOLD			_MMIO(0xA030)
 #define GEN6_RP_CUR_UP_EI			_MMIO(0xA050)
-- 
2.34.0

