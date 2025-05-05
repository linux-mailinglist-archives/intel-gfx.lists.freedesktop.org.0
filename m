Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BDDDDAA8B55
	for <lists+intel-gfx@lfdr.de>; Mon,  5 May 2025 05:50:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C82AE10E236;
	Mon,  5 May 2025 03:50:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Qa1SLPnP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E442B10E17E;
 Mon,  5 May 2025 03:50:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746417031; x=1777953031;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ecaWMLQ8nhYKNxzqC+vh155RpMK5GNL9g7VgVueadlY=;
 b=Qa1SLPnP26y0WWEFRdznVOUXJUIkrbUl4S9yLeAiH+RG9jAsosWMkeAz
 38FoLRcpf2fRU4EYJcbGCg1B8Xd1nzmgYZgtMkDm+p8X2JMsbqE9kdK/3
 G8i+CesGklc5VlcO5stIewJ0FWm/JyGckCGpS1jI00hrN4Vc69G0KwSnY
 1lQi2sH7iNY/RjtXYtb2JMZH63yFhdxhxkPGRhF14VOJPusSum/PCYrvm
 HGT/F8UF69/pz3NiwVMK+dDodOlZ79i4BaTqqCVxRrmpp7i3wIZQTr3BW
 y2tHRA7ab1JGfJZ+DyiDq2xAo8u3SPIcTicPPBTr83SQN7wKymLFB/yI6 Q==;
X-CSE-ConnectionGUID: Qn1TKm1gTVyc6uVGa2rLwA==
X-CSE-MsgGUID: wLXIgycGTjSldd76jv27Fg==
X-IronPort-AV: E=McAfee;i="6700,10204,11423"; a="59003544"
X-IronPort-AV: E=Sophos;i="6.15,262,1739865600"; d="scan'208";a="59003544"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2025 20:50:29 -0700
X-CSE-ConnectionGUID: DdVh9UtvQN+K6k96nHz4Qg==
X-CSE-MsgGUID: ijSnwKeOTjeV56c/Uw84Yg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,262,1739865600"; d="scan'208";a="166188879"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2025 20:50:27 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jouni.hogander@intel.com,
 jani.nikula@linux.intel.com
Subject: [PATCH v2] drm/i915/vrr: Program EMP_AS_SDP_TL for DP AS SDP
Date: Mon,  5 May 2025 09:09:11 +0530
Message-ID: <20250505033911.393628-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
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

The register EMP_AS_SDP_TL (MTL) was introduced for configuring the
double buffering point and transmission line for all
HDMI2.1 Extended Metadata Packets (VT-EMP for VRR, CVT-EMP for DSC etc).
This was also intended to be configured for DP to HDMI2.1 PCON to
support VRR.

From BMG and LNL+ onwards, this register was extended to Display Port
Adaptive Sync SDP to have a common register to configure double
buffering point and transmission line for both HDMI EMPs and DP VRR related
packets.

Currently, we do not support VRR for either native HDMI or via PCON.
However we need to configure this for DP SDP case. As per the spec,
program the register to set Vsync start as the double buffering point
for DP AS SDP.

v2:
-Make the helper more readable. (Jani)
-Add more information in commit message and comment.

Bspec:70984, 71197
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Tested-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c      | 23 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_vrr_regs.h |  6 +++++
 2 files changed, 29 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index c6565baf815a..c55b8144e234 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -576,6 +576,25 @@ bool intel_vrr_always_use_vrr_tg(struct intel_display *display)
 	return false;
 }
 
+static
+void intel_vrr_set_db_point_and_transmission_line(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+
+	/*
+	 * For BMG and LNL+ onwards the EMP_AS_SDP_TL is used for programming
+	 * double buffering point and transmission line for VRR packets for
+	 * HDMI2.1/DP/eDP/DP->HDMI2.1 PCON.
+	 * Since currently we support VRR only for DP/eDP, so this is programmed
+	 * to for Adaptive Sync SDP to Vsync start.
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
@@ -595,6 +614,8 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
 		       TRANS_PUSH_EN);
 
 	if (!intel_vrr_always_use_vrr_tg(display)) {
+		intel_vrr_set_db_point_and_transmission_line(crtc_state);
+
 		if (crtc_state->cmrr.enable) {
 			intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
 				       VRR_CTL_VRR_ENABLE | VRR_CTL_CMRR_ENABLE |
@@ -646,6 +667,8 @@ void intel_vrr_transcoder_enable(const struct intel_crtc_state *crtc_state)
 	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
 		       TRANS_PUSH_EN);
 
+	intel_vrr_set_db_point_and_transmission_line(crtc_state);
+
 	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
 		       VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state));
 }
diff --git a/drivers/gpu/drm/i915/display/intel_vrr_regs.h b/drivers/gpu/drm/i915/display/intel_vrr_regs.h
index 6ed0e0dc97e7..09cdd50d6187 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_vrr_regs.h
@@ -108,6 +108,12 @@
 #define VRR_VSYNC_START_MASK			REG_GENMASK(12, 0)
 #define VRR_VSYNC_START(vsync_start)		REG_FIELD_PREP(VRR_VSYNC_START_MASK, (vsync_start))
 
+/* Common register for HDMI EMP and DP AS SDP */
+#define _EMP_AS_SDP_TL_A			0x60204
+#define EMP_AS_SDP_DB_TL_MASK			REG_GENMASK(12, 0)
+#define EMP_AS_SDP_TL(dev_priv, trans)		_MMIO_TRANS2(dev_priv, trans, _EMP_AS_SDP_TL_A)
+#define EMP_AS_SDP_DB_TL(db_transmit_line)	REG_FIELD_PREP(EMP_AS_SDP_DB_TL_MASK, (db_transmit_line))
+
 /*CMRR Registers*/
 
 #define _TRANS_CMRR_M_LO_A			0x604F0
-- 
2.45.2

