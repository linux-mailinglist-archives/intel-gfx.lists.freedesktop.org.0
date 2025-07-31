Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD16AB16F30
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Jul 2025 12:05:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 743D710E767;
	Thu, 31 Jul 2025 10:05:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KNOnK0o/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 440D110E768;
 Thu, 31 Jul 2025 10:05:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753956344; x=1785492344;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DySLMsVEWL+6bKCJw3YqQzAV+Bc0Dd1tjbBaWlyxqZQ=;
 b=KNOnK0o/pWT/2U7scERfF2SL4fwEh0o4zkG+j/8nqRsIvCyVB0gC6qja
 egw3R5ECKZjU4qKV0ZRDqsth/EKrtwrypQi44jYWSNMgpIhqCTV2GPVQM
 T226yMZ3BWN/7OoQdwXUiMgmdnXibzLi1SBzisTuu7j+4x50zam0fWxC4
 E/DEjSHe70JMzGL8Zykcykbzj2bjtOxLVlL5MH8hpwgLkrz9EOwk+8Fj1
 NRVpW403AHwwVRNTEbDFiLY3clmE1pHJ+uJpVXaayCRlBT1Ru0ZgRQBlq
 TDTK+nLijeQ+SWUkpVpvGVF8tLuyqhNilIwq5uvMWw8+9+iC1pircbFvz A==;
X-CSE-ConnectionGUID: iFBW91FYSiqwknk3Dtw0tA==
X-CSE-MsgGUID: mv5csfTBT8CyPFOvpJVOLg==
X-IronPort-AV: E=McAfee;i="6800,10657,11507"; a="59923017"
X-IronPort-AV: E=Sophos;i="6.16,353,1744095600"; d="scan'208";a="59923017"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2025 03:05:44 -0700
X-CSE-ConnectionGUID: q+be40nzRoeUTF1e4VMsEQ==
X-CSE-MsgGUID: x5VGn3NgT9SN9cT7UfeVWg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,353,1744095600"; d="scan'208";a="167456338"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.108])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2025 03:05:42 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH v2 5/7] drm/i915/power: use intel_de_wait_custom() instead of
 wait_for_us()
Date: Thu, 31 Jul 2025 13:05:12 +0300
Message-Id: <154b681d9545b26453920b155656a65ce685da2a.1753956266.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1753956266.git.jani.nikula@intel.com>
References: <cover.1753956266.git.jani.nikula@intel.com>
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

Prefer the register read specific wait function over i915 wait_for_us().

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 273054c22325..2c2b23a138cc 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -1278,6 +1278,7 @@ static void hsw_disable_lcpll(struct intel_display *display,
 			      bool switch_to_fclk, bool allow_power_down)
 {
 	u32 val;
+	int ret;
 
 	assert_can_disable_lcpll(display);
 
@@ -1287,8 +1288,10 @@ static void hsw_disable_lcpll(struct intel_display *display,
 		val |= LCPLL_CD_SOURCE_FCLK;
 		intel_de_write(display, LCPLL_CTL, val);
 
-		if (wait_for_us(intel_de_read(display, LCPLL_CTL) &
-				LCPLL_CD_SOURCE_FCLK_DONE, 1))
+		ret = intel_de_wait_custom(display, LCPLL_CTL,
+					   LCPLL_CD_SOURCE_FCLK_DONE, LCPLL_CD_SOURCE_FCLK_DONE,
+					   1, 0, NULL);
+		if (ret)
 			drm_err(display->drm, "Switching to FCLK failed\n");
 
 		val = intel_de_read(display, LCPLL_CTL);
@@ -1324,6 +1327,7 @@ static void hsw_restore_lcpll(struct intel_display *display)
 {
 	struct drm_i915_private __maybe_unused *dev_priv = to_i915(display->drm);
 	u32 val;
+	int ret;
 
 	val = intel_de_read(display, LCPLL_CTL);
 
@@ -1358,8 +1362,10 @@ static void hsw_restore_lcpll(struct intel_display *display)
 	if (val & LCPLL_CD_SOURCE_FCLK) {
 		intel_de_rmw(display, LCPLL_CTL, LCPLL_CD_SOURCE_FCLK, 0);
 
-		if (wait_for_us((intel_de_read(display, LCPLL_CTL) &
-				 LCPLL_CD_SOURCE_FCLK_DONE) == 0, 1))
+		ret = intel_de_wait_custom(display, LCPLL_CTL,
+					   LCPLL_CD_SOURCE_FCLK_DONE, 0,
+					   1, 0, NULL);
+		if (ret)
 			drm_err(display->drm,
 				"Switching back to LCPLL failed\n");
 	}
-- 
2.39.5

