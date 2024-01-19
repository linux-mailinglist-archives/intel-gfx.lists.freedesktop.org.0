Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 34D5F832771
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jan 2024 11:11:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D28E10E9D3;
	Fri, 19 Jan 2024 10:11:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1465C10E9D9
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Jan 2024 10:10:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705659059; x=1737195059;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7KBSiOQb3w25VFnrcK3dhEsT3MizWHFu7JfurGawHxw=;
 b=Qx0pHn+BEEji6UZVpcAZgEaFpHCg0s9GPhy/2jlJ/xCb6VfZ0PjciVho
 g/hDU4tVidNu9Lq8FR/RcYQPO0IkPT8Cm/o7+3Fi3C3aHYTl/P0pTyKbb
 L8zNVMYkzJzoGRif/gnMKt3342bMWP5+Qw5/CZUwRTdBa0qqWVKN6+Jhi
 4h2PAphTbIjN6zPd9hFj+tgQdT2X0yaEJ/iGRVTFgu8wPLlQGXmNfnsCO
 gxgtR90A0z4LzpEij2VMsWqgZ2zp5DiWAUmMm7k0kkrKY+T+UpX4s8Xa8
 Rs4i2BYPLNUoQl6JM88IlGhe98mvx/YSQyp5fiFlUdvB/ggcrUZhm0QAh A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10956"; a="14070738"
X-IronPort-AV: E=Sophos;i="6.05,204,1701158400"; d="scan'208";a="14070738"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2024 02:10:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,204,1701158400"; 
   d="scan'208";a="563217"
Received: from randiapp-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.249.39.12])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2024 02:10:57 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v3 06/21] drm/i915/psr: Check possible errors for panel replay
 as well
Date: Fri, 19 Jan 2024 12:10:09 +0200
Message-Id: <20240119101024.1060812-7-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240119101024.1060812-1-jouni.hogander@intel.com>
References: <20240119101024.1060812-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

On HPD interrupt we want to check if the reason for HPD was some panel
replay error detected by monitor/panel. This is already done for PSR. We
want to do this for panel replay as well. Modify intel_psr_short_pulse to
support panel replay as well.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 21 ++++++++++++++++-----
 1 file changed, 16 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 893c72ea8cf1..6d7ef74201d2 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2959,6 +2959,13 @@ static void psr_capability_changed_check(struct intel_dp *intel_dp)
 	}
 }
 
+/*
+ * On common bits:
+ * DP_PSR_RFB_STORAGE_ERROR == DP_PANEL_REPLAY_RFB_STORAGE_ERROR
+ * DP_PSR_VSC_SDP_UNCORRECTABLE_ERROR == DP_PANEL_REPLAY_VSC_SDP_UNCORRECTABLE_ERROR
+ * DP_PSR_LINK_CRC_ERROR == DP_PANEL_REPLAY_LINK_CRC_ERROR
+ * this function is relying on PSR definitions
+ */
 void intel_psr_short_pulse(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
@@ -2968,7 +2975,7 @@ void intel_psr_short_pulse(struct intel_dp *intel_dp)
 			  DP_PSR_VSC_SDP_UNCORRECTABLE_ERROR |
 			  DP_PSR_LINK_CRC_ERROR;
 
-	if (!CAN_PSR(intel_dp))
+	if (!CAN_PSR(intel_dp) && !CAN_PANEL_REPLAY(intel_dp))
 		return;
 
 	mutex_lock(&psr->lock);
@@ -2982,12 +2989,14 @@ void intel_psr_short_pulse(struct intel_dp *intel_dp)
 		goto exit;
 	}
 
-	if (status == DP_PSR_SINK_INTERNAL_ERROR || (error_status & errors)) {
+	if ((!psr->panel_replay_enabled && status == DP_PSR_SINK_INTERNAL_ERROR) ||
+	    (error_status & errors)) {
 		intel_psr_disable_locked(intel_dp);
 		psr->sink_not_reliable = true;
 	}
 
-	if (status == DP_PSR_SINK_INTERNAL_ERROR && !error_status)
+	if (!psr->panel_replay_enabled && status == DP_PSR_SINK_INTERNAL_ERROR &&
+	    !error_status)
 		drm_dbg_kms(&dev_priv->drm,
 			    "PSR sink internal error, disabling PSR\n");
 	if (error_status & DP_PSR_RFB_STORAGE_ERROR)
@@ -3007,8 +3016,10 @@ void intel_psr_short_pulse(struct intel_dp *intel_dp)
 	/* clear status register */
 	drm_dp_dpcd_writeb(&intel_dp->aux, DP_PSR_ERROR_STATUS, error_status);
 
-	psr_alpm_check(intel_dp);
-	psr_capability_changed_check(intel_dp);
+	if (!psr->panel_replay_enabled) {
+		psr_alpm_check(intel_dp);
+		psr_capability_changed_check(intel_dp);
+	}
 
 exit:
 	mutex_unlock(&psr->lock);
-- 
2.34.1

