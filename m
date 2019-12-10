Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 82879119F9D
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2019 00:42:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D14B6EA1E;
	Tue, 10 Dec 2019 23:42:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE0A86EA20
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Dec 2019 23:42:10 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Dec 2019 15:35:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,301,1571727600"; d="scan'208";a="238341591"
Received: from ahirstiu-mobl1.ger.corp.intel.com (HELO
 delly.ger.corp.intel.com) ([10.252.49.210])
 by fmsmga004.fm.intel.com with ESMTP; 10 Dec 2019 15:35:02 -0800
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 Dec 2019 01:34:51 +0200
Message-Id: <20191210233453.183910-2-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191210233453.183910-1-lionel.g.landwerlin@intel.com>
References: <20191210233453.183910-1-lionel.g.landwerlin@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v6 1/3] drm/i915: introduce a mechanism to
 extend execbuf2
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

We're planning to use this for a couple of new feature where we need
to provide additional parameters to execbuf.

v2: Check for invalid flags in execbuffer2 (Lionel)

v3: Rename I915_EXEC_EXT -> I915_EXEC_USE_EXTENSIONS (Chris)

Signed-off-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk> (v1)
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 39 ++++++++++++++++++-
 include/uapi/drm/i915_drm.h                   | 26 +++++++++++--
 2 files changed, 61 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 34044c6203a5..7ae7c88dffdb 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -26,6 +26,7 @@
 #include "i915_gem_context.h"
 #include "i915_gem_ioctls.h"
 #include "i915_trace.h"
+#include "i915_user_extensions.h"
 
 enum {
 	FORCE_CPU_RELOC = 1,
@@ -272,6 +273,10 @@ struct i915_execbuffer {
 	 */
 	int lut_size;
 	struct hlist_head *buckets; /** ht for relocation handles */
+
+	struct {
+		u64 flags; /** Available extensions parameters */
+	} extensions;
 };
 
 #define exec_entry(EB, VMA) (&(EB)->exec[(VMA)->exec_flags - (EB)->flags])
@@ -1921,7 +1926,8 @@ static bool i915_gem_check_execbuffer(struct drm_i915_gem_execbuffer2 *exec)
 		return false;
 
 	/* Kernel clipping was a DRI1 misfeature */
-	if (!(exec->flags & I915_EXEC_FENCE_ARRAY)) {
+	if (!(exec->flags & (I915_EXEC_FENCE_ARRAY |
+			     I915_EXEC_USE_EXTENSIONS))) {
 		if (exec->num_cliprects || exec->cliprects_ptr)
 			return false;
 	}
@@ -2460,6 +2466,33 @@ signal_fence_array(struct i915_execbuffer *eb,
 	}
 }
 
+static const i915_user_extension_fn execbuf_extensions[] = {
+};
+
+static int
+parse_execbuf2_extensions(struct drm_i915_gem_execbuffer2 *args,
+			  struct i915_execbuffer *eb)
+{
+	eb->extensions.flags = 0;
+
+	if (!(args->flags & I915_EXEC_USE_EXTENSIONS))
+		return 0;
+
+	/* The execbuf2 extension mechanism reuses cliprects_ptr. So we cannot
+	 * have another flag also using it at the same time.
+	 */
+	if (eb->args->flags & I915_EXEC_FENCE_ARRAY)
+		return -EINVAL;
+
+	if (args->num_cliprects != 0)
+		return -EINVAL;
+
+	return i915_user_extensions(u64_to_user_ptr(args->cliprects_ptr),
+				    execbuf_extensions,
+				    ARRAY_SIZE(execbuf_extensions),
+				    eb);
+}
+
 static int
 i915_gem_do_execbuffer(struct drm_device *dev,
 		       struct drm_file *file,
@@ -2514,6 +2547,10 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 	if (args->flags & I915_EXEC_IS_PINNED)
 		eb.batch_flags |= I915_DISPATCH_PINNED;
 
+	err = parse_execbuf2_extensions(args, &eb);
+	if (err)
+		return err;
+
 	if (args->flags & I915_EXEC_FENCE_IN) {
 		in_fence = sync_file_get_fence(lower_32_bits(args->rsvd2));
 		if (!in_fence)
diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
index 829c0a48577f..294881404c2d 100644
--- a/include/uapi/drm/i915_drm.h
+++ b/include/uapi/drm/i915_drm.h
@@ -1046,6 +1046,10 @@ struct drm_i915_gem_exec_fence {
 	__u32 flags;
 };
 
+enum drm_i915_gem_execbuffer_ext {
+	DRM_I915_GEM_EXECBUFFER_EXT_MAX /* non-ABI */
+};
+
 struct drm_i915_gem_execbuffer2 {
 	/**
 	 * List of gem_exec_object2 structs
@@ -1062,8 +1066,15 @@ struct drm_i915_gem_execbuffer2 {
 	__u32 num_cliprects;
 	/**
 	 * This is a struct drm_clip_rect *cliprects if I915_EXEC_FENCE_ARRAY
-	 * is not set.  If I915_EXEC_FENCE_ARRAY is set, then this is a
-	 * struct drm_i915_gem_exec_fence *fences.
+	 * & I915_EXEC_USE_EXTENSIONS are not set.
+	 *
+	 * If I915_EXEC_FENCE_ARRAY is set, then this is a pointer to an array
+	 * of struct drm_i915_gem_exec_fence and num_cliprects is the length
+	 * of the array.
+	 *
+	 * If I915_EXEC_USE_EXTENSIONS is set, then this is a pointer to a
+	 * single struct drm_i915_gem_base_execbuffer_ext and num_cliprects is
+	 * 0.
 	 */
 	__u64 cliprects_ptr;
 #define I915_EXEC_RING_MASK              (0x3f)
@@ -1181,7 +1192,16 @@ struct drm_i915_gem_execbuffer2 {
  */
 #define I915_EXEC_FENCE_SUBMIT		(1 << 20)
 
-#define __I915_EXEC_UNKNOWN_FLAGS (-(I915_EXEC_FENCE_SUBMIT << 1))
+/*
+ * Setting I915_EXEC_USE_EXTENSIONS implies that
+ * drm_i915_gem_execbuffer2.cliprects_ptr is treated as a pointer to an linked
+ * list of i915_user_extension. Each i915_user_extension node is the base of a
+ * larger structure. The list of supported structures are listed in the
+ * drm_i915_gem_execbuffer_ext enum.
+ */
+#define I915_EXEC_USE_EXTENSIONS	(1 << 21)
+
+#define __I915_EXEC_UNKNOWN_FLAGS (-(I915_EXEC_USE_EXTENSIONS<<1))
 
 #define I915_EXEC_CONTEXT_ID_MASK	(0xffffffff)
 #define i915_execbuffer2_set_context_id(eb2, context) \
-- 
2.24.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
