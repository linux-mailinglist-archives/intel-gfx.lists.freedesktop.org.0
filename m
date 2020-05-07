Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 956B01C84CC
	for <lists+intel-gfx@lfdr.de>; Thu,  7 May 2020 10:29:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D5E66E0AA;
	Thu,  7 May 2020 08:29:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0572D6E0AA
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 May 2020 08:29:38 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21135519-1500050 
 for multiple; Thu, 07 May 2020 09:29:12 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  7 May 2020 09:29:10 +0100
Message-Id: <20200507082910.10481-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200507082124.1673-3-chris@chris-wilson.co.uk>
References: <20200507082124.1673-3-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Treat weak-dependencies as
 bidirectional when applying priorities
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

Clients may use a submit-fence as bidirectional bond between two or more
co-operating requests, and so if we bump the priority of one, we wish to
bump the priority of the set.

Testcase: igt/gem_exec_fence/submitN
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/i915_scheduler.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_scheduler.c b/drivers/gpu/drm/i915/i915_scheduler.c
index 6e2d4190099f..1c33973dbd20 100644
--- a/drivers/gpu/drm/i915/i915_scheduler.c
+++ b/drivers/gpu/drm/i915/i915_scheduler.c
@@ -291,6 +291,19 @@ static void __i915_schedule(struct i915_sched_node *node,
 			if (prio > READ_ONCE(p->signaler->attr.priority))
 				list_move_tail(&p->dfs_link, &dfs);
 		}
+
+		/*
+		 * A weak dependency is used for submit-fence, which while
+		 * not strongly coupled, we do need to treat as a coordinated
+		 * set of co-operating requests that need to be run
+		 * concurrently. So if one request of that set receives a
+		 * priority boost, they all receive a priority boost.
+		 */
+		list_for_each_entry(p, &node->waiters_list, wait_link) {
+			if (p->flags & I915_DEPENDENCY_WEAK &&
+			    prio > READ_ONCE(p->waiter->attr.priority))
+				list_move_tail(&p->dfs_link, &dfs);
+		}
 	}
 
 	/*
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
