Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F49D28FAFC
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Oct 2020 00:00:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B334D6E0AB;
	Thu, 15 Oct 2020 22:00:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 899626E0AB
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Oct 2020 22:00:43 +0000 (UTC)
IronPort-SDR: vkncLgghq7BX/7l1RKpZw4DkzlAVy1I0lU4apdC7lEcsEQpciJHm4b4M9paw9pSWcsLlrpfpXP
 /5nWfOJa8/WA==
X-IronPort-AV: E=McAfee;i="6000,8403,9775"; a="166572178"
X-IronPort-AV: E=Sophos;i="5.77,380,1596524400"; d="scan'208";a="166572178"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2020 15:00:42 -0700
IronPort-SDR: 1o4oyvWb5WqUxWqahB5WaiFsL+1b7Qblr/qgL7gqqdoCb2qY9UDqlOdtlOX1DrmBods5y3wlSm
 tCpkk/mDGQ2A==
X-IronPort-AV: E=Sophos;i="5.77,380,1596524400"; d="scan'208";a="522003561"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2020 15:00:42 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 15 Oct 2020 15:00:38 -0700
Message-Id: <20201015220038.271740-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/rkl: Add new cdclk table
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

A recent bspec update has provided a new cdclk table for RKL.  All of
the cdclk values are the same as those we've been using on ICL, TGL,
etc., but we obtain them by doubling both the PLL ratio and CD2X divider
numbers.

Bspec: 49202
Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 32 +++++++++++++++++++++-
 1 file changed, 31 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 7b46330fa69c..c449d28d0560 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -1233,6 +1233,30 @@ static const struct intel_cdclk_vals icl_cdclk_table[] = {
 	{}
 };
 
+static const struct intel_cdclk_vals rkl_cdclk_table[] = {
+	{ .refclk = 19200, .cdclk = 172800, .divider = 4, .ratio =  36 },
+	{ .refclk = 19200, .cdclk = 192000, .divider = 4, .ratio =  40 },
+	{ .refclk = 19200, .cdclk = 307200, .divider = 4, .ratio =  64 },
+	{ .refclk = 19200, .cdclk = 326400, .divider = 8, .ratio = 136 },
+	{ .refclk = 19200, .cdclk = 556800, .divider = 4, .ratio = 116 },
+	{ .refclk = 19200, .cdclk = 652800, .divider = 4, .ratio = 136 },
+
+	{ .refclk = 24000, .cdclk = 180000, .divider = 4, .ratio =  30 },
+	{ .refclk = 24000, .cdclk = 192000, .divider = 4, .ratio =  32 },
+	{ .refclk = 24000, .cdclk = 312000, .divider = 4, .ratio =  52 },
+	{ .refclk = 24000, .cdclk = 324000, .divider = 8, .ratio = 108 },
+	{ .refclk = 24000, .cdclk = 552000, .divider = 4, .ratio =  92 },
+	{ .refclk = 24000, .cdclk = 648000, .divider = 4, .ratio = 108 },
+
+	{ .refclk = 38400, .cdclk = 172800, .divider = 4, .ratio = 18 },
+	{ .refclk = 38400, .cdclk = 192000, .divider = 4, .ratio = 20 },
+	{ .refclk = 38400, .cdclk = 307200, .divider = 4, .ratio = 32 },
+	{ .refclk = 38400, .cdclk = 326400, .divider = 8, .ratio = 68 },
+	{ .refclk = 38400, .cdclk = 556800, .divider = 4, .ratio = 58 },
+	{ .refclk = 38400, .cdclk = 652800, .divider = 4, .ratio = 68 },
+	{}
+};
+
 static int bxt_calc_cdclk(struct drm_i915_private *dev_priv, int min_cdclk)
 {
 	const struct intel_cdclk_vals *table = dev_priv->cdclk.table;
@@ -2823,7 +2847,13 @@ u32 intel_read_rawclk(struct drm_i915_private *dev_priv)
  */
 void intel_init_cdclk_hooks(struct drm_i915_private *dev_priv)
 {
-	if (INTEL_GEN(dev_priv) >= 12) {
+	if (IS_ROCKETLAKE(dev_priv)) {
+		dev_priv->display.set_cdclk = bxt_set_cdclk;
+		dev_priv->display.bw_calc_min_cdclk = skl_bw_calc_min_cdclk;
+		dev_priv->display.modeset_calc_cdclk = bxt_modeset_calc_cdclk;
+		dev_priv->display.calc_voltage_level = tgl_calc_voltage_level;
+		dev_priv->cdclk.table = rkl_cdclk_table;
+	} else if (INTEL_GEN(dev_priv) >= 12) {
 		dev_priv->display.set_cdclk = bxt_set_cdclk;
 		dev_priv->display.bw_calc_min_cdclk = skl_bw_calc_min_cdclk;
 		dev_priv->display.modeset_calc_cdclk = bxt_modeset_calc_cdclk;
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
