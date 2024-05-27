Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C3C58CFE41
	for <lists+intel-gfx@lfdr.de>; Mon, 27 May 2024 12:42:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73F4F10FA41;
	Mon, 27 May 2024 10:42:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="C4KAV4R2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFA3310FA41
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 May 2024 10:42:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716806531; x=1748342531;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Jr+yMjJG9VIzTw5jceHVz/i+Ca9/JWGdltsqad30+Mo=;
 b=C4KAV4R22hVb14hdH34NYK28071UQkiQtt5mqPbc48JLIOulovnPUyyW
 pQwbkXjufMJn/lhmb4yMx3X7J1n+8jBbNI/vtce8v4iFAM+dxCqoIQioM
 cm9WMLRK5sdD8W73dLvBOAzO82txyqd/Ltse/k/z0VHp3yE13CkiYSo66
 Qh21Xjk7ZXhaz+XEjFuu7bSfrik3bcu1Mdo2WplqAEvSYzyIsnSHnqx8l
 GR2M+4xKe6Lrgo3JlAllpaDODTnjMa8fUv3ihuqm3DTBYyOLhx01J45Ss
 kADGnUipiswSW0utE1aQfLL5b11AhdeUuU/ttzNqRY2Ks7ERmI2kMe7zN Q==;
X-CSE-ConnectionGUID: 2FUEaqMcQy2V7Gsi88pl5g==
X-CSE-MsgGUID: CEpprUSHSHiNxTaFYqAtgw==
X-IronPort-AV: E=McAfee;i="6600,9927,11084"; a="23718224"
X-IronPort-AV: E=Sophos;i="6.08,192,1712646000"; d="scan'208";a="23718224"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 03:42:11 -0700
X-CSE-ConnectionGUID: FkaAHqa0TTyeEo7pc8Gl/w==
X-CSE-MsgGUID: JwyMGhlLQquve9ityjqEyA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,192,1712646000"; d="scan'208";a="39122758"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.200])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 03:42:10 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 1/6] drm/i915: pass dev_priv explicitly to _MMIO_PPS
Date: Mon, 27 May 2024 13:41:57 +0300
Message-Id: <1e9f3ef7eee65946c0e6bf06cc2547a38e8dab78.1716806471.git.jani.nikula@intel.com>
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
explicitly to the _MMIO_PPS register macro.

While at it, use __to_intel_display() to allow passing in struct
intel_display at a later time.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_pps_regs.h | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_pps_regs.h b/drivers/gpu/drm/i915/display/intel_pps_regs.h
index 60edd2a27100..bdcdf6ae2747 100644
--- a/drivers/gpu/drm/i915/display/intel_pps_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_pps_regs.h
@@ -6,6 +6,7 @@
 #ifndef __INTEL_PPS_REGS_H__
 #define __INTEL_PPS_REGS_H__
 
+#include "intel_display_conversion.h"
 #include "intel_display_reg_defs.h"
 
 /* Panel power sequencing */
@@ -13,12 +14,11 @@
 #define VLV_PPS_BASE			(VLV_DISPLAY_BASE + PPS_BASE)
 #define PCH_PPS_BASE			0xC7200
 
-#define _MMIO_PPS(pps_idx, reg)		_MMIO(dev_priv->display.pps.mmio_base -	\
-					      PPS_BASE + (reg) +	\
-					      (pps_idx) * 0x100)
+#define _MMIO_PPS(dev_priv, pps_idx, reg) \
+	_MMIO(__to_intel_display(dev_priv)->pps.mmio_base - PPS_BASE + (reg) + (pps_idx) * 0x100)
 
 #define _PP_STATUS			0x61200
-#define PP_STATUS(pps_idx)		_MMIO_PPS(pps_idx, _PP_STATUS)
+#define PP_STATUS(pps_idx)		_MMIO_PPS(dev_priv, pps_idx, _PP_STATUS)
 #define   PP_ON				REG_BIT(31)
 /*
  * Indicates that all dependencies of the panel are on:
@@ -45,7 +45,7 @@
 #define   PP_SEQUENCE_STATE_RESET	REG_FIELD_PREP(PP_SEQUENCE_STATE_MASK, 0xf)
 
 #define _PP_CONTROL			0x61204
-#define PP_CONTROL(pps_idx)		_MMIO_PPS(pps_idx, _PP_CONTROL)
+#define PP_CONTROL(pps_idx)		_MMIO_PPS(dev_priv, pps_idx, _PP_CONTROL)
 #define  PANEL_UNLOCK_MASK		REG_GENMASK(31, 16)
 #define  PANEL_UNLOCK_REGS		REG_FIELD_PREP(PANEL_UNLOCK_MASK, 0xabcd)
 #define  BXT_POWER_CYCLE_DELAY_MASK	REG_GENMASK(8, 4)
@@ -55,7 +55,7 @@
 #define  PANEL_POWER_ON			REG_BIT(0)
 
 #define _PP_ON_DELAYS			0x61208
-#define PP_ON_DELAYS(pps_idx)		_MMIO_PPS(pps_idx, _PP_ON_DELAYS)
+#define PP_ON_DELAYS(pps_idx)		_MMIO_PPS(dev_priv, pps_idx, _PP_ON_DELAYS)
 #define  PANEL_PORT_SELECT_MASK		REG_GENMASK(31, 30)
 #define  PANEL_PORT_SELECT_LVDS		REG_FIELD_PREP(PANEL_PORT_SELECT_MASK, 0)
 #define  PANEL_PORT_SELECT_DPA		REG_FIELD_PREP(PANEL_PORT_SELECT_MASK, 1)
@@ -66,12 +66,12 @@
 #define  PANEL_LIGHT_ON_DELAY_MASK	REG_GENMASK(12, 0)
 
 #define _PP_OFF_DELAYS			0x6120C
-#define PP_OFF_DELAYS(pps_idx)		_MMIO_PPS(pps_idx, _PP_OFF_DELAYS)
+#define PP_OFF_DELAYS(pps_idx)		_MMIO_PPS(dev_priv, pps_idx, _PP_OFF_DELAYS)
 #define  PANEL_POWER_DOWN_DELAY_MASK	REG_GENMASK(28, 16)
 #define  PANEL_LIGHT_OFF_DELAY_MASK	REG_GENMASK(12, 0)
 
 #define _PP_DIVISOR			0x61210
-#define PP_DIVISOR(pps_idx)		_MMIO_PPS(pps_idx, _PP_DIVISOR)
+#define PP_DIVISOR(pps_idx)		_MMIO_PPS(dev_priv, pps_idx, _PP_DIVISOR)
 #define  PP_REFERENCE_DIVIDER_MASK	REG_GENMASK(31, 8)
 #define  PANEL_POWER_CYCLE_DELAY_MASK	REG_GENMASK(4, 0)
 
-- 
2.39.2

