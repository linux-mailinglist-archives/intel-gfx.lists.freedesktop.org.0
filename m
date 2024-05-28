Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9134E8D1EAD
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2024 16:25:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95F2010FA16;
	Tue, 28 May 2024 14:25:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TaCTioA6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 186B010E7D0;
 Tue, 28 May 2024 14:25:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716906344; x=1748442344;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SD2S74XjhL7kn6j0UnRqQF32Q41XBPDRp+Ebv0qJ1q4=;
 b=TaCTioA6/dXvWdOGfEpeSM94O4eENBfp92MhofVRc4pW3s1uAM4E7v7q
 Q7c8AI777J8zSFnhkcGx6G3GO6LCSVL7nzRRxZ8X3k4iA8bI/iI9BEUnK
 FqgdLKHm+7tZP4uWPJDwcp1P0Sf2FLN2xN5aqbwdo5ohr29U31BHt+5g4
 AoOafu3rXQyDkH8//YPHS35gMOu5+aiVOu0ZzpuD4wUz05xDxA1QtlWxT
 c7mHjfrXPom5gioKikMazbhbJRPqca4FYNZSCYHlw4suepe+I8baddJVJ
 Wbs1sQSZfsJhNOhAUypF4NUIl0VzOeJ6G7ngDBNzGduyTi+E8ur8b85Qn g==;
X-CSE-ConnectionGUID: /bGyCc2BQrSUqkwQR6gU4w==
X-CSE-MsgGUID: Ol9dnmAXTQuVVjH1ub7rUA==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="35769069"
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="35769069"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 07:25:43 -0700
X-CSE-ConnectionGUID: TyMduuocS4aiOYylPUMMeQ==
X-CSE-MsgGUID: QiyXJQ2TSK2uQKJ6y2BvDw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="39615095"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.13])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 07:25:41 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 07/12] drm/i915: extend the fsb_freq initialization to more
 platforms
Date: Tue, 28 May 2024 17:24:56 +0300
Message-Id: <31252aa5da27d111b9156904ab4f97325431303d.1716906179.git.jani.nikula@intel.com>
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

Initialize fsb frequency for more platforms to be able to use it for GT
clock and rawclk frequency initialization.

Note: There's a discrepancy between existing pnv_fsb_freq() and
i9xx_hrawclk() regarding CLKCFG interpretation. Presume all PNV is
mobile.

FIXME: What should the default or failure mode be when the value is
unknown?

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/soc/intel_dram.c | 54 ++++++++++++++++++++-------
 1 file changed, 40 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915/soc/intel_dram.c
index ace9372244a4..74b5b70e91f9 100644
--- a/drivers/gpu/drm/i915/soc/intel_dram.c
+++ b/drivers/gpu/drm/i915/soc/intel_dram.c
@@ -142,24 +142,50 @@ static void detect_mem_freq(struct drm_i915_private *i915)
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
+			return 533333;
+		}
 	}
-
-	return 0;
 }
 
 static unsigned int ilk_fsb_freq(struct drm_i915_private *dev_priv)
@@ -193,8 +219,8 @@ static void detect_fsb_freq(struct drm_i915_private *i915)
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

