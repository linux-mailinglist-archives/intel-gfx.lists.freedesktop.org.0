Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 06D2CB13405
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Jul 2025 07:11:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1E3110E32A;
	Mon, 28 Jul 2025 05:11:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iKK2ql2F";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BAFFA10E0FF;
 Mon, 28 Jul 2025 05:11:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753679465; x=1785215465;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Jc+I4mAM8Luj8je2+hMZoJOrJ7ilS72cnd2DwqBeLXQ=;
 b=iKK2ql2F+N31ZC4oRtK4xk6dnRBfbZxIb+bOozsg1bKTt32wM9pptb0S
 cPnxHpD1S710PfVyyl6lqz6sVTCMHQV/ywpiMrqenv28H51RcEObdSGps
 Om7hH/XCEbgc3Xi1RmE2K70UsQUeVR4tNwPJq0il1FtLy3yEVBp/tkaPO
 Fy6NASu8OtJUtttI9mz/n/pEZcHDBCrtUd7N9lm8+C5PRDv7t5xwQnL0B
 /tw3+iVvYxjXjdxCNkRJDWUQLNCGa9I6YWFuvwP0tXWqKfWBirLt384WK
 5rErAotMqSU/scsMc0TVKkqGn3ccHRnLJee495eL2JkQWC5SqYZ+Bp6DN Q==;
X-CSE-ConnectionGUID: Ql3DDb5HQYGgZ0C9VT9cdA==
X-CSE-MsgGUID: kOAqDq0BQJ2fZBgcz/BZ7w==
X-IronPort-AV: E=McAfee;i="6800,10657,11504"; a="73370022"
X-IronPort-AV: E=Sophos;i="6.16,339,1744095600"; d="scan'208";a="73370022"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2025 22:11:05 -0700
X-CSE-ConnectionGUID: mNQzU2IqTO2/BmmARXlyvA==
X-CSE-MsgGUID: R+8g+h6LS6eMaxu7raSVXw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,339,1744095600"; d="scan'208";a="199457491"
Received: from dibin-nuc7i7bnh.iind.intel.com ([10.190.239.19])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2025 22:11:04 -0700
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, uma.shankar@intel.com, arun.r.murthy@intel.com,
 jani.nikula@intel.com
Subject: [PATCH v4] drm/i915/display: Optimize panel power-on wait time
Date: Mon, 28 Jul 2025 10:42:37 +0530
Message-ID: <20250728051237.2322256-1-dibin.moolakadan.subrahmanian@intel.com>
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

 The current wait_panel_status() uses intel_de_wait() with a long timeout
 (5000ms), which is suboptimal on Xe platforms where the underlying
 xe_mmio_wait32() employs an exponential backoff strategy. This leads
 to unnecessary delays during resume or power-on  when the panel becomes
 ready earlier than the full timeout.

 This patch replaces intel_de_wait() with read_poll_timeout() +
 intel_de_read() to actively poll the register at given interval and exit
 early when panel is ready, improving resume latency

Changes in v2:
 Replaced  two-phase intel_de_wait() with  read_poll_timeout()
 + intel_de_read()

Changes in v3:
 - Add poll_interval_ms argument  'wait_panel_status' function.
 - Modify 'wait_panel_status' callers with proper poll interval

Changes in v4:
 - Change 'wait_panel_off' poll interval to 10ms

Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
---
 drivers/gpu/drm/i915/display/intel_pps.c | 41 +++++++++++++++++-------
 1 file changed, 30 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index b64d0b30f5b1..56ef835fc2eb 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -22,6 +22,7 @@
 #include "intel_pps.h"
 #include "intel_pps_regs.h"
 #include "intel_quirks.h"
+#include <linux/iopoll.h>
 
 static void vlv_steal_power_sequencer(struct intel_display *display,
 				      enum pipe pipe);
@@ -600,14 +601,18 @@ void intel_pps_check_power_unlocked(struct intel_dp *intel_dp)
 #define IDLE_CYCLE_MASK		(PP_ON | PP_SEQUENCE_MASK | PP_CYCLE_DELAY_ACTIVE | PP_SEQUENCE_STATE_MASK)
 #define IDLE_CYCLE_VALUE	(0     | PP_SEQUENCE_NONE | 0                     | PP_SEQUENCE_STATE_OFF_IDLE)
 
+#define PANEL_MAXIMUM_ON_TIME_MS		(5000)
+
 static void intel_pps_verify_state(struct intel_dp *intel_dp);
 
 static void wait_panel_status(struct intel_dp *intel_dp,
-			      u32 mask, u32 value)
+			      u32 mask, u32 value, int poll_interval_ms)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	i915_reg_t pp_stat_reg, pp_ctrl_reg;
+	int ret;
+	u32 reg_val;
 
 	lockdep_assert_held(&display->pps.mutex);
 
@@ -624,14 +629,27 @@ static void wait_panel_status(struct intel_dp *intel_dp,
 		    intel_de_read(display, pp_stat_reg),
 		    intel_de_read(display, pp_ctrl_reg));
 
-	if (intel_de_wait(display, pp_stat_reg, mask, value, 5000))
-		drm_err(display->drm,
-			"[ENCODER:%d:%s] %s panel status timeout: PP_STATUS: 0x%08x PP_CONTROL: 0x%08x\n",
-			dig_port->base.base.base.id, dig_port->base.base.name,
-			pps_name(intel_dp),
-			intel_de_read(display, pp_stat_reg),
-			intel_de_read(display, pp_ctrl_reg));
+	if (poll_interval_ms <= 0)
+		poll_interval_ms = 1; //if <0 is passed go with 1ms
+
+	ret = read_poll_timeout(intel_de_read, reg_val,
+				((reg_val & mask) == value),
+				(poll_interval_ms * 1000),  // poll intervell
+				(PANEL_MAXIMUM_ON_TIME_MS * 1000),  // total timeout (us)
+				true,
+				display, pp_stat_reg);
+
+	if (ret == 0)
+		goto panel_wait_complete;
 
+	drm_err(display->drm,
+		"dibin [ENCODER:%d:%s] %s panel status timeout: PP_STATUS: 0x%08x PP_CONTROL: 0x%08x\n",
+		dig_port->base.base.base.id, dig_port->base.base.name,
+		pps_name(intel_dp),
+		intel_de_read(display, pp_stat_reg),
+		intel_de_read(display, pp_ctrl_reg));
+
+panel_wait_complete:
 	drm_dbg_kms(display->drm, "Wait complete\n");
 }
 
@@ -644,7 +662,8 @@ static void wait_panel_on(struct intel_dp *intel_dp)
 		    "[ENCODER:%d:%s] %s wait for panel power on\n",
 		    dig_port->base.base.base.id, dig_port->base.base.name,
 		    pps_name(intel_dp));
-	wait_panel_status(intel_dp, IDLE_ON_MASK, IDLE_ON_VALUE);
+
+	wait_panel_status(intel_dp, IDLE_ON_MASK, IDLE_ON_VALUE, 20);
 }
 
 static void wait_panel_off(struct intel_dp *intel_dp)
@@ -656,7 +675,7 @@ static void wait_panel_off(struct intel_dp *intel_dp)
 		    "[ENCODER:%d:%s] %s wait for panel power off time\n",
 		    dig_port->base.base.base.id, dig_port->base.base.name,
 		    pps_name(intel_dp));
-	wait_panel_status(intel_dp, IDLE_OFF_MASK, IDLE_OFF_VALUE);
+	wait_panel_status(intel_dp, IDLE_OFF_MASK, IDLE_OFF_VALUE, 10);
 }
 
 static void wait_panel_power_cycle(struct intel_dp *intel_dp)
@@ -683,7 +702,7 @@ static void wait_panel_power_cycle(struct intel_dp *intel_dp)
 	if (remaining)
 		wait_remaining_ms_from_jiffies(jiffies, remaining);
 
-	wait_panel_status(intel_dp, IDLE_CYCLE_MASK, IDLE_CYCLE_VALUE);
+	wait_panel_status(intel_dp, IDLE_CYCLE_MASK, IDLE_CYCLE_VALUE, 1);
 }
 
 void intel_pps_wait_power_cycle(struct intel_dp *intel_dp)
-- 
2.43.0

