Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FFF49C05BD
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2024 13:27:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BF8210E81A;
	Thu,  7 Nov 2024 12:27:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="b/P9674d";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2087910E822
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Nov 2024 12:27:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730982430; x=1762518430;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=S7KPuIq7xipLKUtRqVeVqazUBw5Aop1cacRPuPQU4Dw=;
 b=b/P9674dal3/ydV5BK9NrCeF3kAcKiJzS1nxPjNeMCALdv2mRQ/MY2tV
 q52QrTVLx1z7u5wSbn+Fj2jx87CtUOr8PntgV+WhO91832aeb3PsHSULl
 BuosgbPnl+CU6RpcYoOPWTpC0oXQbwXbosWPgwayJ2S3uFJch8LzguFWQ
 cNLAWCJoFsAWrvWjp/ZvwZUuc/5Efx5hKGusnl/prauMjFot2DSK5lUFo
 No7mEB0emNpmEP+/zaKCOPluxhsuKfOWCrft7mzC+5X+tGojanDzGzeTo
 ALEKjANr/wqEXVuLjEy1nybvb4tBpHYdv4okInouPJkWQyhaWybdgOtio g==;
X-CSE-ConnectionGUID: we6rQ4uFQ6WCUipf2idVxw==
X-CSE-MsgGUID: TmxmAPzPTWuQ4oSCjA0nxg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="34516013"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="34516013"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 04:27:10 -0800
X-CSE-ConnectionGUID: rXPkf5YjSJyZ89w0cclriA==
X-CSE-MsgGUID: pHeUSMDxSjeB7Jdmj5PFBA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,266,1728975600"; d="scan'208";a="85189355"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 07 Nov 2024 04:27:08 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 07 Nov 2024 14:27:07 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 3/8] drm/i915/scaler: Pass the whole atomic state into
 intel_atomic_setup_scalers()
Date: Thu,  7 Nov 2024 14:26:53 +0200
Message-ID: <20241107122658.21901-4-ville.syrjala@linux.intel.com>
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

intel_atomic_setup_scalers() currently digs out the full atomic
state from the crtc state. Flip that on its head so that we instead
pass in the full atomic state and dig out the crtc state (and whatever
else we need). This is generallte the better approach as it works
in all phases of the atomic commit, whereas the other apporoach only
really works during .atomic_check().

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |  2 +-
 drivers/gpu/drm/i915/display/skl_scaler.c    | 19 +++++++++----------
 drivers/gpu/drm/i915/display/skl_scaler.h    |  7 +++----
 3 files changed, 13 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index d7f92dc56d1e..ce07d6016e1d 100644
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

