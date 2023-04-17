Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3D806E49B2
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Apr 2023 15:17:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38CA210E4E5;
	Mon, 17 Apr 2023 13:17:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC51610E4E3
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Apr 2023 13:17:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681737465; x=1713273465;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cRtLZeAdl70r2oDWn2tIxI7NWk/o7f7ubfjx2FCnObY=;
 b=n2zTk21Ws0JJqXoQ12NI20x5E/M1KcmsX2YOreBHsRSG03EE8/h4UjFi
 kLd5s6y/4E7AYos1ymb42RLszmNYp3vKN1OEy5sJIsMKGerjfJ3oAxL8w
 LVyA6S1vhiTnDsEfyRZKco6sRyisUUxHwaw/F1FSrc+0umpHPS61LI9Dr
 exxNHvsC8zNAN2NDRr0p0hslEqRVxqCl2iH5NYXAZuXgljLFFGzPsVmw5
 C4O8jy3PAOvBZu+Zq5SPbehHOIzEbm3hqOoDi1xj/WDFT201dWP36yQIz
 Er5GTAcPfTE8sY1xD+8jF3+lLTvaQRp2Of53IpbZIJXTjttlzPZorv0Hj A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10682"; a="410101367"
X-IronPort-AV: E=Sophos;i="5.99,204,1677571200"; d="scan'208";a="410101367"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2023 06:17:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10682"; a="802112565"
X-IronPort-AV: E=Sophos;i="5.99,204,1677571200"; d="scan'208";a="802112565"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga002.fm.intel.com with SMTP; 17 Apr 2023 06:17:42 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 17 Apr 2023 16:17:41 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 17 Apr 2023 16:17:28 +0300
Message-Id: <20230417131728.7705-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230417131728.7705-1-ville.syrjala@linux.intel.com>
References: <20230417131728.7705-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 4/4] drm/i915: Reuse
 <platform>_hotplug_mask() in .hpd_detection_setup()
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

v2: Deal with mtp

Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com>a #v1
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_irq.c | 65 ++++++++++++---------------------
 1 file changed, 24 insertions(+), 41 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 3505fafcfb7b..4345931c6596 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -83,6 +83,7 @@ static inline void pmu_irq_stats(struct drm_i915_private *i915,
 
 typedef bool (*long_pulse_detect_func)(enum hpd_pin pin, u32 val);
 typedef u32 (*hotplug_enables_func)(struct intel_encoder *encoder);
+typedef u32 (*hotplug_mask_func)(enum hpd_pin pin);
 
 static const u32 hpd_ilk[HPD_NUM_PINS] = {
 	[HPD_PORT_A] = DE_DP_A_HOTPLUG,
@@ -899,6 +900,18 @@ static u32 intel_hpd_hotplug_irqs(struct drm_i915_private *dev_priv,
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
@@ -2981,10 +2994,7 @@ static void ibx_hpd_detection_setup(struct drm_i915_private *dev_priv)
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
 
@@ -3050,10 +3060,7 @@ static u32 icp_tc_hotplug_enables(struct intel_encoder *encoder)
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
 
@@ -3069,12 +3076,7 @@ static void icp_ddi_hpd_enable_detection(struct intel_encoder *encoder)
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
 
@@ -3155,12 +3157,7 @@ static void dg1_hpd_irq_setup(struct drm_i915_private *dev_priv)
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
 
@@ -3176,12 +3173,7 @@ static void gen11_tc_hpd_enable_detection(struct intel_encoder *encoder)
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
 
@@ -3260,8 +3252,7 @@ static u32 mtp_tc_hotplug_enables(struct intel_encoder *encoder)
 static void mtp_ddi_hpd_detection_setup(struct drm_i915_private *i915)
 {
 	intel_de_rmw(i915, SHOTPLUG_CTL_DDI,
-		     mtp_ddi_hotplug_mask(HPD_PORT_A) |
-		     mtp_ddi_hotplug_mask(HPD_PORT_B),
+		     intel_hpd_hotplug_mask(i915, mtp_ddi_hotplug_mask),
 		     intel_hpd_hotplug_enables(i915, mtp_ddi_hotplug_enables));
 }
 
@@ -3277,10 +3268,7 @@ static void mtp_ddi_hpd_enable_detection(struct intel_encoder *encoder)
 static void mtp_tc_hpd_detection_setup(struct drm_i915_private *i915)
 {
 	intel_de_rmw(i915, SHOTPLUG_CTL_TC,
-		     mtp_tc_hotplug_mask(HPD_PORT_TC1) |
-		     mtp_tc_hotplug_mask(HPD_PORT_TC2) |
-		     mtp_tc_hotplug_mask(HPD_PORT_TC3) |
-		     mtp_tc_hotplug_mask(HPD_PORT_TC4),
+		     intel_hpd_hotplug_mask(i915, mtp_tc_hotplug_mask),
 		     intel_hpd_hotplug_enables(i915, mtp_tc_hotplug_enables));
 }
 
@@ -3441,14 +3429,11 @@ static void spt_hpd_detection_setup(struct drm_i915_private *dev_priv)
 
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
 
@@ -3517,7 +3502,7 @@ static void ilk_hpd_detection_setup(struct drm_i915_private *dev_priv)
 	 * The pulse duration bits are reserved on HSW+.
 	 */
 	intel_uncore_rmw(&dev_priv->uncore, DIGITAL_PORT_HOTPLUG_CNTRL,
-			 ilk_hotplug_mask(HPD_PORT_A),
+			 intel_hpd_hotplug_mask(dev_priv, ilk_hotplug_mask),
 			 intel_hpd_hotplug_enables(dev_priv, ilk_hotplug_enables));
 }
 
@@ -3591,9 +3576,7 @@ static u32 bxt_hotplug_enables(struct intel_encoder *encoder)
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

