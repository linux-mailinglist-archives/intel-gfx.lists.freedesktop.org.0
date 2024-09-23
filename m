Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FD2097E584
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2024 06:56:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A2C010E377;
	Mon, 23 Sep 2024 04:56:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Rq3iWz/r";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B10710E377;
 Mon, 23 Sep 2024 04:56:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727067416; x=1758603416;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=sPKZy88IFltZj4sbhsNT5EWqh/xBhy1HFiYZ1K/OT8I=;
 b=Rq3iWz/rAcdK6WTY+r0vy+x5aUB7PMVdVxkt7JvO1KQNZrRnor4P0vG2
 gLoWPI0X34CnLtAAl6KkPK/MfkKqFX7hejvUEJqJXU/k5CD4VClT4QOic
 fPZLrV+ZrXIpRoC7biSzF59s75YcN3WnMsYuL49kL07fLgGxULAaKm84F
 y2yFta5TfCg9yfFbu9p+TUQsZIeVleaaGIJ9pZYKes8XLzM+CxDyqZwv/
 /USP6rQJ/VkgyK/8QFMGldmQn9j2txKFbuTlX6/MbEX9V3EKQbanIubQv
 h6rI+JgyNoFs+WbFKCSXOaLPqrnHQJZgEoAYpnJaZ3XPMnFlqHeJjnL1U A==;
X-CSE-ConnectionGUID: /0LQdCoQSCqTqDHqt0r7bg==
X-CSE-MsgGUID: Ltea39WCR1eSL0bJUYKZYQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11202"; a="36660398"
X-IronPort-AV: E=Sophos;i="6.10,250,1719903600"; d="scan'208,223";a="36660398"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2024 21:56:55 -0700
X-CSE-ConnectionGUID: r9lDJ5HnSFakCmAUiikZDA==
X-CSE-MsgGUID: Y4xCYvyPSS6wt9oGh0kF8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,250,1719903600"; 
 d="scan'208,223";a="101678743"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by orviesa002.jf.intel.com with ESMTP; 22 Sep 2024 21:56:54 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [PATCH] drm/i915/dp: Add FEC Enable Retry mechanism
Date: Mon, 23 Sep 2024 10:22:18 +0530
Message-Id: <20240923045218.1813255-1-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
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

From PTL, FEC_DECODE_EN sequence can be sent to a DPRX independent
of TRANS_CONF enable. This allows us to re-issue an FEC_DECODE_EN
sequence without re-doing the whole mode set sequence. This separate
control over FEC_ECODE_EN/DIS sequence enables us to have a retry
mechanism in case the DPRX does not respond with an FEC_ENABLE
within the stipulated 5ms.

Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 61 +++++++++++++++++++++++-
 1 file changed, 59 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 85e519a21542..589acea9906a 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -78,6 +78,8 @@
 #include "skl_scaler.h"
 #include "skl_universal_plane.h"
 
+#define FEC_RETRY_COUNT 3
+
 static const u8 index_to_dp_signal_levels[] = {
 	[0] = DP_TRAIN_VOLTAGE_SWING_LEVEL_0 | DP_TRAIN_PRE_EMPH_LEVEL_0,
 	[1] = DP_TRAIN_VOLTAGE_SWING_LEVEL_0 | DP_TRAIN_PRE_EMPH_LEVEL_1,
@@ -2255,6 +2257,57 @@ static int read_fec_detected_status(struct drm_dp_aux *aux)
 	return status;
 }
 
+static void retry_fec_enable(struct intel_encoder *encoder,
+			     const struct intel_crtc_state *crtc_state,
+			     struct drm_dp_aux *aux)
+{
+	struct drm_i915_private *i915 = to_i915(aux->drm_dev);
+	int ret = 0;
+
+	/* Clear FEC enable */
+	intel_de_rmw(i915, dp_tp_ctl_reg(encoder, crtc_state),
+		     DP_TP_CTL_FEC_ENABLE, 0);
+
+	/* Set FEC enable */
+	intel_de_rmw(i915, dp_tp_ctl_reg(encoder, crtc_state),
+		     0, DP_TP_CTL_FEC_ENABLE);
+
+	ret = intel_de_wait_for_set(i915, dp_tp_status_reg(encoder, crtc_state),
+				    DP_TP_STATUS_FEC_ENABLE_LIVE, 1);
+	if (!ret)
+		drm_dbg_kms(&i915->drm,
+			    "Timeout waiting for FEC live state to get enabled");
+}
+
+static void wait_for_fec_detected_with_retry(struct intel_encoder *encoder,
+					     const struct intel_crtc_state *crtc_state,
+					     struct drm_dp_aux *aux)
+{
+	struct drm_i915_private *i915 = to_i915(aux->drm_dev);
+	int status;
+	int err;
+	int retrycount = 0;
+
+	do {
+		err = readx_poll_timeout(read_fec_detected_status, aux, status,
+					 status & DP_FEC_DECODE_EN_DETECTED || status < 0,
+					 500, 5000);
+
+		if (!err && status >= 0)
+			return;
+
+		if (err == -ETIMEDOUT) {
+			drm_dbg_kms(&i915->drm,
+				    "Timeout waiting for FEC ENABLE to get detected, retrying\n");
+			retry_fec_enable(encoder, crtc_state, aux);
+		} else {
+			drm_dbg_kms(&i915->drm, "FEC detected status read error: %d\n", status);
+		}
+	} while (retrycount++ < FEC_RETRY_COUNT);
+
+	drm_err(&i915->drm, "FEC enable Failed after Retry\n");
+}
+
 static void wait_for_fec_detected(struct drm_dp_aux *aux, bool enabled)
 {
 	struct drm_i915_private *i915 = to_i915(aux->drm_dev);
@@ -2303,8 +2356,12 @@ void intel_ddi_wait_for_fec_status(struct intel_encoder *encoder,
 	 * At least the Synoptics MST hub doesn't set the detected flag for
 	 * FEC decoding disabling so skip waiting for that.
 	 */
-	if (enabled)
-		wait_for_fec_detected(&intel_dp->aux, enabled);
+	if (enabled) {
+		if (DISPLAY_VER(i915) >= 30)
+			wait_for_fec_detected_with_retry(encoder, crtc_state, &intel_dp->aux);
+		else
+			wait_for_fec_detected(&intel_dp->aux, enabled);
+	}
 }
 
 static void intel_ddi_enable_fec(struct intel_encoder *encoder,
-- 
2.25.1

