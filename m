Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52F2521933A
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jul 2020 00:17:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96B946E941;
	Wed,  8 Jul 2020 22:17:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 828CF6E941
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jul 2020 22:17:43 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21758516-1500050 
 for multiple; Wed, 08 Jul 2020 23:17:31 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 Jul 2020 23:17:29 +0100
Message-Id: <20200708221729.17113-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Soften the tasklet flush frequency
 before waits
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

We include a tasklet flush before waiting on a request as a precaution
against the HW being lax in event signaling. We now have a precautionary
flush in the engine's heartbeat and so do not need to be quite so
zealous on every request wait. If we focus on the request, the only
tasklet flush that matters is if there is a delay in submitting this
request to HW, so if the request is not ready to be executed no
advantage in reducing this wait can be gained by running the tasklet.
And there is little point in doing busy work for no result.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_request.c | 20 ++++++++++++++++++--
 1 file changed, 18 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index 3bb7320249ae..19adb7b82a2e 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -1790,6 +1790,24 @@ long i915_request_wait(struct i915_request *rq,
 	if (dma_fence_add_callback(&rq->fence, &wait.cb, request_wait_wake))
 		goto out;
 
+	/*
+	 * Flush the submission tasklet, but only if it may help this request.
+	 *
+	 * We sometimes experience some latency between the HW interrupts and
+	 * tasklet execution (mostly due to ksoftirqd latency, but it can also
+	 * be due to lazy CS events), so lets run the tasklet manually if there
+	 * is a chance it may submit this request. If the request is not ready
+	 * to run, as it is waiting for other fences to be signaled, flushing
+	 * the tasklet is busy work without any advantage for this client.
+	 *
+	 * If the HW is being lazy, this is the last chance before we go to
+	 * sleep to catch any pending events. We will check periodically in
+	 * the heartbeat to flush the submission tasklets as a last resort
+	 * for unhappy HW.
+	 */
+	if (i915_request_is_ready(rq))
+		intel_engine_flush_submission(rq->engine);
+
 	for (;;) {
 		set_current_state(state);
 
@@ -1798,8 +1816,6 @@ long i915_request_wait(struct i915_request *rq,
 			break;
 		}
 
-		intel_engine_flush_submission(rq->engine);
-
 		if (signal_pending_state(state, current)) {
 			timeout = -ERESTARTSYS;
 			break;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
