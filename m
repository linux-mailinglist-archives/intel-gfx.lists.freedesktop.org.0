Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D313611C6E
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Oct 2022 23:32:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E89DA10E8E4;
	Fri, 28 Oct 2022 21:32:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF31A10E8E2
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Oct 2022 21:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666992725; x=1698528725;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HliFHVz0dI1s1xP6A8BYcI81vzk1igkozvvVY6nNop8=;
 b=baBNHXhHY2CfYEHrA+PcfawoJ3TzpYgHYllPsJkoioi18Ky6Wj23LLc+
 pL1+A+y/VYMAnrE/KpaHKzeOEaeUNmBLdf9FZnZX1w+71BbrSdHwkbp6g
 NRI5LTCAXgfs0jtM21gMr8pjO1V6xdDU2EQMZaY+uyG4Sf5qlmP5OrGDr
 PhurQfTE26n5uhscVqIAcKM2J7qAgZ/Pspnlwi5trhLYz4Rr9RuCgwYiw
 ICWUwwtJ9VHHieha0Hr7tPPtIcShu2+FX7+EVJLYOyCQi0mjKhn13V2GQ
 2buUj61TIpZZTALHg1rkxAUn6XtcPHslTxOSnMbPFErnH/rV7JiiKzH3u w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10514"; a="291892138"
X-IronPort-AV: E=Sophos;i="5.95,222,1661842800"; d="scan'208";a="291892138"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2022 14:32:04 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10514"; a="775520879"
X-IronPort-AV: E=Sophos;i="5.95,222,1661842800"; d="scan'208";a="775520879"
Received: from gpasumam-mobl.amr.corp.intel.com (HELO
 anushasr-mobl7.intel.com) ([10.209.44.77])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2022 14:32:04 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Oct 2022 14:32:11 -0700
Message-Id: <20221028213211.326198-2-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221028213211.326198-1-anusha.srivatsa@intel.com>
References: <20221028213211.326198-1-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/display: Add CDCLK Support for MTL
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
Addin gthe cdclk tables and cdclk_funcs that MTL
will use.

v2: Revert to using bxt_get_cdclk()

BSpec: 65243

Cc: Clint Taylor <Clinton.A.Taylor@intel.com>
Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 22 +++++++++++++++++++++-
 1 file changed, 21 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index d79cf282faa8..54ac7f9a1253 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -1345,6 +1345,16 @@ static const struct intel_cdclk_vals dg2_cdclk_table[] = {
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
@@ -3159,6 +3169,13 @@ u32 intel_read_rawclk(struct drm_i915_private *dev_priv)
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
@@ -3294,7 +3311,10 @@ static const struct intel_cdclk_funcs i830_cdclk_funcs = {
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

