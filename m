Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D630D1C1B38
	for <lists+intel-gfx@lfdr.de>; Fri,  1 May 2020 19:08:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29C996ED1B;
	Fri,  1 May 2020 17:08:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 449776ECF2
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 May 2020 17:08:01 +0000 (UTC)
IronPort-SDR: 4WMGW4sBgHcyRcA4kYtGTyuMQ9mOOZjDMkI+xcvAYBWg0Fl3ZscOsdqZ+SuV1RiEoC9LsyLZk3
 rt5GdSu8SohQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2020 10:08:00 -0700
IronPort-SDR: wNKL8OU8XhxzBpySRvhWr/x6QCc0Bg7iedPGFOxAtPrk9l316uVIiaQP5GJjKWJ4frZ6X2HhIV
 tK/pSp7HWPvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,340,1583222400"; d="scan'208";a="250062142"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.64])
 by fmsmga008.fm.intel.com with ESMTP; 01 May 2020 10:07:59 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  1 May 2020 10:07:39 -0700
Message-Id: <20200501170748.358135-15-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200501170748.358135-1-matthew.d.roper@intel.com>
References: <20200501170748.358135-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 14/23] drm/i915/rkl: Setup ports/phys
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RKL uses DDI's A, B, TC1, and TC2 which need to map to combo PHY's A-D.

Bspec: 49181
Cc: Imre Deak <imre.deak@intel.com>
Cc: Aditya Swarup <aditya.swarup@intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 34 ++++++++++++--------
 drivers/gpu/drm/i915/i915_reg.h              |  4 ++-
 2 files changed, 24 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index ebbec5e5bf53..1ed6bb03379b 100644
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
@@ -16692,7 +16695,12 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
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
index f392ad61f1db..42941b01710d 100644
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
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
