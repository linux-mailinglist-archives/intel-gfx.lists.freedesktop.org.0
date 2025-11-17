Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B85E5C62715
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Nov 2025 06:45:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8C9910E2E1;
	Mon, 17 Nov 2025 05:45:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="d9prxc4k";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B670410E2DA;
 Mon, 17 Nov 2025 05:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763358300; x=1794894300;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=czaCpib8vaHy4yIjRqMTUrtorkdtz7AOYE5G/rcHNeE=;
 b=d9prxc4kqqIxb2AR3E5QxVD5Vky5tn3ajyZlvj1giiqr/W27mMY38MiR
 I+wZei/NEoFbiV/sSMz8qvaHUzXhIQv7E7NOzQwOE58ClxApIJDH7MDQH
 7aGxFTE4Yzb4JC3zFWRtwh8cRYBCs+ne7qHQmg+oyEsbjcvEMC85HdX44
 AMBeEWJRPLGxtVWNXBWo/bcUZBj8FFZz0ZGCsXj0sUV7fgMaKU5KsKLAG
 hFxarNq04b0NYkHXg1V+Zno5JmiaGByQE8ZySH7l9hMFQhJLClaYxPTmn
 5NY8IvSDn+qC8qceqbi3S58+qr0+DSg4jIVgKZzA1Zj5gDWnPGEBNV2lf w==;
X-CSE-ConnectionGUID: r96Ha2N8QOa/0xSechWETw==
X-CSE-MsgGUID: nJQ5M6XeTJeSqvpDMDclYw==
X-IronPort-AV: E=McAfee;i="6800,10657,11615"; a="65446071"
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; d="scan'208";a="65446071"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2025 21:44:59 -0800
X-CSE-ConnectionGUID: rehpNQ9TQ9WX7ZLE52lw+g==
X-CSE-MsgGUID: f6DNxGliQieuQg9dzOa/TQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; d="scan'208";a="190016407"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa007.fm.intel.com with ESMTP; 16 Nov 2025 21:44:57 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, mitulkumar.ajitkumar.golani@intel.com,
 ankit.k.nautiyal@intel.com, ville.syrjala@linux.intel.com
Subject: [PATCH v8 15/18] drm/i915/vrr: Pause DC Balancing for DSB commits
Date: Mon, 17 Nov 2025 11:14:39 +0530
Message-ID: <20251117054442.4047665-16-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251117054442.4047665-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20251117054442.4047665-1-mitulkumar.ajitkumar.golani@intel.com>
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
index e7fda3b2944c..d1c9356ce48e 100644
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
@@ -7384,6 +7399,10 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
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
index 315d0e4ef43d..a23cb90b6b7e 100644
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
@@ -836,6 +837,7 @@ intel_vrr_enable_dc_balancing(const struct intel_crtc_state *crtc_state)
 		       crtc_state->vrr.dc_balance.vblank_target);
 	intel_de_write(display, TRANS_ADAPTIVE_SYNC_DCB_CTL(cpu_transcoder),
 		       ADAPTIVE_SYNC_COUNTER_EN);
+	intel_pipedmc_dcb_enable(NULL, crtc);
 }
 
 static void
@@ -849,6 +851,7 @@ intel_vrr_disable_dc_balancing(const struct intel_crtc_state *old_crtc_state)
 	if (!old_crtc_state->vrr.dc_balance.enable)
 		return;
 
+	intel_pipedmc_dcb_disable(NULL, crtc);
 	intel_de_write(display, TRANS_ADAPTIVE_SYNC_DCB_CTL(cpu_transcoder), 0);
 	intel_de_write(display, PIPEDMC_DCB_VMIN(pipe), 0);
 	intel_de_write(display, PIPEDMC_DCB_VMAX(pipe), 0);
-- 
2.48.1

