Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B3EE63A8BC7
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Jun 2021 00:26:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DF016E44B;
	Tue, 15 Jun 2021 22:26:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D0996E2C8;
 Tue, 15 Jun 2021 22:26:08 +0000 (UTC)
IronPort-SDR: zeW/Lshi4HqaPW5ZDTkc2r8PCRhsfPHFnKZBQum9FDSnE2YduUMJDQPa/17bKhclhNro1bc9Jt
 3eGNfIPP9OYQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10016"; a="186453773"
X-IronPort-AV: E=Sophos;i="5.83,276,1616482800"; d="scan'208";a="186453773"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2021 15:26:08 -0700
IronPort-SDR: q5RYeFwszIJialza5GAUTQObRLaBSlnOY3ItlEe8sbzDZwp2qDCNOzqDLZJ3a1Pv7sNyEnRN2u
 8RM3PnzZ1H0g==
X-IronPort-AV: E=Sophos;i="5.83,276,1616482800"; d="scan'208";a="553827666"
Received: from dhiatt-server.jf.intel.com ([10.54.81.3])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2021 15:26:07 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: <intel-gfx@lists.freedesktop.org>,
	<dri-devel@lists.freedesktop.org>
Date: Tue, 15 Jun 2021 15:43:52 -0700
Message-Id: <20210615224358.83627-3-matthew.brost@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20210615224358.83627-1-matthew.brost@intel.com>
References: <20210615224358.83627-1-matthew.brost@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/8] drm/i915: Add i915_sched_engine_is_empty
 function
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

Add wrapper function around RB tree to determine if i915_sched_engine is
empty.

Signed-off-by: Matthew Brost <matthew.brost@intel.com>
Reviewed-by: Jason Ekstrand <jason@jlekstrand.net>
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c            | 2 +-
 drivers/gpu/drm/i915/gt/intel_execlists_submission.c | 6 +++---
 drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c    | 2 +-
 drivers/gpu/drm/i915/i915_scheduler.h                | 6 ++++++
 4 files changed, 11 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 49d44c3ac055..75a773cd4e24 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -1289,7 +1289,7 @@ bool intel_engine_is_idle(struct intel_engine_cs *engine)
 	intel_engine_flush_submission(engine);
 
 	/* ELSP is empty, but there are ready requests? E.g. after reset */
-	if (!RB_EMPTY_ROOT(&engine->sched_engine->queue.rb_root))
+	if (!i915_sched_engine_is_empty(engine->sched_engine))
 		return false;
 
 	/* Ring stopped? */
diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index 4f759559a792..e36b0e81876a 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -384,7 +384,7 @@ __unwind_incomplete_requests(struct intel_engine_cs *engine)
 			prio = rq_prio(rq);
 			pl = i915_sched_lookup_priolist(engine, prio);
 		}
-		GEM_BUG_ON(RB_EMPTY_ROOT(&engine->sched_engine->queue.rb_root));
+		GEM_BUG_ON(i915_sched_engine_is_empty(engine->sched_engine));
 
 		list_move(&rq->sched.link, pl);
 		set_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
@@ -1139,7 +1139,7 @@ static bool needs_timeslice(const struct intel_engine_cs *engine,
 	}
 
 	/* Otherwise, ELSP[0] is by itself, but may be waiting in the queue */
-	if (!RB_EMPTY_ROOT(&engine->sched_engine->queue.rb_root)) {
+	if (!i915_sched_engine_is_empty(engine->sched_engine)) {
 		ENGINE_TRACE(engine, "timeslice required for queue\n");
 		return true;
 	}
@@ -2487,7 +2487,7 @@ static void execlists_submit_request(struct i915_request *request)
 	} else {
 		queue_request(engine, request);
 
-		GEM_BUG_ON(RB_EMPTY_ROOT(&engine->sched_engine->queue.rb_root));
+		GEM_BUG_ON(i915_sched_engine_is_empty(engine->sched_engine));
 		GEM_BUG_ON(list_empty(&request->sched.link));
 
 		if (submit_queue(engine, request))
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 5c5f33f40055..d65a7665b38e 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -515,7 +515,7 @@ static void guc_submit_request(struct i915_request *rq)
 
 	queue_request(engine, rq, rq_prio(rq));
 
-	GEM_BUG_ON(RB_EMPTY_ROOT(&engine->sched_engine->queue.rb_root));
+	GEM_BUG_ON(i915_sched_engine_is_empty(engine->sched_engine));
 	GEM_BUG_ON(list_empty(&rq->sched.link));
 
 	tasklet_hi_schedule(&engine->execlists.tasklet);
diff --git a/drivers/gpu/drm/i915/i915_scheduler.h b/drivers/gpu/drm/i915/i915_scheduler.h
index 91a04e34cac5..5bec7b3b8456 100644
--- a/drivers/gpu/drm/i915/i915_scheduler.h
+++ b/drivers/gpu/drm/i915/i915_scheduler.h
@@ -66,6 +66,12 @@ i915_sched_engine_put(struct i915_sched_engine *sched_engine)
 	kref_put(&sched_engine->ref, i915_sched_engine_free);
 }
 
+static inline bool
+i915_sched_engine_is_empty(struct i915_sched_engine *sched_engine)
+{
+	return RB_EMPTY_ROOT(&sched_engine->queue.rb_root);
+}
+
 void i915_request_show_with_schedule(struct drm_printer *m,
 				     const struct i915_request *rq,
 				     const char *prefix,
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
