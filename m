Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 183AF436083
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Oct 2021 13:45:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABC2D6EC3A;
	Thu, 21 Oct 2021 11:44:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ADBC66EC35;
 Thu, 21 Oct 2021 11:44:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10143"; a="292476719"
X-IronPort-AV: E=Sophos;i="5.87,169,1631602800"; d="scan'208";a="292476719"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2021 04:44:45 -0700
X-IronPort-AV: E=Sophos;i="5.87,169,1631602800"; d="scan'208";a="568287256"
Received: from lmirabel-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.213.195.77])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2021 04:44:44 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org,
 =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Date: Thu, 21 Oct 2021 12:44:09 +0100
Message-Id: <20211021114410.2437099-3-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20211021114410.2437099-1-matthew.auld@intel.com>
References: <20211021114410.2437099-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/4] drm/i915: move cpu_write_needs_clflush
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

Move it next to its partner in crime; gpu_write_needs_clflush.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_domain.c | 12 ++++++++++++
 drivers/gpu/drm/i915/gem/i915_gem_object.h | 15 ++-------------
 drivers/gpu/drm/i915/i915_gem.c            |  2 +-
 3 files changed, 15 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_domain.c b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
index b684a62bf3b0..d30d5a699788 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_domain.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
@@ -22,6 +22,18 @@ static bool gpu_write_needs_clflush(struct drm_i915_gem_object *obj)
 		 obj->cache_level == I915_CACHE_WT);
 }
 
+bool i915_gem_cpu_write_needs_clflush(struct drm_i915_gem_object *obj)
+{
+	if (obj->cache_dirty)
+		return false;
+
+	if (!(obj->cache_coherent & I915_BO_CACHE_COHERENT_FOR_WRITE))
+		return true;
+
+	/* Currently in use by HW (display engine)? Keep flushed. */
+	return i915_gem_object_is_framebuffer(obj);
+}
+
 static void
 flush_write_domain(struct drm_i915_gem_object *obj, unsigned int flush_domains)
 {
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
index 59201801cec5..199f2ef928c3 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
@@ -517,6 +517,7 @@ void i915_gem_object_set_cache_coherency(struct drm_i915_gem_object *obj,
 bool i915_gem_object_can_bypass_llc(struct drm_i915_gem_object *obj);
 void i915_gem_object_flush_if_display(struct drm_i915_gem_object *obj);
 void i915_gem_object_flush_if_display_locked(struct drm_i915_gem_object *obj);
+bool i915_gem_cpu_write_needs_clflush(struct drm_i915_gem_object *obj);
 
 int __must_check
 i915_gem_object_set_to_wc_domain(struct drm_i915_gem_object *obj, bool write);
@@ -535,23 +536,11 @@ void i915_gem_object_make_unshrinkable(struct drm_i915_gem_object *obj);
 void i915_gem_object_make_shrinkable(struct drm_i915_gem_object *obj);
 void i915_gem_object_make_purgeable(struct drm_i915_gem_object *obj);
 
-static inline bool cpu_write_needs_clflush(struct drm_i915_gem_object *obj)
-{
-	if (obj->cache_dirty)
-		return false;
-
-	if (!(obj->cache_coherent & I915_BO_CACHE_COHERENT_FOR_WRITE))
-		return true;
-
-	/* Currently in use by HW (display engine)? Keep flushed. */
-	return i915_gem_object_is_framebuffer(obj);
-}
-
 static inline void __start_cpu_write(struct drm_i915_gem_object *obj)
 {
 	obj->read_domains = I915_GEM_DOMAIN_CPU;
 	obj->write_domain = I915_GEM_DOMAIN_CPU;
-	if (cpu_write_needs_clflush(obj))
+	if (i915_gem_cpu_write_needs_clflush(obj))
 		obj->cache_dirty = true;
 }
 
diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index 981e383d1a5d..d0e642c82064 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -764,7 +764,7 @@ i915_gem_pwrite_ioctl(struct drm_device *dev, void *data,
 	 * perspective, requiring manual detiling by the client.
 	 */
 	if (!i915_gem_object_has_struct_page(obj) ||
-	    cpu_write_needs_clflush(obj))
+	    i915_gem_cpu_write_needs_clflush(obj))
 		/* Note that the gtt paths might fail with non-page-backed user
 		 * pointers (e.g. gtt mappings when moving data between
 		 * textures). Fallback to the shmem path in that case.
-- 
2.26.3

