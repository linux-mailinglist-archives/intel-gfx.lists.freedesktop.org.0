Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 70F2C29033B
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Oct 2020 12:45:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DD656EB93;
	Fri, 16 Oct 2020 10:45:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl
 [IPv6:2a02:2308::216:3eff:fe92:dfa3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FCFE6EB20
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Oct 2020 10:44:50 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Oct 2020 12:43:56 +0200
Message-Id: <20201016104444.1492028-14-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201016104444.1492028-1-maarten.lankhorst@linux.intel.com>
References: <20201016104444.1492028-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 13/61] drm/i915: Reject more ioctls for
 userptr
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

Allow set_domain to fail silently, waiting for idle should be good enough.
set_tiling and set_caching are rejected with -ENXIO, there's no valid reason
to allow it.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 2 +-
 drivers/gpu/drm/i915/gem/i915_gem_domain.c   | 4 +++-
 drivers/gpu/drm/i915/gem/i915_gem_object.h   | 6 ++++++
 drivers/gpu/drm/i915/gem/i915_gem_userptr.c  | 3 ++-
 4 files changed, 12 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index a02ca7de72de..5690e2ae2366 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -17365,7 +17365,7 @@ static int intel_user_framebuffer_create_handle(struct drm_framebuffer *fb,
 	struct drm_i915_gem_object *obj = intel_fb_obj(fb);
 	struct drm_i915_private *i915 = to_i915(obj->base.dev);
 
-	if (obj->userptr.mm) {
+	if (i915_gem_object_is_userptr(obj)) {
 		drm_dbg(&i915->drm,
 			"attempting to use a userptr for a framebuffer, denied\n");
 		return -EINVAL;
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_domain.c b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
index 7c90a63c273d..43c22648b074 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_domain.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
@@ -543,7 +543,9 @@ i915_gem_set_domain_ioctl(struct drm_device *dev, void *data,
 	 * considered to be outside of any cache domain.
 	 */
 	if (i915_gem_object_is_proxy(obj)) {
-		err = -ENXIO;
+		/* silently allow userptr to complete */
+		if (!i915_gem_object_is_userptr(obj))
+			err = -ENXIO;
 		goto out;
 	}
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
index e0c1e2817bee..436ff0d4951f 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
@@ -528,6 +528,12 @@ void __i915_gem_object_flush_frontbuffer(struct drm_i915_gem_object *obj,
 void __i915_gem_object_invalidate_frontbuffer(struct drm_i915_gem_object *obj,
 					      enum fb_op_origin origin);
 
+static inline bool
+i915_gem_object_is_userptr(struct drm_i915_gem_object *obj)
+{
+	return obj->userptr.mm;
+}
+
 static inline void
 i915_gem_object_flush_frontbuffer(struct drm_i915_gem_object *obj,
 				  enum fb_op_origin origin)
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
index 9c1293c99d88..3fd63fdd7466 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
@@ -721,7 +721,8 @@ static const struct drm_i915_gem_object_ops i915_gem_userptr_ops = {
 	.name = "i915_gem_object_userptr",
 	.flags = I915_GEM_OBJECT_IS_SHRINKABLE |
 		 I915_GEM_OBJECT_NO_MMAP |
-		 I915_GEM_OBJECT_ASYNC_CANCEL,
+		 I915_GEM_OBJECT_ASYNC_CANCEL |
+		 I915_GEM_OBJECT_IS_PROXY,
 	.get_pages = i915_gem_userptr_get_pages,
 	.put_pages = i915_gem_userptr_put_pages,
 	.dmabuf_export = i915_gem_userptr_dmabuf_export,
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
