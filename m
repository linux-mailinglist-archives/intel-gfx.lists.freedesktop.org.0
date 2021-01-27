Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A995930580F
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Jan 2021 11:17:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F16EB6E2EF;
	Wed, 27 Jan 2021 10:17:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC3426E2EF
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Jan 2021 10:17:31 +0000 (UTC)
IronPort-SDR: OPKy00C+UxNPPB6NhEzOBrYY6hEOl17vyZf1pYFoaPw4x+zwyzC9HBvlZtYCCMku/Ry+VjJrR9
 +O0s0JSHf+Qw==
X-IronPort-AV: E=McAfee;i="6000,8403,9876"; a="167144006"
X-IronPort-AV: E=Sophos;i="5.79,378,1602572400"; d="scan'208";a="167144006"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 02:17:31 -0800
IronPort-SDR: qiw/O76Ulhj8EI32btF1oW5S82vsKRm+4xEjEUIRMeAbzbQKDHTlkG8S8omnqB+r29YrO4o3+R
 rPSdwMo4v7Lw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,378,1602572400"; d="scan'208";a="573224557"
Received: from tejas-system-product-name.iind.intel.com ([10.145.162.130])
 by orsmga005.jf.intel.com with ESMTP; 27 Jan 2021 02:17:29 -0800
From: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
To: intel-gfx@lists.freedesktop.org, hariom.pandey@intel.com,
 matthew.d.roper@intel.com
Date: Wed, 27 Jan 2021 15:38:30 +0530
Message-Id: <20210127100830.162292-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gen9bc: Handle TGP PCH during
 suspend/resume
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

For Legacy S3 suspend/resume GEN9 BC needs to enable and
setup TGP PCH.

Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
---
 drivers/gpu/drm/i915/i915_irq.c | 36 ++++++++++++++++++++++++---------
 1 file changed, 27 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index a31980f69120..6dcefc3e24ac 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -3026,8 +3026,20 @@ static void gen8_irq_reset(struct drm_i915_private *dev_priv)
 	GEN3_IRQ_RESET(uncore, GEN8_DE_MISC_);
 	GEN3_IRQ_RESET(uncore, GEN8_PCU_);
 
-	if (HAS_PCH_SPLIT(dev_priv))
+	if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP)
+		GEN3_IRQ_RESET(uncore, SDE);
+	else if (HAS_PCH_SPLIT(dev_priv))
 		ibx_irq_reset(dev_priv);
+
+	/* Wa_14010685332:cnp/cmp,tgp,adp */
+	if (INTEL_PCH_TYPE(dev_priv) == PCH_CNP ||
+	    (INTEL_PCH_TYPE(dev_priv) >= PCH_TGP &&
+	    INTEL_PCH_TYPE(dev_priv) < PCH_DG1)) {
+		intel_uncore_rmw(uncore, SOUTH_CHICKEN1,
+				 SBCLK_RUN_REFCLK_DIS, SBCLK_RUN_REFCLK_DIS);
+		intel_uncore_rmw(uncore, SOUTH_CHICKEN1,
+				 SBCLK_RUN_REFCLK_DIS, 0);
+	}
 }
 
 static void gen11_display_irq_reset(struct drm_i915_private *dev_priv)
@@ -3442,6 +3454,9 @@ static void spt_hpd_irq_setup(struct drm_i915_private *dev_priv)
 	ibx_display_interrupt_update(dev_priv, hotplug_irqs, enabled_irqs);
 
 	spt_hpd_detection_setup(dev_priv);
+
+	if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP)
+		icp_hpd_irq_setup(dev_priv);
 }
 
 static u32 ilk_hotplug_enables(struct drm_i915_private *i915,
@@ -3729,9 +3744,19 @@ static void gen8_de_irq_postinstall(struct drm_i915_private *dev_priv)
 	}
 }
 
+static void icp_irq_postinstall(struct drm_i915_private *dev_priv)
+{
+	struct intel_uncore *uncore = &dev_priv->uncore;
+	u32 mask = SDE_GMBUS_ICP;
+
+	GEN3_IRQ_INIT(uncore, SDE, ~mask, 0xffffffff);
+}
+
 static void gen8_irq_postinstall(struct drm_i915_private *dev_priv)
 {
-	if (HAS_PCH_SPLIT(dev_priv))
+	if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP)
+		icp_irq_postinstall(dev_priv);
+	else if (HAS_PCH_SPLIT(dev_priv))
 		ibx_irq_postinstall(dev_priv);
 
 	gen8_gt_irq_postinstall(&dev_priv->gt);
@@ -3740,13 +3765,6 @@ static void gen8_irq_postinstall(struct drm_i915_private *dev_priv)
 	gen8_master_intr_enable(dev_priv->uncore.regs);
 }
 
-static void icp_irq_postinstall(struct drm_i915_private *dev_priv)
-{
-	struct intel_uncore *uncore = &dev_priv->uncore;
-	u32 mask = SDE_GMBUS_ICP;
-
-	GEN3_IRQ_INIT(uncore, SDE, ~mask, 0xffffffff);
-}
 
 static void gen11_irq_postinstall(struct drm_i915_private *dev_priv)
 {
-- 
2.30.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
