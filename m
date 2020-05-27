Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 492D91E3CAF
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2020 10:53:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82C5889736;
	Wed, 27 May 2020 08:53:32 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 940EE89736
 for <Intel-gfx@lists.freedesktop.org>; Wed, 27 May 2020 08:53:31 +0000 (UTC)
IronPort-SDR: 2C1y6Q7IxNKMmWLaNOHOVGgbDsf5DaWjSXu5RQ6g1zoge0w92nopFshm/5FAj+7l591JuC/Y/g
 owrY9QSZKsGA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2020 01:53:31 -0700
IronPort-SDR: 6V0nW1RKBwqbd4hfupqTw9nLOb8QJJd3lLv+QzzPbt3yEs8jEbsoZZjstLntVdFW3jx/1ZCU8E
 GvdpCPA7ANVA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,440,1583222400"; d="scan'208";a="291524870"
Received: from gkazakev-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.214.254.180])
 by fmsmga004.fm.intel.com with ESMTP; 27 May 2020 01:53:29 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Wed, 27 May 2020 09:53:22 +0100
Message-Id: <20200527085322.25861-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Special handling for bonded requests
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
Cc: Xiaogang Li <xiaogang.li@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Our generic mechanism for specifying aligned request start,
I915_EXEC_FENCE_SUBMIT, has a bit too relaxed rules when it comes to the
actual use case of media scalability on Tigerlake.

While the submit fence can provide the aligned start, the  actual media
pipeline expects that execution remains in lockstep from then onwards.
Otherwise the hardware cannot handle well one of the pair getting
preempted leading to GPU hangs and corrupted media playback.

This puts us in a difficult position where the only visible solution,
which does not involve adding new uapi, is to give more meaning to the
generic submit fence. At least when used between the video engines.

The special semantics this patch applies in that case are two fold. First
is that both of the aligned pairs will be marked as non-preemptable and
second is ensuring both are not sharing ELSP ports with any other context.

Non-preemptable property will ensure that once the start has been aligned
the requests remain executing until completion.

Single port ELSP property will ensure there are no possible inversions
between different independent pairs of aligned requests.

Going forward we can think of introducing new uapi to request this
behaviour as a separate, more explicit flag, and at that point retire this
semi-generic special handling.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Suggested-by: Xiaogang Li <xiaogang.li@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_context.h |  2 +-
 drivers/gpu/drm/i915/gt/intel_lrc.c     | 46 +++++++++++++++++++++----
 2 files changed, 41 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_context.h b/drivers/gpu/drm/i915/gt/intel_context.h
index 07be021882cc..576d11c0cdd9 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.h
+++ b/drivers/gpu/drm/i915/gt/intel_context.h
@@ -212,7 +212,7 @@ intel_context_force_single_submission(const struct intel_context *ce)
 static inline void
 intel_context_set_single_submission(struct intel_context *ce)
 {
-	__set_bit(CONTEXT_FORCE_SINGLE_SUBMISSION, &ce->flags);
+	set_bit(CONTEXT_FORCE_SINGLE_SUBMISSION, &ce->flags);
 }
 
 static inline bool
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 3214a4ecc31a..88cf20fd92c8 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1734,8 +1734,7 @@ static void execlists_submit_ports(struct intel_engine_cs *engine)
 
 static bool ctx_single_port_submission(const struct intel_context *ce)
 {
-	return (IS_ENABLED(CONFIG_DRM_I915_GVT) &&
-		intel_context_force_single_submission(ce));
+	return intel_context_force_single_submission(ce);
 }
 
 static bool can_merge_ctx(const struct intel_context *prev,
@@ -4929,9 +4928,41 @@ static void execlists_park(struct intel_engine_cs *engine)
 	cancel_timer(&engine->execlists.preempt);
 }
 
+static void
+mark_bonded_pair(struct i915_request *rq, struct i915_request *signal)
+{
+	/*
+	 * Give (temporary) special meaning to a pair requests with requested
+	 * aligned start along the video engines.
+	 *
+	 * They should be non-preemptable and have all ELSP ports to themselves
+	 * to avoid any deadlocks caused by inversions.
+	 *
+	 * Gen11+
+	 */
+	if (INTEL_GEN(rq->i915) < 11 ||
+	    rq->engine->class != VIDEO_DECODE_CLASS ||
+	    rq->engine->class != signal->engine->class)
+		return;
+
+	set_bit(I915_FENCE_FLAG_NOPREEMPT, &rq->fence.flags);
+	set_bit(I915_FENCE_FLAG_NOPREEMPT, &signal->fence.flags);
+
+	intel_context_set_single_submission(rq->context);
+	intel_context_set_single_submission(signal->context);
+}
+
+static void
+execlists_bond_execute(struct i915_request *rq, struct dma_fence *signal)
+{
+	mark_bonded_pair(rq, to_request(signal));
+}
+
 void intel_execlists_set_default_submission(struct intel_engine_cs *engine)
 {
 	engine->submit_request = execlists_submit_request;
+	if (engine->class == VIDEO_DECODE_CLASS)
+		engine->bond_execute = execlists_bond_execute;
 	engine->schedule = i915_schedule;
 	engine->execlists.tasklet.func = execlists_submission_tasklet;
 
@@ -5602,15 +5633,18 @@ virtual_find_bond(struct virtual_engine *ve,
 }
 
 static void
-virtual_bond_execute(struct i915_request *rq, struct dma_fence *signal)
+virtual_bond_execute(struct i915_request *rq, struct dma_fence *sigfence)
 {
 	struct virtual_engine *ve = to_virtual_engine(rq->engine);
+	struct i915_request *signal = to_request(sigfence);
 	intel_engine_mask_t allowed, exec;
 	struct ve_bond *bond;
 
-	allowed = ~to_request(signal)->engine->mask;
+	mark_bonded_pair(rq, signal);
+
+	allowed = ~signal->engine->mask;
 
-	bond = virtual_find_bond(ve, to_request(signal)->engine);
+	bond = virtual_find_bond(ve, signal->engine);
 	if (bond)
 		allowed &= bond->sibling_mask;
 
@@ -5620,7 +5654,7 @@ virtual_bond_execute(struct i915_request *rq, struct dma_fence *signal)
 		;
 
 	/* Prevent the master from being re-run on the bonded engines */
-	to_request(signal)->execution_mask &= ~allowed;
+	signal->execution_mask &= ~allowed;
 }
 
 struct intel_context *
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
