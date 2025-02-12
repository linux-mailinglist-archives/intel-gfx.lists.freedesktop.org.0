Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A9D7A32C1D
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 17:43:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C019210E929;
	Wed, 12 Feb 2025 16:43:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fPfmxh0z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E8CBF10E929
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Feb 2025 16:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739378634; x=1770914634;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NBVwzqT5Wx66wJlAo0O15sKk0DZwJDCxI/JWisQzhlw=;
 b=fPfmxh0zu4TiZ84frl7bfEsohWnnsDWyZqt6uSGLxRj+dY7F8c1VIaKC
 u2UMRytFxKJzvMD9UDi0ZbO+W7VjGDV9d4vkwgE7v1+rY4cpU8/WCBA21
 jf1bNd2AYdo4frrXZSE57o7bgCd2kpm/oOPgBl0+0sKy6tL6UuwXFPul0
 To/XCqtXCj+lZdB6uzyHvnfuOkZF9DKW2WHZbV1RodJNdW8ABw6NLmGzY
 /LJVxZgcjHNAy5i0JEYN3tJM83DafHO1nuBLoIBPz7YDT4GPcOjY2294m
 BftOq0cK8/WZb3FyMAPr5ydDy+2ZsM1wSkkgmndpuVdlo6/dqMrUnS4/F g==;
X-CSE-ConnectionGUID: MuFN5DRcRAKpQa3uek1ZMA==
X-CSE-MsgGUID: 42qwi1YSQLOmTy/urmwQyA==
X-IronPort-AV: E=McAfee;i="6700,10204,11343"; a="62515009"
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="62515009"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 08:43:54 -0800
X-CSE-ConnectionGUID: B/pmK2GcR0OUBFtUXrrtQg==
X-CSE-MsgGUID: m4wP/v9LToCIcR8psfu2sg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="113082659"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 12 Feb 2025 08:43:52 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 12 Feb 2025 18:43:51 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Subject: [PATCH v2 07/10] drm/i915: Extract link_nv12_planes()
Date: Wed, 12 Feb 2025 18:43:27 +0200
Message-ID: <20250212164330.16891-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250212164330.16891-1-ville.syrjala@linux.intel.com>
References: <20250212164330.16891-1-ville.syrjala@linux.intel.com>
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

Pull the code linking the UV and Y planes together into a
sensible function instead of having the code plastered inside
the higher level loop.

v2: Rebase due to intel_display changes

Reviewed-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 86 +++++++++++---------
 1 file changed, 49 insertions(+), 37 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index cccf5d39b34a..33e9b56cc5d5 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4410,6 +4410,54 @@ static bool check_single_encoder_cloning(struct intel_atomic_state *state,
 	return true;
 }
 
+static void link_nv12_planes(struct intel_crtc_state *crtc_state,
+			     struct intel_plane_state *plane_state,
+			     struct intel_plane_state *linked_state)
+{
+	struct intel_display *display = to_intel_display(plane_state);
+	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
+	struct intel_plane *linked = to_intel_plane(linked_state->uapi.plane);
+
+	drm_dbg_kms(display->drm, "UV plane [PLANE:%d:%s] using Y plane [PLANE:%d:%s]\n",
+		    plane->base.base.id, plane->base.name,
+		    linked->base.base.id, linked->base.name);
+
+	plane_state->planar_linked_plane = linked;
+
+	linked_state->is_y_plane = true;
+	linked_state->planar_linked_plane = plane;
+
+	crtc_state->enabled_planes |= BIT(linked->id);
+	crtc_state->active_planes |= BIT(linked->id);
+	crtc_state->update_planes |= BIT(linked->id);
+
+	crtc_state->data_rate[linked->id] = crtc_state->data_rate_y[plane->id];
+	crtc_state->rel_data_rate[linked->id] = crtc_state->rel_data_rate_y[plane->id];
+
+	/* Copy parameters to Y plane */
+	linked_state->ctl = plane_state->ctl | PLANE_CTL_YUV420_Y_PLANE;
+	linked_state->color_ctl = plane_state->color_ctl;
+	linked_state->view = plane_state->view;
+	linked_state->decrypt = plane_state->decrypt;
+
+	intel_plane_copy_hw_state(linked_state, plane_state);
+	linked_state->uapi.src = plane_state->uapi.src;
+	linked_state->uapi.dst = plane_state->uapi.dst;
+
+	if (icl_is_hdr_plane(display, plane->id)) {
+		if (linked->id == PLANE_7)
+			plane_state->cus_ctl |= PLANE_CUS_Y_PLANE_7_ICL;
+		else if (linked->id == PLANE_6)
+			plane_state->cus_ctl |= PLANE_CUS_Y_PLANE_6_ICL;
+		else if (linked->id == PLANE_5)
+			plane_state->cus_ctl |= PLANE_CUS_Y_PLANE_5_RKL;
+		else if (linked->id == PLANE_4)
+			plane_state->cus_ctl |= PLANE_CUS_Y_PLANE_4_RKL;
+		else
+			MISSING_CASE(linked->id);
+	}
+}
+
 static void unlink_nv12_plane(struct intel_crtc_state *crtc_state,
 			      struct intel_plane_state *plane_state)
 {
@@ -4490,43 +4538,7 @@ static int icl_check_nv12_planes(struct intel_atomic_state *state,
 			return -EINVAL;
 		}
 
-		plane_state->planar_linked_plane = linked;
-
-		linked_state->is_y_plane = true;
-		linked_state->planar_linked_plane = plane;
-		crtc_state->enabled_planes |= BIT(linked->id);
-		crtc_state->active_planes |= BIT(linked->id);
-		crtc_state->update_planes |= BIT(linked->id);
-		crtc_state->data_rate[linked->id] =
-			crtc_state->data_rate_y[plane->id];
-		crtc_state->rel_data_rate[linked->id] =
-			crtc_state->rel_data_rate_y[plane->id];
-		drm_dbg_kms(&dev_priv->drm, "UV plane [PLANE:%d:%s] using [PLANE:%d:%s] as Y plane\n",
-			    plane->base.base.id, plane->base.name,
-			    linked->base.base.id, linked->base.name);
-
-		/* Copy parameters to Y plane */
-		linked_state->ctl = plane_state->ctl | PLANE_CTL_YUV420_Y_PLANE;
-		linked_state->color_ctl = plane_state->color_ctl;
-		linked_state->view = plane_state->view;
-		linked_state->decrypt = plane_state->decrypt;
-
-		intel_plane_copy_hw_state(linked_state, plane_state);
-		linked_state->uapi.src = plane_state->uapi.src;
-		linked_state->uapi.dst = plane_state->uapi.dst;
-
-		if (icl_is_hdr_plane(display, plane->id)) {
-			if (linked->id == PLANE_7)
-				plane_state->cus_ctl |= PLANE_CUS_Y_PLANE_7_ICL;
-			else if (linked->id == PLANE_6)
-				plane_state->cus_ctl |= PLANE_CUS_Y_PLANE_6_ICL;
-			else if (linked->id == PLANE_5)
-				plane_state->cus_ctl |= PLANE_CUS_Y_PLANE_5_RKL;
-			else if (linked->id == PLANE_4)
-				plane_state->cus_ctl |= PLANE_CUS_Y_PLANE_4_RKL;
-			else
-				MISSING_CASE(linked->id);
-		}
+		link_nv12_planes(crtc_state, plane_state, linked_state);
 	}
 
 	return 0;
-- 
2.45.3

