Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD665899F9B
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Apr 2024 16:28:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1169113C54;
	Fri,  5 Apr 2024 14:28:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; secure) header.d=linutronix.de header.i=@linutronix.de header.b="aRN93+lx";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="v85ZY+SP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96FDF10EA34;
 Fri,  5 Apr 2024 14:27:56 +0000 (UTC)
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1712327263;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=mjwX3QlCU66IDmZDq9AA2g57L+zVqsIfccpIYP3wU0M=;
 b=aRN93+lxq3kvtOsnqI+er9KRu8uQc3AFbH27XAYvwkpSX1sIWtGTS7o1z5sDrlscUhcGni
 1IRrgg/DltKxyn+OtWdGjIYqxnfak8TO9fYJ5ciFpbefB+ELW6aoKL7ezWj0BykBUneuqZ
 +d3fcu6cYLLTNHJHo6WeEnm/cOM4Q5DnIBxqlIlpU5eHxgFPBdiIxZAwqQ3M/2CaoPSTT+
 wTsJuTCUeq6csNTzUDUuuiMjJau508J8QIOBFrWpk3jHnB9sJTgYFEPwQte1tMaiXLXEx8
 eAiyjAkVeR/ElmdQujcNp/v9YjUpCBGcU7fCLPVxOAttRaWuYrWZQSJgkrrIJg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1712327263;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=mjwX3QlCU66IDmZDq9AA2g57L+zVqsIfccpIYP3wU0M=;
 b=v85ZY+SPcP+PELYUMVRwAbut83JgGfsyxn1HY9ALBMCGxc7Ft0wH8BL1TSyfbjsmAvX5LT
 5B/F/qwofPMl8tAg==
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Clark Williams <williams@redhat.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Subject: [PATCH 07/10] drm/i915/gt: Use spin_lock_irq() instead of
 local_irq_disable() + spin_lock()
Date: Fri,  5 Apr 2024 16:18:25 +0200
Message-ID: <20240405142737.920626-8-bigeasy@linutronix.de>
In-Reply-To: <20240405142737.920626-1-bigeasy@linutronix.de>
References: <20240405142737.920626-1-bigeasy@linutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

execlists_dequeue() is invoked from a function which uses
local_irq_disable() to disable interrupts so the spin_lock() behaves
like spin_lock_irq().
This breaks PREEMPT_RT because local_irq_disable() + spin_lock() is not
the same as spin_lock_irq().

execlists_dequeue_irq() and execlists_dequeue() has each one caller
only. If intel_engine_cs::active::lock is acquired and released with the
_irq suffix then it behaves almost as if execlists_dequeue() would be
invoked with disabled interrupts. The difference is the last part of the
function which is then invoked with enabled interrupts.
I can't tell if this makes a difference. From looking at it, it might
work to move the last unlock at the end of the function as I didn't find
anything that would acquire the lock again.

Reported-by: Clark Williams <williams@redhat.com>
Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Reviewed-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 .../drm/i915/gt/intel_execlists_submission.c    | 17 +++++------------
 1 file changed, 5 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers=
/gpu/drm/i915/gt/intel_execlists_submission.c
index b061a0a0d6b08..80240ec45cb9f 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -1303,7 +1303,7 @@ static void execlists_dequeue(struct intel_engine_cs =
*engine)
 	 * and context switches) submission.
 	 */
=20
-	spin_lock(&sched_engine->lock);
+	spin_lock_irq(&sched_engine->lock);
=20
 	/*
 	 * If the queue is higher priority than the last
@@ -1403,7 +1403,7 @@ static void execlists_dequeue(struct intel_engine_cs =
*engine)
 				 * Even if ELSP[1] is occupied and not worthy
 				 * of timeslices, our queue might be.
 				 */
-				spin_unlock(&sched_engine->lock);
+				spin_unlock_irq(&sched_engine->lock);
 				return;
 			}
 		}
@@ -1429,7 +1429,7 @@ static void execlists_dequeue(struct intel_engine_cs =
*engine)
=20
 		if (last && !can_merge_rq(last, rq)) {
 			spin_unlock(&ve->base.sched_engine->lock);
-			spin_unlock(&engine->sched_engine->lock);
+			spin_unlock_irq(&engine->sched_engine->lock);
 			return; /* leave this for another sibling */
 		}
=20
@@ -1591,7 +1591,7 @@ static void execlists_dequeue(struct intel_engine_cs =
*engine)
 	 */
 	sched_engine->queue_priority_hint =3D queue_prio(sched_engine);
 	i915_sched_engine_reset_on_empty(sched_engine);
-	spin_unlock(&sched_engine->lock);
+	spin_unlock_irq(&sched_engine->lock);
=20
 	/*
 	 * We can skip poking the HW if we ended up with exactly the same set
@@ -1617,13 +1617,6 @@ static void execlists_dequeue(struct intel_engine_cs=
 *engine)
 	}
 }
=20
-static void execlists_dequeue_irq(struct intel_engine_cs *engine)
-{
-	local_irq_disable(); /* Suspend interrupts across request submission */
-	execlists_dequeue(engine);
-	local_irq_enable(); /* flush irq_work (e.g. breadcrumb enabling) */
-}
-
 static void clear_ports(struct i915_request **ports, int count)
 {
 	memset_p((void **)ports, NULL, count);
@@ -2478,7 +2471,7 @@ static void execlists_submission_tasklet(struct taskl=
et_struct *t)
 	}
=20
 	if (!engine->execlists.pending[0]) {
-		execlists_dequeue_irq(engine);
+		execlists_dequeue(engine);
 		start_timeslice(engine);
 	}
=20
--=20
2.43.0

