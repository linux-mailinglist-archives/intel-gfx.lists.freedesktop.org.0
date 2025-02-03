Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1959FA259EC
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2025 13:50:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B155110E4E1;
	Mon,  3 Feb 2025 12:50:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Bi/qYkid";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B053010E4DF;
 Mon,  3 Feb 2025 12:50:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738587047; x=1770123047;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=uvQ+51NaDZX59OpG6NU9F5BA5gKsO8mlWYza0VTCuOo=;
 b=Bi/qYkidYjkb4PuMQ9KVuvUnthY0tUbx66DENc+kKVKRVXi+SRu9k2Ui
 VBs/ISrtU8IObc5NVYOKljP1AA/gdB95VFVsCWGCEb43tdCJHquHCp0d7
 kssQXq1VnXh4z1LIr3AQeZugxn5Jps/mfLy3Z6n4pLahhZSY1+9Kwxsz1
 hdrQ4dMRQn6E98TJHDlzB1OYqUcf5qFayQaFChKXm/vLQrR0poAToSE7h
 4pf875bQDcMsWIbDlTmHJG9jYx99hP/lputEIPA05UMTZBCrQegO/7CbU
 /x5vKEoUJ4IURGiVPqTHz6KC7ILTvdPjsrGyvl6/Ib6f7PhK+Vwm+pF4j w==;
X-CSE-ConnectionGUID: rn93JHdMR+eB1OW7Pitx6Q==
X-CSE-MsgGUID: 2ou3BlAFT06pkfxKo0yUIA==
X-IronPort-AV: E=McAfee;i="6700,10204,11335"; a="61548152"
X-IronPort-AV: E=Sophos;i="6.13,255,1732608000"; d="scan'208";a="61548152"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2025 04:50:46 -0800
X-CSE-ConnectionGUID: 6wz4sT2LRqq1MYhAGYRK/g==
X-CSE-MsgGUID: HPOsFcmlRm2o8hceS1zVfg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="133529102"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2025 04:50:44 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 26/28] drm/i915/display: Use fixed_rr timings in modeset
 sequence
Date: Mon,  3 Feb 2025 18:08:38 +0530
Message-ID: <20250203123840.3855874-27-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250203123840.3855874-1-ankit.k.nautiyal@intel.com>
References: <20250203123840.3855874-1-ankit.k.nautiyal@intel.com>
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

During modeset enable sequence, program the fixed timings,
and turn on the VRR Timing Generator (VRR TG) for platforms
that always use VRR TG.

Later if vrr timings are required, vrr_enable() will switch
to the real VRR timings.

With this we dont want to set the vrr timings during
intel_pre_update_crtc(), as these are already handled in
vrr_{enable/disable}.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 16 ++++++++++++----
 drivers/gpu/drm/i915/display/intel_vrr.c     | 18 +++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_vrr.h     |  3 +++
 3 files changed, 32 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 2127888d459e..1f6309f63bf2 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1757,6 +1757,7 @@ static void hsw_set_frame_start_delay(const struct intel_crtc_state *crtc_state)
 
 static void hsw_configure_cpu_transcoder(const struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
@@ -1772,9 +1773,14 @@ static void hsw_configure_cpu_transcoder(const struct intel_crtc_state *crtc_sta
 	}
 
 	intel_set_transcoder_timings(crtc_state);
-	if (HAS_VRR(dev_priv))
-		intel_vrr_set_transcoder_timings(crtc_state);
-
+	if (HAS_VRR(dev_priv)) {
+		if (intel_vrr_always_use_vrr_tg(display)) {
+			intel_vrr_enable_fixed_rr_timings(crtc_state);
+			intel_crtc_update_active_timings(crtc_state, INTEL_VRRTG_MODE_FIXED_RR);
+		} else {
+			intel_vrr_set_transcoder_timings(crtc_state);
+		}
+	}
 	if (cpu_transcoder != TRANSCODER_EDP)
 		intel_de_write(dev_priv, TRANS_MULT(dev_priv, cpu_transcoder),
 			       crtc_state->pixel_multiplier - 1);
@@ -7201,6 +7207,7 @@ static void intel_enable_crtc(struct intel_atomic_state *state,
 static void intel_pre_update_crtc(struct intel_atomic_state *state,
 				  struct intel_crtc *crtc)
 {
+	struct intel_display *display = to_intel_display(state);
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	const struct intel_crtc_state *old_crtc_state =
 		intel_atomic_get_old_crtc_state(state, crtc);
@@ -7228,7 +7235,8 @@ static void intel_pre_update_crtc(struct intel_atomic_state *state,
 		    intel_crtc_needs_fastset(new_crtc_state))
 			icl_set_pipe_chicken(new_crtc_state);
 
-		if (vrr_params_changed(old_crtc_state, new_crtc_state))
+		if (vrr_params_changed(old_crtc_state, new_crtc_state) &&
+		    !intel_vrr_always_use_vrr_tg(display))
 			intel_vrr_set_transcoder_timings(new_crtc_state);
 	}
 
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 046c19336b91..ab0fdb204442 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -517,7 +517,6 @@ bool intel_vrr_is_push_sent(const struct intel_crtc_state *crtc_state)
 	return intel_de_read(display, TRANS_PUSH(display, cpu_transcoder)) & TRANS_PUSH_SEND;
 }
 
-static
 bool intel_vrr_always_use_vrr_tg(struct intel_display *display)
 {
 	if (!HAS_VRR(display))
@@ -597,6 +596,23 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
 	intel_vrr_set_fixed_rr_timings(old_crtc_state);
 }
 
+void intel_vrr_enable_fixed_rr_timings(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+
+	intel_vrr_set_fixed_rr_timings(crtc_state);
+
+	if (HAS_AS_SDP(display))
+		intel_de_write(display,
+			       TRANS_VRR_VSYNC(display, cpu_transcoder),
+			       VRR_VSYNC_END(crtc_state->vrr.vsync_end) |
+			       VRR_VSYNC_START(crtc_state->vrr.vsync_start));
+
+	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
+		       VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state));
+}
+
 void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
index 9ba988af703a..f5fcd130434a 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.h
+++ b/drivers/gpu/drm/i915/display/intel_vrr.h
@@ -12,6 +12,7 @@ struct drm_connector_state;
 struct intel_atomic_state;
 struct intel_connector;
 struct intel_crtc_state;
+struct intel_display;
 struct intel_dsb;
 
 bool intel_vrr_is_capable(struct intel_connector *connector);
@@ -37,5 +38,7 @@ bool intel_vrr_is_enabled(const struct intel_crtc_state *crtc_state);
 bool intel_vrr_is_mode_vrr(const struct intel_crtc_state *crtc_state);
 int intel_vrr_fixed_rr_vtotal(const struct intel_crtc_state *crtc_state);
 int intel_vrr_fixed_rr_vmax_vblank_start(const struct intel_crtc_state *crtc_state);
+bool intel_vrr_always_use_vrr_tg(struct intel_display *display);
+void intel_vrr_enable_fixed_rr_timings(const struct intel_crtc_state *crtc_state);
 
 #endif /* __INTEL_VRR_H__ */
-- 
2.45.2

