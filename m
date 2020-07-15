Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AA8C2220C2A
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2020 13:52:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2431F6EACB;
	Wed, 15 Jul 2020 11:52:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A5D756EACB
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jul 2020 11:51:59 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21826117-1500050 
 for multiple; Wed, 15 Jul 2020 12:51:50 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Jul 2020 12:50:51 +0100
Message-Id: <20200715115147.11866-10-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200715115147.11866-1-chris@chris-wilson.co.uk>
References: <20200715115147.11866-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 10/66] drm/i915: Soften the tasklet flush
 frequency before waits
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
index 29b5e71307e3..f58beff5e859 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -1760,14 +1760,30 @@ long i915_request_wait(struct i915_request *rq,
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
 
 		if (dma_fence_is_signaled(&rq->fence))
 			break;
 
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
