Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F4E9965E71
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2024 12:16:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F2EE10EA5A;
	Fri, 30 Aug 2024 10:16:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="d70GWKZU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 729D210EA5B;
 Fri, 30 Aug 2024 10:16:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725013009; x=1756549009;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UbGv/jZPH7KFzwDCpW3Tg5AotbHs9Vde1viG88ugrhw=;
 b=d70GWKZUdrhGqyekfe1tFpQb6ZAizqegU/qFbThv3q0Qq8quwSTKUhYj
 uqYeUdR+EMqB4ih63CrnpQZMK6ARSboUVx0xKoV3LFhHjWTyrJeQl0L6C
 c2cjh9ZPehGdqvdzoVsPwztk8VTbeXDLstACwAGNUMFKlkRMDQPjzJLc3
 389b3YEwuplg7NRBj/u7HrpNHEUHGrW2s9OifpDlwIqIy63m1vupXChKQ
 U3KT71x20odCSaRjg5xB9b2XdQASddmUU68u9JuDtjnsbZ0a/FK8LcewV
 ElvsBaTTzVb3hYIrOuVjroPS2iZYAL6ySws6/D4WFeW6sPOygsbmPmiol w==;
X-CSE-ConnectionGUID: fJe59ppiRWKRc0+NNanPxQ==
X-CSE-MsgGUID: rIxFdTDzR+Cf5jN/KlwEKQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11179"; a="13295708"
X-IronPort-AV: E=Sophos;i="6.10,188,1719903600"; d="scan'208";a="13295708"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2024 03:16:49 -0700
X-CSE-ConnectionGUID: eFtL33gUQuyBn8Go5ZR7RA==
X-CSE-MsgGUID: +lFucT4VQnaNn42YqjtCNQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,188,1719903600"; d="scan'208";a="68516205"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.88])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2024 03:16:48 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 10/11] drm/i915/ddi: stop using dp_to_i915()
Date: Fri, 30 Aug 2024 13:15:47 +0300
Message-Id: <6557281bc3f8df88931c045deb08cf76b727cda2.1725012870.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1725012870.git.jani.nikula@intel.com>
References: <cover.1725012870.git.jani.nikula@intel.com>
MIME-Version: 1.0
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

Switch to struct intel_display and to_intel_display() instead of using
dp_to_i915().

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 25ff3ff0ab95..00fbe9f8c03a 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -1400,7 +1400,7 @@ static void tgl_dkl_phy_set_signal_levels(struct intel_encoder *encoder,
 static int translate_signal_level(struct intel_dp *intel_dp,
 				  u8 signal_levels)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 	int i;
 
 	for (i = 0; i < ARRAY_SIZE(index_to_dp_signal_levels); i++) {
@@ -1408,7 +1408,7 @@ static int translate_signal_level(struct intel_dp *intel_dp,
 			return i;
 	}
 
-	drm_WARN(&i915->drm, 1,
+	drm_WARN(display->drm, 1,
 		 "Unsupported voltage swing/pre-emphasis level: 0x%x\n",
 		 signal_levels);
 
@@ -2211,14 +2211,14 @@ static void intel_dp_sink_set_msa_timing_par_ignore_state(struct intel_dp *intel
 							  const struct intel_crtc_state *crtc_state,
 							  bool enable)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 
 	if (!crtc_state->vrr.enable)
 		return;
 
 	if (drm_dp_dpcd_writeb(&intel_dp->aux, DP_DOWNSPREAD_CTRL,
 			       enable ? DP_MSA_TIMING_PAR_IGNORE_EN : 0) <= 0)
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "Failed to %s MSA_TIMING_PAR_IGNORE in the sink\n",
 			    str_enable_disable(enable));
 }
@@ -2227,20 +2227,20 @@ static void intel_dp_sink_set_fec_ready(struct intel_dp *intel_dp,
 					const struct intel_crtc_state *crtc_state,
 					bool enable)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 
 	if (!crtc_state->fec_enable)
 		return;
 
 	if (drm_dp_dpcd_writeb(&intel_dp->aux, DP_FEC_CONFIGURATION,
 			       enable ? DP_FEC_READY : 0) <= 0)
-		drm_dbg_kms(&i915->drm, "Failed to set FEC_READY to %s in the sink\n",
+		drm_dbg_kms(display->drm, "Failed to set FEC_READY to %s in the sink\n",
 			    enable ? "enabled" : "disabled");
 
 	if (enable &&
 	    drm_dp_dpcd_writeb(&intel_dp->aux, DP_FEC_STATUS,
 			       DP_FEC_DECODE_EN_DETECTED | DP_FEC_DECODE_DIS_DETECTED) <= 0)
-		drm_dbg_kms(&i915->drm, "Failed to clear FEC detected flags\n");
+		drm_dbg_kms(display->drm, "Failed to clear FEC detected flags\n");
 }
 
 static int read_fec_detected_status(struct drm_dp_aux *aux)
-- 
2.39.2

