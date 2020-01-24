Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A4631485FA
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2020 14:25:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD32D72A70;
	Fri, 24 Jan 2020 13:25:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E074C72A70
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jan 2020 13:25:26 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 05:25:26 -0800
X-IronPort-AV: E=Sophos;i="5.70,357,1574150400"; d="scan'208";a="245707215"
Received: from omarkovx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.37.60])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 05:25:25 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Jan 2020 15:25:27 +0200
Message-Id: <d66c0ea3abbed1ddb575e37da74b823b5085469a.1579871655.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1579871655.git.jani.nikula@intel.com>
References: <cover.1579871655.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [RFC 06/33] drm/i915/crt: use intel_de_*() functions
 for register access
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The implicit "dev_priv" local variable use has been a long-standing pain
point in the register access macros I915_READ(), I915_WRITE(),
POSTING_READ(), I915_READ_FW(), and I915_WRITE_FW().

Replace them with the corresponding new display engine register
accessors intel_de_read(), intel_de_write(), intel_de_posting_read(),
intel_de_read_fw(), and intel_de_write_fw().

No functional changes.

Generated using the following semantic patch:

@@
expression REG, OFFSET;
@@
- I915_READ(REG)
+ intel_de_read(dev_priv, REG)

@@
expression REG, OFFSET;
@@
- POSTING_READ(REG)
+ intel_de_posting_read(dev_priv, REG)

@@
expression REG, OFFSET;
@@
- I915_WRITE(REG, OFFSET)
+ intel_de_write(dev_priv, REG, OFFSET)

@@
expression REG;
@@
- I915_READ_FW(REG)
+ intel_de_read_fw(dev_priv, REG)

@@
expression REG, OFFSET;
@@
- I915_WRITE_FW(REG, OFFSET)
+ intel_de_write_fw(dev_priv, REG, OFFSET)

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_crt.c | 51 ++++++++++++------------
 1 file changed, 26 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index f976b800b245..d250ddde0296 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -75,7 +75,7 @@ bool intel_crt_port_enabled(struct drm_i915_private *dev_priv,
 {
 	u32 val;
 
-	val = I915_READ(adpa_reg);
+	val = intel_de_read(dev_priv, adpa_reg);
 
 	/* asserts want to know the pipe even if the port is disabled */
 	if (HAS_PCH_CPT(dev_priv))
@@ -112,7 +112,7 @@ static unsigned int intel_crt_get_flags(struct intel_encoder *encoder)
 	struct intel_crt *crt = intel_encoder_to_crt(encoder);
 	u32 tmp, flags = 0;
 
-	tmp = I915_READ(crt->adpa_reg);
+	tmp = intel_de_read(dev_priv, crt->adpa_reg);
 
 	if (tmp & ADPA_HSYNC_ACTIVE_HIGH)
 		flags |= DRM_MODE_FLAG_PHSYNC;
@@ -184,7 +184,7 @@ static void intel_crt_set_dpms(struct intel_encoder *encoder,
 		adpa |= ADPA_PIPE_SEL(crtc->pipe);
 
 	if (!HAS_PCH_SPLIT(dev_priv))
-		I915_WRITE(BCLRPAT(crtc->pipe), 0);
+		intel_de_write(dev_priv, BCLRPAT(crtc->pipe), 0);
 
 	switch (mode) {
 	case DRM_MODE_DPMS_ON:
@@ -201,7 +201,7 @@ static void intel_crt_set_dpms(struct intel_encoder *encoder,
 		break;
 	}
 
-	I915_WRITE(crt->adpa_reg, adpa);
+	intel_de_write(dev_priv, crt->adpa_reg, adpa);
 }
 
 static void intel_disable_crt(struct intel_encoder *encoder,
@@ -442,14 +442,14 @@ static bool ilk_crt_detect_hotplug(struct drm_connector *connector)
 
 		crt->force_hotplug_required = false;
 
-		save_adpa = adpa = I915_READ(crt->adpa_reg);
+		save_adpa = adpa = intel_de_read(dev_priv, crt->adpa_reg);
 		DRM_DEBUG_KMS("trigger hotplug detect cycle: adpa=0x%x\n", adpa);
 
 		adpa |= ADPA_CRT_HOTPLUG_FORCE_TRIGGER;
 		if (turn_off_dac)
 			adpa &= ~ADPA_DAC_ENABLE;
 
-		I915_WRITE(crt->adpa_reg, adpa);
+		intel_de_write(dev_priv, crt->adpa_reg, adpa);
 
 		if (intel_de_wait_for_clear(dev_priv,
 					    crt->adpa_reg,
@@ -458,13 +458,13 @@ static bool ilk_crt_detect_hotplug(struct drm_connector *connector)
 			DRM_DEBUG_KMS("timed out waiting for FORCE_TRIGGER");
 
 		if (turn_off_dac) {
-			I915_WRITE(crt->adpa_reg, save_adpa);
-			POSTING_READ(crt->adpa_reg);
+			intel_de_write(dev_priv, crt->adpa_reg, save_adpa);
+			intel_de_posting_read(dev_priv, crt->adpa_reg);
 		}
 	}
 
 	/* Check the status to see if both blue and green are on now */
-	adpa = I915_READ(crt->adpa_reg);
+	adpa = intel_de_read(dev_priv, crt->adpa_reg);
 	if ((adpa & ADPA_CRT_HOTPLUG_MONITOR_MASK) != 0)
 		ret = true;
 	else
@@ -498,21 +498,21 @@ static bool valleyview_crt_detect_hotplug(struct drm_connector *connector)
 	 */
 	reenable_hpd = intel_hpd_disable(dev_priv, crt->base.hpd_pin);
 
-	save_adpa = adpa = I915_READ(crt->adpa_reg);
+	save_adpa = adpa = intel_de_read(dev_priv, crt->adpa_reg);
 	DRM_DEBUG_KMS("trigger hotplug detect cycle: adpa=0x%x\n", adpa);
 
 	adpa |= ADPA_CRT_HOTPLUG_FORCE_TRIGGER;
 
-	I915_WRITE(crt->adpa_reg, adpa);
+	intel_de_write(dev_priv, crt->adpa_reg, adpa);
 
 	if (intel_de_wait_for_clear(dev_priv, crt->adpa_reg,
 				    ADPA_CRT_HOTPLUG_FORCE_TRIGGER, 1000)) {
 		DRM_DEBUG_KMS("timed out waiting for FORCE_TRIGGER");
-		I915_WRITE(crt->adpa_reg, save_adpa);
+		intel_de_write(dev_priv, crt->adpa_reg, save_adpa);
 	}
 
 	/* Check the status to see if both blue and green are on now */
-	adpa = I915_READ(crt->adpa_reg);
+	adpa = intel_de_read(dev_priv, crt->adpa_reg);
 	if ((adpa & ADPA_CRT_HOTPLUG_MONITOR_MASK) != 0)
 		ret = true;
 	else
@@ -561,12 +561,12 @@ static bool intel_crt_detect_hotplug(struct drm_connector *connector)
 			DRM_DEBUG_KMS("timed out waiting for FORCE_DETECT to go off");
 	}
 
-	stat = I915_READ(PORT_HOTPLUG_STAT);
+	stat = intel_de_read(dev_priv, PORT_HOTPLUG_STAT);
 	if ((stat & CRT_HOTPLUG_MONITOR_MASK) != CRT_HOTPLUG_MONITOR_NONE)
 		ret = true;
 
 	/* clear the interrupt we just generated, if any */
-	I915_WRITE(PORT_HOTPLUG_STAT, CRT_HOTPLUG_INT_STATUS);
+	intel_de_write(dev_priv, PORT_HOTPLUG_STAT, CRT_HOTPLUG_INT_STATUS);
 
 	i915_hotplug_interrupt_update(dev_priv, CRT_HOTPLUG_FORCE_DETECT, 0);
 
@@ -706,7 +706,7 @@ intel_crt_load_detect(struct intel_crt *crt, u32 pipe)
 		* Yes, this will flicker
 		*/
 		if (vblank_start <= vactive && vblank_end >= vtotal) {
-			u32 vsync = I915_READ(vsync_reg);
+			u32 vsync = intel_de_read(dev_priv, vsync_reg);
 			u32 vsync_start = (vsync & 0xffff) + 1;
 
 			vblank_start = vsync_start;
@@ -918,11 +918,11 @@ void intel_crt_reset(struct drm_encoder *encoder)
 	if (INTEL_GEN(dev_priv) >= 5) {
 		u32 adpa;
 
-		adpa = I915_READ(crt->adpa_reg);
+		adpa = intel_de_read(dev_priv, crt->adpa_reg);
 		adpa &= ~ADPA_CRT_HOTPLUG_MASK;
 		adpa |= ADPA_HOTPLUG_BITS;
-		I915_WRITE(crt->adpa_reg, adpa);
-		POSTING_READ(crt->adpa_reg);
+		intel_de_write(dev_priv, crt->adpa_reg, adpa);
+		intel_de_posting_read(dev_priv, crt->adpa_reg);
 
 		DRM_DEBUG_KMS("crt adpa set to 0x%x\n", adpa);
 		crt->force_hotplug_required = true;
@@ -969,7 +969,7 @@ void intel_crt_init(struct drm_i915_private *dev_priv)
 	else
 		adpa_reg = ADPA;
 
-	adpa = I915_READ(adpa_reg);
+	adpa = intel_de_read(dev_priv, adpa_reg);
 	if ((adpa & ADPA_DAC_ENABLE) == 0) {
 		/*
 		 * On some machines (some IVB at least) CRT can be
@@ -979,11 +979,11 @@ void intel_crt_init(struct drm_i915_private *dev_priv)
 		 * take. So the only way to tell is attempt to enable
 		 * it and see what happens.
 		 */
-		I915_WRITE(adpa_reg, adpa | ADPA_DAC_ENABLE |
-			   ADPA_HSYNC_CNTL_DISABLE | ADPA_VSYNC_CNTL_DISABLE);
-		if ((I915_READ(adpa_reg) & ADPA_DAC_ENABLE) == 0)
+		intel_de_write(dev_priv, adpa_reg,
+			       adpa | ADPA_DAC_ENABLE | ADPA_HSYNC_CNTL_DISABLE | ADPA_VSYNC_CNTL_DISABLE);
+		if ((intel_de_read(dev_priv, adpa_reg) & ADPA_DAC_ENABLE) == 0)
 			return;
-		I915_WRITE(adpa_reg, adpa);
+		intel_de_write(dev_priv, adpa_reg, adpa);
 	}
 
 	crt = kzalloc(sizeof(struct intel_crt), GFP_KERNEL);
@@ -1074,7 +1074,8 @@ void intel_crt_init(struct drm_i915_private *dev_priv)
 		u32 fdi_config = FDI_RX_POLARITY_REVERSED_LPT |
 				 FDI_RX_LINK_REVERSAL_OVERRIDE;
 
-		dev_priv->fdi_rx_config = I915_READ(FDI_RX_CTL(PIPE_A)) & fdi_config;
+		dev_priv->fdi_rx_config = intel_de_read(dev_priv,
+							FDI_RX_CTL(PIPE_A)) & fdi_config;
 	}
 
 	intel_crt_reset(&crt->base.base);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
