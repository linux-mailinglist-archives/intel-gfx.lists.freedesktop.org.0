Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A457D2E1BAA
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Dec 2020 12:12:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C2F36E933;
	Wed, 23 Dec 2020 11:12:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 122676E92A
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Dec 2020 11:12:14 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23412182-1500050 
 for multiple; Wed, 23 Dec 2020 11:11:28 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Dec 2020 11:10:30 +0000
Message-Id: <20201223111126.3338-6-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201223111126.3338-1-chris@chris-wilson.co.uk>
References: <20201223111126.3338-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 06/62] drm/i915/gt: Shrink the critical section
 for irq signaling
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

Let's only wait for the list iterator when decoupling the virtual
breadcrumb, as the signaling of all the requests may take a long time,
during which we do not want to keep the tasklet spinning.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Brost <matthew.brost@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_breadcrumbs.c          | 2 ++
 drivers/gpu/drm/i915/gt/intel_breadcrumbs_types.h    | 1 +
 drivers/gpu/drm/i915/gt/intel_execlists_submission.c | 3 ++-
 3 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
index 8f7c8595ba08..2eabb9ab5d47 100644
--- a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
+++ b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
@@ -234,6 +234,7 @@ static void signal_irq_work(struct irq_work *work)
 		intel_breadcrumbs_disarm_irq(b);
 
 	rcu_read_lock();
+	atomic_inc(&b->signaler_active);
 	list_for_each_entry_rcu(ce, &b->signalers, signal_link) {
 		struct i915_request *rq;
 
@@ -269,6 +270,7 @@ static void signal_irq_work(struct irq_work *work)
 			}
 		}
 	}
+	atomic_dec(&b->signaler_active);
 	rcu_read_unlock();
 
 	llist_for_each_safe(signal, sn, signal) {
diff --git a/drivers/gpu/drm/i915/gt/intel_breadcrumbs_types.h b/drivers/gpu/drm/i915/gt/intel_breadcrumbs_types.h
index d85a6f74fb87..3a084ce8ff5e 100644
--- a/drivers/gpu/drm/i915/gt/intel_breadcrumbs_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_breadcrumbs_types.h
@@ -34,6 +34,7 @@ struct intel_breadcrumbs {
 	spinlock_t signalers_lock; /* protects the list of signalers */
 	struct list_head signalers;
 	struct llist_head signaled_requests;
+	atomic_t signaler_active;
 
 	spinlock_t irq_lock; /* protects the interrupt from hardirq context */
 	struct irq_work irq_work; /* for use from inside irq_lock */
diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index 1f6e9fe5bcc0..ba8229c0c75a 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -594,7 +594,8 @@ static void kick_siblings(struct i915_request *rq, struct intel_context *ce)
 		 * ce->signal_link.
 		 */
 		i915_request_cancel_breadcrumb(rq);
-		irq_work_sync(&engine->breadcrumbs->irq_work);
+		while (atomic_read(&engine->breadcrumbs->signaler_active))
+			cpu_relax();
 	}
 
 	if (READ_ONCE(ve->request))
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
