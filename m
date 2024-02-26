Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E08A686831A
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Feb 2024 22:31:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4557110E54D;
	Mon, 26 Feb 2024 21:31:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jyGW3cG0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E532410E54D
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Feb 2024 21:31:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708983115; x=1740519115;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=migMGjT/Vn9Ls8IkGUo5owOm9LcWwDllm/5FXT6iD+c=;
 b=jyGW3cG09czlBOPnNnaFbvvN7n5rHXStEiB550j+XtgBRtFfyivLcHPM
 FksAR78Ule+CP8LmRpTV4EnEvTJfJIjddluO6G5mwJkkem9MQJ1v7u/XQ
 0RJdoGJ2s0dZCKew+NGvCtxGMm+x0/qicWHxn13PENnWNEo0HvCPLQPBa
 neuDkj7qSltAbE6hMlYK5KuXmLlTnGLf23ThxL4eiPhITtzWbcyQK5a3l
 L9jmzp865uAh5tkl9MW6nlYBQbY7m0/JzINnADSX/SbOlm63u5LHNs8t9
 A84dyyzaNLbnW1Dpqc9yRbAB+HEBESjDRVsyaOXhAbPqcf1XcX44UsO1c Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10996"; a="3458012"
X-IronPort-AV: E=Sophos;i="6.06,186,1705392000"; 
   d="scan'208";a="3458012"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2024 13:31:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,186,1705392000"; 
   d="scan'208";a="6689920"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2024 13:31:53 -0800
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>,
 Gustavo Sousa <gustavo.sousa@intel.com>
Subject: [PATCH] drm/i915: Reuse rplu cdclk fns for mtl/lnl
Date: Mon, 26 Feb 2024 13:30:18 -0800
Message-Id: <20240226213018.592290-1-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
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

MTL/LNL use the same cdclk functions as rplu albeit with different
tables. Having separate tables not explicit special handling for the
platforms reuse rplu cdclk functions.

Cc: Gustavo Sousa <gustavo.sousa@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 11 ++---------
 1 file changed, 2 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index ed89b86ea625..6d2d32f7890d 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -3534,13 +3534,6 @@ void intel_cdclk_debugfs_register(struct drm_i915_private *i915)
 			    i915, &i915_cdclk_info_fops);
 }
 
-static const struct intel_cdclk_funcs mtl_cdclk_funcs = {
-	.get_cdclk = bxt_get_cdclk,
-	.set_cdclk = bxt_set_cdclk,
-	.modeset_calc_cdclk = bxt_modeset_calc_cdclk,
-	.calc_voltage_level = rplu_calc_voltage_level,
-};
-
 static const struct intel_cdclk_funcs rplu_cdclk_funcs = {
 	.get_cdclk = bxt_get_cdclk,
 	.set_cdclk = bxt_set_cdclk,
@@ -3684,10 +3677,10 @@ static const struct intel_cdclk_funcs i830_cdclk_funcs = {
 void intel_init_cdclk_hooks(struct drm_i915_private *dev_priv)
 {
 	if (DISPLAY_VER(dev_priv) >= 20) {
-		dev_priv->display.funcs.cdclk = &mtl_cdclk_funcs;
+		dev_priv->display.funcs.cdclk = &rplu_cdclk_funcs;
 		dev_priv->display.cdclk.table = lnl_cdclk_table;
 	} else if (DISPLAY_VER(dev_priv) >= 14) {
-		dev_priv->display.funcs.cdclk = &mtl_cdclk_funcs;
+		dev_priv->display.funcs.cdclk = &rplu_cdclk_funcs;
 		dev_priv->display.cdclk.table = mtl_cdclk_table;
 	} else if (IS_DG2(dev_priv)) {
 		dev_priv->display.funcs.cdclk = &tgl_cdclk_funcs;
-- 
2.34.1

