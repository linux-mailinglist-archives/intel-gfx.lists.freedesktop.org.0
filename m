Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 48CDDBFFEC5
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Oct 2025 10:29:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A648D10E8DA;
	Thu, 23 Oct 2025 08:29:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jBbEqImG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E8EAE10E8DF;
 Thu, 23 Oct 2025 08:29:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761208155; x=1792744155;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=E37QXafukE70l8MrWmXV6hWV09rvucnXBIcp/Q4UjkA=;
 b=jBbEqImGROAqLesIc21fOtNntyqu92Gf1YEjT/x5+ANsw7MbPzV19TZX
 SSbw2Yv/JvlRNELxlhaRZG5NdZkOTkPqdj3PTndr1kGxFYn78ZUyq5/Rx
 6m1tDI6wI6qrmZImCOoCTaFUco0x4q7kNVkl6CkN+FqniH7Vqr/CR5/5j
 ImMXu8LFXWrrQTLX4FbntJh+pEZ6ucowYYIpwPnkZI/I1bmRmAzeNkCQ0
 EXPWc7D5rnBt72dVgO+wAWq+DTWMX9Jtmz6flWcHSK8dgcG+bhLoYObCj
 cX/pX7QEnbIBrqSPKIz1KT+OY690NJanJqpT2AoftZKxXtKvulHzJjwkd A==;
X-CSE-ConnectionGUID: /FbQPTTBTsO2JVwa1FHpRA==
X-CSE-MsgGUID: 9j0KkvgIRdiKWRtwBvsCcg==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="74808952"
X-IronPort-AV: E=Sophos;i="6.19,249,1754982000"; d="scan'208";a="74808952"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2025 01:29:14 -0700
X-CSE-ConnectionGUID: e1BvGCSgQw66V6Jcbd27PA==
X-CSE-MsgGUID: B90e2hN1RkCReISfxvow1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,249,1754982000"; d="scan'208";a="184163027"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2025 01:29:12 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, ville.syrjala@linux.intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH] drm/i915/vrr: Fix transmission line for Adaptive Sync SDP
Date: Thu, 23 Oct 2025 13:46:14 +0530
Message-ID: <20251023081614.2645242-1-ankit.k.nautiyal@intel.com>
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

Currently the EMP_AS_SDP_TL is set to vrr.vsync_start which is
incorrect.

As per Bspec:71197 the transmission line must be within the SCL +
guardband region. Before guardband optimization, guradband was same as
vblank length so EMP_AS_SDP_TL set with vrr.sync_start was falling in
this region and it was not giving an issue.

Now with optimized guardband, this is falling outside the SCL +
guardband region and since the same transmission line is used by VSC SDP
also, this results in PSR timeout issues.

Further restrictions on the position of the transmission line:
For DP/eDP, if there is a set context latency (SCL) window, then it
cannot be the first line of SCL
For DP/eDP, if there is no SCL window, then it cannot be the first line of
the Delayed V. Blank

Fix the EMP_AS_SDP_TL to VTOTAL - (delayed vblank_start - SCL + 1)
Internally the HW computes the value as VTOTAL - EMP_AS_SDP_TL.

Fixes: e1123e617e51 ("drm/i915/vrr: Program EMP_AS_SDP_TL for DP AS SDP")
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: Jouni Högander <jouni.hogander@intel.com>
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 92fb72b56f16..dd81d2133aba 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -655,18 +655,24 @@ void intel_vrr_set_db_point_and_transmission_line(const struct intel_crtc_state
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
+	int transmission_line;
 
 	/*
 	 * For BMG and LNL+ onwards the EMP_AS_SDP_TL is used for programming
 	 * double buffering point and transmission line for VRR packets for
 	 * HDMI2.1/DP/eDP/DP->HDMI2.1 PCON.
 	 * Since currently we support VRR only for DP/eDP, so this is programmed
-	 * to for Adaptive Sync SDP to Vsync start.
+	 * for Adaptive Sync SDP.
 	 */
-	if (DISPLAY_VERx100(display) == 1401 || DISPLAY_VER(display) >= 20)
+	if (DISPLAY_VERx100(display) == 1401 || DISPLAY_VER(display) >= 20) {
+		transmission_line = adjusted_mode->crtc_vtotal - (adjusted_mode->crtc_vblank_start -
+								  crtc_state->set_context_latency +
+								  1);
 		intel_de_write(display,
 			       EMP_AS_SDP_TL(display, cpu_transcoder),
-			       EMP_AS_SDP_DB_TL(crtc_state->vrr.vsync_start));
+			       EMP_AS_SDP_DB_TL(transmission_line));
+	}
 }
 
 static int intel_vrr_hw_vmin(const struct intel_crtc_state *crtc_state)
-- 
2.45.2

