Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D79B9979C92
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Sep 2024 10:12:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24FD310E13F;
	Mon, 16 Sep 2024 08:12:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XTyClFth";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E37C10E13F
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Sep 2024 08:12:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726474359; x=1758010359;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fssxhWs+/GP9V9sN+SzcXZAAD5VsN6SxFo3NsAfbXoM=;
 b=XTyClFthp9QuiQw9arZrZlcGQyGugv8vM3Ui8oKbuIhzOh6xoz2+lPsL
 xSqAZ45cgB3zQB08vBlTFv9MNZ4y8aDu6JZxCUaxoVqlr2g1C5M1Ztr2l
 GOMwO1XQl9H1YRXi/pKXABAswmp1ONhMK60/L8LQB085nL7ksaWSoeTpD
 ygrRG8X5zO5VzaJLAWZB4JL4AWMyA8mMtmxPR1S6YczUZ6pAHKquRCyV8
 XH4H5lFrDgVqH5jYjUFdSAxkDco8dg4zPsIlcKcTch4lNuBCijZGOhbj6
 3n+sSU+J3yeJCqO18l+0U5BO7h34pA45pN8GZ/mwlZ3f5mm/UO5YyVP8/ A==;
X-CSE-ConnectionGUID: LFOBMDooSIKu1qzbeHFJVg==
X-CSE-MsgGUID: 9O2Ht74VSDiHHIRwBjwcOg==
X-IronPort-AV: E=McAfee;i="6700,10204,11196"; a="25440858"
X-IronPort-AV: E=Sophos;i="6.10,232,1719903600"; d="scan'208";a="25440858"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2024 01:12:38 -0700
X-CSE-ConnectionGUID: oaS1P5cURr6Kj2d26emr7Q==
X-CSE-MsgGUID: +IoRj52/Qy2aj1AmibI34Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,232,1719903600"; d="scan'208";a="68792695"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmviesa009.fm.intel.com with ESMTP; 16 Sep 2024 01:12:35 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 jouni.hogander@intel.com, arun.r.murthy@intel.com,
 ankit.k.nautiyal@intel.com, mitulkumar.ajitkumar.golani@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v11 1/2] drm/i915/vrr: Split vrr-compute-config in two phases
Date: Mon, 16 Sep 2024 13:24:05 +0530
Message-Id: <20240916075406.3521433-2-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20240916075406.3521433-1-animesh.manna@intel.com>
References: <20240916075406.3521433-1-animesh.manna@intel.com>
MIME-Version: 1.0
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

As vrr guardband calculation is dependent on modified
vblank start so better to compute late after all
vblank adjustement.

v1: Initial version.
v2: Split in a separate patch from panel-replay workaround. [Ankit]
v3: Add a function for late vrr related computation. [Ville]

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |  2 ++
 drivers/gpu/drm/i915/display/intel_vrr.c     | 30 +++++++++++++-------
 drivers/gpu/drm/i915/display/intel_vrr.h     |  1 +
 3 files changed, 22 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index fdf244a32b24..111e61eceafc 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4802,6 +4802,8 @@ intel_modeset_pipe_config_late(struct intel_atomic_state *state,
 	struct drm_connector *connector;
 	int i;
 
+	intel_vrr_compute_config_late(crtc_state);
+
 	for_each_new_connector_in_state(&state->base, connector,
 					conn_state, i) {
 		struct intel_encoder *encoder =
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 9a51f5bac307..2de1c04bf1a5 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -239,18 +239,26 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 			(crtc_state->hw.adjusted_mode.crtc_vtotal -
 			 crtc_state->hw.adjusted_mode.vsync_end);
 	}
+}
 
-	/*
-	 * For XE_LPD+, we use guardband and pipeline override
-	 * is deprecated.
-	 */
-	if (DISPLAY_VER(display) >= 13) {
-		crtc_state->vrr.guardband =
-			crtc_state->vrr.vmin + 1 - adjusted_mode->crtc_vblank_start;
-	} else {
-		crtc_state->vrr.pipeline_full =
-			min(255, crtc_state->vrr.vmin - adjusted_mode->crtc_vblank_start -
-			    crtc_state->framestart_delay - 1);
+void intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
+
+	if (crtc_state->vrr.enable) {
+		/*
+		 * For XE_LPD+, we use guardband and pipeline override
+		 * is deprecated.
+		 */
+		if (DISPLAY_VER(display) >= 13) {
+			crtc_state->vrr.guardband =
+				crtc_state->vrr.vmin + 1 - adjusted_mode->crtc_vblank_start;
+		} else {
+			crtc_state->vrr.pipeline_full =
+				min(255, crtc_state->vrr.vmin - adjusted_mode->crtc_vblank_start -
+				crtc_state->framestart_delay - 1);
+		}
 	}
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
index 89937858200d..3127c94e9778 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.h
+++ b/drivers/gpu/drm/i915/display/intel_vrr.h
@@ -18,6 +18,7 @@ bool intel_vrr_is_in_range(struct intel_connector *connector, int vrefresh);
 void intel_vrr_check_modeset(struct intel_atomic_state *state);
 void intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 			      struct drm_connector_state *conn_state);
+void intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state);
 void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state);
 void intel_vrr_enable(const struct intel_crtc_state *crtc_state);
 void intel_vrr_send_push(const struct intel_crtc_state *crtc_state);
-- 
2.29.0

