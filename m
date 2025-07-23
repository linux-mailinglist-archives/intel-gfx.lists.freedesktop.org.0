Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B0370B0F2E8
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Jul 2025 15:04:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4EF8B10E7C2;
	Wed, 23 Jul 2025 13:04:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iLbFZg8k";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B89D10E0F6;
 Wed, 23 Jul 2025 13:04:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753275876; x=1784811876;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=p3rxGb/rZpTnDKhgMo1QA3/If1G6FRVzCKlKwM/x8Z4=;
 b=iLbFZg8khUmgORkqwPsvY+B1KX8VTphzpq86e/abPpZJYgDJtCzMycCu
 2DyU8VNnyMfrAY5BO3j/hpYoyVB2yazg5Vvc1G8qNmqWLkEm6/tCCMby4
 Zr7chG6e/CQjNhhaCIkIczja/KAXJhXho/1KGaeA0AjvcyYEYhkciWGNB
 jS1AmLoSsrYU5YHMfQ6+GsM54TRYvnhTSuzMQdk7Nc/CEb1VU/qqbYp6Y
 d9azpBHdtQOelNV6QTV1Ov92swgdDQ+0JUp1aBQgK/V4HnYodb0f1eXCr
 i4NYhTLX0UMPm0LmgsMgRZYLBVAqhqFT4P2c5G0cx1yuUThKUzRG9tyMn w==;
X-CSE-ConnectionGUID: jesU3r9uTRGq121bGb/S2g==
X-CSE-MsgGUID: ati0Km9bTHuXn+ab9WcCdw==
X-IronPort-AV: E=McAfee;i="6800,10657,11501"; a="55664929"
X-IronPort-AV: E=Sophos;i="6.16,333,1744095600"; d="scan'208";a="55664929"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2025 06:04:36 -0700
X-CSE-ConnectionGUID: FGVnyM3pRki8MWgE/XtxSQ==
X-CSE-MsgGUID: 3MZNStJSRcy2yTxvvC3DUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,333,1744095600"; d="scan'208";a="190460511"
Received: from dibin-nuc7i7bnh.iind.intel.com ([10.190.239.19])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2025 06:04:34 -0700
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, uma.shankar@intel.com, arun.r.murthy@intel.com,
 jani.nikula@intel.com
Subject: [PATCH v3] drm/i915/display: Optimize panel power-on wait time
Date: Wed, 23 Jul 2025 18:36:09 +0530
Message-ID: <20250723130609.2290920-1-dibin.moolakadan.subrahmanian@intel.com>
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

Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
---
 drivers/gpu/drm/i915/display/intel_pps.c | 41 +++++++++++++++++-------
 1 file changed, 30 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index b64d0b30f5b1..af711895a438 100644
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
+	wait_panel_status(intel_dp, IDLE_OFF_MASK, IDLE_OFF_VALUE, 20);
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

