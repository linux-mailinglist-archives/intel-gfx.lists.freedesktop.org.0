Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DCF18D1EB0
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2024 16:26:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F14A1122C5;
	Tue, 28 May 2024 14:26:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Bqo9Crs5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4263410FA16;
 Tue, 28 May 2024 14:25:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716906354; x=1748442354;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UFPLV0K/QJCW5a0HP8MWN60r/LumKh0UVZF2JRSXmAc=;
 b=Bqo9Crs59LxTA9H9zB/p+P0PW6BfZbaBnBeb/y44bRtp12p/4fjO0PUK
 QBcz2/ZN9g/IpjVWZq88OsYnLaFvxjt/iDD9IMIXkrblTBb7fr18JTsna
 wE1Mah+FyL6kINwBlxAjli1YGdTj/IJL6BitSXvatjjtth2LAollioLPH
 3X5rasre3ONbDQURbIWO75EOnPW0QOZAJs6nSxL3QodGq9nGmyJyvyOkP
 SYhq5Quyw3G4zE5gZShDCVG0/Oooxcyw1cVtY1mcf8jBsMiHzQFIUBZbi
 eagRicUxZKDxo20L2+olKDP/yaRJYBAaMOscEsgp9359Dh5a2bfUlAnTo w==;
X-CSE-ConnectionGUID: p7hjyCYuTEC/sbvf8je/Tg==
X-CSE-MsgGUID: /7baVOe4RimSrm9CeRieJw==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="35769089"
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="35769089"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 07:25:54 -0700
X-CSE-ConnectionGUID: hLmegPWrQICcUBlFcltK5g==
X-CSE-MsgGUID: 9eRDaR3PTWCoIhwn+Pgvfw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="39615106"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.13])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 07:25:52 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 09/12] drm/i915/cdclk: use i9xx_fsb_freq() for rawclk_freq
 initialization
Date: Tue, 28 May 2024 17:24:58 +0300
Message-Id: <83e668584c898e445552275a09cc4fa55d68f62a.1716906179.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1716906179.git.jani.nikula@intel.com>
References: <cover.1716906179.git.jani.nikula@intel.com>
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

Instead of duplicating the CLKCFG parsing, reuse i9xx_fsb_freq() to
figure out rawclk_freq where applicable.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 46 ++--------------------
 1 file changed, 3 insertions(+), 43 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index b78154c82a71..c731c489c925 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -23,6 +23,7 @@
 
 #include <linux/time.h>
 
+#include "soc/intel_dram.h"
 #include "hsw_ips.h"
 #include "i915_reg.h"
 #include "intel_atomic.h"
@@ -3529,10 +3530,8 @@ static int vlv_hrawclk(struct drm_i915_private *dev_priv)
 				      CCK_DISPLAY_REF_CLOCK_CONTROL);
 }
 
-static int i9xx_hrawclk(struct drm_i915_private *dev_priv)
+static int i9xx_hrawclk(struct drm_i915_private *i915)
 {
-	u32 clkcfg;
-
 	/*
 	 * hrawclock is 1/4 the FSB frequency
 	 *
@@ -3543,46 +3542,7 @@ static int i9xx_hrawclk(struct drm_i915_private *dev_priv)
 	 * don't know which registers have that information,
 	 * and all the relevant docs have gone to bit heaven :(
 	 */
-	clkcfg = intel_de_read(dev_priv, CLKCFG) & CLKCFG_FSB_MASK;
-
-	if (IS_MOBILE(dev_priv)) {
-		switch (clkcfg) {
-		case CLKCFG_FSB_400:
-			return 100000;
-		case CLKCFG_FSB_533:
-			return 133333;
-		case CLKCFG_FSB_667:
-			return 166667;
-		case CLKCFG_FSB_800:
-			return 200000;
-		case CLKCFG_FSB_1067:
-			return 266667;
-		case CLKCFG_FSB_1333:
-			return 333333;
-		default:
-			MISSING_CASE(clkcfg);
-			return 133333;
-		}
-	} else {
-		switch (clkcfg) {
-		case CLKCFG_FSB_400_ALT:
-			return 100000;
-		case CLKCFG_FSB_533:
-			return 133333;
-		case CLKCFG_FSB_667:
-			return 166667;
-		case CLKCFG_FSB_800:
-			return 200000;
-		case CLKCFG_FSB_1067_ALT:
-			return 266667;
-		case CLKCFG_FSB_1333_ALT:
-			return 333333;
-		case CLKCFG_FSB_1600_ALT:
-			return 400000;
-		default:
-			return 133333;
-		}
-	}
+	return DIV_ROUND_CLOSEST(i9xx_fsb_freq(i915), 4);
 }
 
 /**
-- 
2.39.2

