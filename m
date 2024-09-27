Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B413987DA9
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2024 06:43:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6AB3310EBFF;
	Fri, 27 Sep 2024 04:43:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="P8JTQj3i";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCF2410EBFF
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Sep 2024 04:43:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727412229; x=1758948229;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=iYD4Cw75yyBg7VO+V3xwUl1t7Cx8K7vIHzZ0PVNkB6w=;
 b=P8JTQj3iPESpD4C/XD2IbP5FMG0/Q1X6MVIXpG3Lkr1qPMotv8+ga4et
 2AsQMPIste1tSxI591SkHEjWMX1N5Jd6imZh/mHwzcXknMBJom3g5kWyf
 CD5yXnDmitO5DurxtIXWTdFknAoPj96MKD2P2CcsSWPe0CahMN1ocySY2
 D4Pzb5XDLO6g8JOkqZtKKAMvpI9lX6qedrC9gTKJojN7NW1gkTmLtvUSF
 CUPOOPd45S1L8TWj/Y9eziQcRXwSD1a0C1QbijnJP1QJfDEQ7x4bD2plL
 4AC+MS+ySPr4BkLrevu005WtRPk5UFibLwg0mM1/mnNjzOnMNTiR3/l+v w==;
X-CSE-ConnectionGUID: Q6pZsnSTTLmxzv7X2thglw==
X-CSE-MsgGUID: 1uhUrcRxTPGAFloKR1l0xg==
X-IronPort-AV: E=McAfee;i="6700,10204,11207"; a="26416935"
X-IronPort-AV: E=Sophos;i="6.11,157,1725346800"; d="scan'208";a="26416935"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2024 21:43:49 -0700
X-CSE-ConnectionGUID: IRVilZ5uSQaucM3xqoG8MA==
X-CSE-MsgGUID: RW2m0t6pR6uBgb4eI1JhAQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,157,1725346800"; d="scan'208";a="76463047"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmviesa003.fm.intel.com with ESMTP; 26 Sep 2024 21:43:46 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 jouni.hogander@intel.com, arun.r.murthy@intel.com,
 ankit.k.nautiyal@intel.com, mitulkumar.ajitkumar.golani@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v12 1/3] drm/i915/vrr: Split vrr-compute-config in two phases
Date: Fri, 27 Sep 2024 09:55:07 +0530
Message-Id: <20240927042509.4081753-2-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20240927042509.4081753-1-animesh.manna@intel.com>
References: <20240927042509.4081753-1-animesh.manna@intel.com>
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
v4: Use flipline instead of vrr.enable and some cosmetic changes. [Ville]

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |  2 ++
 drivers/gpu/drm/i915/display/intel_vrr.c     | 13 +++++++++----
 drivers/gpu/drm/i915/display/intel_vrr.h     |  1 +
 3 files changed, 12 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index f7667931f9d9..c59d7bffbf57 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4836,6 +4836,8 @@ intel_modeset_pipe_config_late(struct intel_atomic_state *state,
 	struct drm_connector *connector;
 	int i;
 
+	intel_vrr_compute_config_late(crtc_state);
+
 	for_each_new_connector_in_state(&state->base, connector,
 					conn_state, i) {
 		struct intel_encoder *encoder =
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 9a51f5bac307..6c4af3d79761 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -239,11 +239,16 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 			(crtc_state->hw.adjusted_mode.crtc_vtotal -
 			 crtc_state->hw.adjusted_mode.vsync_end);
 	}
+}
+
+void intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
+
+	if (!crtc_state->vrr.flipline)
+		return;
 
-	/*
-	 * For XE_LPD+, we use guardband and pipeline override
-	 * is deprecated.
-	 */
 	if (DISPLAY_VER(display) >= 13) {
 		crtc_state->vrr.guardband =
 			crtc_state->vrr.vmin + 1 - adjusted_mode->crtc_vblank_start;
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

