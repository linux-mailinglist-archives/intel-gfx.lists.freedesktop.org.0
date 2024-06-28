Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8256291BF2A
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jun 2024 15:06:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4847010EC48;
	Fri, 28 Jun 2024 13:06:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; secure) header.d=linutronix.de header.i=@linutronix.de header.b="JAmCdGcI";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="6gHegUWK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FADE10EC3D;
 Fri, 28 Jun 2024 13:06:09 +0000 (UTC)
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1719579967;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=fjq5VyonfAPnN9PeL+PDQ4UWGBptU2Ie5BlwPrLO9HE=;
 b=JAmCdGcIKRxP3nT2RntMGhpTrqXRcG/7bn680DElPsx8mbkHq8o9ZxqTH3Pe2wK1SZx2JE
 MPXjhqtrqw0QBfE+woYvxVd/zZQ6cW2O8zsL45JJFBIyyF+MkkjJOE0fOYWS9j7irzsWze
 6DpOxXNxg/wfxQmoLOY2Tz8SD6pVitchUX2VvwGm7wV1XRTBVWt7aTNwXCCfcn9V+bZeZ/
 DzVe7gDP4+kjkNZUcZw0Kp5sxQRSKZoxS6RRvQo6SZ0k1h2r6zhUMkGMDsbxk9KdE/ZNAU
 xkvKQc+NkrX+DOLv9dgK2ZqnKwAIJI6oQpSrQ0KZii34KkDS5maNhyxu0FOVjA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1719579967;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=fjq5VyonfAPnN9PeL+PDQ4UWGBptU2Ie5BlwPrLO9HE=;
 b=6gHegUWKYl/d2oLUWSErRmFBM8klP+hnTeM2Zx6IhLA+W5TJd5WtKL/ZiDB01yx/RZ0xye
 KQ9bXS95KlRfZ9Ag==
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
Subject: [PATCH v3 5/8] drm/i915/gt: Use spin_lock_irq() instead of
 local_irq_disable() + spin_lock()
Date: Fri, 28 Jun 2024 14:58:04 +0200
Message-ID: <20240628130601.1772849-6-bigeasy@linutronix.de>
In-Reply-To: <20240628130601.1772849-1-bigeasy@linutronix.de>
References: <20240628130601.1772849-1-bigeasy@linutronix.de>
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
index 21829439e6867..ed29a2dd6ea0a 100644
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
2.45.2

