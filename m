Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A01A235938
	for <lists+intel-gfx@lfdr.de>; Sun,  2 Aug 2020 18:44:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C41A6E1BB;
	Sun,  2 Aug 2020 16:44:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 476146E19B
 for <intel-gfx@lists.freedesktop.org>; Sun,  2 Aug 2020 16:44:30 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 22010445-1500050 
 for multiple; Sun, 02 Aug 2020 17:44:18 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sun,  2 Aug 2020 17:43:56 +0100
Message-Id: <20200802164412.2738-27-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200802164412.2738-1-chris@chris-wilson.co.uk>
References: <20200802164412.2738-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 26/42] drm/i915: Lift waiter/signaler iterators
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

Lift the list iteration defines for traversing the signaler/waiter lists
into i915_scheduler.h for reuse.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c         | 10 ----------
 drivers/gpu/drm/i915/i915_scheduler_types.h | 10 ++++++++++
 2 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index ccf0b43c02cf..3c022e621a38 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1835,16 +1835,6 @@ static void virtual_xfer_context(struct virtual_engine *ve,
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
