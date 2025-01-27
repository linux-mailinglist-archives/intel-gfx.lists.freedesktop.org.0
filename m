Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D8FC3A1DB38
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2025 18:22:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 83C3210E592;
	Mon, 27 Jan 2025 17:22:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OgKOkbmf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1EBB10E592
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Jan 2025 17:22:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737998545; x=1769534545;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=h1854Z+MjFSCsiVpZGWYMBW4jN/Q3Vyj7yk18O88jFA=;
 b=OgKOkbmfkot9Zd+++l9bXasU/KWvoik7/wjZdzCirBufF+MrUM+oNFmc
 CO5p+11V3J5XucyQTCNYLnht0zJq9zVZfRgR2/QIzljDqUYtMowwuyhib
 pVxOhNDs6y/TmGrgyzVTXWRhCsN+7h7mFU2BzfMc9XbNxX7YeraScYSid
 lCj3yWN+kYzVPXaTugpbrTxrXJhifY6gC3f0Rkwrf0JKYdcy4U8amR9Xl
 xGRIZILN3bQWRn8hBvOSBngxS74+SucwoqftnGJilVKl42IwjW68KmgGp
 S54w5u2BLvB5yVhtZbsRv5G4ctFRv2TEKk+JhwakOamPDlv83oI00K2gy Q==;
X-CSE-ConnectionGUID: JmZrpCF2QsyKfIyfDFTBOA==
X-CSE-MsgGUID: a/arLap4S6GcFegBNfYZxw==
X-IronPort-AV: E=McAfee;i="6700,10204,11328"; a="38501399"
X-IronPort-AV: E=Sophos;i="6.13,239,1732608000"; d="scan'208";a="38501399"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2025 09:22:24 -0800
X-CSE-ConnectionGUID: FXo7ELVwSJKfowOdYzdQXA==
X-CSE-MsgGUID: kSwUGqEPQGuSZGNQqmHVWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,239,1732608000"; d="scan'208";a="108610256"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 27 Jan 2025 09:22:23 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 27 Jan 2025 19:22:22 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 09/11] drm/i915: Move icl+ nv12 plane register mangling into
 skl_universal_plane.c
Date: Mon, 27 Jan 2025 19:21:54 +0200
Message-ID: <20250127172156.21928-10-ville.syrjala@linux.intel.com>
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

Try to keep all the low level skl+ universal plane register
details inside skl_universal_plane.c instead of having them
sprinkled all over the place.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  | 30 ++++-------------
 .../drm/i915/display/skl_universal_plane.c    | 32 +++++++++++++++++++
 .../drm/i915/display/skl_universal_plane.h    |  3 ++
 3 files changed, 41 insertions(+), 24 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 3e784fbd4474..36611b290dff 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -123,7 +123,6 @@
 #include "intel_wm.h"
 #include "skl_scaler.h"
 #include "skl_universal_plane.h"
-#include "skl_universal_plane_regs.h"
 #include "skl_watermark.h"
 #include "vlv_dpio_phy_regs.h"
 #include "vlv_dsi.h"
@@ -4425,33 +4424,16 @@ static void link_nv12_planes(struct intel_crtc_state *crtc_state,
 		    y_plane->base.name, uv_plane->base.name);
 
 	/* Copy parameters to Y plane */
-	y_plane_state->ctl = uv_plane_state->ctl | PLANE_CTL_YUV420_Y_PLANE;
-	y_plane_state->color_ctl = uv_plane_state->color_ctl;
-	y_plane_state->view = uv_plane_state->view;
-	y_plane_state->decrypt = uv_plane_state->decrypt;
-
 	intel_plane_copy_hw_state(y_plane_state, uv_plane_state);
 	y_plane_state->uapi.src = uv_plane_state->uapi.src;
 	y_plane_state->uapi.dst = uv_plane_state->uapi.dst;
 
-	if (icl_is_hdr_plane(dev_priv, uv_plane->id)) {
-		switch (y_plane->id) {
-		case PLANE_7:
-			uv_plane_state->cus_ctl |= PLANE_CUS_Y_PLANE_7_ICL;
-			break;
-		case PLANE_6:
-			uv_plane_state->cus_ctl |= PLANE_CUS_Y_PLANE_6_ICL;
-			break;
-		case PLANE_5:
-			uv_plane_state->cus_ctl |= PLANE_CUS_Y_PLANE_5_RKL;
-			break;
-		case PLANE_4:
-			uv_plane_state->cus_ctl |= PLANE_CUS_Y_PLANE_4_RKL;
-			break;
-		default:
-			MISSING_CASE(y_plane->id);
-		}
-	}
+	y_plane_state->ctl = uv_plane_state->ctl;
+	y_plane_state->color_ctl = uv_plane_state->color_ctl;
+	y_plane_state->view = uv_plane_state->view;
+	y_plane_state->decrypt = uv_plane_state->decrypt;
+
+	icl_link_nv12_planes(uv_plane_state, y_plane_state);
 }
 
 static void unlink_nv12_plane(struct intel_crtc_state *crtc_state,
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index d5e5b76c5b38..4c19fce4db0e 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -2316,6 +2316,38 @@ static int skl_plane_check(struct intel_crtc_state *crtc_state,
 	return 0;
 }
 
+void icl_link_nv12_planes(struct intel_plane_state *uv_plane_state,
+			  struct intel_plane_state *y_plane_state)
+{
+	struct intel_plane *uv_plane = to_intel_plane(uv_plane_state->uapi.plane);
+	struct intel_plane *y_plane = to_intel_plane(y_plane_state->uapi.plane);
+	struct drm_i915_private *i915 = to_i915(uv_plane->base.dev);
+
+	drm_WARN_ON(&i915->drm, icl_is_nv12_y_plane(i915, uv_plane->id));
+	drm_WARN_ON(&i915->drm, !icl_is_nv12_y_plane(i915, y_plane->id));
+
+	y_plane_state->ctl |= PLANE_CTL_YUV420_Y_PLANE;
+
+	if (icl_is_hdr_plane(i915, uv_plane->id)) {
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
+	}
+}
+
 static enum intel_fbc_id skl_fbc_id_for_pipe(enum pipe pipe)
 {
 	return pipe - PIPE_A + INTEL_FBC_A;
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.h b/drivers/gpu/drm/i915/display/skl_universal_plane.h
index 18b41d13f0bd..9161bf64e8a3 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.h
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.h
@@ -32,6 +32,9 @@ int skl_format_to_fourcc(int format, bool rgb_order, bool alpha);
 int skl_calc_main_surface_offset(const struct intel_plane_state *plane_state,
 				 int *x, int *y, u32 *offset);
 
+void icl_link_nv12_planes(struct intel_plane_state *uv_plane_state,
+			  struct intel_plane_state *y_plane_state);
+
 bool icl_is_nv12_y_plane(struct drm_i915_private *dev_priv,
 			 enum plane_id plane_id);
 u8 icl_hdr_plane_mask(void);
-- 
2.45.3

