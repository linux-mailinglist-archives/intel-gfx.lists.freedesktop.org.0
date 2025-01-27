Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D1A7A1DB36
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2025 18:22:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64E8710E598;
	Mon, 27 Jan 2025 17:22:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AE/p3wAd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A0B510E5A4
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Jan 2025 17:22:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737998539; x=1769534539;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Dr1psfAAuxafNSmnpXvWRIYeiU2KczewSqHqD4d1uZ8=;
 b=AE/p3wAdkzsuiHOIHCnTaFUJmm0aO037SDSvgyZIGSYAc3EV1uUThGAA
 sREtEM0oX1/i4kLad1A2lCyvY+QeU9MmuQrtiqMbm921VRtdRJFhALVYC
 Xhd/jIVRudBnLf2KsAZ00vuateE8GXef2263FBioyWed6Pxr9yFW4xSNU
 rV7JOjPng9mYrt3FQ1qD+jd58sUtRMwUnTaUQ+lctuq1JqleuCpHKaUWN
 J0q6CIIWbhIQdk1OJEoSAVD8MQxhf5026wwohLO/gBc0Njov+pdUUKkvs
 wpZ7ktDtZIbD0NyNbbalGPYjCp3goDGQXy809Vvi/q8NtadLd1W7/FRi5 w==;
X-CSE-ConnectionGUID: KSg8zBf/QI2rbuCMcLaL6Q==
X-CSE-MsgGUID: YNZCh3T5RrGBd0qqFTk9+A==
X-IronPort-AV: E=McAfee;i="6700,10204,11328"; a="38501393"
X-IronPort-AV: E=Sophos;i="6.13,239,1732608000"; d="scan'208";a="38501393"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2025 09:22:19 -0800
X-CSE-ConnectionGUID: EosH951GROi7t5RMRblnYQ==
X-CSE-MsgGUID: viRzo/6xT1OaM55nJB1FbA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,239,1732608000"; d="scan'208";a="108610222"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 27 Jan 2025 09:22:17 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 27 Jan 2025 19:22:16 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 07/11] drm/i915: Extract link_nv12_planes()
Date: Mon, 27 Jan 2025 19:21:52 +0200
Message-ID: <20250127172156.21928-8-ville.syrjala@linux.intel.com>
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

Pull the code linking the UV and Y planes together into a
sensible function instead of having the code plastered inside
the higher level loop.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 83 +++++++++++---------
 1 file changed, 47 insertions(+), 36 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 8004ad20ed0a..a1fa40622d35 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4402,6 +4402,52 @@ static bool check_single_encoder_cloning(struct intel_atomic_state *state,
 	return true;
 }
 
+static void link_nv12_planes(struct intel_crtc_state *crtc_state,
+			     struct intel_plane_state *plane_state,
+			     struct intel_plane_state *linked_state)
+{
+	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
+	struct intel_plane *linked = to_intel_plane(linked_state->uapi.plane);
+	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
+
+	plane_state->planar_linked_plane = linked;
+
+	linked_state->is_y_plane = true;
+	linked_state->planar_linked_plane = plane;
+	crtc_state->enabled_planes |= BIT(linked->id);
+	crtc_state->active_planes |= BIT(linked->id);
+	crtc_state->update_planes |= BIT(linked->id);
+	crtc_state->data_rate[linked->id] =
+		crtc_state->data_rate_y[plane->id];
+	crtc_state->rel_data_rate[linked->id] =
+		crtc_state->rel_data_rate_y[plane->id];
+	drm_dbg_kms(&dev_priv->drm, "Using %s as Y plane for %s\n",
+		    linked->base.name, plane->base.name);
+
+	/* Copy parameters to slave plane */
+	linked_state->ctl = plane_state->ctl | PLANE_CTL_YUV420_Y_PLANE;
+	linked_state->color_ctl = plane_state->color_ctl;
+	linked_state->view = plane_state->view;
+	linked_state->decrypt = plane_state->decrypt;
+
+	intel_plane_copy_hw_state(linked_state, plane_state);
+	linked_state->uapi.src = plane_state->uapi.src;
+	linked_state->uapi.dst = plane_state->uapi.dst;
+
+	if (icl_is_hdr_plane(dev_priv, plane->id)) {
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
@@ -4481,42 +4527,7 @@ static int icl_check_nv12_planes(struct intel_atomic_state *state,
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
-		drm_dbg_kms(&dev_priv->drm, "Using %s as Y plane for %s\n",
-			    linked->base.name, plane->base.name);
-
-		/* Copy parameters to slave plane */
-		linked_state->ctl = plane_state->ctl | PLANE_CTL_YUV420_Y_PLANE;
-		linked_state->color_ctl = plane_state->color_ctl;
-		linked_state->view = plane_state->view;
-		linked_state->decrypt = plane_state->decrypt;
-
-		intel_plane_copy_hw_state(linked_state, plane_state);
-		linked_state->uapi.src = plane_state->uapi.src;
-		linked_state->uapi.dst = plane_state->uapi.dst;
-
-		if (icl_is_hdr_plane(dev_priv, plane->id)) {
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

