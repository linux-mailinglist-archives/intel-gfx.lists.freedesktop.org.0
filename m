Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 18127A55126
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Mar 2025 17:34:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D57810EA06;
	Thu,  6 Mar 2025 16:34:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XVOWnhbB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6AB6510EA05
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Mar 2025 16:34:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741278892; x=1772814892;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WaX4gN2bpHTqJ+WpLTaMDlUqOjIc6ruQJeaFKhVgef8=;
 b=XVOWnhbBklzOkZk3QGJDSuSn1PnciQcU6mvk2ciRXMOH1P77FBGqFQXY
 o1G1XYB1SsZhG1b5TW1VxcbjQN5DpTl2l++bSfmrC2q+8kK24Al+u228n
 8VAbfQlhhs+BvsXuYVH2M75B+MiOzHmonrdIdQ69z7pB1CXKiQuuV10Va
 WOrAIPDTgZkgmvohrL6NQGUiDwA90mtoY9bbQr2QLRO+A9yt9stIWP5wM
 6wnBBQmQuHdt8rmZSSAH+tNwm4MN4NB89yqwLBKkwGU1GHTeY1tbtWWa5
 qBMaxnI33ywHs8JSy67Ezi1Tsb0pbKkdnMHH/WisqtwyTiOxgqnHq+LNF g==;
X-CSE-ConnectionGUID: fwCJnzpTQ3qsH2hqMNX9Jw==
X-CSE-MsgGUID: QOArOcniQlSr2GzKYepA5A==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="53704350"
X-IronPort-AV: E=Sophos;i="6.14,226,1736841600"; d="scan'208";a="53704350"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2025 08:34:52 -0800
X-CSE-ConnectionGUID: lNLOCC9nS+yhy6OXhFrE6Q==
X-CSE-MsgGUID: 3xnws7+eQyeT8et3zysYJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="124289035"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 06 Mar 2025 08:34:49 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 06 Mar 2025 18:34:48 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Vinod Govindapillai <vinod.govindapillai@intel.com>
Subject: [PATCH v2 09/18] drm/i915: Extract intel_cdclk_update_hw_state()
Date: Thu,  6 Mar 2025 18:34:11 +0200
Message-ID: <20250306163420.3961-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250306163420.3961-1-ville.syrjala@linux.intel.com>
References: <20250306163420.3961-1-ville.syrjala@linux.intel.com>
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

Hoist the cdclk stuff into a separate function from
intel_modeset_readout_hw_state() so that the details
are better hidden inside intel_cdclk.c.

Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c    | 29 ++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_cdclk.h    |  2 +-
 .../drm/i915/display/intel_modeset_setup.c    | 16 ++--------
 3 files changed, 31 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 4b7058e65588..947833a96ab7 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -2788,7 +2788,7 @@ static int intel_planes_min_cdclk(const struct intel_crtc_state *crtc_state)
 	return min_cdclk;
 }
 
-int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_state)
+static int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_state)
 {
 	int min_cdclk;
 
@@ -3340,6 +3340,33 @@ int intel_modeset_calc_cdclk(struct intel_atomic_state *state)
 	return 0;
 }
 
+void intel_cdclk_update_hw_state(struct intel_display *display)
+{
+	struct intel_cdclk_state *cdclk_state =
+		to_intel_cdclk_state(display->cdclk.obj.state);
+	struct intel_crtc *crtc;
+
+	cdclk_state->active_pipes = 0;
+
+	for_each_intel_crtc(display->drm, crtc) {
+		const struct intel_crtc_state *crtc_state =
+			to_intel_crtc_state(crtc->base.state);
+		enum pipe pipe = crtc->pipe;
+		int min_cdclk = 0;
+
+		if (crtc_state->hw.active) {
+			cdclk_state->active_pipes |= BIT(pipe);
+
+			min_cdclk = intel_crtc_compute_min_cdclk(crtc_state);
+			if (drm_WARN_ON(display->drm, min_cdclk < 0))
+				min_cdclk = 0;
+		}
+
+		cdclk_state->min_cdclk[pipe] = min_cdclk;
+		cdclk_state->min_voltage_level[pipe] = crtc_state->min_voltage_level;
+	}
+}
+
 void intel_cdclk_crtc_disable_noatomic(struct intel_crtc *crtc)
 {
 	struct intel_display *display = to_intel_display(crtc);
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm/i915/display/intel_cdclk.h
index 689e12e2196b..a1cefd455d92 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.h
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
@@ -59,7 +59,6 @@ struct intel_cdclk_state {
 	bool disable_pipes;
 };
 
-int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_state);
 void intel_cdclk_init_hw(struct intel_display *display);
 void intel_cdclk_uninit_hw(struct intel_display *display);
 void intel_init_cdclk_hooks(struct intel_display *display);
@@ -84,6 +83,7 @@ int intel_cdclk_atomic_check(struct intel_atomic_state *state,
 int intel_cdclk_state_set_joined_mbus(struct intel_atomic_state *state, bool joined_mbus);
 struct intel_cdclk_state *
 intel_atomic_get_cdclk_state(struct intel_atomic_state *state);
+void intel_cdclk_update_hw_state(struct intel_display *display);
 void intel_cdclk_crtc_disable_noatomic(struct intel_crtc *crtc);
 
 #define to_intel_cdclk_state(global_state) \
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index e9b0533526f6..1cfa03bd3224 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -693,8 +693,6 @@ static void readout_plane_state(struct drm_i915_private *i915)
 static void intel_modeset_readout_hw_state(struct drm_i915_private *i915)
 {
 	struct intel_display *display = &i915->display;
-	struct intel_cdclk_state *cdclk_state =
-		to_intel_cdclk_state(i915->display.cdclk.obj.state);
 	struct intel_dbuf_state *dbuf_state =
 		to_intel_dbuf_state(i915->display.dbuf.obj.state);
 	struct intel_pmdemand_state *pmdemand_state =
@@ -730,7 +728,6 @@ static void intel_modeset_readout_hw_state(struct drm_i915_private *i915)
 			    str_enabled_disabled(crtc_state->hw.active));
 	}
 
-	cdclk_state->active_pipes = active_pipes;
 	dbuf_state->active_pipes = active_pipes;
 
 	readout_plane_state(i915);
@@ -833,7 +830,6 @@ static void intel_modeset_readout_hw_state(struct drm_i915_private *i915)
 		struct intel_crtc_state *crtc_state =
 			to_intel_crtc_state(crtc->base.state);
 		struct intel_plane *plane;
-		int min_cdclk = 0;
 
 		if (crtc_state->hw.active) {
 			/*
@@ -882,22 +878,14 @@ static void intel_modeset_readout_hw_state(struct drm_i915_private *i915)
 				    crtc_state->min_cdclk[plane->id]);
 		}
 
-		if (crtc_state->hw.active) {
-			min_cdclk = intel_crtc_compute_min_cdclk(crtc_state);
-			if (drm_WARN_ON(&i915->drm, min_cdclk < 0))
-				min_cdclk = 0;
-		}
-
-		cdclk_state->min_cdclk[crtc->pipe] = min_cdclk;
-		cdclk_state->min_voltage_level[crtc->pipe] =
-			crtc_state->min_voltage_level;
-
 		intel_pmdemand_update_port_clock(display, pmdemand_state, pipe,
 						 crtc_state->port_clock);
 
 		intel_bw_crtc_update(bw_state, crtc_state);
 	}
 
+	intel_cdclk_update_hw_state(display);
+
 	intel_pmdemand_init_pmdemand_params(display, pmdemand_state);
 }
 
-- 
2.45.3

