Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 672CC3C7C9C
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Jul 2021 05:16:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BF066E17E;
	Wed, 14 Jul 2021 03:16:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 23A846E171
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Jul 2021 03:15:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10044"; a="232085868"
X-IronPort-AV: E=Sophos;i="5.84,238,1620716400"; d="scan'208";a="232085868"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2021 20:15:57 -0700
X-IronPort-AV: E=Sophos;i="5.84,238,1620716400"; d="scan'208";a="494031560"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2021 20:15:57 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 13 Jul 2021 20:15:23 -0700
Message-Id: <20210714031540.3539704-34-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210714031540.3539704-1-matthew.d.roper@intel.com>
References: <20210714031540.3539704-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 33/50] drm/i915/dg2: Add cdclk table and
 reference clock
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Note that DG2 only has a single possible refclk frequency (38.4 MHz).

Bspec: 54034
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 24 ++++++++++++++++++++--
 1 file changed, 22 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 71067a62264d..28ef6cbcb402 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -1290,6 +1290,18 @@ static const struct intel_cdclk_vals adlp_cdclk_table[] = {
 	{}
 };
 
+static const struct intel_cdclk_vals dg2_cdclk_table[] = {
+	{ .refclk = 38400, .cdclk = 172800, .divider = 2, .ratio =  9 },
+	{ .refclk = 38400, .cdclk = 179200, .divider = 3, .ratio = 14 },
+	{ .refclk = 38400, .cdclk = 192000, .divider = 2, .ratio = 10 },
+	{ .refclk = 38400, .cdclk = 192000, .divider = 3, .ratio = 15 },
+	{ .refclk = 38400, .cdclk = 307200, .divider = 2, .ratio = 16 },
+	{ .refclk = 38400, .cdclk = 326400, .divider = 4, .ratio = 34 },
+	{ .refclk = 38400, .cdclk = 556800, .divider = 2, .ratio = 29 },
+	{ .refclk = 38400, .cdclk = 652800, .divider = 2, .ratio = 34 },
+	{}
+};
+
 static int bxt_calc_cdclk(struct drm_i915_private *dev_priv, int min_cdclk)
 {
 	const struct intel_cdclk_vals *table = dev_priv->cdclk.table;
@@ -1408,7 +1420,9 @@ static void bxt_de_pll_readout(struct drm_i915_private *dev_priv,
 {
 	u32 val, ratio;
 
-	if (DISPLAY_VER(dev_priv) >= 11)
+	if (IS_DG2(dev_priv))
+		cdclk_config->ref = 38400;
+	else if (DISPLAY_VER(dev_priv) >= 11)
 		icl_readout_refclk(dev_priv, cdclk_config);
 	else if (IS_CANNONLAKE(dev_priv))
 		cnl_readout_refclk(dev_priv, cdclk_config);
@@ -2873,7 +2887,13 @@ u32 intel_read_rawclk(struct drm_i915_private *dev_priv)
  */
 void intel_init_cdclk_hooks(struct drm_i915_private *dev_priv)
 {
-	if (IS_ALDERLAKE_P(dev_priv)) {
+	if (IS_DG2(dev_priv)) {
+		dev_priv->display.set_cdclk = bxt_set_cdclk;
+		dev_priv->display.bw_calc_min_cdclk = skl_bw_calc_min_cdclk;
+		dev_priv->display.modeset_calc_cdclk = bxt_modeset_calc_cdclk;
+		dev_priv->display.calc_voltage_level = tgl_calc_voltage_level;
+		dev_priv->cdclk.table = dg2_cdclk_table;
+	} else if (IS_ALDERLAKE_P(dev_priv)) {
 		dev_priv->display.set_cdclk = bxt_set_cdclk;
 		dev_priv->display.bw_calc_min_cdclk = skl_bw_calc_min_cdclk;
 		dev_priv->display.modeset_calc_cdclk = bxt_modeset_calc_cdclk;
-- 
2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
