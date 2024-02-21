Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CCE885D336
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Feb 2024 10:17:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F25910E4B8;
	Wed, 21 Feb 2024 09:17:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="g5buAO5g";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 347AF10E688
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Feb 2024 09:17:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708507035; x=1740043035;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GQRUCu1UIWIUfabgz5MGajVx+xdkAqudxGXuSw+DJNE=;
 b=g5buAO5gBfoWhdow0VX3/s1dyhewsInsqZU7MrJVyiK8jDyg1oPClHX9
 7imLl3fKUP5tAZdUAMUz8YwILx41sz+ZjzdEc2YguF43BuM2F9XWZkQTm
 ixAnDivA9ZYtQ+OHpzgobF+RC3IU3RfvCPU7y12+2gvfJfiv69U2gK0k7
 4zHXxWh+sTGGs3+NzVhVsbvrVel7lkZa7pnnPuQJRyphEqGZyANLkKNwj
 cZeU9Qhljn86JtZJEPe7T8Zq1RDsDy3ysBGFpZyaDeNrIB3eYZCn0t2rl
 zNolBO80S8eDRnbzgrMniWWaAMH4K57sfBkPOsVYz5rmY9qQM/9hMF9RE A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10990"; a="2795802"
X-IronPort-AV: E=Sophos;i="6.06,175,1705392000"; 
   d="scan'208";a="2795802"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2024 01:17:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,175,1705392000"; d="scan'208";a="42554340"
Received: from vkasired-desk2.fm.intel.com ([10.105.128.132])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2024 01:17:14 -0800
From: Vivek Kasireddy <vivek.kasireddy@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Vivek Kasireddy <vivek.kasireddy@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Matt Roper <matthew.d.roper@intel.com>
Subject: [RFC v1 1/3] drm/i915: Rename skl_pfit_enable() to
 skl_program_crtc_scaler()
Date: Wed, 21 Feb 2024 00:47:54 -0800
Message-ID: <20240221085246.808287-2-vivek.kasireddy@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240221085246.808287-1-vivek.kasireddy@intel.com>
References: <20240221085246.808287-1-vivek.kasireddy@intel.com>
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

Given that skl_pfit_enable() mostly enables (or programs) the scaler
at the crtc level, it makes sense to change its name to
skl_program_crtc_scaler(). Also, the rename and the addition of
struct drm_rect * parameter helps if we'd like to use this
function to enable the scaler at the crtc level for features other
than panel fitting.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 14 ++++++++++----
 drivers/gpu/drm/i915/display/skl_scaler.c    |  7 ++-----
 drivers/gpu/drm/i915/display/skl_scaler.h    |  3 ++-
 3 files changed, 14 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index c5de4561f458..0ea62c278948 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1678,10 +1678,14 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 	if (psl_clkgate_wa)
 		glk_pipe_scaler_clock_gating_wa(dev_priv, pipe, true);
 
-	if (DISPLAY_VER(dev_priv) >= 9)
-		skl_pfit_enable(new_crtc_state);
-	else
+	if (DISPLAY_VER(dev_priv) >= 9) {
+		const struct drm_rect *dst = &new_crtc_state->pch_pfit.dst;
+
+		if (new_crtc_state->pch_pfit.enabled)
+			skl_program_crtc_scaler(new_crtc_state, dst);
+	} else {
 		ilk_pfit_enable(new_crtc_state);
+	}
 
 	/*
 	 * On ILK+ LUT must be loaded before the pipe is running but with
@@ -6560,8 +6564,10 @@ static void intel_pipe_fastset(const struct intel_crtc_state *old_crtc_state,
 
 	/* on skylake this is done by detaching scalers */
 	if (DISPLAY_VER(dev_priv) >= 9) {
+		const struct drm_rect *dst = &new_crtc_state->pch_pfit.dst;
+
 		if (new_crtc_state->pch_pfit.enabled)
-			skl_pfit_enable(new_crtc_state);
+			skl_program_crtc_scaler(new_crtc_state, dst);
 	} else if (HAS_PCH_SPLIT(dev_priv)) {
 		if (new_crtc_state->pch_pfit.enabled)
 			ilk_pfit_enable(new_crtc_state);
diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index 8a934bada624..67a87cc0411a 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -704,13 +704,13 @@ static void skl_scaler_setup_filter(struct drm_i915_private *dev_priv, enum pipe
 	}
 }
 
-void skl_pfit_enable(const struct intel_crtc_state *crtc_state)
+void skl_program_crtc_scaler(const struct intel_crtc_state *crtc_state,
+			     const struct drm_rect *dst)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	const struct intel_crtc_scaler_state *scaler_state =
 		&crtc_state->scaler_state;
-	const struct drm_rect *dst = &crtc_state->pch_pfit.dst;
 	u16 uv_rgb_hphase, uv_rgb_vphase;
 	enum pipe pipe = crtc->pipe;
 	int width = drm_rect_width(dst);
@@ -722,9 +722,6 @@ void skl_pfit_enable(const struct intel_crtc_state *crtc_state)
 	int id;
 	u32 ps_ctrl;
 
-	if (!crtc_state->pch_pfit.enabled)
-		return;
-
 	if (drm_WARN_ON(&dev_priv->drm,
 			crtc_state->scaler_state.scaler_id < 0))
 		return;
diff --git a/drivers/gpu/drm/i915/display/skl_scaler.h b/drivers/gpu/drm/i915/display/skl_scaler.h
index 63f93ca03c89..45b9ac3ec779 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.h
+++ b/drivers/gpu/drm/i915/display/skl_scaler.h
@@ -24,7 +24,8 @@ int intel_atomic_setup_scalers(struct drm_i915_private *dev_priv,
 			       struct intel_crtc *intel_crtc,
 			       struct intel_crtc_state *crtc_state);
 
-void skl_pfit_enable(const struct intel_crtc_state *crtc_state);
+void skl_program_crtc_scaler(const struct intel_crtc_state *crtc_state,
+			     const struct drm_rect *dst);
 
 void skl_program_plane_scaler(struct intel_plane *plane,
 			      const struct intel_crtc_state *crtc_state,
-- 
2.43.0

