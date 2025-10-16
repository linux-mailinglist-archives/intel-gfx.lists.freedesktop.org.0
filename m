Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 99BE0BE51F9
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Oct 2025 20:54:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 012E310E342;
	Thu, 16 Oct 2025 18:54:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Z6UaqQJT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3032D10E342;
 Thu, 16 Oct 2025 18:54:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760640869; x=1792176869;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=f0EZvylB9Gwjp0oAWBj1+XUktaPua4WGJRW57/b7HIU=;
 b=Z6UaqQJT8o1GUPHnbdzBcG/5h5Rb+5gXP+Ko6zzDGf9cLhDmC7daQOBw
 siveDwJSyyrLT8vC9I4ETKPCs+IEQCS7ZABln0KBRxE1+WroHL6CiK7iR
 PSlmq+75c70UYDFwmkQRLChpCKdkSj5x1GLiviZfrvZsDKDmE4WsRLO8a
 7abqSlBNTWmEOrtCYjIVcH49q1xrdxgHVdTXkWt4lLalOi0aQobRr0NTR
 px7ec+4lDT41zMx7je86tMZE+qWMNppzgIrdAyOT0wNMeK11rM4ubIGTK
 jtoD0l4kNVSjvmlOEeY20cWmd0V+GTGg9Tdxj4nT8f/FngFTaQNoWod03 Q==;
X-CSE-ConnectionGUID: G/5wHVojRg2EKyYkgMZPDg==
X-CSE-MsgGUID: CzyY8hUvTUeI60tGZPR5UA==
X-IronPort-AV: E=McAfee;i="6800,10657,11584"; a="62894813"
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="62894813"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 11:54:29 -0700
X-CSE-ConnectionGUID: cBWNn49ZQqe1i3G3P9gLyA==
X-CSE-MsgGUID: lv1DrsSIRRikPjXz8tXz8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="182514574"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.12])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 11:54:28 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 04/10] drm/i915/frontbuffer: Turn
 intel_bo_flush_if_display() into a frontbuffer operation
Date: Thu, 16 Oct 2025 21:54:02 +0300
Message-ID: <20251016185408.22735-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251016185408.22735-1-ville.syrjala@linux.intel.com>
References: <20251016185408.22735-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Convert intel_bo_flush_if_display() to be an operation on the
frontbuffer object rather than the underlying gem bo. This
will help with cleaning up the frontbuffer xe/i915 vs. display
split.

Acked-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bo.c          | 10 +++++-----
 drivers/gpu/drm/i915/display/intel_bo.h          |  2 +-
 drivers/gpu/drm/i915/display/intel_fb.c          |  2 +-
 drivers/gpu/drm/i915/display/intel_frontbuffer.c |  2 +-
 drivers/gpu/drm/xe/display/intel_bo.c            |  8 ++++----
 5 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bo.c b/drivers/gpu/drm/i915/display/intel_bo.c
index 6ae1374d5c2b..2792aca7bc22 100644
--- a/drivers/gpu/drm/i915/display/intel_bo.c
+++ b/drivers/gpu/drm/i915/display/intel_bo.c
@@ -29,11 +29,6 @@ bool intel_bo_is_protected(struct drm_gem_object *obj)
 	return i915_gem_object_is_protected(to_intel_bo(obj));
 }
 
-void intel_bo_flush_if_display(struct drm_gem_object *obj)
-{
-	i915_gem_object_flush_if_display(to_intel_bo(obj));
-}
-
 int intel_bo_fb_mmap(struct drm_gem_object *obj, struct vm_area_struct *vma)
 {
 	return i915_gem_fb_mmap(to_intel_bo(obj), vma);
@@ -55,6 +50,11 @@ struct intel_frontbuffer *intel_bo_set_frontbuffer(struct drm_gem_object *obj,
 	return i915_gem_object_set_frontbuffer(to_intel_bo(obj), front);
 }
 
+void intel_bo_frontbuffer_flush_for_display(struct intel_frontbuffer *front)
+{
+	i915_gem_object_flush_if_display(to_intel_bo(front->obj));
+}
+
 void intel_bo_describe(struct seq_file *m, struct drm_gem_object *obj)
 {
 	i915_debugfs_describe_obj(m, to_intel_bo(obj));
diff --git a/drivers/gpu/drm/i915/display/intel_bo.h b/drivers/gpu/drm/i915/display/intel_bo.h
index 48d87019e48a..08247bf36d40 100644
--- a/drivers/gpu/drm/i915/display/intel_bo.h
+++ b/drivers/gpu/drm/i915/display/intel_bo.h
@@ -16,13 +16,13 @@ bool intel_bo_is_tiled(struct drm_gem_object *obj);
 bool intel_bo_is_userptr(struct drm_gem_object *obj);
 bool intel_bo_is_shmem(struct drm_gem_object *obj);
 bool intel_bo_is_protected(struct drm_gem_object *obj);
-void intel_bo_flush_if_display(struct drm_gem_object *obj);
 int intel_bo_fb_mmap(struct drm_gem_object *obj, struct vm_area_struct *vma);
 int intel_bo_read_from_page(struct drm_gem_object *obj, u64 offset, void *dst, int size);
 
 struct intel_frontbuffer *intel_bo_get_frontbuffer(struct drm_gem_object *obj);
 struct intel_frontbuffer *intel_bo_set_frontbuffer(struct drm_gem_object *obj,
 						   struct intel_frontbuffer *front);
+void intel_bo_frontbuffer_flush_for_display(struct intel_frontbuffer *front);
 
 void intel_bo_describe(struct seq_file *m, struct drm_gem_object *obj);
 
diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index 3958628c73e9..ab301c657395 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -2194,7 +2194,7 @@ static int intel_user_framebuffer_dirty(struct drm_framebuffer *fb,
 	return ret;
 
 flush:
-	intel_bo_flush_if_display(obj);
+	intel_bo_frontbuffer_flush_for_display(front);
 	intel_frontbuffer_flush(front, ORIGIN_DIRTYFB);
 	return ret;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.c b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
index 53e93985c7d4..5562801d2ea3 100644
--- a/drivers/gpu/drm/i915/display/intel_frontbuffer.c
+++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
@@ -167,7 +167,7 @@ static void intel_frontbuffer_flush_work(struct work_struct *work)
 	struct intel_frontbuffer *front =
 		container_of(work, struct intel_frontbuffer, flush_work);
 
-	intel_bo_flush_if_display(front->obj);
+	intel_bo_frontbuffer_flush_for_display(front);
 	intel_frontbuffer_flush(front, ORIGIN_DIRTYFB);
 	intel_frontbuffer_put(front);
 }
diff --git a/drivers/gpu/drm/xe/display/intel_bo.c b/drivers/gpu/drm/xe/display/intel_bo.c
index 27437c22bd70..2437c00a2d3e 100644
--- a/drivers/gpu/drm/xe/display/intel_bo.c
+++ b/drivers/gpu/drm/xe/display/intel_bo.c
@@ -28,10 +28,6 @@ bool intel_bo_is_protected(struct drm_gem_object *obj)
 	return xe_bo_is_protected(gem_to_xe_bo(obj));
 }
 
-void intel_bo_flush_if_display(struct drm_gem_object *obj)
-{
-}
-
 int intel_bo_fb_mmap(struct drm_gem_object *obj, struct vm_area_struct *vma)
 {
 	return drm_gem_prime_mmap(obj, vma);
@@ -55,6 +51,10 @@ struct intel_frontbuffer *intel_bo_set_frontbuffer(struct drm_gem_object *obj,
 	return front;
 }
 
+void intel_bo_frontbuffer_flush_for_display(struct intel_frontbuffer *front)
+{
+}
+
 void intel_bo_describe(struct seq_file *m, struct drm_gem_object *obj)
 {
 	/* FIXME */
-- 
2.49.1

