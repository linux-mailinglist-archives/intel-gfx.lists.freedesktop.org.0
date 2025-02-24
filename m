Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3EBBA42109
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2025 14:42:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66F2410E3F0;
	Mon, 24 Feb 2025 13:41:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BVP2ADmn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D8BA710E13C;
 Mon, 24 Feb 2025 06:29:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740378583; x=1771914583;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=r6O4hMx6Rlw5px5Emk8Z9X/78eTl0TZuJjVJIKJsnUM=;
 b=BVP2ADmnJxs8YYhtMhOCHDi8vshVQMHY9Xn0lQYUuFKsBZanjCuAcR5h
 uD5gO8px/4tBTF+243jh6+jG9zyPePPuf4cG+euDADCtg7rbhjX1qQiDB
 SBlNLDUiXduzj/WUaA23DzWpr3yKa4tnpxtPmVwYYQlYXNx0PgytmStOn
 wbJWhnpkOJ9Vkogr56O/9ApPV8FJ5izAit50OOjBDPOZJijyE6rUyRxjB
 JFg9E8RxpCQHnRdRyNYYzPHfQCvGCZP0Lkl924rispvQEZN1IKypCf7ew
 tJKA3UsRxmcgpFi7A2PUGAEZ7oyXIY2oglR9+5dVSZFanK91ddyudD181 g==;
X-CSE-ConnectionGUID: eMLFsXKlRWKx5VSywRysvw==
X-CSE-MsgGUID: nk4wYjQ4QnyZ+4xW7QGOTw==
X-IronPort-AV: E=McAfee;i="6700,10204,11354"; a="28719655"
X-IronPort-AV: E=Sophos;i="6.13,309,1732608000"; d="scan'208";a="28719655"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2025 22:29:43 -0800
X-CSE-ConnectionGUID: Ab//2/N2TNCcE0qOeBQwfA==
X-CSE-MsgGUID: UrCRxmgIR2SXsijfwZ5+VQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="120076513"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2025 22:29:43 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 07/20] drm/i915/vrr: Prepare for fixed refresh rate timings
Date: Mon, 24 Feb 2025 11:47:04 +0530
Message-ID: <20250224061717.1095226-8-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250224061717.1095226-1-ankit.k.nautiyal@intel.com>
References: <20250224061717.1095226-1-ankit.k.nautiyal@intel.com>
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

Currently we always compute the timings as if vrr is enabled.
With this approach the state checker becomes complicated when we
introduce fixed refresh rate mode with vrr timing generator.

To avoid the complications, instead of always computing vrr timings, we
compute vrr timings based on uapi.vrr_enable knob.
So when the knob is disabled we always compute vmin=flipline=vmax.

v2: Use actual timings without any adjustments while preparing for
fixed timings in compute_config. (Ville)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 70 ++++++++++++++++++++++++
 1 file changed, 70 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index b6120ff1a87c..45efcb57c77a 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -246,6 +246,65 @@ void intel_vrr_compute_vrr_timings(struct intel_crtc_state *crtc_state)
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
@@ -326,6 +385,8 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 		intel_vrr_compute_vrr_timings(crtc_state);
 	else if (is_cmrr_frac_required(crtc_state) && is_edp)
 		intel_vrr_compute_cmrr_timings(crtc_state);
+	else
+		intel_vrr_prepare_fixed_timings(crtc_state);
 
 	if (HAS_AS_SDP(display)) {
 		crtc_state->vrr.vsync_start =
@@ -497,6 +558,13 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
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
 
@@ -524,6 +592,8 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
 				TRANS_VRR_STATUS(display, cpu_transcoder),
 				VRR_STATUS_VRR_EN_LIVE, 1000);
 	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder), 0);
+
+	intel_vrr_set_fixed_rr_timings(old_crtc_state);
 }
 
 static
-- 
2.45.2

