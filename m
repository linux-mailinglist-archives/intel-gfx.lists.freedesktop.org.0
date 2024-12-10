Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C8839EAE50
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2024 11:47:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D413010E14B;
	Tue, 10 Dec 2024 10:47:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WLhIDtuM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2481E10E14B;
 Tue, 10 Dec 2024 10:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733827620; x=1765363620;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KP8EKWW8H9ie5NUFrI98sY3B5n/1dq3Ly9A4SLSyceU=;
 b=WLhIDtuMCtlHOUYXz+3uIttH+S209qZ90pCVJvMPvZakyOQoMgvKLUlR
 xKl5fQ38zw2hfmU0e1VSVBri7zMu0DzeFU+KAENJXdhB0OSvo5hMeEDoL
 kyH5EpN1iO+elhDmVqhhmLH9p2T+aZHJ3iMpG+TRaiwimf0L2RV1OJvt0
 W7G/HIcKHuhGoKBxgNLfKXj2fokJfYFU/2qlfDserAOzzUneFviHnK5cL
 OPwbeBe12RpfWwoGZXHRQtyAUL3BuLVmi+3nOYgMJpoOmbIS3Le5+oM6C
 dltpsS5Ku9o856W5GV3jutGh9+hc/DIr4LtaEFicscgXX0RGBV2L0bjFW w==;
X-CSE-ConnectionGUID: mddh6yPZTI+gRBVewrI4PQ==
X-CSE-MsgGUID: nirFIB5vQ8CLXqOvH+5oJg==
X-IronPort-AV: E=McAfee;i="6700,10204,11281"; a="37949441"
X-IronPort-AV: E=Sophos;i="6.12,222,1728975600"; d="scan'208";a="37949441"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2024 02:46:59 -0800
X-CSE-ConnectionGUID: KZUW5aDfS1qBTDdU7naxuQ==
X-CSE-MsgGUID: 1kx6WvmGTIa6SmQ3iAUamw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,222,1728975600"; d="scan'208";a="96177538"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.242])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2024 02:46:57 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH v2 5/5] drm/i915/dp: finish link training conversion to struct
 intel_display
Date: Tue, 10 Dec 2024 12:46:30 +0200
Message-Id: <87813733bb561a64cfd134b90826dfa7afbb33d7.1733827537.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1733827537.git.jani.nikula@intel.com>
References: <cover.1733827537.git.jani.nikula@intel.com>
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

