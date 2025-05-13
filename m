Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B2BBDAB4ADA
	for <lists+intel-gfx@lfdr.de>; Tue, 13 May 2025 07:19:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42B5C10E51D;
	Tue, 13 May 2025 05:19:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gQiKNIX7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9FA4210E50C;
 Tue, 13 May 2025 05:19:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747113544; x=1778649544;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8CUllrCZBDRNlYS7aOLc6I64Frc/MjTM3c/3heL6/iE=;
 b=gQiKNIX7H/Nktj+ozznOUn7wDni+U3Wt2wo5eoz4XmVs+L87pQPyfrfp
 w2JzMvYDp8dxFB68h17upgnZvDm1InEsFvp/nP/pxEojDgwAqKhR8pWD2
 RSp2FBtIapyJ4E/6UzQKSY5WW3EHPq1sCmsDJOEwlJUVpeI1GFi5Qbjcf
 /rPnaHFP4RBzDeq/sGsxjOMSYKdfMIlER0T7S9OIBdocdRUKZc3O7OAwF
 xL/gcNV8bo7Js25ZhSveBBQ5qpB3pKslZvdQdrWJQhyw2CDSdFmBZa1J4
 fZdtmFz9AYI+UcNAPJQQ8Usf8X/JHW1BCIw6nCDDHbslpticVzcIt/Oqu Q==;
X-CSE-ConnectionGUID: JQZd+CAPRwa5lWPZb5UTEA==
X-CSE-MsgGUID: Khh+Ceb1QEmwaT3Iyg/H7g==
X-IronPort-AV: E=McAfee;i="6700,10204,11431"; a="51597803"
X-IronPort-AV: E=Sophos;i="6.15,284,1739865600"; d="scan'208";a="51597803"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2025 22:19:04 -0700
X-CSE-ConnectionGUID: ey0gTcioQiqWPx2QUnDL8w==
X-CSE-MsgGUID: n//a25taTSK4IfDSshpabg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,284,1739865600"; d="scan'208";a="137506156"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa006.jf.intel.com with ESMTP; 12 May 2025 22:19:03 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	ville.syrjala@intel.com
Subject: [PATCH v5 08/17] drm/i915/vrr: Add compute config for DC Balance
 params
Date: Tue, 13 May 2025 10:46:51 +0530
Message-ID: <20250513051700.507389-9-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250513051700.507389-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20250513051700.507389-1-mitulkumar.ajitkumar.golani@intel.com>
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

Compute DC Balance parameters and tunable params based on
experiments.

--v2:
- Document tunable params. (Ankit)

--v3:
- Add line spaces to compute config. (Ankit)
- Remove redundancy checks.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 25 ++++++++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 726fa49558d1..dcaae7631b0a 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -16,6 +16,13 @@
 
 #define FIXED_POINT_PRECISION		100
 #define CMRR_PRECISION_TOLERANCE	10
+/*
+ * Tunable parameters for DC Balance correction.
+ * These are captured based on experimentations.
+ */
+#define DCB_CORRECTION_SENSITIVITY	30
+#define DCB_CORRECTION_AGGRESSIVENESS	1000
+#define DCB_BLANK_TARGET		50
 
 bool intel_vrr_is_capable(struct intel_connector *connector)
 {
@@ -409,6 +416,24 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 			(crtc_state->hw.adjusted_mode.crtc_vtotal -
 			 crtc_state->hw.adjusted_mode.vsync_end);
 	}
+
+	if (crtc_state->vrr.dc_balance.enable) {
+		crtc_state->vrr.dc_balance.vmax = crtc_state->vrr.vmax;
+		crtc_state->vrr.dc_balance.vmin = crtc_state->vrr.vmin;
+		crtc_state->vrr.dc_balance.max_increase =
+			crtc_state->vrr.vmax - crtc_state->vrr.vmin;
+		crtc_state->vrr.dc_balance.max_decrease =
+			crtc_state->vrr.vmax - crtc_state->vrr.vmin;
+		crtc_state->vrr.dc_balance.guardband =
+			DIV_ROUND_UP(crtc_state->vrr.dc_balance.vmax *
+				     DCB_CORRECTION_SENSITIVITY, 100);
+		crtc_state->vrr.dc_balance.slope =
+			DIV_ROUND_UP(DCB_CORRECTION_AGGRESSIVENESS * 10,
+				     crtc_state->vrr.dc_balance.guardband);
+		crtc_state->vrr.dc_balance.vblank_target =
+			DIV_ROUND_UP((crtc_state->vrr.vmax - crtc_state->vrr.vmin) *
+				     DCB_BLANK_TARGET, 100);
+	}
 }
 
 void intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state)
-- 
2.48.1

