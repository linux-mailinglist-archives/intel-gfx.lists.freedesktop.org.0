Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 12BC7727B9D
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jun 2023 11:39:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9F4910E40F;
	Thu,  8 Jun 2023 09:39:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA95C10E40F
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jun 2023 09:39:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686217187; x=1717753187;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=2QrRl6vn6hRnBuWpvZTfYJfCAh8A/5NQ8H481g/KGeg=;
 b=CPuhtLqGjjwrgKBtfg0Gr5ybVtkOje+dYN7xDpZi6QyizU/RdrIYF+ti
 pI4k0qYba1a/VOa0MDzNixAt1D1QXUtLT3FPQFqmsQ6oVmITB9YYbcTxu
 +PTx7KaSC0Ir6Cgq3JBPAYH6XN+CFKxNWjCoRj4wkflFSqP7xWbmDewh6
 ROo/sxJzAcf/E4lcdJ3IZqVEQMx2Rix6pYKVuBscZS3semEASYDH3VIfB
 kbGBhFcCl+/3avurk5hDLDc5a0ktoA7F7L2rTWcolOLNesjQMKGapT9vn
 KLIZPW6zkt0dcUPoPhZS3cHjm7vgY0dWRZvQPgB64YVFtpbheFGxA32B8 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="341918767"
X-IronPort-AV: E=Sophos;i="6.00,226,1681196400"; d="scan'208";a="341918767"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2023 02:39:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="854268560"
X-IronPort-AV: E=Sophos;i="6.00,226,1681196400"; d="scan'208";a="854268560"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by fmsmga001.fm.intel.com with ESMTP; 08 Jun 2023 02:39:45 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Jun 2023 15:02:18 +0530
Message-Id: <20230608093218.511280-1-arun.r.murthy@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCHv2] drm/i915/display/dp: On AUX xfer timeout
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

At the begining of the aux transfer a check for aux control busy bit is
done. Then as per the spec on aux transfer timeout, need to retry
freshly for 3 times with a delay which is taken care by the control
register.
On each of these 3 trials a check for busy has to be done so as to start
freshly.

v2: updated the commit message

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

