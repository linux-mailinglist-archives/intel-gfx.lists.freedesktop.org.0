Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 16B68148612
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2020 14:26:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 787E872A90;
	Fri, 24 Jan 2020 13:26:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D694172A90
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jan 2020 13:26:54 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 05:26:54 -0800
X-IronPort-AV: E=Sophos;i="5.70,357,1574150400"; d="scan'208";a="251285892"
Received: from omarkovx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.37.60])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 05:26:53 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Jan 2020 15:25:48 +0200
Message-Id: <b21dbc3c0f349345619590893c8ab96828c39103.1579871655.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1579871655.git.jani.nikula@intel.com>
References: <cover.1579871655.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [RFC 27/33] drm/i915/sdvo: use intel_de_*() functions
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
 drivers/gpu/drm/i915/display/intel_sdvo.c | 30 +++++++++++------------
 1 file changed, 15 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index 1b37007f48a1..225b6402718e 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -217,23 +217,23 @@ static void intel_sdvo_write_sdvox(struct intel_sdvo *intel_sdvo, u32 val)
 	int i;
 
 	if (HAS_PCH_SPLIT(dev_priv)) {
-		I915_WRITE(intel_sdvo->sdvo_reg, val);
-		POSTING_READ(intel_sdvo->sdvo_reg);
+		intel_de_write(dev_priv, intel_sdvo->sdvo_reg, val);
+		intel_de_posting_read(dev_priv, intel_sdvo->sdvo_reg);
 		/*
 		 * HW workaround, need to write this twice for issue
 		 * that may result in first write getting masked.
 		 */
 		if (HAS_PCH_IBX(dev_priv)) {
-			I915_WRITE(intel_sdvo->sdvo_reg, val);
-			POSTING_READ(intel_sdvo->sdvo_reg);
+			intel_de_write(dev_priv, intel_sdvo->sdvo_reg, val);
+			intel_de_posting_read(dev_priv, intel_sdvo->sdvo_reg);
 		}
 		return;
 	}
 
 	if (intel_sdvo->port == PORT_B)
-		cval = I915_READ(GEN3_SDVOC);
+		cval = intel_de_read(dev_priv, GEN3_SDVOC);
 	else
-		bval = I915_READ(GEN3_SDVOB);
+		bval = intel_de_read(dev_priv, GEN3_SDVOB);
 
 	/*
 	 * Write the registers twice for luck. Sometimes,
@@ -241,11 +241,11 @@ static void intel_sdvo_write_sdvox(struct intel_sdvo *intel_sdvo, u32 val)
 	 * The BIOS does this too. Yay, magic
 	 */
 	for (i = 0; i < 2; i++) {
-		I915_WRITE(GEN3_SDVOB, bval);
-		POSTING_READ(GEN3_SDVOB);
+		intel_de_write(dev_priv, GEN3_SDVOB, bval);
+		intel_de_posting_read(dev_priv, GEN3_SDVOB);
 
-		I915_WRITE(GEN3_SDVOC, cval);
-		POSTING_READ(GEN3_SDVOC);
+		intel_de_write(dev_priv, GEN3_SDVOC, cval);
+		intel_de_posting_read(dev_priv, GEN3_SDVOC);
 	}
 }
 
@@ -1525,7 +1525,7 @@ static void intel_sdvo_pre_enable(struct intel_encoder *intel_encoder,
 		if (INTEL_GEN(dev_priv) < 5)
 			sdvox |= SDVO_BORDER_ENABLE;
 	} else {
-		sdvox = I915_READ(intel_sdvo->sdvo_reg);
+		sdvox = intel_de_read(dev_priv, intel_sdvo->sdvo_reg);
 		if (intel_sdvo->port == PORT_B)
 			sdvox &= SDVOB_PRESERVE_MASK;
 		else
@@ -1571,7 +1571,7 @@ bool intel_sdvo_port_enabled(struct drm_i915_private *dev_priv,
 {
 	u32 val;
 
-	val = I915_READ(sdvo_reg);
+	val = intel_de_read(dev_priv, sdvo_reg);
 
 	/* asserts want to know the pipe even if the port is disabled */
 	if (HAS_PCH_CPT(dev_priv))
@@ -1614,7 +1614,7 @@ static void intel_sdvo_get_config(struct intel_encoder *encoder,
 
 	pipe_config->output_types |= BIT(INTEL_OUTPUT_SDVO);
 
-	sdvox = I915_READ(intel_sdvo->sdvo_reg);
+	sdvox = intel_de_read(dev_priv, intel_sdvo->sdvo_reg);
 
 	ret = intel_sdvo_get_input_timing(intel_sdvo, &dtd);
 	if (!ret) {
@@ -1741,7 +1741,7 @@ static void intel_disable_sdvo(struct intel_encoder *encoder,
 		intel_sdvo_set_encoder_power_state(intel_sdvo,
 						   DRM_MODE_DPMS_OFF);
 
-	temp = I915_READ(intel_sdvo->sdvo_reg);
+	temp = intel_de_read(dev_priv, intel_sdvo->sdvo_reg);
 
 	temp &= ~SDVO_ENABLE;
 	intel_sdvo_write_sdvox(intel_sdvo, temp);
@@ -1798,7 +1798,7 @@ static void intel_enable_sdvo(struct intel_encoder *encoder,
 	int i;
 	bool success;
 
-	temp = I915_READ(intel_sdvo->sdvo_reg);
+	temp = intel_de_read(dev_priv, intel_sdvo->sdvo_reg);
 	temp |= SDVO_ENABLE;
 	intel_sdvo_write_sdvox(intel_sdvo, temp);
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
