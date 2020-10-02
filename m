Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C0D828137C
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Oct 2020 15:00:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60D076E970;
	Fri,  2 Oct 2020 12:59:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C7FD6E96D
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Oct 2020 12:59:49 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  2 Oct 2020 14:59:13 +0200
Message-Id: <20201002125939.50817-36-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201002125939.50817-1-maarten.lankhorst@linux.intel.com>
References: <20201002125939.50817-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 35/61] drm/i915: Lock ww in ucode objects
 correctly
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

In the ucode functions, the calls are done before userspace runs,
when debugging using debugfs, or when creating semi-permanent mappings;
we can safely use the unlocked versions that does the ww dance for us.

Because there is no pin_pages_unlocked yet, add it as convenience function.

This removes possible lockdep splats about missing resv lock for ucode.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_object.h |  2 ++
 drivers/gpu/drm/i915/gem/i915_gem_pages.c  | 20 ++++++++++++++++++++
 drivers/gpu/drm/i915/gt/uc/intel_guc.c     |  2 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc_log.c |  4 ++--
 drivers/gpu/drm/i915/gt/uc/intel_huc.c     |  2 +-
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c   |  2 +-
 6 files changed, 27 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
index 534e36b8d43b..135a7a16d2d4 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
@@ -319,6 +319,8 @@ i915_gem_object_pin_pages(struct drm_i915_gem_object *obj)
 	return __i915_gem_object_get_pages(obj);
 }
 
+int i915_gem_object_pin_pages_unlocked(struct drm_i915_gem_object *obj);
+
 static inline bool
 i915_gem_object_has_pages(struct drm_i915_gem_object *obj)
 {
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pages.c b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
index 75556c417873..84711dad5ca8 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_pages.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
@@ -134,6 +134,26 @@ int __i915_gem_object_get_pages(struct drm_i915_gem_object *obj)
 	return err;
 }
 
+int i915_gem_object_pin_pages_unlocked(struct drm_i915_gem_object *obj)
+{
+	struct i915_gem_ww_ctx ww;
+	int err;
+
+	i915_gem_ww_ctx_init(&ww, true);
+retry:
+	err = i915_gem_object_lock(obj, &ww);
+	if (!err)
+		err = i915_gem_object_pin_pages(obj);
+
+	if (err == -EDEADLK) {
+		err = i915_gem_ww_ctx_backoff(&ww);
+		if (!err)
+			goto retry;
+	}
+	i915_gem_ww_ctx_fini(&ww);
+	return err;
+}
+
 /* Immediately discard the backing storage */
 void i915_gem_object_truncate(struct drm_i915_gem_object *obj)
 {
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
index 942c7c187adb..bd97facf84ff 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
@@ -712,7 +712,7 @@ int intel_guc_allocate_and_map_vma(struct intel_guc *guc, u32 size,
 	if (IS_ERR(vma))
 		return PTR_ERR(vma);
 
-	vaddr = i915_gem_object_pin_map(vma->obj, I915_MAP_WB);
+	vaddr = i915_gem_object_pin_map_unlocked(vma->obj, I915_MAP_WB);
 	if (IS_ERR(vaddr)) {
 		i915_vma_unpin_and_release(&vma, 0);
 		return PTR_ERR(vaddr);
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
index 9bbe8a795cb8..8dc8678e7ab0 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
@@ -335,7 +335,7 @@ static int guc_log_map(struct intel_guc_log *log)
 	 * buffer pages, so that we can directly get the data
 	 * (up-to-date) from memory.
 	 */
-	vaddr = i915_gem_object_pin_map(log->vma->obj, I915_MAP_WC);
+	vaddr = i915_gem_object_pin_map_unlocked(log->vma->obj, I915_MAP_WC);
 	if (IS_ERR(vaddr))
 		return PTR_ERR(vaddr);
 
@@ -744,7 +744,7 @@ int intel_guc_log_dump(struct intel_guc_log *log, struct drm_printer *p,
 	if (!obj)
 		return 0;
 
-	map = i915_gem_object_pin_map(obj, I915_MAP_WC);
+	map = i915_gem_object_pin_map_unlocked(obj, I915_MAP_WC);
 	if (IS_ERR(map)) {
 		DRM_DEBUG("Failed to pin object\n");
 		drm_puts(p, "(log data unaccessible)\n");
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_huc.c b/drivers/gpu/drm/i915/gt/uc/intel_huc.c
index 65eeb44b397d..2126dd81ac38 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_huc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_huc.c
@@ -82,7 +82,7 @@ static int intel_huc_rsa_data_create(struct intel_huc *huc)
 	if (IS_ERR(vma))
 		return PTR_ERR(vma);
 
-	vaddr = i915_gem_object_pin_map(vma->obj, I915_MAP_WB);
+	vaddr = i915_gem_object_pin_map_unlocked(vma->obj, I915_MAP_WB);
 	if (IS_ERR(vaddr)) {
 		i915_vma_unpin_and_release(&vma, 0);
 		return PTR_ERR(vaddr);
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
index 80e8b6c3bc8c..bf4835a66ad8 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
@@ -541,7 +541,7 @@ int intel_uc_fw_init(struct intel_uc_fw *uc_fw)
 	if (!intel_uc_fw_is_available(uc_fw))
 		return -ENOEXEC;
 
-	err = i915_gem_object_pin_pages(uc_fw->obj);
+	err = i915_gem_object_pin_pages_unlocked(uc_fw->obj);
 	if (err) {
 		DRM_DEBUG_DRIVER("%s fw pin-pages err=%d\n",
 				 intel_uc_fw_type_repr(uc_fw->type), err);
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
