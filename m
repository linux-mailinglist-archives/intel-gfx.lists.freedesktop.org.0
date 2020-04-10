Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 794A31A48AD
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Apr 2020 18:52:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C70776ED18;
	Fri, 10 Apr 2020 16:52:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 716586E1F7
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Apr 2020 16:52:02 +0000 (UTC)
IronPort-SDR: +5okIcNZu6qv29xY3yzuhQNd7sGjeP02yXfCyEqLXb/4kIuLXPbnfJ3ncXAQnXn5PNlRh6VC8B
 coV8siucDF2g==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2020 09:52:00 -0700
IronPort-SDR: yvbgZ7R2bxueu3tTvIfCZrFGYpUlGndVJM7MkXI/EFhGTAxCB7DhFXveHnYljORpDlLNykcesN
 Lkvn3GCMaTeA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,367,1580803200"; d="scan'208";a="362490837"
Received: from linux.fm.intel.com ([10.1.27.42])
 by fmsmga001.fm.intel.com with ESMTP; 10 Apr 2020 09:51:59 -0700
From: Venkata Sandeep Dhanalakota <venkata.s.dhanalakota@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Apr 2020 09:51:55 -0700
Message-Id: <20200410165158.29546-1-venkata.s.dhanalakota@intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a983
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/4] drm/i915: introduce a mechanism to extend
 execbuf2
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
Cc: chris.p.wilson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>

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
index 9d11bad74e9a..16831f715daa 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -26,6 +26,7 @@
 #include "i915_gem_ioctls.h"
 #include "i915_sw_fence_work.h"
 #include "i915_trace.h"
+#include "i915_user_extensions.h"
 
 struct eb_vma {
 	struct i915_vma *vma;
@@ -288,6 +289,10 @@ struct i915_execbuffer {
 	int lut_size;
 	struct hlist_head *buckets; /** ht for relocation handles */
 	struct eb_vma_array *array;
+
+	struct {
+		u64 flags; /** Available extensions parameters */
+	} extensions;
 };
 
 static inline bool eb_use_cmdparser(const struct i915_execbuffer *eb)
@@ -1698,7 +1703,8 @@ static int i915_gem_check_execbuffer(struct drm_i915_gem_execbuffer2 *exec)
 		return -EINVAL;
 
 	/* Kernel clipping was a DRI1 misfeature */
-	if (!(exec->flags & I915_EXEC_FENCE_ARRAY)) {
+	if (!(exec->flags & (I915_EXEC_FENCE_ARRAY |
+			     I915_EXEC_USE_EXTENSIONS))) {
 		if (exec->num_cliprects || exec->cliprects_ptr)
 			return -EINVAL;
 	}
@@ -2431,6 +2437,33 @@ static void eb_request_add(struct i915_execbuffer *eb)
 	mutex_unlock(&tl->mutex);
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
@@ -2484,6 +2517,10 @@ i915_gem_do_execbuffer(struct drm_device *dev,
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
index 14b67cd6b54b..7ea38aa6502c 100644
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
2.21.0.5.gaeb582a983

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
