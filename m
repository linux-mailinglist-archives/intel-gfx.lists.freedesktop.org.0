Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E6C06B985DF
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Sep 2025 08:16:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7994210E6A1;
	Wed, 24 Sep 2025 06:16:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Yh3GbTGN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C2D110E69E;
 Wed, 24 Sep 2025 06:16:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758694566; x=1790230566;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=e23ndB+65Sf1IYBbv7iCaUVm7P1ldqGa8W2u31mzC08=;
 b=Yh3GbTGN5PgSeDk59OGkwFZtHSF4Do7mdpiCkM1hEhw+8+s6fM0TFhbA
 NKZSXi65JLQzO4Lf1S93e7d3lET4SXFhs1e/cJsNh+tBtXGf/iGrGZdA8
 +0FlBGSIPF4MGuj4UAqSKn7g95swv6SVhRX2XF3D2DevlQImbF9JELOMf
 T7RVpndy4IIugtYBm7HnB7jEjKj1EtcrxOVG5C5NgCtDmTFmsiRPaTp4c
 UQkvizYja3Fn/ONElIoM3ZRXZv3elMaSJ4ciH7//jNzrtnjXlWTl1Gviz
 +2wIrscZceicNyOIRm4XPMMIiaVxZe8EzHQZ/l+MiEQ88UQhT8+q/lUNQ Q==;
X-CSE-ConnectionGUID: cFBRHsNKQpib9FyUnRQGeQ==
X-CSE-MsgGUID: mxYg5RdXQpOORiIbNbVsGg==
X-IronPort-AV: E=McAfee;i="6800,10657,11561"; a="63610271"
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="63610271"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 23:16:06 -0700
X-CSE-ConnectionGUID: mT73pY81SiidFFEEXvtryw==
X-CSE-MsgGUID: TKiaLrd3S92Uj9PswUX6hQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="176894814"
Received: from rvuia-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.245.144])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 23:16:05 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH v2 06/20] drm/i915/cdclk: Extract dg2_power_well_count()
Date: Wed, 24 Sep 2025 09:16:02 +0300
Message-ID: <20250924061602.2837-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20250923171943.7319-7-ville.syrjala@linux.intel.com>
References: <20250923171943.7319-7-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Extract the code to determine the DG2 pipe power well count
into a small helper. I'll have other uses for this later.

TODO: need to move this power well stuff out from the cdclk code...

v2: Don't lose the early return from intel_cdclk_pcode_pre_notify()
    (kernel test robot)

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 33 +++++++++++++---------
 1 file changed, 19 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 05d9f488895e..f190cfb85a34 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -2591,6 +2591,12 @@ static void intel_set_cdclk(struct intel_display *display,
 	}
 }
 
+static bool dg2_power_well_count(struct intel_display *display,
+				 const struct intel_cdclk_state *cdclk_state)
+{
+	return display->platform.dg2 ? hweight8(cdclk_state->active_pipes) : 0;
+}
+
 static void intel_cdclk_pcode_pre_notify(struct intel_atomic_state *state)
 {
 	struct intel_display *display = to_intel_display(state);
@@ -2603,16 +2609,16 @@ static void intel_cdclk_pcode_pre_notify(struct intel_atomic_state *state)
 
 	if (!intel_cdclk_changed(&old_cdclk_state->actual,
 				 &new_cdclk_state->actual) &&
-				 new_cdclk_state->active_pipes ==
-				 old_cdclk_state->active_pipes)
+	    dg2_power_well_count(display, old_cdclk_state) ==
+	    dg2_power_well_count(display, old_cdclk_state))
 		return;
 
 	/* According to "Sequence Before Frequency Change", voltage level set to 0x3 */
 	voltage_level = DISPLAY_TO_PCODE_VOLTAGE_MAX;
 
 	change_cdclk = new_cdclk_state->actual.cdclk != old_cdclk_state->actual.cdclk;
-	update_pipe_count = hweight8(new_cdclk_state->active_pipes) >
-			    hweight8(old_cdclk_state->active_pipes);
+	update_pipe_count = dg2_power_well_count(display, new_cdclk_state) >
+		dg2_power_well_count(display, old_cdclk_state);
 
 	/*
 	 * According to "Sequence Before Frequency Change",
@@ -2630,7 +2636,7 @@ static void intel_cdclk_pcode_pre_notify(struct intel_atomic_state *state)
 	 * no action if it is decreasing, before the change
 	 */
 	if (update_pipe_count)
-		num_active_pipes = hweight8(new_cdclk_state->active_pipes);
+		num_active_pipes = dg2_power_well_count(display, new_cdclk_state);
 
 	intel_pcode_notify(display, voltage_level, num_active_pipes, cdclk,
 			   change_cdclk, update_pipe_count);
@@ -2650,8 +2656,8 @@ static void intel_cdclk_pcode_post_notify(struct intel_atomic_state *state)
 	voltage_level = new_cdclk_state->actual.voltage_level;
 
 	update_cdclk = new_cdclk_state->actual.cdclk != old_cdclk_state->actual.cdclk;
-	update_pipe_count = hweight8(new_cdclk_state->active_pipes) <
-			    hweight8(old_cdclk_state->active_pipes);
+	update_pipe_count = dg2_power_well_count(display, new_cdclk_state) <
+		dg2_power_well_count(display, old_cdclk_state);
 
 	/*
 	 * According to "Sequence After Frequency Change",
@@ -2667,7 +2673,7 @@ static void intel_cdclk_pcode_post_notify(struct intel_atomic_state *state)
 	 * no action if it is increasing, after the change
 	 */
 	if (update_pipe_count)
-		num_active_pipes = hweight8(new_cdclk_state->active_pipes);
+		num_active_pipes = dg2_power_well_count(display, new_cdclk_state);
 
 	intel_pcode_notify(display, voltage_level, num_active_pipes, cdclk,
 			   update_cdclk, update_pipe_count);
@@ -3248,15 +3254,14 @@ static bool intel_cdclk_need_serialize(struct intel_display *display,
 				       const struct intel_cdclk_state *old_cdclk_state,
 				       const struct intel_cdclk_state *new_cdclk_state)
 {
-	bool power_well_cnt_changed = hweight8(old_cdclk_state->active_pipes) !=
-				      hweight8(new_cdclk_state->active_pipes);
-	bool cdclk_changed = intel_cdclk_changed(&old_cdclk_state->actual,
-						 &new_cdclk_state->actual);
 	/*
-	 * We need to poke hw for gen >= 12, because we notify PCode if
+	 * We need to poke hw for DG2, because we notify PCode if
 	 * pipe power well count changes.
 	 */
-	return cdclk_changed || (display->platform.dg2 && power_well_cnt_changed);
+	return intel_cdclk_changed(&old_cdclk_state->actual,
+				   &new_cdclk_state->actual) ||
+		dg2_power_well_count(display, old_cdclk_state) !=
+		dg2_power_well_count(display, new_cdclk_state);
 }
 
 int intel_modeset_calc_cdclk(struct intel_atomic_state *state)
-- 
2.49.1

