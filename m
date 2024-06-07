Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 257EC900584
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jun 2024 15:49:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE11510EC66;
	Fri,  7 Jun 2024 13:49:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gBdXKiVC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3499610EC62
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Jun 2024 13:49:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717768181; x=1749304181;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=i8+LuICqY5Lev7F8TrhgmkwCeCyq90siQ631dvayorw=;
 b=gBdXKiVCwUjZpkTLk+/G+n8XpWu1pl85ceCa/eU0iun1GOzQjV7/lrOb
 6UrGV98bX0jYEulWes/xmcDWjigQDnOxArqhLnVU/rN99jej3Ok0wd29P
 22My+t7b37SXU18LuFOh+KaK6pFbgaT39q9G3U9WYpgroYN74x3t+6B8s
 pwuNhAE/PPJEDpS3NQRipb8//Db9xph9Gj15c2TV3squDjjAaY5GekxGI
 dX0mUhrfQfeSWEt4ux1nVKM5qoMn1CQ/W55h7ejc8l1Og9tX37Prb6/83
 5L0ouFjjzWFlLMK5A3jGi908cFdg5ypfGCGjrK1nWVgzOhADlcp3JSXf4 g==;
X-CSE-ConnectionGUID: GhgBq+JbSHODex56MslaFA==
X-CSE-MsgGUID: 7clx3BfwR4Wo8fVvTVtJiw==
X-IronPort-AV: E=McAfee;i="6600,9927,11096"; a="14331652"
X-IronPort-AV: E=Sophos;i="6.08,221,1712646000"; d="scan'208";a="14331652"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2024 06:49:41 -0700
X-CSE-ConnectionGUID: cBIDXo/DTriYRtKE/9brTQ==
X-CSE-MsgGUID: ZMfek7SQQ/u1KLBjCYiGbA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,221,1712646000"; d="scan'208";a="43458980"
Received: from lhorenst-mobl1.amr.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.213.83])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2024 06:49:39 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 07/13] drm/i915/alpm: Share alpm support checks with PSR code
Date: Fri,  7 Jun 2024 16:49:11 +0300
Message-Id: <20240607134917.1327574-8-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240607134917.1327574-1-jouni.hogander@intel.com>
References: <20240607134917.1327574-1-jouni.hogander@intel.com>
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

Convert intel_alpm_aux_wake_supported and
intel_alpm_aux_less_wake_supported as non-static. Use them in intel_psr.c
instead of local variables.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_alpm.c |  4 ++--
 drivers/gpu/drm/i915/display/intel_alpm.h |  2 ++
 drivers/gpu/drm/i915/display/intel_psr.c  | 14 ++------------
 3 files changed, 6 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index 18c1c5803670..90072f6e3a33 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -11,12 +11,12 @@
 #include "intel_dp_aux.h"
 #include "intel_psr_regs.h"
 
-static bool intel_alpm_aux_wake_supported(struct intel_dp *intel_dp)
+bool intel_alpm_aux_wake_supported(struct intel_dp *intel_dp)
 {
 	return intel_dp->alpm_dpcd & DP_ALPM_CAP;
 }
 
-static bool intel_alpm_aux_less_wake_supported(struct intel_dp *intel_dp)
+bool intel_alpm_aux_less_wake_supported(struct intel_dp *intel_dp)
 {
 	return intel_dp->alpm_dpcd & DP_ALPM_AUX_LESS_CAP;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_alpm.h b/drivers/gpu/drm/i915/display/intel_alpm.h
index c82ecc7b4001..d4fb60393c91 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.h
+++ b/drivers/gpu/drm/i915/display/intel_alpm.h
@@ -22,4 +22,6 @@ void intel_alpm_lobf_compute_config(struct intel_dp *intel_dp,
 void intel_alpm_configure(struct intel_dp *intel_dp,
 			  const struct intel_crtc_state *crtc_state);
 void intel_alpm_lobf_debugfs_add(struct intel_connector *connector);
+bool intel_alpm_aux_wake_supported(struct intel_dp *intel_dp);
+bool intel_alpm_aux_less_wake_supported(struct intel_dp *intel_dp);
 #endif
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 3cc38ba2f954..a3ad4488fcee 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -446,16 +446,6 @@ void intel_psr_irq_handler(struct intel_dp *intel_dp, u32 psr_iir)
 	}
 }
 
-static bool intel_dp_get_alpm_status(struct intel_dp *intel_dp)
-{
-	u8 alpm_caps = 0;
-
-	if (drm_dp_dpcd_readb(&intel_dp->aux, DP_RECEIVER_ALPM_CAP,
-			      &alpm_caps) != 1)
-		return false;
-	return alpm_caps & DP_ALPM_CAP;
-}
-
 static u8 intel_dp_get_sink_sync_latency(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
@@ -600,7 +590,6 @@ static void _psr_init_dpcd(struct intel_dp *intel_dp)
 	    intel_dp->psr_dpcd[0] >= DP_PSR2_WITH_Y_COORD_IS_SUPPORTED) {
 		bool y_req = intel_dp->psr_dpcd[1] &
 			     DP_PSR2_SU_Y_COORDINATE_REQUIRED;
-		bool alpm = intel_dp_get_alpm_status(intel_dp);
 
 		/*
 		 * All panels that supports PSR version 03h (PSR2 +
@@ -613,7 +602,8 @@ static void _psr_init_dpcd(struct intel_dp *intel_dp)
 		 * Y-coordinate requirement panels we would need to enable
 		 * GTC first.
 		 */
-		intel_dp->psr.sink_psr2_support = y_req && alpm;
+		intel_dp->psr.sink_psr2_support = y_req &&
+			intel_alpm_aux_wake_supported(intel_dp);
 		drm_dbg_kms(&i915->drm, "PSR2 %ssupported\n",
 			    intel_dp->psr.sink_psr2_support ? "" : "not ");
 	}
-- 
2.34.1

