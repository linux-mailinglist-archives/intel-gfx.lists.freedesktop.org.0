Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 154CEAD20A1
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Jun 2025 16:11:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3E1710E3DD;
	Mon,  9 Jun 2025 14:11:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="B/7LBetv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2ED8610E3DD;
 Mon,  9 Jun 2025 14:11:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749478294; x=1781014294;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JpfaC54d3JAVC1HkB0C1Lm1p9jIOagfIDgG4M3Q8In4=;
 b=B/7LBetvHgga1K8ra3umpJ23CY+sJyJM3HpM+AZ1rx/PAoauCGoZSOKd
 0xd4r/Y8b7IzuzrYUT8V625o9OwdVqlzStJddKo8yCx48ysKIvMI13a9I
 tU7gr/WjFQ+ANuuIiBUvCOaq4bjFIhwO8TY5MKQIoUaoX4XWDWhYdyC5o
 OqH97glZm/L2QmwLH/GM+fUHyfOfC5n4W8siDP3dr0mgqTfuY834nDML1
 K4Q8lY342/Gg33i+YNm6I8lR7wl5LTjXqZF//yWvk4TkKVJHDl6G+bwza
 U9RHkX8tGo8ADCfwKMFnt/7GRtyA3zQM9M7acEpUkZLpYkSyKtnZWIJmO Q==;
X-CSE-ConnectionGUID: CLTDUpesQY6gfN1TFEF3fg==
X-CSE-MsgGUID: fioky3LxTROH+NtwL59+uw==
X-IronPort-AV: E=McAfee;i="6800,10657,11459"; a="55360827"
X-IronPort-AV: E=Sophos;i="6.16,222,1744095600"; d="scan'208";a="55360827"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2025 07:11:33 -0700
X-CSE-ConnectionGUID: kibIlPLfSzCogkcso3ocAQ==
X-CSE-MsgGUID: lI0SF5+CQqSZXcHJqeVgqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,222,1744095600"; d="scan'208";a="151765790"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO stinkbox)
 ([10.245.244.99])
 by orviesa005.jf.intel.com with SMTP; 09 Jun 2025 07:11:30 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 09 Jun 2025 17:11:30 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH v4 13/21] drm/i915/dmc: Assert DMC is loaded harder
Date: Mon,  9 Jun 2025 17:10:38 +0300
Message-ID: <20250609141046.6244-14-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250609141046.6244-1-ville.syrjala@linux.intel.com>
References: <20250609141046.6244-1-ville.syrjala@linux.intel.com>
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

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../i915/display/intel_display_power_well.c   |  4 +-
 drivers/gpu/drm/i915/display/intel_dmc.c      | 53 ++++++++++++++-----
 drivers/gpu/drm/i915/display/intel_dmc.h      |  2 +-
 3 files changed, 42 insertions(+), 17 deletions(-)

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
index 247e88265cf3..0896246c3982 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -589,6 +589,43 @@ static void intel_dmc_load_mmio(struct intel_display *display, enum intel_dmc_id
 	}
 }
 
+static void assert_dmc_loaded(struct intel_display *display,
+			      enum intel_dmc_id dmc_id)
+{
+	struct intel_dmc *dmc = display_to_dmc(display);
+	u32 expected, found;
+	int i;
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
 void intel_dmc_enable_pipe(struct intel_display *display, enum pipe pipe)
 {
 	enum intel_dmc_id dmc_id = PIPE_TO_DMC_ID(pipe);
@@ -600,6 +637,8 @@ void intel_dmc_enable_pipe(struct intel_display *display, enum pipe pipe)
 	if (DISPLAY_VER(display) >= 30 && pipe >= PIPE_C)
 		intel_dmc_load_mmio(display, dmc_id);
 
+	assert_dmc_loaded(display, dmc_id);
+
 	if (DISPLAY_VER(display) >= 20) {
 		intel_de_write(display, PIPEDMC_INTERRUPT(pipe), pipedmc_interrupt_mask(display));
 		intel_de_write(display, PIPEDMC_INTERRUPT_MASK(pipe), ~pipedmc_interrupt_mask(display));
@@ -752,20 +791,6 @@ void intel_dmc_disable_program(struct intel_display *display)
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

