Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28DC93088D7
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Jan 2021 13:06:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 519C16EB0D;
	Fri, 29 Jan 2021 12:06:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02D916EB0D
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Jan 2021 12:06:27 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23735757-1500050 
 for multiple; Fri, 29 Jan 2021 12:06:21 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 29 Jan 2021 12:06:20 +0000
Message-Id: <20210129120620.6516-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Ignore error capturing a closed
 context
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

To capture a context after a gpu hang, we suspend the request and then
resume its execution afterwards. If the context is already closed, we
can assume that no one is interested in the result, but instead we are
trying to terminate execution quickly as part of a forced-preemption.
In which case, do not waste time in suspending the request, capturing
the error, and just cancel it instead.

Testcase: igt/gem_ctx_persistence/many-contexts
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 .../drm/i915/gt/intel_execlists_submission.c   | 18 +++++++++++++-----
 1 file changed, 13 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index e20ab2eab3a8..2280d1bd2c77 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -2249,10 +2249,21 @@ static u32 active_ccid(struct intel_engine_cs *engine)
 static void execlists_capture(struct intel_engine_cs *engine)
 {
 	struct execlists_capture *cap;
+	struct i915_request *rq;
 
 	if (!IS_ENABLED(CONFIG_DRM_I915_CAPTURE_ERROR))
 		return;
 
+	rq = active_context(engine, active_ccid(engine));
+
+	/*
+	 * If the context is closed, assume no one is listening for the
+	 * associated state; the user is already gone. We can save a lot of
+	 * time around forced-preemption by just cancelling the guilty request.
+	 */
+	if (!rq || intel_context_is_closed(rq->context))
+		return;
+
 	/*
 	 * We need to _quickly_ capture the engine state before we reset.
 	 * We are inside an atomic section (softirq) here and we are delaying
@@ -2262,11 +2273,8 @@ static void execlists_capture(struct intel_engine_cs *engine)
 	if (!cap)
 		return;
 
-	cap->rq = active_context(engine, active_ccid(engine));
-	if (cap->rq) {
-		cap->rq = active_request(cap->rq->context->timeline, cap->rq);
-		cap->rq = i915_request_get_rcu(cap->rq);
-	}
+	rq = active_request(rq->context->timeline, rq);
+	cap->rq = i915_request_get_rcu(rq);
 	if (!cap->rq)
 		goto err_free;
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
