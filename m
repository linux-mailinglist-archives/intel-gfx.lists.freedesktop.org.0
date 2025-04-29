Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC459AA0F3C
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Apr 2025 16:42:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A1D110E42E;
	Tue, 29 Apr 2025 14:42:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="a/aSWZQk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13B8710E42E;
 Tue, 29 Apr 2025 14:42:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745937739; x=1777473739;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=IKgtNrQK/okqvDI3YPjG8yoJo/4tyd95/KtGlhHwVMU=;
 b=a/aSWZQkMlhGABYigchJ22gjT5RSH/0mjXXllACPXfeLRcwnubBb+Bal
 uwHV/0XZls3wYAka4meEn/nDesWqpaZHlSeD6B6mJkaVCVxbXgjtW6Z8V
 /VBBM7VqEl+cKXDBRHeWtok0AcFAQcmCupbzJ5IZhxDE5sMw4PRx2m8Ci
 wa746chG8jJTtUhmrGl/Z2qKL5FENattqa/kG5qZ/sRGM/Qlp+DLOI5h5
 IP5+GAgU43KvVInAHw94ubuNUXfdnU+MCTpJJKLIO2Zx6kx+lTVXrLwBO
 2tWDj8DQr7rcsBUsNVvbwAoFmPiesTalt9OYZewEfx698n8FI+6jR9nkO A==;
X-CSE-ConnectionGUID: 38cagwjCScGbG8qNYsoRxg==
X-CSE-MsgGUID: c3G4+/y8QPupKhhiVa+81Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11418"; a="47721350"
X-IronPort-AV: E=Sophos;i="6.15,249,1739865600"; d="scan'208";a="47721350"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2025 07:42:19 -0700
X-CSE-ConnectionGUID: xDPNUo8bSkG2nZWhnqpmjg==
X-CSE-MsgGUID: gA1FQlkCTQ+h7PeCN8q1RA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,249,1739865600"; d="scan'208";a="134164175"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2025 07:42:17 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com,
	jouni.hogander@intel.com
Subject: [PATCH] drm/i915/vrr: Program EMP_AS_SDP_TL for DP AS SDP
Date: Tue, 29 Apr 2025 20:00:55 +0530
Message-ID: <20250429143055.130701-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
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

The register EMP_AS_SDP_TL (MTL) was introduced for configuring the
double buffering point and transmission line for
HDMI Video Timing Extended Metadata Packet (VTEMP) for VRR.
This was also intended to be configured for DP to HDMI2.1 PCON to
support VRR.

From BMG and LNL+ onwards, this register was extended to Display Port
Adaptive Sync SDP to have a common register to configure double
buffering point and transmission line for both HDMI and DP VRR related
packets.

Currently, we do not support VRR for either native HDMI or via PCON.
However we need to configure this for DP SDP case. As per the spec,
program the register to set Vsync start as the double buffering point
for DP AS SDP.

Bspec:70984, 71197
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c      | 20 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_vrr_regs.h |  6 ++++++
 2 files changed, 26 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index c6565baf815a..2447bdfde5af 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -576,6 +576,22 @@ bool intel_vrr_always_use_vrr_tg(struct intel_display *display)
 	return false;
 }
 
+static
+void intel_vrr_set_emp_as_sdp_tl(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+
+	/*
+	 * For BMG and LNL+ onwards the EMP_AS_SDP_TL is used for programming
+	 * double buffering point and transmission line for Adaptive Sync SDP.
+	 */
+	if (DISPLAY_VERx100(display) == 1401 || DISPLAY_VER(display) >= 20)
+		intel_de_write(display,
+			       EMP_AS_SDP_TL(display, cpu_transcoder),
+			       EMP_AS_SDP_DB_TL(crtc_state->vrr.vsync_start));
+}
+
 void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
@@ -595,6 +611,8 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
 		       TRANS_PUSH_EN);
 
 	if (!intel_vrr_always_use_vrr_tg(display)) {
+		intel_vrr_set_emp_as_sdp_tl(crtc_state);
+
 		if (crtc_state->cmrr.enable) {
 			intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
 				       VRR_CTL_VRR_ENABLE | VRR_CTL_CMRR_ENABLE |
@@ -646,6 +664,8 @@ void intel_vrr_transcoder_enable(const struct intel_crtc_state *crtc_state)
 	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
 		       TRANS_PUSH_EN);
 
+	intel_vrr_set_emp_as_sdp_tl(crtc_state);
+
 	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
 		       VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state));
 }
diff --git a/drivers/gpu/drm/i915/display/intel_vrr_regs.h b/drivers/gpu/drm/i915/display/intel_vrr_regs.h
index 6ed0e0dc97e7..d2af1b6710bf 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_vrr_regs.h
@@ -108,6 +108,12 @@
 #define VRR_VSYNC_START_MASK			REG_GENMASK(12, 0)
 #define VRR_VSYNC_START(vsync_start)		REG_FIELD_PREP(VRR_VSYNC_START_MASK, (vsync_start))
 
+/* Common register for HDMI VTEMP and DP AS SDP */
+#define _EMP_AS_SDP_TL_A			0x60204
+#define EMP_AS_SDP_DB_TL_MASK			REG_GENMASK(12, 0)
+#define EMP_AS_SDP_TL(dev_priv, trans)		_MMIO_TRANS2(dev_priv, trans, _EMP_AS_SDP_TL_A)
+#define EMP_AS_SDP_DB_TL(db_transmit_line)	REG_FIELD_PREP(EMP_AS_SDP_DB_TL_MASK, (db_transmit_line))
+
 /*CMRR Registers*/
 
 #define _TRANS_CMRR_M_LO_A			0x604F0
-- 
2.45.2

