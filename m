Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C588C219F30
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jul 2020 13:41:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C57736E3F5;
	Thu,  9 Jul 2020 11:41:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D450F6E3F7
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jul 2020 11:41:28 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21764331-1500050 
 for multiple; Thu, 09 Jul 2020 12:41:22 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  9 Jul 2020 12:41:18 +0100
Message-Id: <20200709114119.28122-5-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200709114119.28122-1-chris@chris-wilson.co.uk>
References: <20200709114119.28122-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/6] drm/i915: Make the stale cached active node
 available for any timeline
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

Rather than require the next timeline after idling to match the MRU
before idling, reset the index on the node and allow it to match the
first request. However, this requires cmpxchg(u64) and so is not trivial
on 32b, so for compatability we just fallback to keeping the cached node
pointing to the MRU timline.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/i915_active.c | 21 +++++++++++++++++++--
 1 file changed, 19 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_active.c b/drivers/gpu/drm/i915/i915_active.c
index 46fdc7d98f40..b3b1ed3d95e3 100644
--- a/drivers/gpu/drm/i915/i915_active.c
+++ b/drivers/gpu/drm/i915/i915_active.c
@@ -157,6 +157,10 @@ __active_retire(struct i915_active *ref)
 		rb_link_node(&ref->cache->node, NULL, &ref->tree.rb_node);
 		rb_insert_color(&ref->cache->node, &ref->tree);
 		GEM_BUG_ON(ref->tree.rb_node != &ref->cache->node);
+
+		/* Make the cached node available for reuse with any timeline */
+		if (IS_ENABLED(CONFIG_64BIT))
+			ref->cache->timeline = 0; /* needs cmpxchg(u64) */
 	}
 
 	spin_unlock_irqrestore(&ref->tree_lock, flags);
@@ -235,9 +239,22 @@ static struct active_node *__active_lookup(struct i915_active *ref, u64 idx)
 {
 	struct active_node *it;
 
+	GEM_BUG_ON(idx == 0); /* 0 is the unordered timeline, rsvd for cache */
+
 	it = READ_ONCE(ref->cache);
-	if (it && it->timeline == idx)
-		return it;
+	if (it) {
+		u64 cached = READ_ONCE(it->timeline);
+
+		if (cached == idx)
+			return it;
+
+#ifdef CONFIG_64BIT /* for cmpxchg(u64) */
+		if (!cached && !cmpxchg(&it->timeline, 0, idx)) {
+			GEM_BUG_ON(i915_active_fence_isset(&it->base));
+			return it;
+		}
+#endif
+	}
 
 	BUILD_BUG_ON(offsetof(typeof(*it), node));
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
