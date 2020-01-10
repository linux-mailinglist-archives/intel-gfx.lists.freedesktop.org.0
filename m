Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F18D136D0B
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jan 2020 13:31:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 158A66E9DF;
	Fri, 10 Jan 2020 12:31:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 388136E9E4
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jan 2020 12:31:04 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19833856-1500050 
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jan 2020 12:30:59 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Jan 2020 12:30:59 +0000
Message-Id: <20200110123059.1348712-4-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0.rc2
In-Reply-To: <20200110123059.1348712-1-chris@chris-wilson.co.uk>
References: <20200110123059.1348712-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 4/4] drm/i915: Drop request list from error state
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

The list of requests from after the hang tells little about the hang
itself, only how busy userspace was after the fact. As it pertains
nothing to the HW state, drop it from the error state.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Acked-by: Andi Shyti <andi.shyti@intel.com>
---
 drivers/gpu/drm/i915/i915_gpu_error.c | 75 +++------------------------
 drivers/gpu/drm/i915/i915_gpu_error.h |  3 +-
 2 files changed, 8 insertions(+), 70 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index 79eae3708602..95635daca4c4 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -669,7 +669,7 @@ static void err_print_gt(struct drm_i915_error_state_buf *m,
 			 struct intel_gt_coredump *gt)
 {
 	const struct intel_engine_coredump *ee;
-	int i, j;
+	int i;
 
 	err_printf(m, "GT awake: %s\n", yesno(gt->awake));
 	err_printf(m, "EIR: 0x%08x\n", gt->eir);
@@ -715,17 +715,8 @@ static void err_print_gt(struct drm_i915_error_state_buf *m,
 		const struct i915_vma_coredump *vma;
 
 		error_print_engine(m, ee);
-
 		for (vma = ee->vma; vma; vma = vma->next)
 			print_error_vma(m, ee->engine, vma);
-
-		if (ee->num_requests) {
-			err_printf(m, "%s --- %d requests\n",
-				   ee->engine->name,
-				   ee->num_requests);
-			for (j = 0; j < ee->num_requests; j++)
-				error_print_request(m, " ", &ee->requests[j]);
-		}
 	}
 
 	if (gt->uc)
@@ -936,7 +927,6 @@ static void cleanup_gt(struct intel_gt_coredump *gt)
 		gt->engine = ee->next;
 
 		i915_vma_coredump_free(ee->vma);
-		kfree(ee->requests);
 		kfree(ee);
 	}
 
@@ -1221,54 +1211,6 @@ static void record_request(const struct i915_request *request,
 	rcu_read_unlock();
 }
 
-static void engine_record_requests(const struct intel_engine_cs *engine,
-				   struct i915_request *first,
-				   struct intel_engine_coredump *ee)
-{
-	struct i915_request *request;
-	int count;
-
-	count = 0;
-	request = first;
-	list_for_each_entry_from(request, &engine->active.requests, sched.link)
-		count++;
-	if (!count)
-		return;
-
-	ee->requests = kcalloc(count, sizeof(*ee->requests), ATOMIC_MAYFAIL);
-	if (!ee->requests)
-		return;
-
-	ee->num_requests = count;
-
-	count = 0;
-	request = first;
-	list_for_each_entry_from(request,
-				 &engine->active.requests, sched.link) {
-		if (count >= ee->num_requests) {
-			/*
-			 * If the ring request list was changed in
-			 * between the point where the error request
-			 * list was created and dimensioned and this
-			 * point then just exit early to avoid crashes.
-			 *
-			 * We don't need to communicate that the
-			 * request list changed state during error
-			 * state capture and that the error state is
-			 * slightly incorrect as a consequence since we
-			 * are typically only interested in the request
-			 * list state at the point of error state
-			 * capture, not in any changes happening during
-			 * the capture.
-			 */
-			break;
-		}
-
-		record_request(request, &ee->requests[count++]);
-	}
-	ee->num_requests = count;
-}
-
 static void engine_record_execlists(struct intel_engine_coredump *ee)
 {
 	const struct intel_engine_execlists * const el = &ee->engine->execlists;
@@ -1480,7 +1422,7 @@ static struct intel_engine_coredump *
 capture_engine(struct intel_engine_cs *engine,
 	       struct i915_vma_compress *compress)
 {
-	struct intel_engine_capture_vma *capture;
+	struct intel_engine_capture_vma *capture = NULL;
 	struct intel_engine_coredump *ee;
 	struct i915_request *rq;
 	unsigned long flags;
@@ -1490,19 +1432,16 @@ capture_engine(struct intel_engine_cs *engine,
 		return NULL;
 
 	spin_lock_irqsave(&engine->active.lock, flags);
-
 	rq = intel_engine_find_active_request(engine);
-	if (!rq) {
-		spin_unlock_irqrestore(&engine->active.lock, flags);
+	if (rq)
+		capture = intel_engine_coredump_add_request(ee, rq,
+							    ATOMIC_MAYFAIL);
+	spin_unlock_irqrestore(&engine->active.lock, flags);
+	if (!capture) {
 		kfree(ee);
 		return NULL;
 	}
 
-	capture = intel_engine_coredump_add_request(ee, rq, ATOMIC_MAYFAIL);
-	engine_record_requests(engine, rq, ee);
-
-	spin_unlock_irqrestore(&engine->active.lock, flags);
-
 	intel_engine_coredump_add_vma(ee, capture, compress);
 
 	return ee;
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.h b/drivers/gpu/drm/i915/i915_gpu_error.h
index 8f4579d64d8c..b87f39291c07 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.h
+++ b/drivers/gpu/drm/i915/i915_gpu_error.h
@@ -60,7 +60,6 @@ struct intel_engine_coredump {
 	const struct intel_engine_cs *engine;
 
 	bool simulated;
-	int num_requests;
 	u32 reset_count;
 
 	/* position of active request inside the ring */
@@ -96,7 +95,7 @@ struct intel_engine_coredump {
 
 	struct i915_vma_coredump *vma;
 
-	struct i915_request_coredump *requests, execlist[EXECLIST_MAX_PORTS];
+	struct i915_request_coredump execlist[EXECLIST_MAX_PORTS];
 	unsigned int num_ports;
 
 	struct {
-- 
2.25.0.rc2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
