Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6589A7C52A
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Apr 2025 22:50:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E689810E343;
	Fri,  4 Apr 2025 20:50:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (lankhorst.se [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C14E810E320;
 Fri,  4 Apr 2025 20:50:37 +0000 (UTC)
From: Maarten Lankhorst <dev@lankhorst.se>
To: intel-xe@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org,
	Maarten Lankhorst <dev@lankhorst.se>
Subject: [PATCH 4/9] drm/xe/display: Remove dereferences of ggtt for tile id
Date: Fri,  4 Apr 2025 22:50:23 +0200
Message-ID: <20250404205028.620300-5-dev@lankhorst.se>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250404205028.620300-1-dev@lankhorst.se>
References: <20250404205028.620300-1-dev@lankhorst.se>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

Obtain the id from the root tile. Likely this can be hardcoded to 0,
but use the clean solution of obtaining root id and doing that.

to_xe_device(ggtt->tile) can also be easily replaced with xe.

Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
---
 drivers/gpu/drm/xe/display/xe_fb_pin.c | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/xe/display/xe_fb_pin.c
index d918ae1c80618..d509def82b134 100644
--- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
+++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
@@ -199,14 +199,15 @@ static int __xe_pin_fb_vma_ggtt(const struct intel_framebuffer *fb,
 	struct drm_gem_object *obj = intel_fb_bo(&fb->base);
 	struct xe_bo *bo = gem_to_xe_bo(obj);
 	struct xe_device *xe = to_xe_device(fb->base.dev);
-	struct xe_ggtt *ggtt = xe_device_get_root_tile(xe)->mem.ggtt;
+	struct xe_tile *tile0 = xe_device_get_root_tile(xe);
+	struct xe_ggtt *ggtt = tile0->mem.ggtt;
 	u32 align;
 	int ret;
 
 	/* TODO: Consider sharing framebuffer mapping?
 	 * embed i915_vma inside intel_framebuffer
 	 */
-	xe_pm_runtime_get_noresume(tile_to_xe(ggtt->tile));
+	xe_pm_runtime_get_noresume(xe);
 	ret = mutex_lock_interruptible(&ggtt->lock);
 	if (ret)
 		goto out;
@@ -215,8 +216,8 @@ static int __xe_pin_fb_vma_ggtt(const struct intel_framebuffer *fb,
 	if (xe_bo_is_vram(bo) && ggtt->flags & XE_GGTT_FLAGS_64K)
 		align = max_t(u32, align, SZ_64K);
 
-	if (bo->ggtt_node[ggtt->tile->id] && view->type == I915_GTT_VIEW_NORMAL) {
-		vma->node = bo->ggtt_node[ggtt->tile->id];
+	if (bo->ggtt_node[tile0->id] && view->type == I915_GTT_VIEW_NORMAL) {
+		vma->node = bo->ggtt_node[tile0->id];
 	} else if (view->type == I915_GTT_VIEW_NORMAL) {
 		u32 x, size = bo->ttm.base.size;
 
@@ -271,7 +272,7 @@ static int __xe_pin_fb_vma_ggtt(const struct intel_framebuffer *fb,
 out_unlock:
 	mutex_unlock(&ggtt->lock);
 out:
-	xe_pm_runtime_put(tile_to_xe(ggtt->tile));
+	xe_pm_runtime_put(xe);
 	return ret;
 }
 
@@ -348,7 +349,7 @@ static struct i915_vma *__xe_pin_fb_vma(const struct intel_framebuffer *fb,
 
 static void __xe_unpin_fb_vma(struct i915_vma *vma)
 {
-	u8 tile_id = vma->node->ggtt->tile->id;
+	u8 tile_id = xe_device_get_root_tile(xe_bo_device(vma->bo))->id;
 
 	if (!refcount_dec_and_test(&vma->ref))
 		return;
-- 
2.45.2

