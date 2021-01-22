Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D7F923009E3
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Jan 2021 18:36:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C010089E8C;
	Fri, 22 Jan 2021 17:36:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C633989E8C
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Jan 2021 17:36:05 +0000 (UTC)
IronPort-SDR: v6irZMyp6CtY/aAv3MMGXe/92kcSO/yvbF3h2K2jtfd6AWVT7fBexaSF/DXYzGUjG66sxce42J
 6iIJLpKP1dCQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9872"; a="159253862"
X-IronPort-AV: E=Sophos;i="5.79,367,1602572400"; d="scan'208";a="159253862"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2021 09:36:05 -0800
IronPort-SDR: TF9pSabcxoTTe/gupaEQijeyOJXyBZwDzH8mGvuxMGWgz2cZaNrQcgxlBgb/BnJQUtfmmGr+LA
 9fCHNcze/reA==
X-IronPort-AV: E=Sophos;i="5.79,367,1602572400"; d="scan'208";a="385835666"
Received: from lcfenner-mobl1.ger.corp.intel.com (HELO
 mwauld-desk1.ger.corp.intel.com) ([10.252.20.148])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2021 09:36:04 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 22 Jan 2021 17:35:46 +0000
Message-Id: <20210122173546.531842-2-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210122173546.531842-1-matthew.auld@intel.com>
References: <20210122173546.531842-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: consolidate 2big error checking
 for object sizes
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

Throw it into a simple helper, and throw a warning if we encounter an
object which has been initialised with an object size that exceeds our
limit of INT_MAX pages.

Suggested-by: Chris Wilson <chris@chris-wilson.co.uk>
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c  |  9 +------
 drivers/gpu/drm/i915/gem/i915_gem_object.c  |  2 ++
 drivers/gpu/drm/i915/gem/i915_gem_object.h  | 26 +++++++++++++++++++++
 drivers/gpu/drm/i915/gem/i915_gem_region.c  | 12 +---------
 drivers/gpu/drm/i915/gem/i915_gem_userptr.c | 16 +------------
 5 files changed, 31 insertions(+), 34 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c b/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
index dc11497f830b..5cc8a0b2387f 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
@@ -244,14 +244,7 @@ struct drm_gem_object *i915_gem_prime_import(struct drm_device *dev,
 		}
 	}
 
-	/*
-	 * XXX: There is a prevalence of the assumption that we fit the
-	 * object's page count inside a 32bit _signed_ variable. Let's document
-	 * this and catch if we ever need to fix it. In the meantime, if you do
-	 * spot such a local variable, please consider fixing!
-	 */
-
-	if (dma_buf->size >> PAGE_SHIFT > INT_MAX)
+	if (i915_gem_object_size_2big(dma_buf->size))
 		return ERR_PTR(-E2BIG);
 
 	/* need to attach */
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.c b/drivers/gpu/drm/i915/gem/i915_gem_object.c
index 70f798405f7f..d3702ea8c6aa 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
@@ -62,6 +62,8 @@ void i915_gem_object_init(struct drm_i915_gem_object *obj,
 			  const struct drm_i915_gem_object_ops *ops,
 			  struct lock_class_key *key)
 {
+	GEM_CHECK_SIZE_OVERFLOW(obj->base.size);
+
 	__mutex_init(&obj->mm.lock, ops->name ?: "obj->mm.lock", key);
 
 	spin_lock_init(&obj->vma.lock);
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
index d0ae834d787a..d9cef56533ca 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
@@ -16,6 +16,32 @@
 #include "i915_gem_gtt.h"
 #include "i915_vma_types.h"
 
+/*
+ * XXX: There is a prevalence of the assumption that we fit the
+ * object's page count inside a 32bit _signed_ variable. Let's document
+ * this and catch if we ever need to fix it. In the meantime, if you do
+ * spot such a local variable, please consider fixing!
+ *
+ * Aside from our own locals (for which we have no excuse!):
+ * - sg_table embeds unsigned int for num_pages
+ * - get_user_pages*() mixed ints with longs
+ */
+#define GEM_CHECK_SIZE_OVERFLOW(sz) \
+	GEM_WARN_ON((sz) >> PAGE_SHIFT > INT_MAX)
+
+static inline bool i915_gem_object_size_2big(u64 size)
+{
+	struct drm_i915_gem_object *obj;
+
+	if (size >> PAGE_SHIFT > INT_MAX)
+		return true;
+
+	if (overflows_type(size, obj->base.size))
+		return true;
+
+	return false;
+}
+
 void i915_gem_init__objects(struct drm_i915_private *i915);
 
 struct drm_i915_gem_object *i915_gem_object_alloc(void);
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_region.c b/drivers/gpu/drm/i915/gem/i915_gem_region.c
index 3e3dad22a683..77dfa908f156 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_region.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_region.c
@@ -161,17 +161,7 @@ i915_gem_object_create_region(struct intel_memory_region *mem,
 	GEM_BUG_ON(!size);
 	GEM_BUG_ON(!IS_ALIGNED(size, I915_GTT_MIN_ALIGNMENT));
 
-	/*
-	 * XXX: There is a prevalence of the assumption that we fit the
-	 * object's page count inside a 32bit _signed_ variable. Let's document
-	 * this and catch if we ever need to fix it. In the meantime, if you do
-	 * spot such a local variable, please consider fixing!
-	 */
-
-	if (size >> PAGE_SHIFT > INT_MAX)
-		return ERR_PTR(-E2BIG);
-
-	if (overflows_type(size, obj->base.size))
+	if (i915_gem_object_size_2big(size))
 		return ERR_PTR(-E2BIG);
 
 	obj = i915_gem_object_alloc();
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
index f2eaed6aca3d..3e4785c2dfa2 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
@@ -770,21 +770,7 @@ i915_gem_userptr_ioctl(struct drm_device *dev,
 			    I915_USERPTR_UNSYNCHRONIZED))
 		return -EINVAL;
 
-	/*
-	 * XXX: There is a prevalence of the assumption that we fit the
-	 * object's page count inside a 32bit _signed_ variable. Let's document
-	 * this and catch if we ever need to fix it. In the meantime, if you do
-	 * spot such a local variable, please consider fixing!
-	 *
-	 * Aside from our own locals (for which we have no excuse!):
-	 * - sg_table embeds unsigned int for num_pages
-	 * - get_user_pages*() mixed ints with longs
-	 */
-
-	if (args->user_size >> PAGE_SHIFT > INT_MAX)
-		return -E2BIG;
-
-	if (overflows_type(args->user_size, obj->base.size))
+	if (i915_gem_object_size_2big(args->user_size))
 		return -E2BIG;
 
 	if (!args->user_size)
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
