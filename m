Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F108AB4AE0
	for <lists+intel-gfx@lfdr.de>; Tue, 13 May 2025 07:19:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5AD210E531;
	Tue, 13 May 2025 05:19:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FPUAcQ+Z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 296A610E531;
 Tue, 13 May 2025 05:19:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747113555; x=1778649555;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ddpkIGc4Q1xtw+hYHo4wOCm/ylvbg6/RPIl7d/Mlq1g=;
 b=FPUAcQ+ZD0b1NNUX/mC6zfvHkX07+eunKDDs1xdiEZ86Ytadoqjb+9pl
 S47yGZ1V/n2XQ7Z2zmpWKVedVRDPwGMX5njNuts1R68o1EJHQMiC79g17
 0EOh68xH3WZQ9fOMXblMrKY4wkQ974hQziKtgdxEJtM1MYQgh3V6LqG8W
 0rT73y1pPZiVvo07LI0PFfcuCDHym6TETzCoH9WpTv+UICJxFeFR1nCoR
 z097rQhWrMmgZR4kuid3tn3DGjquXqlT3y4OVJZX3+Nu86b8qJASWeAsz
 Bqt/asQdgD33axoUhPCAmGv7O9yFlEXSq/DW08dWHLcR7qtZr+GL9hTQg A==;
X-CSE-ConnectionGUID: 149yHY4rQyCr199NNogq5w==
X-CSE-MsgGUID: 6cXf9S42RXK9f/gKAwfKIQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11431"; a="51597878"
X-IronPort-AV: E=Sophos;i="6.15,284,1739865600"; d="scan'208";a="51597878"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2025 22:19:15 -0700
X-CSE-ConnectionGUID: w6itXtdxQGSP4FhLmMYlhw==
X-CSE-MsgGUID: FTJmxvyiQJSnPUqqtOYapA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,284,1739865600"; d="scan'208";a="137506258"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa006.jf.intel.com with ESMTP; 12 May 2025 22:19:13 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	ville.syrjala@intel.com
Subject: [PATCH v5 14/17] drm/i915/vrr: Pause DC Balancing for DSB commits
Date: Tue, 13 May 2025 10:46:57 +0530
Message-ID: <20250513051700.507389-15-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250513051700.507389-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20250513051700.507389-1-mitulkumar.ajitkumar.golani@intel.com>
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Pause the DMC DC Balancing for the remainder of the
commit so that vmin/vmax won't change after we've baked
them into the DSB vblank evasion commands.

--v2:
- Remove typo. (Ankit)
- Separate vrr enable structuring. (Ankit)

--v3:
- Add gaurd before accessing DC balance bits.
- Remove redundancy checks.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 17 +++++++++++++++++
 drivers/gpu/drm/i915/display/intel_vrr.c     |  9 +++++++++
 2 files changed, 26 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index c06047a8bf1b..d1a2e694b6a1 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7217,6 +7217,21 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 	}
 
 	if (new_crtc_state->use_dsb) {
+		if (new_crtc_state->vrr.dc_balance.enable) {
+			/*
+			 * Pause the DMC DC balancing for the remainder of
+			 * the commit so that vmin/vmax won't change after
+			 * we've baked them into the DSB vblank evasion
+			 * commands.
+			 *
+			 * FIXME maybe need a small delay here to make sure
+			 * DMC has finished updating the values? Or we need
+			 * a better DMC<->driver protocol that gives is real
+			 * guarantees about that...
+			 */
+			intel_pipedmc_dcb_disable(NULL, crtc);
+		}
+
 		if (intel_crtc_needs_color_update(new_crtc_state))
 			intel_color_commit_noarm(new_crtc_state->dsb_commit,
 						 new_crtc_state);
@@ -7253,6 +7268,8 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 			intel_vrr_send_push(new_crtc_state->dsb_commit, new_crtc_state);
 			intel_dsb_wait_vblank_delay(state, new_crtc_state->dsb_commit);
 			intel_vrr_check_push_sent(new_crtc_state->dsb_commit, new_crtc_state);
+			if (new_crtc_state->vrr.dc_balance.enable)
+				intel_pipedmc_dcb_enable(new_crtc_state->dsb_commit, crtc);
 			intel_dsb_interrupt(new_crtc_state->dsb_commit);
 		}
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 88ac4d93586b..3a5d29327d4d 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -9,6 +9,7 @@
 #include "i915_reg.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
+#include "intel_dmc.h"
 #include "intel_dp.h"
 #include "intel_dmc_regs.h"
 #include "intel_vrr.h"
@@ -602,6 +603,7 @@ bool intel_vrr_always_use_vrr_tg(struct intel_display *display)
 void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 	u32 ctl;
 
@@ -640,17 +642,24 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
 		ctl |= VRR_CTL_CMRR_ENABLE;
 
 	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder), ctl);
+
+	if (crtc_state->vrr.dc_balance.enable)
+		intel_pipedmc_dcb_enable(NULL, crtc);
 }
 
 void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
 {
 	struct intel_display *display = to_intel_display(old_crtc_state);
+	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
 	enum transcoder cpu_transcoder = old_crtc_state->cpu_transcoder;
 	u32 ctl;
 
 	if (!old_crtc_state->vrr.enable)
 		return;
 
+	if (old_crtc_state->vrr.dc_balance.enable)
+		intel_pipedmc_dcb_disable(NULL, crtc);
+
 	ctl = trans_vrr_ctl(old_crtc_state);
 	if (intel_vrr_always_use_vrr_tg(display))
 		ctl |= VRR_CTL_VRR_ENABLE;
-- 
2.48.1

