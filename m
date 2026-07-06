Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id QZRONOqVS2r6VwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 13:47:54 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E8C97100C1
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 13:47:54 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lankhorst.se header.s=default header.b=Bl2tDSa6;
	dmarc=pass (policy=none) header.from=lankhorst.se;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 816E910E8F6;
	Mon,  6 Jul 2026 11:47:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (unknown [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3245110E8F0;
 Mon,  6 Jul 2026 11:47:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1783338465;
 bh=TskA10De5sCEJJEN8StO2HY+clf8coqbuFfS43dvE+g=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Bl2tDSa6jGnqhxqt7Nf4hYtoz1R0jxeV2qzbbGJ4AkVEjIHDAc/+EBRxpkF6paQ1E
 cfvhzGyY160lDJmOLbaAwCz3rsTPjidl9R4vB+hBc33q89jkIK3H6Ww33jh+MDC8hh
 zGCJtlRKRtk9SDiEQhv7rWcrW+DXc7BjQqDIT9o/Y6anr86rMztqnSYQcQtXjydw8I
 X6NU7ZvT2Gzn6+ODUxkW4X2yoD/L0NR+d87Adv9ID2MIpmXgaH5xF2N32JU3d/IUS5
 T6pny9lQwYek5vQq5L5P9mSoVSiuEFhpBDMTt+4pZHot/xQHP+SJjMyQ3tr87vaZrY
 vE00QjuFt37Hw==
From: Maarten Lankhorst <dev@lankhorst.se>
To: intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Clark Williams <williams@redhat.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maarten Lankhorst <dev@lankhorst.se>
Subject: [PATCH v4 1/7] drm/i915/gt: Use spin_lock_irq() instead of
 local_irq_disable() + spin_lock()
Date: Mon,  6 Jul 2026 13:48:17 +0200
Message-ID: <20260706114823.752313-2-dev@lankhorst.se>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260706114823.752313-1-dev@lankhorst.se>
References: <20260706114823.752313-1-dev@lankhorst.se>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[lankhorst.se,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lankhorst.se:s=default];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[dev@lankhorst.se,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[lankhorst.se:+];
	RCVD_COUNT_TWO(0.00)[2];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,linutronix.de:email,intel.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7E8C97100C1

From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>

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
Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
---
 .../drm/i915/gt/intel_execlists_submission.c    | 17 +++++------------
 1 file changed, 5 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index e693b0c9d2a3e..841f719326756 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -1300,7 +1300,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 	 * and context switches) submission.
 	 */
 
-	spin_lock(&sched_engine->lock);
+	spin_lock_irq(&sched_engine->lock);
 
 	/*
 	 * If the queue is higher priority than the last
@@ -1400,7 +1400,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 				 * Even if ELSP[1] is occupied and not worthy
 				 * of timeslices, our queue might be.
 				 */
-				spin_unlock(&sched_engine->lock);
+				spin_unlock_irq(&sched_engine->lock);
 				return;
 			}
 		}
@@ -1426,7 +1426,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 
 		if (last && !can_merge_rq(last, rq)) {
 			spin_unlock(&ve->base.sched_engine->lock);
-			spin_unlock(&engine->sched_engine->lock);
+			spin_unlock_irq(&engine->sched_engine->lock);
 			return; /* leave this for another sibling */
 		}
 
@@ -1588,7 +1588,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 	 */
 	sched_engine->queue_priority_hint = queue_prio(sched_engine);
 	i915_sched_engine_reset_on_empty(sched_engine);
-	spin_unlock(&sched_engine->lock);
+	spin_unlock_irq(&sched_engine->lock);
 
 	/*
 	 * We can skip poking the HW if we ended up with exactly the same set
@@ -1614,13 +1614,6 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 	}
 }
 
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
@@ -2475,7 +2468,7 @@ static void execlists_submission_tasklet(struct tasklet_struct *t)
 	}
 
 	if (!engine->execlists.pending[0]) {
-		execlists_dequeue_irq(engine);
+		execlists_dequeue(engine);
 		start_timeslice(engine);
 	}
 
-- 
2.53.0

