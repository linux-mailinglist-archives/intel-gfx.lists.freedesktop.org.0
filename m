Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E9069C05BF
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2024 13:27:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B516910E818;
	Thu,  7 Nov 2024 12:27:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TkU2OHYl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E6DA810E81C
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Nov 2024 12:27:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730982433; x=1762518433;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RkcAVAOXOyj6A1wG7AunXdpM2VY9iS4RwVNKXW0/8/Q=;
 b=TkU2OHYl22+VqQt31aH+0dZUMsm9W5IMnkpW6Jo0YRqC6/2Bw2opFw9e
 /iW6AgWX/baGo/twEgwnYM+w4R9RIAmlqV7FBuVd5+x17KzK61gDz66ov
 tTdUYzfMt8sf6ypHR/0xyE54CO6uyjyqFZK5O/zQwUZVFtTOyJHh7Br9q
 VxaCLnoFuXU/gppRgSZs4yd67CwN8CJmgybvIS/spc114/bAEHHxa2ct0
 F14BJjVcKcCfsNkqzgGpwVwqL+6d1YxkW+EzP09dKzW4A1PNvtJjn+fYY
 eQYVsylSs5/EqWMrTEoU3q6jW2NV5cvy5sKO1MM/TOnAGiqvNcKitVy2y g==;
X-CSE-ConnectionGUID: C0DQ+LsxQyyJlxMftmof0A==
X-CSE-MsgGUID: wi6qCNqxSQWOTzVHf+B8iw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="34516020"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="34516020"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 04:27:13 -0800
X-CSE-ConnectionGUID: ThRGBqmbQ6qw5gxtcSsR0g==
X-CSE-MsgGUID: OI8gnWECSSmiqBVhOng8uA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,266,1728975600"; d="scan'208";a="85189368"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 07 Nov 2024 04:27:10 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 07 Nov 2024 14:27:10 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Luca Coelho <luciano.coelho@intel.com>
Subject: [PATCH v2 4/8] drm/i915/scaler: Clean up intel_atomic_setup_scalers()
 a bit
Date: Thu,  7 Nov 2024 14:26:54 +0200
Message-ID: <20241107122658.21901-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241107122658.21901-1-ville.syrjala@linux.intel.com>
References: <20241107122658.21901-1-ville.syrjala@linux.intel.com>
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

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_scaler.c | 60 ++++++++---------------
 1 file changed, 20 insertions(+), 40 deletions(-)

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
+			struct intel_plane *plane =
+				to_intel_plane(drm_plane_from_index(&dev_priv->drm, i));
+
+			/* plane on different crtc cannot be a scaler user of this crtc */
+			if (drm_WARN_ON(&dev_priv->drm, plane->pipe != crtc->pipe))
+				continue;
 
-			/* plane scaler case: assign as a plane scaler */
-			/* find the plane that set the bit as scaler_user */
-			plane = intel_state->base.planes[i].ptr;
+			plane_state = intel_atomic_get_new_plane_state(state, plane);
 
 			/*
-			 * to enable/disable hq mode, add planes that are using scaler
-			 * into this transaction
+			 * GLK+ scalers don't have a HQ mode so it
+			 * isn't necessary to change between HQ and dyn mode
+			 * on those platforms.
 			 */
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
-
-			/* plane on different crtc cannot be a scaler user of this crtc */
-			if (drm_WARN_ON(&dev_priv->drm,
-					intel_plane->pipe != crtc->pipe))
+			if (!plane_state && DISPLAY_VER(dev_priv) >= 10)
 				continue;
 
-			plane_state = intel_atomic_get_new_plane_state(intel_state,
-								       intel_plane);
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

