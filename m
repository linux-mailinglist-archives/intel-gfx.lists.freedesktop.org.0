Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B8426E1F8F
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Apr 2023 11:42:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 746EA10ECB5;
	Fri, 14 Apr 2023 09:42:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5905D10ECB4
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Apr 2023 09:42:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681465372; x=1713001372;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7zUWdwwVF0HHZltbnJknzTQPAwCbWERSvRYz17ltnPk=;
 b=cmRlLJdQ1X4czIGjm7gLgQQuYmqVqgiHAjkWaCrFY63DKKIavthiwAD3
 54AQJn4DyMlLuYaG3neN+pGK1mdEV1CO9Md5e3pOnyUHVzaQuQ54L5Vx1
 U1x9n5zvZgSb/no4zlLljNu7AX1x1SVOVzeICD0UVFgilg6o+YXJ64v1Z
 JqGA7lyGW1Pn9l+h8ICJavTFxpif5Fqx+eqqGhIKPOvV2PnO8YU2Bn5Uc
 Uq9OvaO/2b745O5pqX6OdUqs88E1RfmYyAzj6DmBvMnChe4TgsaBL9qM+
 SrL2MpyxqgvyLa/HejWvyh1xvP0mrQssBlIlFOqFC2dOZNTN4SJvul2If w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="328575115"
X-IronPort-AV: E=Sophos;i="5.99,195,1677571200"; d="scan'208";a="328575115"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2023 02:42:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="722398342"
X-IronPort-AV: E=Sophos;i="5.99,195,1677571200"; d="scan'208";a="722398342"
Received: from bauinger-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.55.117])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2023 02:42:49 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 Apr 2023 12:42:02 +0300
Message-Id: <0b02311e5343527b501b44671d2188f2a1b30a7d.1681465222.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1681465222.git.jani.nikula@intel.com>
References: <cover.1681465222.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 10/10] drm/i915/display: add
 intel_display_driver_early_probe()
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
Cc: jani.nikula@intel.com, Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add intel_display_driver_early_probe() as the early probe call to
replace intel_init_display_hooks(). The latter will be "demoted" to
setting up hooks in intel_display.c only.

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c       | 11 -----------
 .../gpu/drm/i915/display/intel_display_driver.c    | 14 ++++++++++++++
 .../gpu/drm/i915/display/intel_display_driver.h    |  1 +
 drivers/gpu/drm/i915/i915_driver.c                 |  2 +-
 4 files changed, 16 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 0970acee062b..258b06dd4de7 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -8015,15 +8015,6 @@ static const struct intel_display_funcs i9xx_display_funcs = {
  */
 void intel_init_display_hooks(struct drm_i915_private *dev_priv)
 {
-	if (!HAS_DISPLAY(dev_priv))
-		return;
-
-	intel_color_init_hooks(dev_priv);
-	intel_init_cdclk_hooks(dev_priv);
-	intel_audio_hooks_init(dev_priv);
-
-	intel_dpll_init_clock_hook(dev_priv);
-
 	if (DISPLAY_VER(dev_priv) >= 9) {
 		dev_priv->display.funcs.display = &skl_display_funcs;
 	} else if (HAS_DDI(dev_priv)) {
@@ -8036,8 +8027,6 @@ void intel_init_display_hooks(struct drm_i915_private *dev_priv)
 	} else {
 		dev_priv->display.funcs.display = &i9xx_display_funcs;
 	}
-
-	intel_fdi_init_hook(dev_priv);
 }
 
 int intel_initial_commit(struct drm_device *dev)
diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index d20a279fdf51..b3dbfe2a892e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -32,6 +32,7 @@
 #include "intel_display_types.h"
 #include "intel_dmc.h"
 #include "intel_dp.h"
+#include "intel_dpll.h"
 #include "intel_dpll_mgr.h"
 #include "intel_fb.h"
 #include "intel_fbc.h"
@@ -169,6 +170,19 @@ static void intel_plane_possible_crtcs_init(struct drm_i915_private *dev_priv)
 	}
 }
 
+void intel_display_driver_early_probe(struct drm_i915_private *i915)
+{
+	if (!HAS_DISPLAY(i915))
+		return;
+
+	intel_color_init_hooks(i915);
+	intel_init_cdclk_hooks(i915);
+	intel_audio_hooks_init(i915);
+	intel_dpll_init_clock_hook(i915);
+	intel_init_display_hooks(i915);
+	intel_fdi_init_hook(i915);
+}
+
 /* part #1: call before irq install */
 int intel_display_driver_probe_noirq(struct drm_i915_private *i915)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.h b/drivers/gpu/drm/i915/display/intel_display_driver.h
index 84e7977f265a..c276a58ee329 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.h
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.h
@@ -15,6 +15,7 @@ struct pci_dev;
 
 bool intel_display_driver_probe_defer(struct pci_dev *pdev);
 void intel_display_driver_init_hw(struct drm_i915_private *i915);
+void intel_display_driver_early_probe(struct drm_i915_private *i915);
 int intel_display_driver_probe_noirq(struct drm_i915_private *i915);
 int intel_display_driver_probe_nogem(struct drm_i915_private *i915);
 int intel_display_driver_probe(struct drm_i915_private *i915);
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index d806790114e0..dbbbf55e22dd 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -252,7 +252,7 @@ static int i915_driver_early_probe(struct drm_i915_private *dev_priv)
 	intel_detect_pch(dev_priv);
 
 	intel_irq_init(dev_priv);
-	intel_init_display_hooks(dev_priv);
+	intel_display_driver_early_probe(dev_priv);
 	intel_clock_gating_hooks_init(dev_priv);
 
 	intel_detect_preproduction_hw(dev_priv);
-- 
2.39.2

