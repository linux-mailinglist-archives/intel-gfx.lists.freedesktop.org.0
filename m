Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 16B62147A00
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2020 10:06:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 645E16FFA6;
	Fri, 24 Jan 2020 09:06:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E2A06FF9E
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jan 2020 09:06:29 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 01:04:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,357,1574150400"; d="scan'208";a="245655154"
Received: from nvishwa1-desk.sc.intel.com ([10.3.160.185])
 by orsmga002.jf.intel.com with ESMTP; 24 Jan 2020 01:04:50 -0800
From: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Jan 2020 00:54:00 -0800
Message-Id: <20200124085402.11644-7-niranjana.vishwanathapura@intel.com>
X-Mailer: git-send-email 2.21.0.rc0.32.g243a4c7e27
In-Reply-To: <20200124085402.11644-1-niranjana.vishwanathapura@intel.com>
References: <20200124085402.11644-1-niranjana.vishwanathapura@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 6/8] drm/i915/svm: Skip vma_lookup for persistent
 vmas
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
Cc: chris.p.wilson@intel.com, jason.ekstrand@intel.com, daniel.vetter@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

vma_lookup is tied to segment of the object instead of section
of VA space. Hence, it do not support aliasing (ie., multiple
bindings to the same section of the object).
Hence skip vma_lookup for persistent vmas which should support
aliasing.

This needs proper solution.

Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Jon Bloomfield <jon.bloomfield@intel.com>
Cc: Daniel Vetter <daniel.vetter@intel.com>
Cc: Chris P Wilson <chris.p.wilson@intel.com>
Cc: Sudeep Dutt <sudeep.dutt@intel.com>
Cc: Stuart Summers <stuart.summers@intel.com>
Signed-off-by: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
---
 drivers/gpu/drm/i915/i915_vma.c | 21 ++++++++++++++++-----
 1 file changed, 16 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index 3e16b291f806..9e2d0dbd308c 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -181,6 +181,10 @@ vma_create(struct drm_i915_gem_object *obj,
 
 	spin_lock(&obj->vma.lock);
 
+	if (!i915_vma_is_ggtt(vma) &&
+	    (view && view->type == I915_GGTT_VIEW_PARTIAL))
+		goto skip_rb_insert;
+
 	rb = NULL;
 	p = &obj->vma.tree.rb_node;
 	while (*p) {
@@ -210,6 +214,7 @@ vma_create(struct drm_i915_gem_object *obj,
 	rb_link_node(&vma->obj_node, rb, p);
 	rb_insert_color(&vma->obj_node, &obj->vma.tree);
 
+skip_rb_insert:
 	if (i915_vma_is_ggtt(vma))
 		/*
 		 * We put the GGTT vma at the start of the vma-list, followed
@@ -274,13 +279,16 @@ i915_vma_instance(struct drm_i915_gem_object *obj,
 		  struct i915_address_space *vm,
 		  const struct i915_ggtt_view *view)
 {
-	struct i915_vma *vma;
+	struct i915_vma *vma = NULL;
 
 	GEM_BUG_ON(!atomic_read(&vm->open));
 
-	spin_lock(&obj->vma.lock);
-	vma = vma_lookup(obj, vm, view);
-	spin_unlock(&obj->vma.lock);
+	if (i915_is_ggtt(vm) || !view ||
+	    view->type != I915_GGTT_VIEW_PARTIAL) {
+		spin_lock(&obj->vma.lock);
+		vma = vma_lookup(obj, vm, view);
+		spin_unlock(&obj->vma.lock);
+	}
 
 	/* vma_create() will resolve the race if another creates the vma */
 	if (unlikely(!vma))
@@ -1046,7 +1054,10 @@ void i915_vma_release(struct kref *ref)
 
 		spin_lock(&obj->vma.lock);
 		list_del(&vma->obj_link);
-		rb_erase(&vma->obj_node, &obj->vma.tree);
+
+		if (!i915_vma_is_persistent(vma))
+			rb_erase(&vma->obj_node, &obj->vma.tree);
+
 		spin_unlock(&obj->vma.lock);
 
 		mutex_lock(&vma->vm->svm_mutex);
-- 
2.21.0.rc0.32.g243a4c7e27

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
