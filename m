Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F294734DDB
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Jun 2023 10:34:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C811010E1BA;
	Mon, 19 Jun 2023 08:34:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C11A10E1BA
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Jun 2023 08:34:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687163684; x=1718699684;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=jcvrMktmmutqBnOYAi+WpZi82r2q5RHNT0dyJsyTWSQ=;
 b=K91LAlM3BBhPgZGfpCjgLi7c20Ia1Hfk5sAMjvP7o4tdNht/ba+fkgUl
 uVFwUN8wEd7dRMR6coRmZtzoucOILysJx5e3cJmVUZTONjSfOUV4Y6T58
 v9Ez5AcUUBVWg8cIWkY7lnwoFu3pEjOFVuECR+uaSP04spSp9oS7BtiIV
 XYYnB92RE85Ny26gQ/T1eFBASPfmr/iE1NB6oh+YRhTbJN/Q9iWPwlH2r
 jkcQ4FBdOjgS7+Rg2iHQM54lcm8gaXi352LQ1cn6Xl0PP13zVOz55+Nju
 d1v8L/uuCZxXkUm3QqrcnzlQ+cJ/VEfbRiDEX0oWpfIffwvSwc0BmINqL A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10745"; a="362112558"
X-IronPort-AV: E=Sophos;i="6.00,254,1681196400"; d="scan'208";a="362112558"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2023 01:34:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10745"; a="803544670"
X-IronPort-AV: E=Sophos;i="6.00,254,1681196400"; d="scan'208";a="803544670"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by FMSMGA003.fm.intel.com with ESMTP; 19 Jun 2023 01:34:41 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 19 Jun 2023 13:57:15 +0530
Message-Id: <20230619082715.922094-1-arun.r.murthy@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCHv4] drm/i915/display/dp: On AUX xfer timeout
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

Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_aux.c | 58 +++++++++------------
 1 file changed, 26 insertions(+), 32 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
index 21b50a5c8a85..abe8047fac39 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
@@ -226,6 +226,7 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
 	int i, ret, recv_bytes;
 	int try, clock = 0;
 	u32 status;
+	u32 send_ctl;
 	bool vdd;
 
 	ch_ctl = intel_dp->aux_ch_ctl_reg(intel_dp);
@@ -273,45 +274,36 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
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
 		goto out;
 	}
+	send_ctl = intel_dp->get_aux_send_ctl(intel_dp,
+					      send_bytes,
+					      aux_clock_divider);
+	send_ctl |= aux_send_ctl_flags;
 
 	while ((aux_clock_divider = intel_dp->get_aux_clock_divider(intel_dp, clock++))) {
-		u32 send_ctl = intel_dp->get_aux_send_ctl(intel_dp,
-							  send_bytes,
-							  aux_clock_divider);
-
-		send_ctl |= aux_send_ctl_flags;
-
-		/* Must try at least 3 times according to DP spec */
+		/* Re-visit : Must try at least 3 times according to DP spec */
 		for (try = 0; try < 5; try++) {
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
+
 			/* Load the send data into the aux channel data registers */
 			for (i = 0; i < send_bytes; i += 4)
 				intel_de_write(i915, ch_data[i >> 2],
@@ -321,6 +313,7 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
 			/* Send the command and wait for it to complete */
 			intel_de_write(i915, ch_ctl, send_ctl);
 
+			/* TODO: if typeC then 4.2ms else 800us. For DG2 add 1.5ms for both cases */
 			status = intel_dp_aux_wait_done(intel_dp);
 
 			/* Clear done status and any errors */
@@ -335,7 +328,8 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
 			 *   Timeout errors from the HW already meet this
 			 *   requirement so skip to next iteration
 			 */
-			if (status & DP_AUX_CH_CTL_TIME_OUT_ERROR)
+			if (status & (DP_AUX_CH_CTL_TIME_OUT_ERROR |
+						DP_AUX_CH_CTL_SEND_BUSY))
 				continue;
 
 			if (status & DP_AUX_CH_CTL_RECEIVE_ERROR) {
-- 
2.25.1

