Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 327EA736330
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Jun 2023 07:31:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDE2410E25A;
	Tue, 20 Jun 2023 05:31:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88F5710E25A
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Jun 2023 05:31:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687239096; x=1718775096;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=WdBX+OuJHxNmbXaYPA2UnmVpGIA+V3cNAFh8d6ZB5mE=;
 b=bCcmYqeH0BmGQQbjMFmGQE6dO5QCNwxgFAhR9tc+H4Rn/8hBX6HVaweN
 SYNqUH9SghSMXZHqTv7aAou4nFQfsZ1Zr8+TMdkxV9WoTodR39mp2LzHF
 MOG+MtxCw1bGq25mZcYmK60LqkunEZYe444ndIoBuRYd+21/nm2r52nNL
 90MsLT05EZgWl8jFth4OCiUjzSxJhMLDm2ZR80QQV/190TMwlQ6t4LPhi
 rtbqrHqQD08vgBlGGwXnT2QHRAJgN2z98hyZgMynLxLucdOX/aVhkVAuw
 HQtF+lLZO5oB8y3U89Lokm3tFRXw/iyfJbKJrFEfw6P20Ehk/qHwPrBYh g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10746"; a="339384402"
X-IronPort-AV: E=Sophos;i="6.00,256,1681196400"; d="scan'208";a="339384402"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2023 22:31:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10746"; a="1044111569"
X-IronPort-AV: E=Sophos;i="6.00,256,1681196400"; d="scan'208";a="1044111569"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by fmsmga005.fm.intel.com with ESMTP; 19 Jun 2023 22:31:33 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 20 Jun 2023 10:53:50 +0530
Message-Id: <20230620052350.991394-1-arun.r.murthy@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [NOT_FOR_REVIEW PATCH] drm/i915/display/dp: On AUX xfer
 timeout restart freshly
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

At the beginning of the aux transfer a check for aux control busy bit is
done. Then as per the spec on aux transfer timeout, need to retry
freshly for 3 times with a delay which is taken care by the control
register.
On each of these 3 trials a check for busy has to be done so as to start
freshly.

v2: updated the commit message
v4: check for SEND_BUSY after write (Imre)
v5: reverted the send_ctl to the while loop (Jani)

Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_aux.c | 55 ++++++++++-----------
 1 file changed, 25 insertions(+), 30 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
index 21b50a5c8a85..ca86b59b57f8 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
@@ -226,6 +226,7 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
 	int i, ret, recv_bytes;
 	int try, clock = 0;
 	u32 status;
+	u32 send_ctl;
 	bool vdd;
 
 	ch_ctl = intel_dp->aux_ch_ctl_reg(intel_dp);
@@ -273,30 +274,6 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
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
@@ -304,14 +281,31 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
 	}
 
 	while ((aux_clock_divider = intel_dp->get_aux_clock_divider(intel_dp, clock++))) {
-		u32 send_ctl = intel_dp->get_aux_send_ctl(intel_dp,
-							  send_bytes,
-							  aux_clock_divider);
+		/* FIXME: Must try at least 3 times according to DP spec */
+		for (try = 0; try < 5; try++) {
+			send_ctl = intel_dp->get_aux_send_ctl(intel_dp,
+							      send_bytes,
+							      aux_clock_divider);
+			send_ctl |= aux_send_ctl_flags;
 
-		send_ctl |= aux_send_ctl_flags;
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
+				} else {
+					continue;
+				}
+			}
 
-		/* Must try at least 3 times according to DP spec */
-		for (try = 0; try < 5; try++) {
 			/* Load the send data into the aux channel data registers */
 			for (i = 0; i < send_bytes; i += 4)
 				intel_de_write(i915, ch_data[i >> 2],
@@ -321,6 +315,7 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
 			/* Send the command and wait for it to complete */
 			intel_de_write(i915, ch_ctl, send_ctl);
 
+			/* TODO: if typeC then 4.2ms else 800us. For DG2 add 1.5ms for both cases */
 			status = intel_dp_aux_wait_done(intel_dp);
 
 			/* Clear done status and any errors */
-- 
2.25.1

