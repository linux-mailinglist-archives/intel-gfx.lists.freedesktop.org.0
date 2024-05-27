Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F6858CFE42
	for <lists+intel-gfx@lfdr.de>; Mon, 27 May 2024 12:42:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DBE6010FA43;
	Mon, 27 May 2024 10:42:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OgdL3RJl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBCF010FA42
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 May 2024 10:42:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716806536; x=1748342536;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DsHsKWeU4OwJcJl2AaYf3LV6+6SgqAluSKS6MalkMf8=;
 b=OgdL3RJlzh1uQGkmimemO/i3D6A99f+Yx/h++aC7PdMC/pI8MgH93q2z
 qdH58kLrqyHh5djdVfXPzfvrbup9KAYRrMcoWmtKZIAhsR/za/MIriItm
 Yx4E1xLiVF4tpqhUiUJ8iXzx98FkPZ5oV974rzmKCOx2UGuHfyJW6YCtJ
 1kR4YDqeMOhhfX9Lo8ySE1eZ6dqdmHmBQAtXUQpgX0CRHBl9qQ6hq1Xsr
 rIQHc6QD6jHtKurjg9+jM9F0/YGZbPINl+42TRhGnV5mJHw+oB+aQ6/H1
 JVSiJIxBiB+ZTmQlTYvbJ0CAz8fbqX/nKcMhAYgDpKQCBlbczpiMzzp3Z A==;
X-CSE-ConnectionGUID: zlbvMDxsRv2DqVX1l/EEfA==
X-CSE-MsgGUID: q/HMFb4lSiKcdo2kme8OcA==
X-IronPort-AV: E=McAfee;i="6600,9927,11084"; a="23718231"
X-IronPort-AV: E=Sophos;i="6.08,192,1712646000"; d="scan'208";a="23718231"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 03:42:15 -0700
X-CSE-ConnectionGUID: Q0pGefixTLaSYO8a3UPPJg==
X-CSE-MsgGUID: k1JFC18oR7CR9wcbDooQfw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,192,1712646000"; d="scan'208";a="39122762"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.200])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 03:42:14 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 2/6] drm/i915: pass dev_priv explicitly to PP_STATUS
Date: Mon, 27 May 2024 13:41:58 +0300
Message-Id: <7b76be10723f36d6e1b45be76d112a4b178ef493.1716806471.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1716806471.git.jani.nikula@intel.com>
References: <cover.1716806471.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Avoid the implicit dev_priv local variable use, and pass dev_priv
explicitly to the PP_STATUS register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c | 2 +-
 drivers/gpu/drm/i915/display/intel_lvds.c          | 6 +++---
 drivers/gpu/drm/i915/display/intel_pps.c           | 4 ++--
 drivers/gpu/drm/i915/display/intel_pps_regs.h      | 2 +-
 4 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index a860d88a65da..34b6d843bc9e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -1207,7 +1207,7 @@ static void assert_can_disable_lcpll(struct drm_i915_private *dev_priv)
 			intel_de_read(dev_priv, WRPLL_CTL(1)) & WRPLL_PLL_ENABLE,
 			"WRPLL2 enabled\n");
 	I915_STATE_WARN(dev_priv,
-			intel_de_read(dev_priv, PP_STATUS(0)) & PP_ON,
+			intel_de_read(dev_priv, PP_STATUS(dev_priv, 0)) & PP_ON,
 			"Panel power on\n");
 	I915_STATE_WARN(dev_priv,
 			intel_de_read(dev_priv, BLC_PWM_CPU_CTL2) & BLM_PWM_ENABLE,
diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index 8b8959073466..eec0dab3c3b2 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -324,7 +324,7 @@ static void intel_enable_lvds(struct intel_atomic_state *state,
 	intel_de_rmw(dev_priv, PP_CONTROL(0), 0, PANEL_POWER_ON);
 	intel_de_posting_read(dev_priv, lvds_encoder->reg);
 
-	if (intel_de_wait_for_set(dev_priv, PP_STATUS(0), PP_ON, 5000))
+	if (intel_de_wait_for_set(dev_priv, PP_STATUS(dev_priv, 0), PP_ON, 5000))
 		drm_err(&dev_priv->drm,
 			"timed out waiting for panel to power on\n");
 
@@ -340,7 +340,7 @@ static void intel_disable_lvds(struct intel_atomic_state *state,
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 
 	intel_de_rmw(dev_priv, PP_CONTROL(0), PANEL_POWER_ON, 0);
-	if (intel_de_wait_for_clear(dev_priv, PP_STATUS(0), PP_ON, 1000))
+	if (intel_de_wait_for_clear(dev_priv, PP_STATUS(dev_priv, 0), PP_ON, 1000))
 		drm_err(&dev_priv->drm,
 			"timed out waiting for panel to power off\n");
 
@@ -379,7 +379,7 @@ static void intel_lvds_shutdown(struct intel_encoder *encoder)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 
-	if (intel_de_wait_for_clear(dev_priv, PP_STATUS(0), PP_CYCLE_DELAY_ACTIVE, 5000))
+	if (intel_de_wait_for_clear(dev_priv, PP_STATUS(dev_priv, 0), PP_CYCLE_DELAY_ACTIVE, 5000))
 		drm_err(&dev_priv->drm,
 			"timed out waiting for panel power cycle delay\n");
 }
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 0ccbf9a85914..9aa08b525810 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -272,7 +272,7 @@ typedef bool (*pps_check)(struct drm_i915_private *dev_priv, int pps_idx);
 
 static bool pps_has_pp_on(struct drm_i915_private *dev_priv, int pps_idx)
 {
-	return intel_de_read(dev_priv, PP_STATUS(pps_idx)) & PP_ON;
+	return intel_de_read(dev_priv, PP_STATUS(dev_priv, pps_idx)) & PP_ON;
 }
 
 static bool pps_has_vdd_on(struct drm_i915_private *dev_priv, int pps_idx)
@@ -492,7 +492,7 @@ static void intel_pps_get_registers(struct intel_dp *intel_dp,
 		pps_idx = intel_dp->pps.pps_idx;
 
 	regs->pp_ctrl = PP_CONTROL(pps_idx);
-	regs->pp_stat = PP_STATUS(pps_idx);
+	regs->pp_stat = PP_STATUS(dev_priv, pps_idx);
 	regs->pp_on = PP_ON_DELAYS(pps_idx);
 	regs->pp_off = PP_OFF_DELAYS(pps_idx);
 
diff --git a/drivers/gpu/drm/i915/display/intel_pps_regs.h b/drivers/gpu/drm/i915/display/intel_pps_regs.h
index bdcdf6ae2747..06bdf766b749 100644
--- a/drivers/gpu/drm/i915/display/intel_pps_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_pps_regs.h
@@ -18,7 +18,7 @@
 	_MMIO(__to_intel_display(dev_priv)->pps.mmio_base - PPS_BASE + (reg) + (pps_idx) * 0x100)
 
 #define _PP_STATUS			0x61200
-#define PP_STATUS(pps_idx)		_MMIO_PPS(dev_priv, pps_idx, _PP_STATUS)
+#define PP_STATUS(dev_priv, pps_idx)	_MMIO_PPS(dev_priv, pps_idx, _PP_STATUS)
 #define   PP_ON				REG_BIT(31)
 /*
  * Indicates that all dependencies of the panel are on:
-- 
2.39.2

