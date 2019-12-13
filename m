Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E286311DB06
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2019 01:17:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 709B96E222;
	Fri, 13 Dec 2019 00:17:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1BD26E222
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Dec 2019 00:17:17 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19561432-1500050 
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Dec 2019 00:17:11 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 13 Dec 2019 00:17:12 +0000
Message-Id: <20191213001713.1741810-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 1/2] drm/i915/gt: Mark context->state vma as active
 while pinned
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

As we use the active state to keep the vma alive while we are reading
its contents during GPU error capture, we need to mark the
context->state vma as active during execution if we want to include it
in the error state.

Reported-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Fixes: b1e3177bd1d8 ("drm/i915: Coordinate i915_active with its own mutex")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Acked-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_context.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_context.c b/drivers/gpu/drm/i915/gt/intel_context.c
index 61c39e943f69..f7e2f3af007a 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.c
+++ b/drivers/gpu/drm/i915/gt/intel_context.c
@@ -120,6 +120,10 @@ static int __context_pin_state(struct i915_vma *vma)
 	if (err)
 		return err;
 
+	err = i915_active_acquire(&vma->active);
+	if (err)
+		goto err_unpin;
+
 	/*
 	 * And mark it as a globally pinned object to let the shrinker know
 	 * it cannot reclaim the object until we release it.
@@ -128,11 +132,16 @@ static int __context_pin_state(struct i915_vma *vma)
 	vma->obj->mm.dirty = true;
 
 	return 0;
+
+err_unpin:
+	i915_vma_unpin(vma);
+	return err;
 }
 
 static void __context_unpin_state(struct i915_vma *vma)
 {
 	i915_vma_make_shrinkable(vma);
+	i915_active_release(&vma->active);
 	__i915_vma_unpin(vma);
 }
 
-- 
2.24.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
