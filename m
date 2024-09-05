Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 74A6696CE81
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Sep 2024 07:37:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20EDD10E662;
	Thu,  5 Sep 2024 05:37:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UbicDT26";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3786010E662
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Sep 2024 05:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725514628; x=1757050628;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2E4wXVX+ZcdcBDCv9EJRSZZyT9D/ViJdchwtMNk5k8w=;
 b=UbicDT26QDl8eWyTcXE/SrdF6FCWquBwcRpA6EEGjI3Jxj0H+X7XSEee
 nA4/rOzA65yr4d0WtBHhfevmzMiLfATxr4PlzsMOhZvN6XqrUUHtKzPd7
 5zD8pdKvJjGOJteuICsBPBIYOPRigSsnFelAiqNEX8ZmBYLxyyDVh/0H1
 va0PW4QjwJ1Q8AQ3AA9kCHNshHnqe5m/7Zei6EGB6jOf3yhdBrOvRWLCw
 fMZK0jvQ44gyEGgJyxBoYmxInx9Eir5Lc1R/6lcCNuc38BMdtICNQPkmy
 /oJJl/qwl4EJ13m4r405D/XUcv1syCW30reXPwPk4ZqwiRC4/TvI65Nd7 Q==;
X-CSE-ConnectionGUID: aW81qVQKRsiok+hyDa0BRA==
X-CSE-MsgGUID: CGeqlQzzSqCEnFcswBE73w==
X-IronPort-AV: E=McAfee;i="6700,10204,11185"; a="35366500"
X-IronPort-AV: E=Sophos;i="6.10,203,1719903600"; d="scan'208";a="35366500"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 22:37:08 -0700
X-CSE-ConnectionGUID: Y6Ujvs8nQ3ueTlh59KpGOw==
X-CSE-MsgGUID: WTuHH8xRQ7+9PoqAFdR2EQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,203,1719903600"; d="scan'208";a="65500213"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by orviesa009.jf.intel.com with ESMTP; 04 Sep 2024 22:37:05 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 jouni.hogander@intel.com, arun.r.murthy@intel.com,
 ankit.k.nautiyal@intel.com, mitulkumar.ajitkumar.golani@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v10 3/4] drm/i915/vrr: Split vrr-compute-config in two phases
Date: Thu,  5 Sep 2024 10:48:40 +0530
Message-Id: <20240905051841.3012729-4-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20240905051841.3012729-1-animesh.manna@intel.com>
References: <20240905051841.3012729-1-animesh.manna@intel.com>
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

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 16 ++++++++++++++++
 drivers/gpu/drm/i915/display/intel_vrr.c     | 13 -------------
 2 files changed, 16 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index b4ef4d59da1a..7fb3d35f7124 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4794,10 +4794,26 @@ intel_modeset_pipe_config_late(struct intel_atomic_state *state,
 {
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
+	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
 	struct drm_connector_state *conn_state;
 	struct drm_connector *connector;
 	int i;
 
+	if (crtc_state->vrr.enable) {
+		/*
+		 * For XE_LPD+, we use guardband and pipeline override
+		 * is deprecated.
+		 */
+		if (DISPLAY_VER(to_i915(crtc->base.dev)) >= 13) {
+			crtc_state->vrr.guardband =
+				crtc_state->vrr.vmin + 1 - adjusted_mode->crtc_vblank_start;
+		} else {
+			crtc_state->vrr.pipeline_full =
+				min(255, crtc_state->vrr.vmin - adjusted_mode->crtc_vblank_start -
+				crtc_state->framestart_delay - 1);
+		}
+	}
+
 	for_each_new_connector_in_state(&state->base, connector,
 					conn_state, i) {
 		struct intel_encoder *encoder =
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 9a51f5bac307..de17a8ae831b 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -239,19 +239,6 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 			(crtc_state->hw.adjusted_mode.crtc_vtotal -
 			 crtc_state->hw.adjusted_mode.vsync_end);
 	}
-
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
-	}
 }
 
 static u32 trans_vrr_ctl(const struct intel_crtc_state *crtc_state)
-- 
2.29.0

