Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BF133FB5B5
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Aug 2021 14:10:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C181289D7C;
	Mon, 30 Aug 2021 12:09:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl
 [IPv6:2a02:2308:0:7ec:e79c:4e97:b6c4:f0ae])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF54C89CE2
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Aug 2021 12:09:55 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Date: Mon, 30 Aug 2021 14:10:05 +0200
Message-Id: <20210830121006.2978297-19-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210830121006.2978297-1-maarten.lankhorst@linux.intel.com>
References: <20210830121006.2978297-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 18/19] drm/i915: Add support for asynchronous
 moving fence waiting
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

For now, we will only allow async migration when TTM is used,
so the paths we care about are related to TTM.

The mmap path is handled by having the fence in ttm_bo->moving,
when pinning, the binding only becomes available after the moving
fence is signaled, and pinning a cpu map will only work after
the moving fence signals.

This should close all holes where userspace can read a buffer
before it's fully migrated.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_pages.c | 10 ++++++++++
 drivers/gpu/drm/i915/i915_vma.c           | 10 ++++++++--
 2 files changed, 18 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pages.c b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
index 8eb1c3a6fc9c..a044d1829729 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_pages.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
@@ -345,6 +345,7 @@ void *i915_gem_object_pin_map(struct drm_i915_gem_object *obj,
 			      enum i915_map_type type)
 {
 	enum i915_map_type has_type;
+	struct dma_fence *moving;
 	bool pinned;
 	void *ptr;
 	int err;
@@ -355,6 +356,15 @@ void *i915_gem_object_pin_map(struct drm_i915_gem_object *obj,
 
 	assert_object_held(obj);
 
+	moving = i915_gem_object_get_moving_fence(obj);
+	if (moving) {
+		err = dma_fence_wait(moving, true);
+		dma_fence_put(moving);
+
+		if (err)
+			return ERR_PTR(err);
+	}
+
 	pinned = !(type & I915_MAP_OVERRIDE);
 	type &= ~I915_MAP_OVERRIDE;
 
diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index bfba299d905c..320678e9b4e1 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -398,7 +398,7 @@ int i915_vma_bind(struct i915_vma *vma,
 	GEM_BUG_ON(!vma->pages);
 
 	trace_i915_vma_bind(vma, bind_flags);
-	if (work && bind_flags & vma->vm->bind_async_flags) {
+	if (work) {
 		struct dma_fence *prev;
 
 		work->vma = vma;
@@ -1145,6 +1145,7 @@ int i915_vma_pin_ww(struct i915_vma *vma, struct i915_gem_ww_ctx *ww,
 		    u64 size, u64 alignment, u64 flags)
 {
 	struct i915_vma_work *work = NULL;
+	struct dma_fence *moving = NULL;
 	intel_wakeref_t wakeref = 0;
 	unsigned int bound;
 	int err;
@@ -1168,7 +1169,8 @@ int i915_vma_pin_ww(struct i915_vma *vma, struct i915_gem_ww_ctx *ww,
 	if (flags & PIN_GLOBAL)
 		wakeref = intel_runtime_pm_get(&vma->vm->i915->runtime_pm);
 
-	if (flags & vma->vm->bind_async_flags) {
+	moving = i915_gem_object_get_moving_fence(vma->obj);
+	if (flags & vma->vm->bind_async_flags || moving) {
 		/* lock VM */
 		err = i915_vm_lock_objects(vma->vm, ww);
 		if (err)
@@ -1182,6 +1184,8 @@ int i915_vma_pin_ww(struct i915_vma *vma, struct i915_gem_ww_ctx *ww,
 
 		work->vm = i915_vm_get(vma->vm);
 
+		dma_fence_work_chain(&work->base, moving);
+
 		/* Allocate enough page directories to used PTE */
 		if (vma->vm->allocate_va_range) {
 			err = i915_vm_alloc_pt_stash(vma->vm,
@@ -1289,6 +1293,8 @@ int i915_vma_pin_ww(struct i915_vma *vma, struct i915_gem_ww_ctx *ww,
 err_rpm:
 	if (wakeref)
 		intel_runtime_pm_put(&vma->vm->i915->runtime_pm, wakeref);
+	if (moving)
+		dma_fence_put(moving);
 	i915_vma_put_pages(vma);
 	return err;
 }
-- 
2.32.0

