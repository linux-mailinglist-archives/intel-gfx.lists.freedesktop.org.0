Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E5B34AAC8F0
	for <lists+intel-gfx@lfdr.de>; Tue,  6 May 2025 16:57:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B42810E6D6;
	Tue,  6 May 2025 14:57:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Zwgv/C6m";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5881410E6E0;
 Tue,  6 May 2025 14:57:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746543465; x=1778079465;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=M4TKSfSIupEJo24AnMyBHrYa/AYQjJwjCPkB4HAkq6w=;
 b=Zwgv/C6mCW5vQkSxHzlVGh7TMFEirDtDhpe2NbBJV7C1DVfupHkzNyEL
 8NPL4ilqHsI8dRFa64xFeEeLXkrcNjXrQN86/TDDQIFec5+bCmxrtxci9
 ciVljzMo8VbBD6QpV/iBD1BLdlT5TFPZuBoZ2HgGyWt5wzM74cADyGMD8
 zY1tvuXcRI2PIHKHtrtASyhk13bj3z/42LN1UUfbCJpdt9BGCr6lbM6en
 8x7aUlhLT2zKGAjYheKjaG4+rJe7rfO7vXq0PGnCB2N/fFS53Gn/+ru6U
 Evf14yjAx5L7kooLEcMCuxISEmJZcYJvYjLNPutsA47239WGBeLzvC6jO w==;
X-CSE-ConnectionGUID: xZgd3JUNR8qXVup+GNnIQQ==
X-CSE-MsgGUID: No+roYlnT/2T1hHpcVsp2g==
X-IronPort-AV: E=McAfee;i="6700,10204,11425"; a="59206169"
X-IronPort-AV: E=Sophos;i="6.15,266,1739865600"; d="scan'208";a="59206169"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 07:57:45 -0700
X-CSE-ConnectionGUID: 0uG7nBwGQu+ldk6QobMlWg==
X-CSE-MsgGUID: bpcNhll/SlWtk9WmHTh8DQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,266,1739865600"; d="scan'208";a="166572257"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa002.jf.intel.com with ESMTP; 06 May 2025 07:57:43 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	ville.syrjala@intel.com
Subject: [PATCH v4 16/17] drm/i915/vrr: Add function to check if DC Balance
 Possible
Date: Tue,  6 May 2025 20:25:16 +0530
Message-ID: <20250506145517.4129419-17-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250506145517.4129419-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20250506145517.4129419-1-mitulkumar.ajitkumar.golani@intel.com>
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
 drivers/gpu/drm/i915/display/intel_vrr.c | 18 +++++++++++++++++-
 1 file changed, 17 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 1275be16e749..a88cc9258542 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -256,6 +256,22 @@ void intel_vrr_compute_cmrr_timings(struct intel_crtc_state *crtc_state)
 	crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
 }
 
+static
+int intel_vrr_dc_balance_possible(const struct intel_crtc_state *crtc_state)
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
 static
 void intel_vrr_compute_vrr_timings(struct intel_crtc_state *crtc_state)
 {
@@ -513,7 +529,7 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
 			       lower_32_bits(crtc_state->cmrr.cmrr_n));
 	}
 
-	if (HAS_VRR_DC_BALANCE(display) &&
+	if (intel_vrr_dc_balance_possible(crtc_state) &&
 	    (crtc_state->vrr.dc_balance.vmin || crtc_state->vrr.dc_balance.vmax)) {
 		intel_de_write(display, PIPEDMC_DCB_VMIN(pipe),
 			       crtc_state->vrr.dc_balance.vmin - 1);
-- 
2.48.1

