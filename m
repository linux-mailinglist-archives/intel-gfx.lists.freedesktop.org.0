Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96DA0CD8E8B
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Dec 2025 11:45:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 371C810E214;
	Tue, 23 Dec 2025 10:45:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="i7lR5Ee7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CFF3810E1DF;
 Tue, 23 Dec 2025 10:45:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766486728; x=1798022728;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cs4Tnrg9lhqqLeafDvA4bm6bhIuMcO50Ns7RNyXPQDs=;
 b=i7lR5Ee7xCvNfK4z9B/QcrJ9CjyNJtEDBo0yOfXmZwNfTcC9ZJAemEo7
 dZBsnECnk6Tz4baxiBU8uYNgw30caFuSOlpAus+F7a0HJpNzCvkMEhz/t
 o2a1lLNGCnxce19El5Gvc8K7MadYyS5k5kyR/dwDe/Jsoc156C4p3idFt
 f3WoX2UTu0RidJgljIOvpGOvS9YV8+oSMBmGtjXeVKRPJHvRttG3fL3WX
 6BYY2leboUcHWg28rIyuTuWBjZCcl3/CPDrWiRpLd/VaSULNjv37CmOu8
 ysE7XObQ8upi2CYTu95PnkbrQlr82Izit8u3CYLV7nheK38HdIg/zOqRA g==;
X-CSE-ConnectionGUID: FqjwI1z2SoODz73gbrwneA==
X-CSE-MsgGUID: OM1tOzLISRqpHv6OW8VNZQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11650"; a="68089988"
X-IronPort-AV: E=Sophos;i="6.21,170,1763452800"; d="scan'208";a="68089988"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2025 02:45:28 -0800
X-CSE-ConnectionGUID: jSXxAqrXSk6DGQ/n0pHxVw==
X-CSE-MsgGUID: bo31omThQDmmm//05yoFMA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,170,1763452800"; d="scan'208";a="199734540"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa007.jf.intel.com with ESMTP; 23 Dec 2025 02:45:24 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, mitulkumar.ajitkumar.golani@intel.com,
 ankit.k.nautiyal@intel.com, ville.syrjala@linux.intel.com,
 uma.shankar@intel.com, jani.nikula@intel.com
Subject: [PATCH v11 08/18] drm/i915/vrr: Add function to check if DC Balance
 Possible
Date: Tue, 23 Dec 2025 16:15:30 +0530
Message-ID: <20251223104542.2688548-9-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251223104542.2688548-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20251223104542.2688548-1-mitulkumar.ajitkumar.golani@intel.com>
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

Add function to check if DC Balance possibile on
requested PIPE and also validate along with DISPLAY_VER
check.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 19 +++++++++++++++++--
 1 file changed, 17 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 952e3c31bacc..dbfe56e8973d 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -351,13 +351,28 @@ int intel_vrr_compute_vmax(struct intel_connector *connector,
 	return vmax;
 }
 
+static bool intel_vrr_dc_balance_possible(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	enum pipe pipe = crtc->pipe;
+
+	/*
+	 * FIXME: Currently Firmware supports DC Balancing on PIPE A
+	 * and PIPE B. Account those limitation while computing DC
+	 * Balance parameters.
+	 */
+	return (HAS_VRR_DC_BALANCE(display) &&
+		((pipe == PIPE_A) || (pipe == PIPE_B)));
+}
+
 static void
 intel_vrr_dc_balance_compute_config(struct intel_crtc_state *crtc_state)
 {
 	int guardband_usec, adjustment_usec;
 	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
 
-	if (!HAS_VRR_DC_BALANCE(display) || !crtc_state->vrr.enable)
+	if (!intel_vrr_dc_balance_possible(crtc_state) || !crtc_state->vrr.enable)
 		return;
 
 	crtc_state->vrr.dc_balance.vmax = crtc_state->vrr.vmax;
@@ -839,7 +854,7 @@ void intel_vrr_get_dc_balance_config(struct intel_crtc_state *crtc_state)
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	enum pipe pipe = crtc->pipe;
 
-	if (!HAS_VRR_DC_BALANCE(display))
+	if (!intel_vrr_dc_balance_possible(crtc_state))
 		return;
 
 	reg_val = intel_de_read(display, PIPEDMC_DCB_VMIN(pipe));
-- 
2.48.1

