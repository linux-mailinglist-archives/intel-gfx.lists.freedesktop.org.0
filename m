Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E491D3F7963
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Aug 2021 17:48:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FDCB89842;
	Wed, 25 Aug 2021 15:48:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A2E089842
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Aug 2021 15:48:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10087"; a="197789144"
X-IronPort-AV: E=Sophos;i="5.84,351,1620716400"; d="scan'208";a="197789144"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2021 08:48:19 -0700
X-IronPort-AV: E=Sophos;i="5.84,351,1620716400"; d="scan'208";a="456099161"
Received: from mburkard-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.251.213.64])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2021 08:48:17 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Date: Wed, 25 Aug 2021 18:47:51 +0300
Message-Id: <b0037775480380e5d73d0b112da478d6f0ea30fe.1629906431.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1629906431.git.jani.nikula@intel.com>
References: <cover.1629906431.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/5] drm/i915/fdi: move fdi mphy reset and
 programming to intel_fdi.c
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

This fairly detailed stuff that really has no place in
intel_display.c. Combine the calls into one to avoid exposing both.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 102 +------------------
 drivers/gpu/drm/i915/display/intel_fdi.c     | 100 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_fdi.h     |   1 +
 3 files changed, 103 insertions(+), 100 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index e7b6969cd2e2..c8da214083b5 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4916,102 +4916,6 @@ static void ilk_init_pch_refclk(struct drm_i915_private *dev_priv)
 	BUG_ON(val != final);
 }
 
-static void lpt_reset_fdi_mphy(struct drm_i915_private *dev_priv)
-{
-	u32 tmp;
-
-	tmp = intel_de_read(dev_priv, SOUTH_CHICKEN2);
-	tmp |= FDI_MPHY_IOSFSB_RESET_CTL;
-	intel_de_write(dev_priv, SOUTH_CHICKEN2, tmp);
-
-	if (wait_for_us(intel_de_read(dev_priv, SOUTH_CHICKEN2) &
-			FDI_MPHY_IOSFSB_RESET_STATUS, 100))
-		drm_err(&dev_priv->drm, "FDI mPHY reset assert timeout\n");
-
-	tmp = intel_de_read(dev_priv, SOUTH_CHICKEN2);
-	tmp &= ~FDI_MPHY_IOSFSB_RESET_CTL;
-	intel_de_write(dev_priv, SOUTH_CHICKEN2, tmp);
-
-	if (wait_for_us((intel_de_read(dev_priv, SOUTH_CHICKEN2) &
-			 FDI_MPHY_IOSFSB_RESET_STATUS) == 0, 100))
-		drm_err(&dev_priv->drm, "FDI mPHY reset de-assert timeout\n");
-}
-
-/* WaMPhyProgramming:hsw */
-static void lpt_program_fdi_mphy(struct drm_i915_private *dev_priv)
-{
-	u32 tmp;
-
-	tmp = intel_sbi_read(dev_priv, 0x8008, SBI_MPHY);
-	tmp &= ~(0xFF << 24);
-	tmp |= (0x12 << 24);
-	intel_sbi_write(dev_priv, 0x8008, tmp, SBI_MPHY);
-
-	tmp = intel_sbi_read(dev_priv, 0x2008, SBI_MPHY);
-	tmp |= (1 << 11);
-	intel_sbi_write(dev_priv, 0x2008, tmp, SBI_MPHY);
-
-	tmp = intel_sbi_read(dev_priv, 0x2108, SBI_MPHY);
-	tmp |= (1 << 11);
-	intel_sbi_write(dev_priv, 0x2108, tmp, SBI_MPHY);
-
-	tmp = intel_sbi_read(dev_priv, 0x206C, SBI_MPHY);
-	tmp |= (1 << 24) | (1 << 21) | (1 << 18);
-	intel_sbi_write(dev_priv, 0x206C, tmp, SBI_MPHY);
-
-	tmp = intel_sbi_read(dev_priv, 0x216C, SBI_MPHY);
-	tmp |= (1 << 24) | (1 << 21) | (1 << 18);
-	intel_sbi_write(dev_priv, 0x216C, tmp, SBI_MPHY);
-
-	tmp = intel_sbi_read(dev_priv, 0x2080, SBI_MPHY);
-	tmp &= ~(7 << 13);
-	tmp |= (5 << 13);
-	intel_sbi_write(dev_priv, 0x2080, tmp, SBI_MPHY);
-
-	tmp = intel_sbi_read(dev_priv, 0x2180, SBI_MPHY);
-	tmp &= ~(7 << 13);
-	tmp |= (5 << 13);
-	intel_sbi_write(dev_priv, 0x2180, tmp, SBI_MPHY);
-
-	tmp = intel_sbi_read(dev_priv, 0x208C, SBI_MPHY);
-	tmp &= ~0xFF;
-	tmp |= 0x1C;
-	intel_sbi_write(dev_priv, 0x208C, tmp, SBI_MPHY);
-
-	tmp = intel_sbi_read(dev_priv, 0x218C, SBI_MPHY);
-	tmp &= ~0xFF;
-	tmp |= 0x1C;
-	intel_sbi_write(dev_priv, 0x218C, tmp, SBI_MPHY);
-
-	tmp = intel_sbi_read(dev_priv, 0x2098, SBI_MPHY);
-	tmp &= ~(0xFF << 16);
-	tmp |= (0x1C << 16);
-	intel_sbi_write(dev_priv, 0x2098, tmp, SBI_MPHY);
-
-	tmp = intel_sbi_read(dev_priv, 0x2198, SBI_MPHY);
-	tmp &= ~(0xFF << 16);
-	tmp |= (0x1C << 16);
-	intel_sbi_write(dev_priv, 0x2198, tmp, SBI_MPHY);
-
-	tmp = intel_sbi_read(dev_priv, 0x20C4, SBI_MPHY);
-	tmp |= (1 << 27);
-	intel_sbi_write(dev_priv, 0x20C4, tmp, SBI_MPHY);
-
-	tmp = intel_sbi_read(dev_priv, 0x21C4, SBI_MPHY);
-	tmp |= (1 << 27);
-	intel_sbi_write(dev_priv, 0x21C4, tmp, SBI_MPHY);
-
-	tmp = intel_sbi_read(dev_priv, 0x20EC, SBI_MPHY);
-	tmp &= ~(0xF << 28);
-	tmp |= (4 << 28);
-	intel_sbi_write(dev_priv, 0x20EC, tmp, SBI_MPHY);
-
-	tmp = intel_sbi_read(dev_priv, 0x21EC, SBI_MPHY);
-	tmp &= ~(0xF << 28);
-	tmp |= (4 << 28);
-	intel_sbi_write(dev_priv, 0x21EC, tmp, SBI_MPHY);
-}
-
 /* Implements 3 different sequences from BSpec chapter "Display iCLK
  * Programming" based on the parameters passed:
  * - Sequence to enable CLKOUT_DP
@@ -5044,10 +4948,8 @@ static void lpt_enable_clkout_dp(struct drm_i915_private *dev_priv,
 		tmp &= ~SBI_SSCCTL_PATHALT;
 		intel_sbi_write(dev_priv, SBI_SSCCTL, tmp, SBI_ICLK);
 
-		if (with_fdi) {
-			lpt_reset_fdi_mphy(dev_priv);
-			lpt_program_fdi_mphy(dev_priv);
-		}
+		if (with_fdi)
+			lpt_fdi_program_mphy(dev_priv);
 	}
 
 	reg = HAS_PCH_LPT_LP(dev_priv) ? SBI_GEN0 : SBI_DBUFF0;
diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/i915/display/intel_fdi.c
index f5e42985084a..cc83a6532a71 100644
--- a/drivers/gpu/drm/i915/display/intel_fdi.c
+++ b/drivers/gpu/drm/i915/display/intel_fdi.c
@@ -2,11 +2,13 @@
 /*
  * Copyright © 2020 Intel Corporation
  */
+
 #include "intel_atomic.h"
 #include "intel_ddi.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
 #include "intel_fdi.h"
+#include "intel_sideband.h"
 
 /* units of 100MHz */
 static int pipe_required_fdi_lanes(struct intel_crtc_state *crtc_state)
@@ -904,6 +906,104 @@ void ilk_fdi_disable(struct intel_crtc *crtc)
 	udelay(100);
 }
 
+static void lpt_fdi_reset_mphy(struct drm_i915_private *dev_priv)
+{
+	u32 tmp;
+
+	tmp = intel_de_read(dev_priv, SOUTH_CHICKEN2);
+	tmp |= FDI_MPHY_IOSFSB_RESET_CTL;
+	intel_de_write(dev_priv, SOUTH_CHICKEN2, tmp);
+
+	if (wait_for_us(intel_de_read(dev_priv, SOUTH_CHICKEN2) &
+			FDI_MPHY_IOSFSB_RESET_STATUS, 100))
+		drm_err(&dev_priv->drm, "FDI mPHY reset assert timeout\n");
+
+	tmp = intel_de_read(dev_priv, SOUTH_CHICKEN2);
+	tmp &= ~FDI_MPHY_IOSFSB_RESET_CTL;
+	intel_de_write(dev_priv, SOUTH_CHICKEN2, tmp);
+
+	if (wait_for_us((intel_de_read(dev_priv, SOUTH_CHICKEN2) &
+			 FDI_MPHY_IOSFSB_RESET_STATUS) == 0, 100))
+		drm_err(&dev_priv->drm, "FDI mPHY reset de-assert timeout\n");
+}
+
+/* WaMPhyProgramming:hsw */
+void lpt_fdi_program_mphy(struct drm_i915_private *dev_priv)
+{
+	u32 tmp;
+
+	lpt_fdi_reset_mphy(dev_priv);
+
+	tmp = intel_sbi_read(dev_priv, 0x8008, SBI_MPHY);
+	tmp &= ~(0xFF << 24);
+	tmp |= (0x12 << 24);
+	intel_sbi_write(dev_priv, 0x8008, tmp, SBI_MPHY);
+
+	tmp = intel_sbi_read(dev_priv, 0x2008, SBI_MPHY);
+	tmp |= (1 << 11);
+	intel_sbi_write(dev_priv, 0x2008, tmp, SBI_MPHY);
+
+	tmp = intel_sbi_read(dev_priv, 0x2108, SBI_MPHY);
+	tmp |= (1 << 11);
+	intel_sbi_write(dev_priv, 0x2108, tmp, SBI_MPHY);
+
+	tmp = intel_sbi_read(dev_priv, 0x206C, SBI_MPHY);
+	tmp |= (1 << 24) | (1 << 21) | (1 << 18);
+	intel_sbi_write(dev_priv, 0x206C, tmp, SBI_MPHY);
+
+	tmp = intel_sbi_read(dev_priv, 0x216C, SBI_MPHY);
+	tmp |= (1 << 24) | (1 << 21) | (1 << 18);
+	intel_sbi_write(dev_priv, 0x216C, tmp, SBI_MPHY);
+
+	tmp = intel_sbi_read(dev_priv, 0x2080, SBI_MPHY);
+	tmp &= ~(7 << 13);
+	tmp |= (5 << 13);
+	intel_sbi_write(dev_priv, 0x2080, tmp, SBI_MPHY);
+
+	tmp = intel_sbi_read(dev_priv, 0x2180, SBI_MPHY);
+	tmp &= ~(7 << 13);
+	tmp |= (5 << 13);
+	intel_sbi_write(dev_priv, 0x2180, tmp, SBI_MPHY);
+
+	tmp = intel_sbi_read(dev_priv, 0x208C, SBI_MPHY);
+	tmp &= ~0xFF;
+	tmp |= 0x1C;
+	intel_sbi_write(dev_priv, 0x208C, tmp, SBI_MPHY);
+
+	tmp = intel_sbi_read(dev_priv, 0x218C, SBI_MPHY);
+	tmp &= ~0xFF;
+	tmp |= 0x1C;
+	intel_sbi_write(dev_priv, 0x218C, tmp, SBI_MPHY);
+
+	tmp = intel_sbi_read(dev_priv, 0x2098, SBI_MPHY);
+	tmp &= ~(0xFF << 16);
+	tmp |= (0x1C << 16);
+	intel_sbi_write(dev_priv, 0x2098, tmp, SBI_MPHY);
+
+	tmp = intel_sbi_read(dev_priv, 0x2198, SBI_MPHY);
+	tmp &= ~(0xFF << 16);
+	tmp |= (0x1C << 16);
+	intel_sbi_write(dev_priv, 0x2198, tmp, SBI_MPHY);
+
+	tmp = intel_sbi_read(dev_priv, 0x20C4, SBI_MPHY);
+	tmp |= (1 << 27);
+	intel_sbi_write(dev_priv, 0x20C4, tmp, SBI_MPHY);
+
+	tmp = intel_sbi_read(dev_priv, 0x21C4, SBI_MPHY);
+	tmp |= (1 << 27);
+	intel_sbi_write(dev_priv, 0x21C4, tmp, SBI_MPHY);
+
+	tmp = intel_sbi_read(dev_priv, 0x20EC, SBI_MPHY);
+	tmp &= ~(0xF << 28);
+	tmp |= (4 << 28);
+	intel_sbi_write(dev_priv, 0x20EC, tmp, SBI_MPHY);
+
+	tmp = intel_sbi_read(dev_priv, 0x21EC, SBI_MPHY);
+	tmp &= ~(0xF << 28);
+	tmp |= (4 << 28);
+	intel_sbi_write(dev_priv, 0x21EC, tmp, SBI_MPHY);
+}
+
 void
 intel_fdi_init_hook(struct drm_i915_private *dev_priv)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_fdi.h b/drivers/gpu/drm/i915/display/intel_fdi.h
index cda9a32c25ba..60acf2133145 100644
--- a/drivers/gpu/drm/i915/display/intel_fdi.h
+++ b/drivers/gpu/drm/i915/display/intel_fdi.h
@@ -24,5 +24,6 @@ void intel_fdi_init_hook(struct drm_i915_private *dev_priv);
 void hsw_fdi_link_train(struct intel_encoder *encoder,
 			const struct intel_crtc_state *crtc_state);
 void intel_fdi_pll_freq_update(struct drm_i915_private *i915);
+void lpt_fdi_program_mphy(struct drm_i915_private *i915);
 
 #endif
-- 
2.20.1

