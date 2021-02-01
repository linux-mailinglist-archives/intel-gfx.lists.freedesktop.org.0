Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FEA230A3D5
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Feb 2021 09:58:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A92F6E52D;
	Mon,  1 Feb 2021 08:57:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FDA66E4B7
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Feb 2021 08:57:34 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23757741-1500050 
 for multiple; Mon, 01 Feb 2021 08:57:20 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  1 Feb 2021 08:56:46 +0000
Message-Id: <20210201085715.27435-28-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210201085715.27435-1-chris@chris-wilson.co.uk>
References: <20210201085715.27435-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 28/57] drm/i915: Wrap
 i915_request_use_semaphores()
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

Wrap the query on whether the backend engine supports us emitting
semaphores to coordinate multiple requests.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/i915_request.c | 2 +-
 drivers/gpu/drm/i915/i915_request.h | 5 +++++
 2 files changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index 459f727b03cd..e7b4c4bc41a6 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -1141,7 +1141,7 @@ __i915_request_await_execution(struct i915_request *to,
 	 * immediate execution, and so we must wait until it reaches the
 	 * active slot.
 	 */
-	if (intel_engine_has_semaphores(to->engine) &&
+	if (i915_request_use_semaphores(to) &&
 	    !i915_request_has_initial_breadcrumb(to)) {
 		err = __emit_semaphore_wait(to, from, from->fence.seqno - 1);
 		if (err < 0)
diff --git a/drivers/gpu/drm/i915/i915_request.h b/drivers/gpu/drm/i915/i915_request.h
index 8322f308b906..8d9e59e3cdcb 100644
--- a/drivers/gpu/drm/i915/i915_request.h
+++ b/drivers/gpu/drm/i915/i915_request.h
@@ -637,4 +637,9 @@ static inline bool i915_request_is_executing(const struct i915_request *rq)
 	return i915_request_get_scheduler(rq)->is_executing(rq);
 }
 
+static inline bool i915_request_use_semaphores(const struct i915_request *rq)
+{
+	return intel_engine_has_semaphores(rq->engine);
+}
+
 #endif /* I915_REQUEST_H */
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
