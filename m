Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 857CF758867
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jul 2023 00:28:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33F1F10E3E3;
	Tue, 18 Jul 2023 22:28:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DA4F10E06C
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jul 2023 22:28:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689719281; x=1721255281;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SQnGTnwaA+SlzD9oMj23cfV8KBEJktVDZL+fDQoHMUA=;
 b=RI8Qv2Kwe0mgoROo54vyK9bDGHqa316pj6JgMPdylzX4spHubD/buTFO
 7Y+i6A9g9Jb7mAnCO4YDVVqknRXQsQFjfMIuf5K4Lh1Q4FDf4XkhpbQWW
 nybtDLDvIkcbA0ULBn6yZqNRq0A0tkG8y6QDl5URw004FI4HS6rC8GFdd
 UXj8S34xiW2+PWnai5nCVHRt37se3LyS8FmSf1m+/cKavsQdXXXTdqV4v
 8AiAbFMY7lqaXUBIyL6xYztGJRKUAatC/owcoQ/PfXdzVQs5lVSuQCg3e
 fuNNE0tZnxXV7nojfu87JeXvoG6RQZ4JbPZzL1nIObUN1B8w35gZN96QI g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10775"; a="432508071"
X-IronPort-AV: E=Sophos;i="6.01,215,1684825200"; d="scan'208";a="432508071"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2023 15:28:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10775"; a="970403887"
X-IronPort-AV: E=Sophos;i="6.01,215,1684825200"; d="scan'208";a="970403887"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.147])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2023 15:28:01 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 18 Jul 2023 15:27:55 -0700
Message-ID: <20230718222753.1075713-11-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230718222753.1075713-10-matthew.d.roper@intel.com>
References: <20230718222753.1075713-10-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/8] drm/i915: Consolidate condition for
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
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c      |  4 +---
 .../drm/i915/gt/intel_execlists_submission.c   |  4 +---
 drivers/gpu/drm/i915/gt/intel_reset.c          | 18 ++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_reset.h          |  2 ++
 drivers/gpu/drm/i915/gt/uc/intel_guc.c         |  4 +---
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c  |  4 +---
 6 files changed, 24 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 0aff5bb13c53..0d095337b350 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -1616,9 +1616,7 @@ static int __intel_engine_stop_cs(struct intel_engine_cs *engine,
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
index d85b5a6d981f..b9f297c546fb 100644
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
index 2eb891b270ae..1e532981f74e 100644
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

