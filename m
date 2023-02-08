Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DF00068E5A3
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Feb 2023 02:55:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 53B2B10E68A;
	Wed,  8 Feb 2023 01:55:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A95710E67F
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Feb 2023 01:55:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675821315; x=1707357315;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=PlpGQWEac0PbVbDHsm+8WYEEc3tufpKRiXefst+sv5k=;
 b=gRmQwGrmmczk42zwiPrqk/7P/TuMfUTfhNpiIOwxN6OcHA+xzqJ9RWbM
 E0xtb0ZKHF2R2WzgnVhPP9lHe7ZtNnBoI0GAzwKzWIyl2H6/t7coirdu3
 hED1Nb0xwIpfvkrOgwZAVG11f50obyLGgDxEV8XAbfMzMSuhaICUiMRJ1
 0gSb5sTfEIP7/LxmhxOOHc8b4yuB3g5tQlpc5gNijTQAYBfac7zyLvq7N
 eAHGOdJ0cwy509g3YffqM4rOXaWbHRDGvqPzW0fCFylWikzD5oTgQY6LA
 4r59WegiAE30Lu5pN35/QRi6Q+b68TQWGsnqax4KAyW2Nr7EMBIETCHVN w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="330974337"
X-IronPort-AV: E=Sophos;i="5.97,279,1669104000"; d="scan'208";a="330974337"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2023 17:55:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="644672703"
X-IronPort-AV: E=Sophos;i="5.97,279,1669104000"; d="scan'208";a="644672703"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by orsmga006.jf.intel.com with SMTP; 07 Feb 2023 17:55:12 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 08 Feb 2023 03:55:11 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 Feb 2023 03:54:59 +0200
Message-Id: <20230208015508.24824-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230208015508.24824-1-ville.syrjala@linux.intel.com>
References: <20230208015508.24824-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 01/10] drm/i915: Pass the whole encoder to
 hotplug_enables()
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

bxt_hotplug_enables() needs to dig out not only the
hpd_pin bit also the VBT child device info, so let's just
pass in the whole encoder to avoid having to look things
up multiple times.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_irq.c | 54 +++++++++++++++------------------
 1 file changed, 24 insertions(+), 30 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 240d5e198904..ae0a3b07281a 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -81,8 +81,7 @@ static inline void pmu_irq_stats(struct drm_i915_private *i915,
 }
 
 typedef bool (*long_pulse_detect_func)(enum hpd_pin pin, u32 val);
-typedef u32 (*hotplug_enables_func)(struct drm_i915_private *i915,
-				    enum hpd_pin pin);
+typedef u32 (*hotplug_enables_func)(struct intel_encoder *encoder);
 
 static const u32 hpd_ilk[HPD_NUM_PINS] = {
 	[HPD_PORT_A] = DE_DP_A_HOTPLUG,
@@ -884,7 +883,7 @@ static u32 intel_hpd_hotplug_enables(struct drm_i915_private *i915,
 	u32 hotplug = 0;
 
 	for_each_intel_encoder(&i915->drm, encoder)
-		hotplug |= hotplug_enables(i915, encoder->hpd_pin);
+		hotplug |= hotplug_enables(encoder);
 
 	return hotplug;
 }
@@ -2835,10 +2834,11 @@ static void cherryview_irq_reset(struct drm_i915_private *dev_priv)
 	spin_unlock_irq(&dev_priv->irq_lock);
 }
 
-static u32 ibx_hotplug_enables(struct drm_i915_private *i915,
-			       enum hpd_pin pin)
+static u32 ibx_hotplug_enables(struct intel_encoder *encoder)
 {
-	switch (pin) {
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+
+	switch (encoder->hpd_pin) {
 	case HPD_PORT_A:
 		/*
 		 * When CPU and PCH are on the same package, port A
@@ -2890,31 +2890,29 @@ static void ibx_hpd_irq_setup(struct drm_i915_private *dev_priv)
 	ibx_hpd_detection_setup(dev_priv);
 }
 
-static u32 icp_ddi_hotplug_enables(struct drm_i915_private *i915,
-				   enum hpd_pin pin)
+static u32 icp_ddi_hotplug_enables(struct intel_encoder *encoder)
 {
-	switch (pin) {
+	switch (encoder->hpd_pin) {
 	case HPD_PORT_A:
 	case HPD_PORT_B:
 	case HPD_PORT_C:
 	case HPD_PORT_D:
-		return SHOTPLUG_CTL_DDI_HPD_ENABLE(pin);
+		return SHOTPLUG_CTL_DDI_HPD_ENABLE(encoder->hpd_pin);
 	default:
 		return 0;
 	}
 }
 
-static u32 icp_tc_hotplug_enables(struct drm_i915_private *i915,
-				  enum hpd_pin pin)
+static u32 icp_tc_hotplug_enables(struct intel_encoder *encoder)
 {
-	switch (pin) {
+	switch (encoder->hpd_pin) {
 	case HPD_PORT_TC1:
 	case HPD_PORT_TC2:
 	case HPD_PORT_TC3:
 	case HPD_PORT_TC4:
 	case HPD_PORT_TC5:
 	case HPD_PORT_TC6:
-		return ICP_TC_HPD_ENABLE(pin);
+		return ICP_TC_HPD_ENABLE(encoder->hpd_pin);
 	default:
 		return 0;
 	}
@@ -2958,17 +2956,16 @@ static void icp_hpd_irq_setup(struct drm_i915_private *dev_priv)
 	icp_tc_hpd_detection_setup(dev_priv);
 }
 
-static u32 gen11_hotplug_enables(struct drm_i915_private *i915,
-				 enum hpd_pin pin)
+static u32 gen11_hotplug_enables(struct intel_encoder *encoder)
 {
-	switch (pin) {
+	switch (encoder->hpd_pin) {
 	case HPD_PORT_TC1:
 	case HPD_PORT_TC2:
 	case HPD_PORT_TC3:
 	case HPD_PORT_TC4:
 	case HPD_PORT_TC5:
 	case HPD_PORT_TC6:
-		return GEN11_HOTPLUG_CTL_ENABLE(pin);
+		return GEN11_HOTPLUG_CTL_ENABLE(encoder->hpd_pin);
 	default:
 		return 0;
 	}
@@ -3031,10 +3028,9 @@ static void gen11_hpd_irq_setup(struct drm_i915_private *dev_priv)
 		icp_hpd_irq_setup(dev_priv);
 }
 
-static u32 spt_hotplug_enables(struct drm_i915_private *i915,
-			       enum hpd_pin pin)
+static u32 spt_hotplug_enables(struct intel_encoder *encoder)
 {
-	switch (pin) {
+	switch (encoder->hpd_pin) {
 	case HPD_PORT_A:
 		return PORTA_HOTPLUG_ENABLE;
 	case HPD_PORT_B:
@@ -3048,10 +3044,9 @@ static u32 spt_hotplug_enables(struct drm_i915_private *i915,
 	}
 }
 
-static u32 spt_hotplug2_enables(struct drm_i915_private *i915,
-				enum hpd_pin pin)
+static u32 spt_hotplug2_enables(struct intel_encoder *encoder)
 {
-	switch (pin) {
+	switch (encoder->hpd_pin) {
 	case HPD_PORT_E:
 		return PORTE_HOTPLUG_ENABLE;
 	default:
@@ -3094,10 +3089,9 @@ static void spt_hpd_irq_setup(struct drm_i915_private *dev_priv)
 	spt_hpd_detection_setup(dev_priv);
 }
 
-static u32 ilk_hotplug_enables(struct drm_i915_private *i915,
-			       enum hpd_pin pin)
+static u32 ilk_hotplug_enables(struct intel_encoder *encoder)
 {
-	switch (pin) {
+	switch (encoder->hpd_pin) {
 	case HPD_PORT_A:
 		return DIGITAL_PORTA_HOTPLUG_ENABLE |
 			DIGITAL_PORTA_PULSE_DURATION_2ms;
@@ -3135,12 +3129,12 @@ static void ilk_hpd_irq_setup(struct drm_i915_private *dev_priv)
 	ibx_hpd_irq_setup(dev_priv);
 }
 
-static u32 bxt_hotplug_enables(struct drm_i915_private *i915,
-			       enum hpd_pin pin)
+static u32 bxt_hotplug_enables(struct intel_encoder *encoder)
 {
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	u32 hotplug;
 
-	switch (pin) {
+	switch (encoder->hpd_pin) {
 	case HPD_PORT_A:
 		hotplug = PORTA_HOTPLUG_ENABLE;
 		if (intel_bios_is_port_hpd_inverted(i915, PORT_A))
-- 
2.39.1

