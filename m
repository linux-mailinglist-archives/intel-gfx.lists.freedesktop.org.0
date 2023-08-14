Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD15977C143
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Aug 2023 22:06:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9AAB310E10B;
	Mon, 14 Aug 2023 20:06:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A63410E0DE
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Aug 2023 20:06:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692043601; x=1723579601;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=32AiiQxT9jkt22AwZr43gpjREHWJweJdVhLeAIBFy14=;
 b=GbNsQFS9/+LWMOjNn8Ki+QXpbvJx2JGXvMS/hOPqanmHtM0MmlpHC1+l
 TClalHfq6IrxfurpYhcLTPyWHTqd6lY93Dn9kTlSbS1rFgwHdY3CUmJyS
 lfLJmL2PtRtDJshJcQLPIeh5aRKO7UxeeqlBxp9TI3JBcB1L60MjKJYMV
 JK/PxRe2ObUHXD4RpcK7Ncpni1wRJVdDs/s/lJcXLZxhTXU4Xr8qHR5OV
 ibTWETFcHZs9mKR5cbr6ZGhUdaCPHPd5UYhCpy0u+i6yWCb7Muqo+2oYr
 c3Ku23sHpscMPlljxjryx+j/06LXrhchccEK8QeTs87V+6HzzCzG5b55O Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10802"; a="369602865"
X-IronPort-AV: E=Sophos;i="6.01,173,1684825200"; d="scan'208";a="369602865"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2023 13:06:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10802"; a="683420480"
X-IronPort-AV: E=Sophos;i="6.01,173,1684825200"; d="scan'208";a="683420480"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.147])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2023 13:06:40 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Aug 2023 13:06:34 -0700
Message-ID: <20230814200632.56105-12-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230814200632.56105-11-matthew.d.roper@intel.com>
References: <20230814200632.56105-11-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 1/9] drm/i915: Consolidate condition for
 Wa_22011802037
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
Cc: matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The workaround bounds for Wa_22011802037 are somewhat complex and are
replicated in several places throughout the code.  Pull the condition
out to a helper function to prevent mistakes if this condition needs to
change again in the future.

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c      |  4 +---
 .../drm/i915/gt/intel_execlists_submission.c   |  4 +---
 drivers/gpu/drm/i915/gt/intel_reset.c          | 18 ++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_reset.h          |  2 ++
 drivers/gpu/drm/i915/gt/uc/intel_guc.c         |  4 +---
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c  |  4 +---
 6 files changed, 24 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index ee15486fed0d..dfb69fc977a0 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -1617,9 +1617,7 @@ static int __intel_engine_stop_cs(struct intel_engine_cs *engine,
 	 * Wa_22011802037: Prior to doing a reset, ensure CS is
 	 * stopped, set ring stop bit and prefetch disable bit to halt CS
 	 */
-	if (IS_MTL_GRAPHICS_STEP(engine->i915, M, STEP_A0, STEP_B0) ||
-	    (GRAPHICS_VER(engine->i915) >= 11 &&
-	    GRAPHICS_VER_FULL(engine->i915) < IP_VER(12, 70)))
+	if (intel_engine_reset_needs_wa_22011802037(engine->gt))
 		intel_uncore_write_fw(uncore, RING_MODE_GEN7(engine->mmio_base),
 				      _MASKED_BIT_ENABLE(GEN12_GFX_PREFETCH_DISABLE));
 
diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index 8a641bcf777c..4d05321dc5b5 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -3001,9 +3001,7 @@ static void execlists_reset_prepare(struct intel_engine_cs *engine)
 	 * Wa_22011802037: In addition to stopping the cs, we need
 	 * to wait for any pending mi force wakeups
 	 */
-	if (IS_MTL_GRAPHICS_STEP(engine->i915, M, STEP_A0, STEP_B0) ||
-	    (GRAPHICS_VER(engine->i915) >= 11 &&
-	    GRAPHICS_VER_FULL(engine->i915) < IP_VER(12, 70)))
+	if (intel_engine_reset_needs_wa_22011802037(engine->gt))
 		intel_engine_wait_for_pending_mi_fw(engine);
 
 	engine->execlists.reset_ccid = active_ccid(engine);
diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
index cc6bd21a3e51..1ff7b42521c9 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.c
+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
@@ -1632,6 +1632,24 @@ void __intel_fini_wedge(struct intel_wedge_me *w)
 	w->gt = NULL;
 }
 
+/*
+ * Wa_22011802037 requires that we (or the GuC) ensure that no command
+ * streamers are executing MI_FORCE_WAKE while an engine reset is initiated.
+ */
+bool intel_engine_reset_needs_wa_22011802037(struct intel_gt *gt)
+{
+	if (GRAPHICS_VER(gt->i915) < 11)
+		return false;
+
+	if (IS_MTL_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0))
+		return true;
+
+	if (GRAPHICS_VER_FULL(gt->i915) >= IP_VER(12, 70))
+		return false;
+
+	return true;
+}
+
 #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
 #include "selftest_reset.c"
 #include "selftest_hangcheck.c"
diff --git a/drivers/gpu/drm/i915/gt/intel_reset.h b/drivers/gpu/drm/i915/gt/intel_reset.h
index 25c975b6e8fc..f615b30b81c5 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.h
+++ b/drivers/gpu/drm/i915/gt/intel_reset.h
@@ -78,4 +78,6 @@ void __intel_fini_wedge(struct intel_wedge_me *w);
 bool intel_has_gpu_reset(const struct intel_gt *gt);
 bool intel_has_reset_engine(const struct intel_gt *gt);
 
+bool intel_engine_reset_needs_wa_22011802037(struct intel_gt *gt);
+
 #endif /* I915_RESET_H */
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
index 569b5fe94c41..22649831d3bd 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
@@ -292,9 +292,7 @@ static u32 guc_ctl_wa_flags(struct intel_guc *guc)
 		flags |= GUC_WA_DUAL_QUEUE;
 
 	/* Wa_22011802037: graphics version 11/12 */
-	if (IS_MTL_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0) ||
-	    (GRAPHICS_VER(gt->i915) >= 11 &&
-	    GRAPHICS_VER_FULL(gt->i915) < IP_VER(12, 70)))
+	if (intel_engine_reset_needs_wa_22011802037(gt))
 		flags |= GUC_WA_PRE_PARSER;
 
 	/* Wa_16011777198:dg2 */
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index a0e3ef1c65d2..1bd5d8f7c40b 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -1658,9 +1658,7 @@ static void guc_engine_reset_prepare(struct intel_engine_cs *engine)
 	 * Wa_22011802037: In addition to stopping the cs, we need
 	 * to wait for any pending mi force wakeups
 	 */
-	if (IS_MTL_GRAPHICS_STEP(engine->i915, M, STEP_A0, STEP_B0) ||
-	    (GRAPHICS_VER(engine->i915) >= 11 &&
-	     GRAPHICS_VER_FULL(engine->i915) < IP_VER(12, 70))) {
+	if (intel_engine_reset_needs_wa_22011802037(engine->gt)) {
 		intel_engine_stop_cs(engine);
 		intel_engine_wait_for_pending_mi_fw(engine);
 	}
-- 
2.41.0

