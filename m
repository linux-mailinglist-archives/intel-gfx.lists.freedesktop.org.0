Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A872E167A6B
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Feb 2020 11:17:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1814F6EF2B;
	Fri, 21 Feb 2020 10:17:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B00F86E24B
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Feb 2020 10:17:49 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20299674-1500050 
 for multiple; Fri, 21 Feb 2020 10:17:27 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 21 Feb 2020 10:17:22 +0000
Message-Id: <20200221101724.2602426-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/3] drm/i915: Drop inspection of execbuf flags
 during evict
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

With the goal of removing the serialisation from around execbuf, we will
no longer have the privilege of there being a single execbuf in flight
at any time and so will only be able to inspect the user's flags within
the carefully controlled execbuf context. i915_gem_evict_for_node() is
the only user outside of execbuf that currently peeks at the flag to
convert an overlapping softpinned request from ENOSPC to EINVAL. Retract
this nicety and only report ENOSPC if the location is in current use,
either due to this execbuf or another.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Reviewed-by: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_gem_evict.c | 15 ++++++---------
 1 file changed, 6 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_gem_evict.c b/drivers/gpu/drm/i915/i915_gem_evict.c
index 0697bedebeef..b75fd3ccd63b 100644
--- a/drivers/gpu/drm/i915/i915_gem_evict.c
+++ b/drivers/gpu/drm/i915/i915_gem_evict.c
@@ -292,7 +292,8 @@ int i915_gem_evict_for_node(struct i915_address_space *vm,
 		GEM_BUG_ON(!drm_mm_node_allocated(node));
 		vma = container_of(node, typeof(*vma), node);
 
-		/* If we are using coloring to insert guard pages between
+		/*
+		 * If we are using coloring to insert guard pages between
 		 * different cache domains within the address space, we have
 		 * to check whether the objects on either side of our range
 		 * abutt and conflict. If they are in conflict, then we evict
@@ -309,22 +310,18 @@ int i915_gem_evict_for_node(struct i915_address_space *vm,
 			}
 		}
 
-		if (flags & PIN_NONBLOCK &&
-		    (i915_vma_is_pinned(vma) || i915_vma_is_active(vma))) {
+		if (i915_vma_is_pinned(vma)) {
 			ret = -ENOSPC;
 			break;
 		}
 
-		/* Overlap of objects in the same batch? */
-		if (i915_vma_is_pinned(vma)) {
+		if (flags & PIN_NONBLOCK && i915_vma_is_active(vma)) {
 			ret = -ENOSPC;
-			if (vma->exec_flags &&
-			    *vma->exec_flags & EXEC_OBJECT_PINNED)
-				ret = -EINVAL;
 			break;
 		}
 
-		/* Never show fear in the face of dragons!
+		/*
+		 * Never show fear in the face of dragons!
 		 *
 		 * We cannot directly remove this node from within this
 		 * iterator and as with i915_gem_evict_something() we employ
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
