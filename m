Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ADBF38CFE45
	for <lists+intel-gfx@lfdr.de>; Mon, 27 May 2024 12:42:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4046D10FA42;
	Mon, 27 May 2024 10:42:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="S8gWFhav";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2039210FA45
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 May 2024 10:42:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716806549; x=1748342549;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=v2ykyM+/SsT827SLtjcxgVQzjhIt1uNuyUQVaRqJCwQ=;
 b=S8gWFhavP9OnfRnIM1R/2j+bJaCKt9R3da2FzFJmGvJZa+lJximRaH1b
 EEzVyby/0KdGKpU2V/Yvv0Mpc0RgJoO3EgUPR0Ukg3a9urdzwadbRNEu7
 WyAUsy62PDbnMWfkeN8SG3jFJzIt42qeMeEpZc6mN5mrquuDYYsaI5MjV
 QYf8Qp4IvlsvvKadua3A1+RQ9f/X+2FUMWrqKHK4EeLow2ipQ9vKlNIWt
 ennjpsX/3N9jltGbBaH+uXnHdTuSPS9UJXRbi0Hff348Bd22nFN7Fezl+
 70U/x2o6urzo/MswTvzZ6+9Xrtkmh2orfTV2ldGOpYHkycCUkDX65TI8F Q==;
X-CSE-ConnectionGUID: PYIuwIXURBKIsT7fn2DJuQ==
X-CSE-MsgGUID: O2aOj3p/RnG8m9LctVfbnA==
X-IronPort-AV: E=McAfee;i="6600,9927,11084"; a="23718235"
X-IronPort-AV: E=Sophos;i="6.08,192,1712646000"; d="scan'208";a="23718235"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 03:42:29 -0700
X-CSE-ConnectionGUID: ZdyiK6tzQw2nRPEEz7FDyQ==
X-CSE-MsgGUID: Cy3mYoloRnuC+RFJUVR9mg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,192,1712646000"; d="scan'208";a="39122774"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.200])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 03:42:27 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 5/6] drm/i915: pass dev_priv explicitly to PP_OFF_DELAYS
Date: Mon, 27 May 2024 13:42:01 +0300
Message-Id: <122e143ff6a1c1016534dae0ba28fde0b15e3e76.1716806471.git.jani.nikula@intel.com>
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
explicitly to the PP_OFF_DELAYS register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_lvds.c     | 4 ++--
 drivers/gpu/drm/i915/display/intel_pps.c      | 2 +-
 drivers/gpu/drm/i915/display/intel_pps_regs.h | 2 +-
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index b7b4d78ec06a..3adfe93794ef 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -169,7 +169,7 @@ static void intel_lvds_pps_get_hw_state(struct drm_i915_private *dev_priv,
 	pps->t1_t2 = REG_FIELD_GET(PANEL_POWER_UP_DELAY_MASK, val);
 	pps->t5 = REG_FIELD_GET(PANEL_LIGHT_ON_DELAY_MASK, val);
 
-	val = intel_de_read(dev_priv, PP_OFF_DELAYS(0));
+	val = intel_de_read(dev_priv, PP_OFF_DELAYS(dev_priv, 0));
 	pps->t3 = REG_FIELD_GET(PANEL_POWER_DOWN_DELAY_MASK, val);
 	pps->tx = REG_FIELD_GET(PANEL_LIGHT_OFF_DELAY_MASK, val);
 
@@ -222,7 +222,7 @@ static void intel_lvds_pps_init_hw(struct drm_i915_private *dev_priv,
 		       REG_FIELD_PREP(PANEL_POWER_UP_DELAY_MASK, pps->t1_t2) |
 		       REG_FIELD_PREP(PANEL_LIGHT_ON_DELAY_MASK, pps->t5));
 
-	intel_de_write(dev_priv, PP_OFF_DELAYS(0),
+	intel_de_write(dev_priv, PP_OFF_DELAYS(dev_priv, 0),
 		       REG_FIELD_PREP(PANEL_POWER_DOWN_DELAY_MASK, pps->t3) |
 		       REG_FIELD_PREP(PANEL_LIGHT_OFF_DELAY_MASK, pps->tx));
 
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 803a1e353c06..2cc6d5f209e6 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -494,7 +494,7 @@ static void intel_pps_get_registers(struct intel_dp *intel_dp,
 	regs->pp_ctrl = PP_CONTROL(dev_priv, pps_idx);
 	regs->pp_stat = PP_STATUS(dev_priv, pps_idx);
 	regs->pp_on = PP_ON_DELAYS(dev_priv, pps_idx);
-	regs->pp_off = PP_OFF_DELAYS(pps_idx);
+	regs->pp_off = PP_OFF_DELAYS(dev_priv, pps_idx);
 
 	/* Cycle delay moved from PP_DIVISOR to PP_CONTROL */
 	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv) ||
diff --git a/drivers/gpu/drm/i915/display/intel_pps_regs.h b/drivers/gpu/drm/i915/display/intel_pps_regs.h
index 8a6acefba7fe..b1ccc54410ce 100644
--- a/drivers/gpu/drm/i915/display/intel_pps_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_pps_regs.h
@@ -66,7 +66,7 @@
 #define  PANEL_LIGHT_ON_DELAY_MASK	REG_GENMASK(12, 0)
 
 #define _PP_OFF_DELAYS			0x6120C
-#define PP_OFF_DELAYS(pps_idx)		_MMIO_PPS(dev_priv, pps_idx, _PP_OFF_DELAYS)
+#define PP_OFF_DELAYS(dev_priv, pps_idx)	_MMIO_PPS(dev_priv, pps_idx, _PP_OFF_DELAYS)
 #define  PANEL_POWER_DOWN_DELAY_MASK	REG_GENMASK(28, 16)
 #define  PANEL_LIGHT_OFF_DELAY_MASK	REG_GENMASK(12, 0)
 
-- 
2.39.2

