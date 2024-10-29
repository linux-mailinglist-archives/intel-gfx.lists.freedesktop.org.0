Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 434889B54B7
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2024 22:12:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC57110E713;
	Tue, 29 Oct 2024 21:12:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DGNqi0bn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0DEFA10E70F
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2024 21:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730236342; x=1761772342;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=iTBHcpzSwmLZ0svsxTg/WE4ZvFiZsgd9Wau/6RJujfc=;
 b=DGNqi0bnfDbRYoFzssFP9IXeh6Wowt+8NqxLYuTMv+ushSK0EAgbkeGI
 WCrGhH4pLyEVBBXR1mNbgMceRqKuFrIynZgdnPjQ9/0dWO6foO++wr3+/
 oUrRueFhQ73Przi9GPqGbsE0Mz9HK46LwMaaZbI2mWn/xus/nKOkAIic8
 927bDCSI2RWiaLw9/bzfX9+1XiWJTKeMfH12XsMPd/l/8xPRS4S0rJfSR
 Xjhqmgv7kbW3Tm0H0ogCoIPlFJtOw6ruXmVSgm3Y2I1S+qcDpNnObVo9w
 IzPJ7eyFvyK6SrxdWcG3KXIl7SZFO+GBoX0XZoxMU2Kfo6fphnhNxkmCc Q==;
X-CSE-ConnectionGUID: 80DjR5KOQVy9cT+HPWMBoA==
X-CSE-MsgGUID: 6LhL9vfyT3yR2lfvSS8kkA==
X-IronPort-AV: E=McAfee;i="6700,10204,11240"; a="30019539"
X-IronPort-AV: E=Sophos;i="6.11,243,1725346800"; d="scan'208";a="30019539"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 14:12:21 -0700
X-CSE-ConnectionGUID: r1zKWFcqTPa2tPUAymtGMw==
X-CSE-MsgGUID: RAX8SDWYRXqc5czNO8lP3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,243,1725346800"; d="scan'208";a="82191671"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 29 Oct 2024 14:10:40 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 29 Oct 2024 23:10:39 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 3/9] drm/i915/scaler: Pass the whole atomic state into
 intel_atomic_setup_scalers()
Date: Tue, 29 Oct 2024 23:10:24 +0200
Message-ID: <20241029211030.13255-4-ville.syrjala@linux.intel.com>
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

intel_atomic_setup_scalers() currently digs out the full atomic
state from the crtc state. Flip that on its head so that we instead
pass in the full atomic state and dig out the crtc state (and whatever
else we need). This is generallte the better approach as it works
in all phases of the atomic commit, whereas the other apporoach only
really works during .atomic_check().

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |  2 +-
 drivers/gpu/drm/i915/display/skl_scaler.c    | 19 +++++++++----------
 drivers/gpu/drm/i915/display/skl_scaler.h    |  7 +++----
 3 files changed, 13 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 0e6d6c8354ef..dce3a20fa69f 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4581,7 +4581,7 @@ static int intel_crtc_atomic_check(struct intel_atomic_state *state,
 				return ret;
 		}
 
-		ret = intel_atomic_setup_scalers(dev_priv, crtc, crtc_state);
+		ret = intel_atomic_setup_scalers(state, crtc);
 		if (ret)
 			return ret;
 	}
diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index b6a4effee5de..29fa4a14400b 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -426,9 +426,8 @@ static int intel_atomic_setup_scaler(struct intel_crtc_scaler_state *scaler_stat
 
 /**
  * intel_atomic_setup_scalers() - setup scalers for crtc per staged requests
- * @dev_priv: i915 device
- * @crtc: intel crtc
- * @crtc_state: incoming crtc_state to validate and setup scalers
+ * @intel_state: atomic state
+ * @crtc: crtc
  *
  * This function sets up scalers based on staged scaling requests for
  * a @crtc and its planes. It is called from crtc level check path. If request
@@ -441,16 +440,16 @@ static int intel_atomic_setup_scaler(struct intel_crtc_scaler_state *scaler_stat
  *         0 - scalers were setup successfully
  *         error code - otherwise
  */
-int intel_atomic_setup_scalers(struct drm_i915_private *dev_priv,
-			       struct intel_crtc *crtc,
-			       struct intel_crtc_state *crtc_state)
+int intel_atomic_setup_scalers(struct intel_atomic_state *intel_state,
+			       struct intel_crtc *crtc)
 {
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct intel_crtc_state *crtc_state =
+		intel_atomic_get_new_crtc_state(intel_state, crtc);
 	struct drm_plane *plane = NULL;
 	struct intel_plane *intel_plane;
 	struct intel_crtc_scaler_state *scaler_state =
 		&crtc_state->scaler_state;
-	struct drm_atomic_state *drm_state = crtc_state->uapi.state;
-	struct intel_atomic_state *intel_state = to_intel_atomic_state(drm_state);
 	int num_scalers_need;
 	int i;
 
@@ -498,7 +497,7 @@ int intel_atomic_setup_scalers(struct drm_i915_private *dev_priv,
 
 			/* plane scaler case: assign as a plane scaler */
 			/* find the plane that set the bit as scaler_user */
-			plane = drm_state->planes[i].ptr;
+			plane = intel_state->base.planes[i].ptr;
 
 			/*
 			 * to enable/disable hq mode, add planes that are using scaler
@@ -516,7 +515,7 @@ int intel_atomic_setup_scalers(struct drm_i915_private *dev_priv,
 					continue;
 
 				plane = drm_plane_from_index(&dev_priv->drm, i);
-				state = drm_atomic_get_plane_state(drm_state, plane);
+				state = drm_atomic_get_plane_state(&intel_state->base, plane);
 				if (IS_ERR(state)) {
 					drm_dbg_kms(&dev_priv->drm,
 						    "Failed to add [PLANE:%d] to drm_state\n",
diff --git a/drivers/gpu/drm/i915/display/skl_scaler.h b/drivers/gpu/drm/i915/display/skl_scaler.h
index 73fa59da09f9..4d2e2dbb1666 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.h
+++ b/drivers/gpu/drm/i915/display/skl_scaler.h
@@ -5,7 +5,7 @@
 #ifndef INTEL_SCALER_H
 #define INTEL_SCALER_H
 
-struct drm_i915_private;
+struct intel_atomic_state;
 struct intel_crtc;
 struct intel_crtc_state;
 struct intel_plane;
@@ -16,9 +16,8 @@ int skl_update_scaler_crtc(struct intel_crtc_state *crtc_state);
 int skl_update_scaler_plane(struct intel_crtc_state *crtc_state,
 			    struct intel_plane_state *plane_state);
 
-int intel_atomic_setup_scalers(struct drm_i915_private *dev_priv,
-			       struct intel_crtc *crtc,
-			       struct intel_crtc_state *crtc_state);
+int intel_atomic_setup_scalers(struct intel_atomic_state *state,
+			       struct intel_crtc *crtc);
 
 void skl_pfit_enable(const struct intel_crtc_state *crtc_state);
 
-- 
2.45.2

