Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D36F1202C1
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Dec 2019 11:39:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B11206E4AA;
	Mon, 16 Dec 2019 10:39:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 622DA6E4AA
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Dec 2019 10:39:11 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19593206-1500050 
 for multiple; Mon, 16 Dec 2019 10:39:02 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 16 Dec 2019 10:39:00 +0000
Message-Id: <20191216103901.2518461-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191216103901.2518461-1-chris@chris-wilson.co.uk>
References: <20191216103901.2518461-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/gem: Lock the object as we unbind
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

If the object is closed while we wait, that may move the vma we are
waiting on to the parked list allowing it to be destroyed underneath the
waiter. (i915_vma.kref! When do we want it? Yesterday!)

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/i915_gem.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index 5eeef1ef7448..0f9e1411a031 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -139,6 +139,7 @@ int i915_gem_object_unbind(struct drm_i915_gem_object *obj,
 
 try_again:
 	ret = 0;
+	i915_gem_object_lock(obj); /* prevent i915_gem_close_object() */
 	spin_lock(&obj->vma.lock);
 	while (!ret && (vma = list_first_entry_or_null(&obj->vma.list,
 						       struct i915_vma,
@@ -177,6 +178,7 @@ int i915_gem_object_unbind(struct drm_i915_gem_object *obj,
 	}
 	list_splice_init(&still_in_list, &obj->vma.list);
 	spin_unlock(&obj->vma.lock);
+	i915_gem_object_unlock(obj);
 
 	if (ret == -EAGAIN && flags & I915_GEM_OBJECT_UNBIND_BARRIER) {
 		rcu_barrier(); /* flush the i915_vm_release() */
-- 
2.24.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
