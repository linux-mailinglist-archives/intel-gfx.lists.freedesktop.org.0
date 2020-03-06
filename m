Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D7F3817B73B
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Mar 2020 08:16:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 787F96E981;
	Fri,  6 Mar 2020 07:16:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 27A796E90B
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Mar 2020 07:16:23 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20462597-1500050 
 for multiple; Fri, 06 Mar 2020 07:16:14 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  6 Mar 2020 07:16:12 +0000
Message-Id: <20200306071614.2846708-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/3] drm/i915: Assert requests within a context
 are submitted in order
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

Check the flow of requests into the hardware to verify that are
submitted in order along their timeline.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 4 ++++
 drivers/gpu/drm/i915/i915_request.c | 4 ++++
 2 files changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 16a023ac4604..13941d1c0a4a 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1622,6 +1622,7 @@ static bool can_merge_rq(const struct i915_request *prev,
 	if (!can_merge_ctx(prev->context, next->context))
 		return false;
 
+	GEM_BUG_ON(i915_seqno_passed(prev->fence.seqno, next->fence.seqno));
 	return true;
 }
 
@@ -2142,6 +2143,9 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 				GEM_BUG_ON(last &&
 					   !can_merge_ctx(last->context,
 							  rq->context));
+				GEM_BUG_ON(last &&
+					   i915_seqno_passed(last->fence.seqno,
+							     rq->fence.seqno));
 
 				submit = true;
 				last = rq;
diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index ca5361eb1f0b..35147df79655 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -737,6 +737,7 @@ __i915_request_create(struct intel_context *ce, gfp_t gfp)
 	RCU_INIT_POINTER(rq->timeline, tl);
 	RCU_INIT_POINTER(rq->hwsp_cacheline, tl->hwsp_cacheline);
 	rq->hwsp_seqno = tl->hwsp_seqno;
+	GEM_BUG_ON(i915_request_completed(rq));
 
 	rq->rcustate = get_state_synchronize_rcu(); /* acts as smp_mb() */
 
@@ -1284,6 +1285,9 @@ __i915_request_add_to_timeline(struct i915_request *rq)
 	prev = to_request(__i915_active_fence_set(&timeline->last_request,
 						  &rq->fence));
 	if (prev && !i915_request_completed(prev)) {
+		GEM_BUG_ON(i915_seqno_passed(prev->fence.seqno,
+					     rq->fence.seqno));
+
 		if (is_power_of_2(prev->engine->mask | rq->engine->mask))
 			i915_sw_fence_await_sw_fence(&rq->submit,
 						     &prev->submit,
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
