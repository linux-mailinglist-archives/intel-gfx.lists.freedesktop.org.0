Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B1C62B90C5
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Nov 2020 12:18:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8AFBA89C99;
	Thu, 19 Nov 2020 11:18:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 54A5689C99
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Nov 2020 11:18:44 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23040308-1500050 
 for multiple; Thu, 19 Nov 2020 11:18:33 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 19 Nov 2020 11:18:31 +0000
Message-Id: <20201119111831.1236-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Update request status flags for
 debug pretty-printer
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

We plan to expand upon the number of available statuses for when we
pretty-print the requests along the timelines, and so need a new set of
flags. We have settled upon:

	Unready [U]
	  - initial status after being submitted, the request is not
	    ready for execution as it is waiting for external fences

	Ready [R]
	  - all fences the request was waiting on have been signaled,
            and the request is now ready for execution and will be
	    in a backend queue

	  - a ready request may still need to wait on semaphores
	    [internal fences]

	Ready/virtual [V]
	  - same as ready, but queued over multiple backends

	Executing [E]
	  - the request has been transferred from the backend queue and
	    submitted for execution on HW

	  - a completed request may still be regarded as executing, its
	    status may not be updated until it is retired and removed
	    from the lists

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c |  4 ++--
 drivers/gpu/drm/i915/i915_request.c | 30 +++++++++++++++++++++++++++++
 2 files changed, 32 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index b6ab1161942a..3a1b25c0e43e 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -6025,7 +6025,7 @@ void intel_execlists_show_requests(struct intel_engine_cs *engine,
 
 		priolist_for_each_request(rq, p, i) {
 			if (count++ < max - 1)
-				show_request(m, rq, "\t\tQ ");
+				show_request(m, rq, "\t\tR ");
 			else
 				last = rq;
 		}
@@ -6036,7 +6036,7 @@ void intel_execlists_show_requests(struct intel_engine_cs *engine,
 				   "\t\t...skipping %d queued requests...\n",
 				   count - max);
 		}
-		show_request(m, last, "\t\tQ ");
+		show_request(m, last, "\t\tR ");
 	}
 
 	last = NULL;
diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index 673991718ae6..d3610418e9ae 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -1875,6 +1875,36 @@ void i915_request_show(struct drm_printer *m,
 	char buf[80] = "";
 	int x = 0;
 
+	/*
+	 * Often the prefix is used to show the queue status,
+	 * in which case we use the following flags:
+	 *
+	 *  Unready [U]
+	 *    - initial status upon being submitted by the user
+	 *
+	 *    - the request is not ready for execution as it is waiting
+	 *      for external fences
+	 *
+	 *  Ready [R]
+	 *    - all fences the request was waiting on have been signaled,
+	 *      and the request is now ready for execution and will be
+	 *      in a backend queue
+	 *
+	 *    - a ready request may still need to wait on semaphores
+	 *      [internal fences]
+	 *
+	 *  Ready/virtual [V]
+	 *    - same as ready, but queued over multiple backends
+	 *
+	 *  Executing [E]
+	 *    - the request has been transferred from the backend queue and
+	 *      submitted for execution on HW
+	 *
+	 *    - a completed request may still be regarded as executing, its
+	 *      status may not be updated until it is retired and removed
+	 *      from the lists
+	 */
+
 	x = print_sched_attr(&rq->sched.attr, buf, x, sizeof(buf));
 
 	drm_printf(m, "%s %llx:%lld%s%s %s @ %dms: %s\n",
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
