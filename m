Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 391E3A56FEE
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Mar 2025 19:02:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D4C610EC2D;
	Fri,  7 Mar 2025 18:02:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fxgt28E6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9108210EC22;
 Fri,  7 Mar 2025 18:02:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741370540; x=1772906540;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QvwdoyUnCNY4Wm7WhrjZCLXNvoDoN81LDnxXJH07mRA=;
 b=fxgt28E6tAR35fjvNQVlJmlUql5Z5B7T5hL8QOMhPhzqI63wsHfg3zB0
 Um3XEe2JFDOPdIYLzYRmUD4FyGsTzByMX9/0S6Mt47vO8/pV4XJgOWGq5
 UpTtsaNoKv+5qxnU/vVjexjHqLU504bwn2nmlH5bgzMXlLVxw4icsNgF6
 rz9fzRGNnK0iSkFxYcJlB0kG+byHEUKfcCwP3mzB2W1ZLfM4NGS3PPEbf
 G5oOjQPlQOKsxKOxe4C/fIQFzVtNV+mG6l9/e8qjShyu7YrBlJ6X1UaZz
 lml1vXukWs+SL4XBMvfLCHirQZm87E7A4Zl1Ht7YVZ6DqcCoR5rfE56dd A==;
X-CSE-ConnectionGUID: 2rpuivKuTjCW4P5fUa+F6g==
X-CSE-MsgGUID: EyTi/wmuRASXyW1COtHB+w==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="52637177"
X-IronPort-AV: E=Sophos;i="6.14,229,1736841600"; d="scan'208";a="52637177"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2025 10:02:20 -0800
X-CSE-ConnectionGUID: Kr59Op5qSnW5LU2ZbMCRoA==
X-CSE-MsgGUID: 5rw2vbf1Ty6MmnF5325p7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="124621189"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 07 Mar 2025 10:02:17 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 07 Mar 2025 20:02:16 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 10/14] drm/i915: Extract intel_bw_check_sagv_mask()
Date: Fri,  7 Mar 2025 20:01:35 +0200
Message-ID: <20250307180139.15744-11-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250307180139.15744-1-ville.syrjala@linux.intel.com>
References: <20250307180139.15744-1-ville.syrjala@linux.intel.com>
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

Move the bw_state->pipe_sagv_reject computation into intel_bw.c
where it belongs.

Previously we had a complicated dance between watermarks and
sagv which required this to be computed earlier, but that was
changed in commit 5e8146251f7b ("extract intel_bw_check_sagv_mask()")
which allows the whole thing to be cleaned up quite a bit.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c      | 40 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_bw.h      |  1 +
 drivers/gpu/drm/i915/display/skl_watermark.c | 31 ++-------------
 drivers/gpu/drm/i915/display/skl_watermark.h |  1 +
 4 files changed, 46 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 6fd6c7b535ed..33ec9f574716 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -1408,6 +1408,46 @@ int intel_bw_modeset_checks(struct intel_atomic_state *state)
 	return 0;
 }
 
+int intel_bw_check_sagv_mask(struct intel_atomic_state *state)
+{
+	struct intel_display *display = to_intel_display(state);
+	struct drm_i915_private *i915 = to_i915(display->drm);
+	const struct intel_crtc_state *new_crtc_state;
+	const struct intel_bw_state *old_bw_state = NULL;
+	struct intel_bw_state *new_bw_state = NULL;
+	struct intel_crtc *crtc;
+	int ret, i;
+
+	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
+		new_bw_state = intel_atomic_get_bw_state(state);
+		if (IS_ERR(new_bw_state))
+			return PTR_ERR(new_bw_state);
+
+		old_bw_state = intel_atomic_get_old_bw_state(state);
+
+		if (intel_crtc_can_enable_sagv(new_crtc_state))
+			new_bw_state->pipe_sagv_reject &= ~BIT(crtc->pipe);
+		else
+			new_bw_state->pipe_sagv_reject |= BIT(crtc->pipe);
+	}
+
+	if (!new_bw_state)
+		return 0;
+
+	if (intel_can_enable_sagv(i915, new_bw_state) !=
+	    intel_can_enable_sagv(i915, old_bw_state)) {
+		ret = intel_atomic_serialize_global_state(&new_bw_state->base);
+		if (ret)
+			return ret;
+	} else if (new_bw_state->pipe_sagv_reject != old_bw_state->pipe_sagv_reject) {
+		ret = intel_atomic_lock_global_state(&new_bw_state->base);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
+
 int intel_bw_atomic_check(struct intel_atomic_state *state)
 {
 	bool changed = false;
diff --git a/drivers/gpu/drm/i915/display/intel_bw.h b/drivers/gpu/drm/i915/display/intel_bw.h
index 0efc9858faa1..e5a0ff630438 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.h
+++ b/drivers/gpu/drm/i915/display/intel_bw.h
@@ -68,6 +68,7 @@ intel_atomic_get_bw_state(struct intel_atomic_state *state);
 void intel_bw_init_hw(struct drm_i915_private *dev_priv);
 int intel_bw_init(struct drm_i915_private *dev_priv);
 int intel_bw_modeset_checks(struct intel_atomic_state *state);
+int intel_bw_check_sagv_mask(struct intel_atomic_state *state);
 int intel_bw_atomic_check(struct intel_atomic_state *state);
 int icl_pcode_restrict_qgv_points(struct drm_i915_private *dev_priv,
 				  u32 points_mask);
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 58ba99eacd09..80ee9f8ae230 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -423,7 +423,7 @@ static bool tgl_crtc_can_enable_sagv(const struct intel_crtc_state *crtc_state)
 	return true;
 }
 
-static bool intel_crtc_can_enable_sagv(const struct intel_crtc_state *crtc_state)
+bool intel_crtc_can_enable_sagv(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
@@ -454,20 +454,12 @@ static int intel_compute_sagv_mask(struct intel_atomic_state *state)
 	int ret;
 	struct intel_crtc *crtc;
 	struct intel_crtc_state *new_crtc_state;
-	struct intel_bw_state *new_bw_state = NULL;
-	const struct intel_bw_state *old_bw_state = NULL;
 	int i;
 
 	for_each_new_intel_crtc_in_state(state, crtc,
 					 new_crtc_state, i) {
 		struct skl_pipe_wm *pipe_wm = &new_crtc_state->wm.skl.optimal;
 
-		new_bw_state = intel_atomic_get_bw_state(state);
-		if (IS_ERR(new_bw_state))
-			return PTR_ERR(new_bw_state);
-
-		old_bw_state = intel_atomic_get_old_bw_state(state);
-
 		/*
 		 * We store use_sagv_wm in the crtc state rather than relying on
 		 * that bw state since we have no convenient way to get at the
@@ -488,26 +480,11 @@ static int intel_compute_sagv_mask(struct intel_atomic_state *state)
 		pipe_wm->use_sagv_wm = !HAS_HW_SAGV_WM(display) &&
 			DISPLAY_VER(i915) >= 12 &&
 			intel_crtc_can_enable_sagv(new_crtc_state);
-
-		if (intel_crtc_can_enable_sagv(new_crtc_state))
-			new_bw_state->pipe_sagv_reject &= ~BIT(crtc->pipe);
-		else
-			new_bw_state->pipe_sagv_reject |= BIT(crtc->pipe);
 	}
 
-	if (!new_bw_state)
-		return 0;
-
-	if (intel_can_enable_sagv(i915, new_bw_state) !=
-	    intel_can_enable_sagv(i915, old_bw_state)) {
-		ret = intel_atomic_serialize_global_state(&new_bw_state->base);
-		if (ret)
-			return ret;
-	} else if (new_bw_state->pipe_sagv_reject != old_bw_state->pipe_sagv_reject) {
-		ret = intel_atomic_lock_global_state(&new_bw_state->base);
-		if (ret)
-			return ret;
-	}
+	ret = intel_bw_check_sagv_mask(state);
+	if (ret)
+		return ret;
 
 	return 0;
 }
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.h b/drivers/gpu/drm/i915/display/skl_watermark.h
index d9cff6c54310..7e8107f808b6 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.h
+++ b/drivers/gpu/drm/i915/display/skl_watermark.h
@@ -27,6 +27,7 @@ u8 intel_enabled_dbuf_slices_mask(struct intel_display *display);
 
 void intel_sagv_pre_plane_update(struct intel_atomic_state *state);
 void intel_sagv_post_plane_update(struct intel_atomic_state *state);
+bool intel_crtc_can_enable_sagv(const struct intel_crtc_state *crtc_state);
 bool intel_can_enable_sagv(struct drm_i915_private *i915,
 			   const struct intel_bw_state *bw_state);
 bool intel_has_sagv(struct drm_i915_private *i915);
-- 
2.45.3

