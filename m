Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C3A314EE62
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2020 15:26:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B07886FB6A;
	Fri, 31 Jan 2020 14:26:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4246E6FB6A
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jan 2020 14:26:39 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20073663-1500050 
 for multiple; Fri, 31 Jan 2020 14:26:11 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 31 Jan 2020 14:26:10 +0000
Message-Id: <20200131142610.3100998-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200131081543.2251298-2-chris@chris-wilson.co.uk>
References: <20200131081543.2251298-2-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: Also wait for the scratch
 buffer to be bound
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

Since PIN_GLOBAL is no longer guaranteed to be synchronous, we must no
forget to include a wait-for-vma prior to execution.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c   | 10 ++++++
 drivers/gpu/drm/i915/gt/selftest_lrc.c        | 33 +++++++++++++++++++
 .../gpu/drm/i915/gt/selftest_workarounds.c    |  9 +++++
 3 files changed, 52 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 5a7db279f702..8d7c3191137c 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1612,6 +1612,16 @@ static int engine_wa_list_verify(struct intel_context *ce,
 		goto err_vma;
 	}
 
+	i915_vma_lock(vma);
+	err = i915_request_await_object(rq, vma->obj, true);
+	if (err == 0)
+		err = i915_vma_move_to_active(vma, rq, EXEC_OBJECT_WRITE);
+	i915_vma_unlock(vma);
+	if (err) {
+		i915_request_add(rq);
+		goto err_vma;
+	}
+
 	err = wa_list_srm(rq, wal, vma);
 	if (err)
 		goto err_vma;
diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index f5214a374fb7..0efb46665667 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -734,6 +734,10 @@ static int live_timeslice_preempt(void *arg)
 	if (err)
 		goto err_map;
 
+	err = i915_vma_sync(vma);
+	if (err)
+		goto err_pin;
+
 	for_each_prime_number_from(count, 1, 16) {
 		struct intel_engine_cs *engine;
 		enum intel_engine_id id;
@@ -827,6 +831,10 @@ static int live_timeslice_queue(void *arg)
 	if (err)
 		goto err_map;
 
+	err = i915_vma_sync(vma);
+	if (err)
+		goto err_unpin;
+
 	for_each_engine(engine, gt, id) {
 		struct i915_sched_attr attr = {
 			.priority = I915_USER_PRIORITY(I915_PRIORITY_MAX),
@@ -913,6 +921,7 @@ static int live_timeslice_queue(void *arg)
 			break;
 	}
 
+err_unpin:
 	i915_vma_unpin(vma);
 err_map:
 	i915_gem_object_unpin_map(obj);
@@ -971,6 +980,10 @@ static int live_busywait_preempt(void *arg)
 	if (err)
 		goto err_map;
 
+	err = i915_vma_sync(vma);
+	if (err)
+		goto err_vma;
+
 	for_each_engine(engine, gt, id) {
 		struct i915_request *lo, *hi;
 		struct igt_live_test t;
@@ -3204,6 +3217,10 @@ static int preserved_virtual_engine(struct intel_gt *gt,
 	if (IS_ERR(scratch))
 		return PTR_ERR(scratch);
 
+	err = i915_vma_sync(scratch);
+	if (err)
+		goto out_scratch;
+
 	ve = intel_execlists_create_virtual(siblings, nsibling);
 	if (IS_ERR(ve)) {
 		err = PTR_ERR(ve);
@@ -4030,8 +4047,16 @@ static int __live_lrc_state(struct intel_engine_cs *engine,
 	*cs++ = i915_ggtt_offset(scratch) + RING_TAIL_IDX * sizeof(u32);
 	*cs++ = 0;
 
+	i915_vma_lock(scratch);
+	err = i915_request_await_object(rq, scratch->obj, true);
+	if (!err)
+		err = i915_vma_move_to_active(scratch, rq, EXEC_OBJECT_WRITE);
+	i915_vma_unlock(scratch);
+
 	i915_request_get(rq);
 	i915_request_add(rq);
+	if (err)
+		goto err_rq;
 
 	intel_engine_flush_submission(engine);
 	expected[RING_TAIL_IDX] = ce->ring->tail;
@@ -4166,8 +4191,16 @@ static int __live_gpr_clear(struct intel_engine_cs *engine,
 		*cs++ = 0;
 	}
 
+	i915_vma_lock(scratch);
+	err = i915_request_await_object(rq, scratch->obj, true);
+	if (!err)
+		err = i915_vma_move_to_active(scratch, rq, EXEC_OBJECT_WRITE);
+	i915_vma_unlock(scratch);
+
 	i915_request_get(rq);
 	i915_request_add(rq);
+	if (err)
+		goto err_rq;
 
 	if (i915_request_wait(rq, 0, HZ / 5) < 0) {
 		err = -ETIME;
diff --git a/drivers/gpu/drm/i915/gt/selftest_workarounds.c b/drivers/gpu/drm/i915/gt/selftest_workarounds.c
index ac1921854cbf..5ed323254ee1 100644
--- a/drivers/gpu/drm/i915/gt/selftest_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/selftest_workarounds.c
@@ -583,6 +583,15 @@ static int check_dirty_whitelist(struct intel_context *ce)
 		if (err)
 			goto err_request;
 
+		i915_vma_lock(scratch);
+		err = i915_request_await_object(rq, scratch->obj, true);
+		if (err == 0)
+			err = i915_vma_move_to_active(scratch, rq,
+						      EXEC_OBJECT_WRITE);
+		i915_vma_unlock(scratch);
+		if (err)
+			goto err_request;
+
 		err = engine->emit_bb_start(rq,
 					    batch->node.start, PAGE_SIZE,
 					    0);
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
