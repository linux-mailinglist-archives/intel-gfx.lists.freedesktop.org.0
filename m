Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DF9DC28BB3B
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Oct 2020 16:47:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E133B6E4E8;
	Mon, 12 Oct 2020 14:47:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71D346E50C
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Oct 2020 14:47:16 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Oct 2020 16:46:51 +0200
Message-Id: <20201012144706.555345-47-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201012144706.555345-1-maarten.lankhorst@linux.intel.com>
References: <20201012144706.555345-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 46/61] drm/i915/selftests: Prepare mman
 testcases for obj->mm.lock removal.
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

Ensure we hold the lock around put_pages, and use the unlocked wrappers
for pinning pages and mappings.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
index 3ac7628f3bc4..85fff8bed08c 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
@@ -321,7 +321,7 @@ static int igt_partial_tiling(void *arg)
 	if (IS_ERR(obj))
 		return PTR_ERR(obj);
 
-	err = i915_gem_object_pin_pages(obj);
+	err = i915_gem_object_pin_pages_unlocked(obj);
 	if (err) {
 		pr_err("Failed to allocate %u pages (%lu total), err=%d\n",
 		       nreal, obj->base.size / PAGE_SIZE, err);
@@ -458,7 +458,7 @@ static int igt_smoke_tiling(void *arg)
 	if (IS_ERR(obj))
 		return PTR_ERR(obj);
 
-	err = i915_gem_object_pin_pages(obj);
+	err = i915_gem_object_pin_pages_unlocked(obj);
 	if (err) {
 		pr_err("Failed to allocate %u pages (%lu total), err=%d\n",
 		       nreal, obj->base.size / PAGE_SIZE, err);
@@ -797,7 +797,7 @@ static int wc_set(struct drm_i915_gem_object *obj)
 {
 	void *vaddr;
 
-	vaddr = i915_gem_object_pin_map(obj, I915_MAP_WC);
+	vaddr = i915_gem_object_pin_map_unlocked(obj, I915_MAP_WC);
 	if (IS_ERR(vaddr))
 		return PTR_ERR(vaddr);
 
@@ -813,7 +813,7 @@ static int wc_check(struct drm_i915_gem_object *obj)
 	void *vaddr;
 	int err = 0;
 
-	vaddr = i915_gem_object_pin_map(obj, I915_MAP_WC);
+	vaddr = i915_gem_object_pin_map_unlocked(obj, I915_MAP_WC);
 	if (IS_ERR(vaddr))
 		return PTR_ERR(vaddr);
 
@@ -1315,7 +1315,9 @@ static int __igt_mmap_revoke(struct drm_i915_private *i915,
 	}
 
 	if (type != I915_MMAP_TYPE_GTT) {
+		i915_gem_object_lock(obj, NULL);
 		__i915_gem_object_put_pages(obj);
+		i915_gem_object_unlock(obj);
 		if (i915_gem_object_has_pages(obj)) {
 			pr_err("Failed to put-pages object!\n");
 			err = -EINVAL;
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
