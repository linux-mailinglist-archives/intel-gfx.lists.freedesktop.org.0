Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 947A097B2C7
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2024 18:15:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B03610E4B3;
	Tue, 17 Sep 2024 16:15:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gEWancBG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0345B10E4B1;
 Tue, 17 Sep 2024 16:15:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726589737; x=1758125737;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=N5WNlKK9VjWbmOYeIe5mPONFUtGc294cwFXI/2amhRo=;
 b=gEWancBGEkF6AP15IVJIFkHBsjoeE2FQaVZcgplgJVuuwoWwAWxK5Y4f
 lHijfohtEs+PHoVbKAMjcKHzvdhAU9WRNCYgrhYbaGIvZFfUJB2OiHdhg
 9PdPRNfsylOyTwfqE42ubil3deHpjUK9cXtSjzxaVBC13WO9251rROu2k
 7KWIafeNuOhLYB2lMurWewPk2ezJMTbqs5O9wn3s4I34IU3mxRegX3MGF
 DfRe+edkmFnOutRx5YWBVFQFi7AeuFPx48956PGMgMgVK5GOPcYNhaKiS
 E9JFIwyJhQpF25S7uKIgBk1sPcsxNcq8WXCo9PCy2Rip5Eb8CoCTkT4/6 w==;
X-CSE-ConnectionGUID: l6uJ/ObBQDCrEWFUBI9+rQ==
X-CSE-MsgGUID: PRYza0mlRROO3tbIEcODNA==
X-IronPort-AV: E=McAfee;i="6700,10204,11198"; a="24990301"
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="24990301"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2024 09:15:36 -0700
X-CSE-ConnectionGUID: rBC4hCm9RemcEoxxfNRVOQ==
X-CSE-MsgGUID: iJjxwrEyTIiB78RhSz6V3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="73337108"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.102])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2024 09:15:34 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: rodrigo.vivi@intel.com, lucas.demarchi@intel.com,
 ville.syrjala@linux.intel.com, maarten.lankhorst@linux.intel.com,
 jani.nikula@intel.com
Subject: [PATCH 14/22] drm/i915/display: add intel_bo_get/set_frontbuffer()
 and use them
Date: Tue, 17 Sep 2024 19:13:53 +0300
Message-Id: <3120ec430656f04701077dda39cce5f1ed415eee.1726589119.git.jani.nikula@intel.com>
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

Add the struct drm_gem_object based interfaces.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bo.c          | 12 ++++++++++++
 drivers/gpu/drm/i915/display/intel_bo.h          |  4 ++++
 drivers/gpu/drm/i915/display/intel_frontbuffer.c |  7 ++++---
 drivers/gpu/drm/xe/display/intel_bo.c            | 11 +++++++++++
 4 files changed, 31 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bo.c b/drivers/gpu/drm/i915/display/intel_bo.c
index 5643835cdfec..3881b9ad08ee 100644
--- a/drivers/gpu/drm/i915/display/intel_bo.c
+++ b/drivers/gpu/drm/i915/display/intel_bo.c
@@ -3,6 +3,7 @@
 
 #include "gem/i915_gem_mman.h"
 #include "gem/i915_gem_object.h"
+#include "gem/i915_gem_object_frontbuffer.h"
 #include "intel_bo.h"
 
 bool intel_bo_is_tiled(struct drm_gem_object *obj)
@@ -39,3 +40,14 @@ int intel_bo_read_from_page(struct drm_gem_object *obj, u64 offset, void *dst, i
 {
 	return i915_gem_object_read_from_page(to_intel_bo(obj), offset, dst, size);
 }
+
+struct intel_frontbuffer *intel_bo_get_frontbuffer(struct drm_gem_object *obj)
+{
+	return i915_gem_object_get_frontbuffer(to_intel_bo(obj));
+}
+
+struct intel_frontbuffer *intel_bo_set_frontbuffer(struct drm_gem_object *obj,
+						   struct intel_frontbuffer *front)
+{
+	return i915_gem_object_set_frontbuffer(to_intel_bo(obj), front);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_bo.h b/drivers/gpu/drm/i915/display/intel_bo.h
index 2aab8e25b471..df0bd8c871a5 100644
--- a/drivers/gpu/drm/i915/display/intel_bo.h
+++ b/drivers/gpu/drm/i915/display/intel_bo.h
@@ -17,4 +17,8 @@ void intel_bo_flush_if_display(struct drm_gem_object *obj);
 int intel_bo_fb_mmap(struct drm_gem_object *obj, struct vm_area_struct *vma);
 int intel_bo_read_from_page(struct drm_gem_object *obj, u64 offset, void *dst, int size);
 
+struct intel_frontbuffer *intel_bo_get_frontbuffer(struct drm_gem_object *obj);
+struct intel_frontbuffer *intel_bo_set_frontbuffer(struct drm_gem_object *obj,
+						   struct intel_frontbuffer *front);
+
 #endif /* __INTEL_BO__ */
diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.c b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
index e56d596485c3..1be72901efb0 100644
--- a/drivers/gpu/drm/i915/display/intel_frontbuffer.c
+++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
@@ -59,6 +59,7 @@
 #include "gem/i915_gem_object_types.h"
 #include "i915_active.h"
 #include "i915_drv.h"
+#include "intel_bo.h"
 #include "intel_display_trace.h"
 #include "intel_display_types.h"
 #include "intel_dp.h"
@@ -266,7 +267,7 @@ static void frontbuffer_release(struct kref *ref)
 
 	i915_ggtt_clear_scanout(obj);
 
-	ret = i915_gem_object_set_frontbuffer(obj, NULL);
+	ret = intel_bo_set_frontbuffer(intel_bo_to_drm_bo(obj), NULL);
 	drm_WARN_ON(&intel_bo_to_i915(obj)->drm, ret);
 	spin_unlock(&intel_bo_to_i915(obj)->display.fb_tracking.lock);
 
@@ -280,7 +281,7 @@ intel_frontbuffer_get(struct drm_i915_gem_object *obj)
 	struct drm_i915_private *i915 = intel_bo_to_i915(obj);
 	struct intel_frontbuffer *front, *cur;
 
-	front = i915_gem_object_get_frontbuffer(obj);
+	front = intel_bo_get_frontbuffer(intel_bo_to_drm_bo(obj));
 	if (front)
 		return front;
 
@@ -298,7 +299,7 @@ intel_frontbuffer_get(struct drm_i915_gem_object *obj)
 	INIT_WORK(&front->flush_work, intel_frontbuffer_flush_work);
 
 	spin_lock(&i915->display.fb_tracking.lock);
-	cur = i915_gem_object_set_frontbuffer(obj, front);
+	cur = intel_bo_set_frontbuffer(intel_bo_to_drm_bo(obj), front);
 	spin_unlock(&i915->display.fb_tracking.lock);
 	if (cur != front)
 		kfree(front);
diff --git a/drivers/gpu/drm/xe/display/intel_bo.c b/drivers/gpu/drm/xe/display/intel_bo.c
index c93bc77ad535..d4007b00b121 100644
--- a/drivers/gpu/drm/xe/display/intel_bo.c
+++ b/drivers/gpu/drm/xe/display/intel_bo.c
@@ -66,3 +66,14 @@ int intel_bo_read_from_page(struct drm_gem_object *obj, u64 offset, void *dst, i
 	xe_bo_unlock(bo);
 	return ret;
 }
+
+struct intel_frontbuffer *intel_bo_get_frontbuffer(struct drm_gem_object *obj)
+{
+	return NULL;
+}
+
+struct intel_frontbuffer *intel_bo_set_frontbuffer(struct drm_gem_object *obj,
+						   struct intel_frontbuffer *front)
+{
+	return front;
+}
-- 
2.39.2

