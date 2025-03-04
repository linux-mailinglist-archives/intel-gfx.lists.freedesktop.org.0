Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 99F20A4D671
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Mar 2025 09:32:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3AF2010E52A;
	Tue,  4 Mar 2025 08:32:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EJrTVS6i";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3734310E529;
 Tue,  4 Mar 2025 08:32:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741077129; x=1772613129;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Kp9Qsz2dGOe9obFssM/CfPuREbA6rPuooAAHFumdEK4=;
 b=EJrTVS6iGkdhWWCVt7faLRiPVz4az8Balcs2K4aND9BtRwAZB2YIPZUY
 tslygD3PVgFg2nbF5VrT4UolTIg5Sf8SRws0xu9iPviAhG5HYjaLIegWz
 G1Wfs7MV3aYx/nMuF+CwEdrmfpTTV3HOAs/Mo9hRwbopQsWIpUlu1VNTw
 U2/zJi8nNGJCXSEMa58FPfk0qVOhjrVSk8g94H3UnHD2o4l+iFt8CE3tG
 j6nRGOiu4dup1dOFfVQEVEdiIqvY9m8yyKi9kUQG1rnpZGBlfm9BUUeRd
 jkgHOJK1xZQtQBeQjVH8dJhw0zhhd/ZZhF+7TX4e9EbUyWDqtw8iak4cE Q==;
X-CSE-ConnectionGUID: /HeGjagdTFWMYtIL1TvSTw==
X-CSE-MsgGUID: 6bWpS6Q8RtOLDnI0Oxus5Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11362"; a="45910161"
X-IronPort-AV: E=Sophos;i="6.13,331,1732608000"; d="scan'208";a="45910161"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 00:32:09 -0800
X-CSE-ConnectionGUID: RzYetYBPTPOUP7qaO2QTSQ==
X-CSE-MsgGUID: tGyVM2k8T66BZPX0nnmj0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="155492193"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 00:32:07 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 07/22] drm/i915/vrr: Prepare for fixed refresh rate timings
Date: Tue,  4 Mar 2025 13:49:33 +0530
Message-ID: <20250304081948.3177034-8-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250304081948.3177034-1-ankit.k.nautiyal@intel.com>
References: <20250304081948.3177034-1-ankit.k.nautiyal@intel.com>
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

Currently we always compute the timings as if vrr is enabled.
With this approach the state checker becomes complicated when we
introduce fixed refresh rate mode with vrr timing generator.

To avoid the complications, instead of always computing vrr timings, we
compute vrr timings based on uapi.vrr_enable knob.
So when the knob is disabled we always compute vmin=flipline=vmax.

v2: Use actual timings without any adjustments while preparing for
fixed timings in compute_config. (Ville)
v3: Avoid setting fixed timings if !vrr_possible().

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com> (#v2)
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 73 ++++++++++++++++++++++++
 1 file changed, 73 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index e0573e28014b..0e606dfe4a56 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -246,6 +246,68 @@ void intel_vrr_compute_vrr_timings(struct intel_crtc_state *crtc_state)
 	crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
 }
 
+/*
+ * For fixed refresh rate mode Vmin, Vmax and Flipline all are set to
+ * Vtotal value.
+ */
+static
+int intel_vrr_fixed_rr_vtotal(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	int crtc_vtotal = crtc_state->hw.adjusted_mode.crtc_vtotal;
+
+	if (DISPLAY_VER(display) >= 13)
+		return crtc_vtotal;
+	else
+		return crtc_vtotal -
+			intel_vrr_real_vblank_delay(crtc_state);
+}
+
+static
+int intel_vrr_fixed_rr_vmax(const struct intel_crtc_state *crtc_state)
+{
+	return intel_vrr_fixed_rr_vtotal(crtc_state);
+}
+
+static
+int intel_vrr_fixed_rr_vmin(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+
+	return intel_vrr_fixed_rr_vtotal(crtc_state) -
+		intel_vrr_flipline_offset(display);
+}
+
+static
+int intel_vrr_fixed_rr_flipline(const struct intel_crtc_state *crtc_state)
+{
+	return intel_vrr_fixed_rr_vtotal(crtc_state);
+}
+
+static
+void intel_vrr_set_fixed_rr_timings(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+
+	if (!intel_vrr_possible(crtc_state))
+		return;
+
+	intel_de_write(display, TRANS_VRR_VMIN(display, cpu_transcoder),
+		       intel_vrr_fixed_rr_vmin(crtc_state) - 1);
+	intel_de_write(display, TRANS_VRR_VMAX(display, cpu_transcoder),
+		       intel_vrr_fixed_rr_vmax(crtc_state) - 1);
+	intel_de_write(display, TRANS_VRR_FLIPLINE(display, cpu_transcoder),
+		       intel_vrr_fixed_rr_flipline(crtc_state) - 1);
+}
+
+static
+void intel_vrr_prepare_fixed_timings(struct intel_crtc_state *crtc_state)
+{
+	crtc_state->vrr.vmax = intel_vrr_vmin_flipline(crtc_state);
+	crtc_state->vrr.flipline = intel_vrr_vmin_flipline(crtc_state);
+}
+
 static
 int intel_vrr_compute_vmin(struct intel_crtc_state *crtc_state)
 {
@@ -325,6 +387,8 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 		intel_vrr_compute_vrr_timings(crtc_state);
 	else if (is_cmrr_frac_required(crtc_state) && is_edp)
 		intel_vrr_compute_cmrr_timings(crtc_state);
+	else
+		intel_vrr_prepare_fixed_timings(crtc_state);
 
 	if (HAS_AS_SDP(display)) {
 		crtc_state->vrr.vsync_start =
@@ -496,6 +560,13 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
 	if (!crtc_state->vrr.enable)
 		return;
 
+	intel_de_write(display, TRANS_VRR_VMIN(display, cpu_transcoder),
+		       crtc_state->vrr.vmin - 1);
+	intel_de_write(display, TRANS_VRR_VMAX(display, cpu_transcoder),
+		       crtc_state->vrr.vmax - 1);
+	intel_de_write(display, TRANS_VRR_FLIPLINE(display, cpu_transcoder),
+		       crtc_state->vrr.flipline - 1);
+
 	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
 		       TRANS_PUSH_EN);
 
@@ -523,6 +594,8 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
 				TRANS_VRR_STATUS(display, cpu_transcoder),
 				VRR_STATUS_VRR_EN_LIVE, 1000);
 	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder), 0);
+
+	intel_vrr_set_fixed_rr_timings(old_crtc_state);
 }
 
 static
-- 
2.45.2

