Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B5E0A259DE
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2025 13:50:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B431410E4BE;
	Mon,  3 Feb 2025 12:50:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mC8znO6C";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF98C10E4B7;
 Mon,  3 Feb 2025 12:50:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738587017; x=1770123017;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=uM0uxOmTzdq9bnItlDIIEQiBAZnCS1vemAXix3aQKqc=;
 b=mC8znO6CT4TsJR3c44Tc5dG5xQUhEj+JHp6GRSikEakMEhznHlRmTfIi
 pRilVd7XmWUuy3Ju81Un9d5Wu/jUiTdCdoXp43rpmOEyWbobshzy1WTwI
 yr/X4E2Wc3DjShHaZ7wXe4Nj7RHlBQ4IezPyZ26Rx/+d7gRIU+ERwIUFy
 4NfGaF9Ndqdy6SWHTjpbp2lUGKx2N1my5zLSLUI6/pQ7yB3LB/vVZWsUS
 VvOfVTPBzhzhIRYfS5T7dvZ4IMtNlNHLo08JKI46kkSyE7ch8j8SZfUyL
 iR9PIpK9EOie3LBMb+5TqgCrv9qxIScrUri4n2jvJzoTrRmm4evBh6fn3 w==;
X-CSE-ConnectionGUID: tUId8pBrQaKycJsdTvjQcg==
X-CSE-MsgGUID: ErQOrHkaRIK7Pu5+KZN6jQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11335"; a="61548073"
X-IronPort-AV: E=Sophos;i="6.13,255,1732608000"; d="scan'208";a="61548073"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2025 04:50:17 -0800
X-CSE-ConnectionGUID: JAGhnmrZTA+dYaPRPQLCXg==
X-CSE-MsgGUID: TSPJO4rTRYGnZlN8Ue7u3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="133528975"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2025 04:50:15 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 13/28] drm/i915/vrr: Prepare for fixed refresh rate timings
Date: Mon,  3 Feb 2025 18:08:25 +0530
Message-ID: <20250203123840.3855874-14-ankit.k.nautiyal@intel.com>
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

Currently we always compute the timings as if vrr is enabled.
With this approach the state checker becomes complicated when we
introduce fixed refresh rate mode with vrr timing generator.

To avoid the complications, instead of always computing vrr timings, we
compute vrr timings based on uapi.vrr_enable knob.
So when the knob is disabled we always compute vmin=flipline=vmax.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 54 ++++++++++++++++++++++++
 1 file changed, 54 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 77e069d3f393..2b4376e985f6 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -263,6 +263,35 @@ int intel_vrr_fixed_rr_vtotal(const struct intel_crtc_state *crtc_state)
 			intel_vrr_real_vblank_delay(crtc_state);
 }
 
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
+void intel_vrr_prepare_fixed_timings(struct intel_crtc_state *crtc_state)
+{
+	crtc_state->vrr.vmax = intel_vrr_fixed_rr_vmax(crtc_state);
+	crtc_state->vrr.vmin = intel_vrr_fixed_rr_vmin(crtc_state);
+	crtc_state->vrr.flipline = intel_vrr_fixed_rr_flipline(crtc_state);
+}
+
 static
 int intel_vrr_compute_vmin(struct intel_crtc_state *crtc_state)
 {
@@ -353,6 +382,8 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 		intel_vrr_compute_vrr_timings(crtc_state);
 	else if (is_cmrr_frac_required(crtc_state) && is_edp)
 		intel_vrr_compute_cmrr_timings(crtc_state);
+	else
+		intel_vrr_prepare_fixed_timings(crtc_state);
 
 	if (HAS_AS_SDP(display)) {
 		crtc_state->vrr.vsync_start =
@@ -490,6 +521,13 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
 	if (!intel_vrr_is_enabled(crtc_state))
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
 
@@ -503,6 +541,20 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
 	}
 }
 
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
 void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
 {
 	struct intel_display *display = to_intel_display(old_crtc_state);
@@ -517,6 +569,8 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
 				TRANS_VRR_STATUS(display, cpu_transcoder),
 				VRR_STATUS_VRR_EN_LIVE, 1000);
 	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder), 0);
+
+	intel_vrr_set_fixed_rr_timings(old_crtc_state);
 }
 
 void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
-- 
2.45.2

