Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D2EABBD0D5
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Oct 2025 06:42:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B70CA10E3C7;
	Mon,  6 Oct 2025 04:42:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TR6W+h+6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACB4310E3C6;
 Mon,  6 Oct 2025 04:42:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759725753; x=1791261753;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xrFFXiDuTnFbokQneBjqq/L4Rlz+xwZin0Q4qD8HBRo=;
 b=TR6W+h+65+KuJ5aTzY9jnbgmgvi5CrFPsgw/v09gSU/HEHS5j3sjdxHr
 hcSgnwYAHgZMzQtsMaY9gDjb+eX8H/7TujF7fYeFlWmKpEkU5XVCy7OTu
 uG8dNzop2xDnIg20y1MvSvDcCpva8sdtYFpGxawgcCnBgVIPBVGhZqmVn
 nIlqBYOcF+oGFPLhsjzu9kFeEirNrrdOaVYyGtqy/DfbVLfgSZSSQ/a/+
 LYcTuHOHQlxmFvKtrYnw9TbiJ60FRAbM0mfCiD5CuVS40tdCNP52KEB7g
 nJNg4myO1cuJAGCJDzm6D+9dL5XPsopl/b6cAxUbarxGv4LyVDNYseEPb Q==;
X-CSE-ConnectionGUID: 2xaGKvkoSmGCJt9Ir4UUcA==
X-CSE-MsgGUID: rH5kGWkeRlGRhuFqC6Y+XQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11573"; a="61996435"
X-IronPort-AV: E=Sophos;i="6.18,319,1751266800"; d="scan'208";a="61996435"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2025 21:42:32 -0700
X-CSE-ConnectionGUID: SLyu/1NvQYOc5C1/Ibwhvg==
X-CSE-MsgGUID: skdop3EVTwWCrB1NmHrCvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,319,1751266800"; d="scan'208";a="179063044"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2025 21:42:31 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com
Subject: [PATCH 16/16] drm/i915/vrr: Use optimized guardband when VRR TG is
 active
Date: Mon,  6 Oct 2025 09:58:52 +0530
Message-ID: <20251006042852.263249-17-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20251006042852.263249-1-ankit.k.nautiyal@intel.com>
References: <20251006042852.263249-1-ankit.k.nautiyal@intel.com>
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

Currently, optimized guardband is only used on platforms where the VRR
timing generator is always enabled. We want to use the optimized/reduced
guardband whenever we are using the VRR timing generator, as the legacy
timing generator doesn't need vrr guardband.

On platforms where the VRR timing generator is always ON, we optimize the
guardband regardless of whether the display is operating in fixed or
variable refresh rate mode.

On platforms where the VRR timing generator is not always ON, we optimize
the guardband only when VRR is enabled.

Add a helper intel_vrr_use_optimized_guardband() to determine if the
optimized/reduced guardband should be used.

The actual computation is now performed internally within
intel_vrr_compute_guardband() which calls
intel_vrr_compute_optimized_guardband() when appropriate.

This completes the transition to optimized guardband usage across all
supported platforms.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |  5 +----
 drivers/gpu/drm/i915/display/intel_vrr.c     | 23 +++++++++++++++-----
 drivers/gpu/drm/i915/display/intel_vrr.h     |  5 ++---
 3 files changed, 21 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 6f61278a36c2..84f830294007 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2425,17 +2425,14 @@ static void intel_crtc_compute_vrr_guardband(struct intel_atomic_state *state,
 			continue;
 
 		connector = to_intel_connector(drm_connector);
+		intel_vrr_compute_guardband(crtc_state, connector);
 		if (intel_vrr_always_use_vrr_tg(display)) {
-			intel_vrr_compute_optimized_guardband(crtc_state, connector);
-
 			vblank_length = adjusted_mode->crtc_vtotal -
 					(crtc_state->set_context_latency +
 					 adjusted_mode->crtc_vdisplay);
 
 			adjusted_mode->crtc_vblank_start +=
 				vblank_length - crtc_state->vrr.guardband;
-		} else {
-			intel_vrr_compute_guardband(crtc_state);
 		}
 	}
 }
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 2dca4be28a9c..24f608d4a28f 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -495,8 +495,15 @@ int dsc_prefill_latency(struct intel_crtc_state *crtc_state, int linetime_us)
 					   linetime_us);
 }
 
-int intel_vrr_compute_optimized_guardband(struct intel_crtc_state *crtc_state,
-					  struct intel_connector *connector)
+static bool intel_vrr_use_optimized_guardband(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+
+	return intel_vrr_always_use_vrr_tg(display) || crtc_state->vrr.enable;
+}
+
+static int intel_vrr_compute_optimized_guardband(struct intel_crtc_state *crtc_state,
+						 struct intel_connector *connector)
 {
 	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
 	struct intel_display *display = to_intel_display(crtc_state);
@@ -550,16 +557,22 @@ int intel_vrr_compute_optimized_guardband(struct intel_crtc_state *crtc_state,
 	return guardband;
 }
 
-void intel_vrr_compute_guardband(struct intel_crtc_state *crtc_state)
+void intel_vrr_compute_guardband(struct intel_crtc_state *crtc_state,
+				 struct intel_connector *connector)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
+	int guardband;
 
 	if (!intel_vrr_possible(crtc_state))
 		return;
 
-	crtc_state->vrr.guardband = min(crtc_state->vrr.vmin - adjusted_mode->crtc_vdisplay,
-					intel_vrr_max_guardband(crtc_state));
+	if (intel_vrr_use_optimized_guardband(crtc_state))
+		guardband = intel_vrr_compute_optimized_guardband(crtc_state, connector);
+	else
+		guardband = crtc_state->vrr.vmin - adjusted_mode->crtc_vdisplay;
+
+	crtc_state->vrr.guardband = min(guardband, intel_vrr_max_guardband(crtc_state));
 
 	if (DISPLAY_VER(display) < 13)
 		crtc_state->vrr.pipeline_full =
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
index 8d1f31ae92df..6986e8f122dc 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.h
+++ b/drivers/gpu/drm/i915/display/intel_vrr.h
@@ -21,7 +21,8 @@ bool intel_vrr_possible(const struct intel_crtc_state *crtc_state);
 void intel_vrr_check_modeset(struct intel_atomic_state *state);
 void intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 			      struct drm_connector_state *conn_state);
-void intel_vrr_compute_guardband(struct intel_crtc_state *crtc_state);
+void intel_vrr_compute_guardband(struct intel_crtc_state *crtc_state,
+				 struct intel_connector *connector);
 void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state);
 void intel_vrr_enable(const struct intel_crtc_state *crtc_state);
 void intel_vrr_send_push(struct intel_dsb *dsb,
@@ -42,7 +43,5 @@ void intel_vrr_set_fixed_rr_timings(const struct intel_crtc_state *crtc_state);
 bool intel_vrr_always_use_vrr_tg(struct intel_display *display);
 int intel_vrr_safe_window_start(const struct intel_crtc_state *crtc_state);
 int intel_vrr_vmin_safe_window_end(const struct intel_crtc_state *crtc_state);
-int intel_vrr_compute_optimized_guardband(struct intel_crtc_state *crtc_state,
-					  struct intel_connector *connector);
 
 #endif /* __INTEL_VRR_H__ */
-- 
2.45.2

