Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1091C44D6D1
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Nov 2021 13:50:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B65556EA41;
	Thu, 11 Nov 2021 12:50:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA85E6E7DA;
 Thu, 11 Nov 2021 12:50:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10164"; a="232845916"
X-IronPort-AV: E=Sophos;i="5.87,226,1631602800"; d="scan'208";a="232845916"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2021 04:50:17 -0800
X-IronPort-AV: E=Sophos;i="5.87,226,1631602800"; d="scan'208";a="589915765"
Received: from isyrjala-mobl.ger.corp.intel.com (HELO
 thellstr-mobl1.intel.com) ([10.249.254.216])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2021 04:50:16 -0800
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Thu, 11 Nov 2021 13:49:58 +0100
Message-Id: <20211111125003.178247-2-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20211111125003.178247-1-thomas.hellstrom@linux.intel.com>
References: <20211111125003.178247-1-thomas.hellstrom@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/6] drm/i915: Add functions to set/get
 moving fence
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
Cc: matthew.auld@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>

We want to get rid of i915_vma tracking to simplify the code and
lifetimes. Add a way to set/put the moving fence, in preparation for
removing the tracking.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_object.c | 37 ++++++++++++++++++++++
 drivers/gpu/drm/i915/gem/i915_gem_object.h |  9 ++++++
 2 files changed, 46 insertions(+)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.c b/drivers/gpu/drm/i915/gem/i915_gem_object.c
index 591ee3cb7275..ec4313836597 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
@@ -33,6 +33,7 @@
 #include "i915_gem_object.h"
 #include "i915_memcpy.h"
 #include "i915_trace.h"
+#include "i915_gem_ttm.h"
 
 static struct kmem_cache *slab_objects;
 
@@ -726,6 +727,42 @@ static const struct drm_gem_object_funcs i915_gem_object_funcs = {
 	.export = i915_gem_prime_export,
 };
 
+struct dma_fence *
+i915_gem_object_get_moving_fence(struct drm_i915_gem_object *obj)
+{
+	return dma_fence_get(i915_gem_to_ttm(obj)->moving);
+}
+
+void i915_gem_object_set_moving_fence(struct drm_i915_gem_object *obj,
+				      struct dma_fence *fence)
+{
+	dma_fence_put(i915_gem_to_ttm(obj)->moving);
+
+	i915_gem_to_ttm(obj)->moving = dma_fence_get(fence);
+}
+
+int i915_gem_object_wait_moving_fence(struct drm_i915_gem_object *obj,
+				      bool intr)
+{
+	struct dma_fence *fence = i915_gem_to_ttm(obj)->moving;
+	int ret;
+
+	assert_object_held(obj);
+	if (!fence)
+		return 0;
+
+	ret = dma_fence_wait(fence, intr);
+	if (ret)
+		return ret;
+
+	if (fence->error)
+		return fence->error;
+
+	i915_gem_to_ttm(obj)->moving = NULL;
+	dma_fence_put(fence);
+	return 0;
+}
+
 #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
 #include "selftests/huge_gem_object.c"
 #include "selftests/huge_pages.c"
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
index 133963b46135..36bf3e2e602f 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
@@ -517,6 +517,15 @@ i915_gem_object_finish_access(struct drm_i915_gem_object *obj)
 	i915_gem_object_unpin_pages(obj);
 }
 
+struct dma_fence *
+i915_gem_object_get_moving_fence(struct drm_i915_gem_object *obj);
+
+void i915_gem_object_set_moving_fence(struct drm_i915_gem_object *obj,
+				      struct dma_fence *fence);
+
+int i915_gem_object_wait_moving_fence(struct drm_i915_gem_object *obj,
+				      bool intr);
+
 void i915_gem_object_set_cache_coherency(struct drm_i915_gem_object *obj,
 					 unsigned int cache_level);
 bool i915_gem_object_can_bypass_llc(struct drm_i915_gem_object *obj);
-- 
2.31.1

