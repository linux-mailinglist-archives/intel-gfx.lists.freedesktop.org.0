Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 009DC7B24E7
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Sep 2023 20:09:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 715CE10E6AE;
	Thu, 28 Sep 2023 18:09:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 30EBA10E6AE
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Sep 2023 18:09:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695924595; x=1727460595;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=y9fGufntnDkOtayAmy6dt5bWllDhhHSSGxNr5nHDRMw=;
 b=bTdoRJHPqMpedx/pLjCTB9wX4AL0ZS1tLdq/VR/ejjFJYtrpDPamQLsy
 LM4G64jIPcAWkdZwOSerNP0sMUX93QtWWW7fzwvntW4YHbwbJpDHI+vsE
 WjxrDR4VHik3JXd2yEDvuR6jlB3q5Pbu+OAtW6DSJ4volNmscwOkYABo/
 2gecKRRrWcp+DPOE7RlBQf+lHu7K3ap7Cuq3Ksos7WwQuZR9AGHn1+Osa
 xmugat1aSY5zyzGZteSOo022w1GbAewS+gsW/GVXipYzD+tdA79vVDatI
 9yhpIW3KkxLeMMTk108yDGTshvAk52y8E2YipU+XUYSMuaV2kFt7mhv4b Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="448627805"
X-IronPort-AV: E=Sophos;i="6.03,184,1694761200"; d="scan'208";a="448627805"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2023 11:09:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="865366538"
X-IronPort-AV: E=Sophos;i="6.03,184,1694761200"; d="scan'208";a="865366538"
Received: from danielba-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.53.20])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2023 11:09:41 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 28 Sep 2023 21:08:54 +0300
Message-Id: <398fe9e2f4be6fa2da685bba95f5081f5da08587.1695924021.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1695924021.git.jani.nikula@intel.com>
References: <cover.1695924021.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 10/15] drm/i915: move execlist capture to
 i915_gpu_error.c
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

Localize error capture details within i915_gpu_error.c so we can reduce
the interfaces.

FIXME: I don't know what the function should be called.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/gt/intel_execlists_submission.c  | 22 +-------
 drivers/gpu/drm/i915/i915_gpu_error.c         | 36 ++++++++++---
 drivers/gpu/drm/i915/i915_gpu_error.h         | 51 ++-----------------
 3 files changed, 36 insertions(+), 73 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index 7c7e8c3a12e0..aea2fd75f227 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -2222,31 +2222,13 @@ struct execlists_capture {
 static void execlists_capture_work(struct work_struct *work)
 {
 	struct execlists_capture *cap = container_of(work, typeof(*cap), work);
-	const gfp_t gfp = __GFP_KSWAPD_RECLAIM | __GFP_RETRY_MAYFAIL |
-		__GFP_NOWARN;
-	struct intel_engine_cs *engine = cap->rq->engine;
-	struct intel_gt_coredump *gt = cap->error->gt;
-	struct intel_engine_capture_vma *vma;
-
-	/* Compress all the objects attached to the request, slow! */
-	vma = intel_engine_coredump_add_request(gt->engine, cap->rq, gfp);
-	if (vma) {
-		struct i915_vma_compress *compress =
-			i915_vma_capture_prepare(gt);
-
-		intel_engine_coredump_add_vma(gt->engine, vma, compress);
-		i915_vma_capture_finish(gt, compress);
-	}
 
-	gt->simulated = gt->engine->simulated;
-	cap->error->simulated = gt->simulated;
+	i915_gpu_error_execlist_capture(cap->error, cap->rq);
 
-	/* Publish the error state, and announce it to the world */
-	i915_error_state_store(cap->error);
 	i915_gpu_coredump_put(cap->error);
 
 	/* Return this request and all that depend upon it for signaling */
-	execlists_unhold(engine, cap->rq);
+	execlists_unhold(cap->rq->engine, cap->rq);
 	i915_request_put(cap->rq);
 
 	kfree(cap);
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index e4185f30f07c..837542c94b00 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -1584,7 +1584,7 @@ engine_coredump_add_context(struct intel_engine_coredump *ee,
 	return vma;
 }
 
-struct intel_engine_capture_vma *
+static struct intel_engine_capture_vma *
 intel_engine_coredump_add_request(struct intel_engine_coredump *ee,
 				  struct i915_request *rq,
 				  gfp_t gfp)
@@ -1610,7 +1610,7 @@ intel_engine_coredump_add_request(struct intel_engine_coredump *ee,
 	return vma;
 }
 
-void
+static void
 intel_engine_coredump_add_vma(struct intel_engine_coredump *ee,
 			      struct intel_engine_capture_vma *capture,
 			      struct i915_vma_compress *compress)
@@ -2096,7 +2096,7 @@ intel_gt_coredump_alloc(struct intel_gt *gt, gfp_t gfp, u32 dump_flags)
 	return gc;
 }
 
-struct i915_vma_compress *
+static struct i915_vma_compress *
 i915_vma_capture_prepare(struct intel_gt_coredump *gt)
 {
 	struct i915_vma_compress *compress;
@@ -2113,8 +2113,8 @@ i915_vma_capture_prepare(struct intel_gt_coredump *gt)
 	return compress;
 }
 
-void i915_vma_capture_finish(struct intel_gt_coredump *gt,
-			     struct i915_vma_compress *compress)
+static void i915_vma_capture_finish(struct intel_gt_coredump *gt,
+				    struct i915_vma_compress *compress)
 {
 	if (!compress)
 		return;
@@ -2189,7 +2189,7 @@ i915_gpu_coredump(struct intel_gt *gt, intel_engine_mask_t engine_mask, u32 dump
 	return dump;
 }
 
-void i915_error_state_store(struct i915_gpu_coredump *error)
+static void i915_error_state_store(struct i915_gpu_coredump *error)
 {
 	struct drm_i915_private *i915;
 	static bool warned;
@@ -2244,6 +2244,30 @@ void i915_capture_error_state(struct intel_gt *gt,
 	i915_gpu_coredump_put(error);
 }
 
+void i915_gpu_error_execlist_capture(struct i915_gpu_coredump *error,
+				     struct i915_request *rq)
+{
+	struct intel_gt_coredump *gt = error->gt;
+	struct intel_engine_capture_vma *vma;
+	const gfp_t gfp = __GFP_KSWAPD_RECLAIM | __GFP_RETRY_MAYFAIL | __GFP_NOWARN;
+
+	/* Compress all the objects attached to the request, slow! */
+	vma = intel_engine_coredump_add_request(gt->engine, rq, gfp);
+	if (vma) {
+		struct i915_vma_compress *compress =
+			i915_vma_capture_prepare(gt);
+
+		intel_engine_coredump_add_vma(gt->engine, vma, compress);
+		i915_vma_capture_finish(gt, compress);
+	}
+
+	gt->simulated = gt->engine->simulated;
+	error->simulated = gt->simulated;
+
+	/* Publish the error state, and announce it to the world */
+	i915_error_state_store(error);
+}
+
 static struct i915_gpu_coredump *
 i915_first_error_state(struct drm_i915_private *i915)
 {
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.h b/drivers/gpu/drm/i915/i915_gpu_error.h
index 0439dde95344..c2c15e29e266 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.h
+++ b/drivers/gpu/drm/i915/i915_gpu_error.h
@@ -27,8 +27,6 @@
 #include "i915_scheduler.h"
 
 struct drm_i915_private;
-struct i915_vma_compress;
-struct intel_engine_capture_vma;
 struct intel_overlay_error_state;
 
 struct i915_vma_coredump {
@@ -282,22 +280,8 @@ void i915_capture_error_state(struct intel_gt *gt,
 struct i915_gpu_coredump *
 i915_gpu_coredump_alloc(struct intel_engine_cs *engine, gfp_t gfp);
 
-struct intel_engine_capture_vma *
-intel_engine_coredump_add_request(struct intel_engine_coredump *ee,
-				  struct i915_request *rq,
-				  gfp_t gfp);
-
-void intel_engine_coredump_add_vma(struct intel_engine_coredump *ee,
-				   struct intel_engine_capture_vma *capture,
-				   struct i915_vma_compress *compress);
-
-struct i915_vma_compress *
-i915_vma_capture_prepare(struct intel_gt_coredump *gt);
-
-void i915_vma_capture_finish(struct intel_gt_coredump *gt,
-			     struct i915_vma_compress *compress);
-
-void i915_error_state_store(struct i915_gpu_coredump *error);
+void i915_gpu_error_execlist_capture(struct i915_gpu_coredump *error,
+				     struct i915_request *rq);
 
 ssize_t
 i915_gpu_coredump_copy_to_buffer(struct i915_gpu_coredump *error,
@@ -331,35 +315,8 @@ i915_gpu_coredump_alloc(struct drm_i915_private *i915, gfp_t gfp)
 	return NULL;
 }
 
-static inline struct intel_engine_capture_vma *
-intel_engine_coredump_add_request(struct intel_engine_coredump *ee,
-				  struct i915_request *rq,
-				  gfp_t gfp)
-{
-	return NULL;
-}
-
-static inline void
-intel_engine_coredump_add_vma(struct intel_engine_coredump *ee,
-			      struct intel_engine_capture_vma *capture,
-			      struct i915_vma_compress *compress)
-{
-}
-
-static inline struct i915_vma_compress *
-i915_vma_capture_prepare(struct intel_gt_coredump *gt)
-{
-	return NULL;
-}
-
-static inline void
-i915_vma_capture_finish(struct intel_gt_coredump *gt,
-			struct i915_vma_compress *compress)
-{
-}
-
-static inline void
-i915_error_state_store(struct i915_gpu_coredump *error)
+static inline void i915_gpu_error_execlist_capture(struct i915_gpu_coredump *error,
+						   struct i915_request *rq)
 {
 }
 
-- 
2.39.2

