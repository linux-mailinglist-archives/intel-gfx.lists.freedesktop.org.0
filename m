Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 82590123AC8
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Dec 2019 00:28:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D8E56E1CF;
	Tue, 17 Dec 2019 23:28:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E2DF6E1CF
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Dec 2019 23:28:51 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19615199-1500050 
 for multiple; Tue, 17 Dec 2019 23:28:39 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 17 Dec 2019 23:28:37 +0000
Message-Id: <20191217232837.3411664-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191217230740.3399493-1-chris@chris-wilson.co.uk>
References: <20191217230740.3399493-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Ratelimit i915_globals_park
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

When doing our global park, we like to be a good citizen and shrink our
slab caches (of which we have quite a few now), but each
kmem_cache_shrink() incurs a stop_machine() and so ends up being quite
expensive, causing machine-wide stalls. While ideally we would like to
throw away unused pages in our slab caches whenever it appears that we
are idling, doing so will require a much cheaper mechanism. In the
meantime use a delayed worked to impose a rate-limit that means we have
to have been idle for more than 2 seconds before we start shrinking.

References: https://gitlab.freedesktop.org/drm/intel/issues/848
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/i915_globals.c | 31 +++++++++++++++++++++++------
 1 file changed, 25 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_globals.c b/drivers/gpu/drm/i915/i915_globals.c
index be127cd28931..06d2be2daca2 100644
--- a/drivers/gpu/drm/i915/i915_globals.c
+++ b/drivers/gpu/drm/i915/i915_globals.c
@@ -20,7 +20,8 @@ static LIST_HEAD(globals);
 static atomic_t active;
 static atomic_t epoch;
 static struct park_work {
-	struct rcu_work work;
+	struct delayed_work work;
+	struct rcu_head rcu;
 	int epoch;
 } park;
 
@@ -37,11 +38,27 @@ static void i915_globals_shrink(void)
 		global->shrink();
 }
 
+static void __i915_globals_grace(struct rcu_head *rcu)
+{
+	/* Ratelimit parking as shrinking is quite slow */
+	mod_delayed_work(system_wq, &park.work,
+			 round_jiffies_up_relative(2 * HZ));
+}
+
+static void __i915_globals_queue_rcu(void)
+{
+	park.epoch = atomic_inc_return(&epoch);
+	if (!atomic_read(&active))
+		call_rcu(&park.rcu, __i915_globals_grace);
+}
+
 static void __i915_globals_park(struct work_struct *work)
 {
 	/* Confirm nothing woke up in the last grace period */
 	if (park.epoch == atomic_read(&epoch))
 		i915_globals_shrink();
+	else
+		__i915_globals_queue_rcu();
 }
 
 void __init i915_global_register(struct i915_global *global)
@@ -85,7 +102,7 @@ int __init i915_globals_init(void)
 		}
 	}
 
-	INIT_RCU_WORK(&park.work, __i915_globals_park);
+	INIT_DELAYED_WORK(&park.work, __i915_globals_park);
 	return 0;
 }
 
@@ -103,8 +120,9 @@ void i915_globals_park(void)
 	if (!atomic_dec_and_test(&active))
 		return;
 
-	park.epoch = atomic_inc_return(&epoch);
-	queue_rcu_work(system_wq, &park.work);
+	/* Queue cleanup after the next RCU grace period has freed slabs */
+	if (!work_pending(&park.work.work))
+		__i915_globals_queue_rcu();
 }
 
 void i915_globals_unpark(void)
@@ -116,8 +134,9 @@ void i915_globals_unpark(void)
 void __exit i915_globals_exit(void)
 {
 	/* Flush any residual park_work */
-	atomic_inc(&epoch);
-	flush_rcu_work(&park.work);
+	atomic_inc(&epoch); /* skip shrinking */
+	rcu_barrier(); /* wait for the work to be queued */
+	flush_delayed_work(&park.work);
 
 	__i915_globals_cleanup();
 
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
