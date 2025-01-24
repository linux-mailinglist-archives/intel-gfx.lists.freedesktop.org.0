Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AC11A1B89D
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2025 16:12:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B6D510E9C8;
	Fri, 24 Jan 2025 15:12:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ts5/EfhX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5196A10E9C4;
 Fri, 24 Jan 2025 15:12:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737731570; x=1769267570;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0vnTAoHPUHiUn99igbqa7QQMBa8pXXBr0dNBL6DK9rQ=;
 b=Ts5/EfhXFVgiOydR1iPSo8Q9micRDQfs1r7ygfdPVbnFSRq7V+5DJcKp
 k+jVJ8//fzNLCk4r5am3Lzzv4Am5ci+AgmLrp4/hlm5gm3q1EliCPI8MR
 3W5iwXdK8lYNxVDm/CbI3XAt9DWiAsIcgoawvs7PhMgkjgMjrxEQy8JU+
 IGaaf80JRRmam/ZOQe3jFbj3BEpG5dQA0NWuIdyrXtlVrCa3RiQ1OSCtz
 FQKIyvZ36DpPP5DbtfxUpXFBs9ONQ3ga9WhvS8tGrczt4bI00tfmrPJUT
 U6ieO+1sG+ys9QksMjldkoo0moyzVzg1qJw5dzdvoKQj6djCm73ygrS7C w==;
X-CSE-ConnectionGUID: vnOmSBuKQ46kmTRdE247yw==
X-CSE-MsgGUID: AdcQR108Rle9EVhxaSjzKg==
X-IronPort-AV: E=McAfee;i="6700,10204,11325"; a="38177507"
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="38177507"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 07:12:50 -0800
X-CSE-ConnectionGUID: C+7W7mqnTbCcCIaUpRCwfw==
X-CSE-MsgGUID: ju70H2jSTH2qIDDIq386Mg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="108221655"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 07:12:48 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 32/35] drm/i915/vrr: Prepare for Fixed refresh rate mode from
 MTL+
Date: Fri, 24 Jan 2025 20:30:17 +0530
Message-ID: <20250124150020.2271747-33-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250124150020.2271747-1-ankit.k.nautiyal@intel.com>
References: <20250124150020.2271747-1-ankit.k.nautiyal@intel.com>
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

Add vrr enable/disable steps to the modeset sequence for MTL+ when we
want to always use the vrr timing generator.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 20 +++++++++++++++-----
 drivers/gpu/drm/i915/display/intel_vrr.c     |  5 +++++
 drivers/gpu/drm/i915/display/intel_vrr.h     |  2 ++
 3 files changed, 22 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index a0d6360f4cda..6d01c76d17ae 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1301,6 +1301,7 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
 				   struct intel_crtc *crtc)
 {
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	struct intel_display * display = to_intel_display(state);
 	const struct intel_crtc_state *old_crtc_state =
 		intel_atomic_get_old_crtc_state(state, crtc);
 	const struct intel_crtc_state *new_crtc_state =
@@ -1310,8 +1311,12 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
 	intel_psr_pre_plane_update(state, crtc);
 
 	if (intel_crtc_vrr_disabling(state, crtc)) {
-		intel_vrr_disable(old_crtc_state, false);
-		intel_crtc_update_active_timings(old_crtc_state, false);
+		if (intel_vrr_always_use_vrr_tg(display)) {
+			intel_vrr_disable(old_crtc_state, true);
+		} else {
+			intel_vrr_disable(old_crtc_state, false);
+			intel_crtc_update_active_timings(old_crtc_state, false);
+		}
 	}
 
 	if (audio_disabling(old_crtc_state, new_crtc_state))
@@ -1765,8 +1770,12 @@ static void hsw_configure_cpu_transcoder(const struct intel_crtc_state *crtc_sta
 	}
 
 	intel_set_transcoder_timings(crtc_state);
-	if (HAS_VRR(dev_priv))
-		intel_vrr_set_transcoder_timings(crtc_state);
+	if (HAS_VRR(dev_priv)) {
+		if (intel_vrr_always_use_vrr_tg(display))
+			intel_vrr_enable(crtc_state, false);
+		else
+			intel_vrr_set_transcoder_timings(crtc_state);
+	}
 
 	if (cpu_transcoder != TRANSCODER_EDP)
 		intel_de_write(dev_priv, TRANS_MULT(dev_priv, cpu_transcoder),
@@ -7149,6 +7158,7 @@ static void commit_pipe_post_planes(struct intel_atomic_state *state,
 				    struct intel_crtc *crtc)
 {
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	const struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 
@@ -7162,7 +7172,7 @@ static void commit_pipe_post_planes(struct intel_atomic_state *state,
 		skl_detach_scalers(new_crtc_state);
 
 	if (intel_crtc_vrr_enabling(state, crtc))
-		intel_vrr_enable(new_crtc_state, false);
+		intel_vrr_enable(new_crtc_state, intel_vrr_always_use_vrr_tg(display));
 }
 
 static void intel_enable_crtc(struct intel_atomic_state *state,
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 10a9bcb8daae..5d0db6277715 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -321,6 +321,11 @@ bool intel_vrrtg_is_enabled(const struct intel_crtc_state *crtc_state)
 	return crtc_state->vrr.mode == INTEL_VRRTG_MODE_VRR;
 }
 
+bool intel_vrr_always_use_vrr_tg(struct intel_display *display)
+{
+	return DISPLAY_VER(display) >= 14;
+}
+
 void
 intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 			 struct drm_connector_state *conn_state)
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
index da6a86cee0e8..489acd64010c 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.h
+++ b/drivers/gpu/drm/i915/display/intel_vrr.h
@@ -13,6 +13,7 @@ struct intel_atomic_state;
 struct intel_connector;
 struct intel_crtc_state;
 struct intel_dsb;
+struct intel_display;
 
 bool intel_vrr_is_capable(struct intel_connector *connector);
 bool intel_vrr_is_in_range(struct intel_connector *connector, int vrefresh);
@@ -34,5 +35,6 @@ int intel_vrr_vmax_vblank_start(const struct intel_crtc_state *crtc_state);
 int intel_vrr_vmin_vblank_start(const struct intel_crtc_state *crtc_state);
 int intel_vrr_vblank_delay(const struct intel_crtc_state *crtc_state);
 bool intel_vrrtg_is_enabled(const struct intel_crtc_state *crtc_state);
+bool intel_vrr_always_use_vrr_tg(struct intel_display *display);
 
 #endif /* __INTEL_VRR_H__ */
-- 
2.45.2

