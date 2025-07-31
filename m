Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 376D4B16F2F
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Jul 2025 12:05:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4C2410E766;
	Thu, 31 Jul 2025 10:05:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mDQG24/W";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91AF110E767;
 Thu, 31 Jul 2025 10:05:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753956340; x=1785492340;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=htabxUoaJCg+sOt9fAgomAyyiujrWH+bdhnHfaEvPeY=;
 b=mDQG24/WjCsEnLm2uEMW5+rzkGpDgwY8pwj1b5mAcKokj3LfjuEPlMeK
 nccXakqPE8ngabj8wEY5i6JyLopA0F/rc4NiP69eHMLTW4ai9fx8IrowO
 vass/iwJBAAEHJuGZAqLyWb9Zw0PMrc64RS+d8x3BUZNRjwa6yrr92sgD
 lSux9Tu+XvjYML1J5WwF2Y0RZqS44iv/JnJum9mQrggMZWnSp7i4aBrTF
 Jxvj7JbcSzWLrpf5VEU45Ku5dsQskG6YpfIYNENWpNpLZ+MK6Y+gT/O4y
 Q1pUeHEj56XeNlBUPR9sSDdZa2VFVWEN8W7uYwJk0CpmYjcg9vz/o5eNl w==;
X-CSE-ConnectionGUID: qEJCvWA8QYS8LV8r3egupw==
X-CSE-MsgGUID: uoNJHlapR6efLxSpxBkKgA==
X-IronPort-AV: E=McAfee;i="6800,10657,11507"; a="59923002"
X-IronPort-AV: E=Sophos;i="6.16,353,1744095600"; d="scan'208";a="59923002"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2025 03:05:40 -0700
X-CSE-ConnectionGUID: BmYtg2/mTQmK8ai3rhdc/A==
X-CSE-MsgGUID: 6nV1PctyRryhQ9l9mU5FXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,353,1744095600"; d="scan'208";a="167456319"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.108])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2025 03:05:37 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH v2 4/7] drm/i915/cdclk: use intel_de_wait_custom() instead of
 wait_for_us()
Date: Thu, 31 Jul 2025 13:05:11 +0300
Message-Id: <fadd74e9450afff5e32bf921b192f19ea1629fff.1753956266.git.jani.nikula@intel.com>
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
 drivers/gpu/drm/i915/display/intel_cdclk.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 228aa64c1349..2a2d6714e4f4 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -903,8 +903,10 @@ static void bdw_set_cdclk(struct intel_display *display,
 	 * According to the spec, it should be enough to poll for this 1 us.
 	 * However, extensive testing shows that this can take longer.
 	 */
-	if (wait_for_us(intel_de_read(display, LCPLL_CTL) &
-			LCPLL_CD_SOURCE_FCLK_DONE, 100))
+	ret = intel_de_wait_custom(display, LCPLL_CTL,
+				   LCPLL_CD_SOURCE_FCLK_DONE, LCPLL_CD_SOURCE_FCLK_DONE,
+				   100, 0, NULL);
+	if (ret)
 		drm_err(display->drm, "Switching to FCLK failed\n");
 
 	intel_de_rmw(display, LCPLL_CTL,
@@ -913,8 +915,10 @@ static void bdw_set_cdclk(struct intel_display *display,
 	intel_de_rmw(display, LCPLL_CTL,
 		     LCPLL_CD_SOURCE_FCLK, 0);
 
-	if (wait_for_us((intel_de_read(display, LCPLL_CTL) &
-			 LCPLL_CD_SOURCE_FCLK_DONE) == 0, 1))
+	ret = intel_de_wait_custom(display, LCPLL_CTL,
+				   LCPLL_CD_SOURCE_FCLK_DONE, 0,
+				   1, 0, NULL);
+	if (ret)
 		drm_err(display->drm, "Switching back to LCPLL failed\n");
 
 	intel_pcode_write(display->drm, HSW_PCODE_DE_WRITE_FREQ_REQ,
-- 
2.39.5

