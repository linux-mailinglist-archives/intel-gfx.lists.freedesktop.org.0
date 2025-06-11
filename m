Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E8CDAD5B20
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Jun 2025 17:53:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC3BB10E6B6;
	Wed, 11 Jun 2025 15:52:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XlzCRZnW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3BC8D10E6B6;
 Wed, 11 Jun 2025 15:52:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749657178; x=1781193178;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4bPFkNw8o4wCZGNg2YjnsQqbts9qMrEhuaWI8Cj47wc=;
 b=XlzCRZnWvZBjalpm7vPBtvOObSp/cdzdxTk9xjui2aKgSGi2xumCz+hS
 W5r3g9XuLo2tU5krT2dCQB7QmkUnQQLuxwd9sByTukTPonq07QzY/VC06
 aXmfCZDI623dbNsti1KkcttWM2UbAoERLnavFGETl9+1hLPbMJCEtm3Ih
 iZ3l7zrQghtAo8Q4gkkV1wZ3G493BLBerYPcWeC3h+Seb4t+GocBzhPJz
 o8Dns7li4deYeuGNBL3hSl0IrJlHgZJb9ykeUysMip73144t53gvRqsUZ
 JHZR9IA3BJLGu2HIBfZghiMDYSGFV4OT3LuaSzCyu2aMpNU48LRMSQ4Gm g==;
X-CSE-ConnectionGUID: iVAJmSYrRsyQ07R78mBqUA==
X-CSE-MsgGUID: dZb05dRpSj25dP/6NgIVog==
X-IronPort-AV: E=McAfee;i="6800,10657,11461"; a="62419122"
X-IronPort-AV: E=Sophos;i="6.16,228,1744095600"; d="scan'208";a="62419122"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2025 08:52:58 -0700
X-CSE-ConnectionGUID: M6cEpqB9RCm8XWBgVEEccg==
X-CSE-MsgGUID: SW+kxc8fSnmYTw7Uiyl7yw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,228,1744095600"; d="scan'208";a="152507362"
Received: from cpetruta-mobl1.ger.corp.intel.com (HELO stinkbox)
 ([10.245.244.24])
 by orviesa005.jf.intel.com with SMTP; 11 Jun 2025 08:52:56 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 11 Jun 2025 18:52:55 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 4/9] drm/i915/dmc: Extract dmc_load_program()
Date: Wed, 11 Jun 2025 18:52:36 +0300
Message-ID: <20250611155241.24191-5-ville.syrjala@linux.intel.com>
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

We'll be needing to reload the program for individual DMCs.
To make that possible pull the code to load the program for
a single DMC into a new function.

This does change the order of things during init/resume
a bit; previously we loaded the program RAM for all DMCs first,
and then loaded the MMIO registers for all DMCs. Now those
operations will be interleaved between different DMCs.

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

