Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6682908747
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2024 11:23:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACE7B10ECAF;
	Fri, 14 Jun 2024 09:23:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DqnDw+SP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3756810ECA2
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2024 09:23:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718357007; x=1749893007;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3p2v/Q05HDHybOq/qnEAuMCVJ1q7MEuJEzcUHpEYNG4=;
 b=DqnDw+SPZBXal7XgIh03S1HgvwaSRwca4u8xF9SsaEGrPGFiLBvXWVXa
 DaAcUSO/Af982qc10CO6LI9+wwKPWyYuOvoCKtNgDq2rmiIW954qhhAhJ
 mzlOjkN7gN0yDvog4CtVFanLW86Dq8peBnX+ev7wOL6ZojyarnSt+fLcG
 uby4SDftzV2GZfoQ/efPMjnuOPjJnuFhbHU3BRfT2mDb/RcEC9Ue6efVf
 KScnm8qzphKQMNofvVPL0B1/aMWr7zgWlC7OQWPVqwveDvcBg0kn+w822
 o/g84BgMOR4jAY/2kHgm3b+0/65evnV6koxePA84DusIoh+bCKrQ2IqSK w==;
X-CSE-ConnectionGUID: UD4aEucbTYS0+FDQt/JTUQ==
X-CSE-MsgGUID: nfB2MlDjRO6/+/nJ1erGFQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11102"; a="25908834"
X-IronPort-AV: E=Sophos;i="6.08,237,1712646000"; d="scan'208";a="25908834"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2024 02:23:26 -0700
X-CSE-ConnectionGUID: G3rEDGAmRUesHPdztUk0tg==
X-CSE-MsgGUID: pK5CGbrBTMik5vSSPAxx4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,237,1712646000"; d="scan'208";a="40545730"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.221])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2024 02:23:24 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com,
	jani.nikula@intel.com
Subject: [CI 08/11] drm/i915: extend the fsb_freq initialization to more
 platforms
Date: Fri, 14 Jun 2024 12:22:36 +0300
Message-Id: <7cd6dbd4dafb900ac1dd12be0ec096ff1d5fc6cf.1718356614.git.jani.nikula@intel.com>
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

Initialize fsb frequency for more platforms to be able to use it for GT
clock and rawclk frequency initialization.

Note: There's a discrepancy between existing pnv_fsb_freq() and
i9xx_hrawclk() regarding CLKCFG interpretation. Presume all PNV is
mobile.

Default to 1333 MHz for unknown values, similar to i9xx_hrawclk().

v2:
- Add MISSING_CASE() (Ville)
- Default to the same frequency for both branches (Ville)

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
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

