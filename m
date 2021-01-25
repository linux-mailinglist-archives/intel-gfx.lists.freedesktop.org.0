Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C04C3025FB
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Jan 2021 15:02:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F33D06E1BD;
	Mon, 25 Jan 2021 14:02:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6AE836E0FE
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Jan 2021 14:02:10 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23693641-1500050 
 for multiple; Mon, 25 Jan 2021 14:01:39 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 25 Jan 2021 14:01:14 +0000
Message-Id: <20210125140136.10494-19-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210125140136.10494-1-chris@chris-wilson.co.uk>
References: <20210125140136.10494-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 19/41] drm/i915/gt: Show scheduler queues when
 dumping state
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
Cc: thomas.hellstrom@intel.com, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Move the scheduler pretty printer from out of the execlists state to
match its more common location.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c | 34 +++++++++++++----------
 1 file changed, 19 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index cdd07aeada05..2f9a8960144b 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -1443,20 +1443,15 @@ static void intel_engine_print_registers(struct intel_engine_cs *engine,
 
 	if (intel_engine_in_guc_submission_mode(engine)) {
 		/* nothing to print yet */
-	} else if (HAS_EXECLISTS(dev_priv)) {
-		struct i915_request * const *port, *rq;
 		const u32 *hws =
 			&engine->status_page.addr[I915_HWS_CSB_BUF0_INDEX];
 		const u8 num_entries = execlists->csb_size;
 		unsigned int idx;
 		u8 read, write;
 
-		drm_printf(m, "\tExeclist tasklet queued? %s (%s), preempt? %s, timeslice? %s\n",
-			   yesno(test_bit(TASKLET_STATE_SCHED,
-					  &engine->active.tasklet.state)),
-			   enableddisabled(!atomic_read(&engine->active.tasklet.count)),
-			   repr_timer(&engine->execlists.preempt),
-			   repr_timer(&engine->execlists.timer));
+		drm_printf(m, "\tExeclists preempt? %s, timeslice? %s\n",
+			   repr_timer(&execlists->preempt),
+			   repr_timer(&execlists->timer));
 
 		read = execlists->csb_head;
 		write = READ_ONCE(*execlists->csb_write);
@@ -1477,6 +1472,22 @@ static void intel_engine_print_registers(struct intel_engine_cs *engine,
 			drm_printf(m, "\tExeclist CSB[%d]: 0x%08x, context: %d\n",
 				   idx, hws[idx * 2], hws[idx * 2 + 1]);
 		}
+	} else if (INTEL_GEN(dev_priv) > 6) {
+		drm_printf(m, "\tPP_DIR_BASE: 0x%08x\n",
+			   ENGINE_READ(engine, RING_PP_DIR_BASE));
+		drm_printf(m, "\tPP_DIR_BASE_READ: 0x%08x\n",
+			   ENGINE_READ(engine, RING_PP_DIR_BASE_READ));
+		drm_printf(m, "\tPP_DIR_DCLV: 0x%08x\n",
+			   ENGINE_READ(engine, RING_PP_DIR_DCLV));
+	}
+
+	if (engine->active.tasklet.func) {
+		struct i915_request * const *port, *rq;
+
+		drm_printf(m, "\tTasklet queued? %s (%s)\n",
+			   yesno(test_bit(TASKLET_STATE_SCHED,
+					  &engine->active.tasklet.state)),
+			   enableddisabled(!atomic_read(&engine->active.tasklet.count)));
 
 		i915_sched_lock_bh(&engine->active);
 		rcu_read_lock();
@@ -1510,13 +1521,6 @@ static void intel_engine_print_registers(struct intel_engine_cs *engine,
 		}
 		rcu_read_unlock();
 		i915_sched_unlock_bh(&engine->active);
-	} else if (INTEL_GEN(dev_priv) > 6) {
-		drm_printf(m, "\tPP_DIR_BASE: 0x%08x\n",
-			   ENGINE_READ(engine, RING_PP_DIR_BASE));
-		drm_printf(m, "\tPP_DIR_BASE_READ: 0x%08x\n",
-			   ENGINE_READ(engine, RING_PP_DIR_BASE_READ));
-		drm_printf(m, "\tPP_DIR_DCLV: 0x%08x\n",
-			   ENGINE_READ(engine, RING_PP_DIR_DCLV));
 	}
 }
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
