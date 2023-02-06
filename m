Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9581668C36E
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Feb 2023 17:35:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C589810E418;
	Mon,  6 Feb 2023 16:35:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9045E10E418
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Feb 2023 16:35:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675701316; x=1707237316;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=T1zGkHdfHroFKZPnHt/MlDSqTtDdnEmQCodU+CMoVP4=;
 b=VcjTMmMe9R/jNIndzy9a2tDFlBKxzioE2xuGBW0oVS8C6SDbycoNdytZ
 HYLPouRKhkUHu/oaNnQgyWUoFrLIGfPaMWjyB3b97kP9ptYQ1It2d6iue
 jBzCjYPEBV2q8/muOBOztUCNqKqMsAZzLDBnPLliFaqwDkJuRGZM+E90r
 2JwI3hl6jyBF/sHNHs1w0bLPCk20vSfxfl/gd0oFNNQz6Fut6/mWD5KGi
 11PYah+V5KQGu65yosvAIrN3yzsUHHSDI99pUiQTRKFUGySEw58BJYcvK
 00OKGybAnMjvdEAk8h6hmbd8qaONWuqiw4LPJaGM7hNeJ7sbxv4vhfYkK w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="312903610"
X-IronPort-AV: E=Sophos;i="5.97,276,1669104000"; d="scan'208";a="312903610"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2023 08:35:16 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="659907503"
X-IronPort-AV: E=Sophos;i="5.97,276,1669104000"; d="scan'208";a="659907503"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2023 08:35:15 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  6 Feb 2023 18:35:10 +0200
Message-Id: <20230206163512.2841513-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/3] drm/i915: Move display power initialization
 during driver probing later
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

Determining whether the display engine is fused-off on a platform happens
only in intel_device_info_runtime_init(). Initializing the display power
functionality depends on this condition, so move
intel_power_domains_init() later after the runtime init function has
been called.

The next patch fixing platforms with the display fused-off, depends on
this patch.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 5 +++++
 drivers/gpu/drm/i915/i915_driver.c           | 7 -------
 2 files changed, 5 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 166662ade593c..b3e7ed3866cde 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -8634,6 +8634,10 @@ int intel_modeset_init_noirq(struct drm_i915_private *i915)
 		goto cleanup_bios;
 
 	/* FIXME: completely on the wrong abstraction layer */
+	ret = intel_power_domains_init(i915);
+	if (ret < 0)
+		goto cleanup_vga;
+
 	intel_power_domains_init_hw(i915, false);
 
 	if (!HAS_DISPLAY(i915))
@@ -8676,6 +8680,7 @@ int intel_modeset_init_noirq(struct drm_i915_private *i915)
 cleanup_vga_client_pw_domain_dmc:
 	intel_dmc_ucode_fini(i915);
 	intel_power_domains_driver_remove(i915);
+cleanup_vga:
 	intel_vga_unregister(i915);
 cleanup_bios:
 	intel_bios_driver_remove(i915);
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 13bf4fe52f9fe..fe2870a6ae631 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -251,9 +251,6 @@ static int i915_driver_early_probe(struct drm_i915_private *dev_priv)
 	intel_detect_pch(dev_priv);
 
 	intel_pm_setup(dev_priv);
-	ret = intel_power_domains_init(dev_priv);
-	if (ret < 0)
-		goto err_gem;
 	intel_irq_init(dev_priv);
 	intel_init_display_hooks(dev_priv);
 	intel_init_clock_gating_hooks(dev_priv);
@@ -262,10 +259,6 @@ static int i915_driver_early_probe(struct drm_i915_private *dev_priv)
 
 	return 0;
 
-err_gem:
-	i915_gem_cleanup_early(dev_priv);
-	intel_gt_driver_late_release_all(dev_priv);
-	i915_drm_clients_fini(&dev_priv->clients);
 err_rootgt:
 	intel_region_ttm_device_fini(dev_priv);
 err_ttm:
-- 
2.37.1

