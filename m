Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DB5E146A92
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2020 15:01:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24F75890A9;
	Thu, 23 Jan 2020 14:00:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FE3F89CDE
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jan 2020 14:00:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Jan 2020 06:00:21 -0800
X-IronPort-AV: E=Sophos;i="5.70,354,1574150400"; d="scan'208";a="229838292"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Jan 2020 06:00:19 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Jan 2020 16:00:01 +0200
Message-Id: <20200123140004.14136-3-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200123140004.14136-1-jani.nikula@intel.com>
References: <20200123140004.14136-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH RESEND 3/6] drm/i915/irq: use intel de functions
 for forcewake register access
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

Move away from I915_READ_FW() and I915_WRITE_FW() in display code, and
switch to using intel_de_read_fw() and intel_de_write_fw(),
respectively.

No functional changes.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_irq.c | 27 ++++++++++++++++-----------
 1 file changed, 16 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 94cb25ac504d..87a6662abc1b 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -629,9 +629,9 @@ u32 i915_get_vblank_counter(struct drm_crtc *crtc)
 	 * register.
 	 */
 	do {
-		high1 = I915_READ_FW(high_frame) & PIPE_FRAME_HIGH_MASK;
-		low   = I915_READ_FW(low_frame);
-		high2 = I915_READ_FW(high_frame) & PIPE_FRAME_HIGH_MASK;
+		high1 = intel_de_read_fw(dev_priv, high_frame) & PIPE_FRAME_HIGH_MASK;
+		low   = intel_de_read_fw(dev_priv, low_frame);
+		high2 = intel_de_read_fw(dev_priv, high_frame) & PIPE_FRAME_HIGH_MASK;
 	} while (high1 != high2);
 
 	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
@@ -688,15 +688,17 @@ static u32 __intel_get_crtc_scanline_from_timestamp(struct intel_crtc *crtc)
 		 * pipe frame time stamp. The time stamp value
 		 * is sampled at every start of vertical blank.
 		 */
-		scan_prev_time = I915_READ_FW(PIPE_FRMTMSTMP(crtc->pipe));
+		scan_prev_time = intel_de_read_fw(dev_priv,
+						  PIPE_FRMTMSTMP(crtc->pipe));
 
 		/*
 		 * The TIMESTAMP_CTR register has the current
 		 * time stamp value.
 		 */
-		scan_curr_time = I915_READ_FW(IVB_TIMESTAMP_CTR);
+		scan_curr_time = intel_de_read_fw(dev_priv, IVB_TIMESTAMP_CTR);
 
-		scan_post_time = I915_READ_FW(PIPE_FRMTMSTMP(crtc->pipe));
+		scan_post_time = intel_de_read_fw(dev_priv,
+						  PIPE_FRMTMSTMP(crtc->pipe));
 	} while (scan_post_time != scan_prev_time);
 
 	scanline = div_u64(mul_u32_u32(scan_curr_time - scan_prev_time,
@@ -707,7 +709,10 @@ static u32 __intel_get_crtc_scanline_from_timestamp(struct intel_crtc *crtc)
 	return scanline;
 }
 
-/* I915_READ_FW, only for fast reads of display block, no need for forcewake etc. */
+/*
+ * intel_de_read_fw(), only for fast reads of display block, no need for
+ * forcewake etc.
+ */
 static int __intel_get_crtc_scanline(struct intel_crtc *crtc)
 {
 	struct drm_device *dev = crtc->base.dev;
@@ -731,9 +736,9 @@ static int __intel_get_crtc_scanline(struct intel_crtc *crtc)
 		vtotal /= 2;
 
 	if (IS_GEN(dev_priv, 2))
-		position = I915_READ_FW(PIPEDSL(pipe)) & DSL_LINEMASK_GEN2;
+		position = intel_de_read_fw(dev_priv, PIPEDSL(pipe)) & DSL_LINEMASK_GEN2;
 	else
-		position = I915_READ_FW(PIPEDSL(pipe)) & DSL_LINEMASK_GEN3;
+		position = intel_de_read_fw(dev_priv, PIPEDSL(pipe)) & DSL_LINEMASK_GEN3;
 
 	/*
 	 * On HSW, the DSL reg (0x70000) appears to return 0 if we
@@ -752,7 +757,7 @@ static int __intel_get_crtc_scanline(struct intel_crtc *crtc)
 
 		for (i = 0; i < 100; i++) {
 			udelay(1);
-			temp = I915_READ_FW(PIPEDSL(pipe)) & DSL_LINEMASK_GEN3;
+			temp = intel_de_read_fw(dev_priv, PIPEDSL(pipe)) & DSL_LINEMASK_GEN3;
 			if (temp != position) {
 				position = temp;
 				break;
@@ -823,7 +828,7 @@ bool i915_get_crtc_scanoutpos(struct drm_device *dev, unsigned int index,
 		 * We can split this into vertical and horizontal
 		 * scanout position.
 		 */
-		position = (I915_READ_FW(PIPEFRAMEPIXEL(pipe)) & PIPE_PIXEL_MASK) >> PIPE_PIXEL_SHIFT;
+		position = (intel_de_read_fw(dev_priv, PIPEFRAMEPIXEL(pipe)) & PIPE_PIXEL_MASK) >> PIPE_PIXEL_SHIFT;
 
 		/* convert to pixel counts */
 		vbl_start *= htotal;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
