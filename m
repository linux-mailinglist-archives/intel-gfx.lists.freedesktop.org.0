Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 288FBCD8EAC
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Dec 2025 11:45:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFF7110E271;
	Tue, 23 Dec 2025 10:45:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QiCZa9BS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E60F10E271;
 Tue, 23 Dec 2025 10:45:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766486748; x=1798022748;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=B4Yw8bLrCh49zzBFLe76HUDwP4mG5uO+IuHmj4rgvHg=;
 b=QiCZa9BSAtNWKZrjiF0GwSnDKoE3MGa7gB2lilCJCRM815OtNzMzKwL7
 ZxvGCnwv+azaRZKfNAEddgDh0iXTLyXc/5q3po4k8Jeca5vhh8vuAGkzy
 9TFC3dIXOJyDNMLqYysehnkBeQguHALfMFU8pLye3uuMG/uHrihPdcRgU
 Wmow612WBfs+zNYdoBG1KXITVsPDg+bjorMd7X8kX41gbFtLUFzW+Spcc
 N/S0I4OjAqejpMpwJdoUYstnNZvoiGvhzYvb6frlBz7Ojkz9Zfd/gJNL5
 xOpBNViiBnvRicZZO2NZg3v1tsWvPYBF7gwg/IZA1+DGydwRtMWjc6tIp A==;
X-CSE-ConnectionGUID: FkFWBdLTSdyoJziEnmnucQ==
X-CSE-MsgGUID: ZnSBBBtjQOyKidn8IvFlyg==
X-IronPort-AV: E=McAfee;i="6800,10657,11650"; a="68090009"
X-IronPort-AV: E=Sophos;i="6.21,170,1763452800"; d="scan'208";a="68090009"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2025 02:45:48 -0800
X-CSE-ConnectionGUID: HcFiT3dRQ+SLKxVpnjQbvg==
X-CSE-MsgGUID: YM1HsUtdR3uN5L9TPa2rug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,170,1763452800"; d="scan'208";a="199734576"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa007.jf.intel.com with ESMTP; 23 Dec 2025 02:45:44 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, mitulkumar.ajitkumar.golani@intel.com,
 ankit.k.nautiyal@intel.com, ville.syrjala@linux.intel.com,
 uma.shankar@intel.com, jani.nikula@intel.com
Subject: [PATCH v11 16/18] drm/i915/vrr: Pause DC Balancing for DSB commits
Date: Tue, 23 Dec 2025 16:15:38 +0530
Message-ID: <20251223104542.2688548-17-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251223104542.2688548-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20251223104542.2688548-1-mitulkumar.ajitkumar.golani@intel.com>
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

--v4:
- Move events to separate function.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Reviewed-by: Uma Shankar <uma.shankar@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 19 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_vrr.c     |  3 +++
 2 files changed, 22 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 70ae5582ab0b..5b03b0cb5332 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7330,6 +7330,21 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 		if (new_crtc_state->use_flipq)
 			intel_flipq_wait_dmc_halt(new_crtc_state->dsb_commit, crtc);
 
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
@@ -7383,6 +7398,10 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 		intel_dsb_wait_for_delayed_vblank(state, new_crtc_state->dsb_commit);
 		intel_vrr_check_push_sent(new_crtc_state->dsb_commit,
 					  new_crtc_state);
+
+		if (new_crtc_state->vrr.dc_balance.enable)
+			intel_pipedmc_dcb_enable(new_crtc_state->dsb_commit, crtc);
+
 		intel_dsb_interrupt(new_crtc_state->dsb_commit);
 	}
 
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index a4a198a28519..ac612cf08d98 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -10,6 +10,7 @@
 #include "intel_de.h"
 #include "intel_display_regs.h"
 #include "intel_display_types.h"
+#include "intel_dmc.h"
 #include "intel_dmc_regs.h"
 #include "intel_dp.h"
 #include "intel_psr.h"
@@ -824,6 +825,7 @@ intel_vrr_enable_dc_balancing(const struct intel_crtc_state *crtc_state)
 		       crtc_state->vrr.dc_balance.vblank_target);
 	intel_de_write(display, TRANS_ADAPTIVE_SYNC_DCB_CTL(cpu_transcoder),
 		       ADAPTIVE_SYNC_COUNTER_EN);
+	intel_pipedmc_dcb_enable(NULL, crtc);
 }
 
 static void
@@ -837,6 +839,7 @@ intel_vrr_disable_dc_balancing(const struct intel_crtc_state *old_crtc_state)
 	if (!old_crtc_state->vrr.dc_balance.enable)
 		return;
 
+	intel_pipedmc_dcb_disable(NULL, crtc);
 	intel_de_write(display, TRANS_ADAPTIVE_SYNC_DCB_CTL(cpu_transcoder), 0);
 	intel_de_write(display, PIPEDMC_DCB_VMIN(pipe), 0);
 	intel_de_write(display, PIPEDMC_DCB_VMAX(pipe), 0);
-- 
2.48.1

