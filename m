Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD2BE9BF8D3
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2024 23:04:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5388410E793;
	Wed,  6 Nov 2024 22:04:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lTUBn9JX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4080610E784
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Nov 2024 22:04:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730930654; x=1762466654;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=s65RjshQZxQLpf5/H+9pIxKkNRhHZJPsSX9ov2QZ5Ew=;
 b=lTUBn9JXCf+KQg4l3haiI9cB7v61Fhz9MQvujdUnFGDskzcGx2xk8old
 yEOiG9LNGdiCQA+G76lB7HLTLlG8dtmmIfXhsfeIBOLV381X3BbAZnXA9
 jX5NZGRRyWx7XnB+oc1nocQ5CxC/vFTDQfSCeDUfIgs58WSdzrc5kx3dx
 1YBowsCj84V5nX9kd8g7+DVSLB6/BwRyFiEr93PKqEDKtnoqEO8igteSY
 asbgysThaNC6hjAnK3hf3zgetLEtKlNeU7t6UWAzpVLHLmUOKHYmhfnG5
 l1BUPyK7RTGYQYHufmM2TR0xrUxriZg5QXp6/nSOfxu6WAlKn901RFcjw Q==;
X-CSE-ConnectionGUID: ZpYcZK7aQSGnGQfUgnR31w==
X-CSE-MsgGUID: WV9jKULqR6qQinFwXPMqgw==
X-IronPort-AV: E=McAfee;i="6700,10204,11248"; a="42157319"
X-IronPort-AV: E=Sophos;i="6.11,264,1725346800"; d="scan'208";a="42157319"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 14:04:08 -0800
X-CSE-ConnectionGUID: HpHjtt01SQ+lcx0cnPjx5g==
X-CSE-MsgGUID: tllGkmglTAS97GMh9n/93Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,264,1725346800"; d="scan'208";a="84879552"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 06 Nov 2024 13:59:09 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 06 Nov 2024 23:59:07 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 3/8] drm/i915/pps: Rename intel_pps_delay members
Date: Wed,  6 Nov 2024 23:58:54 +0200
Message-ID: <20241106215859.25446-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241106215859.25446-1-ville.syrjala@linux.intel.com>
References: <20241106215859.25446-1-ville.syrjala@linux.intel.com>
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

Stop using the semi-random eDP spec T1,T3,... names for the
power sequencing delays, and instead call them by their human
readable names. Much easier to keep track what delay goes
where when you don't have to constantly cross reference against
the eDP spec.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c     | 10 +-
 .../drm/i915/display/intel_display_types.h    | 10 +-
 drivers/gpu/drm/i915/display/intel_pps.c      | 92 ++++++++++---------
 3 files changed, 58 insertions(+), 54 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 31398de08e7f..e0e4e9b62d8d 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -1405,11 +1405,11 @@ parse_power_conservation_features(struct intel_display *display,
 static void vbt_edp_to_pps_delays(struct intel_pps_delays *pps,
 				  const struct edp_power_seq *edp_pps)
 {
-	pps->t1_t3 = edp_pps->t1_t3;
-	pps->t8 = edp_pps->t8;
-	pps->t9 = edp_pps->t9;
-	pps->t10 = edp_pps->t10;
-	pps->t11_t12 = edp_pps->t11_t12;
+	pps->power_up = edp_pps->t1_t3;
+	pps->backlight_on = edp_pps->t8;
+	pps->backlight_off = edp_pps->t9;
+	pps->power_down = edp_pps->t10;
+	pps->power_cycle = edp_pps->t11_t12;
 }
 
 static void
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 62cf5d007872..4af40315b410 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -303,11 +303,11 @@ struct intel_panel_bl_funcs {
 
 /* in 100us units */
 struct intel_pps_delays {
-	u16 t1_t3;
-	u16 t8;
-	u16 t9;
-	u16 t10;
-	u16 t11_t12;
+	u16 power_up;      /* eDP: T1+T3 */
+	u16 backlight_on;  /* eDP: T8 */
+	u16 backlight_off; /* eDP: T9 */
+	u16 power_down;    /* eDP: T10 */
+	u16 power_cycle;   /* eDP: T11+T12 */
 };
 
 enum drrs_type {
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index c57b9aca5a31..ed52f84d4cf3 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -676,7 +676,7 @@ static void wait_panel_power_cycle(struct intel_dp *intel_dp)
 		    pps_name(intel_dp));
 
 	/* take the difference of current time and panel power off time
-	 * and then make panel wait for t11_t12 if needed. */
+	 * and then make panel wait for power_cycle if needed. */
 	panel_power_on_time = ktime_get_boottime();
 	panel_power_off_duration = ktime_ms_delta(panel_power_on_time, intel_dp->pps.panel_power_off_time);
 
@@ -1405,10 +1405,10 @@ intel_pps_readout_hw_state(struct intel_dp *intel_dp, struct intel_pps_delays *s
 	pp_off = intel_de_read(display, regs.pp_off);
 
 	/* Pull timing values out of registers */
-	seq->t1_t3 = REG_FIELD_GET(PANEL_POWER_UP_DELAY_MASK, pp_on);
-	seq->t8 = REG_FIELD_GET(PANEL_LIGHT_ON_DELAY_MASK, pp_on);
-	seq->t9 = REG_FIELD_GET(PANEL_LIGHT_OFF_DELAY_MASK, pp_off);
-	seq->t10 = REG_FIELD_GET(PANEL_POWER_DOWN_DELAY_MASK, pp_off);
+	seq->power_up = REG_FIELD_GET(PANEL_POWER_UP_DELAY_MASK, pp_on);
+	seq->backlight_on = REG_FIELD_GET(PANEL_LIGHT_ON_DELAY_MASK, pp_on);
+	seq->backlight_off = REG_FIELD_GET(PANEL_LIGHT_OFF_DELAY_MASK, pp_off);
+	seq->power_down = REG_FIELD_GET(PANEL_POWER_DOWN_DELAY_MASK, pp_off);
 
 	if (i915_mmio_reg_valid(regs.pp_div)) {
 		u32 pp_div;
@@ -1421,7 +1421,7 @@ intel_pps_readout_hw_state(struct intel_dp *intel_dp, struct intel_pps_delays *s
 	}
 
 	/* hardware wants <delay>+1 in 100ms units */
-	seq->t11_t12 = power_cycle_delay ? (power_cycle_delay - 1) * 1000 : 0;
+	seq->power_cycle = power_cycle_delay ? (power_cycle_delay - 1) * 1000 : 0;
 }
 
 static void
@@ -1431,9 +1431,9 @@ intel_pps_dump_state(struct intel_dp *intel_dp, const char *state_name,
 	struct intel_display *display = to_intel_display(intel_dp);
 
 	drm_dbg_kms(display->drm,
-		    "%s t1_t3 %d t8 %d t9 %d t10 %d t11_t12 %d\n",
-		    state_name,
-		    seq->t1_t3, seq->t8, seq->t9, seq->t10, seq->t11_t12);
+		    "%s power_up %d backlight_on %d backlight_off %d power_down %d power_cycle %d\n",
+		    state_name, seq->power_up, seq->backlight_on,
+		    seq->backlight_off, seq->power_down, seq->power_cycle);
 }
 
 static void
@@ -1445,8 +1445,11 @@ intel_pps_verify_state(struct intel_dp *intel_dp)
 
 	intel_pps_readout_hw_state(intel_dp, &hw);
 
-	if (hw.t1_t3 != sw->t1_t3 || hw.t8 != sw->t8 || hw.t9 != sw->t9 ||
-	    hw.t10 != sw->t10 || hw.t11_t12 != sw->t11_t12) {
+	if (hw.power_up != sw->power_up ||
+	    hw.backlight_on != sw->backlight_on ||
+	    hw.backlight_off != sw->backlight_off ||
+	    hw.power_down != sw->power_down ||
+	    hw.power_cycle != sw->power_cycle) {
 		drm_err(display->drm, "PPS state mismatch\n");
 		intel_pps_dump_state(intel_dp, "sw", sw);
 		intel_pps_dump_state(intel_dp, "hw", &hw);
@@ -1455,8 +1458,8 @@ intel_pps_verify_state(struct intel_dp *intel_dp)
 
 static bool pps_delays_valid(struct intel_pps_delays *delays)
 {
-	return delays->t1_t3 || delays->t8 || delays->t9 ||
-		delays->t10 || delays->t11_t12;
+	return delays->power_up || delays->backlight_on || delays->backlight_off ||
+		delays->power_down || delays->power_cycle;
 }
 
 static void pps_init_delays_bios(struct intel_dp *intel_dp,
@@ -1491,10 +1494,10 @@ static void pps_init_delays_vbt(struct intel_dp *intel_dp,
 	 * seems sufficient to avoid this problem.
 	 */
 	if (intel_has_quirk(display, QUIRK_INCREASE_T12_DELAY)) {
-		vbt->t11_t12 = max_t(u16, vbt->t11_t12, 1300 * 10);
+		vbt->power_cycle = max_t(u16, vbt->power_cycle, 1300 * 10);
 		drm_dbg_kms(display->drm,
 			    "Increasing T12 panel delay as per the quirk to %d\n",
-			    vbt->t11_t12);
+			    vbt->power_cycle);
 	}
 
 	intel_pps_dump_state(intel_dp, "vbt", vbt);
@@ -1509,11 +1512,11 @@ static void pps_init_delays_spec(struct intel_dp *intel_dp,
 
 	/* Upper limits from eDP 1.3 spec. Note that we use the clunky units of
 	 * our hw here, which are all in 100usec. */
-	spec->t1_t3 = 210 * 10;
-	spec->t8 = 50 * 10; /* no limit for t8, use t7 instead */
-	spec->t9 = 50 * 10; /* no limit for t9, make it symmetric with t8 */
-	spec->t10 = 500 * 10;
-	spec->t11_t12 = 510 * 10;
+	spec->power_up = 210 * 10; /* T1+T3 */
+	spec->backlight_on = 50 * 10; /* no limit for T8, use T7 instead */
+	spec->backlight_off = 50 * 10; /* no limit for T9, make it symmetric with T8 */
+	spec->power_down = 500 * 10; /* T10 */
+	spec->power_cycle = 510 * 10; /* T11+T12 */
 
 	intel_pps_dump_state(intel_dp, "spec", spec);
 }
@@ -1539,19 +1542,19 @@ static void pps_init_delays(struct intel_dp *intel_dp)
 #define assign_final(field)	final->field = (max(cur.field, vbt.field) == 0 ? \
 				       spec.field : \
 				       max(cur.field, vbt.field))
-	assign_final(t1_t3);
-	assign_final(t8);
-	assign_final(t9);
-	assign_final(t10);
-	assign_final(t11_t12);
+	assign_final(power_up);
+	assign_final(backlight_on);
+	assign_final(backlight_off);
+	assign_final(power_down);
+	assign_final(power_cycle);
 #undef assign_final
 
 #define get_delay(field)	(DIV_ROUND_UP(final->field, 10))
-	intel_dp->pps.panel_power_up_delay = get_delay(t1_t3);
-	intel_dp->pps.backlight_on_delay = get_delay(t8);
-	intel_dp->pps.backlight_off_delay = get_delay(t9);
-	intel_dp->pps.panel_power_down_delay = get_delay(t10);
-	intel_dp->pps.panel_power_cycle_delay = get_delay(t11_t12);
+	intel_dp->pps.panel_power_up_delay = get_delay(power_up);
+	intel_dp->pps.backlight_on_delay = get_delay(backlight_on);
+	intel_dp->pps.backlight_off_delay = get_delay(backlight_off);
+	intel_dp->pps.panel_power_down_delay = get_delay(power_down);
+	intel_dp->pps.panel_power_cycle_delay = get_delay(power_cycle);
 #undef get_delay
 
 	drm_dbg_kms(display->drm,
@@ -1566,19 +1569,20 @@ static void pps_init_delays(struct intel_dp *intel_dp)
 
 	/*
 	 * We override the HW backlight delays to 1 because we do manual waits
-	 * on them. For T8, even BSpec recommends doing it. For T9, if we
-	 * don't do this, we'll end up waiting for the backlight off delay
-	 * twice: once when we do the manual sleep, and once when we disable
-	 * the panel and wait for the PP_STATUS bit to become zero.
+	 * on them. For backlight_on, even BSpec recommends doing it. For
+	 * backlight_off, if we don't do this, we'll end up waiting for the
+	 * backlight off delay twice: once when we do the manual sleep, and
+	 * once when we disable the panel and wait for the PP_STATUS bit to
+	 * become zero.
 	 */
-	final->t8 = 1;
-	final->t9 = 1;
+	final->backlight_on = 1;
+	final->backlight_off = 1;
 
 	/*
-	 * HW has only a 100msec granularity for t11_t12 so round it up
+	 * HW has only a 100msec granularity for power_cycle so round it up
 	 * accordingly.
 	 */
-	final->t11_t12 = roundup(final->t11_t12, 100 * 10);
+	final->power_cycle = roundup(final->power_cycle, 100 * 10);
 }
 
 static void pps_init_registers(struct intel_dp *intel_dp, bool force_disable_vdd)
@@ -1622,10 +1626,10 @@ static void pps_init_registers(struct intel_dp *intel_dp, bool force_disable_vdd
 		intel_de_write(display, regs.pp_ctrl, pp);
 	}
 
-	pp_on = REG_FIELD_PREP(PANEL_POWER_UP_DELAY_MASK, seq->t1_t3) |
-		REG_FIELD_PREP(PANEL_LIGHT_ON_DELAY_MASK, seq->t8);
-	pp_off = REG_FIELD_PREP(PANEL_LIGHT_OFF_DELAY_MASK, seq->t9) |
-		REG_FIELD_PREP(PANEL_POWER_DOWN_DELAY_MASK, seq->t10);
+	pp_on = REG_FIELD_PREP(PANEL_POWER_UP_DELAY_MASK, seq->power_up) |
+		REG_FIELD_PREP(PANEL_LIGHT_ON_DELAY_MASK, seq->backlight_on);
+	pp_off = REG_FIELD_PREP(PANEL_LIGHT_OFF_DELAY_MASK, seq->backlight_off) |
+		REG_FIELD_PREP(PANEL_POWER_DOWN_DELAY_MASK, seq->power_down);
 
 	/* Haswell doesn't have any port selection bits for the panel
 	 * power sequencer any more. */
@@ -1661,11 +1665,11 @@ static void pps_init_registers(struct intel_dp *intel_dp, bool force_disable_vdd
 			       REG_FIELD_PREP(PP_REFERENCE_DIVIDER_MASK,
 					      (100 * div) / 2 - 1) |
 			       REG_FIELD_PREP(PANEL_POWER_CYCLE_DELAY_MASK,
-					      DIV_ROUND_UP(seq->t11_t12, 1000) + 1));
+					      DIV_ROUND_UP(seq->power_cycle, 1000) + 1));
 	else
 		intel_de_rmw(display, regs.pp_ctrl, BXT_POWER_CYCLE_DELAY_MASK,
 			     REG_FIELD_PREP(BXT_POWER_CYCLE_DELAY_MASK,
-					    DIV_ROUND_UP(seq->t11_t12, 1000) + 1));
+					    DIV_ROUND_UP(seq->power_cycle, 1000) + 1));
 
 	drm_dbg_kms(display->drm,
 		    "panel power sequencer register settings: PP_ON %#x, PP_OFF %#x, PP_DIV %#x\n",
-- 
2.45.2

