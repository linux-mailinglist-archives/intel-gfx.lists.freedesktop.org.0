Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FD2C28BB3F
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Oct 2020 16:47:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D54F6E4EC;
	Mon, 12 Oct 2020 14:47:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CCA386E4F3
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Oct 2020 14:47:14 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Oct 2020 16:46:38 +0200
Message-Id: <20201012144706.555345-34-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201012144706.555345-1-maarten.lankhorst@linux.intel.com>
References: <20201012144706.555345-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 33/61] drm/i915: Add ww locking around
 vm_access()
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

i915_gem_object_pin_map potentially needs a ww context, so ensure we
have one we can revoke.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_mman.c | 24 ++++++++++++++++++++++--
 1 file changed, 22 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
index ba8e9ef6943d..1361eabea966 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
@@ -421,7 +421,9 @@ vm_access(struct vm_area_struct *area, unsigned long addr,
 {
 	struct i915_mmap_offset *mmo = area->vm_private_data;
 	struct drm_i915_gem_object *obj = mmo->obj;
+	struct i915_gem_ww_ctx ww;
 	void *vaddr;
+	int err = 0;
 
 	if (i915_gem_object_is_readonly(obj) && write)
 		return -EACCES;
@@ -430,10 +432,18 @@ vm_access(struct vm_area_struct *area, unsigned long addr,
 	if (addr >= obj->base.size)
 		return -EINVAL;
 
+	i915_gem_ww_ctx_init(&ww, true);
+retry:
+	err = i915_gem_object_lock(obj, &ww);
+	if (err)
+		goto out;
+
 	/* As this is primarily for debugging, let's focus on simplicity */
 	vaddr = i915_gem_object_pin_map(obj, I915_MAP_FORCE_WC);
-	if (IS_ERR(vaddr))
-		return PTR_ERR(vaddr);
+	if (IS_ERR(vaddr)) {
+		err = PTR_ERR(vaddr);
+		goto out;
+	}
 
 	if (write) {
 		memcpy(vaddr + addr, buf, len);
@@ -443,6 +453,16 @@ vm_access(struct vm_area_struct *area, unsigned long addr,
 	}
 
 	i915_gem_object_unpin_map(obj);
+out:
+	if (err == -EDEADLK) {
+		err = i915_gem_ww_ctx_backoff(&ww);
+		if (!err)
+			goto retry;
+	}
+	i915_gem_ww_ctx_fini(&ww);
+
+	if (err)
+		return err;
 
 	return len;
 }
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
