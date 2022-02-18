Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FE034BBFD4
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Feb 2022 19:48:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C3B410E7D9;
	Fri, 18 Feb 2022 18:47:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 757CD10E7EA;
 Fri, 18 Feb 2022 18:47:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645210070; x=1676746070;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=avSnmV3TzE2UKZCn7duZQYHZjAWODut4c320p8f2VnY=;
 b=lO5GVGceX/EK13xw65QfKokOUUFpA8cHVK5E+fthdeVAX6ZjJq3vK8Nh
 pmpRg23QVMcyObfanxlLneBrqckXpOWwKhUUiuUhiOZwRi7FON+3l1M/x
 ComXW7JfVcOrpa4GsAcBrAFAHTN5mjQgW0EbVbxSxHx/x1WjTi+QLG4ZO
 S7k3wmEk9YhdEYwVtu+qiljdanFnPu2ma3lXmrMiLT1IculhJ6jWWQ3di
 ZLSqB1fDwCuEuUCD1jeYntt3b84sdVjfxfXCRTqWKM3lx5LS4j93ZJP1b
 0an08dksNCMC18IQTVTylFi9mMOIfFaQX9IN3HS1kku6fM1lN/obfl9M1 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10262"; a="238592961"
X-IronPort-AV: E=Sophos;i="5.88,379,1635231600"; d="scan'208";a="238592961"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2022 10:47:50 -0800
X-IronPort-AV: E=Sophos;i="5.88,379,1635231600"; d="scan'208";a="489642119"
Received: from ramaling-i9x.iind.intel.com ([10.203.144.108])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2022 10:47:47 -0800
From: Ramalingam C <ramalingam.c@intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>
Date: Sat, 19 Feb 2022 00:17:41 +0530
Message-Id: <20220218184752.7524-5-ramalingam.c@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20220218184752.7524-1-ramalingam.c@intel.com>
References: <20220218184752.7524-1-ramalingam.c@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 04/15] drm/i915/dg2: Enable 5th port
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
Cc: lucas.demarchi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Matt Roper <matthew.d.roper@intel.com>

DG2 supports a 5th display output which the hardware refers to as "TC1,"
even though it isn't a Type-C output.  This behaves similarly to the TC1
on past platforms with just a couple minor differences:

 * DG2's TC1 bit in SDEISR is at bit 25 rather than 24 as it is on
   ICP/TGP/ADP.
 * DG2 doesn't need the hpd inversion setting that we had to use on DG1

v2:
  intel_ddi_init(dev_priv, PORT_TC1); [Matt]

Cc: Swathi Dhanavanthri <swathi.dhanavanthri@intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: José Roberto de Souza <jose.souza@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Ramalingam C <ramalingam.c@intel.com>
Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |  1 +
 drivers/gpu/drm/i915/display/intel_gmbus.c   | 16 ++++++++++++++--
 drivers/gpu/drm/i915/i915_irq.c              |  5 ++++-
 drivers/gpu/drm/i915/i915_reg.h              |  1 +
 4 files changed, 20 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index aaf2aee4da35..69e15ad2c253 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -8757,6 +8757,7 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
 		intel_ddi_init(dev_priv, PORT_B);
 		intel_ddi_init(dev_priv, PORT_C);
 		intel_ddi_init(dev_priv, PORT_D_XELPD);
+		intel_ddi_init(dev_priv, PORT_TC1);
 	} else if (IS_ALDERLAKE_P(dev_priv)) {
 		intel_ddi_init(dev_priv, PORT_A);
 		intel_ddi_init(dev_priv, PORT_B);
diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm/i915/display/intel_gmbus.c
index 6ce8c10fe975..2fad03250661 100644
--- a/drivers/gpu/drm/i915/display/intel_gmbus.c
+++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
@@ -98,11 +98,21 @@ static const struct gmbus_pin gmbus_pins_dg1[] = {
 	[GMBUS_PIN_4_CNP] = { "dpd", GPIOE },
 };
 
+static const struct gmbus_pin gmbus_pins_dg2[] = {
+	[GMBUS_PIN_1_BXT] = { "dpa", GPIOB },
+	[GMBUS_PIN_2_BXT] = { "dpb", GPIOC },
+	[GMBUS_PIN_3_BXT] = { "dpc", GPIOD },
+	[GMBUS_PIN_4_CNP] = { "dpd", GPIOE },
+	[GMBUS_PIN_9_TC1_ICP] = { "tc1", GPIOJ },
+};
+
 /* pin is expected to be valid */
 static const struct gmbus_pin *get_gmbus_pin(struct drm_i915_private *dev_priv,
 					     unsigned int pin)
 {
-	if (INTEL_PCH_TYPE(dev_priv) >= PCH_DG1)
+	if (INTEL_PCH_TYPE(dev_priv) >= PCH_DG2)
+		return &gmbus_pins_dg2[pin];
+	else if (INTEL_PCH_TYPE(dev_priv) >= PCH_DG1)
 		return &gmbus_pins_dg1[pin];
 	else if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP)
 		return &gmbus_pins_icp[pin];
@@ -123,7 +133,9 @@ bool intel_gmbus_is_valid_pin(struct drm_i915_private *dev_priv,
 {
 	unsigned int size;
 
-	if (INTEL_PCH_TYPE(dev_priv) >= PCH_DG1)
+	if (INTEL_PCH_TYPE(dev_priv) >= PCH_DG2)
+		size = ARRAY_SIZE(gmbus_pins_dg2);
+	else if (INTEL_PCH_TYPE(dev_priv) >= PCH_DG1)
 		size = ARRAY_SIZE(gmbus_pins_dg1);
 	else if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP)
 		size = ARRAY_SIZE(gmbus_pins_icp);
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index fdd568ba4a16..4d81063b128c 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -179,6 +179,7 @@ static const u32 hpd_sde_dg1[HPD_NUM_PINS] = {
 	[HPD_PORT_B] = SDE_DDI_HOTPLUG_ICP(HPD_PORT_B),
 	[HPD_PORT_C] = SDE_DDI_HOTPLUG_ICP(HPD_PORT_C),
 	[HPD_PORT_D] = SDE_DDI_HOTPLUG_ICP(HPD_PORT_D),
+	[HPD_PORT_TC1] = SDE_TC_HOTPLUG_DG2(HPD_PORT_TC1),
 };
 
 static void intel_hpd_init_pins(struct drm_i915_private *dev_priv)
@@ -4424,7 +4425,9 @@ void intel_irq_init(struct drm_i915_private *dev_priv)
 		if (I915_HAS_HOTPLUG(dev_priv))
 			dev_priv->hotplug_funcs = &i915_hpd_funcs;
 	} else {
-		if (HAS_PCH_DG1(dev_priv))
+		if (HAS_PCH_DG2(dev_priv))
+			dev_priv->hotplug_funcs = &icp_hpd_funcs;
+		else if (HAS_PCH_DG1(dev_priv))
 			dev_priv->hotplug_funcs = &dg1_hpd_funcs;
 		else if (DISPLAY_VER(dev_priv) >= 11)
 			dev_priv->hotplug_funcs = &gen11_hpd_funcs;
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index cc13918fe246..986fb30da9ab 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -6059,6 +6059,7 @@
 /* south display engine interrupt: ICP/TGP */
 #define SDE_GMBUS_ICP			(1 << 23)
 #define SDE_TC_HOTPLUG_ICP(hpd_pin)	REG_BIT(24 + _HPD_PIN_TC(hpd_pin))
+#define SDE_TC_HOTPLUG_DG2(hpd_pin)	REG_BIT(25 + _HPD_PIN_TC(hpd_pin)) /* sigh */
 #define SDE_DDI_HOTPLUG_ICP(hpd_pin)	REG_BIT(16 + _HPD_PIN_DDI(hpd_pin))
 #define SDE_DDI_HOTPLUG_MASK_ICP	(SDE_DDI_HOTPLUG_ICP(HPD_PORT_D) | \
 					 SDE_DDI_HOTPLUG_ICP(HPD_PORT_C) | \
-- 
2.20.1

