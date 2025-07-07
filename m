Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AA17AFAB1F
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Jul 2025 07:42:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A78B810E3FC;
	Mon,  7 Jul 2025 05:42:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dcHWZD7u";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FCA110E3FC;
 Mon,  7 Jul 2025 05:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751866954; x=1783402954;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Qn7yOPCjd73iWTMfHtAYzajiTmjBYq03EU0/YOvynDE=;
 b=dcHWZD7uZ7eL+5mseytuUc2nN/RXloU9Kw4bxI2WR2AQ+cN8V5WtjpFC
 /gpQv/IG7Ski1no6NW5fh35ExgQeknbY58/a62WQ7HsOXHs4zsg57SMxZ
 VmIJUrt6//XxpliGPFFMVeEmrKFrkc8pja5aaaWZc/67lDk+vFzXnqKFt
 ai00a5kzRbXHRcilpHoTs6kwujkz2L+Y3spw82AsJqjb7RCn2Bn6Lcoqe
 C3jGNxKtb5LyoGBuOag4wWzolIdLCyjggaJhoPQuy9UIyxVOB/d1q1uuk
 ZKQ+uRNyQkKm3zIFg5Pu5nlP8LGIJ/vfueAhd/v5WQjx5JxEXbgINsz2y w==;
X-CSE-ConnectionGUID: DYsV0c+uRuCeF/aHjR29cw==
X-CSE-MsgGUID: fR40+ORmQ6qQ6kZXkZO3mA==
X-IronPort-AV: E=McAfee;i="6800,10657,11486"; a="54197132"
X-IronPort-AV: E=Sophos;i="6.16,293,1744095600"; d="scan'208";a="54197132"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2025 22:42:33 -0700
X-CSE-ConnectionGUID: XreIewGzSkaIXTVpljEgUQ==
X-CSE-MsgGUID: l+udiHxPTeeeCv91HL49gQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,293,1744095600"; d="scan'208";a="155249683"
Received: from dibin-nuc7i7bnh.iind.intel.com ([10.190.239.19])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2025 22:42:31 -0700
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, uma.shankar@intel.com, arun.r.murthy@intel.com,
 jani.nikula@intel.com
Subject: [PATCH v2] drm/i915/display: Optimize panel power-on wait time
Date: Mon,  7 Jul 2025 11:11:08 +0530
Message-ID: <20250707054108.3796081-1-dibin.moolakadan.subrahmanian@intel.com>
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

 This patch replaces intel_de_wait() with read_poll_timeout() +
 intel_de_read() to actively poll the register in every 20ms and exit
 early when panel is ready, improving resume latency

Changes in v2:
 Replaced  two-phase intel_de_wait() with  read_poll_timeout()
 + intel_de_read()

Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
---
 drivers/gpu/drm/i915/display/intel_pps.c | 59 +++++++++++++++++++++++-
 1 file changed, 58 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index b64d0b30f5b1..7eb277994246 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -22,6 +22,7 @@
 #include "intel_pps.h"
 #include "intel_pps_regs.h"
 #include "intel_quirks.h"
+#include <linux/iopoll.h>
 
 static void vlv_steal_power_sequencer(struct intel_display *display,
 				      enum pipe pipe);
@@ -600,8 +601,64 @@ void intel_pps_check_power_unlocked(struct intel_dp *intel_dp)
 #define IDLE_CYCLE_MASK		(PP_ON | PP_SEQUENCE_MASK | PP_CYCLE_DELAY_ACTIVE | PP_SEQUENCE_STATE_MASK)
 #define IDLE_CYCLE_VALUE	(0     | PP_SEQUENCE_NONE | 0                     | PP_SEQUENCE_STATE_OFF_IDLE)
 
+#define PANEL_MAXIMUM_ON_TIME_MS		(5000)
+
 static void intel_pps_verify_state(struct intel_dp *intel_dp);
 
+/*
+ * Panel power-on typically completes within ~200ms. Using a large timeout
+ * (5000ms) with intel_de_wait() results in unnecessary delays,
+ * especially under Xe, where xe_mmio_wait32() uses an exponential backoff.
+ *
+ * To optimize resume and power-on latency, use intel_de_read + read_poll_timeout
+ * instead of intel_de_wait()
+ */
+static void wait_panel_on_status(struct intel_dp *intel_dp)
+{
+	struct intel_display *display = to_intel_display(intel_dp);
+	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
+	i915_reg_t pp_stat_reg, pp_ctrl_reg;
+	u32 mask = IDLE_ON_MASK;
+	u32 value = IDLE_ON_VALUE;
+	u32 reg_val;
+	int ret;
+
+	lockdep_assert_held(&display->pps.mutex);
+
+	intel_pps_verify_state(intel_dp);
+
+	pp_stat_reg = _pp_stat_reg(intel_dp);
+	pp_ctrl_reg = _pp_ctrl_reg(intel_dp);
+
+	drm_dbg_kms(display->drm,
+		    "dibin [ENCODER:%d:%s] %s mask: 0x%08x value: 0x%08x PP_STATUS: 0x%08x PP_CONTROL: 0x%08x\n",
+		    dig_port->base.base.base.id, dig_port->base.base.name,
+		    pps_name(intel_dp),
+		    mask, value,
+		    intel_de_read(display, pp_stat_reg),
+		    intel_de_read(display, pp_ctrl_reg));
+
+	ret = read_poll_timeout(intel_de_read, reg_val,
+				((reg_val & mask) == value),
+				(20 * 1000),                        // poll every 20ms
+				(PANEL_MAXIMUM_ON_TIME_MS * 1000),  // total timeout (us)
+				true,
+				display, pp_stat_reg);
+
+	if (ret == 0)
+		goto panel_wait_complete;
+
+	drm_err(display->drm,
+		"dibin [ENCODER:%d:%s] %s panel status timeout: PP_STATUS: 0x%08x PP_CONTROL: 0x%08x\n",
+		dig_port->base.base.base.id, dig_port->base.base.name,
+		pps_name(intel_dp),
+		intel_de_read(display, pp_stat_reg),
+		intel_de_read(display, pp_ctrl_reg));
+
+panel_wait_complete:
+	drm_dbg_kms(display->drm, "dibin Wait complete\n");
+}
+
 static void wait_panel_status(struct intel_dp *intel_dp,
 			      u32 mask, u32 value)
 {
@@ -644,7 +701,7 @@ static void wait_panel_on(struct intel_dp *intel_dp)
 		    "[ENCODER:%d:%s] %s wait for panel power on\n",
 		    dig_port->base.base.base.id, dig_port->base.base.name,
 		    pps_name(intel_dp));
-	wait_panel_status(intel_dp, IDLE_ON_MASK, IDLE_ON_VALUE);
+	wait_panel_on_status(intel_dp);
 }
 
 static void wait_panel_off(struct intel_dp *intel_dp)
-- 
2.43.0

