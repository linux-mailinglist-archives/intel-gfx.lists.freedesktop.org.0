Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CCF0D645FED
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Dec 2022 18:18:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E44910E40E;
	Wed,  7 Dec 2022 17:18:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F20710E40E
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Dec 2022 17:18:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670433489; x=1701969489;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ajvQAGozwCvVz9aYJUXOeGX6jWMhaZ9Y7PyHi8CTO40=;
 b=WpudTS7yrkbsblffe9jho/GZ42FSXohzFjj6ktIFmqWTty5/ErrcMjnh
 OTYQFqnbS6svZBdAAvFKRpGcmTzOFG2/yPjFUvYUakMaA842T7+XYMzmZ
 yBaYsh9s2OjLy9C1uaiEjYnby98Kv1QdxJ8aEVa2JgQ7V40SFdW33u/W6
 e0/Z0ZMU1554sqXHAnnO2vkTNFVx0bRA0QaO62fYEBrjLzmUHXIOHBwY2
 cgnJatnKyFORNddCCVcXaFeB9H0rHiXPAcyHDM2tjZbzYJIDxwexEy2+U
 7cfEJ4DwsuktVEMuQT20YCMQtSBUTwgQHC6UusOYZ8f00uviqXnlHKj4w w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="300368236"
X-IronPort-AV: E=Sophos;i="5.96,225,1665471600"; d="scan'208";a="300368236"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2022 09:18:08 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="597039743"
X-IronPort-AV: E=Sophos;i="5.96,225,1665471600"; d="scan'208";a="597039743"
Received: from fbackhou-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.36.192])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2022 09:18:06 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Dec 2022 19:17:24 +0200
Message-Id: <262a0cf647b37e27a1c7776d3816e1b4ef959a91.1670433372.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1670433372.git.jani.nikula@intel.com>
References: <cover.1670433372.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 07/11] drm/i915/dp-aux: switch to intel_de_*
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

