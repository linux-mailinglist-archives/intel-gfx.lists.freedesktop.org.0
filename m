Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 240929BCB1B
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Nov 2024 11:58:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3D2110E570;
	Tue,  5 Nov 2024 10:58:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZDrskZmi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC3B610E56A
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Nov 2024 10:58:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730804325; x=1762340325;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=3r497nfKfo8wgja1BIzNsH9Jc372V9zJlrSG3R3rAQU=;
 b=ZDrskZmi5PdjjYd7dt3xzbQB7D6T6hjdQA5IeZ/mf4eOkKpCf8O8hWty
 sMmeWlOirW9wEwePeVkdIWrsIWr6mxdGXd82X//bA89dR8W1b/8dobz6Q
 p+iaRIKy3fdiPjf6Tx1E/WmybeXVe6/Db07YOjCjxRJdR5D0ZhUh3VP1f
 6n/M+wSAyxLXbp10q3C/xNGiF6J1+mD9AeWM9AtpuNGuMVPXQIAoEHWoT
 +lvyfTXKw/l3z/if8ngeVcd/xiw7YtGLjJ5swTugtsqCHy4hiHmwR3i7n
 unoL5iormheE8XFiAxSIISfgRlX0bi+aKgFEJwK+Y5bBII7zMdhWRMR1p w==;
X-CSE-ConnectionGUID: 6gRiEExqQqqmAZ+k/Xu7lg==
X-CSE-MsgGUID: xaXe1GdbTe2gHRZRxjXNJw==
X-IronPort-AV: E=McAfee;i="6700,10204,11246"; a="34328441"
X-IronPort-AV: E=Sophos;i="6.11,259,1725346800"; d="scan'208";a="34328441"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2024 02:58:45 -0800
X-CSE-ConnectionGUID: 3umqjHKuQwSlQXMHAgltuA==
X-CSE-MsgGUID: 71GA4lZjRfSPvWi0mg+u5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,259,1725346800"; d="scan'208";a="84306110"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmviesa010.fm.intel.com with ESMTP; 05 Nov 2024 02:58:42 -0800
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jouni.hogander@intel.com, jani.nikula@intel.com, nemesa.garg@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v2] drm/i915/psr: Disable psr1 if setup_time > vblank
Date: Tue,  5 Nov 2024 16:09:16 +0530
Message-Id: <20241105103916.1857731-1-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
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

Issue is seen when PSR enabled with setup frames and when try to disable
PSR at SRDONACK State (0x1). PSR FSM is stuck at SRDONACK(0x1) for more
than 5 seconds. Issue not seen with Setup frames disabled. Currently
disable psr1 if setuptime > vblank to workaround the above issue.

HSD: 16024594674
WA: 18037818876

v1: Initial version
v2: Add debug log and some cosmetic changes. [Jouni, Jani, Nemesa]

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 4176163ec19a..d8eb0d427d8c 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1640,6 +1640,15 @@ _panel_replay_compute_config(struct intel_dp *intel_dp,
 	return true;
 }
 
+static bool intel_psr_needs_wa_18037818876(struct intel_dp *intel_dp,
+					   struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(intel_dp);
+
+	return (DISPLAY_VER(display) == 20 && intel_dp->psr.entry_setup_frames > 0 &&
+		!crtc_state->has_sel_update);
+}
+
 void intel_psr_compute_config(struct intel_dp *intel_dp,
 			      struct intel_crtc_state *crtc_state,
 			      struct drm_connector_state *conn_state)
@@ -1686,6 +1695,13 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
 		return;
 
 	crtc_state->has_sel_update = intel_sel_update_config_valid(intel_dp, crtc_state);
+
+	/* Wa_18037818876 */
+	if (intel_psr_needs_wa_18037818876(intel_dp, crtc_state)) {
+		crtc_state->has_psr = false;
+		drm_dbg_kms(display->drm,
+			    "PSR disabled to workaround PSR FSM hang issue\n");
+	}
 }
 
 void intel_psr_get_config(struct intel_encoder *encoder,
-- 
2.29.0

