Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE84A8CFE44
	for <lists+intel-gfx@lfdr.de>; Mon, 27 May 2024 12:42:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26DBF10FA46;
	Mon, 27 May 2024 10:42:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IGqakDYc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9AF4010FA46
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 May 2024 10:42:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716806544; x=1748342544;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EZpt/b1WyQdvt7EsQ9SMwS7WB8q8yPICuBGqvbl+1R0=;
 b=IGqakDYccAX2aO685abNt2n5DoJ04qSv8VK1Noi2rdmxAiUanMHW721T
 sYu8x4cu2M0NKKJk1oF5u2IFbXjxtd0Oo5EVfEn4//aWVSYh1rPooMzy9
 NfJk1W8e6O3sotq6EMuC5ruC8jVr4yxS4e39Q+rSMaTWe2DmXsrg4hSwj
 7rb50qOuTeXNzk7dDCVKpQ0YNcOI27A+JLGeLoS7xY6i86tytdmC9gdHC
 N5SM7KdaVQ75v+Xun0SLt7ek/hdnwvuOEZTjbQ/lBw8vYRAav6cnd2SJp
 zl1kzRXEgeCjUOtUByhaVqEHiOqxCKCLVIu4V9YZpR7P/0AAbVVtHs5Cr g==;
X-CSE-ConnectionGUID: eR/I46mwT8OSdKt9jSWEJw==
X-CSE-MsgGUID: fvMW7k00Suu53+1fiorxsQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11084"; a="23718234"
X-IronPort-AV: E=Sophos;i="6.08,192,1712646000"; d="scan'208";a="23718234"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 03:42:24 -0700
X-CSE-ConnectionGUID: /XnACoo9SfmIHfLn4Z0sDA==
X-CSE-MsgGUID: nDKgalkySmyySiTphDFx9A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,192,1712646000"; d="scan'208";a="39122771"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.200])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 03:42:23 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 4/6] drm/i915: pass dev_priv explicitly to PP_ON_DELAYS
Date: Mon, 27 May 2024 13:42:00 +0300
Message-Id: <0fc707fde15bc11893b6e1d5038162368e3a2b8d.1716806471.git.jani.nikula@intel.com>
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
explicitly to the PP_ON_DELAYS register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_lvds.c     |  4 ++--
 drivers/gpu/drm/i915/display/intel_pps.c      | 10 +++++-----
 drivers/gpu/drm/i915/display/intel_pps_regs.h |  2 +-
 3 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index 367b3528e141..b7b4d78ec06a 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -164,7 +164,7 @@ static void intel_lvds_pps_get_hw_state(struct drm_i915_private *dev_priv,
 	pps->powerdown_on_reset = intel_de_read(dev_priv,
 						PP_CONTROL(dev_priv, 0)) & PANEL_POWER_RESET;
 
-	val = intel_de_read(dev_priv, PP_ON_DELAYS(0));
+	val = intel_de_read(dev_priv, PP_ON_DELAYS(dev_priv, 0));
 	pps->port = REG_FIELD_GET(PANEL_PORT_SELECT_MASK, val);
 	pps->t1_t2 = REG_FIELD_GET(PANEL_POWER_UP_DELAY_MASK, val);
 	pps->t5 = REG_FIELD_GET(PANEL_LIGHT_ON_DELAY_MASK, val);
@@ -217,7 +217,7 @@ static void intel_lvds_pps_init_hw(struct drm_i915_private *dev_priv,
 		val |= PANEL_POWER_RESET;
 	intel_de_write(dev_priv, PP_CONTROL(dev_priv, 0), val);
 
-	intel_de_write(dev_priv, PP_ON_DELAYS(0),
+	intel_de_write(dev_priv, PP_ON_DELAYS(dev_priv, 0),
 		       REG_FIELD_PREP(PANEL_PORT_SELECT_MASK, pps->port) |
 		       REG_FIELD_PREP(PANEL_POWER_UP_DELAY_MASK, pps->t1_t2) |
 		       REG_FIELD_PREP(PANEL_LIGHT_ON_DELAY_MASK, pps->t5));
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 6b185424271d..803a1e353c06 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -292,7 +292,7 @@ vlv_initial_pps_pipe(struct drm_i915_private *dev_priv,
 	enum pipe pipe;
 
 	for (pipe = PIPE_A; pipe <= PIPE_B; pipe++) {
-		u32 port_sel = intel_de_read(dev_priv, PP_ON_DELAYS(pipe)) &
+		u32 port_sel = intel_de_read(dev_priv, PP_ON_DELAYS(dev_priv, pipe)) &
 			PANEL_PORT_SELECT_MASK;
 
 		if (port_sel != PANEL_PORT_SELECT_VLV(port))
@@ -493,7 +493,7 @@ static void intel_pps_get_registers(struct intel_dp *intel_dp,
 
 	regs->pp_ctrl = PP_CONTROL(dev_priv, pps_idx);
 	regs->pp_stat = PP_STATUS(dev_priv, pps_idx);
-	regs->pp_on = PP_ON_DELAYS(pps_idx);
+	regs->pp_on = PP_ON_DELAYS(dev_priv, pps_idx);
 	regs->pp_off = PP_OFF_DELAYS(pps_idx);
 
 	/* Cycle delay moved from PP_DIVISOR to PP_CONTROL */
@@ -1111,7 +1111,7 @@ static void vlv_detach_power_sequencer(struct intel_dp *intel_dp)
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	struct drm_i915_private *dev_priv = to_i915(dig_port->base.base.dev);
 	enum pipe pipe = intel_dp->pps.pps_pipe;
-	i915_reg_t pp_on_reg = PP_ON_DELAYS(pipe);
+	i915_reg_t pp_on_reg = PP_ON_DELAYS(dev_priv, pipe);
 
 	drm_WARN_ON(&dev_priv->drm, intel_dp->pps.active_pipe != INVALID_PIPE);
 
@@ -1715,7 +1715,7 @@ void assert_pps_unlocked(struct drm_i915_private *dev_priv, enum pipe pipe)
 		u32 port_sel;
 
 		pp_reg = PP_CONTROL(dev_priv, 0);
-		port_sel = intel_de_read(dev_priv, PP_ON_DELAYS(0)) & PANEL_PORT_SELECT_MASK;
+		port_sel = intel_de_read(dev_priv, PP_ON_DELAYS(dev_priv, 0)) & PANEL_PORT_SELECT_MASK;
 
 		switch (port_sel) {
 		case PANEL_PORT_SELECT_LVDS:
@@ -1742,7 +1742,7 @@ void assert_pps_unlocked(struct drm_i915_private *dev_priv, enum pipe pipe)
 		u32 port_sel;
 
 		pp_reg = PP_CONTROL(dev_priv, 0);
-		port_sel = intel_de_read(dev_priv, PP_ON_DELAYS(0)) & PANEL_PORT_SELECT_MASK;
+		port_sel = intel_de_read(dev_priv, PP_ON_DELAYS(dev_priv, 0)) & PANEL_PORT_SELECT_MASK;
 
 		drm_WARN_ON(&dev_priv->drm,
 			    port_sel != PANEL_PORT_SELECT_LVDS);
diff --git a/drivers/gpu/drm/i915/display/intel_pps_regs.h b/drivers/gpu/drm/i915/display/intel_pps_regs.h
index e52d87b9f0ad..8a6acefba7fe 100644
--- a/drivers/gpu/drm/i915/display/intel_pps_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_pps_regs.h
@@ -55,7 +55,7 @@
 #define  PANEL_POWER_ON			REG_BIT(0)
 
 #define _PP_ON_DELAYS			0x61208
-#define PP_ON_DELAYS(pps_idx)		_MMIO_PPS(dev_priv, pps_idx, _PP_ON_DELAYS)
+#define PP_ON_DELAYS(dev_priv, pps_idx)	_MMIO_PPS(dev_priv, pps_idx, _PP_ON_DELAYS)
 #define  PANEL_PORT_SELECT_MASK		REG_GENMASK(31, 30)
 #define  PANEL_PORT_SELECT_LVDS		REG_FIELD_PREP(PANEL_PORT_SELECT_MASK, 0)
 #define  PANEL_PORT_SELECT_DPA		REG_FIELD_PREP(PANEL_PORT_SELECT_MASK, 1)
-- 
2.39.2

