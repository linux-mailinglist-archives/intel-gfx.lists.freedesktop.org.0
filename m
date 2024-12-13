Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A3239F0869
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2024 10:49:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2803910EE6C;
	Fri, 13 Dec 2024 09:49:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GN/NMms/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E51A610EE6C;
 Fri, 13 Dec 2024 09:48:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734083340; x=1765619340;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tEPTzBRYWi+sPa3g1RL/OyDbHHypbNdUKz7W/jrQMfY=;
 b=GN/NMms/htXz30sKem8Gg//mJFBuoaSaKTn9a70heFODUFOU5I3sUulG
 6KWgcfzgOjDrnRSt2sslaHvV8HwDdh6zuClrY9SxE0eZdzW4uBVPWBHhB
 KB9sMyCKm1+UMv3Atmhi8eRQ2DZHWUiu2reexMjFhh2wYbZQRGt/V4nE+
 8goQQCMcd1L/93EW/Z2/tnZ/+iKDMl4Ikz5o50thi5ebROXARmQD5VzrZ
 rd2cbm/ddUST37eNt1QM5dIZc5gKbwWohv6NbQ+9QgK0dUXkruxlg+xsa
 lW2vuXkj0Pmahn+AFRm+geKcmEz9ErNnNJLoh6WW9v7BwVxDzufBkV8/H g==;
X-CSE-ConnectionGUID: 9q09pguVTKS/jNxnurSdRg==
X-CSE-MsgGUID: 8xAJB1a8SoWNV/6iBJ1/DQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11284"; a="34671943"
X-IronPort-AV: E=Sophos;i="6.12,230,1728975600"; d="scan'208";a="34671943"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2024 01:49:00 -0800
X-CSE-ConnectionGUID: aZoc/ykQTW+MM6lmueDZQg==
X-CSE-MsgGUID: 3H7a0lwGRPO+oIiWOH37OA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,230,1728975600"; d="scan'208";a="96378450"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.159])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2024 01:48:57 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Luca Coelho <luciano.coelho@intel.com>
Subject: [PATCH v3 5/5] drm/i915/dp: finish link training conversion to struct
 intel_display
Date: Fri, 13 Dec 2024 11:48:25 +0200
Message-Id: <14a214fc358eafba8d57c25e0d26c8c35856dc89.1734083244.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1734083244.git.jani.nikula@intel.com>
References: <cover.1734083244.git.jani.nikula@intel.com>
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

Convert the final stragglers to struct intel_display now that we have
platform identification via it too.

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_link_training.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index b84fee94c0a0..02ad0fbb1859 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -221,7 +221,6 @@ static int intel_dp_init_lttpr(struct intel_dp *intel_dp, const u8 dpcd[DP_RECEI
 int intel_dp_read_dprx_caps(struct intel_dp *intel_dp, u8 dpcd[DP_RECEIVER_CAP_SIZE])
 {
 	struct intel_display *display = to_intel_display(intel_dp);
-	struct drm_i915_private *i915 = to_i915(display->drm);
 
 	if (intel_dp_is_edp(intel_dp))
 		return 0;
@@ -230,7 +229,7 @@ int intel_dp_read_dprx_caps(struct intel_dp *intel_dp, u8 dpcd[DP_RECEIVER_CAP_S
 	 * Detecting LTTPRs must be avoided on platforms with an AUX timeout
 	 * period < 3.2ms. (see DP Standard v2.0, 2.11.2, 3.6.6.1).
 	 */
-	if (DISPLAY_VER(display) >= 10 && !IS_GEMINILAKE(i915))
+	if (DISPLAY_VER(display) >= 10 && !display->platform.geminilake)
 		if (drm_dp_dpcd_probe(&intel_dp->aux,
 				      DP_LT_TUNABLE_PHY_REPEATER_FIELD_DATA_STRUCTURE_REV))
 			return -EIO;
@@ -262,7 +261,6 @@ int intel_dp_read_dprx_caps(struct intel_dp *intel_dp, u8 dpcd[DP_RECEIVER_CAP_S
 int intel_dp_init_lttpr_and_dprx_caps(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	int lttpr_count = 0;
 
 	/*
@@ -270,7 +268,7 @@ int intel_dp_init_lttpr_and_dprx_caps(struct intel_dp *intel_dp)
 	 * period < 3.2ms. (see DP Standard v2.0, 2.11.2, 3.6.6.1).
 	 */
 	if (!intel_dp_is_edp(intel_dp) &&
-	    (DISPLAY_VER(display) >= 10 && !IS_GEMINILAKE(i915))) {
+	    (DISPLAY_VER(display) >= 10 && !display->platform.geminilake)) {
 		u8 dpcd[DP_RECEIVER_CAP_SIZE];
 		int err = intel_dp_read_dprx_caps(intel_dp, dpcd);
 
@@ -391,10 +389,9 @@ static bool has_per_lane_signal_levels(struct intel_dp *intel_dp,
 				       enum drm_dp_phy dp_phy)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
-	struct drm_i915_private *i915 = to_i915(display->drm);
 
 	return !intel_dp_phy_is_downstream_of_source(intel_dp, dp_phy) ||
-		DISPLAY_VER(display) >= 10 || IS_BROXTON(i915);
+		DISPLAY_VER(display) >= 10 || display->platform.broxton;
 }
 
 /* 128b/132b */
-- 
2.39.5

