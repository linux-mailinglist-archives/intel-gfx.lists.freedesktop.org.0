Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 97F877782FB
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Aug 2023 23:58:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A09F10E503;
	Thu, 10 Aug 2023 21:58:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C65510E4B9
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Aug 2023 21:58:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691704689; x=1723240689;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=32AiiQxT9jkt22AwZr43gpjREHWJweJdVhLeAIBFy14=;
 b=Y9a/r9DHaduGKkhbXdB8qx0THWpEmyxv7txx9GxXOO+inED3zjB2Enuo
 2n5I6t8NsymQUG7pMIGWBV4RbPEiSmWakOPfaXrpjZkCwwss3WYNjzhI8
 sC1VkZsR2u1vtnh/LuEq3qX5SSMBiNK6YFNzxpVWjibX/1aI/BFLi5/wb
 XDVbCj4jSIsiV9Maa3zzyfugPQPoRGU6hhuGKRB9MS61G/6VNBlZ5LfLj
 t6T37mbfVoYc83DJ2hi/fXgtrxAmdDzXkoXMAZcP9IETfnesXmuMQH536
 eUoCTkJAJm/zTkAgpld/xKBMA1xKzVokAbSUKe+taOriGtfxQr6VhRYy2 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10798"; a="369004789"
X-IronPort-AV: E=Sophos;i="6.01,163,1684825200"; d="scan'208";a="369004789"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2023 14:58:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="875905553"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.147])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2023 14:58:12 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Aug 2023 14:57:52 -0700
Message-ID: <20230810215750.3609161-12-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230810215750.3609161-11-matthew.d.roper@intel.com>
References: <20230810215750.3609161-11-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 1/9] drm/i915: Consolidate condition for
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

