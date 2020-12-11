Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B3C22D746F
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Dec 2020 12:03:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84D306ED9C;
	Fri, 11 Dec 2020 11:03:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15E276ED9D
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Dec 2020 11:03:18 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23291508-1500050 
 for multiple; Fri, 11 Dec 2020 11:03:11 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 11 Dec 2020 11:03:10 +0000
Message-Id: <20201211110310.22740-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Use cmpxchg64 for 32b compatilibity
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

By using the double wide cmpxchg64 on 32bit, we can use the same
algorithm on both 32/64b systems.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/i915_active.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_active.c b/drivers/gpu/drm/i915/i915_active.c
index 10a865f3dc09..ab4382841c6b 100644
--- a/drivers/gpu/drm/i915/i915_active.c
+++ b/drivers/gpu/drm/i915/i915_active.c
@@ -159,8 +159,7 @@ __active_retire(struct i915_active *ref)
 		GEM_BUG_ON(ref->tree.rb_node != &ref->cache->node);
 
 		/* Make the cached node available for reuse with any timeline */
-		if (IS_ENABLED(CONFIG_64BIT))
-			ref->cache->timeline = 0; /* needs cmpxchg(u64) */
+		ref->cache->timeline = 0; /* needs cmpxchg(u64) */
 	}
 
 	spin_unlock_irqrestore(&ref->tree_lock, flags);
@@ -256,7 +255,6 @@ static struct active_node *__active_lookup(struct i915_active *ref, u64 idx)
 		if (cached == idx)
 			return it;
 
-#ifdef CONFIG_64BIT /* for cmpxchg(u64) */
 		/*
 		 * An unclaimed cache [.timeline=0] can only be claimed once.
 		 *
@@ -267,9 +265,8 @@ static struct active_node *__active_lookup(struct i915_active *ref, u64 idx)
 		 * only the winner of that race will cmpxchg return the old
 		 * value of 0).
 		 */
-		if (!cached && !cmpxchg(&it->timeline, 0, idx))
+		if (!cached && !cmpxchg64(&it->timeline, 0, idx))
 			return it;
-#endif
 	}
 
 	BUILD_BUG_ON(offsetof(typeof(*it), node));
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
