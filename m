Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 740B6AEA4A6
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Jun 2025 19:44:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74F7B10E8D4;
	Thu, 26 Jun 2025 17:44:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GOLouUlQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD25010E8DF;
 Thu, 26 Jun 2025 17:44:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750959847; x=1782495847;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DySLMsVEWL+6bKCJw3YqQzAV+Bc0Dd1tjbBaWlyxqZQ=;
 b=GOLouUlQh4GOpnsckf0snhCw+fswEs5sKmy06vLuJoFXkhXHJM+ixB4p
 D0reOl41b27VEFZ0EzHTaEQO/l/K/GvV1MYNEGKmSTN2+t1/JqH2Be2io
 Gc8BKV4lJl/h0oAG/mQmdSHnrs9EK9GZ7LhQbPzysg8laujj2bImXhKKm
 AIYCt1D63qkBQqZ04dUu6Rwnac/JFXAsB5SPmYp04rUKTW77aJLZCEnmQ
 WBqbL0Z8tcAMjF3KO/wvcei/yfW7CKEGRyiDxR30ZFDjiLbSKWBX/wGta
 5nMxzQSb046QEXN7miKD2Tga5U47xD9YURTm85LEfbENv+U/Ua7ZPm4rb w==;
X-CSE-ConnectionGUID: fATQ//VlS/GHcxcmhkwZlw==
X-CSE-MsgGUID: V0pYuFStTMOw2NhEfG7XLg==
X-IronPort-AV: E=McAfee;i="6800,10657,11476"; a="52387810"
X-IronPort-AV: E=Sophos;i="6.16,268,1744095600"; d="scan'208";a="52387810"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 10:44:07 -0700
X-CSE-ConnectionGUID: HWSUi21pToGa+HrQxW/4Yw==
X-CSE-MsgGUID: By0h0CryS9CPvkpwPF+W3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,268,1744095600"; d="scan'208";a="152869086"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.120])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 10:43:55 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 6/8] drm/i915/power: use intel_de_wait_custom() instead of
 wait_for_us()
Date: Thu, 26 Jun 2025 20:43:04 +0300
Message-Id: <9a435b47aa53e10220d0f8ec0fd85a608fcad1cd.1750959689.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1750959689.git.jani.nikula@intel.com>
References: <cover.1750959689.git.jani.nikula@intel.com>
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

