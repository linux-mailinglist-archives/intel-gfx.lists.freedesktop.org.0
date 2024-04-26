Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B74D8B3606
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Apr 2024 12:51:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BEE7010F6B5;
	Fri, 26 Apr 2024 10:51:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mxpV1aZQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D128610F6B5
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Apr 2024 10:51:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714128712; x=1745664712;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pJLGdunsWPVzAoGURJL+vPqBso1WyNei1yz5Vw9QTvY=;
 b=mxpV1aZQbIr4t5AgwAJ0xkRSf2NsBsXwNARgtNDNPN7aa2p5cIMF+HhE
 dEIvj8GhaYdS+7ggyq67B9GAx1yNojcE4O+iv8LopwczCD35fv5DnmjcE
 Ohqbrlr15q1j+4HQp0BhUZE4DqyqrN68CSP/+9Z6Mk1le7CDKRJkOl/E6
 LdLy+Lg8O/hahocR8irdgFWnGP4KAan6hEAlG26X4d4tisHYEQO+wbnEb
 ywDtBuM+5kQVoTMYXKw1mS73b1RGNcL9JAywW9ClfqZjyCecTmwej7dR5
 Nho6JkGnkhpfwBdMLiiy+CX+uYJ2nwzzIDoKRB77+wB0R/y1EUEF/YTwx Q==;
X-CSE-ConnectionGUID: tvH9mUEqSl+dyNEvIAAvmA==
X-CSE-MsgGUID: X+YnTL3+RkmusPhgY84Vzw==
X-IronPort-AV: E=McAfee;i="6600,9927,11055"; a="21264955"
X-IronPort-AV: E=Sophos;i="6.07,232,1708416000"; d="scan'208";a="21264955"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2024 03:51:51 -0700
X-CSE-ConnectionGUID: q92Aq+rRSKq709KaAnT9FQ==
X-CSE-MsgGUID: Fk9oTJSbQ42en8Oz7AXOjQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,232,1708416000"; d="scan'208";a="25468624"
Received: from dgarbuz-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.48.145])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2024 03:51:50 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH v2 2/4] drm/i915/color: move palette registers to
 intel_color_regs.h
Date: Fri, 26 Apr 2024 13:51:35 +0300
Message-Id: <1322f577b113b8fc1a6c2ef35340fc3c599b4bcb.1714128645.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1714128645.git.jani.nikula@intel.com>
References: <cover.1714128645.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

For some reason the paletter registers were missed when adding
intel_color_regs.h. Finish the job. Adjust some comments while at it.

v2: Fix comments (Ville)

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_color_regs.h   | 30 ++++++++++++++++++-
 drivers/gpu/drm/i915/i915_reg.h               | 30 -------------------
 2 files changed, 29 insertions(+), 31 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color_regs.h b/drivers/gpu/drm/i915/display/intel_color_regs.h
index ec8732401cd8..02033c882d7f 100644
--- a/drivers/gpu/drm/i915/display/intel_color_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_color_regs.h
@@ -8,7 +8,35 @@
 
 #include "intel_display_reg_defs.h"
 
-/* legacy palette */
+/* GMCH palette */
+#define _PALETTE_A		0xa000
+#define _PALETTE_B		0xa800
+#define _CHV_PALETTE_C		0xc000
+/* 8bit mode / i965+ 10.6 interpolated mode ldw/udw */
+#define   PALETTE_RED_MASK		REG_GENMASK(23, 16)
+#define   PALETTE_GREEN_MASK		REG_GENMASK(15, 8)
+#define   PALETTE_BLUE_MASK		REG_GENMASK(7, 0)
+/* pre-i965 10bit interpolated mode ldw */
+#define   PALETTE_10BIT_RED_LDW_MASK	REG_GENMASK(23, 16)
+#define   PALETTE_10BIT_GREEN_LDW_MASK	REG_GENMASK(15, 8)
+#define   PALETTE_10BIT_BLUE_LDW_MASK	REG_GENMASK(7, 0)
+/* pre-i965 10bit interpolated mode udw */
+#define   PALETTE_10BIT_RED_EXP_MASK	REG_GENMASK(23, 22)
+#define   PALETTE_10BIT_RED_MANT_MASK	REG_GENMASK(21, 18)
+#define   PALETTE_10BIT_RED_UDW_MASK	REG_GENMASK(17, 16)
+#define   PALETTE_10BIT_GREEN_EXP_MASK	REG_GENMASK(15, 14)
+#define   PALETTE_10BIT_GREEN_MANT_MASK	REG_GENMASK(13, 10)
+#define   PALETTE_10BIT_GREEN_UDW_MASK	REG_GENMASK(9, 8)
+#define   PALETTE_10BIT_BLUE_EXP_MASK	REG_GENMASK(7, 6)
+#define   PALETTE_10BIT_BLUE_MANT_MASK	REG_GENMASK(5, 2)
+#define   PALETTE_10BIT_BLUE_UDW_MASK	REG_GENMASK(1, 0)
+#define PALETTE(pipe, i) _MMIO(DISPLAY_MMIO_BASE(dev_priv) +			\
+			       _PICK_EVEN_2RANGES(pipe, 2,			\
+						  _PALETTE_A, _PALETTE_B,	\
+						  _CHV_PALETTE_C, _CHV_PALETTE_C) + \
+						  (i) * 4)
+
+/* ilk+ palette */
 #define _LGC_PALETTE_A           0x4a000
 #define _LGC_PALETTE_B           0x4a800
 /* see PALETTE_* for the bits */
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 4913b9a371c0..c5ea2ed653b9 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1440,36 +1440,6 @@
 
 #define GMBUSFREQ_VLV		_MMIO(VLV_DISPLAY_BASE + 0x6510)
 
-/*
- * Palette regs
- */
-#define _PALETTE_A		0xa000
-#define _PALETTE_B		0xa800
-#define _CHV_PALETTE_C		0xc000
-/* 8bit mode / i965+ 10.6 interpolated mode ldw/udw */
-#define   PALETTE_RED_MASK		REG_GENMASK(23, 16)
-#define   PALETTE_GREEN_MASK		REG_GENMASK(15, 8)
-#define   PALETTE_BLUE_MASK		REG_GENMASK(7, 0)
-/* pre-i965 10bit interpolated mode ldw */
-#define   PALETTE_10BIT_RED_LDW_MASK	REG_GENMASK(23, 16)
-#define   PALETTE_10BIT_GREEN_LDW_MASK	REG_GENMASK(15, 8)
-#define   PALETTE_10BIT_BLUE_LDW_MASK	REG_GENMASK(7, 0)
-/* pre-i965 10bit interpolated mode udw */
-#define   PALETTE_10BIT_RED_EXP_MASK	REG_GENMASK(23, 22)
-#define   PALETTE_10BIT_RED_MANT_MASK	REG_GENMASK(21, 18)
-#define   PALETTE_10BIT_RED_UDW_MASK	REG_GENMASK(17, 16)
-#define   PALETTE_10BIT_GREEN_EXP_MASK	REG_GENMASK(15, 14)
-#define   PALETTE_10BIT_GREEN_MANT_MASK	REG_GENMASK(13, 10)
-#define   PALETTE_10BIT_GREEN_UDW_MASK	REG_GENMASK(9, 8)
-#define   PALETTE_10BIT_BLUE_EXP_MASK	REG_GENMASK(7, 6)
-#define   PALETTE_10BIT_BLUE_MANT_MASK	REG_GENMASK(5, 2)
-#define   PALETTE_10BIT_BLUE_UDW_MASK	REG_GENMASK(1, 0)
-#define PALETTE(pipe, i) _MMIO(DISPLAY_MMIO_BASE(dev_priv) +			\
-			       _PICK_EVEN_2RANGES(pipe, 2,			\
-						  _PALETTE_A, _PALETTE_B,	\
-						  _CHV_PALETTE_C, _CHV_PALETTE_C) + \
-						  (i) * 4)
-
 #define PEG_BAND_GAP_DATA	_MMIO(0x14d68)
 
 #define BXT_RP_STATE_CAP        _MMIO(0x138170)
-- 
2.39.2

