Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C16697389E
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2024 15:29:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9DD510E12A;
	Tue, 10 Sep 2024 13:29:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TOy6T0TO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29FDA10E11D;
 Tue, 10 Sep 2024 13:29:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725974946; x=1757510946;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=11U/wk28P5jUb8bw6Rf+ln+NF3jmoil8Yht0uh7Rd+Y=;
 b=TOy6T0TOzyQ4w+vyAgYnII9RCFUSd5GaHOVti/DzEWiEQ1LtjNzGkLUL
 1/oQAlTZrQ7t1m5ATuj23g35o+BZD2U6zwxqQ6ZCPKLZJK7HZSJ5n/z7N
 jvucpDGXkeQjg3ZnoDOYSJOXasi3lEE6Ilqa0uRn+7TwyKKmaJ5FrDuVv
 2w561J4QhqavXXfABH0q4BIalzWpc7Wiom11jpbk3xxAJEQ+0ot4XmAWN
 z4ZCqEQZOCaeOutRYB/qvq3/9DV5AnaUHFBKejax6z8hAe3wxpc7Mm9jd
 KgZjHsLXA2xcLsm8nVfHK8YyGkLPnk9ZD6RxDAN6jgSABwxvbnwaafEok w==;
X-CSE-ConnectionGUID: iqTgvb+bS2ujaHdH+MlWXg==
X-CSE-MsgGUID: Q7CK2N4/TWizP4LhNCojGA==
X-IronPort-AV: E=McAfee;i="6700,10204,11191"; a="24585462"
X-IronPort-AV: E=Sophos;i="6.10,217,1719903600"; d="scan'208";a="24585462"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2024 06:29:06 -0700
X-CSE-ConnectionGUID: 6/iBhKpLQwiYLufhtvOR5A==
X-CSE-MsgGUID: zG6CqUsyR2GFYuNQoi1F6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,217,1719903600"; d="scan'208";a="104492825"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.43])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2024 06:29:04 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH v2 01/11] drm/i915/reg: fix transcoder timing register style
Date: Tue, 10 Sep 2024 16:28:45 +0300
Message-Id: <fcd7c5114f707da8018c65fbb44a70dbdceec37f.1725974820.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1725974820.git.jani.nikula@intel.com>
References: <cover.1725974820.git.jani.nikula@intel.com>
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

Adhere to the style described at the top of i915_reg.h.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr_regs.h |  1 +
 drivers/gpu/drm/i915/i915_reg.h               | 51 ++++++++++---------
 2 files changed, 29 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr_regs.h b/drivers/gpu/drm/i915/display/intel_psr_regs.h
index 642bb15fb547..945fdc750a03 100644
--- a/drivers/gpu/drm/i915/display/intel_psr_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_psr_regs.h
@@ -9,6 +9,7 @@
 #include "intel_display_reg_defs.h"
 #include "intel_dp_aux_regs.h"
 
+#define _TRANS_EXITLINE_A	0x60018
 #define TRANS_EXITLINE(dev_priv, trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_EXITLINE_A)
 #define   EXITLINE_ENABLE	REG_BIT(31)
 #define   EXITLINE_MASK		REG_GENMASK(12, 0)
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 41f4350a7c6c..7a6ca695bb6a 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1071,56 +1071,72 @@
 
 /* Pipe/transcoder A timing regs */
 #define _TRANS_HTOTAL_A		0x60000
+#define _TRANS_HTOTAL_B		0x61000
+#define TRANS_HTOTAL(dev_priv, trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_HTOTAL_A)
 #define   HTOTAL_MASK			REG_GENMASK(31, 16)
 #define   HTOTAL(htotal)		REG_FIELD_PREP(HTOTAL_MASK, (htotal))
 #define   HACTIVE_MASK			REG_GENMASK(15, 0)
 #define   HACTIVE(hdisplay)		REG_FIELD_PREP(HACTIVE_MASK, (hdisplay))
+
 #define _TRANS_HBLANK_A		0x60004
+#define _TRANS_HBLANK_B		0x61004
+#define TRANS_HBLANK(dev_priv, trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_HBLANK_A)
 #define   HBLANK_END_MASK		REG_GENMASK(31, 16)
 #define   HBLANK_END(hblank_end)	REG_FIELD_PREP(HBLANK_END_MASK, (hblank_end))
 #define   HBLANK_START_MASK		REG_GENMASK(15, 0)
 #define   HBLANK_START(hblank_start)	REG_FIELD_PREP(HBLANK_START_MASK, (hblank_start))
+
 #define _TRANS_HSYNC_A		0x60008
+#define _TRANS_HSYNC_B		0x61008
+#define TRANS_HSYNC(dev_priv, trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_HSYNC_A)
 #define   HSYNC_END_MASK		REG_GENMASK(31, 16)
 #define   HSYNC_END(hsync_end)		REG_FIELD_PREP(HSYNC_END_MASK, (hsync_end))
 #define   HSYNC_START_MASK		REG_GENMASK(15, 0)
 #define   HSYNC_START(hsync_start)	REG_FIELD_PREP(HSYNC_START_MASK, (hsync_start))
+
 #define _TRANS_VTOTAL_A		0x6000c
+#define _TRANS_VTOTAL_B		0x6100c
+#define TRANS_VTOTAL(dev_priv, trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_VTOTAL_A)
 #define   VTOTAL_MASK			REG_GENMASK(31, 16)
 #define   VTOTAL(vtotal)		REG_FIELD_PREP(VTOTAL_MASK, (vtotal))
 #define   VACTIVE_MASK			REG_GENMASK(15, 0)
 #define   VACTIVE(vdisplay)		REG_FIELD_PREP(VACTIVE_MASK, (vdisplay))
+
 #define _TRANS_VBLANK_A		0x60010
+#define _TRANS_VBLANK_B		0x61010
+#define TRANS_VBLANK(dev_priv, trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_VBLANK_A)
 #define   VBLANK_END_MASK		REG_GENMASK(31, 16)
 #define   VBLANK_END(vblank_end)	REG_FIELD_PREP(VBLANK_END_MASK, (vblank_end))
 #define   VBLANK_START_MASK		REG_GENMASK(15, 0)
 #define   VBLANK_START(vblank_start)	REG_FIELD_PREP(VBLANK_START_MASK, (vblank_start))
+
 #define _TRANS_VSYNC_A		0x60014
+#define _TRANS_VSYNC_B		0x61014
+#define TRANS_VSYNC(dev_priv, trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_VSYNC_A)
 #define   VSYNC_END_MASK		REG_GENMASK(31, 16)
 #define   VSYNC_END(vsync_end)		REG_FIELD_PREP(VSYNC_END_MASK, (vsync_end))
 #define   VSYNC_START_MASK		REG_GENMASK(15, 0)
 #define   VSYNC_START(vsync_start)	REG_FIELD_PREP(VSYNC_START_MASK, (vsync_start))
-#define _TRANS_EXITLINE_A	0x60018
+
 #define _PIPEASRC		0x6001c
+#define _PIPEBSRC		0x6101c
+#define PIPESRC(dev_priv, pipe)		_MMIO_TRANS2(dev_priv, (pipe), _PIPEASRC)
 #define   PIPESRC_WIDTH_MASK	REG_GENMASK(31, 16)
 #define   PIPESRC_WIDTH(w)	REG_FIELD_PREP(PIPESRC_WIDTH_MASK, (w))
 #define   PIPESRC_HEIGHT_MASK	REG_GENMASK(15, 0)
 #define   PIPESRC_HEIGHT(h)	REG_FIELD_PREP(PIPESRC_HEIGHT_MASK, (h))
-#define _BCLRPAT_A		0x60020
-#define _TRANS_VSYNCSHIFT_A	0x60028
-#define _TRANS_MULT_A		0x6002c
 
-/* Pipe/transcoder B timing regs */
-#define _TRANS_HTOTAL_B		0x61000
-#define _TRANS_HBLANK_B		0x61004
-#define _TRANS_HSYNC_B		0x61008
-#define _TRANS_VTOTAL_B		0x6100c
-#define _TRANS_VBLANK_B		0x61010
-#define _TRANS_VSYNC_B		0x61014
-#define _PIPEBSRC		0x6101c
+#define _BCLRPAT_A		0x60020
 #define _BCLRPAT_B		0x61020
+#define BCLRPAT(dev_priv, trans)		_MMIO_TRANS2(dev_priv, (trans), _BCLRPAT_A)
+
+#define _TRANS_VSYNCSHIFT_A	0x60028
 #define _TRANS_VSYNCSHIFT_B	0x61028
+#define TRANS_VSYNCSHIFT(dev_priv, trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_VSYNCSHIFT_A)
+
+#define _TRANS_MULT_A		0x6002c
 #define _TRANS_MULT_B		0x6102c
+#define TRANS_MULT(dev_priv, trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_MULT_A)
 
 /* DSI 0 timing regs */
 #define _TRANS_HTOTAL_DSI0	0x6b000
@@ -1136,17 +1152,6 @@
 #define _TRANS_VSYNC_DSI1	0x6b814
 #define _TRANS_VSYNCSHIFT_DSI1	0x6b828
 
-#define TRANS_HTOTAL(dev_priv, trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_HTOTAL_A)
-#define TRANS_HBLANK(dev_priv, trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_HBLANK_A)
-#define TRANS_HSYNC(dev_priv, trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_HSYNC_A)
-#define TRANS_VTOTAL(dev_priv, trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_VTOTAL_A)
-#define TRANS_VBLANK(dev_priv, trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_VBLANK_A)
-#define TRANS_VSYNC(dev_priv, trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_VSYNC_A)
-#define BCLRPAT(dev_priv, trans)		_MMIO_TRANS2(dev_priv, (trans), _BCLRPAT_A)
-#define TRANS_VSYNCSHIFT(dev_priv, trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_VSYNCSHIFT_A)
-#define PIPESRC(dev_priv, pipe)		_MMIO_TRANS2(dev_priv, (pipe), _PIPEASRC)
-#define TRANS_MULT(dev_priv, trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_MULT_A)
-
 /* VGA port control */
 #define ADPA			_MMIO(0x61100)
 #define PCH_ADPA                _MMIO(0xe1100)
-- 
2.39.2

