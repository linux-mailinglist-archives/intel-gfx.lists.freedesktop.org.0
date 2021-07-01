Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F7D93B9146
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Jul 2021 13:42:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D34A6E13A;
	Thu,  1 Jul 2021 11:42:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl
 [IPv6:2a02:2308::216:3eff:fe92:dfa3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E8136E13A
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Jul 2021 11:42:37 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  1 Jul 2021 13:42:34 +0200
Message-Id: <20210701114234.3859716-1-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.31.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Add TTM offset argument to mmap.
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

This is only used for ttm, and tells userspace that the mapping type is
ignored. This disables the other type of mmap offsets when discrete
memory is used, so fix the selftests as well.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_mman.c      | 17 +++++++++++-
 .../gpu/drm/i915/gem/i915_gem_object_types.h  |  1 +
 .../drm/i915/gem/selftests/i915_gem_mman.c    | 27 +++++++++++++++++--
 include/uapi/drm/i915_drm.h                   |  9 ++++---
 4 files changed, 47 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
index a90f796e85c0..b34be9e5d094 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
@@ -679,10 +679,16 @@ __assign_mmap_offset(struct drm_i915_gem_object *obj,
 		return -ENODEV;
 
 	if (obj->ops->mmap_offset)  {
+		if (mmap_type != I915_MMAP_TYPE_TTM)
+			return -ENODEV;
+
 		*offset = obj->ops->mmap_offset(obj);
 		return 0;
 	}
 
+	if (mmap_type == I915_MMAP_TYPE_TTM)
+		return -ENODEV;
+
 	if (mmap_type != I915_MMAP_TYPE_GTT &&
 	    !i915_gem_object_has_struct_page(obj) &&
 	    !i915_gem_object_has_iomem(obj))
@@ -727,7 +733,9 @@ i915_gem_dumb_mmap_offset(struct drm_file *file,
 {
 	enum i915_mmap_type mmap_type;
 
-	if (boot_cpu_has(X86_FEATURE_PAT))
+	if (HAS_LMEM(to_i915(dev)))
+		mmap_type = I915_MMAP_TYPE_TTM;
+	else if (boot_cpu_has(X86_FEATURE_PAT))
 		mmap_type = I915_MMAP_TYPE_WC;
 	else if (!i915_ggtt_has_aperture(&to_i915(dev)->ggtt))
 		return -ENODEV;
@@ -798,6 +806,10 @@ i915_gem_mmap_offset_ioctl(struct drm_device *dev, void *data,
 		type = I915_MMAP_TYPE_UC;
 		break;
 
+	case I915_MMAP_OFFSET_TTM:
+		type = I915_MMAP_TYPE_TTM;
+		break;
+
 	default:
 		return -EINVAL;
 	}
@@ -968,6 +980,9 @@ int i915_gem_mmap(struct file *filp, struct vm_area_struct *vma)
 		vma->vm_ops = &vm_ops_cpu;
 		break;
 
+	case I915_MMAP_TYPE_TTM:
+		GEM_WARN_ON(mmo->mmap_type == I915_MMAP_TYPE_TTM);
+		/* fall-through */
 	case I915_MMAP_TYPE_WB:
 		vma->vm_page_prot = vm_get_page_prot(vma->vm_flags);
 		vma->vm_ops = &vm_ops_cpu;
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
index 441f913c87e6..8b872b22a7ec 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
@@ -96,6 +96,7 @@ enum i915_mmap_type {
 	I915_MMAP_TYPE_WC,
 	I915_MMAP_TYPE_WB,
 	I915_MMAP_TYPE_UC,
+	I915_MMAP_TYPE_TTM,
 };
 
 struct i915_mmap_offset {
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
index 607b7d2d4c29..321271bd2fa1 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
@@ -573,6 +573,14 @@ static int make_obj_busy(struct drm_i915_gem_object *obj)
 	return 0;
 }
 
+static enum i915_mmap_type default_mapping(struct drm_i915_private *i915)
+{
+	if (HAS_LMEM(i915))
+		return I915_MMAP_TYPE_TTM;
+
+	return I915_MMAP_TYPE_GTT;
+}
+
 static bool assert_mmap_offset(struct drm_i915_private *i915,
 			       unsigned long size,
 			       int expected)
@@ -585,7 +593,7 @@ static bool assert_mmap_offset(struct drm_i915_private *i915,
 	if (IS_ERR(obj))
 		return expected && expected == PTR_ERR(obj);
 
-	ret = __assign_mmap_offset(obj, I915_MMAP_TYPE_GTT, &offset, NULL);
+	ret = __assign_mmap_offset(obj, default_mapping(i915), &offset, NULL);
 	i915_gem_object_put(obj);
 
 	return ret == expected;
@@ -689,7 +697,7 @@ static int igt_mmap_offset_exhaustion(void *arg)
 		goto out;
 	}
 
-	err = __assign_mmap_offset(obj, I915_MMAP_TYPE_GTT, &offset, NULL);
+	err = __assign_mmap_offset(obj, default_mapping(i915), &offset, NULL);
 	if (err) {
 		pr_err("Unable to insert object into reclaimed hole\n");
 		goto err_obj;
@@ -831,8 +839,14 @@ static int wc_check(struct drm_i915_gem_object *obj)
 
 static bool can_mmap(struct drm_i915_gem_object *obj, enum i915_mmap_type type)
 {
+	struct drm_i915_private *i915 = to_i915(obj->base.dev);
 	bool no_map;
 
+	if (HAS_LMEM(i915))
+		return type == I915_MMAP_TYPE_TTM;
+	else if (type == I915_MMAP_TYPE_TTM)
+		return false;
+
 	if (type == I915_MMAP_TYPE_GTT &&
 	    !i915_ggtt_has_aperture(&to_i915(obj->base.dev)->ggtt))
 		return false;
@@ -970,6 +984,8 @@ static int igt_mmap(void *arg)
 			err = __igt_mmap(i915, obj, I915_MMAP_TYPE_GTT);
 			if (err == 0)
 				err = __igt_mmap(i915, obj, I915_MMAP_TYPE_WC);
+			if (err == 0)
+				err = __igt_mmap(i915, obj, I915_MMAP_TYPE_TTM);
 
 			i915_gem_object_put(obj);
 			if (err)
@@ -987,6 +1003,7 @@ static const char *repr_mmap_type(enum i915_mmap_type type)
 	case I915_MMAP_TYPE_WB: return "wb";
 	case I915_MMAP_TYPE_WC: return "wc";
 	case I915_MMAP_TYPE_UC: return "uc";
+	case I915_MMAP_TYPE_TTM: return "ttm";
 	default: return "unknown";
 	}
 }
@@ -1100,6 +1117,8 @@ static int igt_mmap_access(void *arg)
 			err = __igt_mmap_access(i915, obj, I915_MMAP_TYPE_WC);
 		if (err == 0)
 			err = __igt_mmap_access(i915, obj, I915_MMAP_TYPE_UC);
+		if (err == 0)
+			err = __igt_mmap_access(i915, obj, I915_MMAP_TYPE_TTM);
 
 		i915_gem_object_put(obj);
 		if (err)
@@ -1241,6 +1260,8 @@ static int igt_mmap_gpu(void *arg)
 		err = __igt_mmap_gpu(i915, obj, I915_MMAP_TYPE_GTT);
 		if (err == 0)
 			err = __igt_mmap_gpu(i915, obj, I915_MMAP_TYPE_WC);
+		if (err == 0)
+			err = __igt_mmap_gpu(i915, obj, I915_MMAP_TYPE_TTM);
 
 		i915_gem_object_put(obj);
 		if (err)
@@ -1396,6 +1417,8 @@ static int igt_mmap_revoke(void *arg)
 		err = __igt_mmap_revoke(i915, obj, I915_MMAP_TYPE_GTT);
 		if (err == 0)
 			err = __igt_mmap_revoke(i915, obj, I915_MMAP_TYPE_WC);
+		if (err == 0)
+			err = __igt_mmap_revoke(i915, obj, I915_MMAP_TYPE_TTM);
 
 		i915_gem_object_put(obj);
 		if (err)
diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
index 2f70c48567c0..12ec9c7f1711 100644
--- a/include/uapi/drm/i915_drm.h
+++ b/include/uapi/drm/i915_drm.h
@@ -867,10 +867,11 @@ struct drm_i915_gem_mmap_offset {
 	 * (GTT, WC, WB, UC, etc) should be included.
 	 */
 	__u64 flags;
-#define I915_MMAP_OFFSET_GTT 0
-#define I915_MMAP_OFFSET_WC  1
-#define I915_MMAP_OFFSET_WB  2
-#define I915_MMAP_OFFSET_UC  3
+#define I915_MMAP_OFFSET_GTT	0
+#define I915_MMAP_OFFSET_WC	1
+#define I915_MMAP_OFFSET_WB	2
+#define I915_MMAP_OFFSET_UC	3
+#define I915_MMAP_OFFSET_TTM	4
 
 	/*
 	 * Zero-terminated chain of extensions.
-- 
2.31.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
