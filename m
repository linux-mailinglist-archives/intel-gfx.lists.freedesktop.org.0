Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 794FBACCDAC
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Jun 2025 21:37:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 193DB10E663;
	Tue,  3 Jun 2025 19:37:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AAhTQGkk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9317010E664;
 Tue,  3 Jun 2025 19:37:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748979446; x=1780515446;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vbBPw5iuPU9OZa2c+n43ckcnvvwb5xiGQT4h5h6m0RU=;
 b=AAhTQGkk+vGK72cKGw4sOPCniNUpim9PvhThDkW1GIqH8K3ZxGJJqHFV
 2h9a7Sp8GrR+L5e6JnYNxxmcUJ8k7BiNeuIS8Hz0QnKDyiFfqEMgVu9De
 utUIQmyBo9YXoKLLBZgB2fcnEDhPnr9GLPzWobt/w5GXU8+s0W+rFDmV+
 AZPc4Y7IRM+yxpwd/sFWy4y31O9EImIqS3GRLQJduGK7+ayuNdkjiXwx+
 xbYpzUlr2tZ+Z5rtmTWva+JdTEJapWmikw5fIqFdYPN1GuKYtGHKCIh/C
 aaT4FylGxapiy/KttBhUeR00vdSJUWPmsUbxsO0HaqRazgoQlhKT2SWL7 A==;
X-CSE-ConnectionGUID: dKy9ny1gSueDW8vWZv6Zvw==
X-CSE-MsgGUID: +vFYV3qLQcuqJh96UknTeA==
X-IronPort-AV: E=McAfee;i="6700,10204,11453"; a="50276049"
X-IronPort-AV: E=Sophos;i="6.16,207,1744095600"; d="scan'208";a="50276049"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2025 12:37:25 -0700
X-CSE-ConnectionGUID: +zBYoMenTke31ixfe6TOiw==
X-CSE-MsgGUID: aHEmTNyHQnC3Tqs2lJTitw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,207,1744095600"; d="scan'208";a="144844815"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa006.jf.intel.com with ESMTP; 03 Jun 2025 12:37:23 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, ankit.k.nautiyal@intel.com,
 ville.syrjala@intel.com, jani.nikula@intel.com
Subject: [PATCH v6 14/17] drm/i915/vrr: Pause DC Balancing for DSB commits
Date: Wed,  4 Jun 2025 01:05:19 +0530
Message-ID: <20250603193522.2567092-15-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250603193522.2567092-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20250603193522.2567092-1-mitulkumar.ajitkumar.golani@intel.com>
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
 drivers/gpu/drm/i915/display/intel_vrr.c     |  7 +++++++
 2 files changed, 24 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index fd869b425f3a..d914bb43e8b6 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7222,6 +7222,21 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
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
@@ -7267,6 +7282,8 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 		intel_dsb_wait_vblank_delay(state, new_crtc_state->dsb_commit);
 		intel_vrr_check_push_sent(new_crtc_state->dsb_commit,
 					  new_crtc_state);
+		if (new_crtc_state->vrr.dc_balance.enable)
+			intel_pipedmc_dcb_enable(new_crtc_state->dsb_commit, crtc);
 		intel_dsb_interrupt(new_crtc_state->dsb_commit);
 	}
 
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 4ed517839567..c14bf75a18af 100644
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
@@ -669,6 +670,9 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
 		ctl |= VRR_CTL_CMRR_ENABLE;
 
 	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder), ctl);
+
+	if (crtc_state->vrr.dc_balance.enable)
+		intel_pipedmc_dcb_enable(NULL, crtc);
 }
 
 void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
@@ -682,6 +686,9 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
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

