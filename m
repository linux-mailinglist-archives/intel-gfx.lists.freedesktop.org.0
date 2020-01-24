Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C2D7148603
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2020 14:26:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9704F72A7F;
	Fri, 24 Jan 2020 13:26:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2262972A7F
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jan 2020 13:26:07 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 05:26:06 -0800
X-IronPort-AV: E=Sophos;i="5.70,357,1574150400"; d="scan'208";a="221022998"
Received: from omarkovx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.37.60])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 05:26:05 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Jan 2020 15:25:36 +0200
Message-Id: <4898cb70cc12f54a3f5298c117ffc63b24b47d24.1579871655.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1579871655.git.jani.nikula@intel.com>
References: <cover.1579871655.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [RFC 15/33] drm/i915/dvo: use intel_de_*() functions
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
 drivers/gpu/drm/i915/display/intel_dvo.c | 34 ++++++++++++------------
 1 file changed, 17 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c b/drivers/gpu/drm/i915/display/intel_dvo.c
index 86a337c9d85d..6ab84be5409d 100644
--- a/drivers/gpu/drm/i915/display/intel_dvo.c
+++ b/drivers/gpu/drm/i915/display/intel_dvo.c
@@ -137,7 +137,7 @@ static bool intel_dvo_connector_get_hw_state(struct intel_connector *connector)
 	struct intel_dvo *intel_dvo = intel_attached_dvo(connector);
 	u32 tmp;
 
-	tmp = I915_READ(intel_dvo->dev.dvo_reg);
+	tmp = intel_de_read(dev_priv, intel_dvo->dev.dvo_reg);
 
 	if (!(tmp & DVO_ENABLE))
 		return false;
@@ -152,7 +152,7 @@ static bool intel_dvo_get_hw_state(struct intel_encoder *encoder,
 	struct intel_dvo *intel_dvo = enc_to_dvo(encoder);
 	u32 tmp;
 
-	tmp = I915_READ(intel_dvo->dev.dvo_reg);
+	tmp = intel_de_read(dev_priv, intel_dvo->dev.dvo_reg);
 
 	*pipe = (tmp & DVO_PIPE_SEL_MASK) >> DVO_PIPE_SEL_SHIFT;
 
@@ -168,7 +168,7 @@ static void intel_dvo_get_config(struct intel_encoder *encoder,
 
 	pipe_config->output_types |= BIT(INTEL_OUTPUT_DVO);
 
-	tmp = I915_READ(intel_dvo->dev.dvo_reg);
+	tmp = intel_de_read(dev_priv, intel_dvo->dev.dvo_reg);
 	if (tmp & DVO_HSYNC_ACTIVE_HIGH)
 		flags |= DRM_MODE_FLAG_PHSYNC;
 	else
@@ -190,11 +190,11 @@ static void intel_disable_dvo(struct intel_encoder *encoder,
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_dvo *intel_dvo = enc_to_dvo(encoder);
 	i915_reg_t dvo_reg = intel_dvo->dev.dvo_reg;
-	u32 temp = I915_READ(dvo_reg);
+	u32 temp = intel_de_read(dev_priv, dvo_reg);
 
 	intel_dvo->dev.dev_ops->dpms(&intel_dvo->dev, false);
-	I915_WRITE(dvo_reg, temp & ~DVO_ENABLE);
-	I915_READ(dvo_reg);
+	intel_de_write(dev_priv, dvo_reg, temp & ~DVO_ENABLE);
+	intel_de_read(dev_priv, dvo_reg);
 }
 
 static void intel_enable_dvo(struct intel_encoder *encoder,
@@ -204,14 +204,14 @@ static void intel_enable_dvo(struct intel_encoder *encoder,
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_dvo *intel_dvo = enc_to_dvo(encoder);
 	i915_reg_t dvo_reg = intel_dvo->dev.dvo_reg;
-	u32 temp = I915_READ(dvo_reg);
+	u32 temp = intel_de_read(dev_priv, dvo_reg);
 
 	intel_dvo->dev.dev_ops->mode_set(&intel_dvo->dev,
 					 &pipe_config->hw.mode,
 					 &pipe_config->hw.adjusted_mode);
 
-	I915_WRITE(dvo_reg, temp | DVO_ENABLE);
-	I915_READ(dvo_reg);
+	intel_de_write(dev_priv, dvo_reg, temp | DVO_ENABLE);
+	intel_de_read(dev_priv, dvo_reg);
 
 	intel_dvo->dev.dev_ops->dpms(&intel_dvo->dev, true);
 }
@@ -286,7 +286,7 @@ static void intel_dvo_pre_enable(struct intel_encoder *encoder,
 	i915_reg_t dvo_srcdim_reg = intel_dvo->dev.dvo_srcdim_reg;
 
 	/* Save the data order, since I don't know what it should be set to. */
-	dvo_val = I915_READ(dvo_reg) &
+	dvo_val = intel_de_read(dev_priv, dvo_reg) &
 		  (DVO_PRESERVE_MASK | DVO_DATA_ORDER_GBRG);
 	dvo_val |= DVO_DATA_ORDER_FP | DVO_BORDER_ENABLE |
 		   DVO_BLANK_ACTIVE_HIGH;
@@ -301,11 +301,10 @@ static void intel_dvo_pre_enable(struct intel_encoder *encoder,
 	/*I915_WRITE(DVOB_SRCDIM,
 	  (adjusted_mode->crtc_hdisplay << DVO_SRCDIM_HORIZONTAL_SHIFT) |
 	  (adjusted_mode->crtc_vdisplay << DVO_SRCDIM_VERTICAL_SHIFT));*/
-	I915_WRITE(dvo_srcdim_reg,
-		   (adjusted_mode->crtc_hdisplay << DVO_SRCDIM_HORIZONTAL_SHIFT) |
-		   (adjusted_mode->crtc_vdisplay << DVO_SRCDIM_VERTICAL_SHIFT));
+	intel_de_write(dev_priv, dvo_srcdim_reg,
+		       (adjusted_mode->crtc_hdisplay << DVO_SRCDIM_HORIZONTAL_SHIFT) | (adjusted_mode->crtc_vdisplay << DVO_SRCDIM_VERTICAL_SHIFT));
 	/*I915_WRITE(DVOB, dvo_val);*/
-	I915_WRITE(dvo_reg, dvo_val);
+	intel_de_write(dev_priv, dvo_reg, dvo_val);
 }
 
 static enum drm_connector_status
@@ -481,15 +480,16 @@ void intel_dvo_init(struct drm_i915_private *dev_priv)
 		 * initialize the device.
 		 */
 		for_each_pipe(dev_priv, pipe) {
-			dpll[pipe] = I915_READ(DPLL(pipe));
-			I915_WRITE(DPLL(pipe), dpll[pipe] | DPLL_DVO_2X_MODE);
+			dpll[pipe] = intel_de_read(dev_priv, DPLL(pipe));
+			intel_de_write(dev_priv, DPLL(pipe),
+				       dpll[pipe] | DPLL_DVO_2X_MODE);
 		}
 
 		dvoinit = dvo->dev_ops->init(&intel_dvo->dev, i2c);
 
 		/* restore the DVO 2x clock state to original */
 		for_each_pipe(dev_priv, pipe) {
-			I915_WRITE(DPLL(pipe), dpll[pipe]);
+			intel_de_write(dev_priv, DPLL(pipe), dpll[pipe]);
 		}
 
 		intel_gmbus_force_bit(i2c, false);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
