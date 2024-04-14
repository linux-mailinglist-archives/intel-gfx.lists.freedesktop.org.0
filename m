Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 976818A2B68
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Apr 2024 11:42:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A75D10F569;
	Fri, 12 Apr 2024 09:42:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="F3OQv/aq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1211D10F55A;
 Fri, 12 Apr 2024 09:42:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712914929; x=1744450929;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qj2jlYCw8omUq1nSaqr0E43ESbm40kk8GpkFmN9V6Rk=;
 b=F3OQv/aqHGovPtGcYMJenKs8TJgg+4Laq8c8APx1QGYGvCqwJO8txWY+
 w5DL6Dv+8tZFuuDJHn+uK95WmNfV/yKps2SSu2IpyE2mbrbYyjBNfXvw4
 8f7wi9KYOm5n3oExXQwPxm39t7uO8W0nuPRhCK6/NN/jGY2lbvTNPIkOT
 Rzr9J+q8Ed0s8+dsNJ7ijkJM0VOHdRZwmw3GvlALo/XwH32mpck2GBvzO
 2Jwnq3YXL9wDBQhV25l9btC60NvyqFW4vfywuc7QSQwY39/dqa+UDDePe
 ePHGuDh/h2QVFYzr2kkVpbWWccygoDDg8taW2HMQYu5AhmR6Z+T3nG7+F Q==;
X-CSE-ConnectionGUID: 7V3E9Rm+ShCg/Be9075L+Q==
X-CSE-MsgGUID: 1FjLm1JdR1+ut2FyRBAMNw==
X-IronPort-AV: E=McAfee;i="6600,9927,11041"; a="12156401"
X-IronPort-AV: E=Sophos;i="6.07,195,1708416000"; d="scan'208";a="12156401"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2024 02:42:09 -0700
X-CSE-ConnectionGUID: mlcuLZEgSmia0acVCEcmVw==
X-CSE-MsgGUID: t8XeVIfARgSKVsIlbCg4Qg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,195,1708416000"; d="scan'208";a="25841388"
Received: from swilyman-mobl1.ger.corp.intel.com (HELO
 hazy.ger.corp.intel.com) ([10.251.215.209])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2024 02:42:07 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, uma.shankar@intel.com,
 ville.syrjala@linux.intel.com, jani.nikula@intel.com
Subject: [PATCH v5 4/4] drm/i915/display: tie DMC wakelock to DC5/6 state
 transitions
Date: Fri, 12 Apr 2024 12:41:48 +0300
Message-Id: <20240412094148.808179-5-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240412094148.808179-1-luciano.coelho@intel.com>
References: <20240412094148.808179-1-luciano.coelho@intel.com>
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

Reviewed-by: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power_well.c | 7 +++++++
 drivers/gpu/drm/i915/display/intel_dmc.c                | 4 ++++
 2 files changed, 11 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index e4de40228997..7f4b7602cf02 100644
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
index e61e9c1b8947..a34ff3383fd3 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -552,6 +552,8 @@ void intel_dmc_disable_program(struct drm_i915_private *i915)
 	pipedmc_clock_gating_wa(i915, true);
 	disable_all_event_handlers(i915);
 	pipedmc_clock_gating_wa(i915, false);
+
+	intel_dmc_wl_disable(i915);
 }
 
 void assert_dmc_loaded(struct drm_i915_private *i915)
@@ -1081,6 +1083,8 @@ void intel_dmc_suspend(struct drm_i915_private *i915)
 	if (dmc)
 		flush_work(&dmc->work);
 
+	intel_dmc_wl_disable(i915);
+
 	/* Drop the reference held in case DMC isn't loaded. */
 	if (!intel_dmc_has_payload(i915))
 		intel_dmc_runtime_pm_put(i915);
-- 
2.39.2

