Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ECD51CC118
	for <lists+intel-gfx@lfdr.de>; Sat,  9 May 2020 13:53:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE94F6E32C;
	Sat,  9 May 2020 11:53:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 04FD26E32C
 for <intel-gfx@lists.freedesktop.org>; Sat,  9 May 2020 11:53:02 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21147690-1500050 
 for multiple; Sat, 09 May 2020 12:52:21 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat,  9 May 2020 12:52:17 +0100
Message-Id: <20200509115217.26853-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Watch out for idling during
 i915_gem_evict_something
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
Cc: stable@vger.kernel.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

i915_gem_evict_something() is charged with finding a slot within the GTT
that we may reuse. Since our goal is not to stall, we first look for a
slot that only overlaps idle vma. To this end, on the first pass we move
any active vma to the end of the search list. However, we only stopped
moving active vma after we see the first active vma twice. If during the
search, that first active vma completed, we would not notice and keep on
extending the search list.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/1746
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: <stable@vger.kernel.org> # v5.5+
---
 drivers/gpu/drm/i915/i915_gem_evict.c | 26 ++++++++++++--------------
 1 file changed, 12 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_gem_evict.c b/drivers/gpu/drm/i915/i915_gem_evict.c
index 0ba7b1e881c0..6501939929d5 100644
--- a/drivers/gpu/drm/i915/i915_gem_evict.c
+++ b/drivers/gpu/drm/i915/i915_gem_evict.c
@@ -128,6 +128,13 @@ i915_gem_evict_something(struct i915_address_space *vm,
 	active = NULL;
 	INIT_LIST_HEAD(&eviction_list);
 	list_for_each_entry_safe(vma, next, &vm->bound_list, vm_link) {
+		if (vma == active) { /* now seen this vma twice */
+			if (flags & PIN_NONBLOCK)
+				break;
+
+			active = ERR_PTR(-EAGAIN);
+		}
+
 		/*
 		 * We keep this list in a rough least-recently scanned order
 		 * of active elements (inactive elements are cheap to reap).
@@ -143,21 +150,12 @@ i915_gem_evict_something(struct i915_address_space *vm,
 		 * To notice when we complete one full cycle, we record the
 		 * first active element seen, before moving it to the tail.
 		 */
-		if (i915_vma_is_active(vma)) {
-			if (vma == active) {
-				if (flags & PIN_NONBLOCK)
-					break;
-
-				active = ERR_PTR(-EAGAIN);
-			}
-
-			if (active != ERR_PTR(-EAGAIN)) {
-				if (!active)
-					active = vma;
+		if (active != ERR_PTR(-EAGAIN) && i915_vma_is_active(vma)) {
+			if (!active)
+				active = vma;
 
-				list_move_tail(&vma->vm_link, &vm->bound_list);
-				continue;
-			}
+			list_move_tail(&vma->vm_link, &vm->bound_list);
+			continue;
 		}
 
 		if (mark_free(&scan, vma, flags, &eviction_list))
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
