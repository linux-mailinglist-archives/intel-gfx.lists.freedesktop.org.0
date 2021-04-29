Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 021DA36E826
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Apr 2021 11:46:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05DB76EDD2;
	Thu, 29 Apr 2021 09:46:51 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A2B46EDD2;
 Thu, 29 Apr 2021 09:46:50 +0000 (UTC)
IronPort-SDR: WtRAiHvTeanjy9+pa9CfxpxLVaFY6WZou0Ehf0ag1decAXiaY7to2glCa4OrPZFaHdVIO79FFA
 hxMAj5d+EDSA==
X-IronPort-AV: E=McAfee;i="6200,9189,9968"; a="197068874"
X-IronPort-AV: E=Sophos;i="5.82,258,1613462400"; d="scan'208";a="197068874"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2021 02:46:49 -0700
IronPort-SDR: kdJN7Nh3EtXxChTkknqPVPLmXlZ84r/BorjfwKPaScmwBn02wczRwhjRhdX4fm1EEjK0BNE0HY
 imRG5PmHbu5g==
X-IronPort-AV: E=Sophos;i="5.82,258,1613462400"; d="scan'208";a="466292204"
Received: from gwaise-mobl1.ger.corp.intel.com (HELO tursulin-mobl2.home)
 ([10.213.208.64])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2021 02:46:47 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Thu, 29 Apr 2021 10:46:40 +0100
Message-Id: <20210429094640.859825-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Be more gentle with exiting
 non-persistent context
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
Cc: Zhen Han <zhen.han@intel.com>, Chris Wilson <chris@chris-wilson.co.uk>,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

When a non-persistent context exits we currently mark it as banned in
order to trigger fast termination of any outstanding GPU jobs it may have
left running.

In doing so we apply a very strict 1ms limit in which the left over job
has to preempt before we issues an engine resets.

Some workloads are not able to cleanly preempt in that time window and it
can be argued that it would instead be better to give them a bit more
grace since avoiding engine resets is generally preferrable.

To achieve this the patch splits handling of banned contexts from simply
exited non-persistent ones and then applies different timeouts for both
and also extends the criteria which determines if a request should be
scheduled back in after preemption or not.

15ms preempt timeout grace is given to exited non-persistent contexts
which have been empirically tested to satisfy customers requirements
and still provides reasonably quick cleanup post exit.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Zhen Han <zhen.han@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c     | 15 +++++++++------
 drivers/gpu/drm/i915/gt/intel_context.h         | 17 +++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_context_types.h   |  1 +
 .../drm/i915/gt/intel_execlists_submission.c    | 12 ++++++++++--
 drivers/gpu/drm/i915/i915_request.c             |  2 +-
 5 files changed, 38 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index fd8ee52e17a4..5a6eba1232cd 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -426,7 +426,8 @@ static struct intel_engine_cs *active_engine(struct intel_context *ce)
 	return engine;
 }
 
-static void kill_engines(struct i915_gem_engines *engines, bool ban)
+static void
+kill_engines(struct i915_gem_engines *engines, bool ban, bool persistent)
 {
 	struct i915_gem_engines_iter it;
 	struct intel_context *ce;
@@ -443,6 +444,8 @@ static void kill_engines(struct i915_gem_engines *engines, bool ban)
 
 		if (ban && intel_context_set_banned(ce))
 			continue;
+		else if (!persistent && intel_context_set_non_persistent(ce))
+			continue;
 
 		/*
 		 * Check the current active state of this context; if we
@@ -454,7 +457,7 @@ static void kill_engines(struct i915_gem_engines *engines, bool ban)
 		engine = active_engine(ce);
 
 		/* First attempt to gracefully cancel the context */
-		if (engine && !__cancel_engine(engine) && ban)
+		if (engine && !__cancel_engine(engine) && (ban || !persistent))
 			/*
 			 * If we are unable to send a preemptive pulse to bump
 			 * the context from the GPU, we have to resort to a full
@@ -466,8 +469,6 @@ static void kill_engines(struct i915_gem_engines *engines, bool ban)
 
 static void kill_context(struct i915_gem_context *ctx)
 {
-	bool ban = (!i915_gem_context_is_persistent(ctx) ||
-		    !ctx->i915->params.enable_hangcheck);
 	struct i915_gem_engines *pos, *next;
 
 	spin_lock_irq(&ctx->stale.lock);
@@ -480,7 +481,8 @@ static void kill_context(struct i915_gem_context *ctx)
 
 		spin_unlock_irq(&ctx->stale.lock);
 
-		kill_engines(pos, ban);
+		kill_engines(pos, !ctx->i915->params.enable_hangcheck,
+			     i915_gem_context_is_persistent(ctx));
 
 		spin_lock_irq(&ctx->stale.lock);
 		GEM_BUG_ON(i915_sw_fence_signaled(&pos->fence));
@@ -526,7 +528,8 @@ static void engines_idle_release(struct i915_gem_context *ctx,
 
 kill:
 	if (list_empty(&engines->link)) /* raced, already closed */
-		kill_engines(engines, true);
+		kill_engines(engines, true,
+			     i915_gem_context_is_persistent(ctx));
 
 	i915_sw_fence_commit(&engines->fence);
 }
diff --git a/drivers/gpu/drm/i915/gt/intel_context.h b/drivers/gpu/drm/i915/gt/intel_context.h
index f83a73a2b39f..b0e812b8ce39 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.h
+++ b/drivers/gpu/drm/i915/gt/intel_context.h
@@ -220,6 +220,23 @@ static inline bool intel_context_set_banned(struct intel_context *ce)
 	return test_and_set_bit(CONTEXT_BANNED, &ce->flags);
 }
 
+static inline bool intel_context_is_non_persistent(const struct intel_context *ce)
+{
+	return test_bit(CONTEXT_NON_PERSISTENT, &ce->flags);
+}
+
+static inline bool intel_context_set_non_persistent(struct intel_context *ce)
+{
+	return test_and_set_bit(CONTEXT_NON_PERSISTENT, &ce->flags);
+}
+
+static inline bool intel_context_is_schedulable(const struct intel_context *ce)
+{
+	return !intel_context_is_banned(ce) &&
+	       !(intel_context_is_closed(ce) &&
+	         intel_context_is_non_persistent(ce));
+}
+
 static inline bool
 intel_context_force_single_submission(const struct intel_context *ce)
 {
diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
index ed8c447a7346..aa949c539e93 100644
--- a/drivers/gpu/drm/i915/gt/intel_context_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
@@ -95,6 +95,7 @@ struct intel_context {
 #define CONTEXT_BANNED			6
 #define CONTEXT_FORCE_SINGLE_SUBMISSION	7
 #define CONTEXT_NOPREEMPT		8
+#define CONTEXT_NON_PERSISTENT		9 /* Only if also closed. */
 
 	struct {
 		u64 timeout_us;
diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index de124870af44..5ad7272fbbc4 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -478,7 +478,7 @@ __execlists_schedule_in(struct i915_request *rq)
 		     !intel_engine_has_heartbeat(engine)))
 		intel_context_set_banned(ce);
 
-	if (unlikely(intel_context_is_banned(ce) || bad_request(rq)))
+	if (unlikely(!intel_context_is_schedulable(ce) || bad_request(rq)))
 		reset_active(rq, engine);
 
 	if (IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM))
@@ -1204,12 +1204,20 @@ static void record_preemption(struct intel_engine_execlists *execlists)
 static unsigned long active_preempt_timeout(struct intel_engine_cs *engine,
 					    const struct i915_request *rq)
 {
+	struct intel_context *ce;
+
 	if (!rq)
 		return 0;
 
+	ce = rq->context;
+
 	/* Force a fast reset for terminated contexts (ignoring sysfs!) */
-	if (unlikely(intel_context_is_banned(rq->context) || bad_request(rq)))
+	if (unlikely(intel_context_is_banned(ce) || bad_request(rq)))
 		return 1;
+	/* Longer grace for closed non-persistent contexts to avoid resets. */
+	else if (unlikely(intel_context_is_closed(ce) &&
+			  intel_context_is_non_persistent(ce)))
+		return 15;
 
 	return READ_ONCE(engine->props.preempt_timeout_ms);
 }
diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index bec9c3652188..bbac87535923 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -660,7 +660,7 @@ bool __i915_request_submit(struct i915_request *request)
 		goto active;
 	}
 
-	if (unlikely(intel_context_is_banned(request->context)))
+	if (unlikely(!intel_context_is_schedulable(request->context)))
 		i915_request_set_error_once(request, -EIO);
 
 	if (unlikely(fatal_error(request->fence.error)))
-- 
2.30.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
