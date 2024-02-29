Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5936C86D3E1
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Feb 2024 21:04:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C951810E2E4;
	Thu, 29 Feb 2024 20:04:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PnVFoAoV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2EDE10E48C
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Feb 2024 20:04:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709237047; x=1740773047;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=7MHxYl1ySZrBQfz9dppAMdPpw2A8QoDVopfYHeko4wg=;
 b=PnVFoAoVNQTMHqpU1UYdHl+fUgp8aLRr3RKTIbV56zmCKgVxfowc4P6Q
 CT7Q4/+pcAzGC+pun6XdVcN23gPpAEMjCmlfLJ5P/V0AAUR7a/GKe7I28
 PrqEUwynvwzWbo6qKU4JC7WMT0fZoXjZBJm3KMbgq97XiBXeTg8kjPHS6
 4ZlD0jJeHRh6GhvmxTDj5B+m5qlajhkqfldLEIGq8SwFXnrmO1nRYeHxY
 spBrNzDFjyNnVVmZU1966OXxuUTuD8mr7twUmd7YWZpM2/KW3zt4vP0ns
 yRD8vB/YErCPyLYr60hC4bC5rdkBMrqJZVpcWBTNDrEZL2O0Hr8V19PTt g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10999"; a="14310423"
X-IronPort-AV: E=Sophos;i="6.06,194,1705392000"; d="scan'208";a="14310423"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Feb 2024 12:04:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10999"; a="827771642"
X-IronPort-AV: E=Sophos;i="6.06,194,1705392000"; d="scan'208";a="827771642"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 29 Feb 2024 12:04:04 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 29 Feb 2024 22:04:03 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 3/4] drm/i915: Use pw_idx to derive PHY for
 ICL_LANE_ENABLE_AUX override
Date: Thu, 29 Feb 2024 22:03:56 +0200
Message-ID: <20240229200357.7969-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240229200357.7969-1-ville.syrjala@linux.intel.com>
References: <20240229200357.7969-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

We don't actually know whether we should be picking the PHY
simply based on the AUX_CH/power well, or based on the VBT
defined AUX_CH->DDI->PHY relationship. At the moment we are
doing the former for the ANAOVRD workaround, and the latter
for the ICL_LANE_ENABLE_AUX override. Windows seems to use the
first approach for everything. So let's unify this to follow
that same approach for both.

Eventually we should try to figure out  which is actually
correct, or whether any of this even matters (ie. whether there
are any real machines where the DDI and its AUX_CH do not match
1:1).

Note that this also changes the behaviour if we do end up
poking an AUX power well not associated with any port (as
per VBT). Previously we would have skipped the PHY register
write, but now we always write it.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../i915/display/intel_display_power_well.c   | 21 +++++++++++--------
 1 file changed, 12 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index a1edac6ce31f..f25ad7d2c784 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -419,10 +419,12 @@ icl_combo_phy_aux_power_well_enable(struct drm_i915_private *dev_priv,
 
 	intel_de_rmw(dev_priv, regs->driver, 0, HSW_PWR_WELL_CTL_REQ(pw_idx));
 
-	/* FIXME this is a mess */
-	if (phy != PHY_NONE)
-		intel_de_rmw(dev_priv, ICL_PORT_CL_DW12(phy),
-			     0, ICL_LANE_ENABLE_AUX);
+	/*
+	 * FIXME not sure if we should derive the PHY from the pw_idx, or
+	 * from the VBT defined AUX_CH->DDI->PHY mapping.
+	 */
+	intel_de_rmw(dev_priv, ICL_PORT_CL_DW12(ICL_AUX_PW_TO_PHY(pw_idx)),
+		     0, ICL_LANE_ENABLE_AUX);
 
 	hsw_wait_for_power_well_enable(dev_priv, power_well, false);
 
@@ -439,14 +441,15 @@ icl_combo_phy_aux_power_well_disable(struct drm_i915_private *dev_priv,
 {
 	const struct i915_power_well_regs *regs = power_well->desc->ops->regs;
 	int pw_idx = i915_power_well_instance(power_well)->hsw.idx;
-	enum phy phy = icl_aux_pw_to_phy(dev_priv, power_well);
 
 	drm_WARN_ON(&dev_priv->drm, !IS_ICELAKE(dev_priv));
 
-	/* FIXME this is a mess */
-	if (phy != PHY_NONE)
-		intel_de_rmw(dev_priv, ICL_PORT_CL_DW12(phy),
-			     ICL_LANE_ENABLE_AUX, 0);
+	/*
+	 * FIXME not sure if we should derive the PHY from the pw_idx, or
+	 * from the VBT defined AUX_CH->DDI->PHY mapping.
+	 */
+	intel_de_rmw(dev_priv, ICL_PORT_CL_DW12(ICL_AUX_PW_TO_PHY(pw_idx)),
+		     ICL_LANE_ENABLE_AUX, 0);
 
 	intel_de_rmw(dev_priv, regs->driver, HSW_PWR_WELL_CTL_REQ(pw_idx), 0);
 
-- 
2.43.0

