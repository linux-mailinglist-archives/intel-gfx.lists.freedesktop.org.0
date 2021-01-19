Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5259E2FC27F
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Jan 2021 22:43:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FA326E0FD;
	Tue, 19 Jan 2021 21:43:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3057F89FF9
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Jan 2021 21:43:42 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23643966-1500050 
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Jan 2021 21:43:37 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 19 Jan 2021 21:43:35 +0000
Message-Id: <20210119214336.1463-5-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210119214336.1463-1-chris@chris-wilson.co.uk>
References: <20210119214336.1463-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 5/6] drm/i915/gem: Protect used framebuffers from
 casual eviction
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

In the shrinker, we protect framebuffers from light reclaim as we
typically expect framebuffers to be reused in the near future (and with
low latency requirements). We can apply the same logic to the GGTT
eviction and defer framebuffers to the second pass only used if the
caller is desperate enough to wait for space to become available.
In most cases, the caller will use a smaller partial vma instead of
trying to force the object into the GGTT if doing so will cause other
users to be evicted.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/i915/display/intel_frontbuffer.c |  4 +++-
 drivers/gpu/drm/i915/gem/i915_gem_domain.c       |  1 +
 drivers/gpu/drm/i915/i915_gem_evict.c            | 13 ++++++++++++-
 drivers/gpu/drm/i915/i915_vma.h                  | 15 +++++++++++++++
 drivers/gpu/drm/i915/i915_vma_types.h            |  3 +++
 5 files changed, 34 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.c b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
index d898b370d7a4..7b38eee9980f 100644
--- a/drivers/gpu/drm/i915/display/intel_frontbuffer.c
+++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
@@ -225,8 +225,10 @@ static void frontbuffer_release(struct kref *ref)
 	struct i915_vma *vma;
 
 	spin_lock(&obj->vma.lock);
-	for_each_ggtt_vma(vma, obj)
+	for_each_ggtt_vma(vma, obj) {
+		i915_vma_clear_scanout(vma);
 		vma->display_alignment = I915_GTT_MIN_ALIGNMENT;
+	}
 	spin_unlock(&obj->vma.lock);
 
 	RCU_INIT_POINTER(obj->frontbuffer, NULL);
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_domain.c b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
index f0379b550dfc..a6257314be9c 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_domain.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
@@ -416,6 +416,7 @@ i915_gem_object_pin_to_display_plane(struct drm_i915_gem_object *obj,
 	}
 
 	vma->display_alignment = max_t(u64, vma->display_alignment, alignment);
+	i915_vma_mark_scanout(vma);
 
 	i915_gem_object_flush_if_display_locked(obj);
 
diff --git a/drivers/gpu/drm/i915/i915_gem_evict.c b/drivers/gpu/drm/i915/i915_gem_evict.c
index e1a66c8245b8..4d2d59a9942b 100644
--- a/drivers/gpu/drm/i915/i915_gem_evict.c
+++ b/drivers/gpu/drm/i915/i915_gem_evict.c
@@ -61,6 +61,17 @@ mark_free(struct drm_mm_scan *scan,
 	return drm_mm_scan_add_block(scan, &vma->node);
 }
 
+static bool defer_evict(struct i915_vma *vma)
+{
+	if (i915_vma_is_active(vma))
+		return true;
+
+	if (i915_vma_is_scanout(vma))
+		return true;
+
+	return false;
+}
+
 /**
  * i915_gem_evict_something - Evict vmas to make room for binding a new one
  * @vm: address space to evict from
@@ -150,7 +161,7 @@ i915_gem_evict_something(struct i915_address_space *vm,
 		 * To notice when we complete one full cycle, we record the
 		 * first active element seen, before moving it to the tail.
 		 */
-		if (active != ERR_PTR(-EAGAIN) && i915_vma_is_active(vma)) {
+		if (active != ERR_PTR(-EAGAIN) && defer_evict(vma)) {
 			if (!active)
 				active = vma;
 
diff --git a/drivers/gpu/drm/i915/i915_vma.h b/drivers/gpu/drm/i915/i915_vma.h
index 5b3a3c653454..a64adc8c883b 100644
--- a/drivers/gpu/drm/i915/i915_vma.h
+++ b/drivers/gpu/drm/i915/i915_vma.h
@@ -363,6 +363,21 @@ i915_vma_unpin_fence(struct i915_vma *vma)
 
 void i915_vma_parked(struct intel_gt *gt);
 
+static inline bool i915_vma_is_scanout(const struct i915_vma *vma)
+{
+	return test_bit(I915_VMA_SCANOUT_BIT, __i915_vma_flags(vma));
+}
+
+static inline void i915_vma_mark_scanout(struct i915_vma *vma)
+{
+	set_bit(I915_VMA_SCANOUT_BIT, __i915_vma_flags(vma));
+}
+
+static inline void i915_vma_clear_scanout(struct i915_vma *vma)
+{
+	clear_bit(I915_VMA_SCANOUT_BIT, __i915_vma_flags(vma));
+}
+
 #define for_each_until(cond) if (cond) break; else
 
 /**
diff --git a/drivers/gpu/drm/i915/i915_vma_types.h b/drivers/gpu/drm/i915/i915_vma_types.h
index 9e9082dc8f4b..f5cb848b7a7e 100644
--- a/drivers/gpu/drm/i915/i915_vma_types.h
+++ b/drivers/gpu/drm/i915/i915_vma_types.h
@@ -249,6 +249,9 @@ struct i915_vma {
 #define I915_VMA_USERFAULT	((int)BIT(I915_VMA_USERFAULT_BIT))
 #define I915_VMA_GGTT_WRITE	((int)BIT(I915_VMA_GGTT_WRITE_BIT))
 
+#define I915_VMA_SCANOUT_BIT	18
+#define I915_VMA_SCANOUT	((int)BIT(I915_VMA_SCANOUT_BIT))
+
 	struct i915_active active;
 
 #define I915_VMA_PAGES_BIAS 24
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
