Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E63A785E2A
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Aug 2023 19:09:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D59310E4A1;
	Wed, 23 Aug 2023 17:09:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15BE310E491;
 Wed, 23 Aug 2023 17:09:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692810563; x=1724346563;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TDihmmP+iXvjxtcgiTN00kTKGMiQGEy0EC1e3vm1sJ0=;
 b=d/KZX2BYKJaKaE061G7XOr6FVGUWwMGJHgjXvH7+56dRMWRis1m4DRTN
 SCF0M3g7+lSLZnggCnGyTeAChv8vQNVCtZ6EO08OMGQvth5Bq6Urslrbb
 VFA+nMnKXqLURiE+4jUb9Aib5eOXTtqNi45MNJPcN/NSaBSemMqubh/xU
 NCOFEh+dVlChjdzmGyokkBAJCTNzQDrcYmJSvonvCDrSsprWCcdHRXcf8
 r5P5oQpaWF4H7oaHJA+N5NTWr4/FUfTSduCIDFuXdVRP+nCqAEgqeqxcz
 9zziTpNthULYiDLoeXfN7pVTtrRVJfBe9XA5qhVdXypy0UL/pxL+SOD/9 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="438147511"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="438147511"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 10:09:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="802204876"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="802204876"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 10:09:22 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Wed, 23 Aug 2023 10:07:34 -0700
Message-Id: <20230823170740.1180212-37-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230823170740.1180212-1-lucas.demarchi@intel.com>
References: <20230823170740.1180212-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 36/42] drm/i915/lnl: Add support for CDCLK
 initialization sequence
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>

Add CDCLK initialization sequence changes and CDCLK set frequency
sequence for LNL platform.

CDCLK frequency change sequence is different for LNL compared to MTL
when a change in mdclk/cdclk ratio is observed. Below are changes to be
made:

1. In MBUS_CTL register translation Throttle Min value.
2. In DBUF_CTL_S* register Min Tracker State Service value.

BSpec: 68846, 68864
Signed-off-by: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 58 ++++++++++++++++++++--
 drivers/gpu/drm/i915/i915_reg.h            |  2 +
 2 files changed, 57 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index aa1000db3cb9..4d8b960389ec 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -38,6 +38,7 @@
 #include "intel_pcode.h"
 #include "intel_psr.h"
 #include "skl_watermark.h"
+#include "skl_watermark_regs.h"
 #include "vlv_sideband.h"
 
 /**
@@ -1727,7 +1728,12 @@ static void adlp_cdclk_pll_crawl(struct drm_i915_private *dev_priv, int vco)
 
 static u32 bxt_cdclk_cd2x_pipe(struct drm_i915_private *dev_priv, enum pipe pipe)
 {
-	if (DISPLAY_VER(dev_priv) >= 12) {
+	if (DISPLAY_VER(dev_priv) >= 20) {
+		if (pipe == INVALID_PIPE)
+			return LNL_CDCLK_CD2X_PIPE_NONE;
+		else
+			return LNL_CDCLK_CD2X_PIPE(pipe);
+	} else if (DISPLAY_VER(dev_priv) >= 12) {
 		if (pipe == INVALID_PIPE)
 			return TGL_CDCLK_CD2X_PIPE_NONE;
 		else
@@ -1837,6 +1843,47 @@ static int get_mdclk_cdclk_ratio(struct drm_i915_private *i915,
 		return 1;
 }
 
+static void lnl_prog_mbus_dbuf_ctrl(struct drm_i915_private *i915,
+				    const struct intel_cdclk_config *cdclk_config)
+{
+	int min_throttle_val;
+	int min_tracker_state;
+	enum dbuf_slice slice;
+	int mdclk_cdclk_div_ratio;
+	int mbus_join = intel_de_read(i915, MBUS_CTL) & MBUS_JOIN;
+
+	mdclk_cdclk_div_ratio = get_mdclk_cdclk_ratio(i915, cdclk_config);
+
+	min_throttle_val = MBUS_TRANS_THROTTLE_MIN_SELECT(mdclk_cdclk_div_ratio);
+
+	intel_de_rmw(i915, MBUS_CTL, MBUS_TRANS_THROTTLE_MIN_MASK, min_throttle_val);
+
+	if (mbus_join)
+		mdclk_cdclk_div_ratio = (mdclk_cdclk_div_ratio << 1) + 1;
+
+	min_tracker_state = DBUF_MIN_TRACKER_STATE_SERVICE(mdclk_cdclk_div_ratio);
+
+	for_each_dbuf_slice(i915, slice)
+		intel_de_rmw(i915, DBUF_CTL_S(slice),
+			     DBUF_MIN_TRACKER_STATE_SERVICE_MASK,
+			     min_tracker_state);
+}
+
+static void lnl_cdclk_squash_program(struct drm_i915_private *i915,
+				     const struct intel_cdclk_config *cdclk_config,
+				     u16 waveform)
+{
+	if (cdclk_config->cdclk < i915->display.cdclk.hw.cdclk)
+		/* Program mbus_ctrl and dbuf_ctrl registers as Pre hook */
+		lnl_prog_mbus_dbuf_ctrl(i915, cdclk_config);
+
+	dg2_cdclk_squash_program(i915, waveform);
+
+	if (cdclk_config->cdclk > i915->display.cdclk.hw.cdclk)
+		/* Program mbus_ctrl and dbuf_ctrl registers as Post hook */
+		lnl_prog_mbus_dbuf_ctrl(i915, cdclk_config);
+}
+
 static int cdclk_squash_divider(u16 waveform)
 {
 	return hweight16(waveform ?: 0xffff);
@@ -1938,8 +1985,13 @@ static void _bxt_set_cdclk(struct drm_i915_private *dev_priv,
 	else
 		clock = cdclk;
 
-	if (HAS_CDCLK_SQUASH(dev_priv))
-		dg2_cdclk_squash_program(dev_priv, waveform);
+	if (HAS_CDCLK_SQUASH(dev_priv)) {
+		if (DISPLAY_VER(dev_priv) >= 20)
+			lnl_cdclk_squash_program(dev_priv, cdclk_config,
+						 waveform);
+		else
+			dg2_cdclk_squash_program(dev_priv, waveform);
+	}
 
 	val = bxt_cdclk_cd2x_div_sel(dev_priv, clock, vco) |
 		bxt_cdclk_cd2x_pipe(dev_priv, pipe);
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index d5850761a75a..c9639f0f4f49 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -5944,6 +5944,8 @@ enum skl_power_gate {
 #define  BXT_CDCLK_CD2X_PIPE(pipe)	((pipe) << 20)
 #define  CDCLK_DIVMUX_CD_OVERRIDE	(1 << 19)
 #define  BXT_CDCLK_CD2X_PIPE_NONE	BXT_CDCLK_CD2X_PIPE(3)
+#define  LNL_CDCLK_CD2X_PIPE(pipe)	((pipe) << 19)
+#define  LNL_CDCLK_CD2X_PIPE_NONE	(7 << 19)
 #define  ICL_CDCLK_CD2X_PIPE(pipe)	(_PICK(pipe, 0, 2, 6) << 19)
 #define  ICL_CDCLK_CD2X_PIPE_NONE	(7 << 19)
 #define  TGL_CDCLK_CD2X_PIPE(pipe)	BXT_CDCLK_CD2X_PIPE(pipe)
-- 
2.40.1

