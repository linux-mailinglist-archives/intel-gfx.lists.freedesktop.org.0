Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA9B18FE50D
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 13:16:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D50410E8FD;
	Thu,  6 Jun 2024 11:16:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="L1Wg6hqn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00B1D10E8FC
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 11:16:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717672605; x=1749208605;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oHU6hHd19roRcwuADRkm2Ffv49ch1s3xOuFUxiN4w60=;
 b=L1Wg6hqn1iC1YYuPYFSgSzpLGtUvvs3RDX7s9VqVXl8AXXWFWu44MXBF
 Rlt9kFE7QmR5sohYTpUy30aQ+v9IzQD3fJgqin0KfdJVYYZ8QldVg7OnQ
 zoSkAqDyiQPGhEHxKjP21F7Si/NLucJ7AeyNUrshfcelKnQGXvi4oIV4Q
 TELY3Er7bi8lr9AOsA45Aas0ghLjT7C41Oln3pGqw1Ht2AKBaVfJZRgF4
 M3zZmEM+acfylzPWfEZbgadmUF92eT6HMKal8W7w5XCegJtK/BWLWVCRR
 Ebt78J+yOmF9i3n/Naj6pGNeMUMjSl+CAV1+tsC4uze0dYmN7h3sW4zAN w==;
X-CSE-ConnectionGUID: IBv49jVNQgGd2z+HWB2Kyg==
X-CSE-MsgGUID: k4bJO8iWQS2EcirArpWx4Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11094"; a="14468072"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="14468072"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 04:16:45 -0700
X-CSE-ConnectionGUID: 6NT2+11DQb+4rZDJCdNrdQ==
X-CSE-MsgGUID: 0XQOX4x4SBuAEeQtpjp2uQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="38003833"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 04:16:44 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH v2 10/14] drm/i915/cdclk: use i9xx_fsb_freq() for rawclk_freq
 initialization
Date: Thu,  6 Jun 2024 14:16:02 +0300
Message-Id: <8117cc078ec43e91eb3b2f626f02f8399306e570.1717672515.git.jani.nikula@intel.com>
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

Instead of duplicating the CLKCFG parsing, reuse i9xx_fsb_freq() to
figure out rawclk_freq where applicable.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 46 ++--------------------
 1 file changed, 3 insertions(+), 43 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 7ef8dcb1601a..7e93984eba11 100644
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

