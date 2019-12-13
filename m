Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DC6C311DB7A
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2019 02:06:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C91036E249;
	Fri, 13 Dec 2019 01:06:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E12866E249
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Dec 2019 01:06:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Dec 2019 17:06:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,307,1571727600"; d="scan'208";a="204162228"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.64])
 by orsmga007.jf.intel.com with ESMTP; 12 Dec 2019 17:06:01 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 12 Dec 2019 17:06:00 -0800
Message-Id: <20191213010600.701315-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191213001511.678070-4-matthew.d.roper@intel.com>
References: <20191213001511.678070-4-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 3/3] drm/i915/icl: Cleanup combo PHY aux
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

v4: Fix build; forgot to commit all the changes.  (CI)

Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 .../drm/i915/display/intel_display_power.c    | 20 +++++++------------
 1 file changed, 7 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 52f2332e0ab8..d59539002aaa 100644
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
@@ -430,14 +431,7 @@ icl_combo_phy_aux_power_well_enable(struct drm_i915_private *dev_priv,
 
 	hsw_wait_for_power_well_enable(dev_priv, power_well);
 
-	/* Display WA #1178: icl, tgl */
-	if (IS_TIGERLAKE(dev_priv))
-		wa_idx_max = ICL_PW_CTL_IDX_AUX_C;
-	else
-		wa_idx_max = ICL_PW_CTL_IDX_AUX_B;
-
-	if (!IS_ELKHARTLAKE(dev_priv) &&
-	    pw_idx >= ICL_PW_CTL_IDX_AUX_A && pw_idx <= wa_idx_max &&
+	if (pw_idx >= ICL_PW_CTL_IDX_AUX_A && pw_idx <= ICL_PW_CTL_IDX_AUX_B &&
 	    !intel_bios_is_port_edp(dev_priv, (enum port)phy)) {
 		val = I915_READ(ICL_AUX_ANAOVRD1(pw_idx));
 		val |= ICL_AUX_ANAOVRD1_ENABLE | ICL_AUX_ANAOVRD1_LDO_BYPASS;
@@ -454,10 +448,10 @@ icl_combo_phy_aux_power_well_disable(struct drm_i915_private *dev_priv,
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
