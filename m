Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FC54681837
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Jan 2023 19:05:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A44210E0D9;
	Mon, 30 Jan 2023 18:05:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F7CF10E02B
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Jan 2023 18:05:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675101952; x=1706637952;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=RCBYRpKWeqQRxrRgu8n6jwan4DDH6W1dWLZMNY8np6I=;
 b=Z0bKo4VSdfkTZOKEcTvnloOGHopOUOwkrg0IkBN27y29+N33D9BdbhPo
 MYNOCrXnMxUadqGvzrpxyYldiC4zRLBLZ2RUXFwZy1aIXrHT8BOaC7uwp
 BwILQ8Iph1EisSBk7pc2gu8F/5FGgYRlESr/WTjzjRCs3hAhasnP8nDTe
 ehPAa0576GT0Opfc2fpVZvbDRa+zQrbhkWr3O8NnXNJfKYzqjJtxXPZPI
 OPW5b0v+IbgDP3onp22Izr7BHgz8A+9uPNzTgUGmPaVvJqxP7mn+O/KnG
 /Eis4uc1WLHlRt9Dz8pmfeIiAlMpq79jWyoaWQZzHamXy7UoxUNzY/VTJ g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="329742207"
X-IronPort-AV: E=Sophos;i="5.97,258,1669104000"; d="scan'208";a="329742207"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2023 10:05:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="752918111"
X-IronPort-AV: E=Sophos;i="5.97,258,1669104000"; d="scan'208";a="752918111"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by FMSMGA003.fm.intel.com with SMTP; 30 Jan 2023 10:05:49 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 30 Jan 2023 20:05:49 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 30 Jan 2023 20:05:35 +0200
Message-Id: <20230130180540.8972-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230130180540.8972-1-ville.syrjala@linux.intel.com>
References: <20230130180540.8972-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/8] drm/i915/lvds: Use REG_BIT() & co.
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Use REG_BIT() & co. for the LVDS port register.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_lvds.c |  4 +-
 drivers/gpu/drm/i915/i915_reg.h           | 46 +++++++++++------------
 2 files changed, 24 insertions(+), 26 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index 86a100eabd0d..c338895d8545 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -93,9 +93,9 @@ bool intel_lvds_port_enabled(struct drm_i915_private *dev_priv,
 
 	/* asserts want to know the pipe even if the port is disabled */
 	if (HAS_PCH_CPT(dev_priv))
-		*pipe = (val & LVDS_PIPE_SEL_MASK_CPT) >> LVDS_PIPE_SEL_SHIFT_CPT;
+		*pipe = REG_FIELD_GET(LVDS_PIPE_SEL_MASK_CPT, val);
 	else
-		*pipe = (val & LVDS_PIPE_SEL_MASK) >> LVDS_PIPE_SEL_SHIFT;
+		*pipe = REG_FIELD_GET(LVDS_PIPE_SEL_MASK, val);
 
 	return val & LVDS_PORT_EN;
 }
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index b134a1f357c8..58ff9671c74d 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2603,52 +2603,50 @@
  * Enables the LVDS port.  This bit must be set before DPLLs are enabled, as
  * the DPLL semantics change when the LVDS is assigned to that pipe.
  */
-#define   LVDS_PORT_EN			(1 << 31)
+#define   LVDS_PORT_EN			REG_BIT(31)
 /* Selects pipe B for LVDS data.  Must be set on pre-965. */
-#define   LVDS_PIPE_SEL_SHIFT		30
-#define   LVDS_PIPE_SEL_MASK		(1 << 30)
-#define   LVDS_PIPE_SEL(pipe)		((pipe) << 30)
-#define   LVDS_PIPE_SEL_SHIFT_CPT	29
-#define   LVDS_PIPE_SEL_MASK_CPT	(3 << 29)
-#define   LVDS_PIPE_SEL_CPT(pipe)	((pipe) << 29)
+#define   LVDS_PIPE_SEL_MASK		REG_BIT(30)
+#define   LVDS_PIPE_SEL(x)		REG_FIELD_PREP(LVDS_PIPE_SEL_MASK, (x))
+#define   LVDS_PIPE_SEL_MASK_CPT	REG_GENMASK(30, 29)
+#define   LVDS_PIPE_SEL_CPT(x)		REG_FIELD_PREP(LVDS_PIPE_SEL_MASK_CPT, (x))
 /* LVDS dithering flag on 965/g4x platform */
-#define   LVDS_ENABLE_DITHER		(1 << 25)
+#define   LVDS_ENABLE_DITHER		REG_BIT(25)
 /* LVDS sync polarity flags. Set to invert (i.e. negative) */
-#define   LVDS_VSYNC_POLARITY		(1 << 21)
-#define   LVDS_HSYNC_POLARITY		(1 << 20)
+#define   LVDS_VSYNC_POLARITY		REG_BIT(21)
+#define   LVDS_HSYNC_POLARITY		REG_BIT(20)
 
 /* Enable border for unscaled (or aspect-scaled) display */
-#define   LVDS_BORDER_ENABLE		(1 << 15)
+#define   LVDS_BORDER_ENABLE		REG_BIT(15)
 /*
  * Enables the A0-A2 data pairs and CLKA, containing 18 bits of color data per
  * pixel.
  */
-#define   LVDS_A0A2_CLKA_POWER_MASK	(3 << 8)
-#define   LVDS_A0A2_CLKA_POWER_DOWN	(0 << 8)
-#define   LVDS_A0A2_CLKA_POWER_UP	(3 << 8)
+#define   LVDS_A0A2_CLKA_POWER_MASK	REG_GENMASK(9, 8)
+#define   LVDS_A0A2_CLKA_POWER_DOWN	REG_FIELD_PREP(LVDS_A0A2_CLKA_POWER_MASK, 0)
+#define   LVDS_A0A2_CLKA_POWER_UP	REG_FIELD_PREP(LVDS_A0A2_CLKA_POWER_MASK, 3)
 /*
  * Controls the A3 data pair, which contains the additional LSBs for 24 bit
  * mode.  Only enabled if LVDS_A0A2_CLKA_POWER_UP also indicates it should be
  * on.
  */
-#define   LVDS_A3_POWER_MASK		(3 << 6)
-#define   LVDS_A3_POWER_DOWN		(0 << 6)
-#define   LVDS_A3_POWER_UP		(3 << 6)
+#define   LVDS_A3_POWER_MASK		REG_GENMASK(7, 6)
+#define   LVDS_A3_POWER_DOWN		REG_FIELD_PREP(LVDS_A3_POWER_MASK, 0)
+#define   LVDS_A3_POWER_UP		REG_FIELD_PREP(LVDS_A3_POWER_MASK, 3)
 /*
  * Controls the CLKB pair.  This should only be set when LVDS_B0B3_POWER_UP
  * is set.
  */
-#define   LVDS_CLKB_POWER_MASK		(3 << 4)
-#define   LVDS_CLKB_POWER_DOWN		(0 << 4)
-#define   LVDS_CLKB_POWER_UP		(3 << 4)
+#define   LVDS_CLKB_POWER_MASK		REG_GENMASK(5, 4)
+#define   LVDS_CLKB_POWER_DOWN		REG_FIELD_PREP(LVDS_CLKB_POWER_MASK, 0)
+#define   LVDS_CLKB_POWER_UP		REG_FIELD_PREP(LVDS_CLKB_POWER_MASK, 3)
 /*
  * Controls the B0-B3 data pairs.  This must be set to match the DPLL p2
  * setting for whether we are in dual-channel mode.  The B3 pair will
  * additionally only be powered up when LVDS_A3_POWER_UP is set.
  */
-#define   LVDS_B0B3_POWER_MASK		(3 << 2)
-#define   LVDS_B0B3_POWER_DOWN		(0 << 2)
-#define   LVDS_B0B3_POWER_UP		(3 << 2)
+#define   LVDS_B0B3_POWER_MASK		REG_GENMASK(3, 2)
+#define   LVDS_B0B3_POWER_DOWN		REG_FIELD_PREP(LVDS_B0B3_POWER_MASK, 0)
+#define   LVDS_B0B3_POWER_UP		REG_FIELD_PREP(LVDS_B0B3_POWER_MASK, 3)
 
 /* Video Data Island Packet control */
 #define VIDEO_DIP_DATA		_MMIO(0x61178)
@@ -6398,7 +6396,7 @@
 #define FDI_PLL_CTL_2           _MMIO(0xfe004)
 
 #define PCH_LVDS	_MMIO(0xe1180)
-#define  LVDS_DETECTED	(1 << 1)
+#define   LVDS_DETECTED	REG_BIT(1)
 
 #define _PCH_DP_B		0xe4100
 #define PCH_DP_B		_MMIO(_PCH_DP_B)
-- 
2.39.1

