Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F2C48969CA
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Apr 2024 11:00:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 163CE1128EC;
	Wed,  3 Apr 2024 09:00:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="R7iFtsC3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0655A1128EA
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Apr 2024 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712134834; x=1743670834;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Tz78wr1eWle9La7XLzo1yJR5GtLBYf2wdnczEYrHziU=;
 b=R7iFtsC3Zu4m1Rydvx6G9E6COCFKlKLMJjnYpkop+mm41CgwLTgiwDDa
 +B3qMVkkTn7uOi/UmHuWqqPKLHTFzB2nbLbDbWHdr5B3qBh5D3m49b4Ug
 5/NTmJK6zLR14oytjucy/8ypX3R6jr0fETKIQtyRZpaYnWSJKSqwkWGBj
 vfgP3H63QBGo1Qpe6ma7HP1yCyU3Pc9A5Y6eAr0OyD0qFyxXSEis/CD4E
 L6uYveo+4rBrk9ZMkjE/cz+AemNj/d2ABfT3AHoXCTpFDnuFe5JjSdf8M
 nQq11/CK8Epx/3IlDXFkXGfnn/mGVuf7ysZDh1munqbWErGUMtCw1mKjr Q==;
X-CSE-ConnectionGUID: bbdrNJoIQzeqjGwCCi4QlQ==
X-CSE-MsgGUID: IqywF09HQT2+NRoGMavHZg==
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="7472412"
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; 
   d="scan'208";a="7472412"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 02:00:33 -0700
X-CSE-ConnectionGUID: kCBdJfKsTxSW1a5VpE5nGQ==
X-CSE-MsgGUID: zE2qQlISTg6pxaRr34RWEQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="18453016"
Received: from esavax-mobl.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.249.35.175])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 02:00:32 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Animesh Manna <animesh.manna@intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v5 05/19] drm/i915/psr: Check possible errors for panel replay
 as well
Date: Wed,  3 Apr 2024 11:59:59 +0300
Message-Id: <20240403090013.54296-6-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240403090013.54296-1-jouni.hogander@intel.com>
References: <20240403090013.54296-1-jouni.hogander@intel.com>
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
Reviewed-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 21 ++++++++++++++++-----
 1 file changed, 16 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 07c1ddec2d86..d7547eefc2fa 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -3256,6 +3256,13 @@ static void psr_capability_changed_check(struct intel_dp *intel_dp)
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
@@ -3265,7 +3272,7 @@ void intel_psr_short_pulse(struct intel_dp *intel_dp)
 			  DP_PSR_VSC_SDP_UNCORRECTABLE_ERROR |
 			  DP_PSR_LINK_CRC_ERROR;
 
-	if (!CAN_PSR(intel_dp))
+	if (!CAN_PSR(intel_dp) && !CAN_PANEL_REPLAY(intel_dp))
 		return;
 
 	mutex_lock(&psr->lock);
@@ -3279,12 +3286,14 @@ void intel_psr_short_pulse(struct intel_dp *intel_dp)
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
@@ -3304,8 +3313,10 @@ void intel_psr_short_pulse(struct intel_dp *intel_dp)
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

