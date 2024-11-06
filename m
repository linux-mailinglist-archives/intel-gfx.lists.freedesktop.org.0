Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 78CB79BF8D8
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2024 23:04:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 012E210E795;
	Wed,  6 Nov 2024 22:04:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="leW3ULPF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A695310E0BC
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Nov 2024 22:04:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730930655; x=1762466655;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=nG2s8edlRIMjebGn3GAKJHYKslhu9MhAlx5GxeBz784=;
 b=leW3ULPFfk6ixYxxd7/b52zzKExetzq45MRHBMRzFDEj5oyUnm3FI6Pa
 PyW0qb54S8xIek4IVnzw7LUTFlrwO/dOKEdbzN0Grq3ETBVYOxuf2wFXc
 v582nNbrC6fsJ0gcXNjbM32nA2t0ezJhFD0PCQ30Lc3rj8rbv0kMlBJ20
 4wY+C4CmpGGSznKnXx+N8IGdAYR6yft3ZliZC/VcHzO9t0OxRhewDSscC
 ZRDXWPGO2eSJAShOz+s2+RXnvEZ4ZT6D1RQg4e5O9HkxN/c14IhSoZcJ3
 qdS/3hSp24S0K9ZUIZ159eiyAxy37QTly4wNSYfdUIQQwMduEtPUE4yRx w==;
X-CSE-ConnectionGUID: t4gKdDpQSlaPBPkXSzh7Eg==
X-CSE-MsgGUID: R9NqLmtwQeaM1iVYZswRcQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11248"; a="42157316"
X-IronPort-AV: E=Sophos;i="6.11,264,1725346800"; d="scan'208";a="42157316"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 14:04:08 -0800
X-CSE-ConnectionGUID: 9oOYhiTvRAiixri1CPdNGg==
X-CSE-MsgGUID: d99Mzv42QC6dBXcHRoy53g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,264,1725346800"; d="scan'208";a="84879544"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 06 Nov 2024 13:59:04 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 06 Nov 2024 23:59:02 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 1/8] drm/i915/pps: Store the power cycle delay without the +1
Date: Wed,  6 Nov 2024 23:58:52 +0200
Message-ID: <20241106215859.25446-2-ville.syrjala@linux.intel.com>
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

The code initializing the power sequencing delays is a bit
hard to follow. One confusing thing is that we keep doing the
+/-1 adjustment for the hardware register value in several places.
Simplify this a bit by doing the adjustment only when reading or
writing the actual register.

This also matches how the LVDS code does things.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_pps.c | 28 ++++++++++--------------
 1 file changed, 12 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 093fe37a3983..83d65105f32b 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -1390,7 +1390,7 @@ static void
 intel_pps_readout_hw_state(struct intel_dp *intel_dp, struct edp_power_seq *seq)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
-	u32 pp_on, pp_off, pp_ctl;
+	u32 pp_on, pp_off, pp_ctl, power_cycle_delay;
 	struct pps_registers regs;
 
 	intel_pps_get_registers(intel_dp, &regs);
@@ -1415,10 +1415,13 @@ intel_pps_readout_hw_state(struct intel_dp *intel_dp, struct edp_power_seq *seq)
 
 		pp_div = intel_de_read(display, regs.pp_div);
 
-		seq->t11_t12 = REG_FIELD_GET(PANEL_POWER_CYCLE_DELAY_MASK, pp_div) * 1000;
+		power_cycle_delay = REG_FIELD_GET(PANEL_POWER_CYCLE_DELAY_MASK, pp_div);
 	} else {
-		seq->t11_t12 = REG_FIELD_GET(BXT_POWER_CYCLE_DELAY_MASK, pp_ctl) * 1000;
+		power_cycle_delay = REG_FIELD_GET(BXT_POWER_CYCLE_DELAY_MASK, pp_ctl);
 	}
+
+	/* hardware wants <delay>+1 in 100ms units */
+	seq->t11_t12 = power_cycle_delay ? (power_cycle_delay - 1) * 1000 : 0;
 }
 
 static void
@@ -1494,12 +1497,6 @@ static void pps_init_delays_vbt(struct intel_dp *intel_dp,
 			    vbt->t11_t12);
 	}
 
-	/* T11_T12 delay is special and actually in units of 100ms, but zero
-	 * based in the hw (so we need to add 100 ms). But the sw vbt
-	 * table multiplies it with 1000 to make it in units of 100usec,
-	 * too. */
-	vbt->t11_t12 += 100 * 10;
-
 	intel_pps_dump_state(intel_dp, "vbt", vbt);
 }
 
@@ -1516,11 +1513,7 @@ static void pps_init_delays_spec(struct intel_dp *intel_dp,
 	spec->t8 = 50 * 10; /* no limit for t8, use t7 instead */
 	spec->t9 = 50 * 10; /* no limit for t9, make it symmetric with t8 */
 	spec->t10 = 500 * 10;
-	/* This one is special and actually in units of 100ms, but zero
-	 * based in the hw (so we need to add 100 ms). But the sw vbt
-	 * table multiplies it with 1000 to make it in units of 100usec,
-	 * too. */
-	spec->t11_t12 = (510 + 100) * 10;
+	spec->t11_t12 = 510 * 10;
 
 	intel_pps_dump_state(intel_dp, "spec", spec);
 }
@@ -1665,11 +1658,14 @@ static void pps_init_registers(struct intel_dp *intel_dp, bool force_disable_vdd
 	 */
 	if (i915_mmio_reg_valid(regs.pp_div))
 		intel_de_write(display, regs.pp_div,
-			       REG_FIELD_PREP(PP_REFERENCE_DIVIDER_MASK, (100 * div) / 2 - 1) | REG_FIELD_PREP(PANEL_POWER_CYCLE_DELAY_MASK, DIV_ROUND_UP(seq->t11_t12, 1000)));
+			       REG_FIELD_PREP(PP_REFERENCE_DIVIDER_MASK,
+					      (100 * div) / 2 - 1) |
+			       REG_FIELD_PREP(PANEL_POWER_CYCLE_DELAY_MASK,
+					      DIV_ROUND_UP(seq->t11_t12, 1000) + 1));
 	else
 		intel_de_rmw(display, regs.pp_ctrl, BXT_POWER_CYCLE_DELAY_MASK,
 			     REG_FIELD_PREP(BXT_POWER_CYCLE_DELAY_MASK,
-					    DIV_ROUND_UP(seq->t11_t12, 1000)));
+					    DIV_ROUND_UP(seq->t11_t12, 1000) + 1));
 
 	drm_dbg_kms(display->drm,
 		    "panel power sequencer register settings: PP_ON %#x, PP_OFF %#x, PP_DIV %#x\n",
-- 
2.45.2

