Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5852B89FD0D
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Apr 2024 18:36:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7753A113410;
	Wed, 10 Apr 2024 16:36:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bj6AQTV5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF3FA113410
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Apr 2024 16:36:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712767003; x=1744303003;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=J734HepjsFkdlrLxdfE/ZaX2jg3939/LbpJYQBfucEY=;
 b=bj6AQTV5TppXCuQ8nPOArxQfHk7NJp3FVkMa2+vClUnWaWSB3t61lXgF
 9qnD2AXV1wBgfAIwlimp0s++te8/bhJomnISjb8uRW3fvxSCX85rTk0qP
 M5Ct156O/DTWFkuzcPNmuMDyGWqeRHAfvBGp05TfYUKrsJYIAx7dlMLgb
 4Z7QVo9ekUkp9v+dkM6EL4nv9oKOWQKb2wJMbzRg//eRzEeCS99H3WXiO
 yA5NnGgSLsxevwCviKtzXJI4mfulHQghK8FYGuwRBAx/HVTZXgA0Z7qb5
 WDFPCfFApExbbn7j4uWwEeCyHvLmmk/HgBHf6xFe45mwr8bg5EhyavBBl A==;
X-CSE-ConnectionGUID: htngo3XJTO6ET8AcSkGutw==
X-CSE-MsgGUID: Roo+N48tRAWJoMrtl/kEZw==
X-IronPort-AV: E=McAfee;i="6600,9927,11039"; a="19292888"
X-IronPort-AV: E=Sophos;i="6.07,190,1708416000"; d="scan'208";a="19292888"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2024 09:36:43 -0700
X-CSE-ConnectionGUID: M+fUPyvyT3egEaYFI2Ukzg==
X-CSE-MsgGUID: mUL/5Qh1RX24tG56cK098Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,190,1708416000"; d="scan'208";a="51580343"
Received: from oakasatk-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.60.54])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2024 09:36:41 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 2/3] drm/i915/dsi: add VLV_ prefix to VLV only register macros
Date: Wed, 10 Apr 2024 19:36:27 +0300
Message-Id: <b12694cb622350d70d3eec592420fb6a894f64e7.1712766927.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1712766927.git.jani.nikula@intel.com>
References: <cover.1712766927.git.jani.nikula@intel.com>
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

All the BXT specific macros have BXT_ prefix, do the same for VLV for
consistency.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/vlv_dsi.c      | 6 +++---
 drivers/gpu/drm/i915/display/vlv_dsi_regs.h | 4 ++--
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
index 63f4af601d15..665247a2e834 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
@@ -481,7 +481,7 @@ static void vlv_dsi_device_ready(struct intel_encoder *encoder)
 		 * Common bit for both MIPI Port A & MIPI Port C
 		 * No similar bit in MIPI Port C reg
 		 */
-		intel_de_rmw(dev_priv, MIPI_PORT_CTRL(PORT_A), 0, LP_OUTPUT_HOLD);
+		intel_de_rmw(dev_priv, VLV_MIPI_PORT_CTRL(PORT_A), 0, LP_OUTPUT_HOLD);
 		usleep_range(1000, 1500);
 
 		intel_de_write(dev_priv, MIPI_DEVICE_READY(port),
@@ -563,7 +563,7 @@ static void glk_dsi_clear_device_ready(struct intel_encoder *encoder)
 static i915_reg_t port_ctrl_reg(struct drm_i915_private *i915, enum port port)
 {
 	return IS_GEMINILAKE(i915) || IS_BROXTON(i915) ?
-		BXT_MIPI_PORT_CTRL(port) : MIPI_PORT_CTRL(port);
+		BXT_MIPI_PORT_CTRL(port) : VLV_MIPI_PORT_CTRL(port);
 }
 
 static void vlv_dsi_clear_device_ready(struct intel_encoder *encoder)
@@ -576,7 +576,7 @@ static void vlv_dsi_clear_device_ready(struct intel_encoder *encoder)
 	for_each_dsi_port(port, intel_dsi->ports) {
 		/* Common bit for both MIPI Port A & MIPI Port C on VLV/CHV */
 		i915_reg_t port_ctrl = IS_BROXTON(dev_priv) ?
-			BXT_MIPI_PORT_CTRL(port) : MIPI_PORT_CTRL(PORT_A);
+			BXT_MIPI_PORT_CTRL(port) : VLV_MIPI_PORT_CTRL(PORT_A);
 
 		intel_de_write(dev_priv, MIPI_DEVICE_READY(port),
 			       DEVICE_READY | ULPS_STATE_ENTER);
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi_regs.h b/drivers/gpu/drm/i915/display/vlv_dsi_regs.h
index b0cdaad7db9c..12a608a73720 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi_regs.h
+++ b/drivers/gpu/drm/i915/display/vlv_dsi_regs.h
@@ -40,7 +40,7 @@
 
 #define _MIPIA_PORT_CTRL			(VLV_DISPLAY_BASE + 0x61190)
 #define _MIPIC_PORT_CTRL			(VLV_DISPLAY_BASE + 0x61700)
-#define MIPI_PORT_CTRL(port)	_MMIO_MIPI(port, _MIPIA_PORT_CTRL, _MIPIC_PORT_CTRL)
+#define VLV_MIPI_PORT_CTRL(port)	_MMIO_MIPI(port, _MIPIA_PORT_CTRL, _MIPIC_PORT_CTRL)
 
  /* BXT port control */
 #define _BXT_MIPIA_PORT_CTRL				0x6B0C0
@@ -89,7 +89,7 @@
 
 #define _MIPIA_TEARING_CTRL			(VLV_DISPLAY_BASE + 0x61194)
 #define _MIPIC_TEARING_CTRL			(VLV_DISPLAY_BASE + 0x61704)
-#define MIPI_TEARING_CTRL(port)			_MMIO_MIPI(port, _MIPIA_TEARING_CTRL, _MIPIC_TEARING_CTRL)
+#define VLV_MIPI_TEARING_CTRL(port)		_MMIO_MIPI(port, _MIPIA_TEARING_CTRL, _MIPIC_TEARING_CTRL)
 #define  TEARING_EFFECT_DELAY_SHIFT			0
 #define  TEARING_EFFECT_DELAY_MASK			(0xffff << 0)
 
-- 
2.39.2

