Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB18C6AD8A6
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Mar 2023 09:03:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F07F10E380;
	Tue,  7 Mar 2023 08:03:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4F1410E380
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Mar 2023 08:03:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678176215; x=1709712215;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=t8SkSOqC9hqZyo+6f2DecH7TwT0XCJbDaeGlOUDqlHw=;
 b=lL4GJQWmsJeIASm/riCNn4w+1XF98YM8lFSIHRdLtfuDkCiM2wpzc8kJ
 FU0bu4/B1BFUFwqYqClxyfbJYrRKQUbltgGPo108vlnquxgUkfWrwBLWt
 hWUZXC+insfosKYTfxs7baWKjDNqGJCSM7Ay+3lWjqQ6pkVTeJQeB4yk1
 W64o/Q4zlUMtPTPGlqiAT+JA9j4I8zEMvAbpJ/r5fLDSCJIyCLlkSt1en
 XlyBX5wTrqGa6Sd762qLg1tClFADujgY9weFPD/beohwp+bCgB0/bD6f3
 S5Kg0A6/AHaHm1yCFuvtjPvq5iP8U9fAxS0JfBxpdZMrKgtYVmPPREc1L w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="333263148"
X-IronPort-AV: E=Sophos;i="5.98,240,1673942400"; d="scan'208";a="333263148"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2023 00:03:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="922247691"
X-IronPort-AV: E=Sophos;i="5.98,240,1673942400"; d="scan'208";a="922247691"
Received: from chaitanya.iind.intel.com ([10.190.239.113])
 by fmsmga006.fm.intel.com with ESMTP; 07 Mar 2023 00:03:33 -0800
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  7 Mar 2023 13:33:10 +0530
Message-Id: <20230307080310.2739486-1-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/display: Set correct voltage level for
 480MHz CDCLK
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
Cc: jani.nikula@intel.com, matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

According to Bspec, the voltage level for 480MHz is to be set as 1
instead of 2.

BSpec: 49208

Fixes: 06f1b06dc5b7 ("drm/i915/display: Add 480 MHz CDCLK steps for RPL-U")

Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 30 +++++++++++++++++++---
 1 file changed, 26 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 084a483f9776..2aaaba090cc0 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -1453,6 +1453,18 @@ static u8 tgl_calc_voltage_level(int cdclk)
 		return 0;
 }
 
+static u8 rplu_calc_voltage_level(int cdclk)
+{
+	if (cdclk > 556800)
+		return 3;
+	else if (cdclk > 480000)
+		return 2;
+	else if (cdclk > 312000)
+		return 1;
+	else
+		return 0;
+}
+
 static void icl_readout_refclk(struct drm_i915_private *dev_priv,
 			       struct intel_cdclk_config *cdclk_config)
 {
@@ -3242,6 +3254,13 @@ static const struct intel_cdclk_funcs mtl_cdclk_funcs = {
 	.calc_voltage_level = tgl_calc_voltage_level,
 };
 
+static const struct intel_cdclk_funcs rplu_cdclk_funcs = {
+	.get_cdclk = bxt_get_cdclk,
+	.set_cdclk = bxt_set_cdclk,
+	.modeset_calc_cdclk = bxt_modeset_calc_cdclk,
+	.calc_voltage_level = rplu_calc_voltage_level,
+};
+
 static const struct intel_cdclk_funcs tgl_cdclk_funcs = {
 	.get_cdclk = bxt_get_cdclk,
 	.set_cdclk = bxt_set_cdclk,
@@ -3384,14 +3403,17 @@ void intel_init_cdclk_hooks(struct drm_i915_private *dev_priv)
 		dev_priv->display.funcs.cdclk = &tgl_cdclk_funcs;
 		dev_priv->display.cdclk.table = dg2_cdclk_table;
 	} else if (IS_ALDERLAKE_P(dev_priv)) {
-		dev_priv->display.funcs.cdclk = &tgl_cdclk_funcs;
 		/* Wa_22011320316:adl-p[a0] */
-		if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
+		if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0)) {
 			dev_priv->display.cdclk.table = adlp_a_step_cdclk_table;
-		else if (IS_ADLP_RPLU(dev_priv))
+			dev_priv->display.funcs.cdclk = &tgl_cdclk_funcs;
+		} else if (IS_ADLP_RPLU(dev_priv)) {
 			dev_priv->display.cdclk.table = rplu_cdclk_table;
-		else
+			dev_priv->display.funcs.cdclk = &rplu_cdclk_funcs;
+		} else {
 			dev_priv->display.cdclk.table = adlp_cdclk_table;
+			dev_priv->display.funcs.cdclk = &tgl_cdclk_funcs;
+		}
 	} else if (IS_ROCKETLAKE(dev_priv)) {
 		dev_priv->display.funcs.cdclk = &tgl_cdclk_funcs;
 		dev_priv->display.cdclk.table = rkl_cdclk_table;
-- 
2.25.1

