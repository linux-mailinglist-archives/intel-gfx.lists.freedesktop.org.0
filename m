Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19AE4A9E824
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Apr 2025 08:23:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92F6810E38D;
	Mon, 28 Apr 2025 06:23:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HBXZ558/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96E3510E3AF;
 Mon, 28 Apr 2025 06:23:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745821403; x=1777357403;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hqqKKwOjjTZU/Iflye53sI0g/gEQDNMAikGVXa1u3HI=;
 b=HBXZ558/qg02YMk2GcLdY/cMNemMk4hSxsW/e352tols6XtriO71Erf4
 lfM/dwY79C+6zrRu05dTm/LQ3vJAglUZpB9JVZdLHXbZ/x6gQOEpSpOA3
 0MKb4hngU9ZjxppICN5TuwV9rQXonvXO1VXcE9pJB8YBKuXlLHi7ES+ES
 5MQv17bs2HqyYpIkif3zmmq8HoUzAmd1/BEqoHg65tf1hhZwJPCKXwN5m
 zPy+VLMUopg7duuetm/jz3r64N95pLPUeGzClUcqaM9GQpxraKmIgPRw2
 NaZ+eLMUzUAivcUcjrgsJg/h2ugWfT6KBjZ89kqCdQoiJzMhzhWa09DQQ A==;
X-CSE-ConnectionGUID: rO39xTQ1RiCayUXg/forGA==
X-CSE-MsgGUID: kOydncYuSfax3IwBa+xxGQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11416"; a="51204195"
X-IronPort-AV: E=Sophos;i="6.15,245,1739865600"; d="scan'208";a="51204195"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2025 23:23:23 -0700
X-CSE-ConnectionGUID: wCokRzp7SAyJHI0ZlI0iww==
X-CSE-MsgGUID: dAitBWgRSH+aT+dCcnq3/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,245,1739865600"; d="scan'208";a="138231250"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa005.fm.intel.com with ESMTP; 27 Apr 2025 23:23:22 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	ville.syrjala@intel.com
Subject: [PATCH v3 14/15] drm/i915/vrr: Pause DC balancing for DSB commits
Date: Mon, 28 Apr 2025 11:50:57 +0530
Message-ID: <20250428062058.2811655-15-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250428062058.2811655-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20250428062058.2811655-1-mitulkumar.ajitkumar.golani@intel.com>
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

Pause the DMC DC balancing for the remainder of the
commit so that vmin/vmax won't change after we've baked
them into the DSB vblank evasion commands.

--v2:
- Remove typo of readding sending PUSH. (Ankit)
- Separate vrr enable structuring from Pause DSB patch. (Ankit)

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 13 +++++++++++++
 drivers/gpu/drm/i915/display/intel_vrr.c     |  5 +++++
 2 files changed, 18 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 1cd9c65da576..e6d7a0a145d2 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7206,6 +7206,17 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 	}
 
 	if (new_crtc_state->use_dsb) {
+		/*
+		 * Pause the DMC DC balancing for the remainder of the
+		 * commit so that vmin/vmax won't change after we've baked
+		 * them into the DSB vblank evasion commands.
+		 *
+		 * FIXME maybe need a small delay here to make sure DMC has
+		 * finished updating the values? Or we need a better DMC<->driver
+		 * protocol that gives is real guarantees about that...
+		 */
+		intel_pipedmc_dcb_disable(NULL, crtc);
+
 		if (intel_crtc_needs_color_update(new_crtc_state))
 			intel_color_commit_noarm(new_crtc_state->dsb_commit,
 						 new_crtc_state);
@@ -7242,6 +7253,8 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 			intel_vrr_send_push(new_crtc_state->dsb_commit, new_crtc_state);
 			intel_dsb_wait_vblank_delay(state, new_crtc_state->dsb_commit);
 			intel_vrr_check_push_sent(new_crtc_state->dsb_commit, new_crtc_state);
+			if (new_crtc_state->vrr.dc_balance.enable)
+				intel_pipedmc_dcb_enable(new_crtc_state->dsb_commit, crtc);
 			intel_dsb_interrupt(new_crtc_state->dsb_commit);
 		}
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 86b858222b6e..0f0e21cb05a9 100644
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
 
@@ -639,12 +641,14 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
 			       crtc_state->vrr.dc_balance.slope);
 		intel_de_write(display, PIPEDMC_DCB_VBLANK(display, cpu_transcoder),
 			       crtc_state->vrr.dc_balance.vblank_target);
+		intel_pipedmc_dcb_enable(NULL, crtc);
 	}
 }
 
 void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
 {
 	struct intel_display *display = to_intel_display(old_crtc_state);
+	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
 	enum transcoder cpu_transcoder = old_crtc_state->cpu_transcoder;
 	u32 ctl;
 
@@ -652,6 +656,7 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
 		return;
 
 	if (HAS_VRR_DC_BALANCE(display) && old_crtc_state->vrr.dc_balance.enable) {
+		intel_pipedmc_dcb_disable(NULL, crtc);
 		intel_de_write(display, TRANS_ADAPTIVE_SYNC_DCB_CTL(display, cpu_transcoder), 0);
 		intel_de_write(display, PIPEDMC_DCB_VMIN(display, cpu_transcoder), 0);
 		intel_de_write(display, PIPEDMC_DCB_VMAX(display, cpu_transcoder), 0);
-- 
2.48.1

