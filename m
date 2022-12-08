Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ACC456471EC
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Dec 2022 15:39:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BB8410E4A5;
	Thu,  8 Dec 2022 14:39:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED8BC10E0D3
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Dec 2022 14:39:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670510362; x=1702046362;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=mdtyrVtMiJS3n7avFPyDleQUdFqStq+Fa2KmwTJxCJg=;
 b=j9MzbOwlLLcjRB+Kd/XEHkNCgg8Ll5iv2UU+QayOLIUuifRhExKzhOPp
 dH+xp/Zr/H5Qi0pMc9ZZrpkRJmPMXvzUhlbfAsqyZPsG8lCH0qntcuGjW
 OwYeirfI05eAs9OYri2KRAjQlV9lNL1MD1SuomBgU6AT8ij7wYbRjSsRi
 WGhmuPZ4aVMAZsK0sxvrpMlTZo88SYXI5qfM2oZgva+GKHFK8NWpvt/ff
 2YDfWCWoPtVirEX/jGcDuLOLMGY4+wFGcNy1llpYxgLO2/rm3oBvtpw6k
 KhDT77eahy3n/jGv9de+1IEuU3yTXCvh66A+hSBbCwqksjXHDgFKvLWVV w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10555"; a="344228223"
X-IronPort-AV: E=Sophos;i="5.96,227,1665471600"; d="scan'208";a="344228223"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2022 06:39:20 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10555"; a="771498974"
X-IronPort-AV: E=Sophos;i="5.96,227,1665471600"; d="scan'208";a="771498974"
Received: from jkollber-mobl.ger.corp.intel.com (HELO
 kveik.ger.corp.intel.com) ([10.252.56.74])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2022 06:39:17 -0800
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Dec 2022 16:38:52 +0200
Message-Id: <20221208143853.442803-1-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 1/2] drm/i915/mtl: limit second scaler
 vertical scaling in ver >= 14
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

In newer hardware versions (i.e. display version >= 14), the second
scaler doesn't support vertical scaling.

The current implementation of the scaling limits is simplified and
only occurs when the planes are created, so we don't know which scaler
is being used.

In order to handle separate scaling limits for horizontal and vertical
scaling, and different limits per scaler, split the checks in two
phases.  We first do a simple check during plane creation and use the
best-case scenario (because we don't know the scaler that may be used
at a later point) and then do a more specific check when the scalers
are actually being set up.

Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---
 drivers/gpu/drm/i915/display/intel_atomic.c | 83 ++++++++++++++++++---
 1 file changed, 73 insertions(+), 10 deletions(-)

In v2:
   * fix DRM_PLANE_NO_SCALING renamed macros;

In v3:
   * No changes.

In v4:
   * Got rid of the changes in the general planes max scale code;
   * Added a couple of FIXMEs;
   * Made intel_atomic_setup_scaler() return an int with errors;
   

diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu/drm/i915/display/intel_atomic.c
index 6621aa245caf..8373be283d8b 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic.c
@@ -41,6 +41,7 @@
 #include "intel_global_state.h"
 #include "intel_hdcp.h"
 #include "intel_psr.h"
+#include "intel_fb.h"
 #include "skl_universal_plane.h"
 
 /**
@@ -310,11 +311,11 @@ intel_crtc_destroy_state(struct drm_crtc *crtc,
 	kfree(crtc_state);
 }
 
-static void intel_atomic_setup_scaler(struct intel_crtc_scaler_state *scaler_state,
-				      int num_scalers_need, struct intel_crtc *intel_crtc,
-				      const char *name, int idx,
-				      struct intel_plane_state *plane_state,
-				      int *scaler_id)
+static int intel_atomic_setup_scaler(struct intel_crtc_scaler_state *scaler_state,
+				     int num_scalers_need, struct intel_crtc *intel_crtc,
+				     const char *name, int idx,
+				     struct intel_plane_state *plane_state,
+				     int *scaler_id)
 {
 	struct drm_i915_private *dev_priv = to_i915(intel_crtc->base.dev);
 	int j;
@@ -334,7 +335,7 @@ static void intel_atomic_setup_scaler(struct intel_crtc_scaler_state *scaler_sta
 
 	if (drm_WARN(&dev_priv->drm, *scaler_id < 0,
 		     "Cannot find scaler for %s:%d\n", name, idx))
-		return;
+		return -EBUSY;
 
 	/* set scaler mode */
 	if (plane_state && plane_state->hw.fb &&
@@ -375,9 +376,69 @@ static void intel_atomic_setup_scaler(struct intel_crtc_scaler_state *scaler_sta
 		mode = SKL_PS_SCALER_MODE_DYN;
 	}
 
+	/*
+	 * FIXME: we should also check the scaler factors for pfit, so
+	 * this shouldn't be tied directly to planes.
+	 */
+	if (plane_state && plane_state->hw.fb) {
+		const struct drm_framebuffer *fb = plane_state->hw.fb;
+		struct drm_rect *src = &plane_state->uapi.src;
+		struct drm_rect *dst = &plane_state->uapi.dst;
+		int hscale, vscale, max_vscale, max_hscale;
+
+		/*
+		 * FIXME: When two scalers are needed, but only one of
+		 * them needs to downscale, we should make sure that
+		 * the one that needs downscaling support is assigned
+		 * as the first scaler, so we don't reject downscaling
+		 * unnecessarily.
+		 */
+
+		if (DISPLAY_VER(dev_priv) >= 14) {
+			/*
+			 * On versions 14 and up, only the first
+			 * scaler supports a vertical scaling factor
+			 * of more than 1.0, while a horizontal
+			 * scaling factor of 3.0 is supported.
+			 */
+			max_hscale = 0x30000 - 1;
+			if (*scaler_id == 0)
+				max_vscale = 0x30000 - 1;
+			else
+				max_vscale = 0x10000;
+
+		} else if (DISPLAY_VER(dev_priv) >= 10 ||
+			   !intel_format_info_is_yuv_semiplanar(fb->format, fb->modifier)) {
+			max_hscale = 0x30000 - 1;
+			max_vscale = 0x30000 - 1;
+		} else {
+			max_hscale = 0x20000 - 1;
+			max_vscale = 0x20000 - 1;
+		}
+
+		/* Check if required scaling is within limits */
+		hscale = drm_rect_calc_hscale(src, dst, 1, max_hscale);
+		vscale = drm_rect_calc_vscale(src, dst, 1, max_vscale);
+
+		if (hscale < 0 || vscale < 0) {
+			drm_dbg_kms(&dev_priv->drm,
+				    "Scaler %d doesn't support required plane scaling\n",
+				    *scaler_id);
+			drm_rect_debug_print("src: ", src, true);
+			drm_rect_debug_print("dst: ", dst, false);
+
+			scaler_state->scalers[*scaler_id].in_use = 0;
+			*scaler_id = -1;
+
+			return -EOPNOTSUPP;
+		}
+	}
+
 	drm_dbg_kms(&dev_priv->drm, "Attached scaler id %u.%u to %s:%d\n",
 		    intel_crtc->pipe, *scaler_id, name, idx);
 	scaler_state->scalers[*scaler_id].mode = mode;
+
+	return 0;
 }
 
 /**
@@ -437,7 +498,7 @@ int intel_atomic_setup_scalers(struct drm_i915_private *dev_priv,
 	for (i = 0; i < sizeof(scaler_state->scaler_users) * 8; i++) {
 		int *scaler_id;
 		const char *name;
-		int idx;
+		int idx, ret;
 
 		/* skip if scaler not required */
 		if (!(scaler_state->scaler_users & (1 << i)))
@@ -494,9 +555,11 @@ int intel_atomic_setup_scalers(struct drm_i915_private *dev_priv,
 			scaler_id = &plane_state->scaler_id;
 		}
 
-		intel_atomic_setup_scaler(scaler_state, num_scalers_need,
-					  intel_crtc, name, idx,
-					  plane_state, scaler_id);
+		ret = intel_atomic_setup_scaler(scaler_state, num_scalers_need,
+						intel_crtc, name, idx,
+						plane_state, scaler_id);
+		if (ret < 0)
+			return ret;
 	}
 
 	return 0;
-- 
2.38.1

