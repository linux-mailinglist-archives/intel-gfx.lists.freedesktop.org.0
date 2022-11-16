Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 033AD62CD1E
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Nov 2022 22:50:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5008410E4FC;
	Wed, 16 Nov 2022 21:50:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 792F510E4ED
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Nov 2022 21:50:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668635417; x=1700171417;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2S9E1038SsxOO/0gR+OYYG5Imx+CgC5I6gLDUSsxyNc=;
 b=Ef2CYE+xuM0VqerHEjOJLrWwuxSw32MwGwMYFrOMcSvSiIQYl/KagN8U
 lBJCgSt3ICMzF3p3BQ0EGVs2dLM05LmdSPkgJ3lVzB6gP/1tEqiCnKraH
 dugKdGj40gV7NVFcKSE8BzjL46z1wDVW7SNRf6eIBhfki7QebncVx3fKW
 v991lGS2ROauCWqwSud2TxRqf81vJMLm6NC9gNHnud9VX7NRx6nw1Rh7E
 hPSFqpQa89DmKqFwyN4yha6JpOQc/ui2VZ9z3G8nGj9qe+BqDLaM+ceGW
 OnYU31pwh70qsa/77F6L2rZ+HtIHpyiUs+DEbOBoVYoJ6iXD/kDBEfHzE Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10533"; a="339497818"
X-IronPort-AV: E=Sophos;i="5.96,169,1665471600"; d="scan'208";a="339497818"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2022 13:50:14 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10533"; a="745235717"
X-IronPort-AV: E=Sophos;i="5.96,169,1665471600"; d="scan'208";a="745235717"
Received: from anushasr-mobl7.jf.intel.com ([10.24.14.52])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2022 13:50:14 -0800
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 16 Nov 2022 13:50:40 -0800
Message-Id: <20221116215040.713104-3-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221116215040.713104-1-anusha.srivatsa@intel.com>
References: <20221116215040.713104-1-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/3] drm/i915/display: Add CDCLK Support for MTL
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

As per bSpec MTL has 38.4 MHz Reference clock.
Adding the cdclk tables and cdclk_funcs that MTL
will use.

v2: Revert to using bxt_get_cdclk()

BSpec: 65243

Cc: Clint Taylor <Clinton.A.Taylor@intel.com>
Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
Reviewed-by: Clint Taylor <Clinton.A.Taylor@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 22 +++++++++++++++++++++-
 1 file changed, 21 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index ddbe94aac293..f540869c5b29 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -1346,6 +1346,16 @@ static const struct intel_cdclk_vals dg2_cdclk_table[] = {
 	{}
 };
 
+static const struct intel_cdclk_vals mtl_cdclk_table[] = {
+	{ .refclk = 38400, .cdclk = 172800, .divider = 2, .ratio = 16, .waveform = 0xad5a },
+	{ .refclk = 38400, .cdclk = 192000, .divider = 2, .ratio = 16, .waveform = 0xb6b6 },
+	{ .refclk = 38400, .cdclk = 307200, .divider = 2, .ratio = 16, .waveform = 0x0000 },
+	{ .refclk = 38400, .cdclk = 480000, .divider = 2, .ratio = 25, .waveform = 0x0000 },
+	{ .refclk = 38400, .cdclk = 556800, .divider = 2, .ratio = 29, .waveform = 0x0000 },
+	{ .refclk = 38400, .cdclk = 652800, .divider = 2, .ratio = 34, .waveform = 0x0000 },
+	{}
+};
+
 static int bxt_calc_cdclk(struct drm_i915_private *dev_priv, int min_cdclk)
 {
 	const struct intel_cdclk_vals *table = dev_priv->display.cdclk.table;
@@ -3186,6 +3196,13 @@ u32 intel_read_rawclk(struct drm_i915_private *dev_priv)
 	return freq;
 }
 
+static const struct intel_cdclk_funcs mtl_cdclk_funcs = {
+	.get_cdclk = bxt_get_cdclk,
+	.set_cdclk = bxt_set_cdclk,
+	.modeset_calc_cdclk = bxt_modeset_calc_cdclk,
+	.calc_voltage_level = tgl_calc_voltage_level,
+};
+
 static const struct intel_cdclk_funcs tgl_cdclk_funcs = {
 	.get_cdclk = bxt_get_cdclk,
 	.set_cdclk = bxt_set_cdclk,
@@ -3321,7 +3338,10 @@ static const struct intel_cdclk_funcs i830_cdclk_funcs = {
  */
 void intel_init_cdclk_hooks(struct drm_i915_private *dev_priv)
 {
-	if (IS_DG2(dev_priv)) {
+	if (IS_METEORLAKE(dev_priv)) {
+		dev_priv->display.funcs.cdclk = &mtl_cdclk_funcs;
+		dev_priv->display.cdclk.table = mtl_cdclk_table;
+	} else if (IS_DG2(dev_priv)) {
 		dev_priv->display.funcs.cdclk = &tgl_cdclk_funcs;
 		dev_priv->display.cdclk.table = dg2_cdclk_table;
 	} else if (IS_ALDERLAKE_P(dev_priv)) {
-- 
2.25.1

