Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B08BAEDCAD
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Jun 2025 14:25:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF1BD10E434;
	Mon, 30 Jun 2025 12:25:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kIWlVYly";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D9BAC10E437;
 Mon, 30 Jun 2025 12:25:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751286314; x=1782822314;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=B17Lz6iS+XNf2+SXhmDAR++RiOz8OiNUqhD1qPqv2+M=;
 b=kIWlVYlyPzlm9dDrMqmVJ4mcyZMPZQby4TDE1iJhuwiJv8bpH3y24d9V
 FmNEQ7rfQe1KoYHY9HIl4RQc3tEJIKV1WAIAXxfJ7qhqkDjIlAYPAlDNB
 Pi/fKdzCYUCDfzd1OeP2DhjcPaeI2tBEunNxzzrhT+UKP/cxAR/MZ7nvc
 uCsdIf1ZhKZeSCHYPc9cE1HsS+R5oKpxSrLUsyolrZQ4nl/oT5ieBk/uu
 DPULPn83kzhGXANpnRdTRHvd4X/T41kGAwUJS0yZ41Rkk+WlcEDU44qKh
 Jqp1pqb+HlvRDOlqfTRnpRubDGLiO2utv86ytFkyv3QLGTq9TRxUh6Hul A==;
X-CSE-ConnectionGUID: pnYBDmF9QLCywsm14u6Myw==
X-CSE-MsgGUID: QEPX3x79Q42renXt3I8/5g==
X-IronPort-AV: E=McAfee;i="6800,10657,11480"; a="57187214"
X-IronPort-AV: E=Sophos;i="6.16,277,1744095600"; d="scan'208";a="57187214"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2025 05:25:13 -0700
X-CSE-ConnectionGUID: FO7gbKeJQ8uQmBsLSA2ZGA==
X-CSE-MsgGUID: FwZHbGnYT6OnhpqmZMAPwA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,277,1744095600"; d="scan'208";a="157468848"
Received: from dibin-nuc7i7bnh.iind.intel.com ([10.190.239.19])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2025 05:25:08 -0700
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, uma.shankar@intel.com, arun.r.murthy@intel.com
Subject: [PATCH]  drm/i915/display: Optimize panel power-on  wait time
Date: Mon, 30 Jun 2025 17:53:39 +0530
Message-ID: <20250630122339.3007880-1-dibin.moolakadan.subrahmanian@intel.com>
X-Mailer: git-send-email 2.43.0
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

 The current wait_panel_on() uses intel_de_wait() with a long timeout
 (5000ms), which is suboptimal on Xe platforms where the underlying
 xe_mmio_wait32() employs an exponential backoff strategy. This leads
 to unnecessary delays during resume or power-on  when the panel becomes
 ready earlier than the full timeout.

 This patch splits the total wait time into two pases
    - First wait for the typical panel-on time(180ms)
    - If panel is not ready , continue polling in short 20ms intervals
      until the maximum timeout (5000ms) is reached

Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
---
 drivers/gpu/drm/i915/display/intel_pps.c | 61 +++++++++++++++++++++++-
 1 file changed, 60 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index bff81fb5c316..57a062c8038d 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -598,8 +598,67 @@ void intel_pps_check_power_unlocked(struct intel_dp *intel_dp)
 #define IDLE_CYCLE_MASK		(PP_ON | PP_SEQUENCE_MASK | PP_CYCLE_DELAY_ACTIVE | PP_SEQUENCE_STATE_MASK)
 #define IDLE_CYCLE_VALUE	(0     | PP_SEQUENCE_NONE | 0                     | PP_SEQUENCE_STATE_OFF_IDLE)
 
+#define PANEL_TYPICAL_ON_TIME_MS		(180)
+#define PANEL_MAXIMUM_ON_TIME_MS		(5000)
+
 static void intel_pps_verify_state(struct intel_dp *intel_dp);
 
+/*
+ * Panel power-on typically completes within ~200ms. Using a large timeout
+ * (5000ms) with intel_de_wait() results in unnecessary delays,
+ * especially under Xe, where xe_mmio_wait32() uses an exponential backoff.
+ *
+ * To optimize resume and power-on latency, we first wait for the typical
+ * completion window, then perform short polling loops thereafter.
+ * This reduces worst-case latency while still ensuring correctness.
+ */
+static void wait_panel_on_status(struct intel_dp *intel_dp)
+{
+	struct intel_display *display = to_intel_display(intel_dp);
+	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
+	i915_reg_t pp_stat_reg, pp_ctrl_reg;
+	u32 mask = IDLE_ON_MASK;
+	u32 value = IDLE_ON_VALUE;
+	int elapsed  = PANEL_TYPICAL_ON_TIME_MS;
+
+	lockdep_assert_held(&display->pps.mutex);
+
+	intel_pps_verify_state(intel_dp);
+
+	pp_stat_reg = _pp_stat_reg(intel_dp);
+	pp_ctrl_reg = _pp_ctrl_reg(intel_dp);
+
+	drm_dbg_kms(display->drm,
+		    "[ENCODER:%d:%s] %s mask: 0x%08x value: 0x%08x PP_STATUS: 0x%08x PP_CONTROL: 0x%08x\n",
+		    dig_port->base.base.base.id, dig_port->base.base.name,
+		    pps_name(intel_dp),
+		    mask, value,
+		    intel_de_read(display, pp_stat_reg),
+		    intel_de_read(display, pp_ctrl_reg));
+
+	/* Wait for typical panel on time first */
+	if (intel_de_wait(display, pp_stat_reg, mask, value, PANEL_TYPICAL_ON_TIME_MS) == 0)
+		goto panel_wait_complete;
+
+	/* Wait for maxtime in 20ms intervals */
+	while (elapsed < PANEL_MAXIMUM_ON_TIME_MS) {
+		if (intel_de_wait(display, pp_stat_reg, mask, value, 20) == 0)
+			goto panel_wait_complete;
+
+		elapsed += 20;
+	}
+
+	drm_err(display->drm,
+		"[ENCODER:%d:%s] %s panel status timeout: PP_STATUS: 0x%08x PP_CONTROL: 0x%08x\n",
+		dig_port->base.base.base.id, dig_port->base.base.name,
+		pps_name(intel_dp),
+		intel_de_read(display, pp_stat_reg),
+		intel_de_read(display, pp_ctrl_reg));
+
+panel_wait_complete:
+	drm_dbg_kms(display->drm, "Wait complete\n");
+}
+
 static void wait_panel_status(struct intel_dp *intel_dp,
 			      u32 mask, u32 value)
 {
@@ -642,7 +701,7 @@ static void wait_panel_on(struct intel_dp *intel_dp)
 		    "[ENCODER:%d:%s] %s wait for panel power on\n",
 		    dig_port->base.base.base.id, dig_port->base.base.name,
 		    pps_name(intel_dp));
-	wait_panel_status(intel_dp, IDLE_ON_MASK, IDLE_ON_VALUE);
+	wait_panel_on_status(intel_dp);
 }
 
 static void wait_panel_off(struct intel_dp *intel_dp)
-- 
2.43.0

