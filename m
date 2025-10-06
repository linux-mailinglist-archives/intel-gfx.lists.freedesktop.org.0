Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB2ACBBD0CC
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Oct 2025 06:42:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4213F10E3BD;
	Mon,  6 Oct 2025 04:42:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kiudZ3lt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC27D10E3BD;
 Mon,  6 Oct 2025 04:42:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759725748; x=1791261748;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PIyyJQMFVffL4rvuC7SJluKEMz5l6p1mAI5as0lGQLw=;
 b=kiudZ3ltscCx4JMrzz+E/xRAjTaB9b/NnjrlncVjIcY8StNwX32Hcl4P
 Njn2/588sHAjLNVjvWStdrVk3ERu8D3lGxumLGdAr4GH+b/ADAZMn7KhF
 /rOWL4U5M6lG5ZarxNMue8DrN3JDsElFFVzafDwcZO6NLf0F3w8QlWKCU
 FedX8HUe9q/UDu8xlWCmlX5cOm62hO9DXE5RuYKlvJRdjH4dWJomDhshO
 0+5+B6r50Wi4T2pp7PV8OGEePHDGqc0Cv4QDW3pmdhxa29pku7Fx/Ya2I
 w/SoPWPI6U4DXmxwomn76un6bW9x9gOixuu5c+8Ofj8gDSzCjSP88YCVz w==;
X-CSE-ConnectionGUID: xbun32izQjGNXO6GUhL5DQ==
X-CSE-MsgGUID: Cu49VcYwSy2SNaARonqn0g==
X-IronPort-AV: E=McAfee;i="6800,10657,11573"; a="61996427"
X-IronPort-AV: E=Sophos;i="6.18,319,1751266800"; d="scan'208";a="61996427"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2025 21:42:27 -0700
X-CSE-ConnectionGUID: 1fnuoSYLQTm2ui11emt1TQ==
X-CSE-MsgGUID: v1DXbILuR7uqUtkh2NCA3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,319,1751266800"; d="scan'208";a="179063030"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2025 21:42:27 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com
Subject: [PATCH 13/16] drm/i915/display: Add vblank_start adjustment logic for
 always-on VRR TG
Date: Mon,  6 Oct 2025 09:58:49 +0530
Message-ID: <20251006042852.263249-14-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20251006042852.263249-1-ankit.k.nautiyal@intel.com>
References: <20251006042852.263249-1-ankit.k.nautiyal@intel.com>
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

As we move towards using a shorter, optimized guardband, we need to adjust
how the delayed vblank start is computed.

Introduce intel_crtc_compute_vrr_guardband() to handle guardband
computation and apply vblank_start adjustment for platforms that always use
the VRR timing generator.

This function wraps the existing intel_vrr_compute_guardband() and adjusts
crtc_vblank_start using (vblank_length - guardband) only when
intel_vrr_always_use_vrr_tg() is true. Since the guardband is not yet
optimized, the adjustment currently evaluates to zero, preserving existing
behavior.

This paves way for guardband optimization, by handling the movement of
the crtc_vblank_start for platforms that have VRR TG always active.

Also update allow_vblank_delay_fastset() to permit vblank delay adjustments
during fastboot when VRR TG is always active, even without inherited state.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 33 ++++++++++++++++++--
 1 file changed, 30 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index b2d4e24fd7c6..1964e41b5704 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2403,6 +2403,27 @@ static int intel_crtc_compute_set_context_latency(struct intel_atomic_state *sta
 	return 0;
 }
 
+static void intel_crtc_compute_vrr_guardband(struct intel_atomic_state *state,
+					     struct intel_crtc *crtc)
+{
+	struct intel_display *display = to_intel_display(state);
+	struct intel_crtc_state *crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
+	struct drm_display_mode *adjusted_mode =
+		&crtc_state->hw.adjusted_mode;
+
+	intel_vrr_compute_guardband(crtc_state);
+
+	if (intel_vrr_always_use_vrr_tg(display)) {
+		int vblank_length = adjusted_mode->crtc_vtotal -
+				    (crtc_state->set_context_latency +
+				     adjusted_mode->crtc_vdisplay);
+
+		adjusted_mode->crtc_vblank_start +=
+			vblank_length - crtc_state->vrr.guardband;
+	}
+}
+
 static int intel_crtc_compute_config(struct intel_atomic_state *state,
 				     struct intel_crtc *crtc)
 {
@@ -2414,7 +2435,7 @@ static int intel_crtc_compute_config(struct intel_atomic_state *state,
 	if (ret)
 		return ret;
 
-	intel_vrr_compute_guardband(crtc_state);
+	intel_crtc_compute_vrr_guardband(state, crtc);
 
 	ret = intel_dpll_crtc_compute_clock(state, crtc);
 	if (ret)
@@ -5105,9 +5126,15 @@ static bool allow_vblank_delay_fastset(const struct intel_crtc_state *old_crtc_s
 	 * Allow fastboot to fix up vblank delay (handled via LRR
 	 * codepaths), a bit dodgy as the registers aren't
 	 * double buffered but seems to be working more or less...
+	 *
+	 * Also allow this when the VRR timing generator is always on,
+	 * which implies optimized guardband is used. In such cases,
+	 * vblank delay may vary even without inherited state, but it's
+	 * still safe as VRR guardband is still same.
 	 */
-	return HAS_LRR(display) && old_crtc_state->inherited &&
-		!intel_crtc_has_type(old_crtc_state, INTEL_OUTPUT_DSI);
+	return HAS_LRR(display) &&
+	       (old_crtc_state->inherited || intel_vrr_always_use_vrr_tg(display)) &&
+	       !intel_crtc_has_type(old_crtc_state, INTEL_OUTPUT_DSI);
 }
 
 bool
-- 
2.45.2

