Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EB50A5945C
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Mar 2025 13:28:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25DEB10E42B;
	Mon, 10 Mar 2025 12:28:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KBBYceHG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B952710E42B;
 Mon, 10 Mar 2025 12:28:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741609708; x=1773145708;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=x1wLjvXb1MarPI0GiaBIc2T4/JKfJO+Te9F1cFWo0BA=;
 b=KBBYceHGgo3LIn4SwckZhZHtiWQtHFdVdaPbanSWnSCmoAIODaGwknQm
 prJUuX3cV/cZpH7GCY9Ejvj/xIVwlvm317BC3CUlIFIyig2v2yGcaxYuC
 OoeVwwLV2cof9JXFjtZrKBhBjKSgaBYZyO1ktNF95JSnLfFs6Ike0XAEs
 Pxzp4ePADPiGj/pfAW3FJjB1VuJGuSpgxxDvEaB4ZDeijaJppMS+CaamG
 bECY4zw4OxLJzb7hI+SelFaMTgCpDjpzNOSeZVTr4/L5DqcOoMuUKKy8g
 mstyArncno26LJhU1G9eLp0IkS7OVEmvUc/nYfQvN+Po44vIvMb7vDxEX w==;
X-CSE-ConnectionGUID: ETbAANYZQPOaMlFBCC3NdA==
X-CSE-MsgGUID: YmHx/ebgRIOq0qjW3/g2Hw==
X-IronPort-AV: E=McAfee;i="6700,10204,11369"; a="65057281"
X-IronPort-AV: E=Sophos;i="6.14,236,1736841600"; d="scan'208";a="65057281"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2025 05:28:28 -0700
X-CSE-ConnectionGUID: waK1X8ffR6GPSfHzPnG0Gg==
X-CSE-MsgGUID: 8P+3oWbKQl6iaM/2fNdieQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,236,1736841600"; d="scan'208";a="143180524"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2025 05:28:26 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 07/21] drm/i915/vrr: Prepare for fixed refresh rate timings
Date: Mon, 10 Mar 2025 17:46:01 +0530
Message-ID: <20250310121615.1077079-8-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250310121615.1077079-1-ankit.k.nautiyal@intel.com>
References: <20250310121615.1077079-1-ankit.k.nautiyal@intel.com>
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
v4: Move vmin adjustement after all other timings are complete. (Ville)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com> (#v2)
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 87 ++++++++++++++++++++++--
 1 file changed, 82 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index e0573e28014b..622a70e21737 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -246,6 +246,72 @@ void intel_vrr_compute_vrr_timings(struct intel_crtc_state *crtc_state)
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
+void intel_vrr_compute_fixed_rr_timings(struct intel_crtc_state *crtc_state)
+{
+	/*
+	 * For fixed rr,  vmin = vmax = flipline.
+	 * vmin is already set to crtc_vtotal set vmax and flipline the same.
+	 */
+	crtc_state->vrr.vmax = crtc_state->hw.adjusted_mode.crtc_vtotal;
+	crtc_state->vrr.flipline = crtc_state->hw.adjusted_mode.crtc_vtotal;
+}
+
 static
 int intel_vrr_compute_vmin(struct intel_crtc_state *crtc_state)
 {
@@ -314,6 +380,13 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 
 	crtc_state->vrr.flipline = crtc_state->vrr.vmin;
 
+	if (crtc_state->uapi.vrr_enabled)
+		intel_vrr_compute_vrr_timings(crtc_state);
+	else if (is_cmrr_frac_required(crtc_state) && is_edp)
+		intel_vrr_compute_cmrr_timings(crtc_state);
+	else
+		intel_vrr_compute_fixed_rr_timings(crtc_state);
+
 	/*
 	 * flipline determines the min vblank length the hardware will
 	 * generate, and on ICL/TGL flipline>=vmin+1, hence we reduce
@@ -321,11 +394,6 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 	 */
 	crtc_state->vrr.vmin -= intel_vrr_flipline_offset(display);
 
-	if (crtc_state->uapi.vrr_enabled)
-		intel_vrr_compute_vrr_timings(crtc_state);
-	else if (is_cmrr_frac_required(crtc_state) && is_edp)
-		intel_vrr_compute_cmrr_timings(crtc_state);
-
 	if (HAS_AS_SDP(display)) {
 		crtc_state->vrr.vsync_start =
 			(crtc_state->hw.adjusted_mode.crtc_vtotal -
@@ -496,6 +564,13 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
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
 
@@ -523,6 +598,8 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
 				TRANS_VRR_STATUS(display, cpu_transcoder),
 				VRR_STATUS_VRR_EN_LIVE, 1000);
 	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder), 0);
+
+	intel_vrr_set_fixed_rr_timings(old_crtc_state);
 }
 
 static
-- 
2.45.2

