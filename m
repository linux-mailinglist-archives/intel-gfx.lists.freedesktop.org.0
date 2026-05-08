Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iINiMsH0/Wn5lAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 16:35:45 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73ACA4F7D1A
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 16:35:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAC2210F522;
	Fri,  8 May 2026 14:35:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="i/UOT9p7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3502C10F51E;
 Fri,  8 May 2026 14:35:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778250942; x=1809786942;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SduYhuF19UV63z/bOPCzGxS5UCHWOcXiUUTr9blVP30=;
 b=i/UOT9p7lVLUnKx2shgb8RQ+uFRfH2qax0Rsa0wgWRLNNmOKl0LEw8wv
 VQ52yBeK1VO2gyRByHmamxyfspyjUJqJ3NuNw6exgYjxHcpL5N8UeBbMx
 XZSYVUCqd8ImTzq4iyiYV1KmWRpLBTFxvNItdB9p4hZJ0sRMD/C1LrZxe
 miRQlzoR9kRK8ihi4Q/7jXaP0zEk6zm2ZWZ1amNNkt1WPBihiyxa1D4P2
 UdPXunh1Gu9MeOtcF7mDotFUVjQuz9R+dn4b38kCuf5JnLDXo9C7mSJ8l
 kzBztzMB/PSPAJBJxQNDTmBBn8ih7N6YCtcQssQmHu7OkLdPp0CFhnieW A==;
X-CSE-ConnectionGUID: Kz76ChmdQ8eLdXhgHxRGBg==
X-CSE-MsgGUID: zas5SN9qQL+EMkIh9gt+BQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11780"; a="83067370"
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="83067370"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 07:35:42 -0700
X-CSE-ConnectionGUID: oaFqk3ZfRvWsmX1HNYb8Fg==
X-CSE-MsgGUID: +HteuO8uQpK5Z2mEuOOhUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="235952519"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.244.104])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 07:35:41 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 16/16] drm/i915: Consolidate the intel_plane_(un)pin_fb()
 implementations
Date: Fri,  8 May 2026 17:34:26 +0300
Message-ID: <20260508143426.26504-17-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260508143426.26504-1-ville.syrjala@linux.intel.com>
References: <20260508143426.26504-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Rspamd-Queue-Id: 73ACA4F7D1A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[3];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,linux.intel.com:mid,intel.com:email,intel.com:dkim]
X-Rspamd-Action: no action

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Currently i915 and xe each implement their own versions of
intel_plane_(un)pin(). Now that we have the fb_pin parent
interface we can consolidate this to a single implementation.

The result is a mixture of the i915 and xe implementations.
The reuse_vma() hack comes from xe (and i915 doesn't implement
that part of the parent interface, and the pin_params are
taken from i915 since the platforms supported by i915 need
more things.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cursor.c |   1 -
 drivers/gpu/drm/i915/display/intel_fb_pin.h |  27 -----
 drivers/gpu/drm/i915/display/intel_plane.c  | 118 +++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_plane.h  |   3 +
 drivers/gpu/drm/i915/i915_fb_pin.c          | 116 +------------------
 drivers/gpu/drm/xe/display/xe_fb_pin.c      |  90 +--------------
 6 files changed, 126 insertions(+), 229 deletions(-)
 delete mode 100644 drivers/gpu/drm/i915/display/intel_fb_pin.h

diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index 18d1014de361..52347668f27d 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -21,7 +21,6 @@
 #include "intel_display_utils.h"
 #include "intel_display_wa.h"
 #include "intel_fb.h"
-#include "intel_fb_pin.h"
 #include "intel_frontbuffer.h"
 #include "intel_plane.h"
 #include "intel_psr.h"
diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.h b/drivers/gpu/drm/i915/display/intel_fb_pin.h
deleted file mode 100644
index 6ff17d3e2cf5..000000000000
--- a/drivers/gpu/drm/i915/display/intel_fb_pin.h
+++ /dev/null
@@ -1,27 +0,0 @@
-/* SPDX-License-Identifier: MIT */
-/*
- * Copyright © 2021 Intel Corporation
- */
-
-#ifndef __INTEL_FB_PIN_H__
-#define __INTEL_FB_PIN_H__
-
-#include <linux/types.h>
-
-struct drm_gem_object;
-struct i915_vma;
-struct intel_fb_pin_params;
-struct intel_plane_state;
-struct i915_gtt_view;
-struct iosys_map;
-
-struct i915_vma *
-intel_fb_pin_to_ggtt(struct drm_gem_object *obj,
-		     const struct intel_fb_pin_params *pin_params,
-		     int *out_fence_id);
-
-int intel_plane_pin_fb(struct intel_plane_state *new_plane_state,
-		       const struct intel_plane_state *old_plane_state);
-void intel_plane_unpin_fb(struct intel_plane_state *old_plane_state);
-
-#endif
diff --git a/drivers/gpu/drm/i915/display/intel_plane.c b/drivers/gpu/drm/i915/display/intel_plane.c
index 8264b66812a5..aa4095276a4f 100644
--- a/drivers/gpu/drm/i915/display/intel_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_plane.c
@@ -44,6 +44,7 @@
 #include <drm/drm_gem_atomic_helper.h>
 #include <drm/drm_panic.h>
 #include <drm/drm_print.h>
+#include <drm/intel/display_parent_interface.h>
 
 #include "i9xx_plane_regs.h"
 #include "intel_cdclk.h"
@@ -53,7 +54,6 @@
 #include "intel_display_trace.h"
 #include "intel_display_types.h"
 #include "intel_fb.h"
-#include "intel_fb_pin.h"
 #include "intel_fbdev.h"
 #include "intel_parent.h"
 #include "intel_plane.h"
@@ -1191,6 +1191,122 @@ int intel_plane_check_src_coordinates(struct intel_plane_state *plane_state)
 	return 0;
 }
 
+static unsigned int
+intel_plane_fb_min_alignment(const struct intel_plane_state *plane_state)
+{
+	const struct intel_framebuffer *fb = to_intel_framebuffer(plane_state->hw.fb);
+
+	return fb->min_alignment;
+}
+
+static unsigned int
+intel_plane_fb_min_phys_alignment(const struct intel_plane_state *plane_state)
+{
+	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
+	const struct drm_framebuffer *fb = plane_state->hw.fb;
+
+	if (!intel_plane_needs_physical(plane))
+		return 0;
+
+	return plane->min_alignment(plane, fb, 0);
+}
+
+static unsigned int
+intel_plane_fb_vtd_guard(const struct intel_plane_state *plane_state)
+{
+	return intel_fb_view_vtd_guard(plane_state->hw.fb,
+				       &plane_state->view,
+				       plane_state->hw.rotation);
+}
+
+int intel_plane_pin_fb(struct intel_plane_state *plane_state,
+		       const struct intel_plane_state *old_plane_state)
+{
+	struct intel_display *display = to_intel_display(plane_state);
+	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
+	const struct intel_framebuffer *fb =
+		to_intel_framebuffer(plane_state->hw.fb);
+	const struct intel_framebuffer *old_fb =
+		to_intel_framebuffer(old_plane_state->hw.fb);
+	struct i915_vma *ggtt_vma = NULL;
+	struct i915_vma *dpt_vma = NULL;
+	int fence_id = -1;
+	u32 offset = 0;
+	int ret;
+
+	/* hack for xe since it can't keep track of vmas properly */
+	ggtt_vma = intel_parent_fb_pin_reuse_vma(display,
+						 old_plane_state->ggtt_vma,
+						 intel_fb_bo(&old_fb->base),
+						 &old_plane_state->view.gtt,
+						 intel_fb_bo(&fb->base),
+						 &plane_state->view.gtt,
+						 &offset);
+	if (ggtt_vma)
+		goto got_vma;
+
+	if (!intel_fb_uses_dpt(&fb->base)) {
+		struct intel_fb_pin_params pin_params = {
+			.view = &plane_state->view.gtt,
+			.alignment = intel_plane_fb_min_alignment(plane_state),
+			.phys_alignment = intel_plane_fb_min_phys_alignment(plane_state),
+			.vtd_guard = intel_plane_fb_vtd_guard(plane_state),
+			.needs_cpu_lmem_access = intel_fb_needs_cpu_access(&fb->base),
+			.needs_low_address = intel_plane_needs_low_address(display),
+			.needs_physical = intel_plane_needs_physical(plane),
+			.needs_fence = intel_plane_needs_fence(display),
+		};
+
+		ret = intel_parent_fb_pin_ggtt_pin(display, intel_fb_bo(&fb->base),
+						   &pin_params, &ggtt_vma, &offset,
+						   intel_plane_uses_fence(plane_state) ? &fence_id : NULL);
+	} else {
+		struct intel_fb_pin_params pin_params = {
+			.view = &plane_state->view.gtt,
+			.alignment = intel_plane_fb_min_alignment(plane_state),
+			.needs_cpu_lmem_access = intel_fb_needs_cpu_access(&fb->base),
+		};
+
+		ret = intel_parent_fb_pin_dpt_pin(display, intel_fb_bo(&fb->base),
+						  fb->dpt, &pin_params,
+						  &dpt_vma, &ggtt_vma, &offset);
+	}
+	if (ret)
+		return ret;
+
+got_vma:
+	plane_state->dpt_vma = dpt_vma;
+	plane_state->ggtt_vma = ggtt_vma;
+	plane_state->fence_id = fence_id;
+
+	plane_state->surf = offset + plane->surf_offset(plane_state);
+
+	return 0;
+}
+
+void intel_plane_unpin_fb(struct intel_plane_state *old_plane_state)
+{
+	struct intel_display *display = to_intel_display(old_plane_state);
+	const struct intel_framebuffer *fb =
+		to_intel_framebuffer(old_plane_state->hw.fb);
+
+	if (!intel_fb_uses_dpt(&fb->base)) {
+		intel_parent_fb_pin_ggtt_unpin(display,
+					       old_plane_state->ggtt_vma,
+					       old_plane_state->fence_id);
+
+		old_plane_state->ggtt_vma = NULL;
+		old_plane_state->fence_id = -1;
+	} else {
+		intel_parent_fb_pin_dpt_unpin(display, fb->dpt,
+					      old_plane_state->dpt_vma,
+					      old_plane_state->ggtt_vma);
+
+		old_plane_state->dpt_vma = NULL;
+		old_plane_state->ggtt_vma = NULL;
+	}
+}
+
 static int add_dma_resv_fences(struct dma_resv *resv,
 			       struct drm_plane_state *new_plane_state)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_plane.h b/drivers/gpu/drm/i915/display/intel_plane.h
index 7b5456f56f42..a6338bba72d9 100644
--- a/drivers/gpu/drm/i915/display/intel_plane.h
+++ b/drivers/gpu/drm/i915/display/intel_plane.h
@@ -92,5 +92,8 @@ int intel_plane_atomic_check(struct intel_atomic_state *state);
 bool intel_plane_format_mod_supported_async(struct drm_plane *plane,
 					    u32 format,
 					    u64 modifier);
+int intel_plane_pin_fb(struct intel_plane_state *new_plane_state,
+		       const struct intel_plane_state *old_plane_state);
+void intel_plane_unpin_fb(struct intel_plane_state *old_plane_state);
 
 #endif /* __INTEL_PLANE_H__ */
diff --git a/drivers/gpu/drm/i915/i915_fb_pin.c b/drivers/gpu/drm/i915/i915_fb_pin.c
index cedefee46fbf..1034cb767e9f 100644
--- a/drivers/gpu/drm/i915/i915_fb_pin.c
+++ b/drivers/gpu/drm/i915/i915_fb_pin.c
@@ -3,20 +3,9 @@
  * Copyright © 2021 Intel Corporation
  */
 
-/**
- * DOC: display pinning helpers
- */
-
 #include <drm/drm_print.h>
 #include <drm/intel/display_parent_interface.h>
 
-#include "display/intel_display_core.h"
-#include "display/intel_display_types.h"
-#include "display/intel_fb.h"
-#include "display/intel_fb_pin.h"
-#include "display/intel_parent.h"
-#include "display/intel_plane.h"
-
 #include "gem/i915_gem_domain.h"
 #include "gem/i915_gem_object.h"
 
@@ -114,7 +103,7 @@ intel_fb_pin_to_dpt(struct drm_gem_object *_obj, struct intel_dpt *dpt,
 	return vma;
 }
 
-struct i915_vma *
+static struct i915_vma *
 intel_fb_pin_to_ggtt(struct drm_gem_object *_obj,
 		     const struct intel_fb_pin_params *pin_params,
 		     int *out_fence_id)
@@ -230,34 +219,6 @@ static void intel_fb_unpin_vma(struct i915_vma *vma, int fence_id)
 	i915_vma_put(vma);
 }
 
-static unsigned int
-intel_plane_fb_min_alignment(const struct intel_plane_state *plane_state)
-{
-	const struct intel_framebuffer *fb = to_intel_framebuffer(plane_state->hw.fb);
-
-	return fb->min_alignment;
-}
-
-static unsigned int
-intel_plane_fb_min_phys_alignment(const struct intel_plane_state *plane_state)
-{
-	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
-	const struct drm_framebuffer *fb = plane_state->hw.fb;
-
-	if (!intel_plane_needs_physical(plane))
-		return 0;
-
-	return plane->min_alignment(plane, fb, 0);
-}
-
-static unsigned int
-intel_plane_fb_vtd_guard(const struct intel_plane_state *plane_state)
-{
-	return intel_fb_view_vtd_guard(plane_state->hw.fb,
-				       &plane_state->view,
-				       plane_state->hw.rotation);
-}
-
 static int i915_fb_pin_ggtt_pin(struct drm_gem_object *obj,
 				const struct intel_fb_pin_params *pin_params,
 				struct i915_vma **out_ggtt_vma,
@@ -336,81 +297,6 @@ static void i915_fb_pin_dpt_unpin(struct intel_dpt *dpt,
 		i915_dpt_unpin_from_ggtt(dpt);
 }
 
-int intel_plane_pin_fb(struct intel_plane_state *plane_state,
-		       const struct intel_plane_state *old_plane_state)
-{
-	struct intel_display *display = to_intel_display(plane_state);
-	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
-	const struct intel_framebuffer *fb =
-		to_intel_framebuffer(plane_state->hw.fb);
-	struct i915_vma *ggtt_vma = NULL;
-	struct i915_vma *dpt_vma = NULL;
-	int fence_id = -1;
-	u32 offset;
-	int ret;
-
-	if (!intel_fb_uses_dpt(&fb->base)) {
-		struct intel_fb_pin_params pin_params = {
-			.view = &plane_state->view.gtt,
-			.alignment = intel_plane_fb_min_alignment(plane_state),
-			.phys_alignment = intel_plane_fb_min_phys_alignment(plane_state),
-			.vtd_guard = intel_plane_fb_vtd_guard(plane_state),
-			.needs_cpu_lmem_access = intel_fb_needs_cpu_access(&fb->base),
-			.needs_low_address = intel_plane_needs_low_address(display),
-			.needs_physical = intel_plane_needs_physical(plane),
-			.needs_fence = intel_plane_needs_fence(display),
-		};
-
-		ret = intel_parent_fb_pin_ggtt_pin(display, intel_fb_bo(&fb->base),
-						   &pin_params, &ggtt_vma, &offset,
-						   intel_plane_uses_fence(plane_state) ? &fence_id : NULL);
-		if (ret)
-			return ret;
-	} else {
-		struct intel_fb_pin_params pin_params = {
-			.view = &plane_state->view.gtt,
-			.alignment = intel_plane_fb_min_alignment(plane_state),
-			.needs_cpu_lmem_access = intel_fb_needs_cpu_access(&fb->base),
-		};
-
-		ret = intel_parent_fb_pin_dpt_pin(display, intel_fb_bo(&fb->base),
-						  fb->dpt, &pin_params,
-						  &dpt_vma, &ggtt_vma, &offset);
-		if (ret)
-			return ret;
-	}
-
-	plane_state->dpt_vma = dpt_vma;
-	plane_state->ggtt_vma = ggtt_vma;
-	plane_state->fence_id = fence_id;
-	plane_state->surf = offset + plane->surf_offset(plane_state);
-
-	return 0;
-}
-
-void intel_plane_unpin_fb(struct intel_plane_state *old_plane_state)
-{
-	struct intel_display *display = to_intel_display(old_plane_state);
-	const struct intel_framebuffer *fb =
-		to_intel_framebuffer(old_plane_state->hw.fb);
-
-	if (!intel_fb_uses_dpt(&fb->base)) {
-		intel_parent_fb_pin_ggtt_unpin(display,
-					       old_plane_state->ggtt_vma,
-					       old_plane_state->fence_id);
-
-		old_plane_state->ggtt_vma = NULL;
-		old_plane_state->fence_id = -1;
-	} else {
-		intel_parent_fb_pin_dpt_unpin(display, fb->dpt,
-					      old_plane_state->dpt_vma,
-					      old_plane_state->ggtt_vma);
-
-		old_plane_state->dpt_vma = NULL;
-		old_plane_state->ggtt_vma = NULL;
-	}
-}
-
 static void i915_fb_pin_get_map(struct i915_vma *vma, struct iosys_map *map)
 {
 	iosys_map_set_vaddr_iomem(map, i915_vma_get_iomap(vma));
diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/xe/display/xe_fb_pin.c
index a8f72de0cf3a..f93c98bec5b5 100644
--- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
+++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
@@ -6,11 +6,12 @@
 #include <drm/intel/display_parent_interface.h>
 #include <drm/ttm/ttm_bo.h>
 
-#include "intel_display_core.h"
-#include "intel_display_types.h"
+/* FIXME move the types to parent interface? */
+#include "i915_gtt_view_types.h"
+
+/* FIXME move intel_remapped_info_size() & co. to parent interface? */
 #include "intel_fb.h"
-#include "intel_fb_pin.h"
-#include "intel_parent.h"
+
 #include "xe_bo.h"
 #include "xe_device.h"
 #include "xe_display_vma.h"
@@ -491,87 +492,6 @@ xe_fb_pin_reuse_vma(struct i915_vma *old_ggtt_vma,
 	return NULL;
 }
 
-static unsigned int
-intel_plane_fb_min_alignment(const struct intel_plane_state *plane_state)
-{
-	const struct intel_framebuffer *fb = to_intel_framebuffer(plane_state->hw.fb);
-
-	return fb->min_alignment;
-}
-
-int intel_plane_pin_fb(struct intel_plane_state *new_plane_state,
-		       const struct intel_plane_state *old_plane_state)
-{
-	struct intel_display *display = to_intel_display(new_plane_state);
-	const struct intel_framebuffer *fb = to_intel_framebuffer(new_plane_state->hw.fb);
-	const struct intel_framebuffer *old_fb = to_intel_framebuffer(old_plane_state->hw.fb);
-	struct drm_gem_object *obj = intel_fb_bo(&fb->base);
-	struct intel_plane *plane = to_intel_plane(new_plane_state->uapi.plane);
-	struct intel_fb_pin_params pin_params = {
-		.view = &new_plane_state->view.gtt,
-		.alignment = intel_plane_fb_min_alignment(new_plane_state),
-		.needs_cpu_lmem_access = intel_fb_needs_cpu_access(&fb->base),
-	};
-	struct i915_vma *ggtt_vma = NULL;
-	struct i915_vma *dpt_vma = NULL;
-	int fence_id = -1;
-	u32 offset;
-	int ret;
-
-	ggtt_vma = intel_parent_fb_pin_reuse_vma(display,
-						 old_plane_state->ggtt_vma,
-						 intel_fb_bo(&old_fb->base),
-						 &old_plane_state->view.gtt,
-						 intel_fb_bo(&fb->base),
-						 &new_plane_state->view.gtt,
-						 &offset);
-	if (ggtt_vma)
-		goto got_vma;
-
-	if (!intel_fb_uses_dpt(&fb->base)) {
-		ret = intel_parent_fb_pin_ggtt_pin(display, obj, &pin_params,
-						   &ggtt_vma, &offset, NULL);
-		if (ret)
-			return ret;
-	} else {
-		ret = intel_parent_fb_pin_dpt_pin(display, obj, fb->dpt,
-						  &pin_params, &dpt_vma,
-						  &ggtt_vma, &offset);
-		if (ret)
-			return ret;
-	}
-
-got_vma:
-	new_plane_state->dpt_vma = dpt_vma;
-	new_plane_state->ggtt_vma = ggtt_vma;
-	new_plane_state->fence_id = fence_id;
-	new_plane_state->surf = offset + plane->surf_offset(new_plane_state);
-
-	return 0;
-}
-
-void intel_plane_unpin_fb(struct intel_plane_state *old_plane_state)
-{
-	struct intel_display *display = to_intel_display(old_plane_state);
-	const struct intel_framebuffer *fb = to_intel_framebuffer(old_plane_state->hw.fb);
-
-	if (!intel_fb_uses_dpt(&fb->base)) {
-		intel_parent_fb_pin_ggtt_unpin(display,
-					       old_plane_state->ggtt_vma,
-					       old_plane_state->fence_id);
-
-		old_plane_state->ggtt_vma = NULL;
-		old_plane_state->fence_id = -1;
-	} else {
-		intel_parent_fb_pin_dpt_unpin(display, fb->dpt,
-					      old_plane_state->dpt_vma,
-					      old_plane_state->ggtt_vma);
-
-		old_plane_state->dpt_vma = NULL;
-		old_plane_state->ggtt_vma = NULL;
-	}
-}
-
 static void xe_fb_pin_get_map(struct i915_vma *vma, struct iosys_map *map)
 {
 	*map = vma->bo->vmap;
-- 
2.52.0

