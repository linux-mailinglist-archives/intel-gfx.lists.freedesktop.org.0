Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 215EB997B99
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Oct 2024 06:03:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6FE410E848;
	Thu, 10 Oct 2024 04:03:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Tj1vVvTA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A667810E848
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Oct 2024 04:03:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728533013; x=1760069013;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/9f9WGUodLRqPiwfkp7V8nRs2WNvNNCISQWLeElSSbE=;
 b=Tj1vVvTASPB6MrNoh7B8Q0C2GYwXJbyhiLozX3yjOg/0oNl48UWNEKAv
 E9UGfdBclw6ZNjmnqNbzyMCcl2Uou1rv4mTCFLiMcxBbzWVzZFVdDMlQ3
 6o2LdGbhpzgkZMFUsxlfFCiu4Xvnd+91ScKyJ3NFdspCjK8WT27nwdwkP
 Z2S5DtxwN0C1RKS4f3hU5Y/LIa9K5xsQ1q2GKoER/wOiidIqA6p2+VhKG
 wS7hrrldEXwdOR7CGqNnd6WB64MqPp8WmlpL6F4qqiGCFPYLRGPQTatFO
 HfNEGYpNeQUbzWKVRZwGKNMIaXcBTYeHGjRnpdAr/RtidPOYQalRIELXR A==;
X-CSE-ConnectionGUID: FfSp2SlfQB+AAzRiimGN0A==
X-CSE-MsgGUID: GI1+lgbMTUOd70inGSj6Vg==
X-IronPort-AV: E=McAfee;i="6700,10204,11220"; a="38454096"
X-IronPort-AV: E=Sophos;i="6.11,191,1725346800"; d="scan'208";a="38454096"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 21:03:33 -0700
X-CSE-ConnectionGUID: iXanxCgGSAmV4pgRmy9LMQ==
X-CSE-MsgGUID: bRRcRSnVTwyuX4LQSxCS6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,191,1725346800"; d="scan'208";a="107301295"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa002.jf.intel.com with ESMTP; 09 Oct 2024 21:03:32 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jani.nikula@intel.com,
 ankit.k.nautiyal@intel.com, uma.shankar@intel.com, animesh.manna@intel.com
Subject: [PATCH v14 2/3] drm/i915/vrr: Split vrr-compute-config in two phases
Date: Thu, 10 Oct 2024 09:35:02 +0530
Message-ID: <20241010040503.1795399-3-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20241010040503.1795399-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20241010040503.1795399-1-mitulkumar.ajitkumar.golani@intel.com>
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
Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |  2 ++
 drivers/gpu/drm/i915/display/intel_vrr.c     | 13 +++++++++----
 drivers/gpu/drm/i915/display/intel_vrr.h     |  1 +
 3 files changed, 12 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index e1f6255e918b..b1e3551c7594 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5050,6 +5050,8 @@ intel_modeset_pipe_config_late(struct intel_atomic_state *state,
 	struct drm_connector *connector;
 	int i;
 
+	intel_vrr_compute_config_late(crtc_state);
+
 	for_each_new_connector_in_state(&state->base, connector,
 					conn_state, i) {
 		struct intel_encoder *encoder =
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index f65ebe210047..496b6fa32c08 100644
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

