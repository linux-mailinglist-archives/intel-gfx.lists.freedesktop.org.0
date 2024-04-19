Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B1FD68AAC68
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Apr 2024 12:05:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B3BE10EEA3;
	Fri, 19 Apr 2024 10:04:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hnSLeBZv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC0F110EEA3
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Apr 2024 10:04:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713521098; x=1745057098;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JuZbp2Id08Z8mcZbtGOjzPqJrvENvk5Apcz+TZv1QCM=;
 b=hnSLeBZvUTHPoLG48sy1B7q2pPR52udj/TACo5CVyM9vU8FPrSmXM2wX
 Ll2+qI4VuFIfCmwd/7MIKnuTUkh8mAy1IaiZqiWqml03Nj5ffgIjzuf5a
 w7gR+cHIhQr3zvTKyyMdR+cboGg/tVR/BIx61OQs4z3kGDKBYh6F17wK/
 kg2W9skvvvHa1PghApGOxMBAqESPPDaO6uRRJs+NWgkj60MPyRP3Fpsfp
 yqQUJuS1mLbP1Io01yEnyIwFThZ1NtM8zmDpNI47bUyQl6DYy3+8zFp0n
 +zHdDxbIDl7AzoBs5p4niJp6ZXIYnv2Rjz81/y5JOMcivwTFJsb1ZVoCG g==;
X-CSE-ConnectionGUID: UgbzO4+IQCiqwYC8owh9Zg==
X-CSE-MsgGUID: gb/iaW5dQ+G5ssjqT1VUEQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11047"; a="8975193"
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; 
   d="scan'208";a="8975193"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2024 03:04:57 -0700
X-CSE-ConnectionGUID: Y9TV+HXFS0+PnR9F+XGsng==
X-CSE-MsgGUID: F8lRQV6WSNylJ5nJ3GH2LA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; d="scan'208";a="23361479"
Received: from agherasi-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.46.119])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2024 03:04:19 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH v2 2/4] drm/i915/dsi: add VLV_ prefix to VLV only register
 macros
Date: Fri, 19 Apr 2024 13:04:04 +0300
Message-Id: <7e101167c52746748dbff739bc9247a664ca2840.1713520813.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1713520813.git.jani.nikula@intel.com>
References: <cover.1713520813.git.jani.nikula@intel.com>
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
consistency. This is helpful because the platform specific macros can
use the static MIPI MMIO base rather than dynamic.

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

