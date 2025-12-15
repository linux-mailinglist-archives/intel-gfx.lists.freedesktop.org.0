Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 736C6CBEA66
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Dec 2025 16:29:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC23410E5FA;
	Mon, 15 Dec 2025 15:29:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="K3oaJoQF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 110F910E5FA;
 Mon, 15 Dec 2025 15:29:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765812565; x=1797348565;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/PtpL+7v/DOi149sHpkFTi6ihjJZKk+uQILbMytJzPs=;
 b=K3oaJoQF8Pf0GJWNhQ+sdIq2RAMZL6r9h9ZpPgXDiSpOAlr3Ee0+e71i
 JxBrR64rPU8i3c9pr5mXOTsueiHkqSVvNt3+1K0YsgcoZg5NnMSgp0U0P
 5E2bKQULltM95KcqbEJK9xbdP5EgvL0RjMcs2efWXim5Qqvb/4xHOOIfX
 ShxHA831qtIb6rhlahh9Id2+2dRZhmuyj6Rw0+ds2DS2Mr2Q9mV6cHmi+
 3/9L6Iq2tcws1+TBcDm6A1wsGtzsPgyp1x2ccM4RsGcMnYFVf4gsLpmux
 TCNdrwpK1zifW08gfj19Fo/tnx16jF/moNUK/btcYpOZifXfI0X2J3MW+ Q==;
X-CSE-ConnectionGUID: C346Ky3aSEiqH8rZZOS1EA==
X-CSE-MsgGUID: nyuNJ8qxTC2yxDAqlJkErw==
X-IronPort-AV: E=McAfee;i="6800,10657,11643"; a="85310395"
X-IronPort-AV: E=Sophos;i="6.21,151,1763452800"; d="scan'208";a="85310395"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2025 07:29:25 -0800
X-CSE-ConnectionGUID: 6uaknu8bRWioMtHm8v89qA==
X-CSE-MsgGUID: 9J+xqsBoS7WzVWOQQHoOWQ==
X-ExtLoop1: 1
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.106])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2025 07:29:23 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 11/15] drm/{i915,
 xe}: deduplicate intel_alloc_initial_plane_obj() FB modifier checks
Date: Mon, 15 Dec 2025 17:28:25 +0200
Message-ID: <3c62ad48595aa2306219b1d6a215cf7680a67da2.1765812266.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1765812266.git.jani.nikula@intel.com>
References: <cover.1765812266.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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

Move the modifier checks into common code to deduplicate.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_initial_plane.c | 14 ++++++++++++++
 drivers/gpu/drm/i915/i915_initial_plane.c          | 13 -------------
 drivers/gpu/drm/xe/display/xe_initial_plane.c      | 13 -------------
 3 files changed, 14 insertions(+), 26 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_initial_plane.c b/drivers/gpu/drm/i915/display/intel_initial_plane.c
index cbfcc52f180f..e45d2f4e80ad 100644
--- a/drivers/gpu/drm/i915/display/intel_initial_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_initial_plane.c
@@ -1,6 +1,7 @@
 // SPDX-License-Identifier: MIT
 /* Copyright © 2025 Intel Corporation */
 
+#include <drm/drm_print.h>
 #include <drm/intel/display_parent_interface.h>
 
 #include "intel_display_core.h"
@@ -47,6 +48,19 @@ intel_alloc_initial_plane_obj(struct intel_crtc *crtc,
 			      struct intel_initial_plane_config *plane_config)
 {
 	struct intel_display *display = to_intel_display(crtc);
+	struct intel_framebuffer *fb = plane_config->fb;
+
+	switch (fb->base.modifier) {
+	case DRM_FORMAT_MOD_LINEAR:
+	case I915_FORMAT_MOD_X_TILED:
+	case I915_FORMAT_MOD_Y_TILED:
+	case I915_FORMAT_MOD_4_TILED:
+		break;
+	default:
+		drm_dbg_kms(display->drm, "Unsupported modifier for initial FB: 0x%llx\n",
+			    fb->base.modifier);
+		return NULL;
+	}
 
 	return display->parent->initial_plane->alloc_obj(&crtc->base, plane_config);
 }
diff --git a/drivers/gpu/drm/i915/i915_initial_plane.c b/drivers/gpu/drm/i915/i915_initial_plane.c
index 0117f9e115d1..5f7dfe7c6d42 100644
--- a/drivers/gpu/drm/i915/i915_initial_plane.c
+++ b/drivers/gpu/drm/i915/i915_initial_plane.c
@@ -240,19 +240,6 @@ i915_alloc_initial_plane_obj(struct drm_crtc *_crtc,
 	struct drm_framebuffer *fb = &plane_config->fb->base;
 	struct i915_vma *vma;
 
-	switch (fb->modifier) {
-	case DRM_FORMAT_MOD_LINEAR:
-	case I915_FORMAT_MOD_X_TILED:
-	case I915_FORMAT_MOD_Y_TILED:
-	case I915_FORMAT_MOD_4_TILED:
-		break;
-	default:
-		drm_dbg(display->drm,
-			"Unsupported modifier for initial FB: 0x%llx\n",
-			fb->modifier);
-		return NULL;
-	}
-
 	vma = initial_plane_vma(display, plane_config);
 	if (!vma)
 		return NULL;
diff --git a/drivers/gpu/drm/xe/display/xe_initial_plane.c b/drivers/gpu/drm/xe/display/xe_initial_plane.c
index 2ce0f78cd7b1..e819175d5946 100644
--- a/drivers/gpu/drm/xe/display/xe_initial_plane.c
+++ b/drivers/gpu/drm/xe/display/xe_initial_plane.c
@@ -134,19 +134,6 @@ xe_alloc_initial_plane_obj(struct drm_crtc *_crtc,
 	struct drm_framebuffer *fb = &plane_config->fb->base;
 	struct xe_bo *bo;
 
-	switch (fb->modifier) {
-	case DRM_FORMAT_MOD_LINEAR:
-	case I915_FORMAT_MOD_X_TILED:
-	case I915_FORMAT_MOD_Y_TILED:
-	case I915_FORMAT_MOD_4_TILED:
-		break;
-	default:
-		drm_dbg_kms(&xe->drm,
-			    "Unsupported modifier for initial FB: 0x%llx\n",
-			    fb->modifier);
-		return NULL;
-	}
-
 	mode_cmd.pixel_format = fb->format->format;
 	mode_cmd.width = fb->width;
 	mode_cmd.height = fb->height;
-- 
2.47.3

