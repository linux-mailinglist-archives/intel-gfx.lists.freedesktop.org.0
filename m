Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 450F590874B
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2024 11:23:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5EEB10ECB9;
	Fri, 14 Jun 2024 09:23:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mrPOWwUM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C64910ECB4
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2024 09:23:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718357015; x=1749893015;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3HxsYHPOtEaeMXZi4yZ4EwqWjr5a+4bmk9/ntnsMlzw=;
 b=mrPOWwUMGbCWzExbFMWuxjGEtvm1hYPGHxHOPIAUtmgSSRDl+jcXDZAZ
 1MikgE6Y3gUUb/Rl1rpOoEjm+RJRlfJRmlFYWOEC+PDcyv6611mpeZQTX
 n2b8x5vQuEUV2Cobi9eQq13eLOWZrElLhEMdfwg+psVmZbGTxKmA59Er1
 HkH3Zr41RVEjreXxL7H4Mo+k1pvlcEDQvXO0s8DgU/2dDjdCT7zXox+6W
 M+02yg5zd4EYjguUZsRcupeDuKA71161AhfjpxzAmUQdIS2Z9IHgTihVS
 ER9fa1/LvJTegMbvuXOACVw5MU3aL+52JId7Kj6wKDc3hruSKBkswOrd/ Q==;
X-CSE-ConnectionGUID: lHzR1YjMRIG/a5Yagzttig==
X-CSE-MsgGUID: E9uTJhUCQHuIQCZQFNqy2A==
X-IronPort-AV: E=McAfee;i="6700,10204,11102"; a="25908839"
X-IronPort-AV: E=Sophos;i="6.08,237,1712646000"; d="scan'208";a="25908839"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2024 02:23:35 -0700
X-CSE-ConnectionGUID: luz+kveTQcSMvpygHR4WpA==
X-CSE-MsgGUID: I7yj+60rRMuMZZdXJi6z1g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,237,1712646000"; d="scan'208";a="40545758"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.221])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2024 02:23:33 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com,
	jani.nikula@intel.com
Subject: [CI 10/11] drm/i915/cdclk: use i9xx_fsb_freq() for rawclk_freq
 initialization
Date: Fri, 14 Jun 2024 12:22:38 +0300
Message-Id: <21511f155f1f446e066117bc6ed3165618d7afd6.1718356614.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1718356614.git.jani.nikula@intel.com>
References: <cover.1718356614.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 46 ++--------------------
 1 file changed, 3 insertions(+), 43 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index c5bc49e48c88..b6adcbd9025f 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -23,6 +23,7 @@
 
 #include <linux/time.h>
 
+#include "soc/intel_dram.h"
 #include "hsw_ips.h"
 #include "i915_reg.h"
 #include "intel_atomic.h"
@@ -3539,10 +3540,8 @@ static int vlv_hrawclk(struct drm_i915_private *dev_priv)
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
@@ -3553,46 +3552,7 @@ static int i9xx_hrawclk(struct drm_i915_private *dev_priv)
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

