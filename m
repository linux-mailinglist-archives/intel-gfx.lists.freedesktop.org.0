Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8469DC2A14B
	for <lists+intel-gfx@lfdr.de>; Mon, 03 Nov 2025 06:30:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10C6310E377;
	Mon,  3 Nov 2025 05:30:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GYQ57UCj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B1F5010E376;
 Mon,  3 Nov 2025 05:30:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762147842; x=1793683842;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bAWg55gB74rGGpQj8d9f6G+w1hdFjkBIylZU+OmIQwk=;
 b=GYQ57UCjhhqXn7sc2aBkg31IPC4mcNZ3hCBqqKNx4fVcBlQe2m+IRAp5
 HuSABvR2ZzQ/M5d+Nt4q7Z8ZKDFG3kE09Pxd6zzEtYhPMIsEnSpHCTFwn
 lXSHCvJBCGiMHXtDbNWYyIpkqIRSlBNPok3KvH9eTcbAYGlw1lKauFudD
 omlUaXVXaAxUn2L87xUXZYLcTDBb0fI38pWdz7QFh+dpl2fpy7HAM3OFL
 M2bDJpcbTiuCOyOuoBLeAo8EfWBvPEwLitLD1TA2fcaXD6VycL57a1sfV
 YB8cg5ja8MRTzOeLsS63+ip5nvznpQFd5IDzO8Vev/sNo4uGcloWWGpEB g==;
X-CSE-ConnectionGUID: ea2/LR/nTie6o4zLj7OEUA==
X-CSE-MsgGUID: FFHF4W0LSq6P0pyuXdeWIA==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="64143877"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="64143877"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2025 21:30:42 -0800
X-CSE-ConnectionGUID: GR4/NPLfRX6VrxOwJQiQvw==
X-CSE-MsgGUID: XcIIbUZEQOim93wQJdyCng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,275,1754982000"; d="scan'208";a="186925401"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa008.jf.intel.com with ESMTP; 02 Nov 2025 21:30:40 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, mitulkumar.ajitkumar.golani@intel.com,
 ankit.k.nautiyal@intel.com, uma.shankar@intel.com,
 ville.syrjala@linux.intel.com
Subject: [RESEND,
 19/22] drm/i915/display: Add function to configure event for dc
 balance
Date: Mon,  3 Nov 2025 10:59:59 +0530
Message-ID: <20251103053002.3002695-20-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251103053002.3002695-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20251103053002.3002695-1-mitulkumar.ajitkumar.golani@intel.com>
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

Configure pipe dmc event for dc balance enable/disable.

--v2:
- Initialize with redundant flags. (Ankit)

--v3:
- Add function as per new enable/disable configuration framework.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 15 +++++++++++++++
 drivers/gpu/drm/i915/display/intel_dmc.h |  2 ++
 drivers/gpu/drm/i915/display/intel_vrr.c |  5 ++++-
 3 files changed, 21 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 3e3f4438d739..1460f9674a35 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -852,6 +852,21 @@ static void dmc_configure_event(struct intel_display *display,
 		      dmc_id, num_handlers, event_id);
 }
 
+/*
+ * intel_dmc_configure_dc_balance_event() - Configure event
+ * for dc balance enable/disable
+ * @display: display instance
+ * @pipe: pipe which register use to block
+ * @enable: enable/disable
+ */
+void intel_dmc_configure_dc_balance_event(struct intel_display *display,
+					  enum pipe pipe, bool enable)
+{
+	enum intel_dmc_id dmc_id = PIPE_TO_DMC_ID(pipe);
+
+	dmc_configure_event(display, dmc_id, PIPEDMC_EVENT_ADAPTIVE_DCB_TRIGGER, enable);
+}
+
 /**
  * intel_dmc_block_pkgc() - block PKG C-state
  * @display: display instance
diff --git a/drivers/gpu/drm/i915/display/intel_dmc.h b/drivers/gpu/drm/i915/display/intel_dmc.h
index 132d6cfc8e8b..32a9abd53a8d 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.h
+++ b/drivers/gpu/drm/i915/display/intel_dmc.h
@@ -26,6 +26,8 @@ void intel_dmc_enable_pipe(const struct intel_crtc_state *crtc_state);
 void intel_dmc_disable_pipe(const struct intel_crtc_state *crtc_state);
 void intel_dmc_block_pkgc(struct intel_display *display, enum pipe pipe,
 			  bool block);
+void intel_dmc_configure_dc_balance_event(struct intel_display *display,
+					  enum pipe pipe, bool enable);
 void intel_dmc_start_pkgc_exit_at_start_of_undelayed_vblank(struct intel_display *display,
 							    enum pipe pipe, bool enable);
 void intel_dmc_fini(struct intel_display *display);
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index eb6643ec5194..4d56a4e8c7ca 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -814,8 +814,10 @@ static void intel_vrr_tg_enable(const struct intel_crtc_state *crtc_state,
 	if (cmrr_enable)
 		vrr_ctl |= VRR_CTL_CMRR_ENABLE;
 
-	if (crtc_state->vrr.dc_balance.enable)
+	if (crtc_state->vrr.dc_balance.enable) {
+		intel_dmc_configure_dc_balance_event(display, pipe, true);
 		intel_pipedmc_dcb_enable(NULL, crtc);
+	}
 
 	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder), vrr_ctl);
 }
@@ -839,6 +841,7 @@ static void intel_vrr_tg_disable(const struct intel_crtc_state *old_crtc_state)
 
 	if (old_crtc_state->vrr.dc_balance.enable) {
 		intel_pipedmc_dcb_disable(NULL, crtc);
+		intel_dmc_configure_dc_balance_event(display, pipe, false);
 		intel_de_write(display, PIPEDMC_DCB_VMIN(pipe), 0);
 		intel_de_write(display, PIPEDMC_DCB_VMAX(pipe), 0);
 		intel_de_write(display, PIPEDMC_DCB_MAX_INCREASE(pipe), 0);
-- 
2.48.1

