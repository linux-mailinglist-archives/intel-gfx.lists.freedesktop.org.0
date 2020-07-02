Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A0F042129A8
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jul 2020 18:36:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B50DF6EB22;
	Thu,  2 Jul 2020 16:36:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 656336EB23
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jul 2020 16:36:27 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21692659-1500050 
 for <intel-gfx@lists.freedesktop.org>; Thu, 02 Jul 2020 17:36:21 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 Jul 2020 17:36:22 +0100
Message-Id: <20200702163623.6402-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 1/2] drm/i915/gem: Only revoke the GGTT mmappings
 on aperture detiling changes
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

Only a GGTT mmapping will use the aperture detiling registers, so on a
tiling change for an object, we only need to revoke those mmappings and
not the CPU mmappings (which are always linear irrespective of the tiling).

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_mman.c   | 2 +-
 drivers/gpu/drm/i915/gem/i915_gem_mman.h   | 5 ++++-
 drivers/gpu/drm/i915/gem/i915_gem_tiling.c | 2 +-
 3 files changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
index fe27c5b344e3..7c2650cfb070 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
@@ -448,7 +448,7 @@ void __i915_gem_object_release_mmap_gtt(struct drm_i915_gem_object *obj)
  * mapping will then trigger a page fault on the next user access, allowing
  * fixup by vm_fault_gtt().
  */
-static void i915_gem_object_release_mmap_gtt(struct drm_i915_gem_object *obj)
+void i915_gem_object_release_mmap_gtt(struct drm_i915_gem_object *obj)
 {
 	struct drm_i915_private *i915 = to_i915(obj->base.dev);
 	intel_wakeref_t wakeref;
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.h b/drivers/gpu/drm/i915/gem/i915_gem_mman.h
index 862e01b7cb69..7c5ccdf59359 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_mman.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.h
@@ -24,8 +24,11 @@ int i915_gem_dumb_mmap_offset(struct drm_file *file_priv,
 			      struct drm_device *dev,
 			      u32 handle, u64 *offset);
 
-void __i915_gem_object_release_mmap_gtt(struct drm_i915_gem_object *obj);
 void i915_gem_object_release_mmap(struct drm_i915_gem_object *obj);
+
+void __i915_gem_object_release_mmap_gtt(struct drm_i915_gem_object *obj);
+void i915_gem_object_release_mmap_gtt(struct drm_i915_gem_object *obj);
+
 void i915_gem_object_release_mmap_offset(struct drm_i915_gem_object *obj);
 
 #endif
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_tiling.c b/drivers/gpu/drm/i915/gem/i915_gem_tiling.c
index 0158e49bf9bb..ff72ee2fd9cd 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_tiling.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_tiling.c
@@ -299,7 +299,7 @@ i915_gem_object_set_tiling(struct drm_i915_gem_object *obj,
 	i915_gem_object_unlock(obj);
 
 	/* Force the fence to be reacquired for GTT access */
-	i915_gem_object_release_mmap(obj);
+	i915_gem_object_release_mmap_gtt(obj);
 
 	/* Try to preallocate memory required to save swizzling on put-pages */
 	if (i915_gem_object_needs_bit17_swizzle(obj)) {
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
