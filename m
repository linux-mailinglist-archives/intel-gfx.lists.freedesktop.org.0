Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B743C8D7C9
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Nov 2025 10:16:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CAC610E7DF;
	Thu, 27 Nov 2025 09:16:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="E8VzP34t";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5DCF10E7D2;
 Thu, 27 Nov 2025 09:16:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764234983; x=1795770983;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cEBtbkSaJyMqD+ENVVvzJBlwJICyBDMlwGytffFj7F4=;
 b=E8VzP34t48elThkQ+H4fAO65j5uhDBdW4sl1mJ42+FWNAgvL/TahhZ9c
 eJhynwCoyVZIgU5GY/apQ07Tkjes1XN/JqyVYNz8TSdzcNdBeilfNKcaN
 SbYeM4gnDCkOmhvWF/2r6MvG4i6xfs9suPTnw2ay7n6GaNOGdDqkZscCU
 uSgPjJPvTo4kpFfhllmNB6S0/Uy0bN4s8K+VT6K34YibV0b+v9k2ZvU8B
 7EWiIuqXZAEAQ/UP8RRZLgb8O45J+vXBhEBJqjp1Sik5ar45YVaNQswfA
 PfboqOq0xePXPN29p+M8kcZI07of873MOhEmMUN1Y8lHloLeXhKM2n3Xt w==;
X-CSE-ConnectionGUID: hseH7p2NSoSh2iRv1n1tDw==
X-CSE-MsgGUID: SAHt6pOdQKWss/LaE47CZg==
X-IronPort-AV: E=McAfee;i="6800,10657,11625"; a="77642366"
X-IronPort-AV: E=Sophos;i="6.20,230,1758610800"; d="scan'208";a="77642366"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 01:16:23 -0800
X-CSE-ConnectionGUID: DbTNMlpwR8KT6MvVIh55lg==
X-CSE-MsgGUID: NFbPFzejSo6ab+t9O8Tk8w==
X-ExtLoop1: 1
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa003.fm.intel.com with ESMTP; 27 Nov 2025 01:16:22 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, mitulkumar.ajitkumar.golani@intel.com,
 ankit.k.nautiyal@intel.com, ville.syrjala@linux.intel.com
Subject: [PATCH v9 15/17] drm/i915/vrr: Pause DC Balancing for DSB commits
Date: Thu, 27 Nov 2025 14:46:12 +0530
Message-ID: <20251127091614.648791-16-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251127091614.648791-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20251127091614.648791-1-mitulkumar.ajitkumar.golani@intel.com>
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
---
 drivers/gpu/drm/i915/display/intel_display.c | 19 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_vrr.c     |  3 +++
 2 files changed, 22 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 1269f841d48b..63cf337e1086 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7326,6 +7326,21 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
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
@@ -7379,6 +7394,10 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
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
index e5cff3892cb1..286ffa35107b 100644
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
@@ -810,6 +811,7 @@ intel_vrr_enable_dc_balancing(const struct intel_crtc_state *crtc_state)
 		       crtc_state->vrr.dc_balance.vblank_target);
 	intel_de_write(display, TRANS_ADAPTIVE_SYNC_DCB_CTL(cpu_transcoder),
 		       ADAPTIVE_SYNC_COUNTER_EN);
+	intel_pipedmc_dcb_enable(NULL, crtc);
 }
 
 static void
@@ -823,6 +825,7 @@ intel_vrr_disable_dc_balancing(const struct intel_crtc_state *old_crtc_state)
 	if (!old_crtc_state->vrr.dc_balance.enable)
 		return;
 
+	intel_pipedmc_dcb_disable(NULL, crtc);
 	intel_de_write(display, TRANS_ADAPTIVE_SYNC_DCB_CTL(cpu_transcoder), 0);
 	intel_de_write(display, PIPEDMC_DCB_VMIN(pipe), 0);
 	intel_de_write(display, PIPEDMC_DCB_VMAX(pipe), 0);
-- 
2.48.1

