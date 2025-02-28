Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DEAFDA49888
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2025 12:45:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4273410EB2E;
	Fri, 28 Feb 2025 11:45:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Z7OQ9r34";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 891EE10EB2E;
 Fri, 28 Feb 2025 11:45:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740743136; x=1772279136;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Y4slCbLLqtH0g17cRuGlnBdmmdL0g17zjjKykuNnp+M=;
 b=Z7OQ9r34iq6WOguquyoE7QnrhXGyf5J4qHTiVV7sdDeDqQB5Zzcc5DSN
 Wr0Ab7dQiuD+cSCCrd9LgiVQt+NfsuDB4BdZIvo4NhKAeYCR1dM0bbPbn
 D6WmYgfr/KWC70/A1DzZvsPTG0FTh7VLTY1sRALslH95MybNLwtOqd0Ww
 SzGTB69ellqiBKSdVJ4LJG4XqQ1Uzox9d3FiBA+hkDTCBgvauQs6Spok4
 tLzemfaJ2Ea7hu5pBDXLSsOJFNLm99lc7uzhKmMPubZ1sUQBBP19B8ZT7
 DPPaBPk74LRp7XlJA+pgrFqgb+9tPRAaA7v3pCNLVcAl5mL+fMAgEb4vA w==;
X-CSE-ConnectionGUID: +JmxYvNmSkquyYR5veEpYw==
X-CSE-MsgGUID: UDspxTxtRI6dGGQYm/2/4A==
X-IronPort-AV: E=McAfee;i="6700,10204,11358"; a="41796198"
X-IronPort-AV: E=Sophos;i="6.13,322,1732608000"; d="scan'208";a="41796198"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2025 03:45:34 -0800
X-CSE-ConnectionGUID: PsMTqHsmRbqtJUkZXLP8aA==
X-CSE-MsgGUID: 8LPgbYIqQzuejrb5eQqyXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,322,1732608000"; d="scan'208";a="140546106"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.24])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2025 03:45:31 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
 Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 Alan Previn <alan.previn.teres.alexis@intel.com>
Subject: [PATCH v2] drm/i915/pxp & drm/xe/pxp: Figure out pxp instance from
 the gem object
Date: Fri, 28 Feb 2025 13:45:27 +0200
Message-Id: <20250228114527.3091620-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
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

It's undesirable to have to figure out the pxp pointer in display
code. For one thing, its type is different for i915 and xe.

Since we can figure the pxp pointer out in the pxp code from the gem
object, offload it there.

v2: Rebase

Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>

---

Couldn't merge this before getting i915 and xe branches synced. Rebase
and resend.
---
 drivers/gpu/drm/i915/display/skl_universal_plane.c     | 3 +--
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c         | 2 +-
 drivers/gpu/drm/i915/pxp/intel_pxp.c                   | 6 +++---
 drivers/gpu/drm/i915/pxp/intel_pxp.h                   | 4 +---
 drivers/gpu/drm/xe/compat-i915-headers/pxp/intel_pxp.h | 7 ++-----
 drivers/gpu/drm/xe/xe_pxp.c                            | 9 ++++++---
 drivers/gpu/drm/xe/xe_pxp.h                            | 2 +-
 7 files changed, 15 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 3488c7ae6d8a..87d003498722 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -2258,14 +2258,13 @@ static bool skl_fb_scalable(const struct drm_framebuffer *fb)
 static void check_protection(struct intel_plane_state *plane_state)
 {
 	struct intel_display *display = to_intel_display(plane_state);
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
 	struct drm_gem_object *obj = intel_fb_bo(fb);
 
 	if (DISPLAY_VER(display) < 11)
 		return;
 
-	plane_state->decrypt = intel_pxp_key_check(i915->pxp, obj, false) == 0;
+	plane_state->decrypt = intel_pxp_key_check(obj, false) == 0;
 	plane_state->force_black = intel_bo_is_protected(obj) &&
 		!plane_state->decrypt;
 }
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index c8107502190d..7796c4119ef5 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -915,7 +915,7 @@ static struct i915_vma *eb_lookup_vma(struct i915_execbuffer *eb, u32 handle)
 		 */
 		if (i915_gem_context_uses_protected_content(eb->gem_context) &&
 		    i915_gem_object_is_protected(obj)) {
-			err = intel_pxp_key_check(eb->i915->pxp, intel_bo_to_drm_bo(obj), true);
+			err = intel_pxp_key_check(intel_bo_to_drm_bo(obj), true);
 			if (err) {
 				i915_gem_object_put(obj);
 				return ERR_PTR(err);
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
index 9cf169665d7c..f8da693ad3ce 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -460,11 +460,11 @@ void intel_pxp_fini_hw(struct intel_pxp *pxp)
 	intel_pxp_irq_disable(pxp);
 }
 
-int intel_pxp_key_check(struct intel_pxp *pxp,
-			struct drm_gem_object *_obj,
-			bool assign)
+int intel_pxp_key_check(struct drm_gem_object *_obj, bool assign)
 {
 	struct drm_i915_gem_object *obj = to_intel_bo(_obj);
+	struct drm_i915_private *i915 = to_i915(_obj->dev);
+	struct intel_pxp *pxp = i915->pxp;
 
 	if (!intel_pxp_is_active(pxp))
 		return -ENODEV;
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h b/drivers/gpu/drm/i915/pxp/intel_pxp.h
index 4ed97db5e7c6..7b19109845a3 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
@@ -31,9 +31,7 @@ int intel_pxp_get_backend_timeout_ms(struct intel_pxp *pxp);
 int intel_pxp_start(struct intel_pxp *pxp);
 void intel_pxp_end(struct intel_pxp *pxp);
 
-int intel_pxp_key_check(struct intel_pxp *pxp,
-			struct drm_gem_object *obj,
-			bool assign);
+int intel_pxp_key_check(struct drm_gem_object *obj, bool assign);
 
 void intel_pxp_invalidate(struct intel_pxp *pxp);
 
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/pxp/intel_pxp.h b/drivers/gpu/drm/xe/compat-i915-headers/pxp/intel_pxp.h
index d2eb8e1f6c4b..97fd0ddf0b3a 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/pxp/intel_pxp.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/pxp/intel_pxp.h
@@ -12,11 +12,8 @@
 #include "xe_pxp.h"
 
 struct drm_gem_object;
-struct xe_pxp;
 
-static inline int intel_pxp_key_check(struct xe_pxp *pxp,
-				      struct drm_gem_object *obj,
-				      bool assign)
+static inline int intel_pxp_key_check(struct drm_gem_object *obj, bool assign)
 {
 	/*
 	 * The assign variable is used in i915 to assign the key to the BO at
@@ -26,7 +23,7 @@ static inline int intel_pxp_key_check(struct xe_pxp *pxp,
 	if (assign)
 		return -EINVAL;
 
-	return xe_pxp_obj_key_check(pxp, obj);
+	return xe_pxp_obj_key_check(obj);
 }
 
 #endif
diff --git a/drivers/gpu/drm/xe/xe_pxp.c b/drivers/gpu/drm/xe/xe_pxp.c
index 47499ca02693..454ea7dc08ac 100644
--- a/drivers/gpu/drm/xe/xe_pxp.c
+++ b/drivers/gpu/drm/xe/xe_pxp.c
@@ -796,7 +796,6 @@ int xe_pxp_bo_key_check(struct xe_pxp *pxp, struct xe_bo *bo)
 
 /**
  * xe_pxp_obj_key_check - check if the key used by a drm_gem_obj is valid
- * @pxp: the xe->pxp pointer (it will be NULL if PXP is disabled)
  * @obj: the drm_gem_obj we want to check
  *
  * Checks whether a drm_gem_obj was encrypted with the current key or an
@@ -805,9 +804,13 @@ int xe_pxp_bo_key_check(struct xe_pxp *pxp, struct xe_bo *bo)
  * Returns: 0 if the key is valid, -ENODEV if PXP is disabled, -EINVAL if the
  * obj is not using PXP,  -ENOEXEC if the key is not valid.
  */
-int xe_pxp_obj_key_check(struct xe_pxp *pxp, struct drm_gem_object *obj)
+int xe_pxp_obj_key_check(struct drm_gem_object *obj)
 {
-	return xe_pxp_bo_key_check(pxp, gem_to_xe_bo(obj));
+	struct xe_bo *bo = gem_to_xe_bo(obj);
+	struct xe_device *xe = xe_bo_device(bo);
+	struct xe_pxp *pxp = xe->pxp;
+
+	return xe_pxp_bo_key_check(pxp, bo);
 }
 
 /**
diff --git a/drivers/gpu/drm/xe/xe_pxp.h b/drivers/gpu/drm/xe/xe_pxp.h
index 546b156d63aa..71a23280b900 100644
--- a/drivers/gpu/drm/xe/xe_pxp.h
+++ b/drivers/gpu/drm/xe/xe_pxp.h
@@ -30,6 +30,6 @@ void xe_pxp_exec_queue_remove(struct xe_pxp *pxp, struct xe_exec_queue *q);
 
 int xe_pxp_key_assign(struct xe_pxp *pxp, struct xe_bo *bo);
 int xe_pxp_bo_key_check(struct xe_pxp *pxp, struct xe_bo *bo);
-int xe_pxp_obj_key_check(struct xe_pxp *pxp, struct drm_gem_object *obj);
+int xe_pxp_obj_key_check(struct drm_gem_object *obj);
 
 #endif /* __XE_PXP_H__ */
-- 
2.39.5

