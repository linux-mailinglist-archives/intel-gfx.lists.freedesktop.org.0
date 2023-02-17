Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1451869B58F
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Feb 2023 23:34:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72C7A10E473;
	Fri, 17 Feb 2023 22:33:52 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6CCE310E1F8;
 Fri, 17 Feb 2023 22:33:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676673230; x=1708209230;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Y3/awSCXCIPvZ/aWzentz9gV3n3Hy1NPG5pgRp41mv8=;
 b=KuMFARDvXRKW9toNsQBsLebsfrvbWGGQ/ahsrzRJZthSxIjUBytAXdJb
 YpeOcImaTfUco3OTugbCj96vDR3WW4ebdMkRnaH4S64om6ndaTv5+U1Kh
 ueVhLQHQUBy4nZb3uOwY6VZmPE9a9cbnC2RtdrMW6OFcsuCniKdU10wim
 +D9qxhmzmw1ckdTtFgWLWaEPlA/XP71SMTcaSuZVpCDbk0j4UrkygGcXb
 YjVg65TwgTNVMMVhzHo4EjfH0inSpgGC2xAf9rClK3zlDSDmIry8mrVE3
 4tMzJ7+TkJGhtQ1GPVcN8WRLlEjbG06OTLw75K9e+E6a9W37zISdBbjRP Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10624"; a="320211572"
X-IronPort-AV: E=Sophos;i="5.97,306,1669104000"; d="scan'208";a="320211572"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2023 14:33:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10624"; a="664021162"
X-IronPort-AV: E=Sophos;i="5.97,306,1669104000"; d="scan'208";a="664021162"
Received: from relo-linux-5.jf.intel.com ([10.165.21.152])
 by orsmga007.jf.intel.com with ESMTP; 17 Feb 2023 14:33:49 -0800
From: John.C.Harrison@Intel.com
To: Intel-GFX@Lists.FreeDesktop.Org
Date: Fri, 17 Feb 2023 14:33:08 -0800
Message-Id: <20230217223308.3449737-3-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230217223308.3449737-1-John.C.Harrison@Intel.com>
References: <20230217223308.3449737-1-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/2] drm/i915/guc: Fix missing return code
 checks in submission init
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
Cc: DRI-Devel@Lists.FreeDesktop.Org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: John Harrison <John.C.Harrison@Intel.com>

The CI results for the 'fast request' patch set (enables error return
codes for fire-and-forget H2G messages) hit an issue with the KMD
sending context submission requests on an invalid context. That was
caused by a fault injection probe failing the context creation of a
kernel context. However, there was no return code checking on any of
the kernel context registration paths. So the driver kept going and
tried to use the kernel context for the record defaults process.

This would not cause any actual problems. The invalid requests would
be rejected by GuC and ultimately the start up sequence would
correctly wedge due to the context creation failure. But fixing the
issue correctly rather ignoring it means we won't get CI complaining
when the fast request patch lands and enables the extra error checking.

So fix it by checking for errors and aborting as appropriate when
creating kernel contexts. While at it, clean up some other submission
init related failure cleanup paths. Also, rename guc_init_lrc_mapping
to guc_init_submission as the former name hasn't been valid in a long
time.

v2: Add another wrapper to keep the flow balanced (Daniele)

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
---
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 97 ++++++++++++++-----
 .../gpu/drm/i915/gt/uc/intel_guc_submission.h |  2 +-
 drivers/gpu/drm/i915/gt/uc/intel_uc.c         |  7 +-
 3 files changed, 80 insertions(+), 26 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index a04d7049a2c2f..88e881b100cf0 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -1441,7 +1441,7 @@ static int guc_action_enable_usage_stats(struct intel_guc *guc)
 	return intel_guc_send(guc, action, ARRAY_SIZE(action));
 }
 
-static void guc_init_engine_stats(struct intel_guc *guc)
+static int guc_init_engine_stats(struct intel_guc *guc)
 {
 	struct intel_gt *gt = guc_to_gt(guc);
 	intel_wakeref_t wakeref;
@@ -1454,6 +1454,13 @@ static void guc_init_engine_stats(struct intel_guc *guc)
 		guc_err(guc, "Failed to enable usage stats: %pe\n", ERR_PTR(ret));
 	else
 		guc_enable_busyness_worker(guc);
+
+	return ret;
+}
+
+static void guc_fini_engine_stats(struct intel_guc *guc)
+{
+	guc_cancel_busyness_worker(guc);
 }
 
 void intel_guc_busyness_park(struct intel_gt *gt)
@@ -4109,9 +4116,11 @@ static void guc_set_default_submission(struct intel_engine_cs *engine)
 	engine->submit_request = guc_submit_request;
 }
 
-static inline void guc_kernel_context_pin(struct intel_guc *guc,
-					  struct intel_context *ce)
+static inline int guc_kernel_context_pin(struct intel_guc *guc,
+					 struct intel_context *ce)
 {
+	int ret;
+
 	/*
 	 * Note: we purposefully do not check the returns below because
 	 * the registration can only fail if a reset is just starting.
@@ -4119,16 +4128,24 @@ static inline void guc_kernel_context_pin(struct intel_guc *guc,
 	 * isn't happening and even it did this code would be run again.
 	 */
 
-	if (context_guc_id_invalid(ce))
-		pin_guc_id(guc, ce);
+	if (context_guc_id_invalid(ce)) {
+		ret = pin_guc_id(guc, ce);
+
+		if (ret < 0)
+			return ret;
+	}
 
 	if (!test_bit(CONTEXT_GUC_INIT, &ce->flags))
 		guc_context_init(ce);
 
-	try_context_registration(ce, true);
+	ret = try_context_registration(ce, true);
+	if (ret)
+		unpin_guc_id(guc, ce);
+
+	return ret;
 }
 
-static inline void guc_init_lrc_mapping(struct intel_guc *guc)
+static inline int guc_init_submission(struct intel_guc *guc)
 {
 	struct intel_gt *gt = guc_to_gt(guc);
 	struct intel_engine_cs *engine;
@@ -4155,9 +4172,17 @@ static inline void guc_init_lrc_mapping(struct intel_guc *guc)
 		struct intel_context *ce;
 
 		list_for_each_entry(ce, &engine->pinned_contexts_list,
-				    pinned_contexts_link)
-			guc_kernel_context_pin(guc, ce);
+				    pinned_contexts_link) {
+			int ret = guc_kernel_context_pin(guc, ce);
+
+			if (ret) {
+				/* No point in trying to clean up as i915 will wedge on failure */
+				return ret;
+			}
+		}
 	}
+
+	return 0;
 }
 
 static void guc_release(struct intel_engine_cs *engine)
@@ -4400,31 +4425,57 @@ static int guc_init_global_schedule_policy(struct intel_guc *guc)
 	return ret;
 }
 
-void intel_guc_submission_enable(struct intel_guc *guc)
+static void guc_route_semaphores(struct intel_guc *guc, bool to_guc)
 {
 	struct intel_gt *gt = guc_to_gt(guc);
+	u32 val;
 
-	/* Enable and route to GuC */
-	if (GRAPHICS_VER(gt->i915) >= 12)
-		intel_uncore_write(gt->uncore, GEN12_GUC_SEM_INTR_ENABLES,
-				   GUC_SEM_INTR_ROUTE_TO_GUC |
-				   GUC_SEM_INTR_ENABLE_ALL);
+	if (GRAPHICS_VER(gt->i915) < 12)
+		return;
+
+	if (to_guc)
+		val = GUC_SEM_INTR_ROUTE_TO_GUC | GUC_SEM_INTR_ENABLE_ALL;
+	else
+		val = 0;
+
+	intel_uncore_write(gt->uncore, GEN12_GUC_SEM_INTR_ENABLES, val);
+}
+
+int intel_guc_submission_enable(struct intel_guc *guc)
+{
+	int ret;
+
+	/* Semaphore interrupt enable and route to GuC */
+	guc_route_semaphores(guc, true);
+
+	ret = guc_init_submission(guc);
+	if (ret)
+		goto fail_sem;
+
+	ret = guc_init_engine_stats(guc);
+	if (ret)
+		goto fail_sem;
+
+	ret = guc_init_global_schedule_policy(guc);
+	if (ret)
+		goto fail_stats;
 
-	guc_init_lrc_mapping(guc);
-	guc_init_engine_stats(guc);
-	guc_init_global_schedule_policy(guc);
+	return 0;
+
+fail_stats:
+	guc_fini_engine_stats(guc);
+fail_sem:
+	guc_route_semaphores(guc, false);
+	return ret;
 }
 
 /* Note: By the time we're here, GuC may have already been reset */
 void intel_guc_submission_disable(struct intel_guc *guc)
 {
-	struct intel_gt *gt = guc_to_gt(guc);
-
 	guc_cancel_busyness_worker(guc);
 
-	/* Disable and route to host */
-	if (GRAPHICS_VER(gt->i915) >= 12)
-		intel_uncore_write(gt->uncore, GEN12_GUC_SEM_INTR_ENABLES, 0x0);
+	/* Semaphore interrupt disable and route to host */
+	guc_route_semaphores(guc, false);
 }
 
 static bool __guc_submission_supported(struct intel_guc *guc)
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.h
index 5a95a9f0a8e31..c57b29cdb1a64 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.h
@@ -15,7 +15,7 @@ struct intel_engine_cs;
 
 void intel_guc_submission_init_early(struct intel_guc *guc);
 int intel_guc_submission_init(struct intel_guc *guc);
-void intel_guc_submission_enable(struct intel_guc *guc);
+int intel_guc_submission_enable(struct intel_guc *guc);
 void intel_guc_submission_disable(struct intel_guc *guc);
 void intel_guc_submission_fini(struct intel_guc *guc);
 int intel_guc_preempt_work_create(struct intel_guc *guc);
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
index 6648691bd6450..d42671dde53b3 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
@@ -531,8 +531,11 @@ static int __uc_init_hw(struct intel_uc *uc)
 	else
 		intel_huc_auth(huc);
 
-	if (intel_uc_uses_guc_submission(uc))
-		intel_guc_submission_enable(guc);
+	if (intel_uc_uses_guc_submission(uc)) {
+		ret = intel_guc_submission_enable(guc);
+		if (ret)
+			goto err_log_capture;
+	}
 
 	if (intel_uc_uses_guc_slpc(uc)) {
 		ret = intel_guc_slpc_enable(&guc->slpc);
-- 
2.39.1

