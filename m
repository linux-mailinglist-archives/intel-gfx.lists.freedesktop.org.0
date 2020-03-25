Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FBE3192B5C
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2020 15:42:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 785686E133;
	Wed, 25 Mar 2020 14:42:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 83CD46E133
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Mar 2020 14:42:36 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20688675-1500050 
 for multiple; Wed, 25 Mar 2020 14:42:26 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 25 Mar 2020 14:42:27 +0000
Message-Id: <20200325144227.15769-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Differentiate between aliasing-ppgtt
 and ggtt pinning
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

Userptr causes lockdep to complain when we are using the aliasing-ppgtt
(and ggtt, but for that it is rightfully so to complain about) in that
when we revoke the userptr we take a mutex which we also use to revoke
the mmaps. However, we only revoke mmaps for GGTT bindings and we never
allow userptr to create a GGTT binding so the warning should be false
and is simply caused by our conflation of the aliasing-ppgtt with the
ggtt. So lets try treating the binding into the aliasing-ppgtt as a
separate lockclass from the ggtt. The downside is that we are
deliberately suppressing lockdep;s ability to warn us of cycles.
---
 drivers/gpu/drm/i915/i915_vma.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index 191577a98390..e5d604cbcfc2 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -914,7 +914,8 @@ int i915_vma_pin(struct i915_vma *vma, u64 size, u64 alignment, u64 flags)
 		wakeref = intel_runtime_pm_get(&vma->vm->i915->runtime_pm);
 
 	/* No more allocations allowed once we hold vm->mutex */
-	err = mutex_lock_interruptible(&vma->vm->mutex);
+	err = mutex_lock_interruptible_nested(&vma->vm->mutex,
+					      !!(flags & PIN_USER));
 	if (err)
 		goto err_fence;
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
