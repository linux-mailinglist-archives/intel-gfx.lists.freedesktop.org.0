Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 62D40ADD9A9
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Jun 2025 19:08:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 918D410E78C;
	Tue, 17 Jun 2025 17:08:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bn6r7XzQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B83710E782;
 Tue, 17 Jun 2025 17:08:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750180105; x=1781716105;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vsjw4LX1hdi+68vfk7axd3TUEmS2COgldrYCGFGomTk=;
 b=bn6r7XzQ/lvINXwfBZii+6sZqfb6SR6Oj9OHXduF1O6gBFBcQLCNhCht
 qNKcy2sx7UGZBWGAz64GcO5Tb/vNc6KexXXYwSKOA87vXCM7Hz/NmsfGa
 dcXMhIVpbTfbSePLAaYu6Pzdw/MpfasTfpKldk92p09cTRs8lvKa4viJm
 SCb+oQXOnVZJUlNy0248Dfz2hrw1SuhYpKuFhlLJUnymEIJm40bfuQ0ae
 fGHp35uvwb9nqc9aOC0WOotr3UBvr4t/7KF4WmLJIaKOxSbbM86rzEVQ2
 HRgOQXnPAUSPYPTnU2gWNyCTel2ss8xit4qXHhbGof3wjFuUuj9gmOVr5 A==;
X-CSE-ConnectionGUID: H7C5uyLGTc2HO0k9zzAZuw==
X-CSE-MsgGUID: dtgWHvLIRDKZ/IPEHJ/ULw==
X-IronPort-AV: E=McAfee;i="6800,10657,11467"; a="62644618"
X-IronPort-AV: E=Sophos;i="6.16,243,1744095600"; d="scan'208";a="62644618"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2025 10:08:17 -0700
X-CSE-ConnectionGUID: 49UqF91kScaVx1bx6F6eCg==
X-CSE-MsgGUID: Sp8pL9SdQoaKZ2pZRrzEFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,243,1744095600"; d="scan'208";a="154138648"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO stinkbox)
 ([10.245.245.184])
 by orviesa005.jf.intel.com with SMTP; 17 Jun 2025 10:08:15 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 17 Jun 2025 20:08:13 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Uma Shankar <uma.shankar@intel.com>
Subject: [PATCH v2 4/9] drm/i915/dmc: Extract dmc_load_program()
Date: Tue, 17 Jun 2025 20:07:54 +0300
Message-ID: <20250617170759.19552-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250617170759.19552-1-ville.syrjala@linux.intel.com>
References: <20250617170759.19552-1-ville.syrjala@linux.intel.com>
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

We'll be needing to reload the program for individual DMCs.
To make that possible pull the code to load the program for
a single DMC into a new function.

This does change the order of things during init/resume
a bit; previously we loaded the program RAM for all DMCs first,
and then loaded the MMIO registers for all DMCs. Now those
operations will be interleaved between different DMCs.

Reviewed-by: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 78 +++++++++++++-----------
 1 file changed, 42 insertions(+), 36 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 5a43298cd0e7..331db28039db 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -432,25 +432,22 @@ static void disable_event_handler(struct intel_display *display,
 	intel_de_write(display, htp_reg, 0);
 }
 
-static void disable_all_event_handlers(struct intel_display *display)
+static void disable_all_event_handlers(struct intel_display *display,
+				       enum intel_dmc_id dmc_id)
 {
-	enum intel_dmc_id dmc_id;
+	int handler;
 
 	/* TODO: disable the event handlers on pre-GEN12 platforms as well */
 	if (DISPLAY_VER(display) < 12)
 		return;
 
-	for_each_dmc_id(dmc_id) {
-		int handler;
+	if (!has_dmc_id_fw(display, dmc_id))
+		return;
 
-		if (!has_dmc_id_fw(display, dmc_id))
-			continue;
-
-		for (handler = 0; handler < DMC_EVENT_HANDLER_COUNT_GEN12; handler++)
-			disable_event_handler(display,
-					      DMC_EVT_CTL(display, dmc_id, handler),
-					      DMC_EVT_HTP(display, dmc_id, handler));
-	}
+	for (handler = 0; handler < DMC_EVENT_HANDLER_COUNT_GEN12; handler++)
+		disable_event_handler(display,
+				      DMC_EVT_CTL(display, dmc_id, handler),
+				      DMC_EVT_HTP(display, dmc_id, handler));
 }
 
 static void adlp_pipedmc_clock_gating_wa(struct intel_display *display, bool enable)
@@ -578,6 +575,30 @@ static u32 dmc_mmiodata(struct intel_display *display,
 		return dmc->dmc_info[dmc_id].mmiodata[i];
 }
 
+static void dmc_load_program(struct intel_display *display,
+			     enum intel_dmc_id dmc_id)
+{
+	struct intel_dmc *dmc = display_to_dmc(display);
+	int i;
+
+	disable_all_event_handlers(display, dmc_id);
+
+	preempt_disable();
+
+	for (i = 0; i < dmc->dmc_info[dmc_id].dmc_fw_size; i++) {
+		intel_de_write_fw(display,
+				  DMC_PROGRAM(dmc->dmc_info[dmc_id].start_mmioaddr, i),
+				  dmc->dmc_info[dmc_id].payload[i]);
+	}
+
+	preempt_enable();
+
+	for (i = 0; i < dmc->dmc_info[dmc_id].mmio_count; i++) {
+		intel_de_write(display, dmc->dmc_info[dmc_id].mmioaddr[i],
+			       dmc_mmiodata(display, dmc, dmc_id, i));
+	}
+}
+
 void intel_dmc_enable_pipe(struct intel_display *display, enum pipe pipe)
 {
 	enum intel_dmc_id dmc_id = PIPE_TO_DMC_ID(pipe);
@@ -685,37 +706,17 @@ void intel_dmc_start_pkgc_exit_at_start_of_undelayed_vblank(struct intel_display
 void intel_dmc_load_program(struct intel_display *display)
 {
 	struct i915_power_domains *power_domains = &display->power.domains;
-	struct intel_dmc *dmc = display_to_dmc(display);
 	enum intel_dmc_id dmc_id;
-	u32 i;
 
 	if (!intel_dmc_has_payload(display))
 		return;
 
-	pipedmc_clock_gating_wa(display, true);
-
-	disable_all_event_handlers(display);
-
 	assert_display_rpm_held(display);
 
-	preempt_disable();
+	pipedmc_clock_gating_wa(display, true);
 
-	for_each_dmc_id(dmc_id) {
-		for (i = 0; i < dmc->dmc_info[dmc_id].dmc_fw_size; i++) {
-			intel_de_write_fw(display,
-					  DMC_PROGRAM(dmc->dmc_info[dmc_id].start_mmioaddr, i),
-					  dmc->dmc_info[dmc_id].payload[i]);
-		}
-	}
-
-	preempt_enable();
-
-	for_each_dmc_id(dmc_id) {
-		for (i = 0; i < dmc->dmc_info[dmc_id].mmio_count; i++) {
-			intel_de_write(display, dmc->dmc_info[dmc_id].mmioaddr[i],
-				       dmc_mmiodata(display, dmc, dmc_id, i));
-		}
-	}
+	for_each_dmc_id(dmc_id)
+		dmc_load_program(display, dmc_id);
 
 	power_domains->dc_state = 0;
 
@@ -733,11 +734,16 @@ void intel_dmc_load_program(struct intel_display *display)
  */
 void intel_dmc_disable_program(struct intel_display *display)
 {
+	enum intel_dmc_id dmc_id;
+
 	if (!intel_dmc_has_payload(display))
 		return;
 
 	pipedmc_clock_gating_wa(display, true);
-	disable_all_event_handlers(display);
+
+	for_each_dmc_id(dmc_id)
+		disable_all_event_handlers(display, dmc_id);
+
 	pipedmc_clock_gating_wa(display, false);
 }
 
-- 
2.49.0

