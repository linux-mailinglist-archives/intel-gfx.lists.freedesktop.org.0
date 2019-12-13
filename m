Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CCFAF11DAFD
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2019 01:15:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 957ED89C6E;
	Fri, 13 Dec 2019 00:15:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0341189BAC
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Dec 2019 00:15:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Dec 2019 16:15:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,307,1571727600"; d="scan'208";a="220804479"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.64])
 by fmsmga001.fm.intel.com with ESMTP; 12 Dec 2019 16:15:20 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 12 Dec 2019 16:15:11 -0800
Message-Id: <20191213001511.678070-4-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191213001511.678070-1-matthew.d.roper@intel.com>
References: <20191213001511.678070-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 3/3] drm/i915/icl: Cleanup combo PHY aux
 power well handlers
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

Now that the combo PHY aux power well handlers are used exclusively on
Icelake, we can drop a bunch of the extra tests.

v2: Don't try to use intel_uncore_rmw for register updates yet; there's
    pending display uncore patches that need to land first.  (Lucas)

v3: Drop the combo phy assertion.  It was backward before, but doesn't
    seem terribly necessary.  I'm keeping the IS_ICELAKE assertion
    though since we often copy/paste/modify the power well tables when
    defining new platforms and it's too easy to cargo cult the
    ICL-specific handling to new platforms that shouldn't use it.
    (Lucas)

Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 .../drm/i915/display/intel_display_power.c    | 23 +++++++------------
 1 file changed, 8 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 52f2332e0ab8..b5937bce25d2 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -418,7 +418,8 @@ icl_combo_phy_aux_power_well_enable(struct drm_i915_private *dev_priv,
 	int pw_idx = power_well->desc->hsw.idx;
 	enum phy phy = ICL_AUX_PW_TO_PHY(pw_idx);
 	u32 val;
-	int wa_idx_max;
+
+	WARN_ON(!IS_ICELAKE(dev_priv));
 
 	val = I915_READ(regs->driver);
 	I915_WRITE(regs->driver, val | HSW_PWR_WELL_CTL_REQ(pw_idx));
@@ -430,19 +431,11 @@ icl_combo_phy_aux_power_well_enable(struct drm_i915_private *dev_priv,
 
 	hsw_wait_for_power_well_enable(dev_priv, power_well);
 
-	/* Display WA #1178: icl, tgl */
-	if (IS_TIGERLAKE(dev_priv))
-		wa_idx_max = ICL_PW_CTL_IDX_AUX_C;
-	else
-		wa_idx_max = ICL_PW_CTL_IDX_AUX_B;
-
-	if (!IS_ELKHARTLAKE(dev_priv) &&
-	    pw_idx >= ICL_PW_CTL_IDX_AUX_A && pw_idx <= wa_idx_max &&
-	    !intel_bios_is_port_edp(dev_priv, (enum port)phy)) {
+	if (pw_idx >= ICL_PW_CTL_IDX_AUX_A && pw_idx <= ICL_PW_CTL_IDX_AUX_B &&
+	    !intel_bios_is_port_edp(dev_priv, (enum port)phy))
 		val = I915_READ(ICL_AUX_ANAOVRD1(pw_idx));
 		val |= ICL_AUX_ANAOVRD1_ENABLE | ICL_AUX_ANAOVRD1_LDO_BYPASS;
 		I915_WRITE(ICL_AUX_ANAOVRD1(pw_idx), val);
-	}
 }
 
 static void
@@ -454,10 +447,10 @@ icl_combo_phy_aux_power_well_disable(struct drm_i915_private *dev_priv,
 	enum phy phy = ICL_AUX_PW_TO_PHY(pw_idx);
 	u32 val;
 
-	if (INTEL_GEN(dev_priv) < 12) {
-		val = I915_READ(ICL_PORT_CL_DW12(phy));
-		I915_WRITE(ICL_PORT_CL_DW12(phy), val & ~ICL_LANE_ENABLE_AUX);
-	}
+	WARN_ON(!IS_ICELAKE(dev_priv));
+
+	val = I915_READ(ICL_PORT_CL_DW12(phy));
+	I915_WRITE(ICL_PORT_CL_DW12(phy), val & ~ICL_LANE_ENABLE_AUX);
 
 	val = I915_READ(regs->driver);
 	I915_WRITE(regs->driver, val & ~HSW_PWR_WELL_CTL_REQ(pw_idx));
-- 
2.23.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
