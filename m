Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 111212B98A9
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Nov 2020 17:56:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 765A46E5BD;
	Thu, 19 Nov 2020 16:56:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 641236E5A0
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Nov 2020 16:56:20 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23045123-1500050 
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Nov 2020 16:56:18 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 19 Nov 2020 16:56:15 +0000
Message-Id: <20201119165616.10834-5-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201119165616.10834-1-chris@chris-wilson.co.uk>
References: <20201119165616.10834-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 5/6] drm/i915: Lift waiter/signaler iterators
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

Lift the list iteration defines for traversing the signaler/waiter lists
into i915_scheduler.h for reuse.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c         | 10 ----------
 drivers/gpu/drm/i915/i915_scheduler_types.h | 10 ++++++++++
 2 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 5257f3c71366..30759e95da0e 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1836,16 +1836,6 @@ static void virtual_xfer_context(struct virtual_engine *ve,
 	}
 }
 
-#define for_each_waiter(p__, rq__) \
-	list_for_each_entry_lockless(p__, \
-				     &(rq__)->sched.waiters_list, \
-				     wait_link)
-
-#define for_each_signaler(p__, rq__) \
-	list_for_each_entry_rcu(p__, \
-				&(rq__)->sched.signalers_list, \
-				signal_link)
-
 static void defer_request(struct i915_request *rq, struct list_head * const pl)
 {
 	LIST_HEAD(list);
diff --git a/drivers/gpu/drm/i915/i915_scheduler_types.h b/drivers/gpu/drm/i915/i915_scheduler_types.h
index f72e6c397b08..343ed44d5ed4 100644
--- a/drivers/gpu/drm/i915/i915_scheduler_types.h
+++ b/drivers/gpu/drm/i915/i915_scheduler_types.h
@@ -81,4 +81,14 @@ struct i915_dependency {
 #define I915_DEPENDENCY_WEAK		BIT(2)
 };
 
+#define for_each_waiter(p__, rq__) \
+	list_for_each_entry_lockless(p__, \
+				     &(rq__)->sched.waiters_list, \
+				     wait_link)
+
+#define for_each_signaler(p__, rq__) \
+	list_for_each_entry_rcu(p__, \
+				&(rq__)->sched.signalers_list, \
+				signal_link)
+
 #endif /* _I915_SCHEDULER_TYPES_H_ */
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
