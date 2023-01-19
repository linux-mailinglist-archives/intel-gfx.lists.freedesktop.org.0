Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D2376731F3
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Jan 2023 07:50:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 702E510E8B8;
	Thu, 19 Jan 2023 06:50:37 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DAD8710E8B4;
 Thu, 19 Jan 2023 06:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674111033; x=1705647033;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lN1PKyfSRaitUElCbMEHcFcMq/tB6Np8kNukyO4+dTY=;
 b=l6KykHWbbelKwcjmIjdUDGPi9XqjRLGc/DHeGRxN5v/cOB3CRaeEcYg8
 H8JzwnB0aZlpiZlE0mA/PynZ+AcBCmuR1k/nFRDRTVZUkyXJ0mELYEKNj
 4B3RkKk8rVI5uSBPpKLLi3uAa+h7xbDbT3QUuDiU3uLy33yYZGSkk8fvj
 oF8FfZfG8IJ7ZHIHGbdQUz9hwpPNXNZnMYc/q/r4y+11jh8rIS/y5NXxB
 Jcp5Qb8ZAZrsCqRtetU+Ok3hlrGm5vHJ3FIEo0XsY2B8U6Ofay5pzgkoB
 iT1Nd/7hElJ+MglPUuf/FDmd/IU3fKTS17OtrZsE/AMjQ8bSMXas1lR31 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="323897863"
X-IronPort-AV: E=Sophos;i="5.97,228,1669104000"; d="scan'208";a="323897863"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 22:50:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="723385741"
X-IronPort-AV: E=Sophos;i="5.97,228,1669104000"; d="scan'208";a="723385741"
Received: from relo-linux-5.jf.intel.com ([10.165.21.152])
 by fmsmga008.fm.intel.com with ESMTP; 18 Jan 2023 22:50:21 -0800
From: John.C.Harrison@Intel.com
To: Intel-GFX@Lists.FreeDesktop.Org
Date: Wed, 18 Jan 2023 22:49:57 -0800
Message-Id: <20230119065000.1661857-4-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230119065000.1661857-1-John.C.Harrison@Intel.com>
References: <20230119065000.1661857-1-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 3/6] drm/i915: Allow error capture without a
 request
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

There was a report of error captures occurring without any hung
context being indicated despite the capture being initiated by a 'hung
context notification' from GuC. The problem was not reproducible.
However, it is possible to happen if the context in question has no
active requests. For example, if the hang was in the context switch
itself then the breadcrumb write would have occurred and the KMD would
see an idle context.

In the interests of attempting to provide as much information as
possible about a hang, it seems wise to include the engine info
regardless of whether a request was found or not. As opposed to just
prentending there was no hang at all.

So update the error capture code to always record engine information
if a context is given. Which means updating record_context() to take a
context instead of a request (which it only ever used to find the
context anyway). And split the request agnostic parts of
intel_engine_coredump_add_request() out into a seaprate function.

v2: Remove a duplicate 'if' statement (Umesh) and fix a put of a null
pointer.
v3: Tidy up request locking code flow (Tvrtko)

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
Reviewed-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Acked-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/i915_gpu_error.c | 70 ++++++++++++++++++---------
 1 file changed, 48 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index 78cf95e4dd230..743614fff5472 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -1370,14 +1370,14 @@ static void engine_record_execlists(struct intel_engine_coredump *ee)
 }
 
 static bool record_context(struct i915_gem_context_coredump *e,
-			   const struct i915_request *rq)
+			   struct intel_context *ce)
 {
 	struct i915_gem_context *ctx;
 	struct task_struct *task;
 	bool simulated;
 
 	rcu_read_lock();
-	ctx = rcu_dereference(rq->context->gem_context);
+	ctx = rcu_dereference(ce->gem_context);
 	if (ctx && !kref_get_unless_zero(&ctx->ref))
 		ctx = NULL;
 	rcu_read_unlock();
@@ -1396,8 +1396,8 @@ static bool record_context(struct i915_gem_context_coredump *e,
 	e->guilty = atomic_read(&ctx->guilty_count);
 	e->active = atomic_read(&ctx->active_count);
 
-	e->total_runtime = intel_context_get_total_runtime_ns(rq->context);
-	e->avg_runtime = intel_context_get_avg_runtime_ns(rq->context);
+	e->total_runtime = intel_context_get_total_runtime_ns(ce);
+	e->avg_runtime = intel_context_get_avg_runtime_ns(ce);
 
 	simulated = i915_gem_context_no_error_capture(ctx);
 
@@ -1532,15 +1532,37 @@ intel_engine_coredump_alloc(struct intel_engine_cs *engine, gfp_t gfp, u32 dump_
 	return ee;
 }
 
+static struct intel_engine_capture_vma *
+engine_coredump_add_context(struct intel_engine_coredump *ee,
+			    struct intel_context *ce,
+			    gfp_t gfp)
+{
+	struct intel_engine_capture_vma *vma = NULL;
+
+	ee->simulated |= record_context(&ee->context, ce);
+	if (ee->simulated)
+		return NULL;
+
+	/*
+	 * We need to copy these to an anonymous buffer
+	 * as the simplest method to avoid being overwritten
+	 * by userspace.
+	 */
+	vma = capture_vma(vma, ce->ring->vma, "ring", gfp);
+	vma = capture_vma(vma, ce->state, "HW context", gfp);
+
+	return vma;
+}
+
 struct intel_engine_capture_vma *
 intel_engine_coredump_add_request(struct intel_engine_coredump *ee,
 				  struct i915_request *rq,
 				  gfp_t gfp)
 {
-	struct intel_engine_capture_vma *vma = NULL;
+	struct intel_engine_capture_vma *vma;
 
-	ee->simulated |= record_context(&ee->context, rq);
-	if (ee->simulated)
+	vma = engine_coredump_add_context(ee, rq->context, gfp);
+	if (!vma)
 		return NULL;
 
 	/*
@@ -1550,8 +1572,6 @@ intel_engine_coredump_add_request(struct intel_engine_coredump *ee,
 	 */
 	vma = capture_vma_snapshot(vma, rq->batch_res, gfp, "batch");
 	vma = capture_user(vma, rq, gfp);
-	vma = capture_vma(vma, rq->ring->vma, "ring", gfp);
-	vma = capture_vma(vma, rq->context->state, "HW context", gfp);
 
 	ee->rq_head = rq->head;
 	ee->rq_post = rq->postfix;
@@ -1604,25 +1624,31 @@ capture_engine(struct intel_engine_cs *engine,
 		return NULL;
 
 	intel_get_hung_entity(engine, &ce, &rq);
-	if (!rq || !i915_request_started(rq))
-		goto no_request_capture;
+	if (rq && !i915_request_started(rq)) {
+		drm_info(&engine->gt->i915->drm, "Got hung context on %s with no active request!\n",
+			 engine->name);
+		i915_request_put(rq);
+		rq = NULL;
+	}
+
+	if (rq) {
+		capture = intel_engine_coredump_add_request(ee, rq, ATOMIC_MAYFAIL);
+		i915_request_put(rq);
+	} else if (ce) {
+		capture = engine_coredump_add_context(ee, ce, ATOMIC_MAYFAIL);
+	}
 
-	capture = intel_engine_coredump_add_request(ee, rq, ATOMIC_MAYFAIL);
-	if (!capture)
-		goto no_request_capture;
 	if (dump_flags & CORE_DUMP_FLAG_IS_GUC_CAPTURE)
 		intel_guc_capture_get_matching_node(engine->gt, ee, ce);
 
-	intel_engine_coredump_add_vma(ee, capture, compress);
-	i915_request_put(rq);
+	if (capture) {
+		intel_engine_coredump_add_vma(ee, capture, compress);
+	} else {
+		kfree(ee);
+		ee = NULL;
+	}
 
 	return ee;
-
-no_request_capture:
-	if (rq)
-		i915_request_put(rq);
-	kfree(ee);
-	return NULL;
 }
 
 static void
-- 
2.39.0

