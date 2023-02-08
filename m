Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF34A68EE22
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Feb 2023 12:43:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 865FA10E752;
	Wed,  8 Feb 2023 11:43:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 46AAA10E752
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Feb 2023 11:43:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675856587; x=1707392587;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=GYFJ4RRO8sMS4IIaBrtM9H0VOhtO57IEX8V6ZGCUXXU=;
 b=SwCzsKTho2VbKJJj4rf2HAumLVH82JXGdS75na887FeSxE0NfHl73qUR
 /+1ZXX0jU5q1VqtZX2khCXpyMlTIix1etIXmRaq8YLAhAAINXL9x19uGn
 MOtx449jWIxWyTWbODrMBe/r2q7k3GrcZLiWWwDW0lcHOBrZZkCtduTcs
 8KF5wdImS11T2dB+uMHPmzwjRJ3YAdprXLWtB3p5za2NC5QLr2CAmBWp5
 a55T8q7jD+aM8X6emNYXpYiBjYV78yKG4jWsqSXIA8w3VgnXuEuatj6Cd
 GGkkSOQiOShtx1MjfYFfHupn7OfjOx5MFORwLtpPeOeA6Qqnjr6+YXp1O Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="313415499"
X-IronPort-AV: E=Sophos;i="5.97,280,1669104000"; d="scan'208";a="313415499"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2023 03:43:07 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="699620687"
X-IronPort-AV: E=Sophos;i="5.97,280,1669104000"; d="scan'208";a="699620687"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2023 03:43:06 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 Feb 2023 13:42:58 +0200
Message-Id: <20230208114300.3123934-3-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
In-Reply-To: <20230208114300.3123934-1-imre.deak@intel.com>
References: <20230208114300.3123934-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/4] drm/i915: Move display power
 initialization during driver probing later
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

Determining whether the display engine is present on a platform happens
only in intel_device_info_runtime_init(). Initializing the display power
functionality depends on this condition, so move
intel_power_domains_init() later after the runtime init function has
been called.

The next patch fixing platforms without display, depends on this patch.

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

