Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52A6EB092EB
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Jul 2025 19:14:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E182410E869;
	Thu, 17 Jul 2025 17:14:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LmtfpeZ1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8558E10E88A;
 Thu, 17 Jul 2025 17:14:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752772443; x=1784308443;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Q8yuZPvxv/51YyWmlcD5++4H5bOruZsxQzcRFCXA2c0=;
 b=LmtfpeZ1RYUu/fgsrgeZ1LfA9VxCLSYbSAva1fVDsLt7kq+Wsrc0K9Xu
 ISJOYYPzcX+sYTwcBtvnXr4AJoI2paQkl5OjcJWuSZHYb19KJddpjAouw
 MVl6FynyCx2j9f90NJ+W/AxCNRfGMbP2yXemMU4K/gn5BlLjMdwuhX2ss
 M/IFtBPj2vlHkPlZnHgFhWcAeLGwPrXCrp3pLqCprCKaPfrB7JNjDlsFG
 jWZ3pWjJyz6RYXUCRd35mYHOVFSxz5/0eFujsCn4Cq3IJYU/Zly06lkR9
 IR7+SMFrHJ3TUVQnpCzWBWrL8yxeETvM1kOupqTd/lKhNjgltjp+9aqzY A==;
X-CSE-ConnectionGUID: ivzyaGHLRKCVwc2BHUmK/A==
X-CSE-MsgGUID: +uxBx/9YT7eJDoID8vNAoQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11495"; a="58729020"
X-IronPort-AV: E=Sophos;i="6.16,319,1744095600"; d="scan'208";a="58729020"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2025 10:14:03 -0700
X-CSE-ConnectionGUID: orLeAu/VRnetYzRckLFpcA==
X-CSE-MsgGUID: jm6tcdORSmy40tK+e+v0Pg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,319,1744095600"; d="scan'208";a="163488736"
Received: from agladkov-desk.ger.corp.intel.com (HELO stinkbox)
 ([10.245.244.179])
 by orviesa005.jf.intel.com with SMTP; 17 Jul 2025 10:14:01 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 17 Jul 2025 20:14:00 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v3 2/6] drm/i915: Nuke intel_plane_ggtt_offset()
Date: Thu, 17 Jul 2025 20:13:48 +0300
Message-ID: <20250717171353.23090-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250717171353.23090-1-ville.syrjala@linux.intel.com>
References: <20250717171353.23090-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

We don't really need the extra intel_plane_ggtt_offset() wrapper
anymore. Get rid of it.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb_pin.c        | 3 ++-
 drivers/gpu/drm/i915/display/intel_plane.c         | 6 ------
 drivers/gpu/drm/i915/display/intel_plane.h         | 1 -
 drivers/gpu/drm/i915/display/intel_plane_initial.c | 2 +-
 drivers/gpu/drm/xe/display/xe_fb_pin.c             | 3 +--
 drivers/gpu/drm/xe/display/xe_plane_initial.c      | 3 ++-
 6 files changed, 6 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.c b/drivers/gpu/drm/i915/display/intel_fb_pin.c
index 5401d5b27e30..340c765d29fe 100644
--- a/drivers/gpu/drm/i915/display/intel_fb_pin.c
+++ b/drivers/gpu/drm/i915/display/intel_fb_pin.c
@@ -11,6 +11,7 @@
 #include "gem/i915_gem_object.h"
 
 #include "i915_drv.h"
+#include "i915_vma.h"
 #include "intel_display_core.h"
 #include "intel_display_rpm.h"
 #include "intel_display_types.h"
@@ -312,7 +313,7 @@ int intel_plane_pin_fb(struct intel_plane_state *plane_state,
 		plane_state->surf = i915_gem_object_get_dma_address(obj, 0) +
 			plane->surf_offset(plane_state);
 	} else {
-		plane_state->surf = intel_plane_ggtt_offset(plane_state) +
+		plane_state->surf = i915_ggtt_offset(plane_state->ggtt_vma) +
 			plane->surf_offset(plane_state);
 	}
 
diff --git a/drivers/gpu/drm/i915/display/intel_plane.c b/drivers/gpu/drm/i915/display/intel_plane.c
index 36fb07471deb..81f05ee9a21a 100644
--- a/drivers/gpu/drm/i915/display/intel_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_plane.c
@@ -46,7 +46,6 @@
 
 #include "gem/i915_gem_object.h"
 #include "i915_scheduler_types.h"
-#include "i915_vma.h"
 #include "i9xx_plane_regs.h"
 #include "intel_bo.h"
 #include "intel_cdclk.h"
@@ -1749,8 +1748,3 @@ int intel_plane_atomic_check(struct intel_atomic_state *state)
 
 	return 0;
 }
-
-u32 intel_plane_ggtt_offset(const struct intel_plane_state *plane_state)
-{
-	return i915_ggtt_offset(plane_state->ggtt_vma);
-}
diff --git a/drivers/gpu/drm/i915/display/intel_plane.h b/drivers/gpu/drm/i915/display/intel_plane.h
index 4ef012c08fa4..8af41ccc0a69 100644
--- a/drivers/gpu/drm/i915/display/intel_plane.h
+++ b/drivers/gpu/drm/i915/display/intel_plane.h
@@ -87,7 +87,6 @@ int intel_plane_add_affected(struct intel_atomic_state *state,
 			     struct intel_crtc *crtc);
 int intel_plane_atomic_check(struct intel_atomic_state *state);
 
-u32 intel_plane_ggtt_offset(const struct intel_plane_state *plane_state);
 bool intel_plane_format_mod_supported_async(struct drm_plane *plane,
 					    u32 format,
 					    u64 modifier);
diff --git a/drivers/gpu/drm/i915/display/intel_plane_initial.c b/drivers/gpu/drm/i915/display/intel_plane_initial.c
index 786edbb43dbb..a9f36b1b50c1 100644
--- a/drivers/gpu/drm/i915/display/intel_plane_initial.c
+++ b/drivers/gpu/drm/i915/display/intel_plane_initial.c
@@ -360,7 +360,7 @@ intel_find_initial_plane_obj(struct intel_crtc *crtc,
 	    i915_vma_pin_fence(vma) == 0 && vma->fence)
 		plane_state->flags |= PLANE_HAS_FENCE;
 
-	plane_state->surf = intel_plane_ggtt_offset(plane_state);
+	plane_state->surf = i915_ggtt_offset(plane_state->ggtt_vma);
 
 	plane_state->uapi.src_x = 0;
 	plane_state->uapi.src_y = 0;
diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/xe/display/xe_fb_pin.c
index 9e5de208b6b4..0ebf6ed9f126 100644
--- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
+++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
@@ -12,7 +12,6 @@
 #include "intel_fb.h"
 #include "intel_fb_pin.h"
 #include "intel_fbdev.h"
-#include "intel_plane.h"
 #include "xe_bo.h"
 #include "xe_device.h"
 #include "xe_ggtt.h"
@@ -434,7 +433,7 @@ int intel_plane_pin_fb(struct intel_plane_state *new_plane_state,
 
 	new_plane_state->ggtt_vma = vma;
 
-	new_plane_state->surf = intel_plane_ggtt_offset(new_plane_state) +
+	new_plane_state->surf = i915_ggtt_offset(new_plane_state->ggtt_vma) +
 		plane->surf_offset(new_plane_state);
 
 	return 0;
diff --git a/drivers/gpu/drm/xe/display/xe_plane_initial.c b/drivers/gpu/drm/xe/display/xe_plane_initial.c
index 2aca28f129d3..3eab9a569661 100644
--- a/drivers/gpu/drm/xe/display/xe_plane_initial.c
+++ b/drivers/gpu/drm/xe/display/xe_plane_initial.c
@@ -10,6 +10,7 @@
 #include "xe_ggtt.h"
 #include "xe_mmio.h"
 
+#include "i915_vma.h"
 #include "intel_crtc.h"
 #include "intel_display.h"
 #include "intel_display_core.h"
@@ -236,7 +237,7 @@ intel_find_initial_plane_obj(struct intel_crtc *crtc,
 
 	plane_state->ggtt_vma = vma;
 
-	plane_state->surf = intel_plane_ggtt_offset(plane_state);
+	plane_state->surf = i915_ggtt_offset(plane_state->ggtt_vma);
 
 	plane_state->uapi.src_x = 0;
 	plane_state->uapi.src_y = 0;
-- 
2.49.0

