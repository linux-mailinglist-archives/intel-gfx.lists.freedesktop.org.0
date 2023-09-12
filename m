Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F50A79C4E8
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Sep 2023 06:49:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 860D110E33B;
	Tue, 12 Sep 2023 04:48:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A16F10E379;
 Tue, 12 Sep 2023 04:48:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694494118; x=1726030118;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Hx9uMjBCHkv4DU1LudMc+8Je66UcI/8zjxRe6kSqqtk=;
 b=AQqksahhz64OEpZms9sJa2pxg88SORdMQHcoyq5Rre4urJ03ApKKDhFN
 D56DpB1/B3xNQ057x+a9g/Hlynp93AEC4hPBvyZLR0IWcZEExEzVIZ6eB
 1LL+A9De2kl0uojBu17N+milJ7SnLxgewBWkVXNUmCjKR5fxKCmEvb8lv
 gqTzeQFk56eR5ZCH6dOc2uuDW2PXIsx0dDXWolgcErFsIhTxwJWJTXxeZ
 ylFFRvk9o8+e6Zu3uQ4FjKBpHOrWC7PZMgMF1lIZkgtzd2PJuK8eA+BV4
 tZYQRDnRBNOSf0u7b8jdlpSK+LcUjGN0mCqLeixubcFwuLhTh9ZFDPBls A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="378182347"
X-IronPort-AV: E=Sophos;i="6.02,245,1688454000"; d="scan'208";a="378182347"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 21:48:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="1074419989"
X-IronPort-AV: E=Sophos;i="6.02,245,1688454000"; d="scan'208";a="1074419989"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 21:48:37 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Mon, 11 Sep 2023 21:48:35 -0700
Message-Id: <20230912044837.1672060-28-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230912044837.1672060-1-lucas.demarchi@intel.com>
References: <20230912044837.1672060-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 27/29] drm/i915/lnl: Add programming for
 CDCLK change
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
Cc: Matt Roper <matthew.d.roper@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>

Add programming sequence for changes on CDCLK for Lunar Lake
platforms. It's mostly the same as MTL, but with some
additional programming for the squash and crawling steps when
a change in mdclk/cdclk ratio is observed.

v2: Remove wrong changes for bxt_cdclk_cd2x_pipe() (Matt Roper)
v3: Reword commit message and flatten if/else ladder (Matt Roper)

BSpec: 68864
Signed-off-by: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 46 +++++++++++++++++++++-
 1 file changed, 45 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index e3db6c7934f3..1da1995fb3a7 100644
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
@@ -1913,7 +1955,9 @@ static void _bxt_set_cdclk(struct drm_i915_private *dev_priv,
 	else
 		clock = cdclk;
 
-	if (HAS_CDCLK_SQUASH(dev_priv))
+	if (DISPLAY_VER(dev_priv) >= 20)
+		lnl_cdclk_squash_program(dev_priv, cdclk_config, waveform);
+	else if (HAS_CDCLK_SQUASH(dev_priv))
 		dg2_cdclk_squash_program(dev_priv, waveform);
 
 	val = bxt_cdclk_cd2x_div_sel(dev_priv, clock, vco) |
-- 
2.40.1

