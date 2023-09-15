Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E1C47A2529
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Sep 2023 19:47:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FF7810E682;
	Fri, 15 Sep 2023 17:47:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 096EB10E665;
 Fri, 15 Sep 2023 17:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694800013; x=1726336013;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Hx9uMjBCHkv4DU1LudMc+8Je66UcI/8zjxRe6kSqqtk=;
 b=FU6xCO58roup0szIeZzGFRxF3xt7qNk4tt6wUr7t7IjP2YfT/TNVJlDy
 K9rrN1QsmEM6vt1nns6A1awuEjfVXzvo5gcZwqtNfNrZx+ZIqP1PWwoDJ
 NH1LZvsB3XayjV1vp428qzdmCWSdyHMx2cUK/QevV49Rz1E54WuqQrA3I
 n16lHUqJokiFriHy12W+gjCK+D47nd+uR4Y8UiCxQzOfBNCC4gDSxrXMe
 xwRBzcPTGIB3M4J1HstHKq7mA7SV2bCFEpL7gx/QCyDUcfTMoQF13iv16
 tGBXfL6D3unRY2uZD+8s3x2RHM+1c9vwqj1uEnOD85uU/Rp8TxA9BDaM6 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="445779290"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="445779290"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 10:46:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="868818317"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="868818317"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 10:46:51 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 15 Sep 2023 10:46:49 -0700
Message-Id: <20230915174651.1928176-29-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230915174651.1928176-1-lucas.demarchi@intel.com>
References: <20230915174651.1928176-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 28/30] drm/i915/lnl: Add programming for
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
 Lucas De Marchi <lucas.demarchi@intel.com>, intel-xe@lists.freedesktop.org
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

