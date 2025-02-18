Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 16933A3AAB0
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Feb 2025 22:19:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE81A10E76B;
	Tue, 18 Feb 2025 21:19:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UNQrvwRe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 430D810E76D
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Feb 2025 21:19:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739913595; x=1771449595;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=DDGpILxgaVbUzbP9pCy/+QyGJxLIURE9JMIJxCEqido=;
 b=UNQrvwRePx3jGInipIxgIwZYpeB2Nt+1xN+VPK8akqWvISSYDmaM9OUJ
 KeoJgt0csAhLLKePe5Cp7Y3vHze+E+5KuqL5gEamZLAmA5TCcyBu5jV3J
 NBSYJOihgylfxUIgVTdVqU63l8YWOT2yO6lluCF/8L9TwpUBe71rExBBG
 GQewWLJVvUn0O1MWwOQiAw4okhbXwoKg5thPmYzNFvZXUzEqO9l64o0ac
 IOUZoCMySBOxI5cUKUV86tHWIe8CskYsur3zjziyWU4SCNT4Q8iqy9Gvd
 pm90R8Lpf23RHuy2z+p1YsneUTX4mRiTGjoHaB5YB8/ULqt7xeXTRRCDh Q==;
X-CSE-ConnectionGUID: cTTWO2wWQ+2sXp7YAZYFog==
X-CSE-MsgGUID: qXJBMcnPQPKnAQteWKe9HQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11348"; a="39862306"
X-IronPort-AV: E=Sophos;i="6.13,296,1732608000"; d="scan'208";a="39862306"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2025 13:19:52 -0800
X-CSE-ConnectionGUID: OatcjNHrQAianjFarSYO9g==
X-CSE-MsgGUID: ePD3389/Ql6Dm6WoqrLG8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,296,1732608000"; d="scan'208";a="114693465"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 18 Feb 2025 13:19:50 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 18 Feb 2025 23:19:49 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 10/19] drm/i915: Extract intel_cdclk_update_hw_state()
Date: Tue, 18 Feb 2025 23:19:04 +0200
Message-ID: <20250218211913.27867-11-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250218211913.27867-1-ville.syrjala@linux.intel.com>
References: <20250218211913.27867-1-ville.syrjala@linux.intel.com>
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

