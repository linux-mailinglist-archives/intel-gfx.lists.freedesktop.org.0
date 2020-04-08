Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 08E221A2AC5
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Apr 2020 23:05:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1438A6EAFF;
	Wed,  8 Apr 2020 21:05:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFA2C6EAFF
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Apr 2020 21:05:49 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20844078-1500050 
 for multiple; Wed, 08 Apr 2020 22:05:34 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 Apr 2020 22:05:32 +0100
Message-Id: <20200408210533.2113590-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200408205938.GC1851257@intel.com>
References: <20200408205938.GC1851257@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/execlists: Workaround switching
 back to a completed context
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

In what seems remarkably similar to the w/a required to not reload an
idle context with HEAD==TAIL, it appears we must prevent the HW from
switching to an idle context in ELSP[1], while simultaneously trying to
preempt the HW to run another context and a continuation of the idle
context (which is no longer idle).

We can achieve this by preventing the context from completing while we
reload a new ELSP (by applying ring_set_paused(1) across the whole of
dequeue), except this eventually fails due to a lite-restore into a
waiting semaphore does not generate an ACK. Instead, we try to avoid
making the GPU do anything too challenging and not submit a new ELSP
while the interrupts + CSB events appear to have fallen behind the
completed contexts. We expect it to catch up shortly so we queue another
tasklet execution and hope for the best.

Closes: https://gitlab.freedesktop.org/drm/intel/issues/1501
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Link: https://patchwork.freedesktop.org/patch/msgid/20200327201433.21864-1-chris@chris-wilson.co.uk
(cherry picked from commit 35f3fd8182ba26e766f7b814e903acf19d01bbb5)
---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 26 +++++++++++++++++++++++---
 1 file changed, 23 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 683014e7bc51..cd63f431d662 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1915,11 +1915,26 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 	 * of trouble.
 	 */
 	active = READ_ONCE(execlists->active);
-	while ((last = *active) && i915_request_completed(last))
-		active++;
 
-	if (last) {
+	/*
+	 * In theory we can skip over completed contexts that have not
+	 * yet been processed by events (as those events are in flight):
+	 *
+	 * while ((last = *active) && i915_request_completed(last))
+	 *	active++;
+	 *
+	 * However, the GPU cannot handle this as it will ultimately
+	 * find itself trying to jump back into a context it has just
+	 * completed and barf.
+	 */
+
+	if ((last = *active)) {
 		if (need_preempt(engine, last, rb)) {
+			if (i915_request_completed(last)) {
+				tasklet_hi_schedule(&execlists->tasklet);
+				return;
+			}
+
 			ENGINE_TRACE(engine,
 				     "preempting last=%llx:%lld, prio=%d, hint=%d\n",
 				     last->fence.context,
@@ -1947,6 +1962,11 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 			last = NULL;
 		} else if (need_timeslice(engine, last) &&
 			   timer_expired(&engine->execlists.timer)) {
+			if (i915_request_completed(last)) {
+				tasklet_hi_schedule(&execlists->tasklet);
+				return;
+			}
+
 			ENGINE_TRACE(engine,
 				     "expired last=%llx:%lld, prio=%d, hint=%d\n",
 				     last->fence.context,
-- 
2.26.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
