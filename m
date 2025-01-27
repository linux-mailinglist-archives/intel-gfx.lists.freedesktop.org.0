Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 36A5FA1DB37
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2025 18:22:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 83C9410E599;
	Mon, 27 Jan 2025 17:22:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="j6ipBdN5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D52510E597
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Jan 2025 17:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737998542; x=1769534542;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=HdAmw8FAlNYxdivq/hmf72G74+Z+SjzRaYHyDCTope0=;
 b=j6ipBdN5rjsbhbR3yhNfFNfFaW23j9zksyAE8etKCb/vHt8Q+WmQzvUf
 2O9jLVdt7ZiEXljqSiNwBSQxbzsSzSlDouj/U/rKr0MpvX+MQecbwVq1Y
 Zh/IHQj968aU+ilHdRFZAD4Bm1Om5BhqumJvUFrUWOBXvogC0g3Tc7N99
 3CPugEKOMd4i2s7m17DLloinEPEdA2A55yXBksdYWCmOYtnN8EC/y5S2/
 x9+HHJIKzSQs8hYp18SrUJMAsRFgCV1vjj8rHRV1eo3Th/GgjzqlcQh0E
 oiKpO/EEAM1LQy4dPqIIRJAz+HcqOcr5ntlqbEqdGK401KYjVj0PxuxMc Q==;
X-CSE-ConnectionGUID: zIGmZBwNStSrWADw7xkIEQ==
X-CSE-MsgGUID: 5XwH9Gt2T8WUhnnroPzdRQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11328"; a="38501396"
X-IronPort-AV: E=Sophos;i="6.13,239,1732608000"; d="scan'208";a="38501396"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2025 09:22:22 -0800
X-CSE-ConnectionGUID: aO7BlFIjTKm6aU2IlIn+Pw==
X-CSE-MsgGUID: EmSWIskLTXOYF9dZz1mBmg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,239,1732608000"; d="scan'208";a="108610231"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 27 Jan 2025 09:22:20 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 27 Jan 2025 19:22:19 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 08/11] drm/i915: Rename the variables in
 icl_check_nv12_planes()
Date: Mon, 27 Jan 2025 19:21:53 +0200
Message-ID: <20250127172156.21928-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250127172156.21928-1-ville.syrjala@linux.intel.com>
References: <20250127172156.21928-1-ville.syrjala@linux.intel.com>
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

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 107 ++++++++++---------
 1 file changed, 58 insertions(+), 49 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index a1fa40622d35..3e784fbd4474 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4403,48 +4403,54 @@ static bool check_single_encoder_cloning(struct intel_atomic_state *state,
 }
 
 static void link_nv12_planes(struct intel_crtc_state *crtc_state,
-			     struct intel_plane_state *plane_state,
-			     struct intel_plane_state *linked_state)
+			     struct intel_plane_state *uv_plane_state,
+			     struct intel_plane_state *y_plane_state)
 {
-	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
-	struct intel_plane *linked = to_intel_plane(linked_state->uapi.plane);
-	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
-
-	plane_state->planar_linked_plane = linked;
-
-	linked_state->is_y_plane = true;
-	linked_state->planar_linked_plane = plane;
-	crtc_state->enabled_planes |= BIT(linked->id);
-	crtc_state->active_planes |= BIT(linked->id);
-	crtc_state->update_planes |= BIT(linked->id);
-	crtc_state->data_rate[linked->id] =
-		crtc_state->data_rate_y[plane->id];
-	crtc_state->rel_data_rate[linked->id] =
-		crtc_state->rel_data_rate_y[plane->id];
+	struct intel_plane *uv_plane = to_intel_plane(uv_plane_state->uapi.plane);
+	struct intel_plane *y_plane = to_intel_plane(y_plane_state->uapi.plane);
+	struct drm_i915_private *dev_priv = to_i915(uv_plane->base.dev);
+
+	uv_plane_state->planar_linked_plane = y_plane;
+
+	y_plane_state->is_y_plane = true;
+	y_plane_state->planar_linked_plane = uv_plane;
+
+	crtc_state->enabled_planes |= BIT(y_plane->id);
+	crtc_state->active_planes |= BIT(y_plane->id);
+	crtc_state->update_planes |= BIT(y_plane->id);
+	crtc_state->data_rate[y_plane->id] = crtc_state->data_rate_y[uv_plane->id];
+	crtc_state->rel_data_rate[y_plane->id] = crtc_state->rel_data_rate_y[uv_plane->id];
+
 	drm_dbg_kms(&dev_priv->drm, "Using %s as Y plane for %s\n",
-		    linked->base.name, plane->base.name);
+		    y_plane->base.name, uv_plane->base.name);
 
-	/* Copy parameters to slave plane */
-	linked_state->ctl = plane_state->ctl | PLANE_CTL_YUV420_Y_PLANE;
-	linked_state->color_ctl = plane_state->color_ctl;
-	linked_state->view = plane_state->view;
-	linked_state->decrypt = plane_state->decrypt;
+	/* Copy parameters to Y plane */
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
 
-	if (icl_is_hdr_plane(dev_priv, plane->id)) {
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
+	if (icl_is_hdr_plane(dev_priv, uv_plane->id)) {
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
 
@@ -4476,8 +4482,8 @@ static int icl_check_nv12_planes(struct intel_atomic_state *state,
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
-	struct intel_plane *plane, *linked;
 	struct intel_plane_state *plane_state;
+	struct intel_plane *plane;
 	int i;
 
 	if (DISPLAY_VER(dev_priv) < 11)
@@ -4499,27 +4505,30 @@ static int icl_check_nv12_planes(struct intel_atomic_state *state,
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
-			if (!icl_is_nv12_y_plane(dev_priv, linked->id))
+		if ((crtc_state->nv12_planes & BIT(plane->id)) == 0)
+			continue;
+
+		for_each_intel_plane_on_crtc(&dev_priv->drm, crtc, y_plane) {
+			if (!icl_is_nv12_y_plane(dev_priv, y_plane->id))
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
 				    "Need %d free Y planes for planar YUV\n",
 				    hweight8(crtc_state->nv12_planes));
@@ -4527,7 +4536,7 @@ static int icl_check_nv12_planes(struct intel_atomic_state *state,
 			return -EINVAL;
 		}
 
-		link_nv12_planes(crtc_state, plane_state, linked_state);
+		link_nv12_planes(crtc_state, plane_state, y_plane_state);
 	}
 
 	return 0;
-- 
2.45.3

