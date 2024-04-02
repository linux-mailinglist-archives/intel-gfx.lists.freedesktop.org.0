Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 465EA894F0D
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Apr 2024 11:50:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A49310FBD1;
	Tue,  2 Apr 2024 09:50:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bhjo+qwr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA46D10FBD1
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Apr 2024 09:50:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712051433; x=1743587433;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Tz78wr1eWle9La7XLzo1yJR5GtLBYf2wdnczEYrHziU=;
 b=bhjo+qwr8UVXh2it2xtslrTikD3HdGmmgicfa/guCKSwrp4mdGnGRZp2
 sJJB8gwO2ljPm566Z0b2zAlIVkgF53BXxDuQisP4hfaylp7l20Z5OlzbA
 B7mV2azAwHzVtUnEtRcJdCom3bH69C5zEmm/AuVvf0B9fi0xIj7Eug5Dl
 icNgpsbG4rfVcWR6MAK0UYHeFOCgHpQGHWj6njD//atAJ8s329+zclXOy
 PCVz85jddsT73EjLk6vcZftk49nbexNXvyZW05esKcpFD0aQYDqRu2AoX
 JPbN8gefVBvCGUDOKgaewhbiDNEpvu6F+UyYMCEdBhJfnlQWFvW3A6Ih0 Q==;
X-CSE-ConnectionGUID: S9ElocZ7R6CyTFMloRgz2A==
X-CSE-MsgGUID: dzj+5+3XTPK7mG4KYaeVag==
X-IronPort-AV: E=McAfee;i="6600,9927,11031"; a="7422640"
X-IronPort-AV: E=Sophos;i="6.07,174,1708416000"; 
   d="scan'208";a="7422640"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2024 02:50:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,174,1708416000"; d="scan'208";a="22693291"
Received: from sudhirj1-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.249.34.252])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2024 02:50:31 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Animesh Manna <animesh.manna@intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v4 05/19] drm/i915/psr: Check possible errors for panel replay
 as well
Date: Tue,  2 Apr 2024 12:49:57 +0300
Message-Id: <20240402095011.200558-6-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240402095011.200558-1-jouni.hogander@intel.com>
References: <20240402095011.200558-1-jouni.hogander@intel.com>
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

