Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B50F7974AA
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Sep 2023 17:40:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D487F10E829;
	Thu,  7 Sep 2023 15:40:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2008710E817;
 Thu,  7 Sep 2023 15:40:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694101208; x=1725637208;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rhB5P0hy8xEY8ucZs8OopNWuuMI1m+vmUa+cueb6soA=;
 b=WPFWDAdAvqkIe/NYfo0bG6Q/EDIxpdstCKZeW9D0j7dbJqbxtbuRwYaZ
 KSNMV1/qHAiWhC5nH9/QqC5wQguejU1DboyrD1q0b8+EzKs9gm09z2MUG
 MPJmF7bIyvLtE6C+Bi0+w5pINrOiAMQ5omDhAuCc6mN0vZqueJ0+BReX/
 Efe5BeAD3TSvwGetU5a/Wh0qHslseedO8X/TpUDwlNQGKe6n3hbRv/wzG
 Nu51u6oxSI2H8Ap36bJYVWQTBfEjQ877KYnWb7urGG9Yo5BO49QrmoNG7
 uSp+E/u9e8oAov+TI0bZP0j1u/72AUv93sii1gAAXg+AuNJMe0bp3VCLg A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="362445814"
X-IronPort-AV: E=Sophos;i="6.02,235,1688454000"; d="scan'208";a="362445814"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2023 08:38:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="1072930321"
X-IronPort-AV: E=Sophos;i="6.02,235,1688454000"; d="scan'208";a="1072930321"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2023 08:38:19 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Thu,  7 Sep 2023 08:37:55 -0700
Message-Id: <20230907153757.2249452-26-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230907153757.2249452-1-lucas.demarchi@intel.com>
References: <20230907153757.2249452-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 25/27] drm/i915/lnl: Add support for CDCLK
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
sequence for LNL platform. It's mostly the same as MTL, but with some
additional programming for the squash and crawling steps when
when a change in mdclk/cdclk ratio is observed.

v2: Remove wrong changes for bxt_cdclk_cd2x_pipe() (Matt Roper)

BSpec: 68846, 68864
Signed-off-by: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 51 +++++++++++++++++++++-
 1 file changed, 49 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 677a50c28dae..dfefc971b733 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -40,6 +40,7 @@
 #include "intel_psr.h"
 #include "intel_vdsc.h"
 #include "skl_watermark.h"
+#include "skl_watermark_regs.h"
 #include "vlv_sideband.h"
 
 /**
@@ -1811,6 +1812,47 @@ static int get_mdclk_cdclk_ratio(struct drm_i915_private *i915,
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
@@ -1913,8 +1955,13 @@ static void _bxt_set_cdclk(struct drm_i915_private *dev_priv,
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
-- 
2.40.1

