Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 24B202E9455
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Jan 2021 12:52:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19BC589DB7;
	Mon,  4 Jan 2021 11:52:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D65F89C2C
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Jan 2021 11:52:07 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23495869-1500050 
 for multiple; Mon, 04 Jan 2021 11:51:52 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  4 Jan 2021 11:51:44 +0000
Message-Id: <20210104115145.24460-5-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210104115145.24460-1-chris@chris-wilson.co.uk>
References: <20210104115145.24460-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/6] drm/i915/gt: Restore ce->signal flush
 before releasing virtual engine
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

Before we mark the virtual engine as no longer inflight, flush any
ongoing signaling that may be using the ce->signal_link along the
previous breadcrumbs. On switch to a new physical engine, that link will
be inserted into the new set of breadcrumbs, causing confusion to an
ongoing iterator.

This patch undoes a last minute mistake introduced into commit
bab0557c8dca ("drm/i915/gt: Remove virtual breadcrumb before transfer"),
whereby instead of unconditionally applying the flush, it was only
applied if the request itself was going to be reused.

Fixes: bab0557c8dca ("drm/i915/gt: Remove virtual breadcrumb before transfer")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_execlists_submission.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index a5b442683c18..6414dbb124a7 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -592,8 +592,6 @@ resubmit_virtual_request(struct i915_request *rq, struct virtual_engine *ve)
 		 * ce->signal_link.
 		 */
 		i915_request_cancel_breadcrumb(rq);
-		while (atomic_read(&engine->breadcrumbs->signaler_active))
-			cpu_relax();
 	}
 
 	spin_lock_irq(&engine->active.lock);
@@ -609,6 +607,7 @@ static void kick_siblings(struct i915_request *rq, struct intel_context *ce)
 {
 	struct virtual_engine *ve = container_of(ce, typeof(*ve), context);
 	struct intel_engine_cs *engine = rq->engine;
+	bool signals = !list_empty(&ce->signals);
 
 	/*
 	 * This engine is now too busy to run this virtual request, so
@@ -622,6 +621,10 @@ static void kick_siblings(struct i915_request *rq, struct intel_context *ce)
 
 	if (READ_ONCE(ve->request))
 		tasklet_hi_schedule(&ve->base.execlists.tasklet);
+
+	/* Flush concurrent signal_irq_work before we reuse the link */
+	while (signals && atomic_read(&engine->breadcrumbs->signaler_active))
+		cpu_relax();
 }
 
 static inline void __execlists_schedule_out(struct i915_request *rq)
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
