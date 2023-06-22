Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 997EE73979D
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jun 2023 08:49:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2776010E4D6;
	Thu, 22 Jun 2023 06:49:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 09FDB10E4D6
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Jun 2023 06:49:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687416583; x=1718952583;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=cNNpzvlRKAuJluF8wAKjTvaGLq7g55NsDQkJngY0w44=;
 b=LWMrSE2K9oI9BcLu+BK0bClBF8hatw2x1MO7X6X2tS6o0ZNVero/tzA+
 SF7cOfJUfqQjSNQ0j6I8WHJ5w0RNMldWpcUAYz2STVp5qacmu18whne+u
 tWzEA7MvXmi8daPSjCv+TFdEBjZIahwq2BwEfQYpc7kMvN4cxJMq7Jg2D
 AqebjIgbGtqHqQN9fJ51cJijIqWlfJ9YEhOWu6mLqLPFs6lcqFgiGvRaC
 njoFyW9FGGRI3E6T7ynSn/oll9XL5kAv1Abb4E2IBm5EuMtyeQNOkv80y
 jASkdUbQGX9fWZFWrY7hSNaTa7Zg61KZGUl+xTFN7+8DAc/P9EGfl2U2e g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10748"; a="360421126"
X-IronPort-AV: E=Sophos;i="6.00,262,1681196400"; d="scan'208";a="360421126"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2023 23:49:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10748"; a="859308937"
X-IronPort-AV: E=Sophos;i="6.00,262,1681196400"; d="scan'208";a="859308937"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by fmsmga001.fm.intel.com with ESMTP; 21 Jun 2023 23:49:40 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 22 Jun 2023 12:12:15 +0530
Message-Id: <20230622064215.1147675-1-arun.r.murthy@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [DO_NOT_REVIEW PATCH] drm/i915/display/dp: On AUX xfer
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
v6: Fixed the BAT failure

Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_aux.c | 36 ++++++++++++++-------
 1 file changed, 24 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
index 197c6e81db14..14a0704fb4b4 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
@@ -37,7 +37,7 @@ static void intel_dp_aux_unpack(u32 src, u8 *dst, int dst_bytes)
 }
 
 static u32
-intel_dp_aux_wait_done(struct intel_dp *intel_dp)
+intel_dp_aux_wait_for(struct intel_dp *intel_dp, u32 mask, u32 val)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	i915_reg_t ch_ctl = intel_dp->aux_ch_ctl_reg(intel_dp);
@@ -45,8 +45,7 @@ intel_dp_aux_wait_done(struct intel_dp *intel_dp)
 	u32 status;
 	int ret;
 
-	ret = __intel_de_wait_for_register(i915, ch_ctl,
-					   DP_AUX_CH_CTL_SEND_BUSY, 0,
+	ret = __intel_de_wait_for_register(i915, ch_ctl, mask, val,
 					   2, timeout_ms, &status);
 
 	if (ret == -ETIMEDOUT)
@@ -321,13 +320,8 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
 			/* Send the command and wait for it to complete */
 			intel_de_write(i915, ch_ctl, send_ctl);
 
-			status = intel_dp_aux_wait_done(intel_dp);
-
-			/* Clear done status and any errors */
-			intel_de_write(i915, ch_ctl,
-				       status | DP_AUX_CH_CTL_DONE |
-				       DP_AUX_CH_CTL_TIME_OUT_ERROR |
-				       DP_AUX_CH_CTL_RECEIVE_ERROR);
+			status = intel_dp_aux_wait_for(intel_dp,
+						       DP_AUX_CH_CTL_SEND_BUSY, 0);
 
 			/*
 			 * DP CTS 1.2 Core Rev 1.1, 4.2.1.1 & 4.2.1.2
@@ -335,15 +329,33 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
 			 *   Timeout errors from the HW already meet this
 			 *   requirement so skip to next iteration
 			 */
-			if (status & DP_AUX_CH_CTL_TIME_OUT_ERROR)
+			if (status & DP_AUX_CH_CTL_TIME_OUT_ERROR) {
+				/* Clear the timeout error */
+				intel_de_rmw(i915, ch_ctl, DP_AUX_CH_CTL_TIME_OUT_ERROR, 0);
+
+				/* Clear all errors */
+				status = intel_de_read(i915, ch_ctl);
+				intel_de_write(i915, ch_ctl, status);
 				continue;
+			}
 
 			if (status & DP_AUX_CH_CTL_RECEIVE_ERROR) {
+				/* Clear the reveive error */
+				intel_de_rmw(i915, ch_ctl, DP_AUX_CH_CTL_RECEIVE_ERROR, 0);
 				usleep_range(400, 500);
+				/* Clear all errors */
+				status = intel_de_read(i915, ch_ctl);
+				intel_de_write(i915, ch_ctl, status);
 				continue;
 			}
-			if (status & DP_AUX_CH_CTL_DONE)
+			if (status & DP_AUX_CH_CTL_DONE) {
+				/* Clear aux done */
+				intel_de_rmw(i915, ch_ctl, DP_AUX_CH_CTL_DONE, 0);
+				/* Clear all errors */
+				status = intel_de_read(i915, ch_ctl);
+				intel_de_write(i915, ch_ctl, status);
 				goto done;
+			}
 		}
 	}
 
-- 
2.25.1

