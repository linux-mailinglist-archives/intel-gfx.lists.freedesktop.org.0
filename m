Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A71311D9C7
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2019 00:04:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3E6C6E229;
	Thu, 12 Dec 2019 23:04:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 54E756E229
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Dec 2019 23:04:17 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Dec 2019 15:04:16 -0800
X-IronPort-AV: E=Sophos;i="5.69,307,1571727600"; d="scan'208";a="216269286"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1)
 ([10.24.11.18])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Dec 2019 15:04:16 -0800
Date: Thu, 12 Dec 2019 15:04:11 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20191212230411.bx6xb6ixhullrki7@ldmartin-desk1>
X-Patchwork-Hint: ignore
References: <20191212223735.666014-1-matthew.d.roper@intel.com>
 <20191212223735.666014-4-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191212223735.666014-4-matthew.d.roper@intel.com>
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/icl: Cleanup combo PHY aux
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
Cc: intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Dec 12, 2019 at 02:37:35PM -0800, Matt Roper wrote:
>Now that the combo PHY aux power well handlers are used exclusively on
>Icelake, we can drop a bunch of the extra tests.  While we're at it,
>also switch these over to using intel_uncore_rmw() for the relevant
>register updates.

display/ shouldn't use intel_uncore_* yet as Jani has a series to
introduce intel_de_ (intel_display_ ?)

Lucas De Marchi

>
>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
>---
> .../drm/i915/display/intel_display_power.c    | 40 ++++++++-----------
> 1 file changed, 16 insertions(+), 24 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
>index 52f2332e0ab8..f02667a4e62b 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_power.c
>+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
>@@ -418,31 +418,23 @@ icl_combo_phy_aux_power_well_enable(struct drm_i915_private *dev_priv,
> 	int pw_idx = power_well->desc->hsw.idx;
> 	enum phy phy = ICL_AUX_PW_TO_PHY(pw_idx);
> 	u32 val;
>-	int wa_idx_max;
>+
>+	WARN_ON(!IS_ICELAKE(dev_priv));
>+	WARN_ON(intel_phy_is_combo(dev_priv, phy));
>
> 	val = I915_READ(regs->driver);
> 	I915_WRITE(regs->driver, val | HSW_PWR_WELL_CTL_REQ(pw_idx));
>
>-	if (INTEL_GEN(dev_priv) < 12) {
>-		val = I915_READ(ICL_PORT_CL_DW12(phy));
>-		I915_WRITE(ICL_PORT_CL_DW12(phy), val | ICL_LANE_ENABLE_AUX);
>-	}
>+	intel_uncore_rmw(&dev_priv->uncore, ICL_PORT_CL_DW12(phy), 0,
>+			 ICL_LANE_ENABLE_AUX);
>
> 	hsw_wait_for_power_well_enable(dev_priv, power_well);
>
>-	/* Display WA #1178: icl, tgl */
>-	if (IS_TIGERLAKE(dev_priv))
>-		wa_idx_max = ICL_PW_CTL_IDX_AUX_C;
>-	else
>-		wa_idx_max = ICL_PW_CTL_IDX_AUX_B;
>-
>-	if (!IS_ELKHARTLAKE(dev_priv) &&
>-	    pw_idx >= ICL_PW_CTL_IDX_AUX_A && pw_idx <= wa_idx_max &&
>-	    !intel_bios_is_port_edp(dev_priv, (enum port)phy)) {
>-		val = I915_READ(ICL_AUX_ANAOVRD1(pw_idx));
>-		val |= ICL_AUX_ANAOVRD1_ENABLE | ICL_AUX_ANAOVRD1_LDO_BYPASS;
>-		I915_WRITE(ICL_AUX_ANAOVRD1(pw_idx), val);
>-	}
>+	if (pw_idx >= ICL_PW_CTL_IDX_AUX_A && pw_idx <= ICL_PW_CTL_IDX_AUX_B &&
>+	    !intel_bios_is_port_edp(dev_priv, (enum port)phy))
>+		intel_uncore_rmw(&dev_priv->uncore, ICL_AUX_ANAOVRD1(pw_idx), 0,
>+				 ICL_AUX_ANAOVRD1_ENABLE |
>+				 ICL_AUX_ANAOVRD1_LDO_BYPASS);
> }
>
> static void
>@@ -454,13 +446,13 @@ icl_combo_phy_aux_power_well_disable(struct drm_i915_private *dev_priv,
> 	enum phy phy = ICL_AUX_PW_TO_PHY(pw_idx);
> 	u32 val;
>
>-	if (INTEL_GEN(dev_priv) < 12) {
>-		val = I915_READ(ICL_PORT_CL_DW12(phy));
>-		I915_WRITE(ICL_PORT_CL_DW12(phy), val & ~ICL_LANE_ENABLE_AUX);
>-	}
>+	WARN_ON(!IS_ICELAKE(dev_priv));
>+	WARN_ON(intel_phy_is_combo(dev_priv, phy));
>
>-	val = I915_READ(regs->driver);
>-	I915_WRITE(regs->driver, val & ~HSW_PWR_WELL_CTL_REQ(pw_idx));
>+	intel_uncore_rmw(&dev_priv->uncore, ICL_PORT_CL_DW12(phy),
>+			 ICL_LANE_ENABLE_AUX, 0);
>+	intel_uncore_rmw(&dev_priv->uncore, regs->driver,
>+			 HSW_PWR_WELL_CTL_REQ(pw_idx), 0);
>
> 	hsw_wait_for_power_well_disable(dev_priv, power_well);
> }
>-- 
>2.23.0
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
