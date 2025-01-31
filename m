Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E8D0A23DEB
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2025 13:50:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0ADE10E1EA;
	Fri, 31 Jan 2025 12:50:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="B3kQlK6T";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F96A10EA99;
 Fri, 31 Jan 2025 12:50:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738327848; x=1769863848;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NbJ95WM2wDL3NbbMU5kaedE982xLN2lR9AZMUICLfmc=;
 b=B3kQlK6TwMCmza5zWwjIiR7qmHcXMuooSe+f4wRN2Zu4sy4MwUg2YFey
 EeOnLZlIeJ+CIbwUsgmF7B2BdIKC012m0qDm43hBmqGiCGJFMtSLv9G8z
 g9i923Ds/n+LCvc8aRShlHESrCt7mNpo2TDce5ZKXjC1xusGJolGL9URz
 J2IIv8zlKV/YRtMyBuj5xOU/ZkQ7m2nZHRtipIdGB8x7GY2wzZUA+Th4h
 dIfSFzDACebFsFFG/O9aiKgwulJLHqysQJrhXyCPuAINagho6pY2skrbz
 QrYPOxID3+iIaCfyvpqKyVbpESFvcFtE4kaNcUnEavsd8ul2AeAWk/ZCe Q==;
X-CSE-ConnectionGUID: 6g+ODueDTeStKlgSkl9HAg==
X-CSE-MsgGUID: ardhGeIqQmKzJKG6wOcVOA==
X-IronPort-AV: E=McAfee;i="6700,10204,11332"; a="38599511"
X-IronPort-AV: E=Sophos;i="6.13,248,1732608000"; d="scan'208";a="38599511"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2025 04:50:48 -0800
X-CSE-ConnectionGUID: OjcsF8BuT7O9b+r+WyKD0g==
X-CSE-MsgGUID: i96r6O2fTgyLC3dqGRbA6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,248,1732608000"; d="scan'208";a="114617011"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.174])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2025 04:50:47 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com,
	jani.nikula@intel.com
Subject: [PATCH 06/14] drm/i915/dp: Change icl_dsc_compute_link_config() DSC
 BPP iteration
Date: Fri, 31 Jan 2025 14:49:59 +0200
Message-Id: <bc1972391041a3ba84b3f68b9c0605ae142611e0.1738327620.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1738327620.git.jani.nikula@intel.com>
References: <cover.1738327620.git.jani.nikula@intel.com>
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

Instead of iterating the valid BPP array directly, switch to the same
approach as xelpd_dsc_compute_link_config(), with a separate function to
check if the DSC BPP is valid. This prepares us for unifying the
platform specific functions.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 33 +++++++++++++++++++------
 1 file changed, 26 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 4e7b3dd4067c..ac67f2d2f86a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2069,6 +2069,26 @@ static int intel_dp_dsc_bpp_step_x16(const struct intel_connector *connector)
 	return 16 / incr;
 }
 
+/* Note: This is not universally usable! */
+static bool intel_dp_dsc_valid_bpp(struct intel_dp *intel_dp, int bpp_x16)
+{
+	struct intel_display *display = to_intel_display(intel_dp);
+	int i;
+
+	if (DISPLAY_VER(display) >= 13)
+		return true;
+
+	if (fxp_q4_to_frac(bpp_x16))
+		return false;
+
+	for (i = 0; i < ARRAY_SIZE(valid_dsc_bpp); i++) {
+		if (fxp_q4_to_int(bpp_x16) == valid_dsc_bpp[i])
+			return true;
+	}
+
+	return false;
+}
+
 /*
  * From a list of valid compressed bpps try different compressed bpp and find a
  * suitable link configuration that can support it.
@@ -2082,21 +2102,20 @@ icl_dsc_compute_link_config(struct intel_dp *intel_dp,
 			    int bpp_step_x16,
 			    int timeslots)
 {
-	int i, ret;
+	int bpp_x16;
+	int ret;
 
-	for (i = ARRAY_SIZE(valid_dsc_bpp) - 1; i >= 0; i--) {
-		if (valid_dsc_bpp[i] < fxp_q4_to_int(min_bpp_x16) ||
-		    valid_dsc_bpp[i] > fxp_q4_to_int(max_bpp_x16))
+	for (bpp_x16 = max_bpp_x16; bpp_x16 >= min_bpp_x16; bpp_x16 -= bpp_step_x16) {
+		if (!intel_dp_dsc_valid_bpp(intel_dp, bpp_x16))
 			continue;
 
 		ret = dsc_compute_link_config(intel_dp,
 					      pipe_config,
 					      limits,
-					      valid_dsc_bpp[i] << 4,
+					      bpp_x16,
 					      timeslots);
 		if (ret == 0) {
-			pipe_config->dsc.compressed_bpp_x16 =
-				fxp_q4_from_int(valid_dsc_bpp[i]);
+			pipe_config->dsc.compressed_bpp_x16 = bpp_x16;
 			return 0;
 		}
 	}
-- 
2.39.5

