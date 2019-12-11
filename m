Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 681FD11A9A1
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2019 12:04:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FF446EB12;
	Wed, 11 Dec 2019 11:04:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 448EA6EB0B
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2019 11:04:42 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19539188-1500050 
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2019 11:04:36 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 Dec 2019 11:04:37 +0000
Message-Id: <20191211110437.4082687-5-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191211110437.4082687-1-chris@chris-wilson.co.uk>
References: <20191211110437.4082687-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 5/5] drm/i915: Align start for memcpy_from_wc
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

The movntqda requires 16-byte alignment for the source pointer. Avoid
falling back to clflush if the source pointer is misaligned by doing the
doing a small uncached memcpy to fixup the alignments.

v2: Turn the unaligned copy into a genuine helper

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_cmd_parser.c |  9 ++--
 drivers/gpu/drm/i915/i915_memcpy.c     | 75 ++++++++++++++++++++++++--
 drivers/gpu/drm/i915/i915_memcpy.h     |  2 +
 3 files changed, 77 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_cmd_parser.c b/drivers/gpu/drm/i915/i915_cmd_parser.c
index b692c40348a1..ddc8bf5175d9 100644
--- a/drivers/gpu/drm/i915/i915_cmd_parser.c
+++ b/drivers/gpu/drm/i915/i915_cmd_parser.c
@@ -1151,13 +1151,12 @@ static u32 *copy_batch(struct drm_i915_gem_object *dst_obj,
 	}
 
 	src = ERR_PTR(-ENODEV);
-	if (src_needs_clflush &&
-	    i915_can_memcpy_from_wc(NULL, offset, 0)) {
+	if (src_needs_clflush && i915_has_memcpy_from_wc()) {
 		src = i915_gem_object_pin_map(src_obj, I915_MAP_WC);
 		if (!IS_ERR(src)) {
-			i915_memcpy_from_wc(dst,
-					    src + offset,
-					    ALIGN(length, 16));
+			i915_unaligned_memcpy_from_wc(dst,
+						      src + offset,
+						      length);
 			i915_gem_object_unpin_map(src_obj);
 		}
 	}
diff --git a/drivers/gpu/drm/i915/i915_memcpy.c b/drivers/gpu/drm/i915/i915_memcpy.c
index 07b04b0acb77..fdd550405fd3 100644
--- a/drivers/gpu/drm/i915/i915_memcpy.c
+++ b/drivers/gpu/drm/i915/i915_memcpy.c
@@ -27,6 +27,12 @@
 
 #include "i915_memcpy.h"
 
+#if IS_ENABLED(CONFIG_DRM_I915_DEBUG)
+#define CI_BUG_ON(expr) BUG_ON(expr)
+#else
+#define CI_BUG_ON(expr) BUILD_BUG_ON_INVALID(expr)
+#endif
+
 static DEFINE_STATIC_KEY_FALSE(has_movntdqa);
 
 #ifdef CONFIG_AS_MOVNTDQA
@@ -34,7 +40,6 @@ static void __memcpy_ntdqa(void *dst, const void *src, unsigned long len)
 {
 	kernel_fpu_begin();
 
-	len >>= 4;
 	while (len >= 4) {
 		asm("movntdqa   (%0), %%xmm0\n"
 		    "movntdqa 16(%0), %%xmm1\n"
@@ -59,6 +64,38 @@ static void __memcpy_ntdqa(void *dst, const void *src, unsigned long len)
 
 	kernel_fpu_end();
 }
+
+static void __memcpy_ntdqu(void *dst, const void *src, unsigned long len)
+{
+	kernel_fpu_begin();
+
+	while (len >= 4) {
+		asm("movntdqa   (%0), %%xmm0\n"
+		    "movntdqa 16(%0), %%xmm1\n"
+		    "movntdqa 32(%0), %%xmm2\n"
+		    "movntdqa 48(%0), %%xmm3\n"
+		    "movups %%xmm0,   (%1)\n"
+		    "movups %%xmm1, 16(%1)\n"
+		    "movups %%xmm2, 32(%1)\n"
+		    "movups %%xmm3, 48(%1)\n"
+		    :: "r" (src), "r" (dst) : "memory");
+		src += 64;
+		dst += 64;
+		len -= 4;
+	}
+	while (len--) {
+		asm("movntdqa (%0), %%xmm0\n"
+		    "movups %%xmm0, (%1)\n"
+		    :: "r" (src), "r" (dst) : "memory");
+		src += 16;
+		dst += 16;
+	}
+
+	kernel_fpu_end();
+}
+#else
+static void __memcpy_ntdqa(void *dst, const void *src, unsigned long len) {}
+static void __memcpy_ntdqu(void *dst, const void *src, unsigned long len) {}
 #endif
 
 /**
@@ -83,17 +120,47 @@ bool i915_memcpy_from_wc(void *dst, const void *src, unsigned long len)
 	if (unlikely(((unsigned long)dst | (unsigned long)src | len) & 15))
 		return false;
 
-#ifdef CONFIG_AS_MOVNTDQA
 	if (static_branch_likely(&has_movntdqa)) {
 		if (likely(len))
-			__memcpy_ntdqa(dst, src, len);
+			__memcpy_ntdqa(dst, src, len >> 4);
 		return true;
 	}
-#endif
 
 	return false;
 }
 
+/**
+ * i915_unaligned_memcpy_from_wc: perform a mostly accelerated read from WC
+ * @dst: destination pointer
+ * @src: source pointer
+ * @len: how many bytes to copy
+ *
+ * Like i915_memcpy_from_wc(), the unaligned variant copies @len bytes from
+ * @src to @dst using * non-temporal instructions where available, but
+ * accepts that its arguments may not be aligned, but are valid for the
+ * potential 16-byte read past the end.
+ */
+void i915_unaligned_memcpy_from_wc(void *dst, void *src, unsigned long len)
+{
+	unsigned long addr;
+
+	CI_BUG_ON(!i915_has_memcpy_from_wc());
+
+	addr = (unsigned long)src;
+	if (!IS_ALIGNED(addr, 16)) {
+		unsigned long x = min(ALIGN(addr, 16) - addr, len);
+
+		memcpy(dst, src, x);
+
+		len -= x;
+		dst += x;
+		src += x;
+	}
+
+	if (likely(len))
+		__memcpy_ntdqu(dst, src, DIV_ROUND_UP(len, 16));
+}
+
 void i915_memcpy_init_early(struct drm_i915_private *dev_priv)
 {
 	/*
diff --git a/drivers/gpu/drm/i915/i915_memcpy.h b/drivers/gpu/drm/i915/i915_memcpy.h
index 970d84b16987..e36d30edd987 100644
--- a/drivers/gpu/drm/i915/i915_memcpy.h
+++ b/drivers/gpu/drm/i915/i915_memcpy.h
@@ -11,7 +11,9 @@
 struct drm_i915_private;
 
 void i915_memcpy_init_early(struct drm_i915_private *i915);
+
 bool i915_memcpy_from_wc(void *dst, const void *src, unsigned long len);
+void i915_unaligned_memcpy_from_wc(void *dst, void *src, unsigned long len);
 
 /* The movntdqa instructions used for memcpy-from-wc require 16-byte alignment,
  * as well as SSE4.1 support. i915_memcpy_from_wc() will report if it cannot
-- 
2.24.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
