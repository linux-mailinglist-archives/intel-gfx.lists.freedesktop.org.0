Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AD4A2D95FC
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Dec 2020 11:10:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00FF46E207;
	Mon, 14 Dec 2020 10:10:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 58E5D6E204
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Dec 2020 10:10:06 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23317801-1500050 
 for multiple; Mon, 14 Dec 2020 10:09:54 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Dec 2020 10:09:10 +0000
Message-Id: <20201214100949.11387-30-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201214100949.11387-1-chris@chris-wilson.co.uk>
References: <20201214100949.11387-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 30/69] drm/i915: Reduce test_and_set_bit to
 set_bit in i915_request_submit()
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

Avoid the full blown memory barrier of test_and_set_bit() by noting the
completed request and removing it from the lists.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/i915_request.c | 16 +++++++++-------
 1 file changed, 9 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index 4d886b3c9cd7..2a2ec95fed5f 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -538,8 +538,10 @@ bool __i915_request_submit(struct i915_request *request)
 	 * dropped upon retiring. (Otherwise if resubmit a *retired*
 	 * request, this would be a horrible use-after-free.)
 	 */
-	if (i915_request_completed(request))
-		goto xfer;
+	if (i915_request_completed(request)) {
+		list_del_init(&request->sched.link);
+		goto active;
+	}
 
 	if (unlikely(intel_context_is_closed(request->context) &&
 		     !intel_engine_has_heartbeat(engine)))
@@ -578,11 +580,11 @@ bool __i915_request_submit(struct i915_request *request)
 	engine->serial++;
 	result = true;
 
-xfer:
-	if (!test_and_set_bit(I915_FENCE_FLAG_ACTIVE, &request->fence.flags)) {
-		list_move_tail(&request->sched.link, &engine->active.requests);
-		clear_bit(I915_FENCE_FLAG_PQUEUE, &request->fence.flags);
-	}
+	GEM_BUG_ON(test_bit(I915_FENCE_FLAG_ACTIVE, &request->fence.flags));
+	list_move_tail(&request->sched.link, &engine->active.requests);
+active:
+	clear_bit(I915_FENCE_FLAG_PQUEUE, &request->fence.flags);
+	set_bit(I915_FENCE_FLAG_ACTIVE, &request->fence.flags);
 
 	/*
 	 * XXX Rollback bonded-execution on __i915_request_unsubmit()?
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
