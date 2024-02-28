Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A455386BA31
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Feb 2024 22:50:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B06510E031;
	Wed, 28 Feb 2024 21:50:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="B9G3SElC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE88610E031
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Feb 2024 21:50:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709157033; x=1740693033;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=xYFIhkCtvCI90uBfPB+aucfk5AFFTQEZNNVjJuKdMpc=;
 b=B9G3SElCCgYqFXJcvmGngJXWTWLVsaDK7bvnITeZHAfQMEhXev5PI7DL
 jGpFbjMRPPMNjOr2tbC9d6L3JWY9BEUgzMpM4mE1bbUJU4iDwhrhOsfwm
 5OSfjfkbs5vnrG2OxWL+UqmtPSZ15lvVYTSFPD7DkbE1xD88ixDUHc2ip
 Kl0h7j6dgCRjbAqafd4i/WqIr9Lty+bfG4tV/6cO9mmH3hWQTOZFN28c6
 E4f4eaOZ9SvUOGRxp/1jxWVngCbBGjr+E7k3tXY394k2SMYE2LlfiBjR9
 6HvDeNS9ntvFwos63FsTTZPFitv5AfcYBffZoPZTwKSb04vwu4moC9xrK w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10998"; a="3757132"
X-IronPort-AV: E=Sophos;i="6.06,191,1705392000"; 
   d="scan'208";a="3757132"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2024 13:50:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,191,1705392000"; 
   d="scan'208";a="7520089"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2024 13:50:32 -0800
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>,
 Gustavo Sousa <gustavo.sousa@intel.com>,
 Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2] drm/i915: Reuse RPLU cdclk fns for MTL+
Date: Wed, 28 Feb 2024 13:48:54 -0800
Message-Id: <20240228214854.2530205-1-radhakrishna.sripada@intel.com>
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

MTL/LNL use the same cdclk functions as RPLU albeit with different
tables. Having separate tables and not requiring special handling
for the platforms, reuse RPLU cdclk functions.

v2: Update subject and the commit message(Jani)

Cc: Gustavo Sousa <gustavo.sousa@intel.com>
Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 11 ++---------
 1 file changed, 2 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 22473c55b899..5b2688d8c644 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -3559,13 +3559,6 @@ void intel_cdclk_debugfs_register(struct drm_i915_private *i915)
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
@@ -3709,10 +3702,10 @@ static const struct intel_cdclk_funcs i830_cdclk_funcs = {
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

