Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1699427BF65
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Sep 2020 10:29:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FE016E0C1;
	Tue, 29 Sep 2020 08:29:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37BE589E01
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Sep 2020 08:29:07 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 22564162-1500050 
 for multiple; Tue, 29 Sep 2020 09:28:56 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 29 Sep 2020 09:28:58 +0100
Message-Id: <20200929082859.26652-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200929082859.26652-1-chris@chris-wilson.co.uk>
References: <20200929082859.26652-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/selftests: Finish pending mock
 requests on cancellation.
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

Flush all the pending requests from the mock engine when they are
cancelled.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/mock_engine.c | 29 +++++++++++++++++++++++----
 1 file changed, 25 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/mock_engine.c b/drivers/gpu/drm/i915/gt/mock_engine.c
index dfd1cfb8a7ec..df52fed3c0d0 100644
--- a/drivers/gpu/drm/i915/gt/mock_engine.c
+++ b/drivers/gpu/drm/i915/gt/mock_engine.c
@@ -245,19 +245,40 @@ static void mock_reset_rewind(struct intel_engine_cs *engine, bool stalled)
 	GEM_BUG_ON(stalled);
 }
 
+static void mark_eio(struct i915_request *rq)
+{
+	if (i915_request_completed(rq))
+		return;
+
+	GEM_BUG_ON(i915_request_signaled(rq));
+
+	i915_request_set_error_once(rq, -EIO);
+	i915_request_mark_complete(rq);
+}
+
 static void mock_reset_cancel(struct intel_engine_cs *engine)
 {
-	struct i915_request *request;
+	struct mock_engine *mock =
+		container_of(engine, typeof(*mock), base);
+	struct i915_request *rq;
 	unsigned long flags;
 
+	del_timer_sync(&mock->hw_delay);
+
 	spin_lock_irqsave(&engine->active.lock, flags);
 
 	/* Mark all submitted requests as skipped. */
-	list_for_each_entry(request, &engine->active.requests, sched.link) {
-		i915_request_set_error_once(request, -EIO);
-		i915_request_mark_complete(request);
+	list_for_each_entry(rq, &engine->active.requests, sched.link)
+		mark_eio(rq);
+
+	/* Cancel and submit all pending requests. */
+	list_for_each_entry(rq, &mock->hw_queue, mock.link) {
+		mark_eio(rq);
+		__i915_request_submit(rq);
 	}
+	INIT_LIST_HEAD(&mock->hw_queue);
 
+	intel_engine_signal_breadcrumbs(engine);
 	spin_unlock_irqrestore(&engine->active.lock, flags);
 }
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
