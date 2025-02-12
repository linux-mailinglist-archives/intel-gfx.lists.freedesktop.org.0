Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FD9AA32C1E
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 17:43:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1ED5610E924;
	Wed, 12 Feb 2025 16:43:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Y+jIIk09";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D331510E92A
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Feb 2025 16:43:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739378637; x=1770914637;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jBgtJyriGbjjaiAdVosXRN/OGVUJL31/u/q6gVS/5IA=;
 b=Y+jIIk09feaLG852OyD4hFGSCDmvk/Gsc9h3KDi5bbk4OPR1+x6NEiAS
 sDOWEFqx/gTYDJtA755x6NVPbpmNedyG/30rKwzQ1JAo9v3OmOPJUpsCE
 /5nXPFdIBfoLpmvBpShH4xibpesgPBfkXe+leoUEAw6VQlwemcknfl1Ff
 vSDBFyhczXM+FqpgFtJsnDLmvfiio3UpbZHE8Xylh4vd7W2ZC7HqwENpX
 kAuthGSEVaJIVRDWbo3eNWRfULm1aSXGI9bihA4RC+p8yh4FPDTXXjsyT
 EFtAkZn7Ju53vezIaTtS2WUyBP4/ejYri5vOcNh9LdNea3eMmOJHYcE6k Q==;
X-CSE-ConnectionGUID: 0X+PfRaqTnO2wSZALheyQg==
X-CSE-MsgGUID: xuY3D0S3T5mUOCUW3f+IcA==
X-IronPort-AV: E=McAfee;i="6700,10204,11343"; a="62515012"
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="62515012"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 08:43:56 -0800
X-CSE-ConnectionGUID: sQnPcW5SSOGfoKL+d12cgg==
X-CSE-MsgGUID: w7mdcTNWRsucCymEn3kyYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="113082665"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 12 Feb 2025 08:43:55 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 12 Feb 2025 18:43:53 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Subject: [PATCH v2 08/10] drm/i915: Rename the variables in
 icl_check_nv12_planes()
Date: Wed, 12 Feb 2025 18:43:28 +0200
Message-ID: <20250212164330.16891-9-ville.syrjala@linux.intel.com>
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

All the this generic 'plane' vs 'linked' stuff is hard to
follow. Rename the variables to use the y_plane vs. uv_plane
terminology to make it clear which is which.

v2: Rebase due to intel_display changes

Reviewed-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 99 +++++++++++---------
 1 file changed, 54 insertions(+), 45 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 33e9b56cc5d5..b7f233e526d6 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4411,50 +4411,56 @@ static bool check_single_encoder_cloning(struct intel_atomic_state *state,
 }
 
 static void link_nv12_planes(struct intel_crtc_state *crtc_state,
-			     struct intel_plane_state *plane_state,
-			     struct intel_plane_state *linked_state)
+			     struct intel_plane_state *uv_plane_state,
+			     struct intel_plane_state *y_plane_state)
 {
-	struct intel_display *display = to_intel_display(plane_state);
-	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
-	struct intel_plane *linked = to_intel_plane(linked_state->uapi.plane);
+	struct intel_display *display = to_intel_display(uv_plane_state);
+	struct intel_plane *uv_plane = to_intel_plane(uv_plane_state->uapi.plane);
+	struct intel_plane *y_plane = to_intel_plane(y_plane_state->uapi.plane);
 
 	drm_dbg_kms(display->drm, "UV plane [PLANE:%d:%s] using Y plane [PLANE:%d:%s]\n",
-		    plane->base.base.id, plane->base.name,
-		    linked->base.base.id, linked->base.name);
+		    uv_plane->base.base.id, uv_plane->base.name,
+		    y_plane->base.base.id, y_plane->base.name);
 
-	plane_state->planar_linked_plane = linked;
+	uv_plane_state->planar_linked_plane = y_plane;
 
-	linked_state->is_y_plane = true;
-	linked_state->planar_linked_plane = plane;
+	y_plane_state->is_y_plane = true;
+	y_plane_state->planar_linked_plane = uv_plane;
 
-	crtc_state->enabled_planes |= BIT(linked->id);
-	crtc_state->active_planes |= BIT(linked->id);
-	crtc_state->update_planes |= BIT(linked->id);
+	crtc_state->enabled_planes |= BIT(y_plane->id);
+	crtc_state->active_planes |= BIT(y_plane->id);
+	crtc_state->update_planes |= BIT(y_plane->id);
 
-	crtc_state->data_rate[linked->id] = crtc_state->data_rate_y[plane->id];
-	crtc_state->rel_data_rate[linked->id] = crtc_state->rel_data_rate_y[plane->id];
+	crtc_state->data_rate[y_plane->id] = crtc_state->data_rate_y[uv_plane->id];
+	crtc_state->rel_data_rate[y_plane->id] = crtc_state->rel_data_rate_y[uv_plane->id];
 
 	/* Copy parameters to Y plane */
-	linked_state->ctl = plane_state->ctl | PLANE_CTL_YUV420_Y_PLANE;
-	linked_state->color_ctl = plane_state->color_ctl;
-	linked_state->view = plane_state->view;
-	linked_state->decrypt = plane_state->decrypt;
+	y_plane_state->ctl = uv_plane_state->ctl | PLANE_CTL_YUV420_Y_PLANE;
+	y_plane_state->color_ctl = uv_plane_state->color_ctl;
+	y_plane_state->view = uv_plane_state->view;
+	y_plane_state->decrypt = uv_plane_state->decrypt;
 
-	intel_plane_copy_hw_state(linked_state, plane_state);
-	linked_state->uapi.src = plane_state->uapi.src;
-	linked_state->uapi.dst = plane_state->uapi.dst;
+	intel_plane_copy_hw_state(y_plane_state, uv_plane_state);
+	y_plane_state->uapi.src = uv_plane_state->uapi.src;
+	y_plane_state->uapi.dst = uv_plane_state->uapi.dst;
 
-	if (icl_is_hdr_plane(display, plane->id)) {
-		if (linked->id == PLANE_7)
-			plane_state->cus_ctl |= PLANE_CUS_Y_PLANE_7_ICL;
-		else if (linked->id == PLANE_6)
-			plane_state->cus_ctl |= PLANE_CUS_Y_PLANE_6_ICL;
-		else if (linked->id == PLANE_5)
-			plane_state->cus_ctl |= PLANE_CUS_Y_PLANE_5_RKL;
-		else if (linked->id == PLANE_4)
-			plane_state->cus_ctl |= PLANE_CUS_Y_PLANE_4_RKL;
-		else
-			MISSING_CASE(linked->id);
+	if (icl_is_hdr_plane(display, uv_plane->id)) {
+		switch (y_plane->id) {
+		case PLANE_7:
+			uv_plane_state->cus_ctl |= PLANE_CUS_Y_PLANE_7_ICL;
+			break;
+		case PLANE_6:
+			uv_plane_state->cus_ctl |= PLANE_CUS_Y_PLANE_6_ICL;
+			break;
+		case PLANE_5:
+			uv_plane_state->cus_ctl |= PLANE_CUS_Y_PLANE_5_RKL;
+			break;
+		case PLANE_4:
+			uv_plane_state->cus_ctl |= PLANE_CUS_Y_PLANE_4_RKL;
+			break;
+		default:
+			MISSING_CASE(y_plane->id);
+		}
 	}
 }
 
@@ -4487,8 +4493,8 @@ static int icl_check_nv12_planes(struct intel_atomic_state *state,
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
-	struct intel_plane *plane, *linked;
 	struct intel_plane_state *plane_state;
+	struct intel_plane *plane;
 	int i;
 
 	if (DISPLAY_VER(dev_priv) < 11)
@@ -4510,27 +4516,30 @@ static int icl_check_nv12_planes(struct intel_atomic_state *state,
 		return 0;
 
 	for_each_new_intel_plane_in_state(state, plane, plane_state, i) {
-		struct intel_plane_state *linked_state = NULL;
+		struct intel_plane_state *y_plane_state = NULL;
+		struct intel_plane *y_plane;
 
-		if (plane->pipe != crtc->pipe ||
-		    !(crtc_state->nv12_planes & BIT(plane->id)))
+		if (plane->pipe != crtc->pipe)
 			continue;
 
-		for_each_intel_plane_on_crtc(&dev_priv->drm, crtc, linked) {
-			if (!icl_is_nv12_y_plane(display, linked->id))
+		if ((crtc_state->nv12_planes & BIT(plane->id)) == 0)
+			continue;
+
+		for_each_intel_plane_on_crtc(&dev_priv->drm, crtc, y_plane) {
+			if (!icl_is_nv12_y_plane(display, y_plane->id))
 				continue;
 
-			if (crtc_state->active_planes & BIT(linked->id))
+			if (crtc_state->active_planes & BIT(y_plane->id))
 				continue;
 
-			linked_state = intel_atomic_get_plane_state(state, linked);
-			if (IS_ERR(linked_state))
-				return PTR_ERR(linked_state);
+			y_plane_state = intel_atomic_get_plane_state(state, y_plane);
+			if (IS_ERR(y_plane_state))
+				return PTR_ERR(y_plane_state);
 
 			break;
 		}
 
-		if (!linked_state) {
+		if (!y_plane_state) {
 			drm_dbg_kms(&dev_priv->drm,
 				    "[CRTC:%d:%s] need %d free Y planes for planar YUV\n",
 				    crtc->base.base.id, crtc->base.name,
@@ -4538,7 +4547,7 @@ static int icl_check_nv12_planes(struct intel_atomic_state *state,
 			return -EINVAL;
 		}
 
-		link_nv12_planes(crtc_state, plane_state, linked_state);
+		link_nv12_planes(crtc_state, plane_state, y_plane_state);
 	}
 
 	return 0;
-- 
2.45.3

