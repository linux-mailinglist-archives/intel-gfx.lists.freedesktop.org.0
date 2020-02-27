Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5160E171389
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2020 09:58:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4B886EC64;
	Thu, 27 Feb 2020 08:58:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 188006EC55
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Feb 2020 08:57:42 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20366833-1500050 
 for multiple; Thu, 27 Feb 2020 08:57:27 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Feb 2020 08:57:13 +0000
Message-Id: <20200227085723.1961649-10-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200227085723.1961649-1-chris@chris-wilson.co.uk>
References: <20200227085723.1961649-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 10/20] drm/i915/gt: Pull marking vm as closed
 underneath the vm->mutex
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

Pull the final atomic_dec of vm->open (marking the vm as closed)
underneath the same vm->mutex as used to close it. This is required to
correctly serialise with attempting to reuse the vma as the vm is closed
by a second thread.

References: 00de702c6c6f ("drm/i915: Check that the vma hasn't been closed before we insert it")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_gtt.c | 5 ++++-
 drivers/gpu/drm/i915/gt/intel_gtt.h | 3 +--
 2 files changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c b/drivers/gpu/drm/i915/gt/intel_gtt.c
index bb9a6e638175..dfb1be050cca 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
@@ -171,7 +171,9 @@ void __i915_vm_close(struct i915_address_space *vm)
 {
 	struct i915_vma *vma, *vn;
 
-	mutex_lock(&vm->mutex);
+	if (!atomic_dec_and_mutex_lock(&vm->open, &vm->mutex))
+		return;
+
 	list_for_each_entry_safe(vma, vn, &vm->bound_list, vm_link) {
 		struct drm_i915_gem_object *obj = vma->obj;
 
@@ -186,6 +188,7 @@ void __i915_vm_close(struct i915_address_space *vm)
 		i915_gem_object_put(obj);
 	}
 	GEM_BUG_ON(!list_empty(&vm->bound_list));
+
 	mutex_unlock(&vm->mutex);
 }
 
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
index 23004445806a..eac38c682ef4 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
@@ -429,8 +429,7 @@ static inline void
 i915_vm_close(struct i915_address_space *vm)
 {
 	GEM_BUG_ON(!atomic_read(&vm->open));
-	if (atomic_dec_and_test(&vm->open))
-		__i915_vm_close(vm);
+	__i915_vm_close(vm);
 
 	i915_vm_put(vm);
 }
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
