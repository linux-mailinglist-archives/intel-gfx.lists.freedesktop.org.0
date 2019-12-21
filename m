Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3112F1289A2
	for <lists+intel-gfx@lfdr.de>; Sat, 21 Dec 2019 15:49:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 692506E471;
	Sat, 21 Dec 2019 14:49:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F5F76E479
 for <intel-gfx@lists.freedesktop.org>; Sat, 21 Dec 2019 14:49:38 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19656645-1500050 
 for multiple; Sat, 21 Dec 2019 14:49:18 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 21 Dec 2019 14:49:17 +0000
Message-Id: <20191221144917.1040662-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drn/i915: Break up long i915_buddy_free_list()
 with a cond_resched()
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In the selftests, we may feed very long lists of blocks to be freed on
culmination of the tests. This coupled with kasan and other
malloc-tracing can make the kmem_cache_free() operation time consuming,
and doing many of time trigger soft lockup warnings. Break the list up
with a cond_resched().

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/i915/i915_buddy.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_buddy.c b/drivers/gpu/drm/i915/i915_buddy.c
index e9d4200ce3bc..66883af64ca1 100644
--- a/drivers/gpu/drm/i915/i915_buddy.c
+++ b/drivers/gpu/drm/i915/i915_buddy.c
@@ -262,8 +262,10 @@ void i915_buddy_free_list(struct i915_buddy_mm *mm, struct list_head *objects)
 {
 	struct i915_buddy_block *block, *on;
 
-	list_for_each_entry_safe(block, on, objects, link)
+	list_for_each_entry_safe(block, on, objects, link) {
 		i915_buddy_free(mm, block);
+		cond_resched();
+	}
 	INIT_LIST_HEAD(objects);
 }
 
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
