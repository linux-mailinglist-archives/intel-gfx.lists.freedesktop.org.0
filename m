Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C3E67773BA4
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Aug 2023 17:53:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDB5610E1CC;
	Tue,  8 Aug 2023 15:53:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F73F10E1CC
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Aug 2023 15:53:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691510028; x=1723046028;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ksaGWyjVOCgTEwxmN2STVXyFuEGxp5Q0N4XdY2s52X8=;
 b=bDVngreaC6Khwg33Xccy8RzmvacGuHdwGvD9UWFQYfqJYr0TbHKXfpxt
 URjKLRbEq4C45xrSNMpf3lzKErezD3e51GAOKuDfSBaL1KLovZYuW7fdh
 5e1JisQumdMTt7vtr5G7pPtZh/6eRZEFMz8xoTDdnmPccZT9N2Ap3xCwa
 dDBemLw3sMFJ6WU37UEPtCNiYfO04V/SsX+4j/oAIbNLudEaDuFjBZBS+
 YgGwgFi+Qj1npwhxO7QCB/9RIPMSNTd/3BGHCIDoiCE6rmh4JUG/03fgE
 m76hrEQMbKkbfEKlrHOMFdbZPQPConmRFHBmFhF4//sk5PicZ1Z5zQ7IJ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="355798204"
X-IronPort-AV: E=Sophos;i="6.01,156,1684825200"; d="scan'208";a="355798204"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2023 08:53:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="874788080"
Received: from sschwar3-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.49.159])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2023 08:53:49 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Aug 2023 18:53:30 +0300
Message-Id: <f4a8570881e9be28a2406134b2898b8680f9e765.1691509966.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1691509966.git.jani.nikula@intel.com>
References: <cover.1691509966.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/4] drm/i915/irq: add ilk_de_irq_postinstall()
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add a dedicated de postinstall function.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_display_irq.c  | 41 +++++++++++++++++++
 .../gpu/drm/i915/display/intel_display_irq.h  |  1 +
 drivers/gpu/drm/i915/i915_irq.c               | 38 +----------------
 3 files changed, 43 insertions(+), 37 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index a706ba740dd6..a697e0b32c34 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -1583,6 +1583,47 @@ void valleyview_disable_display_irqs(struct drm_i915_private *dev_priv)
 		vlv_display_irq_reset(dev_priv);
 }
 
+void ilk_de_irq_postinstall(struct drm_i915_private *i915)
+{
+	struct intel_uncore *uncore = &i915->uncore;
+	u32 display_mask, extra_mask;
+
+	if (GRAPHICS_VER(i915) >= 7) {
+		display_mask = (DE_MASTER_IRQ_CONTROL | DE_GSE_IVB |
+				DE_PCH_EVENT_IVB | DE_AUX_CHANNEL_A_IVB);
+		extra_mask = (DE_PIPEC_VBLANK_IVB | DE_PIPEB_VBLANK_IVB |
+			      DE_PIPEA_VBLANK_IVB | DE_ERR_INT_IVB |
+			      DE_PLANE_FLIP_DONE_IVB(PLANE_C) |
+			      DE_PLANE_FLIP_DONE_IVB(PLANE_B) |
+			      DE_PLANE_FLIP_DONE_IVB(PLANE_A) |
+			      DE_DP_A_HOTPLUG_IVB);
+	} else {
+		display_mask = (DE_MASTER_IRQ_CONTROL | DE_GSE | DE_PCH_EVENT |
+				DE_AUX_CHANNEL_A | DE_PIPEB_CRC_DONE |
+				DE_PIPEA_CRC_DONE | DE_POISON);
+		extra_mask = (DE_PIPEA_VBLANK | DE_PIPEB_VBLANK |
+			      DE_PIPEB_FIFO_UNDERRUN | DE_PIPEA_FIFO_UNDERRUN |
+			      DE_PLANE_FLIP_DONE(PLANE_A) |
+			      DE_PLANE_FLIP_DONE(PLANE_B) |
+			      DE_DP_A_HOTPLUG);
+	}
+
+	if (IS_HASWELL(i915)) {
+		gen3_assert_iir_is_zero(uncore, EDP_PSR_IIR);
+		display_mask |= DE_EDP_PSR_INT_HSW;
+	}
+
+	if (IS_IRONLAKE_M(i915))
+		extra_mask |= DE_PCU_EVENT;
+
+	i915->irq_mask = ~display_mask;
+
+	ibx_irq_postinstall(i915);
+
+	GEN3_IRQ_INIT(uncore, DE, i915->irq_mask,
+		      display_mask | extra_mask);
+}
+
 void gen8_de_irq_postinstall(struct drm_i915_private *dev_priv)
 {
 	struct intel_uncore *uncore = &dev_priv->uncore;
diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.h b/drivers/gpu/drm/i915/display/intel_display_irq.h
index ce190557826b..2ccc3e53cec3 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.h
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.h
@@ -61,6 +61,7 @@ void gen11_display_irq_reset(struct drm_i915_private *i915);
 void ibx_irq_postinstall(struct drm_i915_private *i915);
 void vlv_display_irq_postinstall(struct drm_i915_private *i915);
 void icp_irq_postinstall(struct drm_i915_private *i915);
+void ilk_de_irq_postinstall(struct drm_i915_private *i915);
 void gen8_de_irq_postinstall(struct drm_i915_private *i915);
 void gen11_de_irq_postinstall(struct drm_i915_private *i915);
 void dg1_de_irq_postinstall(struct drm_i915_private *i915);
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 8c074643b6d1..d63f79259637 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -772,45 +772,9 @@ static void cherryview_irq_reset(struct drm_i915_private *dev_priv)
 
 static void ilk_irq_postinstall(struct drm_i915_private *dev_priv)
 {
-	struct intel_uncore *uncore = &dev_priv->uncore;
-	u32 display_mask, extra_mask;
-
-	if (GRAPHICS_VER(dev_priv) >= 7) {
-		display_mask = (DE_MASTER_IRQ_CONTROL | DE_GSE_IVB |
-				DE_PCH_EVENT_IVB | DE_AUX_CHANNEL_A_IVB);
-		extra_mask = (DE_PIPEC_VBLANK_IVB | DE_PIPEB_VBLANK_IVB |
-			      DE_PIPEA_VBLANK_IVB | DE_ERR_INT_IVB |
-			      DE_PLANE_FLIP_DONE_IVB(PLANE_C) |
-			      DE_PLANE_FLIP_DONE_IVB(PLANE_B) |
-			      DE_PLANE_FLIP_DONE_IVB(PLANE_A) |
-			      DE_DP_A_HOTPLUG_IVB);
-	} else {
-		display_mask = (DE_MASTER_IRQ_CONTROL | DE_GSE | DE_PCH_EVENT |
-				DE_AUX_CHANNEL_A | DE_PIPEB_CRC_DONE |
-				DE_PIPEA_CRC_DONE | DE_POISON);
-		extra_mask = (DE_PIPEA_VBLANK | DE_PIPEB_VBLANK |
-			      DE_PIPEB_FIFO_UNDERRUN | DE_PIPEA_FIFO_UNDERRUN |
-			      DE_PLANE_FLIP_DONE(PLANE_A) |
-			      DE_PLANE_FLIP_DONE(PLANE_B) |
-			      DE_DP_A_HOTPLUG);
-	}
-
-	if (IS_HASWELL(dev_priv)) {
-		gen3_assert_iir_is_zero(uncore, EDP_PSR_IIR);
-		display_mask |= DE_EDP_PSR_INT_HSW;
-	}
-
-	if (IS_IRONLAKE_M(dev_priv))
-		extra_mask |= DE_PCU_EVENT;
-
-	dev_priv->irq_mask = ~display_mask;
-
-	ibx_irq_postinstall(dev_priv);
-
 	gen5_gt_irq_postinstall(to_gt(dev_priv));
 
-	GEN3_IRQ_INIT(uncore, DE, dev_priv->irq_mask,
-		      display_mask | extra_mask);
+	ilk_de_irq_postinstall(dev_priv);
 }
 
 static void valleyview_irq_postinstall(struct drm_i915_private *dev_priv)
-- 
2.39.2

