Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B45728F11B
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Oct 2020 13:27:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0454D6EC97;
	Thu, 15 Oct 2020 11:27:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E7B6E6EC7A
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Oct 2020 11:26:40 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 15 Oct 2020 13:26:27 +0200
Message-Id: <20201015112627.1142745-64-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201015112627.1142745-1-maarten.lankhorst@linux.intel.com>
References: <20201015112627.1142745-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 63/63] drm/i915: Keep lazy reference to
 userptr pages
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

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_userptr.c | 28 +++++++++++++++------
 1 file changed, 20 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
index b0c1cc5fa917..0ae737871f84 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
@@ -71,6 +71,13 @@ static bool i915_gem_userptr_invalidate(struct mmu_interval_notifier *mni,
 
 	mmu_interval_set_seq(mni, cur_seq);
 
+	/* drop the lazy reference we kept */
+	if (!obj->userptr.page_ref && obj->userptr.pvec) {
+		unpin_user_pages(obj->userptr.pvec, obj->base.size >> PAGE_SHIFT);
+		kvfree(obj->userptr.pvec);
+		obj->userptr.pvec = NULL;
+	}
+
 	spin_unlock(&i915->mm.notifier_lock);
 
 	/* we will unbind on next submission, still have userptr pins */
@@ -94,12 +101,12 @@ i915_gem_userptr_init__mmu_notifier(struct drm_i915_gem_object *obj)
 					    &i915_gem_userptr_notifier_ops);
 }
 
-static void i915_gem_object_userptr_drop_ref(struct drm_i915_gem_object *obj)
+static void i915_gem_object_userptr_drop_ref(struct drm_i915_gem_object *obj, bool free)
 {
 	struct drm_i915_private *i915 = to_i915(obj->base.dev);
 
 	spin_lock(&i915->mm.notifier_lock);
-	if (!--obj->userptr.page_ref) {
+	if (!--obj->userptr.page_ref && free) {
 		const unsigned long num_pages = obj->base.size >> PAGE_SHIFT;
 
 		unpin_user_pages(obj->userptr.pvec, num_pages);
@@ -162,7 +169,7 @@ static int i915_gem_userptr_get_pages(struct drm_i915_gem_object *obj)
 	return 0;
 
 err:
-	i915_gem_object_userptr_drop_ref(obj);
+	i915_gem_object_userptr_drop_ref(obj, true);
 err_free:
 	kfree(st);
 	return ret;
@@ -220,7 +227,7 @@ i915_gem_userptr_put_pages(struct drm_i915_gem_object *obj,
 	sg_free_table(pages);
 	kfree(pages);
 
-	i915_gem_object_userptr_drop_ref(obj);
+	i915_gem_object_userptr_drop_ref(obj, true);
 }
 
 static int i915_gem_object_userptr_unbind(struct drm_i915_gem_object *obj, bool get_pages)
@@ -320,10 +327,8 @@ int i915_gem_object_userptr_submit_init(struct drm_i915_gem_object *obj)
 	}
 
 	if (!obj->userptr.page_ref++) {
-		obj->userptr.pvec = pvec;
+		swap(obj->userptr.pvec, pvec);
 		obj->userptr.notifier_seq = notifier_seq;
-
-		pvec = NULL;
 	}
 
 out_unlock:
@@ -352,7 +357,7 @@ int i915_gem_object_userptr_submit_done(struct drm_i915_gem_object *obj)
 
 void i915_gem_object_userptr_submit_fini(struct drm_i915_gem_object *obj)
 {
-	i915_gem_object_userptr_drop_ref(obj);
+	i915_gem_object_userptr_drop_ref(obj, false);
 }
 
 static void
@@ -360,6 +365,13 @@ i915_gem_userptr_release(struct drm_i915_gem_object *obj)
 {
 	mmu_interval_notifier_remove(&obj->userptr.notifier);
 	obj->userptr.notifier.mm = NULL;
+	GEM_WARN_ON(obj->userptr.page_ref);
+
+	if (obj->userptr.pvec) {
+		unpin_user_pages(obj->userptr.pvec, obj->base.size >> PAGE_SHIFT);
+		kvfree(obj->userptr.pvec);
+		obj->userptr.pvec = NULL;
+	}
 }
 
 static int
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
