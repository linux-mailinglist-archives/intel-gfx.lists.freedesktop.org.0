Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A09971F1032
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jun 2020 00:21:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C15DE6E443;
	Sun,  7 Jun 2020 22:21:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13C436E213
 for <intel-gfx@lists.freedesktop.org>; Sun,  7 Jun 2020 22:21:23 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21425612-1500050 
 for multiple; Sun, 07 Jun 2020 23:21:14 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sun,  7 Jun 2020 23:21:04 +0100
Message-Id: <20200607222108.14401-24-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200607222108.14401-1-chris@chris-wilson.co.uk>
References: <20200607222108.14401-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 24/28] ipi-dag
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

---
 drivers/gpu/drm/i915/i915_scheduler.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_scheduler.c b/drivers/gpu/drm/i915/i915_scheduler.c
index 320d3720ba34..4c189b81cc62 100644
--- a/drivers/gpu/drm/i915/i915_scheduler.c
+++ b/drivers/gpu/drm/i915/i915_scheduler.c
@@ -436,17 +436,17 @@ bool i915_sched_node_verify_dag(struct i915_sched_node *waiter,
 	struct i915_dependency *dep, *p;
 	struct i915_dependency stack;
 	bool result = false;
-	LIST_HEAD(dfs);
+	LIST_HEAD(ipi);
 
 	if (list_empty(&waiter->waiters_list))
 		return true;
 
-	spin_lock_irq(&schedule_lock);
+	spin_lock_irq(&ipi_lock);
 
 	stack.signaler = signaler;
-	list_add(&stack.dfs_link, &dfs);
+	list_add(&stack.ipi_link, &ipi);
 
-	list_for_each_entry(dep, &dfs, dfs_link) {
+	list_for_each_entry(dep, &ipi, ipi_link) {
 		struct i915_sched_node *node = dep->signaler;
 
 		if (node_signaled(node))
@@ -456,17 +456,17 @@ bool i915_sched_node_verify_dag(struct i915_sched_node *waiter,
 			if (p->signaler == waiter)
 				goto out;
 
-			if (list_empty(&p->dfs_link))
-				list_add_tail(&p->dfs_link, &dfs);
+			if (list_empty(&p->ipi_link))
+				list_add_tail(&p->ipi_link, &ipi);
 		}
 	}
 
 	result = true;
 out:
-	list_for_each_entry_safe(dep, p, &dfs, dfs_link)
-		INIT_LIST_HEAD(&dep->dfs_link);
+	list_for_each_entry_safe(dep, p, &ipi, ipi_link)
+		INIT_LIST_HEAD(&dep->ipi_link);
 
-	spin_unlock_irq(&schedule_lock);
+	spin_unlock_irq(&ipi_lock);
 
 	return result;
 }
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
