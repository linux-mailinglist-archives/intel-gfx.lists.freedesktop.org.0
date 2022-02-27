Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8624F4C5DD7
	for <lists+intel-gfx@lfdr.de>; Sun, 27 Feb 2022 18:46:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EEA3E10E25F;
	Sun, 27 Feb 2022 17:46:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE92410E139;
 Sun, 27 Feb 2022 17:46:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645983967; x=1677519967;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=eB60TveDRnULtFaRNmUIrqNu7mRUiEXWYt1vyasn+SI=;
 b=LUp+e6y8S2RDja+CfRobyeTuz7IM0rsSYeaFzFf+QBKJJLN5c/JLfjeA
 AxPpyS7urKLs/QlEqVXBigKHTTTAHJXUVDcN1AlzNkLnuDtTikGeGnTI9
 ey0EvvSWYOfHjUkypDi9TUaBRYzgRQqXqUHMPs2GXSbuBHz9aDjVxsW0O
 GS69gEnNAJOtjRieP/VHYhqMKBD+xMZRYMvW9dzv4XywJjA58WQkedxtN
 dhyDFbQH/2iYyXFJc56UXYvis0lSRZ1Eenc7LEzersYVJReXVfASjJw8v
 ocdU29PC7O6bBBI8TqQ/YdnUuEOjvvVFdWdQsHVYlOaWHbMqlfJqpxmxI A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10271"; a="313469107"
X-IronPort-AV: E=Sophos;i="5.90,141,1643702400"; d="scan'208";a="313469107"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2022 09:46:07 -0800
X-IronPort-AV: E=Sophos;i="5.90,141,1643702400"; d="scan'208";a="549940406"
Received: from vkasired-desk2.fm.intel.com ([10.105.128.127])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2022 09:46:07 -0800
From: Vivek Kasireddy <vivek.kasireddy@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Sun, 27 Feb 2022 09:29:57 -0800
Message-Id: <20220227172957.1208890-3-vivek.kasireddy@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220227172957.1208890-1-vivek.kasireddy@intel.com>
References: <20220227172957.1208890-1-vivek.kasireddy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 2/2] drm/i915/gem: Don't try to map and fence large
 scanout buffers (v9)
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On platforms capable of allowing 8K (7680 x 4320) modes, pinning 2 or
more framebuffers/scanout buffers results in only one that is mappable/
fenceable. Therefore, pageflipping between these 2 FBs where only one
is mappable/fenceable creates latencies large enough to miss alternate
vblanks thereby producing less optimal framerate.

This mainly happens because when i915_gem_object_pin_to_display_plane()
is called to pin one of the FB objs, the associated vma is identified
as misplaced and therefore i915_vma_unbind() is called which unbinds and
evicts it. This misplaced vma gets subseqently pinned only when
i915_gem_object_ggtt_pin_ww() is called without PIN_MAPPABLE. This
results in a latency of ~10ms and happens every other vblank/repaint cycle.
Therefore, to fix this issue, we try to see if there is space to map
at-least two objects of a given size and return early if there isn't. This
would ensure that we do not try with PIN_MAPPABLE for any objects that
are too big to map thereby preventing unncessary unbind.

Testcase:
Running Weston and weston-simple-egl on an Alderlake_S (ADLS) platform
with a 8K@60 mode results in only ~40 FPS. Since upstream Weston submits
a frame ~7ms before the next vblank, the latencies seen between atomic
commit and flip event are 7, 24 (7 + 16.66), 7, 24..... suggesting that
it misses the vblank every other frame.

Here is the ftrace snippet that shows the source of the ~10ms latency:
              i915_gem_object_pin_to_display_plane() {
0.102 us   |    i915_gem_object_set_cache_level();
                i915_gem_object_ggtt_pin_ww() {
0.390 us   |      i915_vma_instance();
0.178 us   |      i915_vma_misplaced();
                  i915_vma_unbind() {
                  __i915_active_wait() {
0.082 us   |        i915_active_acquire_if_busy();
0.475 us   |      }
                  intel_runtime_pm_get() {
0.087 us   |        intel_runtime_pm_acquire();
0.259 us   |      }
                  __i915_active_wait() {
0.085 us   |        i915_active_acquire_if_busy();
0.240 us   |      }
                  __i915_vma_evict() {
                    ggtt_unbind_vma() {
                      gen8_ggtt_clear_range() {
10507.255 us |        }
10507.689 us |      }
10508.516 us |   }

v2: Instead of using bigjoiner checks, determine whether a scanout
    buffer is too big by checking to see if it is possible to map
    two of them into the ggtt.

v3 (Ville):
- Count how many fb objects can be fit into the available holes
  instead of checking for a hole twice the object size.
- Take alignment constraints into account.
- Limit this large scanout buffer check to >= Gen 11 platforms.

v4:
- Remove existing heuristic that checks just for size. (Ville)
- Return early if we find space to map at-least two objects. (Tvrtko)
- Slightly update the commit message.

v5: (Tvrtko)
- Rename the function to indicate that the object may be too big to
  map into the aperture.
- Account for guard pages while calculating the total size required
  for the object.
- Do not subject all objects to the heuristic check and instead
  consider objects only of a certain size.
- Do the hole walk using the rbtree.
- Preserve the existing PIN_NONBLOCK logic.
- Drop the PIN_MAPPABLE check while pinning the VMA.

v6: (Tvrtko)
- Return 0 on success and the specific error code on failure to
  preserve the existing behavior.

v7: (Ville)
- Drop the HAS_GMCH(i915), DISPLAY_VER(i915) < 11 and
  size < ggtt->mappable_end / 4 checks.
- Drop the redundant check that is based on previous heuristic.

v8:
- Make sure that we are holding the mutex associated with ggtt vm
  as we traverse the hole nodes.

v9: (Tvrtko)
- Use mutex_lock_interruptible_nested() instead of mutex_lock().

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: Manasi Navare <manasi.d.navare@intel.com>
Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
---
 drivers/gpu/drm/i915/i915_gem.c | 128 +++++++++++++++++++++++---------
 1 file changed, 94 insertions(+), 34 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index 2e10187cd0a0..4bef9eaa8b2e 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -49,6 +49,7 @@
 #include "gem/i915_gem_pm.h"
 #include "gem/i915_gem_region.h"
 #include "gem/i915_gem_userptr.h"
+#include "gem/i915_gem_tiling.h"
 #include "gt/intel_engine_user.h"
 #include "gt/intel_gt.h"
 #include "gt/intel_gt_pm.h"
@@ -879,6 +880,96 @@ static void discard_ggtt_vma(struct i915_vma *vma)
 	spin_unlock(&obj->vma.lock);
 }
 
+static int
+i915_gem_object_fits_in_aperture(struct drm_i915_gem_object *obj,
+				 u64 alignment, u64 flags)
+{
+	struct drm_i915_private *i915 = to_i915(obj->base.dev);
+	struct i915_ggtt *ggtt = to_gt(i915)->ggtt;
+	struct drm_mm_node *hole;
+	u64 hole_start, hole_end, start, end;
+	u64 fence_size, fence_alignment;
+	unsigned int count = 0;
+	int err = 0;
+
+	/*
+	 * If the required space is larger than the available
+	 * aperture, we will not able to find a slot for the
+	 * object and unbinding the object now will be in
+	 * vain. Worse, doing so may cause us to ping-pong
+	 * the object in and out of the Global GTT and
+	 * waste a lot of cycles under the mutex.
+	 */
+	if (obj->base.size > ggtt->mappable_end)
+		return -E2BIG;
+
+	/*
+	 * If NONBLOCK is set the caller is optimistically
+	 * trying to cache the full object within the mappable
+	 * aperture, and *must* have a fallback in place for
+	 * situations where we cannot bind the object. We
+	 * can be a little more lax here and use the fallback
+	 * more often to avoid costly migrations of ourselves
+	 * and other objects within the aperture.
+	 */
+	if (!(flags & PIN_NONBLOCK))
+		return 0;
+
+	/*
+	 * Other objects such as batchbuffers are fairly small compared
+	 * to FBs and are unlikely to exahust the aperture space.
+	 * Therefore, return early if this obj is not an FB.
+	 */
+	if (!i915_gem_object_is_framebuffer(obj))
+		return 0;
+
+	fence_size = i915_gem_fence_size(i915, obj->base.size,
+					 i915_gem_object_get_tiling(obj),
+					 i915_gem_object_get_stride(obj));
+
+	if (i915_vm_has_cache_coloring(&ggtt->vm))
+		fence_size += 2 * I915_GTT_PAGE_SIZE;
+
+	fence_alignment = i915_gem_fence_alignment(i915, obj->base.size,
+						   i915_gem_object_get_tiling(obj),
+						   i915_gem_object_get_stride(obj));
+	alignment = max_t(u64, alignment, fence_alignment);
+
+	err = mutex_lock_interruptible_nested(&ggtt->vm.mutex, 0);
+	if (err)
+		return err;
+
+	/*
+	 * Assuming this object is a large scanout buffer, we try to find
+	 * out if there is room to map at-least two of them. There could
+	 * be space available to map one but to be consistent, we try to
+	 * avoid mapping/fencing any of them.
+	 */
+	drm_mm_for_each_suitable_hole(hole, &ggtt->vm.mm, 0, ggtt->mappable_end,
+				      fence_size, DRM_MM_INSERT_LOW) {
+		hole_start = drm_mm_hole_node_start(hole);
+		hole_end = hole_start + hole->hole_size;
+
+		do {
+			start = round_up(hole_start, alignment);
+			end = min_t(u64, hole_end, ggtt->mappable_end);
+
+			if (range_overflows(start, fence_size, end))
+				break;
+
+			if (++count >= 2) {
+				mutex_unlock(&ggtt->vm.mutex);
+				return 0;
+			}
+
+			hole_start = start + fence_size;
+		} while (1);
+	}
+
+	mutex_unlock(&ggtt->vm.mutex);
+	return -ENOSPC;
+}
+
 struct i915_vma *
 i915_gem_object_ggtt_pin_ww(struct drm_i915_gem_object *obj,
 			    struct i915_gem_ww_ctx *ww,
@@ -894,36 +985,9 @@ i915_gem_object_ggtt_pin_ww(struct drm_i915_gem_object *obj,
 
 	if (flags & PIN_MAPPABLE &&
 	    (!view || view->type == I915_GGTT_VIEW_NORMAL)) {
-		/*
-		 * If the required space is larger than the available
-		 * aperture, we will not able to find a slot for the
-		 * object and unbinding the object now will be in
-		 * vain. Worse, doing so may cause us to ping-pong
-		 * the object in and out of the Global GTT and
-		 * waste a lot of cycles under the mutex.
-		 */
-		if (obj->base.size > ggtt->mappable_end)
-			return ERR_PTR(-E2BIG);
-
-		/*
-		 * If NONBLOCK is set the caller is optimistically
-		 * trying to cache the full object within the mappable
-		 * aperture, and *must* have a fallback in place for
-		 * situations where we cannot bind the object. We
-		 * can be a little more lax here and use the fallback
-		 * more often to avoid costly migrations of ourselves
-		 * and other objects within the aperture.
-		 *
-		 * Half-the-aperture is used as a simple heuristic.
-		 * More interesting would to do search for a free
-		 * block prior to making the commitment to unbind.
-		 * That caters for the self-harm case, and with a
-		 * little more heuristics (e.g. NOFAULT, NOEVICT)
-		 * we could try to minimise harm to others.
-		 */
-		if (flags & PIN_NONBLOCK &&
-		    obj->base.size > ggtt->mappable_end / 2)
-			return ERR_PTR(-ENOSPC);
+		ret = i915_gem_object_fits_in_aperture(obj, alignment, flags);
+		if (ret)
+			return ERR_PTR(ret);
 	}
 
 new_vma:
@@ -935,10 +999,6 @@ i915_gem_object_ggtt_pin_ww(struct drm_i915_gem_object *obj,
 		if (flags & PIN_NONBLOCK) {
 			if (i915_vma_is_pinned(vma) || i915_vma_is_active(vma))
 				return ERR_PTR(-ENOSPC);
-
-			if (flags & PIN_MAPPABLE &&
-			    vma->fence_size > ggtt->mappable_end / 2)
-				return ERR_PTR(-ENOSPC);
 		}
 
 		if (i915_vma_is_pinned(vma) || i915_vma_is_active(vma)) {
-- 
2.34.1

