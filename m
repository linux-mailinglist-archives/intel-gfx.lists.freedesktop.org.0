Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 795CB87EA3A
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Mar 2024 14:38:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B59E810EF0D;
	Mon, 18 Mar 2024 13:38:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GDATvsAJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8483E10F74D;
 Mon, 18 Mar 2024 13:38:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710769107; x=1742305107;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lhF65XRkLePdsVNSatfYL0Ods1iGsHeaiNcqlrUSDGM=;
 b=GDATvsAJI+KkEVO4v1yuOb4ZnkGuuqomgYJ/JauTBSXZSpHuUUIG9bTm
 Eiww/ccRZ9MfEdH3WVzoICOHAFkLhpR1VWx2QkMpjJvXh1YBc2PpoekXb
 0y72RJ6VBKzg273qoDcRNm0jtkFakeFkNh1JsO1Q1KBmxNEUuCu8RPeye
 JntJ06ISeyj2w+wiCmAi+kOiUUjFvllNnZNhF1osl9Mp/8yfGSycG8M/G
 0SXCWpSUBapTu/q9VMBboYBMBvscVTTmGGmecHisMd8y7d3G9H5zojFoS
 JriP/TDfo+sZnsQwyyCoRrQsaB/MvVd+oX3Mufua2CwNTWaB0CWEHOPG9 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11016"; a="16218025"
X-IronPort-AV: E=Sophos;i="6.07,134,1708416000"; d="scan'208";a="16218025"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2024 06:38:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,134,1708416000"; d="scan'208";a="13570086"
Received: from dcroitox-mobl1.ger.corp.intel.com (HELO
 hazy.ger.corp.intel.com) ([10.251.210.126])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2024 06:38:25 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, uma.shankar@intel.com,
 ville.syrjala@linux.intel.com, jani.nikula@intel.com
Subject: [PATCH v3 4/4] drm/i915/display: tie DMC wakelock to DC5/6 state
 transitions
Date: Mon, 18 Mar 2024 15:37:57 +0200
Message-Id: <20240318133757.1479189-5-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240318133757.1479189-1-luciano.coelho@intel.com>
References: <20240318133757.1479189-1-luciano.coelho@intel.com>
MIME-Version: 1.0
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

We only need DMC wakelocks when we allow DC5 and DC6 states.  Add the
calls to enable and disable DMC wakelock accordingly.

Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power_well.c | 7 +++++++
 drivers/gpu/drm/i915/display/intel_dmc.c                | 4 ++++
 2 files changed, 11 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index 217f82f1da84..367464f5c5cd 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -17,6 +17,7 @@
 #include "intel_dkl_phy.h"
 #include "intel_dkl_phy_regs.h"
 #include "intel_dmc.h"
+#include "intel_dmc_wl.h"
 #include "intel_dp_aux_regs.h"
 #include "intel_dpio_phy.h"
 #include "intel_dpll.h"
@@ -821,6 +822,8 @@ void gen9_enable_dc5(struct drm_i915_private *dev_priv)
 		intel_de_rmw(dev_priv, GEN8_CHICKEN_DCPR_1,
 			     0, SKL_SELECT_ALTERNATE_DC_EXIT);
 
+	intel_dmc_wl_enable(dev_priv);
+
 	gen9_set_dc_state(dev_priv, DC_STATE_EN_UPTO_DC5);
 }
 
@@ -850,6 +853,8 @@ void skl_enable_dc6(struct drm_i915_private *dev_priv)
 		intel_de_rmw(dev_priv, GEN8_CHICKEN_DCPR_1,
 			     0, SKL_SELECT_ALTERNATE_DC_EXIT);
 
+	intel_dmc_wl_enable(dev_priv);
+
 	gen9_set_dc_state(dev_priv, DC_STATE_EN_UPTO_DC6);
 }
 
@@ -970,6 +975,8 @@ void gen9_disable_dc_states(struct drm_i915_private *dev_priv)
 	if (!HAS_DISPLAY(dev_priv))
 		return;
 
+	intel_dmc_wl_disable(dev_priv);
+
 	intel_cdclk_get_cdclk(dev_priv, &cdclk_config);
 	/* Can't read out voltage_level so can't use intel_cdclk_changed() */
 	drm_WARN_ON(&dev_priv->drm,
diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 3fa851b5c7a6..b20cc018b9a8 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -550,6 +550,8 @@ void intel_dmc_disable_program(struct drm_i915_private *i915)
 	pipedmc_clock_gating_wa(i915, true);
 	disable_all_event_handlers(i915);
 	pipedmc_clock_gating_wa(i915, false);
+
+	intel_dmc_wl_disable(i915);
 }
 
 void assert_dmc_loaded(struct drm_i915_private *i915)
@@ -1079,6 +1081,8 @@ void intel_dmc_suspend(struct drm_i915_private *i915)
 	if (dmc)
 		flush_work(&dmc->work);
 
+	intel_dmc_wl_disable(i915);
+
 	/* Drop the reference held in case DMC isn't loaded. */
 	if (!intel_dmc_has_payload(i915))
 		intel_dmc_runtime_pm_put(i915);
-- 
2.39.2

