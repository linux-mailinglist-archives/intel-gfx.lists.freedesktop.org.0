Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A98861DC3CF
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2020 02:38:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB5086E8CF;
	Thu, 21 May 2020 00:38:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A51016E8C8
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 May 2020 00:38:07 +0000 (UTC)
IronPort-SDR: ekf460Pio7AObffCgOwheo6MzQp6snHYK9D2tEng5e09vTmuiSbqSd9mlHZ2WkonSnLchm8r7o
 zxzFnUd9ZkxA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2020 17:38:07 -0700
IronPort-SDR: RtfcoyLM7gGYPo5rireP1TgfM5LzD9axs/X1SYj35h0QjI6691UQOZQLdrhDpnVbn/kwHeBmEp
 7rGjUs//4lRg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,415,1583222400"; d="scan'208";a="466720857"
Received: from ldmartin1-desk.jf.intel.com ([10.165.21.151])
 by fmsmga006.fm.intel.com with ESMTP; 20 May 2020 17:38:07 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 20 May 2020 17:37:29 -0700
Message-Id: <20200521003803.18936-4-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200521003803.18936-1-lucas.demarchi@intel.com>
References: <20200521003803.18936-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 03/37] drm/i915/rkl: Setup ports/phys
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
Cc: fernando.pacheco@intel.com, Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Matt Roper <matthew.d.roper@intel.com>

RKL uses DDI's A, B, TC1, and TC2 which need to map to combo PHY's A-D.

Bspec: 49181
Cc: Imre Deak <imre.deak@intel.com>
Cc: Aditya Swarup <aditya.swarup@intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Link: https://patchwork.freedesktop.org/patch/msgid/20200504225227.464666-14-matthew.d.roper@intel.com
---
 drivers/gpu/drm/i915/display/intel_display.c | 34 ++++++++++++--------
 drivers/gpu/drm/i915/i915_reg.h              |  4 ++-
 2 files changed, 24 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 321438ea7077..5b641c1fdfe6 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7212,30 +7212,33 @@ bool intel_phy_is_combo(struct drm_i915_private *dev_priv, enum phy phy)
 {
 	if (phy == PHY_NONE)
 		return false;
-
-	if (IS_ELKHARTLAKE(dev_priv))
+	else if (IS_ROCKETLAKE(dev_priv))
+		return phy <= PHY_D;
+	else if (IS_ELKHARTLAKE(dev_priv))
 		return phy <= PHY_C;
-
-	if (INTEL_GEN(dev_priv) >= 11)
+	else if (INTEL_GEN(dev_priv) >= 11)
 		return phy <= PHY_B;
-
-	return false;
+	else
+		return false;
 }
 
 bool intel_phy_is_tc(struct drm_i915_private *dev_priv, enum phy phy)
 {
-	if (INTEL_GEN(dev_priv) >= 12)
+	if (IS_ROCKETLAKE(dev_priv))
+		return false;
+	else if (INTEL_GEN(dev_priv) >= 12)
 		return phy >= PHY_D && phy <= PHY_I;
-
-	if (INTEL_GEN(dev_priv) >= 11 && !IS_ELKHARTLAKE(dev_priv))
+	else if (INTEL_GEN(dev_priv) >= 11 && !IS_ELKHARTLAKE(dev_priv))
 		return phy >= PHY_C && phy <= PHY_F;
-
-	return false;
+	else
+		return false;
 }
 
 enum phy intel_port_to_phy(struct drm_i915_private *i915, enum port port)
 {
-	if (IS_ELKHARTLAKE(i915) && port == PORT_D)
+	if (IS_ROCKETLAKE(i915) && port >= PORT_D)
+		return (enum phy)port - 1;
+	else if (IS_ELKHARTLAKE(i915) && port == PORT_D)
 		return PHY_A;
 
 	return (enum phy)port;
@@ -16725,7 +16728,12 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
 	if (!HAS_DISPLAY(dev_priv) || !INTEL_DISPLAY_ENABLED(dev_priv))
 		return;
 
-	if (INTEL_GEN(dev_priv) >= 12) {
+	if (IS_ROCKETLAKE(dev_priv)) {
+		intel_ddi_init(dev_priv, PORT_A);
+		intel_ddi_init(dev_priv, PORT_B);
+		intel_ddi_init(dev_priv, PORT_D);	/* DDI TC1 */
+		intel_ddi_init(dev_priv, PORT_E);	/* DDI TC2 */
+	} else if (INTEL_GEN(dev_priv) >= 12) {
 		intel_ddi_init(dev_priv, PORT_A);
 		intel_ddi_init(dev_priv, PORT_B);
 		intel_ddi_init(dev_priv, PORT_D);
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index e9d50fe0f375..5ad8b91bc3a4 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1869,9 +1869,11 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define _ICL_COMBOPHY_A			0x162000
 #define _ICL_COMBOPHY_B			0x6C000
 #define _EHL_COMBOPHY_C			0x160000
+#define _RKL_COMBOPHY_D			0x161000
 #define _ICL_COMBOPHY(phy)		_PICK(phy, _ICL_COMBOPHY_A, \
 					      _ICL_COMBOPHY_B, \
-					      _EHL_COMBOPHY_C)
+					      _EHL_COMBOPHY_C, \
+					      _RKL_COMBOPHY_D)
 
 /* CNL/ICL Port CL_DW registers */
 #define _ICL_PORT_CL_DW(dw, phy)	(_ICL_COMBOPHY(phy) + \
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
