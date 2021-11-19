Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A4F4B45720F
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Nov 2021 16:47:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16E3E6EC28;
	Fri, 19 Nov 2021 15:47:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2126D6EC28;
 Fri, 19 Nov 2021 15:47:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10172"; a="221651580"
X-IronPort-AV: E=Sophos;i="5.87,248,1631602800"; d="scan'208";a="221651580"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2021 07:47:36 -0800
X-IronPort-AV: E=Sophos;i="5.87,248,1631602800"; d="scan'208";a="495913262"
Received: from clillies-mobl.ger.corp.intel.com (HELO
 thellstr-mobl1.intel.com) ([10.249.254.201])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2021 07:47:35 -0800
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Fri, 19 Nov 2021 16:47:16 +0100
Message-Id: <20211119154718.3705-5-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20211119154718.3705-1-thomas.hellstrom@linux.intel.com>
References: <20211119154718.3705-1-thomas.hellstrom@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 4/6] drm/i915/ttm: Correctly handle waiting
 for gpu when shrinking
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 matthew.auld@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

With async migration, the shrinker may end up wanting to release the
pages of an object while the migration blit is still running, since
the GT migration code doesn't set up VMAs and the shrinker is thus
oblivious to the fact that the GPU is still using the pages.

Add waiting for gpu in the shrinker_release_pages() op and an
argument to that function indicating whether the shrinker expects it
to not wait for gpu. In the latter case the shrinker_release_pages()
op will return -EBUSY if the object is not idle.

Signed-off-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_object_types.h | 1 +
 drivers/gpu/drm/i915/gem/i915_gem_shrinker.c     | 1 +
 drivers/gpu/drm/i915/gem/i915_gem_ttm.c          | 7 ++++++-
 3 files changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
index 604ed5ad77f5..f9f7e44099fe 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
@@ -59,6 +59,7 @@ struct drm_i915_gem_object_ops {
 	int (*truncate)(struct drm_i915_gem_object *obj);
 	void (*writeback)(struct drm_i915_gem_object *obj);
 	int (*shrinker_release_pages)(struct drm_i915_gem_object *obj,
+				      bool no_gpu_wait,
 				      bool should_writeback);
 
 	int (*pread)(struct drm_i915_gem_object *obj,
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c b/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
index dde0a5c232f8..8b4b5f3a432a 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
@@ -60,6 +60,7 @@ static int try_to_writeback(struct drm_i915_gem_object *obj, unsigned int flags)
 {
 	if (obj->ops->shrinker_release_pages)
 		return obj->ops->shrinker_release_pages(obj,
+							!(flags & I915_SHRINK_ACTIVE),
 							flags & I915_SHRINK_WRITEBACK);
 
 	switch (obj->mm.madv) {
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
index 350bf1a23db5..e37157b080e4 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
@@ -418,6 +418,7 @@ int i915_ttm_purge(struct drm_i915_gem_object *obj)
 }
 
 static int i915_ttm_shrinker_release_pages(struct drm_i915_gem_object *obj,
+					   bool no_wait_gpu,
 					   bool should_writeback)
 {
 	struct ttm_buffer_object *bo = i915_gem_to_ttm(obj);
@@ -425,7 +426,7 @@ static int i915_ttm_shrinker_release_pages(struct drm_i915_gem_object *obj,
 		container_of(bo->ttm, typeof(*i915_tt), ttm);
 	struct ttm_operation_ctx ctx = {
 		.interruptible = true,
-		.no_wait_gpu = false,
+		.no_wait_gpu = no_wait_gpu,
 	};
 	struct ttm_placement place = {};
 	int ret;
@@ -438,6 +439,10 @@ static int i915_ttm_shrinker_release_pages(struct drm_i915_gem_object *obj,
 	if (!i915_tt->filp)
 		return 0;
 
+	ret = ttm_bo_wait_ctx(bo, &ctx);
+	if (ret)
+		return ret;
+
 	switch (obj->mm.madv) {
 	case I915_MADV_DONTNEED:
 		return i915_ttm_purge(obj);
-- 
2.31.1

