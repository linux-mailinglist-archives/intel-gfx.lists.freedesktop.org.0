Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 727A4AD5B24
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Jun 2025 17:53:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 110C010E6C2;
	Wed, 11 Jun 2025 15:53:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dCDlJzPN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0BD7C10E6C2;
 Wed, 11 Jun 2025 15:53:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749657189; x=1781193189;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=N4U7aBD4fW2oI2BuX1bA1NxnR6ZVvD4zsq5oPE6ay10=;
 b=dCDlJzPNkrTrI+U1SgZifjYxwyvilzpwJ9seH0XO3sbj+spuKNTnWClr
 JrYGE3DWMQ3TK8t50UM7W/wJLj0+THdU2s2Lx6umHskGksr3HTYHrqLI6
 LyGUJ8b3aCQueQ/n2ROKLuJzHHBaXcU8ZSIND9s+C6AjqkB8+dwn9KiK3
 F7RHNRokda3CAcEu8VkrzezpLwD0PsvioUhVhXJUoQcLKuqFig1cZoFqu
 QFBXioqh0UFNGGDjZAoUL6a7AgFtRnnCyoYMvEC+u8fZiMnwHFFRT4zB5
 sP35W2tLOI6S+zBht1Jay7bSbDjIDP5dMDwhj2H4Bcer0Ec23v1147g24 A==;
X-CSE-ConnectionGUID: p1O9R9IvTxmomorUwWM8pA==
X-CSE-MsgGUID: cKAyK8ekTFOrUBy4iaXGCA==
X-IronPort-AV: E=McAfee;i="6800,10657,11461"; a="62419137"
X-IronPort-AV: E=Sophos;i="6.16,228,1744095600"; d="scan'208";a="62419137"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2025 08:53:09 -0700
X-CSE-ConnectionGUID: HyoS8rG4RSi4MJAKji05xA==
X-CSE-MsgGUID: vAVhngo6QO+M+qCMJ8KmTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,228,1744095600"; d="scan'208";a="152507421"
Received: from cpetruta-mobl1.ger.corp.intel.com (HELO stinkbox)
 ([10.245.244.24])
 by orviesa005.jf.intel.com with SMTP; 11 Jun 2025 08:53:07 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 11 Jun 2025 18:53:05 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 7/9] drm/i915/dmc: Assert DMC is loaded harder
Date: Wed, 11 Jun 2025 18:52:39 +0300
Message-ID: <20250611155241.24191-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250611155241.24191-1-ville.syrjala@linux.intel.com>
References: <20250611155241.24191-1-ville.syrjala@linux.intel.com>
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

Currently we have some asserts to make sure the main DMC has been
loaded. Add similar assers for the pipe DMCs. And we migth as well
just check all the mmio registers the firmware has asked us to
initialize. That also covers the hardcoded SSP/HTP registers we were
checking for the main DMC.

TODO: Maybe always configure DMC_EVT_CTL_ENABLE the way the firmware
      has it set so that we wouldn't need to special case in the assert?

v2: Also assert in intel_dmc_load_program()

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../i915/display/intel_display_power_well.c   |  4 +-
 drivers/gpu/drm/i915/display/intel_dmc.c      | 60 ++++++++++++++-----
 drivers/gpu/drm/i915/display/intel_dmc.h      |  2 +-
 3 files changed, 48 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index cba96f920fd2..0f1848b970a7 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -829,7 +829,7 @@ static void assert_can_enable_dc5(struct intel_display *display)
 
 	assert_display_rpm_held(display);
 
-	assert_dmc_loaded(display);
+	assert_main_dmc_loaded(display);
 }
 
 void gen9_enable_dc5(struct intel_display *display)
@@ -860,7 +860,7 @@ static void assert_can_enable_dc6(struct intel_display *display)
 		       DC_STATE_EN_UPTO_DC6),
 		      "DC6 already programmed to be enabled.\n");
 
-	assert_dmc_loaded(display);
+	assert_main_dmc_loaded(display);
 }
 
 void skl_enable_dc6(struct intel_display *display)
diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 76b88c9bea02..37618797d931 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -606,6 +606,46 @@ static void dmc_load_program(struct intel_display *display, enum intel_dmc_id dm
 	dmc_load_mmio(display, dmc_id);
 }
 
+static void assert_dmc_loaded(struct intel_display *display,
+			      enum intel_dmc_id dmc_id)
+{
+	struct intel_dmc *dmc = display_to_dmc(display);
+	u32 expected, found;
+	int i;
+
+	if (!is_valid_dmc_id(dmc_id) || !has_dmc_id_fw(display, dmc_id))
+		return;
+
+	found = intel_de_read(display, DMC_PROGRAM(dmc->dmc_info[dmc_id].start_mmioaddr, 0));
+	expected = dmc->dmc_info[dmc_id].payload[0];
+
+	drm_WARN(display->drm, found != expected,
+		 "DMC %d program storage start incorrect (expected 0x%x, current 0x%x)\n",
+		 dmc_id, expected, found);
+
+	for (i = 0; i < dmc->dmc_info[dmc_id].mmio_count; i++) {
+		i915_reg_t reg = dmc->dmc_info[dmc_id].mmioaddr[i];
+
+		found = intel_de_read(display, reg);
+		expected = dmc_mmiodata(display, dmc, dmc_id, i);
+
+		/* once set DMC_EVT_CTL_ENABLE can't be cleared :/ */
+		if (is_dmc_evt_ctl_reg(display, dmc_id, reg)) {
+			found &= ~DMC_EVT_CTL_ENABLE;
+			expected &= ~DMC_EVT_CTL_ENABLE;
+		}
+
+		drm_WARN(display->drm, found != expected,
+			 "DMC %d mmio[%d]/0x%x incorrect (expected 0x%x, current 0x%x)\n",
+			 dmc_id, i, i915_mmio_reg_offset(reg), expected, found);
+	}
+}
+
+void assert_main_dmc_loaded(struct intel_display *display)
+{
+	assert_dmc_loaded(display, DMC_FW_MAIN);
+}
+
 static bool need_pipedmc_load_program(struct intel_display *display)
 {
 	/* On TGL/derivatives pipe DMC state is lost when PG1 is disabled */
@@ -635,6 +675,8 @@ void intel_dmc_enable_pipe(struct intel_display *display, enum pipe pipe)
 	else if (need_pipedmc_load_mmio(display, pipe))
 		dmc_load_mmio(display, dmc_id);
 
+	assert_dmc_loaded(display, dmc_id);
+
 	if (DISPLAY_VER(display) >= 20) {
 		intel_de_write(display, PIPEDMC_INTERRUPT(pipe), pipedmc_interrupt_mask(display));
 		intel_de_write(display, PIPEDMC_INTERRUPT_MASK(pipe), ~pipedmc_interrupt_mask(display));
@@ -744,8 +786,10 @@ void intel_dmc_load_program(struct intel_display *display)
 
 	pipedmc_clock_gating_wa(display, true);
 
-	for_each_dmc_id(dmc_id)
+	for_each_dmc_id(dmc_id) {
 		dmc_load_program(display, dmc_id);
+		assert_dmc_loaded(display, dmc_id);
+	}
 
 	power_domains->dc_state = 0;
 
@@ -776,20 +820,6 @@ void intel_dmc_disable_program(struct intel_display *display)
 	pipedmc_clock_gating_wa(display, false);
 }
 
-void assert_dmc_loaded(struct intel_display *display)
-{
-	struct intel_dmc *dmc = display_to_dmc(display);
-
-	drm_WARN_ONCE(display->drm, !dmc, "DMC not initialized\n");
-	drm_WARN_ONCE(display->drm, dmc &&
-		      !intel_de_read(display, DMC_PROGRAM(dmc->dmc_info[DMC_FW_MAIN].start_mmioaddr, 0)),
-		      "DMC program storage start is NULL\n");
-	drm_WARN_ONCE(display->drm, !intel_de_read(display, DMC_SSP_BASE),
-		      "DMC SSP Base Not fine\n");
-	drm_WARN_ONCE(display->drm, !intel_de_read(display, DMC_HTP_SKL),
-		      "DMC HTP Not fine\n");
-}
-
 static bool fw_info_matches_stepping(const struct intel_fw_info *fw_info,
 				     const struct stepping_info *si)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_dmc.h b/drivers/gpu/drm/i915/display/intel_dmc.h
index a98e8deff13a..a3792052078a 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.h
+++ b/drivers/gpu/drm/i915/display/intel_dmc.h
@@ -32,7 +32,7 @@ struct intel_dmc_snapshot *intel_dmc_snapshot_capture(struct intel_display *disp
 void intel_dmc_snapshot_print(const struct intel_dmc_snapshot *snapshot, struct drm_printer *p);
 void intel_dmc_update_dc6_allowed_count(struct intel_display *display, bool start_tracking);
 
-void assert_dmc_loaded(struct intel_display *display);
+void assert_main_dmc_loaded(struct intel_display *display);
 
 void intel_pipedmc_irq_handler(struct intel_display *display, enum pipe pipe);
 
-- 
2.49.0

