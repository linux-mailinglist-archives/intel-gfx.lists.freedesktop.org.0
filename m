Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 864DE14B688
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jan 2020 15:06:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8EC56E067;
	Tue, 28 Jan 2020 14:06:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 839776E067
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jan 2020 14:06:22 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20035331-1500050 
 for multiple; Tue, 28 Jan 2020 14:06:09 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 28 Jan 2020 14:06:08 +0000
Message-Id: <20200128140608.3766363-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/execlists: Move trace in/out to
 submission and completion
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

Currently we record the submission of the context/rq to the HW early and
so have the consequential of having a false set of tracepoints for when
we decide to elide the submission. To compensate, and hide the impact of
the elision, only record the entry/exit points of the active contexts.

In doing so, we lose track of which port the request is submitted to,
and we just have the information about the context activation.

Alternatively, we could move the entry tracepoint to submit_ports such
that we only emit a tracepoint for when we submit the context to HW.
Similarly, we would need to only emit the out tracepoint when it is
removed from the HW (and not for the elision).

Reported-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index cf6c43bd540a..2dce4353df62 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1226,6 +1226,7 @@ __execlists_schedule_in(struct i915_request *rq)
 	__intel_gt_pm_get(engine->gt);
 	execlists_context_status_change(rq, INTEL_CONTEXT_SCHEDULE_IN);
 	intel_engine_context_in(engine);
+	trace_i915_request_in(rq, 0);
 
 	return engine;
 }
@@ -1237,7 +1238,6 @@ execlists_schedule_in(struct i915_request *rq, int idx)
 	struct intel_engine_cs *old;
 
 	GEM_BUG_ON(!intel_engine_pm_is_awake(rq->engine));
-	trace_i915_request_in(rq, idx);
 
 	old = READ_ONCE(ce->inflight);
 	do {
@@ -1272,6 +1272,8 @@ __execlists_schedule_out(struct i915_request *rq,
 	 * refrain from doing non-trivial work here.
 	 */
 
+	trace_i915_request_out(rq);
+
 	/*
 	 * If we have just completed this context, the engine may now be
 	 * idle and we want to re-enter powersaving.
@@ -1305,8 +1307,6 @@ execlists_schedule_out(struct i915_request *rq)
 	struct intel_context * const ce = rq->context;
 	struct intel_engine_cs *cur, *old;
 
-	trace_i915_request_out(rq);
-
 	old = READ_ONCE(ce->inflight);
 	do
 		cur = ptr_unmask_bits(old, 2) ? ptr_dec(old) : NULL;
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
