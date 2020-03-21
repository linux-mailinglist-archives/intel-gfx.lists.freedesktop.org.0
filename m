Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3279E18E1A6
	for <lists+intel-gfx@lfdr.de>; Sat, 21 Mar 2020 14:52:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D40E6E2DD;
	Sat, 21 Mar 2020 13:52:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CEE26E146
 for <intel-gfx@lists.freedesktop.org>; Sat, 21 Mar 2020 13:52:34 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20643368-1500050 
 for multiple; Sat, 21 Mar 2020 13:52:20 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 21 Mar 2020 13:52:17 +0000
Message-Id: <20200321135218.6922-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200321135218.6922-1-chris@chris-wilson.co.uk>
References: <20200321135218.6922-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/4] drm/i915: Rely on direct submission to the
 queue
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

Drop the pretense of kicking the tasklet (used only for the defunct guc
submission backend, it should just take ownership of the submit!) and so
remove the bh-kicking from around submission.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 2 --
 drivers/gpu/drm/i915/gt/intel_lrc.c            | 5 +----
 drivers/gpu/drm/i915/i915_request.c            | 2 --
 3 files changed, 1 insertion(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 36d069504836..c2bd5accde0c 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -2348,9 +2348,7 @@ static void eb_request_add(struct i915_execbuffer *eb)
 		__i915_request_skip(rq);
 	}
 
-	local_bh_disable();
 	__i915_request_queue(rq, &attr);
-	local_bh_enable(); /* Kick the execlists tasklet if just scheduled */
 
 	/* Try to clean up the client's timeline after submitting the request */
 	if (prev)
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index f09dd87324b9..210f60e14ef4 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -2891,10 +2891,7 @@ static void __submit_queue_imm(struct intel_engine_cs *engine)
 	if (reset_in_progress(execlists))
 		return; /* defer until we restart the engine following reset */
 
-	if (execlists->tasklet.func == execlists_submission_tasklet)
-		__execlists_submission_tasklet(engine);
-	else
-		tasklet_hi_schedule(&execlists->tasklet);
+	__execlists_submission_tasklet(engine);
 }
 
 static void submit_queue(struct intel_engine_cs *engine,
diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index c0df71d7d0ff..3388c5b610c5 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -1444,9 +1444,7 @@ void i915_request_add(struct i915_request *rq)
 	if (list_empty(&rq->sched.signalers_list))
 		attr.priority |= I915_PRIORITY_WAIT;
 
-	local_bh_disable();
 	__i915_request_queue(rq, &attr);
-	local_bh_enable(); /* Kick the execlists tasklet if just scheduled */
 
 	mutex_unlock(&tl->mutex);
 }
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
