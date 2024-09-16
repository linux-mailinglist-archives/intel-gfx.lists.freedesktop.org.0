Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F83897A5E7
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Sep 2024 18:24:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B06310E3B3;
	Mon, 16 Sep 2024 16:24:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="l5iIi+sT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D72E10E3B3
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Sep 2024 16:24:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726503862; x=1758039862;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=7H9EbhIFaGjWrF/ahA6Sf+iiPl8OXxCnx+gd7PcYSlI=;
 b=l5iIi+sT1OrrqVyMPjfvXKf1SPnLn59d8pDYeqC0FrwqwZ4OTkMigQ4P
 DbaF13eR/tyq7HRpBdjRNBUx7kgSg8d1IT/ek8EuBJMCIbK8hzkpBXTIx
 5j/CVKjPJiozAo9osPIyy0t9NBqln0oYh3i/YsiwW0AW3zErrKYCKj2qY
 ydcJN84vOZAHGgdZK+CqvVJB1LX+ioT2FnltlHa+6iWGU/iO/1fN7SbU5
 Q3RO4veNu+Kr/VjzmBKP9tQB4c4QulhYuVge6jwQjetlyVg6McELBB5la
 jt5rCiVEEaelmLVJ/V1RrngiR5XGEiUaPd8v4OARnXWZPPmcMHcSAyc60 A==;
X-CSE-ConnectionGUID: 9W7zMKKSRo2NKBvbbpVPtA==
X-CSE-MsgGUID: H1BeIQQwSVGYcmLRd89J3A==
X-IronPort-AV: E=McAfee;i="6700,10204,11197"; a="42811719"
X-IronPort-AV: E=Sophos;i="6.10,233,1719903600"; d="scan'208";a="42811719"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2024 09:24:21 -0700
X-CSE-ConnectionGUID: juOYehaqSpexF0InYN1yiw==
X-CSE-MsgGUID: RjZO9c7TQaedi0curCENCQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,233,1719903600"; d="scan'208";a="69029951"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 16 Sep 2024 09:24:19 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 16 Sep 2024 19:24:18 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 2/7] drm/i915: Combine .compute_{pipe,
 intermediate}_wm() into one
Date: Mon, 16 Sep 2024 19:24:08 +0300
Message-ID: <20240916162413.8555-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240916162413.8555-1-ville.syrjala@linux.intel.com>
References: <20240916162413.8555-1-ville.syrjala@linux.intel.com>
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

We always call .compute_pipe_wm() and .compute_intermediate_wm()
back to back. Just combine them to a single hook for simplicity.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_wm.c        | 57 +++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_display.c  | 17 +-----
 .../gpu/drm/i915/display/intel_display_core.h |  6 +-
 drivers/gpu/drm/i915/display/intel_wm.c       | 24 ++------
 drivers/gpu/drm/i915/display/intel_wm.h       |  6 +-
 5 files changed, 63 insertions(+), 47 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i915/display/i9xx_wm.c
index 5b21604312fd..3151a31a5653 100644
--- a/drivers/gpu/drm/i915/display/i9xx_wm.c
+++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
@@ -1288,6 +1288,22 @@ static int g4x_compute_intermediate_wm(struct intel_atomic_state *state,
 	return 0;
 }
 
+static int g4x_compute_watermarks(struct intel_atomic_state *state,
+				  struct intel_crtc *crtc)
+{
+	int ret;
+
+	ret = g4x_compute_pipe_wm(state, crtc);
+	if (ret)
+		return ret;
+
+	ret = g4x_compute_intermediate_wm(state, crtc);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
 static void g4x_merge_wm(struct drm_i915_private *dev_priv,
 			 struct g4x_wm_values *wm)
 {
@@ -1914,6 +1930,22 @@ static int vlv_compute_intermediate_wm(struct intel_atomic_state *state,
 	return 0;
 }
 
+static int vlv_compute_watermarks(struct intel_atomic_state *state,
+				  struct intel_crtc *crtc)
+{
+	int ret;
+
+	ret = vlv_compute_pipe_wm(state, crtc);
+	if (ret)
+		return ret;
+
+	ret = vlv_compute_intermediate_wm(state, crtc);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
 static void vlv_merge_wm(struct drm_i915_private *dev_priv,
 			 struct vlv_wm_values *wm)
 {
@@ -2940,6 +2972,22 @@ static int ilk_compute_intermediate_wm(struct intel_atomic_state *state,
 	return 0;
 }
 
+static int ilk_compute_watermarks(struct intel_atomic_state *state,
+				  struct intel_crtc *crtc)
+{
+	int ret;
+
+	ret = ilk_compute_pipe_wm(state, crtc);
+	if (ret)
+		return ret;
+
+	ret = ilk_compute_intermediate_wm(state, crtc);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
 /*
  * Merge the watermarks from all active pipes for a specific level.
  */
@@ -3986,16 +4034,14 @@ static void ilk_wm_get_hw_state(struct drm_i915_private *dev_priv)
 }
 
 static const struct intel_wm_funcs ilk_wm_funcs = {
-	.compute_pipe_wm = ilk_compute_pipe_wm,
-	.compute_intermediate_wm = ilk_compute_intermediate_wm,
+	.compute_watermarks = ilk_compute_watermarks,
 	.initial_watermarks = ilk_initial_watermarks,
 	.optimize_watermarks = ilk_optimize_watermarks,
 	.get_hw_state = ilk_wm_get_hw_state,
 };
 
 static const struct intel_wm_funcs vlv_wm_funcs = {
-	.compute_pipe_wm = vlv_compute_pipe_wm,
-	.compute_intermediate_wm = vlv_compute_intermediate_wm,
+	.compute_watermarks = vlv_compute_watermarks,
 	.initial_watermarks = vlv_initial_watermarks,
 	.optimize_watermarks = vlv_optimize_watermarks,
 	.atomic_update_watermarks = vlv_atomic_update_fifo,
@@ -4003,8 +4049,7 @@ static const struct intel_wm_funcs vlv_wm_funcs = {
 };
 
 static const struct intel_wm_funcs g4x_wm_funcs = {
-	.compute_pipe_wm = g4x_compute_pipe_wm,
-	.compute_intermediate_wm = g4x_compute_intermediate_wm,
+	.compute_watermarks = g4x_compute_watermarks,
 	.initial_watermarks = g4x_initial_watermarks,
 	.optimize_watermarks = g4x_optimize_watermarks,
 	.get_hw_state = g4x_wm_get_hw_state_and_sanitize,
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index d4a371edfcdd..60866316fc68 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4292,22 +4292,11 @@ static int intel_crtc_atomic_check(struct intel_atomic_state *state,
 	if (ret)
 		return ret;
 
-	ret = intel_compute_pipe_wm(state, crtc);
+	ret = intel_wm_compute(state, crtc);
 	if (ret) {
 		drm_dbg_kms(&dev_priv->drm,
-			    "Target pipe watermarks are invalid\n");
-		return ret;
-	}
-
-	/*
-	 * Calculate 'intermediate' watermarks that satisfy both the
-	 * old state and the new state.  We can program these
-	 * immediately.
-	 */
-	ret = intel_compute_intermediate_wm(state, crtc);
-	if (ret) {
-		drm_dbg_kms(&dev_priv->drm,
-			    "No valid intermediate pipe watermarks are possible\n");
+			    "[CRTC:%d:%s] watermarks are invalid\n",
+			    crtc->base.base.id, crtc->base.name);
 		return ret;
 	}
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 0a711114ff2b..9ad125d3c0c0 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -81,10 +81,8 @@ struct intel_display_funcs {
 struct intel_wm_funcs {
 	/* update_wm is for legacy wm management */
 	void (*update_wm)(struct drm_i915_private *dev_priv);
-	int (*compute_pipe_wm)(struct intel_atomic_state *state,
-			       struct intel_crtc *crtc);
-	int (*compute_intermediate_wm)(struct intel_atomic_state *state,
-				       struct intel_crtc *crtc);
+	int (*compute_watermarks)(struct intel_atomic_state *state,
+				  struct intel_crtc *crtc);
 	void (*initial_watermarks)(struct intel_atomic_state *state,
 				   struct intel_crtc *crtc);
 	void (*atomic_update_watermarks)(struct intel_atomic_state *state,
diff --git a/drivers/gpu/drm/i915/display/intel_wm.c b/drivers/gpu/drm/i915/display/intel_wm.c
index 462917bc488f..d7dc49aecd27 100644
--- a/drivers/gpu/drm/i915/display/intel_wm.c
+++ b/drivers/gpu/drm/i915/display/intel_wm.c
@@ -50,29 +50,15 @@ void intel_update_watermarks(struct drm_i915_private *i915)
 		i915->display.funcs.wm->update_wm(i915);
 }
 
-int intel_compute_pipe_wm(struct intel_atomic_state *state,
-			  struct intel_crtc *crtc)
+int intel_wm_compute(struct intel_atomic_state *state,
+		     struct intel_crtc *crtc)
 {
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 
-	if (i915->display.funcs.wm->compute_pipe_wm)
-		return i915->display.funcs.wm->compute_pipe_wm(state, crtc);
-
-	return 0;
-}
-
-int intel_compute_intermediate_wm(struct intel_atomic_state *state,
-				  struct intel_crtc *crtc)
-{
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
-
-	if (!i915->display.funcs.wm->compute_intermediate_wm)
-		return 0;
-
-	if (drm_WARN_ON(&i915->drm, !i915->display.funcs.wm->compute_pipe_wm))
+	if (!display->funcs.wm->compute_watermarks)
 		return 0;
 
-	return i915->display.funcs.wm->compute_intermediate_wm(state, crtc);
+	return display->funcs.wm->compute_watermarks(state, crtc);
 }
 
 bool intel_initial_watermarks(struct intel_atomic_state *state,
diff --git a/drivers/gpu/drm/i915/display/intel_wm.h b/drivers/gpu/drm/i915/display/intel_wm.h
index 48429ac140d2..e97cdca89a5c 100644
--- a/drivers/gpu/drm/i915/display/intel_wm.h
+++ b/drivers/gpu/drm/i915/display/intel_wm.h
@@ -15,10 +15,8 @@ struct intel_crtc_state;
 struct intel_plane_state;
 
 void intel_update_watermarks(struct drm_i915_private *i915);
-int intel_compute_pipe_wm(struct intel_atomic_state *state,
-			  struct intel_crtc *crtc);
-int intel_compute_intermediate_wm(struct intel_atomic_state *state,
-				  struct intel_crtc *crtc);
+int intel_wm_compute(struct intel_atomic_state *state,
+		     struct intel_crtc *crtc);
 bool intel_initial_watermarks(struct intel_atomic_state *state,
 			      struct intel_crtc *crtc);
 void intel_atomic_update_watermarks(struct intel_atomic_state *state,
-- 
2.44.2

