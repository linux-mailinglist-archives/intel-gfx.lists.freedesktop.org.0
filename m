Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 92C7B6A85EC
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Mar 2023 17:11:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D70B210E11D;
	Thu,  2 Mar 2023 16:11:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE8C610E273
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Mar 2023 16:11:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677773509; x=1709309509;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=PgJUkbKoRM4A+5RojtsrK4govUbJWTpvjCafr/4d3ZA=;
 b=WrOdgiJyhPcLNvoJS0Ek6Q68Gc21mUGj2EtDC17trZ4dUNZGWMW0Isu/
 TiHOUHP1U/MMbCyGUeX4ucQ0+f/Ojh9+VI9UM0TURNI0Jtyudw4kyDChu
 KH93a3qZE9KiAWffNec+fU3Crp+5+XC37O+EnxJHYrTbEkcTjPnrqsrxH
 mrwJ5a/nXD1hSDB1+kd2v9JMu052W9hVceS9r5WeQyw9WKEnxNkPV+6Jw
 /sK4MFf4/7R0Ut+CtPT5OqQxTDybtVyxZ6kOy0qeptqX/WwbS2p7Bca7P
 RMFjxqvKPxS6d/t3DcMekeg9MQwmxZSX5xOVQcm+ZPQ+xJU2ZN99SVhf5 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10637"; a="323057985"
X-IronPort-AV: E=Sophos;i="5.98,228,1673942400"; d="scan'208";a="323057985"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2023 08:10:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10637"; a="784889169"
X-IronPort-AV: E=Sophos;i="5.98,228,1673942400"; d="scan'208";a="784889169"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga002.fm.intel.com with SMTP; 02 Mar 2023 08:10:34 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 02 Mar 2023 18:10:34 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 Mar 2023 18:10:13 +0200
Message-Id: <20230302161013.29213-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230302161013.29213-1-ville.syrjala@linux.intel.com>
References: <20230302161013.29213-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 7/7] drm/i915: Reuse <platform>_hotplug_mask()
 in .hpd_detection_setup()
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Replace the hardcoded masks with just a loop over all hpd
pins using the <platform>_hotplug_mask() functions.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_irq.c | 57 +++++++++++++--------------------
 1 file changed, 22 insertions(+), 35 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 9d00b840727c..11c6a9ca3c23 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -82,6 +82,7 @@ static inline void pmu_irq_stats(struct drm_i915_private *i915,
 
 typedef bool (*long_pulse_detect_func)(enum hpd_pin pin, u32 val);
 typedef u32 (*hotplug_enables_func)(struct intel_encoder *encoder);
+typedef u32 (*hotplug_mask_func)(enum hpd_pin pin);
 
 static const u32 hpd_ilk[HPD_NUM_PINS] = {
 	[HPD_PORT_A] = DE_DP_A_HOTPLUG,
@@ -878,6 +879,18 @@ static u32 intel_hpd_hotplug_irqs(struct drm_i915_private *dev_priv,
 	return hotplug_irqs;
 }
 
+static u32 intel_hpd_hotplug_mask(struct drm_i915_private *i915,
+				  hotplug_mask_func hotplug_mask)
+{
+	enum hpd_pin pin;
+	u32 hotplug = 0;
+
+	for_each_hpd_pin(pin)
+		hotplug |= hotplug_mask(pin);
+
+	return hotplug;
+}
+
 static u32 intel_hpd_hotplug_enables(struct drm_i915_private *i915,
 				     hotplug_enables_func hotplug_enables)
 {
@@ -2886,10 +2899,7 @@ static void ibx_hpd_detection_setup(struct drm_i915_private *dev_priv)
 	 * The pulse duration bits are reserved on LPT+.
 	 */
 	intel_uncore_rmw(&dev_priv->uncore, PCH_PORT_HOTPLUG,
-			 ibx_hotplug_mask(HPD_PORT_A) |
-			 ibx_hotplug_mask(HPD_PORT_B) |
-			 ibx_hotplug_mask(HPD_PORT_C) |
-			 ibx_hotplug_mask(HPD_PORT_D),
+			 intel_hpd_hotplug_mask(dev_priv, ibx_hotplug_mask),
 			 intel_hpd_hotplug_enables(dev_priv, ibx_hotplug_enables));
 }
 
@@ -2965,10 +2975,7 @@ static u32 icp_tc_hotplug_enables(struct intel_encoder *encoder)
 static void icp_ddi_hpd_detection_setup(struct drm_i915_private *dev_priv)
 {
 	intel_uncore_rmw(&dev_priv->uncore, SHOTPLUG_CTL_DDI,
-			 icp_ddi_hotplug_mask(HPD_PORT_A) |
-			 icp_ddi_hotplug_mask(HPD_PORT_B) |
-			 icp_ddi_hotplug_mask(HPD_PORT_C) |
-			 icp_ddi_hotplug_mask(HPD_PORT_D),
+			 intel_hpd_hotplug_mask(dev_priv, icp_ddi_hotplug_mask),
 			 intel_hpd_hotplug_enables(dev_priv, icp_ddi_hotplug_enables));
 }
 
@@ -2984,12 +2991,7 @@ static void icp_ddi_hpd_enable_detection(struct intel_encoder *encoder)
 static void icp_tc_hpd_detection_setup(struct drm_i915_private *dev_priv)
 {
 	intel_uncore_rmw(&dev_priv->uncore, SHOTPLUG_CTL_TC,
-			 icp_tc_hotplug_mask(HPD_PORT_TC1) |
-			 icp_tc_hotplug_mask(HPD_PORT_TC2) |
-			 icp_tc_hotplug_mask(HPD_PORT_TC3) |
-			 icp_tc_hotplug_mask(HPD_PORT_TC4) |
-			 icp_tc_hotplug_mask(HPD_PORT_TC5) |
-			 icp_tc_hotplug_mask(HPD_PORT_TC6),
+			 intel_hpd_hotplug_mask(dev_priv, icp_tc_hotplug_mask),
 			 intel_hpd_hotplug_enables(dev_priv, icp_tc_hotplug_enables));
 }
 
@@ -3075,12 +3077,7 @@ static void dg1_hpd_irq_setup(struct drm_i915_private *dev_priv)
 static void gen11_tc_hpd_detection_setup(struct drm_i915_private *dev_priv)
 {
 	intel_uncore_rmw(&dev_priv->uncore, GEN11_TC_HOTPLUG_CTL,
-			 gen11_hotplug_mask(HPD_PORT_TC1) |
-			 gen11_hotplug_mask(HPD_PORT_TC2) |
-			 gen11_hotplug_mask(HPD_PORT_TC3) |
-			 gen11_hotplug_mask(HPD_PORT_TC4) |
-			 gen11_hotplug_mask(HPD_PORT_TC5) |
-			 gen11_hotplug_mask(HPD_PORT_TC6),
+			 intel_hpd_hotplug_mask(dev_priv, gen11_hotplug_mask),
 			 intel_hpd_hotplug_enables(dev_priv, gen11_hotplug_enables));
 }
 
@@ -3096,12 +3093,7 @@ static void gen11_tc_hpd_enable_detection(struct intel_encoder *encoder)
 static void gen11_tbt_hpd_detection_setup(struct drm_i915_private *dev_priv)
 {
 	intel_uncore_rmw(&dev_priv->uncore, GEN11_TBT_HOTPLUG_CTL,
-			 gen11_hotplug_mask(HPD_PORT_TC1) |
-			 gen11_hotplug_mask(HPD_PORT_TC2) |
-			 gen11_hotplug_mask(HPD_PORT_TC3) |
-			 gen11_hotplug_mask(HPD_PORT_TC4) |
-			 gen11_hotplug_mask(HPD_PORT_TC5) |
-			 gen11_hotplug_mask(HPD_PORT_TC6),
+			 intel_hpd_hotplug_mask(dev_priv, gen11_hotplug_mask),
 			 intel_hpd_hotplug_enables(dev_priv, gen11_hotplug_enables));
 }
 
@@ -3199,14 +3191,11 @@ static void spt_hpd_detection_setup(struct drm_i915_private *dev_priv)
 
 	/* Enable digital hotplug on the PCH */
 	intel_uncore_rmw(&dev_priv->uncore, PCH_PORT_HOTPLUG,
-			 spt_hotplug_mask(HPD_PORT_A) |
-			 spt_hotplug_mask(HPD_PORT_B) |
-			 spt_hotplug_mask(HPD_PORT_C) |
-			 spt_hotplug_mask(HPD_PORT_D),
+			 intel_hpd_hotplug_mask(dev_priv, spt_hotplug_mask),
 			 intel_hpd_hotplug_enables(dev_priv, spt_hotplug_enables));
 
 	intel_uncore_rmw(&dev_priv->uncore, PCH_PORT_HOTPLUG2,
-			 spt_hotplug2_mask(HPD_PORT_E),
+			 intel_hpd_hotplug_mask(dev_priv, spt_hotplug2_mask),
 			 intel_hpd_hotplug_enables(dev_priv, spt_hotplug2_enables));
 }
 
@@ -3275,7 +3264,7 @@ static void ilk_hpd_detection_setup(struct drm_i915_private *dev_priv)
 	 * The pulse duration bits are reserved on HSW+.
 	 */
 	intel_uncore_rmw(&dev_priv->uncore, DIGITAL_PORT_HOTPLUG_CNTRL,
-			 ilk_hotplug_mask(HPD_PORT_A),
+			 intel_hpd_hotplug_mask(dev_priv, ilk_hotplug_mask),
 			 intel_hpd_hotplug_enables(dev_priv, ilk_hotplug_enables));
 }
 
@@ -3349,9 +3338,7 @@ static u32 bxt_hotplug_enables(struct intel_encoder *encoder)
 static void bxt_hpd_detection_setup(struct drm_i915_private *dev_priv)
 {
 	intel_uncore_rmw(&dev_priv->uncore, PCH_PORT_HOTPLUG,
-			 bxt_hotplug_mask(HPD_PORT_A) |
-			 bxt_hotplug_mask(HPD_PORT_B) |
-			 bxt_hotplug_mask(HPD_PORT_C),
+			 intel_hpd_hotplug_mask(dev_priv, bxt_hotplug_mask),
 			 intel_hpd_hotplug_enables(dev_priv, bxt_hotplug_enables));
 }
 
-- 
2.39.2

