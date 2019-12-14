Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 69C3811F259
	for <lists+intel-gfx@lfdr.de>; Sat, 14 Dec 2019 16:00:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE3F489CF5;
	Sat, 14 Dec 2019 15:00:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61E9E89CF5
 for <intel-gfx@lists.freedesktop.org>; Sat, 14 Dec 2019 15:00:04 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19578845-1500050 
 for multiple; Sat, 14 Dec 2019 14:59:37 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 14 Dec 2019 14:59:32 +0000
Message-Id: <20191214145932.2013492-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Hold reference to intel_frontbuffer
 as we track activity
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
Cc: Matthew Auld <matthew.auld@intel.com>, stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Since obj->frontbuffer is no longer protected by the struct_mutex, as we
are processing the execbuf, it may be removed. Acquire a reference to
the struct as we track activity upon it.

Closes: https://gitlab.freedesktop.org/drm/intel/issues/827
Fixes: 8e7cb1799b4f ("drm/i915: Extract intel_frontbuffer active tracking")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Matthew Auld <matthew.auld@intel.com>
Cc: <stable@vger.kernel.org> # v5.4+
---
 drivers/gpu/drm/i915/display/intel_frontbuffer.c | 13 ++++++++++++-
 drivers/gpu/drm/i915/display/intel_frontbuffer.h | 14 +++++++++++++-
 drivers/gpu/drm/i915/i915_vma.c                  | 10 ++++++++--
 3 files changed, 33 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.c b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
index 84b164f31895..6a8ef6a05133 100644
--- a/drivers/gpu/drm/i915/display/intel_frontbuffer.c
+++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
@@ -237,7 +237,7 @@ static void frontbuffer_release(struct kref *ref)
 }
 
 struct intel_frontbuffer *
-intel_frontbuffer_get(struct drm_i915_gem_object *obj)
+____intel_frontbuffer_get(struct drm_i915_gem_object *obj)
 {
 	struct drm_i915_private *i915 = to_i915(obj->base.dev);
 	struct intel_frontbuffer *front;
@@ -247,6 +247,17 @@ intel_frontbuffer_get(struct drm_i915_gem_object *obj)
 	if (front)
 		kref_get(&front->ref);
 	spin_unlock(&i915->fb_tracking.lock);
+
+	return front;
+}
+
+struct intel_frontbuffer *
+intel_frontbuffer_get(struct drm_i915_gem_object *obj)
+{
+	struct drm_i915_private *i915 = to_i915(obj->base.dev);
+	struct intel_frontbuffer *front;
+
+	front = __intel_frontbuffer_get(obj);
 	if (front)
 		return front;
 
diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.h b/drivers/gpu/drm/i915/display/intel_frontbuffer.h
index adc64d61a4a5..2b3068b61b80 100644
--- a/drivers/gpu/drm/i915/display/intel_frontbuffer.h
+++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.h
@@ -27,10 +27,10 @@
 #include <linux/atomic.h>
 #include <linux/kref.h>
 
+#include "gem/i915_gem_object_types.h"
 #include "i915_active.h"
 
 struct drm_i915_private;
-struct drm_i915_gem_object;
 
 enum fb_op_origin {
 	ORIGIN_GTT,
@@ -54,6 +54,18 @@ void intel_frontbuffer_flip_complete(struct drm_i915_private *i915,
 void intel_frontbuffer_flip(struct drm_i915_private *i915,
 			    unsigned frontbuffer_bits);
 
+struct intel_frontbuffer *
+____intel_frontbuffer_get(struct drm_i915_gem_object *obj);
+
+static inline struct intel_frontbuffer *
+__intel_frontbuffer_get(struct drm_i915_gem_object *obj)
+{
+	if (!READ_ONCE(obj->frontbuffer))
+		return NULL;
+
+	return ____intel_frontbuffer_get(obj);
+}
+
 struct intel_frontbuffer *
 intel_frontbuffer_get(struct drm_i915_gem_object *obj);
 
diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index 6794c742fbbf..f8790d08f449 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -1139,8 +1139,14 @@ int i915_vma_move_to_active(struct i915_vma *vma,
 		return err;
 
 	if (flags & EXEC_OBJECT_WRITE) {
-		if (intel_frontbuffer_invalidate(obj->frontbuffer, ORIGIN_CS))
-			i915_active_add_request(&obj->frontbuffer->write, rq);
+		struct intel_frontbuffer *front;
+
+		front = __intel_frontbuffer_get(obj);
+		if (unlikely(front)) {
+			if (intel_frontbuffer_invalidate(front, ORIGIN_CS))
+				i915_active_add_request(&front->write, rq);
+			intel_frontbuffer_put(front);
+		}
 
 		dma_resv_add_excl_fence(vma->resv, &rq->fence);
 		obj->write_domain = I915_GEM_DOMAIN_RENDER;
-- 
2.24.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
