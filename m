Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D0D9148610
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2020 14:26:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88EF772A8E;
	Fri, 24 Jan 2020 13:26:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 141E772A8F
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jan 2020 13:26:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 05:26:47 -0800
X-IronPort-AV: E=Sophos;i="5.70,357,1574150400"; d="scan'208";a="428291302"
Received: from omarkovx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.37.60])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 05:26:46 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Jan 2020 15:25:46 +0200
Message-Id: <0af05f6035046a515097da398de8722c0ca23e56.1579871655.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1579871655.git.jani.nikula@intel.com>
References: <cover.1579871655.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [RFC 25/33] drm/i915/pipe_crc: use intel_de_*()
 functions for register access
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
 drivers/gpu/drm/i915/display/intel_pipe_crc.c | 20 +++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_pipe_crc.c b/drivers/gpu/drm/i915/display/intel_pipe_crc.c
index 520408e83681..b83062201212 100644
--- a/drivers/gpu/drm/i915/display/intel_pipe_crc.c
+++ b/drivers/gpu/drm/i915/display/intel_pipe_crc.c
@@ -172,7 +172,7 @@ static int vlv_pipe_crc_ctl_reg(struct drm_i915_private *dev_priv,
 	 *   - DisplayPort scrambling: used for EMI reduction
 	 */
 	if (need_stable_symbols) {
-		u32 tmp = I915_READ(PORT_DFT2_G4X);
+		u32 tmp = intel_de_read(dev_priv, PORT_DFT2_G4X);
 
 		tmp |= DC_BALANCE_RESET_VLV;
 		switch (pipe) {
@@ -188,7 +188,7 @@ static int vlv_pipe_crc_ctl_reg(struct drm_i915_private *dev_priv,
 		default:
 			return -EINVAL;
 		}
-		I915_WRITE(PORT_DFT2_G4X, tmp);
+		intel_de_write(dev_priv, PORT_DFT2_G4X, tmp);
 	}
 
 	return 0;
@@ -237,7 +237,7 @@ static int i9xx_pipe_crc_ctl_reg(struct drm_i915_private *dev_priv,
 static void vlv_undo_pipe_scramble_reset(struct drm_i915_private *dev_priv,
 					 enum pipe pipe)
 {
-	u32 tmp = I915_READ(PORT_DFT2_G4X);
+	u32 tmp = intel_de_read(dev_priv, PORT_DFT2_G4X);
 
 	switch (pipe) {
 	case PIPE_A:
@@ -254,7 +254,7 @@ static void vlv_undo_pipe_scramble_reset(struct drm_i915_private *dev_priv,
 	}
 	if (!(tmp & PIPE_SCRAMBLE_RESET_MASK))
 		tmp &= ~DC_BALANCE_RESET_VLV;
-	I915_WRITE(PORT_DFT2_G4X, tmp);
+	intel_de_write(dev_priv, PORT_DFT2_G4X, tmp);
 }
 
 static int ilk_pipe_crc_ctl_reg(enum intel_pipe_crc_source *source,
@@ -615,8 +615,8 @@ int intel_crtc_set_crc_source(struct drm_crtc *crtc, const char *source_name)
 		goto out;
 
 	pipe_crc->source = source;
-	I915_WRITE(PIPE_CRC_CTL(crtc->index), val);
-	POSTING_READ(PIPE_CRC_CTL(crtc->index));
+	intel_de_write(dev_priv, PIPE_CRC_CTL(crtc->index), val);
+	intel_de_posting_read(dev_priv, PIPE_CRC_CTL(crtc->index));
 
 	if (!source) {
 		if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
@@ -650,8 +650,8 @@ void intel_crtc_enable_pipe_crc(struct intel_crtc *intel_crtc)
 	/* Don't need pipe_crc->lock here, IRQs are not generated. */
 	pipe_crc->skipped = 0;
 
-	I915_WRITE(PIPE_CRC_CTL(crtc->index), val);
-	POSTING_READ(PIPE_CRC_CTL(crtc->index));
+	intel_de_write(dev_priv, PIPE_CRC_CTL(crtc->index), val);
+	intel_de_posting_read(dev_priv, PIPE_CRC_CTL(crtc->index));
 }
 
 void intel_crtc_disable_pipe_crc(struct intel_crtc *intel_crtc)
@@ -665,7 +665,7 @@ void intel_crtc_disable_pipe_crc(struct intel_crtc *intel_crtc)
 	pipe_crc->skipped = INT_MIN;
 	spin_unlock_irq(&pipe_crc->lock);
 
-	I915_WRITE(PIPE_CRC_CTL(crtc->index), 0);
-	POSTING_READ(PIPE_CRC_CTL(crtc->index));
+	intel_de_write(dev_priv, PIPE_CRC_CTL(crtc->index), 0);
+	intel_de_posting_read(dev_priv, PIPE_CRC_CTL(crtc->index));
 	intel_synchronize_irq(dev_priv);
 }
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
