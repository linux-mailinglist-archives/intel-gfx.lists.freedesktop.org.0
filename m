Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19C4CA78596
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Apr 2025 02:22:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A671E10E249;
	Wed,  2 Apr 2025 00:22:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OKpDtbEP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDAF310E165;
 Wed,  2 Apr 2025 00:22:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743553340; x=1775089340;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+pmYCvj6hFFUeAjRbc86iDpBVcWU6gVxwToI5nh4PvU=;
 b=OKpDtbEPY6ixOxpMMinwn21XqVHyYp3RfjCFOBqJPSy4f3FPjAPnfR3m
 TXhCFjZhZ7T88PgHgubRMPswIKxAU3nZegz3tp3bR6R+DG/T3Jbic4q6A
 ZqSWglpFuqXbFNN76orPrgKSvKNYg5yt/7928umXGXdHyTL8Mkoh77dpT
 ef23zlnblqFbs5MuQkbp91uCBm7Ytlip55cT4aH8BkRuMXh3Xh3DwA3it
 672nc9hCRKEKQe5g/h8jGlSHcUDAnN+dwFX1LmFn0z5cdsee4f/7OwV++
 NmDpeA9jHmBMg6rJ4ZJgKu8980Z7RgmzkE6fdZTm/8h6Wxx8ndzFhPEEg A==;
X-CSE-ConnectionGUID: CIBDoLjcQaag7ICrJ9wNAg==
X-CSE-MsgGUID: cVK3+L2cT9OYwgHn7WGxdw==
X-IronPort-AV: E=McAfee;i="6700,10204,11391"; a="45021901"
X-IronPort-AV: E=Sophos;i="6.14,294,1736841600"; d="scan'208";a="45021901"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2025 17:22:19 -0700
X-CSE-ConnectionGUID: my1U+ohbRvObTfhziH3EyQ==
X-CSE-MsgGUID: w2cfXpx8Ri+j094lpQJSpg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,294,1736841600"; d="scan'208";a="131729578"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 01 Apr 2025 17:22:17 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 02 Apr 2025 03:22:15 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 2/9] drm/i915: Nuke intel_plane_ggtt_offset()
Date: Wed,  2 Apr 2025 03:22:02 +0300
Message-ID: <20250402002209.24987-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250402002209.24987-1-ville.syrjala@linux.intel.com>
References: <20250402002209.24987-1-ville.syrjala@linux.intel.com>
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

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_atomic_plane.c  | 5 -----
 drivers/gpu/drm/i915/display/intel_atomic_plane.h  | 2 --
 drivers/gpu/drm/i915/display/intel_fb_pin.c        | 2 +-
 drivers/gpu/drm/i915/display/intel_plane_initial.c | 2 +-
 drivers/gpu/drm/xe/display/xe_fb_pin.c             | 2 +-
 drivers/gpu/drm/xe/display/xe_plane_initial.c      | 2 +-
 6 files changed, 4 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index 7276179df878..264a50b29c16 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -1565,8 +1565,3 @@ int intel_atomic_check_planes(struct intel_atomic_state *state)
 
 	return 0;
 }
-
-u32 intel_plane_ggtt_offset(const struct intel_plane_state *plane_state)
-{
-	return i915_ggtt_offset(plane_state->ggtt_vma);
-}
diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.h b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
index 6efac923dcbc..65edd88d28a9 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.h
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
@@ -88,6 +88,4 @@ int intel_atomic_add_affected_planes(struct intel_atomic_state *state,
 				     struct intel_crtc *crtc);
 int intel_atomic_check_planes(struct intel_atomic_state *state);
 
-u32 intel_plane_ggtt_offset(const struct intel_plane_state *plane_state);
-
 #endif /* __INTEL_ATOMIC_PLANE_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.c b/drivers/gpu/drm/i915/display/intel_fb_pin.c
index fb7d0c8b9302..f2d8675dd98a 100644
--- a/drivers/gpu/drm/i915/display/intel_fb_pin.c
+++ b/drivers/gpu/drm/i915/display/intel_fb_pin.c
@@ -311,7 +311,7 @@ int intel_plane_pin_fb(struct intel_plane_state *plane_state,
 		plane_state->surf = i915_gem_object_get_dma_address(obj, 0) +
 			plane->surf_offset(plane_state);
 	} else {
-		plane_state->surf = intel_plane_ggtt_offset(plane_state) +
+		plane_state->surf = i915_ggtt_offset(plane_state->ggtt_vma) +
 			plane->surf_offset(plane_state);
 	}
 
diff --git a/drivers/gpu/drm/i915/display/intel_plane_initial.c b/drivers/gpu/drm/i915/display/intel_plane_initial.c
index 1c49610eb42f..3afff528a7bd 100644
--- a/drivers/gpu/drm/i915/display/intel_plane_initial.c
+++ b/drivers/gpu/drm/i915/display/intel_plane_initial.c
@@ -356,7 +356,7 @@ intel_find_initial_plane_obj(struct intel_crtc *crtc,
 	    i915_vma_pin_fence(vma) == 0 && vma->fence)
 		plane_state->flags |= PLANE_HAS_FENCE;
 
-	plane_state->surf = intel_plane_ggtt_offset(plane_state);
+	plane_state->surf = i915_ggtt_offset(plane_state->ggtt_vma);
 
 	plane_state->uapi.src_x = 0;
 	plane_state->uapi.src_y = 0;
diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/xe/display/xe_fb_pin.c
index b9c45a5a3d82..b2e979805455 100644
--- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
+++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
@@ -438,7 +438,7 @@ int intel_plane_pin_fb(struct intel_plane_state *new_plane_state,
 
 	new_plane_state->ggtt_vma = vma;
 
-	new_plane_state->surf = intel_plane_ggtt_offset(new_plane_state) +
+	new_plane_state->surf = i915_ggtt_offset(new_plane_state->ggtt_vma) +
 		plane->surf_offset(new_plane_state);
 
 	return 0;
diff --git a/drivers/gpu/drm/xe/display/xe_plane_initial.c b/drivers/gpu/drm/xe/display/xe_plane_initial.c
index a15f60835239..c563edf14b1a 100644
--- a/drivers/gpu/drm/xe/display/xe_plane_initial.c
+++ b/drivers/gpu/drm/xe/display/xe_plane_initial.c
@@ -239,7 +239,7 @@ intel_find_initial_plane_obj(struct intel_crtc *crtc,
 
 	plane_state->ggtt_vma = vma;
 
-	plane_state->surf = intel_plane_ggtt_offset(plane_state);
+	plane_state->surf = i915_ggtt_offset(plane_state->ggtt_vma);
 
 	plane_state->uapi.src_x = 0;
 	plane_state->uapi.src_y = 0;
-- 
2.45.3

