Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D66B97B2C6
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2024 18:15:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A403B10E4AB;
	Tue, 17 Sep 2024 16:15:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nFx0a8ub";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7850E10E4B1;
 Tue, 17 Sep 2024 16:15:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726589730; x=1758125730;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=x3XQ+7UzhJib6CeQf69dMghKLtwmsKtTKFWil5TZ5b4=;
 b=nFx0a8ubKjKTGnSnt5khhujt12lKaRvqqL3bDJO1mHcVkQipcK4cZCc0
 GXbWG4BrQM4selRJZ5L4F05yMqGe7ugout6m+jRRJsU/bwLsFQvf1qBoQ
 P+QSg3d62RVUHA+R1L9FOrtur1T1Em2bYfkgNJFmBuuC4FHQLzoVbOP77
 4YrC9yJhrEubzIrHaC3Nmwl+CS/leNc878WEO12CAR7NOBUGwSQtdAbSZ
 nXPkYe9/6Y1ITZw0B6nBRpoiBgzELc6aMv+oVPDtaZRgN19WtQ60LK/kC
 6hJANdhvXvjYa+4xWHPxxoStGXmuEww1HH/D03UW30K8V1GOwawqdGYJL g==;
X-CSE-ConnectionGUID: n08DVIL6RaCXb5t+2tipAA==
X-CSE-MsgGUID: Yor1LCvsR0u6nCqnlHVlKQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11198"; a="13559561"
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="13559561"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2024 09:15:30 -0700
X-CSE-ConnectionGUID: q7bm7vENTXy/uQVAnEEJZQ==
X-CSE-MsgGUID: Ywqkv48aS42MyDk0UmOCng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="73337100"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.102])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2024 09:15:28 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: rodrigo.vivi@intel.com, lucas.demarchi@intel.com,
 ville.syrjala@linux.intel.com, maarten.lankhorst@linux.intel.com,
 jani.nikula@intel.com
Subject: [PATCH 13/22] drm/i915/display: add intel_bo_read_from_page() and use
 it
Date: Tue, 17 Sep 2024 19:13:52 +0300
Message-Id: <45fcd209221a7b2ada5a243d95b8953237471e52.1726589119.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1726589119.git.jani.nikula@intel.com>
References: <cover.1726589119.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Add an interface based on struct drm_gem_object, and use it. Move the xe
implementation to the intel_bo abstraction layer.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bo.c       |  5 ++++
 drivers/gpu/drm/i915/display/intel_bo.h       |  1 +
 drivers/gpu/drm/i915/display/intel_display.c  | 12 ++++----
 .../compat-i915-headers/gem/i915_gem_object.h | 30 -------------------
 drivers/gpu/drm/xe/display/intel_bo.c         | 30 +++++++++++++++++++
 5 files changed, 41 insertions(+), 37 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bo.c b/drivers/gpu/drm/i915/display/intel_bo.c
index 681970cf8701..5643835cdfec 100644
--- a/drivers/gpu/drm/i915/display/intel_bo.c
+++ b/drivers/gpu/drm/i915/display/intel_bo.c
@@ -34,3 +34,8 @@ int intel_bo_fb_mmap(struct drm_gem_object *obj, struct vm_area_struct *vma)
 {
 	return i915_gem_fb_mmap(to_intel_bo(obj), vma);
 }
+
+int intel_bo_read_from_page(struct drm_gem_object *obj, u64 offset, void *dst, int size)
+{
+	return i915_gem_object_read_from_page(to_intel_bo(obj), offset, dst, size);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_bo.h b/drivers/gpu/drm/i915/display/intel_bo.h
index 222a12283a5a..2aab8e25b471 100644
--- a/drivers/gpu/drm/i915/display/intel_bo.h
+++ b/drivers/gpu/drm/i915/display/intel_bo.h
@@ -15,5 +15,6 @@ bool intel_bo_is_shmem(struct drm_gem_object *obj);
 bool intel_bo_is_protected(struct drm_gem_object *obj);
 void intel_bo_flush_if_display(struct drm_gem_object *obj);
 int intel_bo_fb_mmap(struct drm_gem_object *obj, struct vm_area_struct *vma);
+int intel_bo_read_from_page(struct drm_gem_object *obj, u64 offset, void *dst, int size);
 
 #endif /* __INTEL_BO__ */
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 426074afef43..f504f8fd2618 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -45,9 +45,6 @@
 #include <drm/drm_rect.h>
 #include <drm/drm_vblank.h>
 
-#include "gem/i915_gem_lmem.h"
-#include "gem/i915_gem_object.h"
-
 #include "g4x_dp.h"
 #include "g4x_hdmi.h"
 #include "hsw_ips.h"
@@ -61,6 +58,7 @@
 #include "intel_atomic.h"
 #include "intel_atomic_plane.h"
 #include "intel_audio.h"
+#include "intel_bo.h"
 #include "intel_bw.h"
 #include "intel_cdclk.h"
 #include "intel_clock_gating.h"
@@ -7331,10 +7329,10 @@ static void intel_atomic_prepare_plane_clear_colors(struct intel_atomic_state *s
 		 * caller made sure that the object is synced wrt. the related color clear value
 		 * GPU write on it.
 		 */
-		ret = i915_gem_object_read_from_page(intel_fb_obj(fb),
-						     fb->offsets[cc_plane] + 16,
-						     &plane_state->ccval,
-						     sizeof(plane_state->ccval));
+		ret = intel_bo_read_from_page(intel_fb_bo(fb),
+					      fb->offsets[cc_plane] + 16,
+					      &plane_state->ccval,
+					      sizeof(plane_state->ccval));
 		/* The above could only fail if the FB obj has an unexpected backing store type. */
 		drm_WARN_ON(&i915->drm, ret);
 	}
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_object.h b/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_object.h
index 777c20ceabab..9de90013bae3 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_object.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_object.h
@@ -31,34 +31,4 @@ static inline bool i915_gem_object_is_userptr(const struct xe_bo *bo)
 	return false;
 }
 
-static inline int i915_gem_object_read_from_page(struct xe_bo *bo,
-					  u32 ofs, u64 *ptr, u32 size)
-{
-	struct ttm_bo_kmap_obj map;
-	void *src;
-	bool is_iomem;
-	int ret;
-
-	ret = xe_bo_lock(bo, true);
-	if (ret)
-		return ret;
-
-	ret = ttm_bo_kmap(&bo->ttm, ofs >> PAGE_SHIFT, 1, &map);
-	if (ret)
-		goto out_unlock;
-
-	ofs &= ~PAGE_MASK;
-	src = ttm_kmap_obj_virtual(&map, &is_iomem);
-	src += ofs;
-	if (is_iomem)
-		memcpy_fromio(ptr, (void __iomem *)src, size);
-	else
-		memcpy(ptr, src, size);
-
-	ttm_bo_kunmap(&map);
-out_unlock:
-	xe_bo_unlock(bo);
-	return ret;
-}
-
 #endif
diff --git a/drivers/gpu/drm/xe/display/intel_bo.c b/drivers/gpu/drm/xe/display/intel_bo.c
index 0b4dfa6a0344..c93bc77ad535 100644
--- a/drivers/gpu/drm/xe/display/intel_bo.c
+++ b/drivers/gpu/drm/xe/display/intel_bo.c
@@ -36,3 +36,33 @@ int intel_bo_fb_mmap(struct drm_gem_object *obj, struct vm_area_struct *vma)
 {
 	return drm_gem_prime_mmap(obj, vma);
 }
+
+int intel_bo_read_from_page(struct drm_gem_object *obj, u64 offset, void *dst, int size)
+{
+	struct xe_bo *bo = gem_to_xe_bo(obj);
+	struct ttm_bo_kmap_obj map;
+	void *src;
+	bool is_iomem;
+	int ret;
+
+	ret = xe_bo_lock(bo, true);
+	if (ret)
+		return ret;
+
+	ret = ttm_bo_kmap(&bo->ttm, offset >> PAGE_SHIFT, 1, &map);
+	if (ret)
+		goto out_unlock;
+
+	offset &= ~PAGE_MASK;
+	src = ttm_kmap_obj_virtual(&map, &is_iomem);
+	src += offset;
+	if (is_iomem)
+		memcpy_fromio(dst, (void __iomem *)src, size);
+	else
+		memcpy(dst, src, size);
+
+	ttm_bo_kunmap(&map);
+out_unlock:
+	xe_bo_unlock(bo);
+	return ret;
+}
-- 
2.39.2

