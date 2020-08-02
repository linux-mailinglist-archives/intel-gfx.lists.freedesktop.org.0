Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C652D23591F
	for <lists+intel-gfx@lfdr.de>; Sun,  2 Aug 2020 18:44:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB1366E15D;
	Sun,  2 Aug 2020 16:44:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00F536E158
 for <intel-gfx@lists.freedesktop.org>; Sun,  2 Aug 2020 16:44:17 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 22010432-1500050 
 for multiple; Sun, 02 Aug 2020 17:44:15 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sun,  2 Aug 2020 17:43:43 +0100
Message-Id: <20200802164412.2738-14-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200802164412.2738-1-chris@chris-wilson.co.uk>
References: <20200802164412.2738-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 13/42] drm/i915/gt: Decouple completed requests
 on unwind
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Since the introduction of preempt-to-busy, requests can complete in the
background, even while they are not on the engine->active.requests list.
As such, the engine->active.request list itself is not in strict
retirement order, and we have to scan the entire list while unwinding to
not miss any. However, if the request is completed we currently leave it
on the list [until retirement], but we could just as simply remove it
and stop treating it as active. We would only have to then traverse it
once while unwinding in quick succession.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 6 ++++--
 drivers/gpu/drm/i915/i915_request.c | 3 ++-
 2 files changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index cb04bc5474be..f9aa44f222db 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1116,8 +1116,10 @@ __unwind_incomplete_requests(struct intel_engine_cs *engine)
 	list_for_each_entry_safe_reverse(rq, rn,
 					 &engine->active.requests,
 					 sched.link) {
-		if (i915_request_completed(rq))
-			continue; /* XXX */
+		if (i915_request_completed(rq)) {
+			list_del_init(&rq->sched.link);
+			continue;
+		}
 
 		__i915_request_unsubmit(rq);
 
diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index 1cd102591b36..ebfa195d6463 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -319,7 +319,8 @@ bool i915_request_retire(struct i915_request *rq)
 	 * after removing the breadcrumb and signaling it, so that we do not
 	 * inadvertently attach the breadcrumb to a completed request.
 	 */
-	remove_from_engine(rq);
+	if (!list_empty(&rq->sched.link))
+		remove_from_engine(rq);
 	GEM_BUG_ON(!llist_empty(&rq->execute_cb));
 
 	__list_del_entry(&rq->link); /* poison neither prev/next (RCU walks) */
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
