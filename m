Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A8D2485F8F3
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Feb 2024 13:57:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D08510E911;
	Thu, 22 Feb 2024 12:56:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Qo07H2xX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9490A10E911
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Feb 2024 12:56:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708606617; x=1740142617;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nmWURThUKcr7m9AA+eJqZWHoiRtZYINVNE+D+hPeFy4=;
 b=Qo07H2xXzyRIG3nmPcZBOAgnG9JZGiUHj2icRv3vB0S3QLK8HH7oYDyT
 GMxMXLam5PK1C8oemDkCVTZ2VdzmKHsO1euHNbn9LBycdHYJDoZhV1Sjd
 BVNJkxX2+JZF36NRbXe/w5dk1tGvq4Ojm37OjAX37phG+Lwf1NJqeZz2Q
 8uHhs9PtF7dd98KX1IivNDpI5+41j9uNdxkb8rN2RTK0Gq5aRphTouRON
 76AhlXXUsjHtPnci2cWrKKHFDYYiobBapA731rUBaZAxynk3mQlQ4YKoT
 QDMFiVZt9VynglnxYdbt3Klq2hPMWXF6NDil8O1bKna9KfYH+x9nIGgTk g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10991"; a="2979110"
X-IronPort-AV: E=Sophos;i="6.06,177,1705392000"; 
   d="scan'208";a="2979110"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2024 04:56:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,177,1705392000"; 
   d="scan'208";a="5464308"
Received: from sfriis-mobl.ger.corp.intel.com (HELO vgovind2-mobl3.intel.com)
 ([10.249.44.6])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2024 04:56:55 -0800
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, stanislav.lisovskiy@intel.com,
 lucas.demarchi@intel.com, matthew.d.roper@intel.com
Subject: [PATCH v1 2/6] drm/i915/lnl: Add programming for CDCLK change
Date: Thu, 22 Feb 2024 14:56:30 +0200
Message-Id: <20240222125634.275047-3-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240222125634.275047-1-vinod.govindapillai@intel.com>
References: <20240222125634.275047-1-vinod.govindapillai@intel.com>
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
index 4d7244284efc..36fba017110d 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -40,6 +40,7 @@
 #include "intel_psr.h"
 #include "intel_vdsc.h"
 #include "skl_watermark.h"
+#include "skl_watermark_regs.h"
 #include "vlv_sideband.h"
 
 /**
@@ -1860,6 +1861,47 @@ static int get_mdclk_cdclk_ratio(struct drm_i915_private *i915,
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
 static bool cdclk_compute_crawl_and_squash_midpoint(struct drm_i915_private *i915,
 						    const struct intel_cdclk_config *old_cdclk_config,
 						    const struct intel_cdclk_config *new_cdclk_config,
@@ -1994,7 +2036,9 @@ static void _bxt_set_cdclk(struct drm_i915_private *dev_priv,
 
 	waveform = cdclk_squash_waveform(dev_priv, cdclk);
 
-	if (HAS_CDCLK_SQUASH(dev_priv))
+	if (DISPLAY_VER(dev_priv) >= 20)
+		lnl_cdclk_squash_program(dev_priv, cdclk_config, waveform);
+	else if (HAS_CDCLK_SQUASH(dev_priv))
 		dg2_cdclk_squash_program(dev_priv, waveform);
 
 	intel_de_write(dev_priv, CDCLK_CTL, bxt_cdclk_ctl(dev_priv, cdclk_config, pipe));
-- 
2.34.1

