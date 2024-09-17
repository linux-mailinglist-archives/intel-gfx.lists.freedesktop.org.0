Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ED1F97B2B7
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2024 18:14:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFC1910E4A9;
	Tue, 17 Sep 2024 16:14:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OBacW9rf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 478E110E4A2;
 Tue, 17 Sep 2024 16:14:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726589683; x=1758125683;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zU7TZ8T7UPSdlqoYGw2Vm2OFw5cglWriua0cRsSY7jA=;
 b=OBacW9rfy6lFUbUNuQTZZcWQCGWAELBTMbTLFdj7/nSzijpB3X4KZ8Ud
 Bie3hF/ugcPszpMlywoDBbQSsGXbkIi6YtbFw3e4ime+Nhnx37yLWlYJ/
 0K5OxnrwBdIrmkyO5frKRHwiHwUoE6dHMqA2xdRPQALYb4mdzHMUadzer
 Iymz3kAmdPdfMYP+tGSWhGR7CjXqADPYp23Xfhrong+xbTJFKU6QkR00d
 LB/AEXQjBhokQWB/zgIqyx1rqKZroGiGFTe7+MdQPhv/2IbR9XdMO0/ow
 QX9E7JUNaVeQ8sgXVmUi1Ei5wSeh/Vlub4kn0JmHMIvVDFzy0vYKyYBYq w==;
X-CSE-ConnectionGUID: MKhehnZcT8aZs/pgY0GAEw==
X-CSE-MsgGUID: liS3AacUSq6v0EKUQEFxSg==
X-IronPort-AV: E=McAfee;i="6700,10204,11198"; a="42933906"
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="42933906"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2024 09:14:42 -0700
X-CSE-ConnectionGUID: c063qrbBSKKElxZH07HVRw==
X-CSE-MsgGUID: 5J3a8HhnQ4Gn6ZWi4EZJww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="69717887"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.102])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2024 09:14:40 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: rodrigo.vivi@intel.com, lucas.demarchi@intel.com,
 ville.syrjala@linux.intel.com, maarten.lankhorst@linux.intel.com,
 jani.nikula@intel.com
Subject: [PATCH 05/22] drm/i915/display: convert skl_universal_plane.c to
 struct drm_gem_object
Date: Tue, 17 Sep 2024 19:13:44 +0300
Message-Id: <0a6d2bec50764efaae4322c9cfa33eefbfe1c054.1726589119.git.jani.nikula@intel.com>
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

Prefer the driver agnostic struct drm_gem_object over i915 specific
struct drm_i915_gem_object. Add new intel_bo_* functions as
needed. Convert intel_pxp_key_check() to struct drm_gem_object.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bo.c                |  5 +++++
 drivers/gpu/drm/i915/display/intel_bo.h                |  1 +
 drivers/gpu/drm/i915/display/skl_universal_plane.c     |  5 +++--
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c         |  2 +-
 drivers/gpu/drm/i915/pxp/intel_pxp.c                   |  4 +++-
 drivers/gpu/drm/i915/pxp/intel_pxp.h                   |  4 ++--
 drivers/gpu/drm/xe/compat-i915-headers/pxp/intel_pxp.h | 10 ++--------
 drivers/gpu/drm/xe/display/intel_bo.c                  |  5 +++++
 8 files changed, 22 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bo.c b/drivers/gpu/drm/i915/display/intel_bo.c
index c0d050cec4ad..681970cf8701 100644
--- a/drivers/gpu/drm/i915/display/intel_bo.c
+++ b/drivers/gpu/drm/i915/display/intel_bo.c
@@ -20,6 +20,11 @@ bool intel_bo_is_shmem(struct drm_gem_object *obj)
 	return i915_gem_object_is_shmem(to_intel_bo(obj));
 }
 
+bool intel_bo_is_protected(struct drm_gem_object *obj)
+{
+	return i915_gem_object_is_protected(to_intel_bo(obj));
+}
+
 void intel_bo_flush_if_display(struct drm_gem_object *obj)
 {
 	i915_gem_object_flush_if_display(to_intel_bo(obj));
diff --git a/drivers/gpu/drm/i915/display/intel_bo.h b/drivers/gpu/drm/i915/display/intel_bo.h
index 410f285d2ea1..222a12283a5a 100644
--- a/drivers/gpu/drm/i915/display/intel_bo.h
+++ b/drivers/gpu/drm/i915/display/intel_bo.h
@@ -12,6 +12,7 @@ struct vm_area_struct;
 bool intel_bo_is_tiled(struct drm_gem_object *obj);
 bool intel_bo_is_userptr(struct drm_gem_object *obj);
 bool intel_bo_is_shmem(struct drm_gem_object *obj);
+bool intel_bo_is_protected(struct drm_gem_object *obj);
 void intel_bo_flush_if_display(struct drm_gem_object *obj);
 int intel_bo_fb_mmap(struct drm_gem_object *obj, struct vm_area_struct *vma);
 
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 17d4c880ecc4..fdb141cfa427 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -11,6 +11,7 @@
 #include "i915_drv.h"
 #include "i915_reg.h"
 #include "intel_atomic_plane.h"
+#include "intel_bo.h"
 #include "intel_de.h"
 #include "intel_display_irq.h"
 #include "intel_display_types.h"
@@ -2084,13 +2085,13 @@ static void check_protection(struct intel_plane_state *plane_state)
 	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
 	struct drm_i915_private *i915 = to_i915(plane->base.dev);
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
-	struct drm_i915_gem_object *obj = intel_fb_obj(fb);
+	struct drm_gem_object *obj = intel_fb_bo(fb);
 
 	if (DISPLAY_VER(i915) < 11)
 		return;
 
 	plane_state->decrypt = intel_pxp_key_check(i915->pxp, obj, false) == 0;
-	plane_state->force_black = i915_gem_object_is_protected(obj) &&
+	plane_state->force_black = intel_bo_is_protected(obj) &&
 		!plane_state->decrypt;
 }
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index a3b83cfe1726..f151640c1d13 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -915,7 +915,7 @@ static struct i915_vma *eb_lookup_vma(struct i915_execbuffer *eb, u32 handle)
 		 */
 		if (i915_gem_context_uses_protected_content(eb->gem_context) &&
 		    i915_gem_object_is_protected(obj)) {
-			err = intel_pxp_key_check(eb->i915->pxp, obj, true);
+			err = intel_pxp_key_check(eb->i915->pxp, intel_bo_to_drm_bo(obj), true);
 			if (err) {
 				i915_gem_object_put(obj);
 				return ERR_PTR(err);
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
index 75278e78ca90..3a40e4ece925 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -461,9 +461,11 @@ void intel_pxp_fini_hw(struct intel_pxp *pxp)
 }
 
 int intel_pxp_key_check(struct intel_pxp *pxp,
-			struct drm_i915_gem_object *obj,
+			struct drm_gem_object *_obj,
 			bool assign)
 {
+	struct drm_i915_gem_object *obj = to_intel_bo(_obj);
+
 	if (!intel_pxp_is_active(pxp))
 		return -ENODEV;
 
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h b/drivers/gpu/drm/i915/pxp/intel_pxp.h
index d9372f6f7797..4ed97db5e7c6 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
@@ -9,7 +9,7 @@
 #include <linux/errno.h>
 #include <linux/types.h>
 
-struct drm_i915_gem_object;
+struct drm_gem_object;
 struct drm_i915_private;
 struct intel_pxp;
 
@@ -32,7 +32,7 @@ int intel_pxp_start(struct intel_pxp *pxp);
 void intel_pxp_end(struct intel_pxp *pxp);
 
 int intel_pxp_key_check(struct intel_pxp *pxp,
-			struct drm_i915_gem_object *obj,
+			struct drm_gem_object *obj,
 			bool assign);
 
 void intel_pxp_invalidate(struct intel_pxp *pxp);
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/pxp/intel_pxp.h b/drivers/gpu/drm/xe/compat-i915-headers/pxp/intel_pxp.h
index c2c30ece8f77..5dfc587c8237 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/pxp/intel_pxp.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/pxp/intel_pxp.h
@@ -9,20 +9,14 @@
 #include <linux/errno.h>
 #include <linux/types.h>
 
-struct drm_i915_gem_object;
+struct drm_gem_object;
 struct intel_pxp;
 
 static inline int intel_pxp_key_check(struct intel_pxp *pxp,
-				      struct drm_i915_gem_object *obj,
+				      struct drm_gem_object *obj,
 				      bool assign)
 {
 	return -ENODEV;
 }
 
-static inline bool
-i915_gem_object_is_protected(const struct drm_i915_gem_object *obj)
-{
-	return false;
-}
-
 #endif
diff --git a/drivers/gpu/drm/xe/display/intel_bo.c b/drivers/gpu/drm/xe/display/intel_bo.c
index 2549f88115df..0b4dfa6a0344 100644
--- a/drivers/gpu/drm/xe/display/intel_bo.c
+++ b/drivers/gpu/drm/xe/display/intel_bo.c
@@ -23,6 +23,11 @@ bool intel_bo_is_shmem(struct drm_gem_object *obj)
 	return false;
 }
 
+bool intel_bo_is_protected(struct drm_gem_object *obj)
+{
+	return false;
+}
+
 void intel_bo_flush_if_display(struct drm_gem_object *obj)
 {
 }
-- 
2.39.2

