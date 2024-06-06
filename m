Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EAA138FE50B
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 13:16:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BD8810E8FB;
	Thu,  6 Jun 2024 11:16:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Axyf41aP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 532ED10E8FA
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 11:16:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717672598; x=1749208598;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=iTvKIgt9oaAK0ATe4kz9O57rPc7GsvaUqwWetIBJ8yM=;
 b=Axyf41aPXofaZApRTawdHqtcoBKrv9dajQlXc8xF9xi6BKj6jQMIAhkR
 UbeK3QTiPXMMhOgz+MSlY6q7xqXclcyY6aqbAyQ+8jeX+Skm+gOMXKLyj
 /Kk1ent/fMycyuHt1X4J1/XqhH9IDiKzoZSuAJgNRB2HSkWHqtpN/PaEf
 0mPRqkegmSt13yS31BuCbsN5/6MwviNxfCBUh2vKA0RDVC0p19RILfJ9Y
 SJvFmAo7orgTgf64PYJaM5/NRbZ8Nz6vFgAY266vEchnj08iVHK1RwHOg
 2TDN+iLGmQxBVlgrSL5l3fUyW1ygP3pe9k7qLL/tfIHENtsVBLxuCjPer Q==;
X-CSE-ConnectionGUID: YBA0p8nmRbuAG+CkKDww/A==
X-CSE-MsgGUID: kDkhS3tyRImoHClS33jdMg==
X-IronPort-AV: E=McAfee;i="6600,9927,11094"; a="14468067"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="14468067"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 04:16:38 -0700
X-CSE-ConnectionGUID: qReUJ3c+R0eSyQivmrdphw==
X-CSE-MsgGUID: YXC1MJxxRKq+HRQR9R6uiQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="38003819"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 04:16:37 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH v2 08/14] drm/i915: extend the fsb_freq initialization to more
 platforms
Date: Thu,  6 Jun 2024 14:16:00 +0300
Message-Id: <c39af4b3b9d452f75b1aaae1821f3a757452b2b3.1717672515.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1717672515.git.jani.nikula@intel.com>
References: <cover.1717672515.git.jani.nikula@intel.com>
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

Initialize fsb frequency for more platforms to be able to use it for GT
clock and rawclk frequency initialization.

Note: There's a discrepancy between existing pnv_fsb_freq() and
i9xx_hrawclk() regarding CLKCFG interpretation. Presume all PNV is
mobile.

Default to 1333 MHz for unknown values, similar to i9xx_hrawclk().

v2:
- Add MISSING_CASE() (Ville)
- Default to the same frequency for both branches (Ville)

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/soc/intel_dram.c | 55 ++++++++++++++++++++-------
 1 file changed, 41 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915/soc/intel_dram.c
index ace9372244a4..1b01e5130f79 100644
--- a/drivers/gpu/drm/i915/soc/intel_dram.c
+++ b/drivers/gpu/drm/i915/soc/intel_dram.c
@@ -142,24 +142,51 @@ static void detect_mem_freq(struct drm_i915_private *i915)
 		drm_dbg(&i915->drm, "DDR speed: %d kHz\n", i915->mem_freq);
 }
 
-static unsigned int pnv_fsb_freq(struct drm_i915_private *i915)
+static unsigned int i9xx_fsb_freq(struct drm_i915_private *i915)
 {
 	u32 fsb;
 
 	fsb = intel_uncore_read(&i915->uncore, CLKCFG) & CLKCFG_FSB_MASK;
 
-	switch (fsb) {
-	case CLKCFG_FSB_400:
-		return 400000;
-	case CLKCFG_FSB_533:
-		return 533333;
-	case CLKCFG_FSB_667:
-		return 666667;
-	case CLKCFG_FSB_800:
-		return 800000;
+	if (IS_PINEVIEW(i915) || IS_MOBILE(i915)) {
+		switch (fsb) {
+		case CLKCFG_FSB_400:
+			return 400000;
+		case CLKCFG_FSB_533:
+			return 533333;
+		case CLKCFG_FSB_667:
+			return 666667;
+		case CLKCFG_FSB_800:
+			return 800000;
+		case CLKCFG_FSB_1067:
+			return 1066667;
+		case CLKCFG_FSB_1333:
+			return 1333333;
+		default:
+			MISSING_CASE(fsb);
+			return 1333333;
+		}
+	} else {
+		switch (fsb) {
+		case CLKCFG_FSB_400_ALT:
+			return 400000;
+		case CLKCFG_FSB_533:
+			return 533333;
+		case CLKCFG_FSB_667:
+			return 666667;
+		case CLKCFG_FSB_800:
+			return 800000;
+		case CLKCFG_FSB_1067_ALT:
+			return 1066667;
+		case CLKCFG_FSB_1333_ALT:
+			return 1333333;
+		case CLKCFG_FSB_1600_ALT:
+			return 1600000;
+		default:
+			MISSING_CASE(fsb);
+			return 1333333;
+		}
 	}
-
-	return 0;
 }
 
 static unsigned int ilk_fsb_freq(struct drm_i915_private *dev_priv)
@@ -193,8 +220,8 @@ static void detect_fsb_freq(struct drm_i915_private *i915)
 {
 	if (GRAPHICS_VER(i915) == 5)
 		i915->fsb_freq = ilk_fsb_freq(i915);
-	else if (IS_PINEVIEW(i915))
-		i915->fsb_freq = pnv_fsb_freq(i915);
+	else if (GRAPHICS_VER(i915) == 3 || GRAPHICS_VER(i915) == 4)
+		i915->fsb_freq = i9xx_fsb_freq(i915);
 
 	if (i915->fsb_freq)
 		drm_dbg(&i915->drm, "FSB frequency: %d kHz\n", i915->fsb_freq);
-- 
2.39.2

