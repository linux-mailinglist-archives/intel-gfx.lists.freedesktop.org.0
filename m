Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C3CD5636C3F
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Nov 2022 22:19:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4AB4F10E633;
	Wed, 23 Nov 2022 21:19:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BAEC610E646
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Nov 2022 21:19:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669238340; x=1700774340;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ajvQAGozwCvVz9aYJUXOeGX6jWMhaZ9Y7PyHi8CTO40=;
 b=PcoQKDd87YE6TN+ZdoM1+13XVYgl4uA0rkT1b5L9wDaM0lITfEm9rxnD
 qGLE+20Y/J5At6G4jDy15/RurAZ7DeAxBdRpvp9Pa0a0BprKL27HC8mom
 wtpfs/sItCnhVtSG+tRD1SC9S3byaoUrljrVOAxvXzhB3dpleP7fg0mjr
 KHA5IgPjVvBM/LK3eXEqw3khmcYMLdjMwBGbPifhvyRbS3tuxEkUlRrty
 a20DrEbdvJx3cBUza4QAHli3roMGDcqcm8jG8HL4xne97UzWQ2p0SRTsb
 Gfb3WdkjPqjZv78aVfGt3rgOervFIWydmT5VMgUjxVgwPvy7Z27u1J/tX A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="378418996"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="378418996"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2022 13:18:59 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="636053062"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="636053062"
Received: from jgronski-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.16.163])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2022 13:18:58 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Nov 2022 23:18:20 +0200
Message-Id: <f3f91096f35f11132e07c112c640bc4b0dd732a2.1669238194.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1669238194.git.jani.nikula@intel.com>
References: <cover.1669238194.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 07/12] drm/i915/dp-aux: switch to intel_de_*
 register accessors in display code
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Avoid direct uncore use in display code.

Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_aux.c | 29 +++++++++------------
 1 file changed, 13 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
index 664bebdecea7..91c93c93e5fc 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
@@ -6,6 +6,7 @@
 #include "i915_drv.h"
 #include "i915_reg.h"
 #include "i915_trace.h"
+#include "intel_de.h"
 #include "intel_display_types.h"
 #include "intel_dp_aux.h"
 #include "intel_pps.h"
@@ -42,7 +43,7 @@ intel_dp_aux_wait_done(struct intel_dp *intel_dp)
 	u32 status;
 	bool done;
 
-#define C (((status = intel_uncore_read_notrace(&i915->uncore, ch_ctl)) & DP_AUX_CH_CTL_SEND_BUSY) == 0)
+#define C (((status = intel_de_read_notrace(i915, ch_ctl)) & DP_AUX_CH_CTL_SEND_BUSY) == 0)
 	done = wait_event_timeout(i915->display.gmbus.wait_queue, C,
 				  msecs_to_jiffies_timeout(timeout_ms));
 
@@ -191,7 +192,6 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	struct drm_i915_private *i915 =
 			to_i915(dig_port->base.base.dev);
-	struct intel_uncore *uncore = &i915->uncore;
 	enum phy phy = intel_port_to_phy(i915, dig_port->base.port);
 	bool is_tc_port = intel_phy_is_tc(i915, phy);
 	i915_reg_t ch_ctl, ch_data[5];
@@ -235,7 +235,7 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
 
 	/* Try to wait for any previous AUX channel activity */
 	for (try = 0; try < 3; try++) {
-		status = intel_uncore_read_notrace(uncore, ch_ctl);
+		status = intel_de_read_notrace(i915, ch_ctl);
 		if ((status & DP_AUX_CH_CTL_SEND_BUSY) == 0)
 			break;
 		msleep(1);
@@ -244,7 +244,7 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
 	trace_i915_reg_rw(false, ch_ctl, status, sizeof(status), true);
 
 	if (try == 3) {
-		const u32 status = intel_uncore_read(uncore, ch_ctl);
+		const u32 status = intel_de_read(i915, ch_ctl);
 
 		if (status != intel_dp->aux_busy_last_status) {
 			drm_WARN(&i915->drm, 1,
@@ -274,23 +274,20 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
 		for (try = 0; try < 5; try++) {
 			/* Load the send data into the aux channel data registers */
 			for (i = 0; i < send_bytes; i += 4)
-				intel_uncore_write(uncore,
-						   ch_data[i >> 2],
-						   intel_dp_aux_pack(send + i,
-								     send_bytes - i));
+				intel_de_write(i915, ch_data[i >> 2],
+					       intel_dp_aux_pack(send + i,
+								 send_bytes - i));
 
 			/* Send the command and wait for it to complete */
-			intel_uncore_write(uncore, ch_ctl, send_ctl);
+			intel_de_write(i915, ch_ctl, send_ctl);
 
 			status = intel_dp_aux_wait_done(intel_dp);
 
 			/* Clear done status and any errors */
-			intel_uncore_write(uncore,
-					   ch_ctl,
-					   status |
-					   DP_AUX_CH_CTL_DONE |
-					   DP_AUX_CH_CTL_TIME_OUT_ERROR |
-					   DP_AUX_CH_CTL_RECEIVE_ERROR);
+			intel_de_write(i915, ch_ctl,
+				       status | DP_AUX_CH_CTL_DONE |
+				       DP_AUX_CH_CTL_TIME_OUT_ERROR |
+				       DP_AUX_CH_CTL_RECEIVE_ERROR);
 
 			/*
 			 * DP CTS 1.2 Core Rev 1.1, 4.2.1.1 & 4.2.1.2
@@ -361,7 +358,7 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
 		recv_bytes = recv_size;
 
 	for (i = 0; i < recv_bytes; i += 4)
-		intel_dp_aux_unpack(intel_uncore_read(uncore, ch_data[i >> 2]),
+		intel_dp_aux_unpack(intel_de_read(i915, ch_data[i >> 2]),
 				    recv + i, recv_bytes - i);
 
 	ret = recv_bytes;
-- 
2.34.1

