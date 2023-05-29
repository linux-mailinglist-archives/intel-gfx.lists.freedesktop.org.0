Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 229C87143E2
	for <lists+intel-gfx@lfdr.de>; Mon, 29 May 2023 08:09:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D6ED10E213;
	Mon, 29 May 2023 06:09:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00AE310E213
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 May 2023 06:09:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685340590; x=1716876590;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=0AD03Bl3XvfXNUanScdkVYDABpczMGAAVBDw02Ue+1c=;
 b=dm6L+KcqISNn23SAwAEKCMAxDRL6WeUv3PBa0KbxulgJYfRR343TKO6E
 WE2+8Oe4wjst4PZ+QsUlkc3cZd3M+cSDluruqwj/G4WwmrQP+fA5eqRmg
 Gsn8gyIJLL7zmdpcerPuudtXdGRWJD1/HgRgjJ7F8fvT2jAK8e+rqQAg4
 /oy2OpNneTVeVcfxTRhlxB+cMctgwWqtmFnwDsyPXr/S18BcYGnuKsr5x
 yNDS7S4CXl2geGvrXmfAXhuj0w2CO8Glm2l9+ZkCpKnaeLL4Sc4Lvlt6C
 +F8OEkZVgGoEFnKAnv1tLkdU9a9H9QD+og3JNJQHM242jzXqo8DDmyBQ5 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10724"; a="354643042"
X-IronPort-AV: E=Sophos;i="6.00,200,1681196400"; d="scan'208";a="354643042"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2023 23:09:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10724"; a="705937485"
X-IronPort-AV: E=Sophos;i="6.00,200,1681196400"; d="scan'208";a="705937485"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by orsmga002.jf.intel.com with ESMTP; 28 May 2023 23:09:30 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 29 May 2023 11:37:47 +0530
Message-Id: <20230529060747.3972259-1-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915/display: Set correct voltage level
 for 480MHz CDCLK
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
Cc: matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

According to Bspec, the voltage level for 480MHz is to be set as 1
instead of 2.

BSpec: 49208

Fixes: 06f1b06dc5b7 ("drm/i915/display: Add 480 MHz CDCLK steps for RPL-U")

v2: rebase

Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 30 +++++++++++++++++++---
 1 file changed, 26 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 6bed75f1541a..1a5268e3d0a3 100644
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
@@ -3397,6 +3409,13 @@ static const struct intel_cdclk_funcs mtl_cdclk_funcs = {
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
@@ -3539,14 +3558,17 @@ void intel_init_cdclk_hooks(struct drm_i915_private *dev_priv)
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

