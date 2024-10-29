Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E6D99B54B8
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2024 22:12:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADA5110E717;
	Tue, 29 Oct 2024 21:12:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="URakMNK9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25C9210E714
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2024 21:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730236342; x=1761772342;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=QY1RrZJiQdYrUG4jYyDMXbODvTHY97jPFDi4cnD/9ys=;
 b=URakMNK9+zfjh/u3sVFB8vE2e5Qjo9Pu2XSMA20pIRMkXAOE8s81NbEh
 qBmsVqoluU8LslIaNt+fF4Oid+ls5XzQbjuLTMExcf+FDyj433ik8kGrq
 Hi7eIfCUqrWX+dD6tiNYioYkzw6V7yIkeYm5Auvjlc2yk71BEzzJzWHGR
 9WA6EbjYklLPS9kCSuP/ZGRFsZQVX2JknfwH+V2AgcfCL8rwrbiia663M
 Cr+99sfavEZZDhNAaPPyw7iA8vwDeR92nemo8OHCUcD4dGwjgUOkKuOLY
 2GRaos1YJ1oj4CeW+mTF66fXU5vone3JGIog672fLccEwGoCig4TCLrn1 A==;
X-CSE-ConnectionGUID: dL3nzhYfT0ig/0EZh0xulg==
X-CSE-MsgGUID: k2dh8K4VQzKIJWMcKgPVrg==
X-IronPort-AV: E=McAfee;i="6700,10204,11240"; a="30019540"
X-IronPort-AV: E=Sophos;i="6.11,243,1725346800"; d="scan'208";a="30019540"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 14:12:21 -0700
X-CSE-ConnectionGUID: QB0wDswpQb+hMY59lRyWcw==
X-CSE-MsgGUID: 7i+9V0ZOTKCAf96FyShsGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,243,1725346800"; d="scan'208";a="82191723"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 29 Oct 2024 14:10:43 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 29 Oct 2024 23:10:42 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 4/9] drm/i915/scaler: Clean up intel_atomic_setup_scalers() a
 bit
Date: Tue, 29 Oct 2024 23:10:25 +0200
Message-ID: <20241029211030.13255-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241029211030.13255-1-ville.syrjala@linux.intel.com>
References: <20241029211030.13255-1-ville.syrjala@linux.intel.com>
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

intel_atomic_setup_scalers() is currently messing around with
the internals of the atomic states. Stop doing that and instead
use the regular interfaces so that we don't need to know any ugly
implementation details.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_scaler.c | 64 ++++++++---------------
 1 file changed, 22 insertions(+), 42 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index 29fa4a14400b..9f11ecf7066d 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -426,7 +426,7 @@ static int intel_atomic_setup_scaler(struct intel_crtc_scaler_state *scaler_stat
 
 /**
  * intel_atomic_setup_scalers() - setup scalers for crtc per staged requests
- * @intel_state: atomic state
+ * @state: atomic state
  * @crtc: crtc
  *
  * This function sets up scalers based on staged scaling requests for
@@ -440,14 +440,12 @@ static int intel_atomic_setup_scaler(struct intel_crtc_scaler_state *scaler_stat
  *         0 - scalers were setup successfully
  *         error code - otherwise
  */
-int intel_atomic_setup_scalers(struct intel_atomic_state *intel_state,
+int intel_atomic_setup_scalers(struct intel_atomic_state *state,
 			       struct intel_crtc *crtc)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	struct intel_crtc_state *crtc_state =
-		intel_atomic_get_new_crtc_state(intel_state, crtc);
-	struct drm_plane *plane = NULL;
-	struct intel_plane *intel_plane;
+		intel_atomic_get_new_crtc_state(state, crtc);
 	struct intel_crtc_scaler_state *scaler_state =
 		&crtc_state->scaler_state;
 	int num_scalers_need;
@@ -493,47 +491,29 @@ int intel_atomic_setup_scalers(struct intel_atomic_state *intel_state,
 			/* panel fitter case: assign as a crtc scaler */
 			scaler_id = &scaler_state->scaler_id;
 		} else {
-			name = "PLANE";
-
-			/* plane scaler case: assign as a plane scaler */
-			/* find the plane that set the bit as scaler_user */
-			plane = intel_state->base.planes[i].ptr;
-
-			/*
-			 * to enable/disable hq mode, add planes that are using scaler
-			 * into this transaction
-			 */
-			if (!plane) {
-				struct drm_plane_state *state;
-
-				/*
-				 * GLK+ scalers don't have a HQ mode so it
-				 * isn't necessary to change between HQ and dyn mode
-				 * on those platforms.
-				 */
-				if (DISPLAY_VER(dev_priv) >= 10)
-					continue;
-
-				plane = drm_plane_from_index(&dev_priv->drm, i);
-				state = drm_atomic_get_plane_state(&intel_state->base, plane);
-				if (IS_ERR(state)) {
-					drm_dbg_kms(&dev_priv->drm,
-						    "Failed to add [PLANE:%d] to drm_state\n",
-						    plane->base.id);
-					return PTR_ERR(state);
-				}
-			}
-
-			intel_plane = to_intel_plane(plane);
-			idx = plane->base.id;
+			struct intel_plane *plane =
+				to_intel_plane(drm_plane_from_index(&dev_priv->drm, i));
 
 			/* plane on different crtc cannot be a scaler user of this crtc */
-			if (drm_WARN_ON(&dev_priv->drm,
-					intel_plane->pipe != crtc->pipe))
+			if (drm_WARN_ON(&dev_priv->drm, plane->pipe != crtc->pipe))
 				continue;
 
-			plane_state = intel_atomic_get_new_plane_state(intel_state,
-								       intel_plane);
+			plane_state = intel_atomic_get_new_plane_state(state, plane);
+
+			/*
+			 * GLK+ scalers don't have a HQ mode so it
+			 * isn't necessary to change between HQ and dyn mode
+			 * on those platforms.
+			 */
+			if (!plane_state && DISPLAY_VER(dev_priv) >= 10)
+				continue;
+
+			plane_state = intel_atomic_get_plane_state(state, plane);
+			if (IS_ERR(plane_state))
+				return PTR_ERR(plane_state);
+
+			name = "PLANE";
+			idx = plane->base.base.id;
 			scaler_id = &plane_state->scaler_id;
 		}
 
-- 
2.45.2

