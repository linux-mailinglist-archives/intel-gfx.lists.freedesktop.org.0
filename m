Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F3E8B8B6AA
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Sep 2025 23:55:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80CEA10EA9A;
	Fri, 19 Sep 2025 21:54:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="H9TNDNr4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DAA210E25D;
 Fri, 19 Sep 2025 21:54:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758318897; x=1789854897;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=jxO4MRRstVduJJJTonZTMlMfb/UFdV37vI+KsD7piEQ=;
 b=H9TNDNr4J8GmrRf2onDquamKmmwFXDPhCcHzIswsecfUDIYU442F8wUe
 6IUBj+2WnATUcLg9t5/F013QYkk98qHq2cSHxAWa8GDM0huI8VEm98Sxa
 fTW1jd49AkluUTE0NwksJdAJr1FwSOfzLWVLf3yED5N9K60F9/exqmwPp
 b4C1LaEnaq4NB+2mKbDDQiNeEcK3KheGrZm9zl2WsejEAiYGzFDXdf6jh
 S+vWOCSDrtGRX0WtKc2T1AGVSUCCzILeW0I0i6Isluj8UAgwEW8CWHsEO
 ZUBege5CfWGUhvsugBT3m2Axu1mmMpAnObvXgnJwJo/mybN/cYerQCAQ8 A==;
X-CSE-ConnectionGUID: 9rWT6GZGSNuz/L7dflHMDg==
X-CSE-MsgGUID: ICjH1eDMQMmbclPmy2tY7Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11558"; a="60825925"
X-IronPort-AV: E=Sophos;i="6.18,279,1751266800"; d="scan'208";a="60825925"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 14:54:57 -0700
X-CSE-ConnectionGUID: 7zX/zDBmTWGdco8mINA+hA==
X-CSE-MsgGUID: EkMh4iycQT2saBCVEOCvLA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,279,1751266800"; d="scan'208";a="179956073"
Received: from administrator-system-product-name.igk.intel.com
 ([10.91.214.181])
 by orviesa003.jf.intel.com with ESMTP; 19 Sep 2025 14:54:56 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH] drm/i915: rename vlv_get_cck_clock() to vlv_clock_get_cck()
Date: Fri, 19 Sep 2025 23:54:13 +0200
Message-ID: <20250919215413.1006296-1-michal.grzelak@intel.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
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

Keep the convention of naming vlv_clock* instead of vlv_*_clock.

Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
---
 drivers/gpu/drm/i915/display/vlv_clock.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/vlv_clock.c b/drivers/gpu/drm/i915/display/vlv_clock.c
index 42c2837b32c1..1abdae453514 100644
--- a/drivers/gpu/drm/i915/display/vlv_clock.c
+++ b/drivers/gpu/drm/i915/display/vlv_clock.c
@@ -36,7 +36,7 @@ int vlv_clock_get_hpll_vco(struct drm_device *drm)
 	return display->vlv_clock.hpll_freq;
 }
 
-static int vlv_get_cck_clock(struct drm_device *drm,
+static int vlv_clock_get_cck(struct drm_device *drm,
 			     const char *name, u32 reg, int ref_freq)
 {
 	u32 val;
@@ -58,7 +58,7 @@ static int vlv_get_cck_clock(struct drm_device *drm,
 int vlv_clock_get_hrawclk(struct drm_device *drm)
 {
 	/* RAWCLK_FREQ_VLV register updated from power well code */
-	return vlv_get_cck_clock(drm, "hrawclk", CCK_DISPLAY_REF_CLOCK_CONTROL,
+	return vlv_clock_get_cck(drm, "hrawclk", CCK_DISPLAY_REF_CLOCK_CONTROL,
 				 vlv_clock_get_hpll_vco(drm));
 }
 
@@ -67,7 +67,7 @@ int vlv_clock_get_czclk(struct drm_device *drm)
 	struct intel_display *display = to_intel_display(drm);
 
 	if (!display->vlv_clock.czclk_freq) {
-		display->vlv_clock.czclk_freq = vlv_get_cck_clock(drm, "czclk", CCK_CZ_CLOCK_CONTROL,
+		display->vlv_clock.czclk_freq = vlv_clock_get_cck(drm, "czclk", CCK_CZ_CLOCK_CONTROL,
 								  vlv_clock_get_hpll_vco(drm));
 		drm_dbg_kms(drm, "CZ clock rate: %d kHz\n", display->vlv_clock.czclk_freq);
 	}
@@ -77,12 +77,12 @@ int vlv_clock_get_czclk(struct drm_device *drm)
 
 int vlv_clock_get_cdclk(struct drm_device *drm)
 {
-	return vlv_get_cck_clock(drm, "cdclk", CCK_DISPLAY_CLOCK_CONTROL,
+	return vlv_clock_get_cck(drm, "cdclk", CCK_DISPLAY_CLOCK_CONTROL,
 				 vlv_clock_get_hpll_vco(drm));
 }
 
 int vlv_clock_get_gpll(struct drm_device *drm)
 {
-	return vlv_get_cck_clock(drm, "GPLL ref", CCK_GPLL_CLOCK_CONTROL,
+	return vlv_clock_get_cck(drm, "GPLL ref", CCK_GPLL_CLOCK_CONTROL,
 				 vlv_clock_get_czclk(drm));
 }
-- 
2.45.2

