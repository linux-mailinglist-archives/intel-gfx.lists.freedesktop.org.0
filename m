Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B519219DAE5
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Apr 2020 18:10:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B29AB6E161;
	Fri,  3 Apr 2020 16:10:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2748D6E161
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Apr 2020 16:10:01 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20791223-1500050 
 for multiple; Fri, 03 Apr 2020 17:09:53 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  3 Apr 2020 17:09:51 +0100
Message-Id: <20200403160951.8271-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Revoke mmap before fence
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
Cc: Matthew Auld <matthew.auld@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Make sure we revoke the user's mmaps of this vma to force them to take a
pagefault *before* we remove the associated aperture detiling register.

Fixes: 0d86ee35097a ("drm/i915/gt: Make fence revocation unequivocal")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/i915/i915_vma.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index 4cdd883f9d66..42b2f24c8568 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -1258,6 +1258,9 @@ int __i915_vma_unbind(struct i915_vma *vma)
 	GEM_BUG_ON(i915_vma_is_active(vma));
 
 	if (i915_vma_is_map_and_fenceable(vma)) {
+		/* Force a pagefault for domain tracking on next user access */
+		i915_vma_revoke_mmap(vma);
+
 		/*
 		 * Check that we have flushed all writes through the GGTT
 		 * before the unbind, other due to non-strict nature of those
@@ -1276,9 +1279,6 @@ int __i915_vma_unbind(struct i915_vma *vma)
 		/* release the fence reg _after_ flushing */
 		i915_vma_revoke_fence(vma);
 
-		/* Force a pagefault for domain tracking on next user access */
-		i915_vma_revoke_mmap(vma);
-
 		__i915_vma_iounmap(vma);
 		clear_bit(I915_VMA_CAN_FENCE_BIT, __i915_vma_flags(vma));
 	}
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
