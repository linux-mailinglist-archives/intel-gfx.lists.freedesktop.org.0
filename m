Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B0434727A0C
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jun 2023 10:35:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C2DB10E594;
	Thu,  8 Jun 2023 08:35:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9CB1810E594
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jun 2023 08:35:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686213334; x=1717749334;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=IzrHIXHCL5ZpV0tyohswvkpZy8VzR2xcuC2BkiEHpIM=;
 b=TiQvdcLgmklCfX5sWWHpFbGyMAwKC5PR2tflTwob/hkH1zWsRKbfqTJW
 rgzn3I1JqH5uDQV9wkglRSbKeQOTOHJlBjwGlzY5hbZoH/2bqLrhwI/ef
 ihw7ChZudKJMpm6PQsaMTmMYVpedTKJgaIwoAsShpFxJJwd+j9k8J7cfN
 iQVdsiZl41aWRjSqfgbMUyDtbNg/Tu6XKoSIsC+ZyQsfu9aIlnxEGUbxV
 1lS2CPcUODX3QlvMkG3LHQfhf5wvK6VZzRMYzyNGPfab1uBkN4cDeU4Bj
 3j9FZKL6rCWdGDJ655z4eQY4C/+XqpkIJzp573kTPlCHsJqOKrNwKm5rR w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="420813158"
X-IronPort-AV: E=Sophos;i="6.00,226,1681196400"; d="scan'208";a="420813158"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2023 01:35:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="956628392"
X-IronPort-AV: E=Sophos;i="6.00,226,1681196400"; d="scan'208";a="956628392"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by fmsmga006.fm.intel.com with ESMTP; 08 Jun 2023 01:35:27 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Jun 2023 13:58:00 +0530
Message-Id: <20230608082800.509420-1-arun.r.murthy@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/display/dp: On AUX xfer timeout
 restart freshly
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

As part of restart on AUX xfer timeout, check for busy status and then
start sending the data.

Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_aux.c | 50 +++++++++------------
 1 file changed, 22 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
index 197c6e81db14..25090542dd9f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
@@ -273,30 +273,6 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
 	 * it using the same AUX CH simultaneously
 	 */
 
-	/* Try to wait for any previous AUX channel activity */
-	for (try = 0; try < 3; try++) {
-		status = intel_de_read_notrace(i915, ch_ctl);
-		if ((status & DP_AUX_CH_CTL_SEND_BUSY) == 0)
-			break;
-		msleep(1);
-	}
-	/* just trace the final value */
-	trace_i915_reg_rw(false, ch_ctl, status, sizeof(status), true);
-
-	if (try == 3) {
-		const u32 status = intel_de_read(i915, ch_ctl);
-
-		if (status != intel_dp->aux_busy_last_status) {
-			drm_WARN(&i915->drm, 1,
-				 "%s: not started (status 0x%08x)\n",
-				 intel_dp->aux.name, status);
-			intel_dp->aux_busy_last_status = status;
-		}
-
-		ret = -EBUSY;
-		goto out;
-	}
-
 	/* Only 5 data registers! */
 	if (drm_WARN_ON(&i915->drm, send_bytes > 20 || recv_size > 20)) {
 		ret = -E2BIG;
@@ -304,14 +280,31 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
 	}
 
 	while ((aux_clock_divider = intel_dp->get_aux_clock_divider(intel_dp, clock++))) {
-		u32 send_ctl = intel_dp->get_aux_send_ctl(intel_dp,
+		/* Must try at least 3 times according to DP spec */
+		for (try = 0; try < 5; try++) {
+			u32 send_ctl = intel_dp->get_aux_send_ctl(intel_dp,
 							  send_bytes,
 							  aux_clock_divider);
 
-		send_ctl |= aux_send_ctl_flags;
+			send_ctl |= aux_send_ctl_flags;
+
+			/* Try to wait for any previous AUX channel activity */
+			status = intel_dp_aux_wait_done(intel_dp);
+			/* just trace the final value */
+			trace_i915_reg_rw(false, ch_ctl, status, sizeof(status), true);
+
+			if (status & DP_AUX_CH_CTL_SEND_BUSY) {
+				drm_WARN(&i915->drm, 1,
+					 "%s: not started, previous Tx still in process (status 0x%08x)\n",
+					 intel_dp->aux.name, status);
+				intel_dp->aux_busy_last_status = status;
+				if (try > 3) {
+					ret = -EBUSY;
+					goto out;
+				} else
+					continue;
+			}
 
-		/* Must try at least 3 times according to DP spec */
-		for (try = 0; try < 5; try++) {
 			/* Load the send data into the aux channel data registers */
 			for (i = 0; i < send_bytes; i += 4)
 				intel_de_write(i915, ch_data[i >> 2],
@@ -321,6 +314,7 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
 			/* Send the command and wait for it to complete */
 			intel_de_write(i915, ch_ctl, send_ctl);
 
+			/* TODO: if typeC then 4.2ms else 800us. For DG2 add 1.5ms for both cases */
 			status = intel_dp_aux_wait_done(intel_dp);
 
 			/* Clear done status and any errors */
-- 
2.25.1

