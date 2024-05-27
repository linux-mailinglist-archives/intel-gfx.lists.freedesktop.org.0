Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EBD838CFE47
	for <lists+intel-gfx@lfdr.de>; Mon, 27 May 2024 12:42:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71FAC10FA47;
	Mon, 27 May 2024 10:42:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HEnTDHUF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25C0310FA47
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 May 2024 10:42:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716806554; x=1748342554;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pqKp+qpAIpiITUUDVkWH03C+xSwYivfiX14G/SVnn1c=;
 b=HEnTDHUF+vH5l4aUs4nUdkZ4jNrOgbJNJrzZFuV0AWBSFPtHk22sKM6d
 68R7LdG2r/Gf8Kuu05Uu9xMGZUHYefqZ1FJTQrTkllCREXKEh8s8DgxTv
 nu2YcO83Daiqsb+VGYDPFpn/Lhsh8zMjvv+39rKXJVBIEGgs4BXWXe+bj
 9o1ZymA2SEpT28k1+SwXdNOcSHGsVNGN1TkQZRjIfXBkiiJBb4uqmk/tu
 XttRiX7wY0uZTFBt3bxDnTaDzkBTpR+FPzlm0PhBT0KLXhXiIUd6b2A0z
 wm8wvdS4O3DrCXUCzfst2KavrlFqchtGNJPuj5Kq1fBGPcHhhseMz33nO Q==;
X-CSE-ConnectionGUID: RQ6Ho86+Sy6/LdYUKskzXQ==
X-CSE-MsgGUID: cglQC9V2QHqk6v3Ti7OVGQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11084"; a="24535957"
X-IronPort-AV: E=Sophos;i="6.08,192,1712646000"; d="scan'208";a="24535957"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 03:42:34 -0700
X-CSE-ConnectionGUID: Y0J8cdYnSKmQIEbQU8TApw==
X-CSE-MsgGUID: XBAwOIN8S+OJshfMGfoHJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,192,1712646000"; d="scan'208";a="39156298"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.200])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 03:42:33 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 6/6] drm/i915: pass dev_priv explicitly to PP_DIVISOR
Date: Mon, 27 May 2024 13:42:02 +0300
Message-Id: <28e9f7e3570c15ac5c229048ec0def2e4a667ffc.1716806471.git.jani.nikula@intel.com>
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
explicitly to the PP_DIVISOR register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_lvds.c     | 4 ++--
 drivers/gpu/drm/i915/display/intel_pps.c      | 2 +-
 drivers/gpu/drm/i915/display/intel_pps_regs.h | 2 +-
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index 3adfe93794ef..891777481dd9 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -173,7 +173,7 @@ static void intel_lvds_pps_get_hw_state(struct drm_i915_private *dev_priv,
 	pps->t3 = REG_FIELD_GET(PANEL_POWER_DOWN_DELAY_MASK, val);
 	pps->tx = REG_FIELD_GET(PANEL_LIGHT_OFF_DELAY_MASK, val);
 
-	val = intel_de_read(dev_priv, PP_DIVISOR(0));
+	val = intel_de_read(dev_priv, PP_DIVISOR(dev_priv, 0));
 	pps->divider = REG_FIELD_GET(PP_REFERENCE_DIVIDER_MASK, val);
 	val = REG_FIELD_GET(PANEL_POWER_CYCLE_DELAY_MASK, val);
 	/*
@@ -226,7 +226,7 @@ static void intel_lvds_pps_init_hw(struct drm_i915_private *dev_priv,
 		       REG_FIELD_PREP(PANEL_POWER_DOWN_DELAY_MASK, pps->t3) |
 		       REG_FIELD_PREP(PANEL_LIGHT_OFF_DELAY_MASK, pps->tx));
 
-	intel_de_write(dev_priv, PP_DIVISOR(0),
+	intel_de_write(dev_priv, PP_DIVISOR(dev_priv, 0),
 		       REG_FIELD_PREP(PP_REFERENCE_DIVIDER_MASK, pps->divider) |
 		       REG_FIELD_PREP(PANEL_POWER_CYCLE_DELAY_MASK, DIV_ROUND_UP(pps->t4, 1000) + 1));
 }
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 2cc6d5f209e6..73046ef58d8e 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -501,7 +501,7 @@ static void intel_pps_get_registers(struct intel_dp *intel_dp,
 	    INTEL_PCH_TYPE(dev_priv) >= PCH_CNP)
 		regs->pp_div = INVALID_MMIO_REG;
 	else
-		regs->pp_div = PP_DIVISOR(pps_idx);
+		regs->pp_div = PP_DIVISOR(dev_priv, pps_idx);
 }
 
 static i915_reg_t
diff --git a/drivers/gpu/drm/i915/display/intel_pps_regs.h b/drivers/gpu/drm/i915/display/intel_pps_regs.h
index b1ccc54410ce..8f9dbfab9523 100644
--- a/drivers/gpu/drm/i915/display/intel_pps_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_pps_regs.h
@@ -71,7 +71,7 @@
 #define  PANEL_LIGHT_OFF_DELAY_MASK	REG_GENMASK(12, 0)
 
 #define _PP_DIVISOR			0x61210
-#define PP_DIVISOR(pps_idx)		_MMIO_PPS(dev_priv, pps_idx, _PP_DIVISOR)
+#define PP_DIVISOR(dev_priv, pps_idx)	_MMIO_PPS(dev_priv, pps_idx, _PP_DIVISOR)
 #define  PP_REFERENCE_DIVIDER_MASK	REG_GENMASK(31, 8)
 #define  PANEL_POWER_CYCLE_DELAY_MASK	REG_GENMASK(4, 0)
 
-- 
2.39.2

