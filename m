Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0117498BE3E
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Oct 2024 15:45:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9308C10E621;
	Tue,  1 Oct 2024 13:45:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WLX+J5qW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B325C10E620
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Oct 2024 13:45:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727790339; x=1759326339;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+KLO7BEopGl4Uhy6Bl8u4ZdqVb48IYjnLRdRf0nRDpw=;
 b=WLX+J5qW4jk8lohAUiXg3ckgUGLwbGtVLO03VmHY+gJ9iUln1CK5Gu9M
 2LelettbqviLx/fs8fBhWcIUh2cBFat2pICxYVOhQDO5PglgcIkKEFnl5
 YEC0Ohoae+zwcJkdGMsToEtGhk3WBB0e9qK7I7BI35xXPP9WbzG90aCMi
 1if4rVIJIjWgjzQdYxcWxfiAXgpSBH2sktH94Wv25raiX8KJFa9yOHJ5x
 wou0g1rgAEDGjbsInuPOAiAsMcZNlGB3y4FE+wwpMZOoW+mQ12z26b3MR
 lEOwKiWLvh3FA5tngSUf3wxqqTuRCSm5FZQv7lLQW9kisJ4APrQchORE8 A==;
X-CSE-ConnectionGUID: 4/IcnEzvQzubPAZhrSm4uQ==
X-CSE-MsgGUID: KZlzfU2oRC29/dpIPE25ew==
X-IronPort-AV: E=McAfee;i="6700,10204,11212"; a="30810252"
X-IronPort-AV: E=Sophos;i="6.11,167,1725346800"; d="scan'208";a="30810252"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2024 06:45:38 -0700
X-CSE-ConnectionGUID: RCSuofYlQQWqyC7EpCO5ng==
X-CSE-MsgGUID: mu1UEeBdTjG6SO1RMHc2yQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,167,1725346800"; d="scan'208";a="73336394"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa007.fm.intel.com with ESMTP; 01 Oct 2024 06:45:36 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@intel.com, ankit.k.nautiyal@intel.com,
 uma.shankar@intel.com
Subject: [PATCH v13 2/3] drm/i915/vrr: Split vrr-compute-config in two phases
Date: Tue,  1 Oct 2024 19:17:02 +0530
Message-ID: <20241001134703.1128487-3-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20241001134703.1128487-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20241001134703.1128487-1-mitulkumar.ajitkumar.golani@intel.com>
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

From: Animesh Manna <animesh.manna@intel.com>

As vrr guardband calculation is dependent on modified
vblank start so better to compute late after all
vblank adjustement.

v1: Initial version.
v2: Split in a separate patch from panel-replay workaround. [Ankit]
v3: Add a function for late vrr related computation. [Ville]
v4: Use flipline instead of vrr.enable and some cosmetic changes. [Ville]
v5: Use intel_vrr_possible helper.

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
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
index 79db30e31324..734db543b90c 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -244,11 +244,16 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
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
+	if (!intel_vrr_possible(crtc_state))
+		return;
 
-	/*
-	 * For XE_LPD+, we use guardband and pipeline override
-	 * is deprecated.
-	 */
 	if (DISPLAY_VER(display) >= 13) {
 		crtc_state->vrr.guardband =
 			crtc_state->vrr.vmin + 1 - adjusted_mode->crtc_vblank_start;
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
index af921dda4619..b3b45c675020 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.h
+++ b/drivers/gpu/drm/i915/display/intel_vrr.h
@@ -19,6 +19,7 @@ bool intel_vrr_possible(const struct intel_crtc_state *crtc_state);
 void intel_vrr_check_modeset(struct intel_atomic_state *state);
 void intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 			      struct drm_connector_state *conn_state);
+void intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state);
 void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state);
 void intel_vrr_enable(const struct intel_crtc_state *crtc_state);
 void intel_vrr_send_push(const struct intel_crtc_state *crtc_state);
-- 
2.46.0

