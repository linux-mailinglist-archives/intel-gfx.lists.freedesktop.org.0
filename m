Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F1A4AB4FC0
	for <lists+intel-gfx@lfdr.de>; Tue, 13 May 2025 11:28:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E67F010E513;
	Tue, 13 May 2025 09:28:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="B7XDa9yr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E091C10E506;
 Tue, 13 May 2025 09:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747128534; x=1778664534;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zh5LEcu3mfzYEMWQyLMYibJfKx2JN/J+i505wltEUm0=;
 b=B7XDa9yr4hzHhAuYov5wAsvcksdWuVkQp1cQQqyEZzgXEeLJ8+cToB0A
 zQrhYRx7dxoEh5wlxNZEbWN/RaVKa0ruseY4NdvAmxmCfGHzxD6/HXrqI
 9Z9bedH749ApHQrzmnqerMWozO4pFpyCrJp8l2pOYNEphjDE47lJgG2al
 ba5UaMPueTwCuCl1DkjAJIlXFpw3bzRQRQU0sdKDwIw29gU/h0K4mLM05
 lqt0BpItRY3Y4XPnRalT++4jmzN+mIS1Aw+BtRhTslisvhXOYd+w0Pjde
 kndS7LI3okQcijeRZaNj4fxU31hTJ27GnXY81Ou1cnAPwq7/mrWpK5jdi A==;
X-CSE-ConnectionGUID: MBOAesxATWeI64jdiNv3Bw==
X-CSE-MsgGUID: 5qywrJPoTY2JvTsORcKzUw==
X-IronPort-AV: E=McAfee;i="6700,10204,11431"; a="49128968"
X-IronPort-AV: E=Sophos;i="6.15,284,1739865600"; d="scan'208";a="49128968"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2025 02:28:54 -0700
X-CSE-ConnectionGUID: GGDqhD+tQFy8fbpWF3UMMg==
X-CSE-MsgGUID: 3bb8spyQQxKBd+H0NioeJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,284,1739865600"; d="scan'208";a="160918421"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.175])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2025 02:28:52 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 1/5] drm/i915/pps: drop dependency on
 intel_display_conversion.h
Date: Tue, 13 May 2025 12:28:41 +0300
Message-Id: <4c23fd8dfcadefeeb52189045421084bcfd50d57.1747128495.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1747128495.git.jani.nikula@intel.com>
References: <cover.1747128495.git.jani.nikula@intel.com>
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

All the PPS register users have been converted to struct
intel_display. The backward compat conversion to struct drm_i915_private
is no longer needed. Drop it, along with the include, and convert the
dev_priv macro parameter names to display while at it.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_pps_regs.h | 15 +++++++--------
 1 file changed, 7 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_pps_regs.h b/drivers/gpu/drm/i915/display/intel_pps_regs.h
index 8f9dbfab9523..2f014d929d32 100644
--- a/drivers/gpu/drm/i915/display/intel_pps_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_pps_regs.h
@@ -6,7 +6,6 @@
 #ifndef __INTEL_PPS_REGS_H__
 #define __INTEL_PPS_REGS_H__
 
-#include "intel_display_conversion.h"
 #include "intel_display_reg_defs.h"
 
 /* Panel power sequencing */
@@ -14,11 +13,11 @@
 #define VLV_PPS_BASE			(VLV_DISPLAY_BASE + PPS_BASE)
 #define PCH_PPS_BASE			0xC7200
 
-#define _MMIO_PPS(dev_priv, pps_idx, reg) \
-	_MMIO(__to_intel_display(dev_priv)->pps.mmio_base - PPS_BASE + (reg) + (pps_idx) * 0x100)
+#define _MMIO_PPS(display, pps_idx, reg) \
+	_MMIO((display)->pps.mmio_base - PPS_BASE + (reg) + (pps_idx) * 0x100)
 
 #define _PP_STATUS			0x61200
-#define PP_STATUS(dev_priv, pps_idx)	_MMIO_PPS(dev_priv, pps_idx, _PP_STATUS)
+#define PP_STATUS(display, pps_idx)	_MMIO_PPS((display), (pps_idx), _PP_STATUS)
 #define   PP_ON				REG_BIT(31)
 /*
  * Indicates that all dependencies of the panel are on:
@@ -45,7 +44,7 @@
 #define   PP_SEQUENCE_STATE_RESET	REG_FIELD_PREP(PP_SEQUENCE_STATE_MASK, 0xf)
 
 #define _PP_CONTROL			0x61204
-#define PP_CONTROL(dev_priv, pps_idx)	_MMIO_PPS(dev_priv, pps_idx, _PP_CONTROL)
+#define PP_CONTROL(display, pps_idx)	_MMIO_PPS((display), (pps_idx), _PP_CONTROL)
 #define  PANEL_UNLOCK_MASK		REG_GENMASK(31, 16)
 #define  PANEL_UNLOCK_REGS		REG_FIELD_PREP(PANEL_UNLOCK_MASK, 0xabcd)
 #define  BXT_POWER_CYCLE_DELAY_MASK	REG_GENMASK(8, 4)
@@ -55,7 +54,7 @@
 #define  PANEL_POWER_ON			REG_BIT(0)
 
 #define _PP_ON_DELAYS			0x61208
-#define PP_ON_DELAYS(dev_priv, pps_idx)	_MMIO_PPS(dev_priv, pps_idx, _PP_ON_DELAYS)
+#define PP_ON_DELAYS(display, pps_idx)	_MMIO_PPS((display), (pps_idx), _PP_ON_DELAYS)
 #define  PANEL_PORT_SELECT_MASK		REG_GENMASK(31, 30)
 #define  PANEL_PORT_SELECT_LVDS		REG_FIELD_PREP(PANEL_PORT_SELECT_MASK, 0)
 #define  PANEL_PORT_SELECT_DPA		REG_FIELD_PREP(PANEL_PORT_SELECT_MASK, 1)
@@ -66,12 +65,12 @@
 #define  PANEL_LIGHT_ON_DELAY_MASK	REG_GENMASK(12, 0)
 
 #define _PP_OFF_DELAYS			0x6120C
-#define PP_OFF_DELAYS(dev_priv, pps_idx)	_MMIO_PPS(dev_priv, pps_idx, _PP_OFF_DELAYS)
+#define PP_OFF_DELAYS(display, pps_idx)	_MMIO_PPS((display), (pps_idx), _PP_OFF_DELAYS)
 #define  PANEL_POWER_DOWN_DELAY_MASK	REG_GENMASK(28, 16)
 #define  PANEL_LIGHT_OFF_DELAY_MASK	REG_GENMASK(12, 0)
 
 #define _PP_DIVISOR			0x61210
-#define PP_DIVISOR(dev_priv, pps_idx)	_MMIO_PPS(dev_priv, pps_idx, _PP_DIVISOR)
+#define PP_DIVISOR(display, pps_idx)	_MMIO_PPS((display), (pps_idx), _PP_DIVISOR)
 #define  PP_REFERENCE_DIVIDER_MASK	REG_GENMASK(31, 8)
 #define  PANEL_POWER_CYCLE_DELAY_MASK	REG_GENMASK(4, 0)
 
-- 
2.39.5

