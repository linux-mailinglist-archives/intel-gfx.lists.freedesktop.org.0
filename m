Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F5714AD77D
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Feb 2022 12:37:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAC3B10E61C;
	Tue,  8 Feb 2022 11:37:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C11110E5B5
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Feb 2022 11:37:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644320229; x=1675856229;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PrunfZcxfltrZNdQda6GK1QyK/CB1JAuyybEpeZevaU=;
 b=bP0WsapKxXzArIO/FBVc3H/jOnSQqtoc5Va1EzLZ7i9ePiNX6dS7TXvD
 mcpNnFG4pb8XJp9sdxGYq1t+qf+tswiT1z2xRYiKsVw72mATKg2T638vt
 u34bAMXX4zv9+J0O7jxl81YVxstXQPpgSCFuKA0Yc45SjZJgD7TWU8WeT
 3qjClA8XcpnF+QCHsLMhnO1kYL9y5fW9ansP2mQlqxTqvvRBCmw0tsobk
 dUGPFhNxQ5zMsVhIwxPlEQO8x2I8hrTF97izJ+y+hchEibgTzD1ana3gU
 WG5SO5pjalojnlZk0rBVLYwiYcFmYfKNrCNCMCnQwp0E5bAnEYPaw5v7F w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10251"; a="232495956"
X-IronPort-AV: E=Sophos;i="5.88,352,1635231600"; d="scan'208";a="232495956"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2022 03:37:09 -0800
X-IronPort-AV: E=Sophos;i="5.88,352,1635231600"; d="scan'208";a="481915275"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2022 03:37:08 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Feb 2022 13:36:37 +0200
Message-Id: <20220208113656.179823-8-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20220208113656.179823-1-imre.deak@intel.com>
References: <20220208113656.179823-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 07/26] drm/i915: Add functions to get a power
 well's state/name/domains/mask/refcount
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add functions to get a power well's actual- and cached-enabled state,
name, domain mask and refcount, as a step towards making the low-level
power well internals (i915_power_well_ops/desc structs) hidden.

No functional change.

Suggested-by: Jani Nikula <jani.nikula@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_display_power.c    | 69 +++++++++----------
 .../i915/display/intel_display_power_well.c   | 31 +++++++++
 .../i915/display/intel_display_power_well.h   |  7 ++
 3 files changed, 72 insertions(+), 35 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 056965248a3b2..321b271c4b674 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -191,10 +191,10 @@ bool __intel_display_power_is_enabled(struct drm_i915_private *dev_priv,
 	is_enabled = true;
 
 	for_each_power_domain_well_reverse(dev_priv, power_well, BIT_ULL(domain)) {
-		if (power_well->desc->always_on)
+		if (intel_power_well_is_always_on(power_well))
 			continue;
 
-		if (!power_well->hw_enabled) {
+		if (!intel_power_well_is_enabled_cached(power_well)) {
 			is_enabled = false;
 			break;
 		}
@@ -330,7 +330,7 @@ static void hsw_wait_for_power_well_enable(struct drm_i915_private *dev_priv,
 	if (intel_de_wait_for_set(dev_priv, regs->driver,
 				  HSW_PWR_WELL_CTL_STATE(pw_idx), 1)) {
 		drm_dbg_kms(&dev_priv->drm, "%s power well enable timeout\n",
-			    power_well->desc->name);
+			    intel_power_well_name(power_well));
 
 		drm_WARN_ON(&dev_priv->drm, !timeout_expected);
 
@@ -378,7 +378,7 @@ static void hsw_wait_for_power_well_disable(struct drm_i915_private *dev_priv,
 
 	drm_dbg_kms(&dev_priv->drm,
 		    "%s forced on (bios:%d driver:%d kvmr:%d debug:%d)\n",
-		    power_well->desc->name,
+		    intel_power_well_name(power_well),
 		    !!(reqs & 1), !!(reqs & 2), !!(reqs & 4), !!(reqs & 8));
 }
 
@@ -967,8 +967,7 @@ void intel_display_power_set_target_dc_state(struct drm_i915_private *dev_priv,
 	if (state == dev_priv->dmc.target_dc_state)
 		goto unlock;
 
-	dc_off_enabled = power_well->desc->ops->is_enabled(dev_priv,
-							   power_well);
+	dc_off_enabled = intel_power_well_is_enabled(dev_priv, power_well);
 	/*
 	 * If DC off power well is disabled, need to enable and disable the
 	 * DC off power well to effect target DC state.
@@ -1090,17 +1089,17 @@ static void bxt_verify_ddi_phy_power_wells(struct drm_i915_private *dev_priv)
 	struct i915_power_well *power_well;
 
 	power_well = lookup_power_well(dev_priv, BXT_DISP_PW_DPIO_CMN_A);
-	if (power_well->count > 0)
+	if (intel_power_well_refcount(power_well) > 0)
 		bxt_ddi_phy_verify_state(dev_priv, power_well->desc->bxt.phy);
 
 	power_well = lookup_power_well(dev_priv, VLV_DISP_PW_DPIO_CMN_BC);
-	if (power_well->count > 0)
+	if (intel_power_well_refcount(power_well) > 0)
 		bxt_ddi_phy_verify_state(dev_priv, power_well->desc->bxt.phy);
 
 	if (IS_GEMINILAKE(dev_priv)) {
 		power_well = lookup_power_well(dev_priv,
 					       GLK_DISP_PW_DPIO_CMN_C);
-		if (power_well->count > 0)
+		if (intel_power_well_refcount(power_well) > 0)
 			bxt_ddi_phy_verify_state(dev_priv,
 						 power_well->desc->bxt.phy);
 	}
@@ -1226,7 +1225,7 @@ static bool i830_pipes_power_well_enabled(struct drm_i915_private *dev_priv,
 static void i830_pipes_power_well_sync_hw(struct drm_i915_private *dev_priv,
 					  struct i915_power_well *power_well)
 {
-	if (power_well->count > 0)
+	if (intel_power_well_refcount(power_well) > 0)
 		i830_pipes_power_well_enable(dev_priv, power_well);
 	else
 		i830_pipes_power_well_disable(dev_priv, power_well);
@@ -1499,7 +1498,7 @@ static void assert_chv_phy_status(struct drm_i915_private *dev_priv)
 				     PHY_STATUS_SPLINE_LDO(DPIO_PHY1, DPIO_CH0, 0) |
 				     PHY_STATUS_SPLINE_LDO(DPIO_PHY1, DPIO_CH0, 1));
 
-	if (cmn_bc->desc->ops->is_enabled(dev_priv, cmn_bc)) {
+	if (intel_power_well_is_enabled(dev_priv, cmn_bc)) {
 		phy_status |= PHY_POWERGOOD(DPIO_PHY0);
 
 		/* this assumes override is only used to enable lanes */
@@ -1540,7 +1539,7 @@ static void assert_chv_phy_status(struct drm_i915_private *dev_priv)
 			phy_status |= PHY_STATUS_SPLINE_LDO(DPIO_PHY0, DPIO_CH1, 1);
 	}
 
-	if (cmn_d->desc->ops->is_enabled(dev_priv, cmn_d)) {
+	if (intel_power_well_is_enabled(dev_priv, cmn_d)) {
 		phy_status |= PHY_POWERGOOD(DPIO_PHY1);
 
 		/* this assumes override is only used to enable lanes */
@@ -3334,12 +3333,10 @@ bool intel_display_power_well_is_enabled(struct drm_i915_private *dev_priv,
 					 enum i915_power_well_id power_well_id)
 {
 	struct i915_power_well *power_well;
-	bool ret;
 
 	power_well = lookup_power_well(dev_priv, power_well_id);
-	ret = power_well->desc->ops->is_enabled(dev_priv, power_well);
 
-	return ret;
+	return intel_power_well_is_enabled(dev_priv, power_well);
 }
 
 static const struct i915_power_well_desc skl_power_wells[] = {
@@ -3909,7 +3906,7 @@ static void
 tgl_tc_cold_off_power_well_sync_hw(struct drm_i915_private *i915,
 				   struct i915_power_well *power_well)
 {
-	if (power_well->count > 0)
+	if (intel_power_well_refcount(power_well) > 0)
 		tgl_tc_cold_off_power_well_enable(i915, power_well);
 	else
 		tgl_tc_cold_off_power_well_disable(i915, power_well);
@@ -3923,7 +3920,7 @@ tgl_tc_cold_off_power_well_is_enabled(struct drm_i915_private *dev_priv,
 	 * Not the correctly implementation but there is no way to just read it
 	 * from PCODE, so returning count to avoid state mismatch errors
 	 */
-	return power_well->count;
+	return intel_power_well_refcount(power_well);
 }
 
 static const struct i915_power_well_ops tgl_tc_cold_off_ops = {
@@ -5729,7 +5726,7 @@ static void chv_phy_control_init(struct drm_i915_private *dev_priv)
 	 * override and set the lane powerdown bits accding to the
 	 * current lane status.
 	 */
-	if (cmn_bc->desc->ops->is_enabled(dev_priv, cmn_bc)) {
+	if (intel_power_well_is_enabled(dev_priv, cmn_bc)) {
 		u32 status = intel_de_read(dev_priv, DPLL(PIPE_A));
 		unsigned int mask;
 
@@ -5760,7 +5757,7 @@ static void chv_phy_control_init(struct drm_i915_private *dev_priv)
 		dev_priv->chv_phy_assert[DPIO_PHY0] = true;
 	}
 
-	if (cmn_d->desc->ops->is_enabled(dev_priv, cmn_d)) {
+	if (intel_power_well_is_enabled(dev_priv, cmn_d)) {
 		u32 status = intel_de_read(dev_priv, DPIO_PHY_STATUS);
 		unsigned int mask;
 
@@ -5796,8 +5793,8 @@ static void vlv_cmnlane_wa(struct drm_i915_private *dev_priv)
 		lookup_power_well(dev_priv, VLV_DISP_PW_DISP2D);
 
 	/* If the display might be already active skip this */
-	if (cmn->desc->ops->is_enabled(dev_priv, cmn) &&
-	    disp2d->desc->ops->is_enabled(dev_priv, disp2d) &&
+	if (intel_power_well_is_enabled(dev_priv, cmn) &&
+	    intel_power_well_is_enabled(dev_priv, disp2d) &&
 	    intel_de_read(dev_priv, DPIO_CTL) & DPIO_CMNRST)
 		return;
 
@@ -5964,12 +5961,12 @@ void intel_power_domains_sanitize_state(struct drm_i915_private *i915)
 
 	for_each_power_well_reverse(i915, power_well) {
 		if (power_well->desc->always_on || power_well->count ||
-		    !power_well->desc->ops->is_enabled(i915, power_well))
+		    !intel_power_well_is_enabled(i915, power_well))
 			continue;
 
 		drm_dbg_kms(&i915->drm,
 			    "BIOS left unused %s power well enabled, disabling it\n",
-			    power_well->desc->name);
+			    intel_power_well_name(power_well));
 		intel_power_well_disable(i915, power_well);
 	}
 
@@ -6108,9 +6105,9 @@ static void intel_power_domains_dump_info(struct drm_i915_private *i915)
 		enum intel_display_power_domain domain;
 
 		drm_dbg(&i915->drm, "%-25s %d\n",
-			power_well->desc->name, power_well->count);
+			intel_power_well_name(power_well), intel_power_well_refcount(power_well));
 
-		for_each_power_domain(domain, power_well->desc->domains)
+		for_each_power_domain(domain, intel_power_well_domains(power_well))
 			drm_dbg(&i915->drm, "  %-23s %d\n",
 				intel_display_power_domain_str(domain),
 				power_domains->domain_use_count[domain]);
@@ -6143,23 +6140,25 @@ static void intel_power_domains_verify_state(struct drm_i915_private *i915)
 		int domains_count;
 		bool enabled;
 
-		enabled = power_well->desc->ops->is_enabled(i915, power_well);
-		if ((power_well->count || power_well->desc->always_on) !=
+		enabled = intel_power_well_is_enabled(i915, power_well);
+		if ((intel_power_well_refcount(power_well) ||
+		     intel_power_well_is_always_on(power_well)) !=
 		    enabled)
 			drm_err(&i915->drm,
 				"power well %s state mismatch (refcount %d/enabled %d)",
-				power_well->desc->name,
-				power_well->count, enabled);
+				intel_power_well_name(power_well),
+				intel_power_well_refcount(power_well), enabled);
 
 		domains_count = 0;
-		for_each_power_domain(domain, power_well->desc->domains)
+		for_each_power_domain(domain, intel_power_well_domains(power_well))
 			domains_count += power_domains->domain_use_count[domain];
 
-		if (power_well->count != domains_count) {
+		if (intel_power_well_refcount(power_well) != domains_count) {
 			drm_err(&i915->drm,
 				"power well %s refcount/domain refcount mismatch "
 				"(refcount %d/domains refcount %d)\n",
-				power_well->desc->name, power_well->count,
+				intel_power_well_name(power_well),
+				intel_power_well_refcount(power_well),
 				domains_count);
 			dump_domain_info = true;
 		}
@@ -6264,10 +6263,10 @@ void intel_display_power_debug(struct drm_i915_private *i915, struct seq_file *m
 		enum intel_display_power_domain power_domain;
 
 		power_well = &power_domains->power_wells[i];
-		seq_printf(m, "%-25s %d\n", power_well->desc->name,
-			   power_well->count);
+		seq_printf(m, "%-25s %d\n", intel_power_well_name(power_well),
+			   intel_power_well_refcount(power_well));
 
-		for_each_power_domain(power_domain, power_well->desc->domains)
+		for_each_power_domain(power_domain, intel_power_well_domains(power_well))
 			seq_printf(m, "  %-23s %d\n",
 				   intel_display_power_domain_str(power_domain),
 				   power_domains->domain_use_count[power_domain]);
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index 63b97bcc64bc3..415ad193a8e83 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -47,3 +47,34 @@ void intel_power_well_put(struct drm_i915_private *i915,
 	if (!--power_well->count)
 		intel_power_well_disable(i915, power_well);
 }
+
+bool intel_power_well_is_enabled(struct drm_i915_private *i915,
+				 struct i915_power_well *power_well)
+{
+	return power_well->desc->ops->is_enabled(i915, power_well);
+}
+
+bool intel_power_well_is_enabled_cached(struct i915_power_well *power_well)
+{
+	return power_well->hw_enabled;
+}
+
+bool intel_power_well_is_always_on(struct i915_power_well *power_well)
+{
+	return power_well->desc->always_on;
+}
+
+const char *intel_power_well_name(struct i915_power_well *power_well)
+{
+	return power_well->desc->name;
+}
+
+u64 intel_power_well_domains(struct i915_power_well *power_well)
+{
+	return power_well->desc->domains;
+}
+
+int intel_power_well_refcount(struct i915_power_well *power_well)
+{
+	return power_well->count;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.h b/drivers/gpu/drm/i915/display/intel_display_power_well.h
index ba5bbd36f7fc0..43affbdbc48c1 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.h
@@ -113,5 +113,12 @@ void intel_power_well_get(struct drm_i915_private *i915,
 			  struct i915_power_well *power_well);
 void intel_power_well_put(struct drm_i915_private *i915,
 			  struct i915_power_well *power_well);
+bool intel_power_well_is_enabled(struct drm_i915_private *i915,
+				 struct i915_power_well *power_well);
+bool intel_power_well_is_enabled_cached(struct i915_power_well *power_well);
+bool intel_power_well_is_always_on(struct i915_power_well *power_well);
+const char *intel_power_well_name(struct i915_power_well *power_well);
+u64 intel_power_well_domains(struct i915_power_well *power_well);
+int intel_power_well_refcount(struct i915_power_well *power_well);
 
 #endif
-- 
2.27.0

