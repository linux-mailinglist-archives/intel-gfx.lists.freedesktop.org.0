Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AEAEFC2A148
	for <lists+intel-gfx@lfdr.de>; Mon, 03 Nov 2025 06:30:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5939F10E371;
	Mon,  3 Nov 2025 05:30:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MSV2kJZZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FCF210E371;
 Mon,  3 Nov 2025 05:30:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762147840; x=1793683840;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XmTIZUHeGWGj7h8u1/YsHCHXpSY5kF0NaZ2ssnrMcgc=;
 b=MSV2kJZZMjKV8vyPRpjt9zMzK1bOtSsbmdT1n1QNKB0EIda79TfmIv4b
 5Fd7QNwvB2/Eip1R7oPk/TBmdTdmWOBkFZo1OnNjEz4Tmw7tWKVk2lC4a
 GHmNBEgyDhUVJE2LEMjqf7MbOOlcrEoVb6UjN/NYgKclDE+dTqqy4ZDnI
 4V3XIYJm1X5qyV3ZhaKsv0pFg7syXOvsqeHy3YtxDNTFlIeQ7oOn9Gffn
 r40HZ4yhVW7SfQqTHk+T6Pjk/1EFElxJJI/EYMQgY+fieH3cI+PjLbhNc
 BUp7eo72uPZGSNpsc6kh1JfZvKL0u6RI26nVnSlbgGvLbuQXsYhz1KtiH g==;
X-CSE-ConnectionGUID: XueJJLtxQ/+/Mr2DqDMZAw==
X-CSE-MsgGUID: 1DRZgsDlTzuNCUwqae2xNA==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="64143876"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="64143876"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2025 21:30:40 -0800
X-CSE-ConnectionGUID: c70KW8XBRh+EaW/RkB3Hrw==
X-CSE-MsgGUID: ya3jA0NERVODj+fYkk02qA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,275,1754982000"; d="scan'208";a="186925394"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa008.jf.intel.com with ESMTP; 02 Nov 2025 21:30:38 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, mitulkumar.ajitkumar.golani@intel.com,
 ankit.k.nautiyal@intel.com, uma.shankar@intel.com,
 ville.syrjala@linux.intel.com
Subject: [RESEND, 18/22] drm/i915/vrr: Pause DC Balancing for DSB commits
Date: Mon,  3 Nov 2025 10:59:58 +0530
Message-ID: <20251103053002.3002695-19-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251103053002.3002695-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20251103053002.3002695-1-mitulkumar.ajitkumar.golani@intel.com>
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
 drivers/gpu/drm/i915/display/intel_display.c | 19 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_vrr.c     |  5 +++++
 2 files changed, 24 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index faec325e7652..b88e20418327 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7335,6 +7335,21 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
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
@@ -7396,6 +7411,10 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 
 		intel_vrr_check_push_sent(new_crtc_state->dsb_commit,
 					  new_crtc_state);
+
+		if (new_crtc_state->vrr.dc_balance.enable)
+			intel_pipedmc_dcb_enable(new_crtc_state->dsb_commit, crtc);
+
 		intel_dsb_interrupt(new_crtc_state->dsb_commit);
 	}
 
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 97949ff782aa..eb6643ec5194 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -9,6 +9,7 @@
 #include "intel_de.h"
 #include "intel_display_regs.h"
 #include "intel_display_types.h"
+#include "intel_dmc.h"
 #include "intel_dmc_regs.h"
 #include "intel_dp.h"
 #include "intel_psr.h"
@@ -813,6 +814,9 @@ static void intel_vrr_tg_enable(const struct intel_crtc_state *crtc_state,
 	if (cmrr_enable)
 		vrr_ctl |= VRR_CTL_CMRR_ENABLE;
 
+	if (crtc_state->vrr.dc_balance.enable)
+		intel_pipedmc_dcb_enable(NULL, crtc);
+
 	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder), vrr_ctl);
 }
 
@@ -834,6 +838,7 @@ static void intel_vrr_tg_disable(const struct intel_crtc_state *old_crtc_state)
 	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder), 0);
 
 	if (old_crtc_state->vrr.dc_balance.enable) {
+		intel_pipedmc_dcb_disable(NULL, crtc);
 		intel_de_write(display, PIPEDMC_DCB_VMIN(pipe), 0);
 		intel_de_write(display, PIPEDMC_DCB_VMAX(pipe), 0);
 		intel_de_write(display, PIPEDMC_DCB_MAX_INCREASE(pipe), 0);
-- 
2.48.1

