Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A44EA32C20
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 17:44:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8F8B10E92C;
	Wed, 12 Feb 2025 16:44:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UnMC+nwJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6A3C10E92A
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Feb 2025 16:43:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739378640; x=1770914640;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XDSI0DOhP2d91g5s74/fKoOGTfhuUcr3St7G9Mh4jGk=;
 b=UnMC+nwJFj2LkibN4hbgsaxBCC0fthMuH4EN3VUEY5sJVBtlvZrwUNeG
 M1zEwF4Y22+WGHCyDoEpzKgzwLUOgH8cw7R6VCTUL+1wYD1sbYaKDo2Wy
 Aq91jLCgpdiJGP4oqcNuint0+q+/lpx/QlmqnBQZOlHkMXuCzNrvjAQQz
 PhgqeSgvFmNWSf78Bx5ggiMlThqvD8ZkuHNFRv/IE9mFpjlTxgxZf3Z0/
 6vgP/EJa0w4mvYFpXVkvQRWcbshM4Mt/VAijwvV1rNn/pEinB1d7cNdDj
 z8g8ddOOvm3Mbvz9KtZUBnam8f1WBUxxs1nQ1bOJUp60Hu+Aay7vo86Af g==;
X-CSE-ConnectionGUID: c4r7ukpxRYyLbhaz/YrW1g==
X-CSE-MsgGUID: unhG3MdvT5GEvauv9CQxaQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11343"; a="62515016"
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="62515016"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 08:43:59 -0800
X-CSE-ConnectionGUID: ePtfr2P+REWpQK62qGNs1g==
X-CSE-MsgGUID: jENKd3wOS+Oi91ZYTQiwng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="113082672"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 12 Feb 2025 08:43:58 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 12 Feb 2025 18:43:56 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Subject: [PATCH v2 09/10] drm/i915: Move icl+ nv12 plane register mangling
 into skl_universal_plane.c
Date: Wed, 12 Feb 2025 18:43:29 +0200
Message-ID: <20250212164330.16891-10-ville.syrjala@linux.intel.com>
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

Try to keep all the low level skl+ universal plane register
details inside skl_universal_plane.c instead of having them
sprinkled all over the place.

v2: Rebase due to intel_display changes

Reviewed-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  | 30 ++++-------------
 .../drm/i915/display/skl_universal_plane.c    | 32 +++++++++++++++++++
 .../drm/i915/display/skl_universal_plane.h    |  3 ++
 3 files changed, 41 insertions(+), 24 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index b7f233e526d6..9c7a8203f135 100644
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
@@ -4435,33 +4434,16 @@ static void link_nv12_planes(struct intel_crtc_state *crtc_state,
 	crtc_state->rel_data_rate[y_plane->id] = crtc_state->rel_data_rate_y[uv_plane->id];
 
 	/* Copy parameters to Y plane */
-	y_plane_state->ctl = uv_plane_state->ctl | PLANE_CTL_YUV420_Y_PLANE;
-	y_plane_state->color_ctl = uv_plane_state->color_ctl;
-	y_plane_state->view = uv_plane_state->view;
-	y_plane_state->decrypt = uv_plane_state->decrypt;
-
 	intel_plane_copy_hw_state(y_plane_state, uv_plane_state);
 	y_plane_state->uapi.src = uv_plane_state->uapi.src;
 	y_plane_state->uapi.dst = uv_plane_state->uapi.dst;
 
-	if (icl_is_hdr_plane(display, uv_plane->id)) {
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
index 4b8732ae65aa..110f66dd5cf0 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -2327,6 +2327,38 @@ static int skl_plane_check(struct intel_crtc_state *crtc_state,
 	return 0;
 }
 
+void icl_link_nv12_planes(struct intel_plane_state *uv_plane_state,
+			  struct intel_plane_state *y_plane_state)
+{
+	struct intel_display *display = to_intel_display(uv_plane_state);
+	struct intel_plane *uv_plane = to_intel_plane(uv_plane_state->uapi.plane);
+	struct intel_plane *y_plane = to_intel_plane(y_plane_state->uapi.plane);
+
+	drm_WARN_ON(display->drm, icl_is_nv12_y_plane(display, uv_plane->id));
+	drm_WARN_ON(display->drm, !icl_is_nv12_y_plane(display, y_plane->id));
+
+	y_plane_state->ctl |= PLANE_CTL_YUV420_Y_PLANE;
+
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
+	}
+}
+
 static enum intel_fbc_id skl_fbc_id_for_pipe(enum pipe pipe)
 {
 	return pipe - PIPE_A + INTEL_FBC_A;
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.h b/drivers/gpu/drm/i915/display/skl_universal_plane.h
index 0ce240e9ca5a..5e2451c21eeb 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.h
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.h
@@ -32,6 +32,9 @@ int skl_format_to_fourcc(int format, bool rgb_order, bool alpha);
 int skl_calc_main_surface_offset(const struct intel_plane_state *plane_state,
 				 int *x, int *y, u32 *offset);
 
+void icl_link_nv12_planes(struct intel_plane_state *uv_plane_state,
+			  struct intel_plane_state *y_plane_state);
+
 bool icl_is_nv12_y_plane(struct intel_display *display,
 			 enum plane_id plane_id);
 u8 icl_hdr_plane_mask(void);
-- 
2.45.3

