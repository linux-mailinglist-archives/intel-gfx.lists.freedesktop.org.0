Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CFC3064A34E
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Dec 2022 15:29:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A4FC10E18B;
	Mon, 12 Dec 2022 14:29:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B414310E175
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Dec 2022 14:29:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670855374; x=1702391374;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PuiasFnwCm4rKKcrpsEZuarngYyVsaGC/RRkg5WLp/A=;
 b=nhUAs3t/y/XE+Goayy2ot3qov/kUpaDLKG1r4/pSj47SetoPllLZDGdR
 j9u7fu/r2kBJmH9hw8jqw2iQ2+GdP33+mB9WUUfDqvHfsJGb2j+ZHwuDE
 kdW10nabqsFYdB0CcNFawBFThk0qfYg3vXYv/wEjZf3x0txznRZDW3BRq
 46nkf/FCqBP3ZAnudLWfGq09cVaIdKYm9YCNobs2WNJtsWh7sbW9wjwjI
 dWvXtVpA+eXvcKO9FVJBGZpThkrtdepytyReUO4F3mE077u9+Un2hMFx9
 WIKUde3gkQ8erimGx7rh22rTpUbx3YJSCMH73q3xZgD2Pm28d99EE6bxl g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10558"; a="316558427"
X-IronPort-AV: E=Sophos;i="5.96,238,1665471600"; d="scan'208";a="316558427"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2022 06:29:34 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10558"; a="790511167"
X-IronPort-AV: E=Sophos;i="5.96,238,1665471600"; d="scan'208";a="790511167"
Received: from sshumihi-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.5.95])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2022 06:29:32 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Dec 2022 16:29:19 +0200
Message-Id: <62ad1a5f202c244cd85fea17fbd7b5921b4e36d0.1670855299.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1670855299.git.jani.nikula@intel.com>
References: <cover.1670855299.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/7] drm/i915/irq: split out vblank/scanline
 code to intel_vblank.[ch]
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

The vblank/scanline code is fairly isolated in i915_irq.c. Split it out
to new intel_vblank.[ch].

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/Makefile                 |   1 +
 drivers/gpu/drm/i915/display/intel_crtc.c     |   1 +
 .../drm/i915/display/intel_display_trace.h    |   1 +
 drivers/gpu/drm/i915/display/intel_vblank.c   | 419 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_vblank.h   |  21 +
 drivers/gpu/drm/i915/i915_irq.c               | 408 -----------------
 drivers/gpu/drm/i915/i915_irq.h               |   6 -
 7 files changed, 443 insertions(+), 414 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_vblank.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_vblank.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index dfa211451a1d..fc6d7885ad1d 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -263,6 +263,7 @@ i915-y += \
 	display/intel_quirks.o \
 	display/intel_sprite.o \
 	display/intel_tc.o \
+	display/intel_vblank.o \
 	display/intel_vga.o \
 	display/i9xx_plane.o \
 	display/skl_scaler.o \
diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index 037fc140b585..82be0fbe9934 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -28,6 +28,7 @@
 #include "intel_pipe_crc.h"
 #include "intel_psr.h"
 #include "intel_sprite.h"
+#include "intel_vblank.h"
 #include "intel_vrr.h"
 #include "skl_universal_plane.h"
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_trace.h b/drivers/gpu/drm/i915/display/intel_display_trace.h
index 725aba3fa531..651ea8564e1b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_trace.h
+++ b/drivers/gpu/drm/i915/display/intel_display_trace.h
@@ -17,6 +17,7 @@
 #include "i915_irq.h"
 #include "intel_crtc.h"
 #include "intel_display_types.h"
+#include "intel_vblank.h"
 
 #define __dev_name_i915(i915) dev_name((i915)->drm.dev)
 #define __dev_name_kms(obj) dev_name((obj)->base.dev->dev)
diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
new file mode 100644
index 000000000000..78a579496ad1
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_vblank.c
@@ -0,0 +1,419 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2022 Intel Corporation
+ */
+
+#include "i915_drv.h"
+#include "i915_reg.h"
+#include "intel_de.h"
+#include "intel_display_types.h"
+#include "intel_vblank.h"
+
+/*
+ * This timing diagram depicts the video signal in and
+ * around the vertical blanking period.
+ *
+ * Assumptions about the fictitious mode used in this example:
+ *  vblank_start >= 3
+ *  vsync_start = vblank_start + 1
+ *  vsync_end = vblank_start + 2
+ *  vtotal = vblank_start + 3
+ *
+ *           start of vblank:
+ *           latch double buffered registers
+ *           increment frame counter (ctg+)
+ *           generate start of vblank interrupt (gen4+)
+ *           |
+ *           |          frame start:
+ *           |          generate frame start interrupt (aka. vblank interrupt) (gmch)
+ *           |          may be shifted forward 1-3 extra lines via PIPECONF
+ *           |          |
+ *           |          |  start of vsync:
+ *           |          |  generate vsync interrupt
+ *           |          |  |
+ * ___xxxx___    ___xxxx___    ___xxxx___    ___xxxx___    ___xxxx___    ___xxxx
+ *       .   \hs/   .      \hs/          \hs/          \hs/   .      \hs/
+ * ----va---> <-----------------vb--------------------> <--------va-------------
+ *       |          |       <----vs----->                     |
+ * -vbs-----> <---vbs+1---> <---vbs+2---> <-----0-----> <-----1-----> <-----2--- (scanline counter gen2)
+ * -vbs-2---> <---vbs-1---> <---vbs-----> <---vbs+1---> <---vbs+2---> <-----0--- (scanline counter gen3+)
+ * -vbs-2---> <---vbs-2---> <---vbs-1---> <---vbs-----> <---vbs+1---> <---vbs+2- (scanline counter hsw+ hdmi)
+ *       |          |                                         |
+ *       last visible pixel                                   first visible pixel
+ *                  |                                         increment frame counter (gen3/4)
+ *                  pixel counter = vblank_start * htotal     pixel counter = 0 (gen3/4)
+ *
+ * x  = horizontal active
+ * _  = horizontal blanking
+ * hs = horizontal sync
+ * va = vertical active
+ * vb = vertical blanking
+ * vs = vertical sync
+ * vbs = vblank_start (number)
+ *
+ * Summary:
+ * - most events happen at the start of horizontal sync
+ * - frame start happens at the start of horizontal blank, 1-4 lines
+ *   (depending on PIPECONF settings) after the start of vblank
+ * - gen3/4 pixel and frame counter are synchronized with the start
+ *   of horizontal active on the first line of vertical active
+ */
+
+/*
+ * Called from drm generic code, passed a 'crtc', which we use as a pipe index.
+ */
+u32 i915_get_vblank_counter(struct drm_crtc *crtc)
+{
+	struct drm_i915_private *dev_priv = to_i915(crtc->dev);
+	struct drm_vblank_crtc *vblank = &dev_priv->drm.vblank[drm_crtc_index(crtc)];
+	const struct drm_display_mode *mode = &vblank->hwmode;
+	enum pipe pipe = to_intel_crtc(crtc)->pipe;
+	i915_reg_t high_frame, low_frame;
+	u32 high1, high2, low, pixel, vbl_start, hsync_start, htotal;
+	unsigned long irqflags;
+
+	/*
+	 * On i965gm TV output the frame counter only works up to
+	 * the point when we enable the TV encoder. After that the
+	 * frame counter ceases to work and reads zero. We need a
+	 * vblank wait before enabling the TV encoder and so we
+	 * have to enable vblank interrupts while the frame counter
+	 * is still in a working state. However the core vblank code
+	 * does not like us returning non-zero frame counter values
+	 * when we've told it that we don't have a working frame
+	 * counter. Thus we must stop non-zero values leaking out.
+	 */
+	if (!vblank->max_vblank_count)
+		return 0;
+
+	htotal = mode->crtc_htotal;
+	hsync_start = mode->crtc_hsync_start;
+	vbl_start = mode->crtc_vblank_start;
+	if (mode->flags & DRM_MODE_FLAG_INTERLACE)
+		vbl_start = DIV_ROUND_UP(vbl_start, 2);
+
+	/* Convert to pixel count */
+	vbl_start *= htotal;
+
+	/* Start of vblank event occurs at start of hsync */
+	vbl_start -= htotal - hsync_start;
+
+	high_frame = PIPEFRAME(pipe);
+	low_frame = PIPEFRAMEPIXEL(pipe);
+
+	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
+
+	/*
+	 * High & low register fields aren't synchronized, so make sure
+	 * we get a low value that's stable across two reads of the high
+	 * register.
+	 */
+	do {
+		high1 = intel_de_read_fw(dev_priv, high_frame) & PIPE_FRAME_HIGH_MASK;
+		low   = intel_de_read_fw(dev_priv, low_frame);
+		high2 = intel_de_read_fw(dev_priv, high_frame) & PIPE_FRAME_HIGH_MASK;
+	} while (high1 != high2);
+
+	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
+
+	high1 >>= PIPE_FRAME_HIGH_SHIFT;
+	pixel = low & PIPE_PIXEL_MASK;
+	low >>= PIPE_FRAME_LOW_SHIFT;
+
+	/*
+	 * The frame counter increments at beginning of active.
+	 * Cook up a vblank counter by also checking the pixel
+	 * counter against vblank start.
+	 */
+	return (((high1 << 8) | low) + (pixel >= vbl_start)) & 0xffffff;
+}
+
+u32 g4x_get_vblank_counter(struct drm_crtc *crtc)
+{
+	struct drm_i915_private *dev_priv = to_i915(crtc->dev);
+	struct drm_vblank_crtc *vblank = &dev_priv->drm.vblank[drm_crtc_index(crtc)];
+	enum pipe pipe = to_intel_crtc(crtc)->pipe;
+
+	if (!vblank->max_vblank_count)
+		return 0;
+
+	return intel_uncore_read(&dev_priv->uncore, PIPE_FRMCOUNT_G4X(pipe));
+}
+
+static u32 intel_crtc_scanlines_since_frame_timestamp(struct intel_crtc *crtc)
+{
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct drm_vblank_crtc *vblank =
+		&crtc->base.dev->vblank[drm_crtc_index(&crtc->base)];
+	const struct drm_display_mode *mode = &vblank->hwmode;
+	u32 htotal = mode->crtc_htotal;
+	u32 clock = mode->crtc_clock;
+	u32 scan_prev_time, scan_curr_time, scan_post_time;
+
+	/*
+	 * To avoid the race condition where we might cross into the
+	 * next vblank just between the PIPE_FRMTMSTMP and TIMESTAMP_CTR
+	 * reads. We make sure we read PIPE_FRMTMSTMP and TIMESTAMP_CTR
+	 * during the same frame.
+	 */
+	do {
+		/*
+		 * This field provides read back of the display
+		 * pipe frame time stamp. The time stamp value
+		 * is sampled at every start of vertical blank.
+		 */
+		scan_prev_time = intel_de_read_fw(dev_priv,
+						  PIPE_FRMTMSTMP(crtc->pipe));
+
+		/*
+		 * The TIMESTAMP_CTR register has the current
+		 * time stamp value.
+		 */
+		scan_curr_time = intel_de_read_fw(dev_priv, IVB_TIMESTAMP_CTR);
+
+		scan_post_time = intel_de_read_fw(dev_priv,
+						  PIPE_FRMTMSTMP(crtc->pipe));
+	} while (scan_post_time != scan_prev_time);
+
+	return div_u64(mul_u32_u32(scan_curr_time - scan_prev_time,
+				   clock), 1000 * htotal);
+}
+
+/*
+ * On certain encoders on certain platforms, pipe
+ * scanline register will not work to get the scanline,
+ * since the timings are driven from the PORT or issues
+ * with scanline register updates.
+ * This function will use Framestamp and current
+ * timestamp registers to calculate the scanline.
+ */
+static u32 __intel_get_crtc_scanline_from_timestamp(struct intel_crtc *crtc)
+{
+	struct drm_vblank_crtc *vblank =
+		&crtc->base.dev->vblank[drm_crtc_index(&crtc->base)];
+	const struct drm_display_mode *mode = &vblank->hwmode;
+	u32 vblank_start = mode->crtc_vblank_start;
+	u32 vtotal = mode->crtc_vtotal;
+	u32 scanline;
+
+	scanline = intel_crtc_scanlines_since_frame_timestamp(crtc);
+	scanline = min(scanline, vtotal - 1);
+	scanline = (scanline + vblank_start) % vtotal;
+
+	return scanline;
+}
+
+/*
+ * intel_de_read_fw(), only for fast reads of display block, no need for
+ * forcewake etc.
+ */
+static int __intel_get_crtc_scanline(struct intel_crtc *crtc)
+{
+	struct drm_device *dev = crtc->base.dev;
+	struct drm_i915_private *dev_priv = to_i915(dev);
+	const struct drm_display_mode *mode;
+	struct drm_vblank_crtc *vblank;
+	enum pipe pipe = crtc->pipe;
+	int position, vtotal;
+
+	if (!crtc->active)
+		return 0;
+
+	vblank = &crtc->base.dev->vblank[drm_crtc_index(&crtc->base)];
+	mode = &vblank->hwmode;
+
+	if (crtc->mode_flags & I915_MODE_FLAG_GET_SCANLINE_FROM_TIMESTAMP)
+		return __intel_get_crtc_scanline_from_timestamp(crtc);
+
+	vtotal = mode->crtc_vtotal;
+	if (mode->flags & DRM_MODE_FLAG_INTERLACE)
+		vtotal /= 2;
+
+	position = intel_de_read_fw(dev_priv, PIPEDSL(pipe)) & PIPEDSL_LINE_MASK;
+
+	/*
+	 * On HSW, the DSL reg (0x70000) appears to return 0 if we
+	 * read it just before the start of vblank.  So try it again
+	 * so we don't accidentally end up spanning a vblank frame
+	 * increment, causing the pipe_update_end() code to squak at us.
+	 *
+	 * The nature of this problem means we can't simply check the ISR
+	 * bit and return the vblank start value; nor can we use the scanline
+	 * debug register in the transcoder as it appears to have the same
+	 * problem.  We may need to extend this to include other platforms,
+	 * but so far testing only shows the problem on HSW.
+	 */
+	if (HAS_DDI(dev_priv) && !position) {
+		int i, temp;
+
+		for (i = 0; i < 100; i++) {
+			udelay(1);
+			temp = intel_de_read_fw(dev_priv, PIPEDSL(pipe)) & PIPEDSL_LINE_MASK;
+			if (temp != position) {
+				position = temp;
+				break;
+			}
+		}
+	}
+
+	/*
+	 * See update_scanline_offset() for the details on the
+	 * scanline_offset adjustment.
+	 */
+	return (position + crtc->scanline_offset) % vtotal;
+}
+
+static bool i915_get_crtc_scanoutpos(struct drm_crtc *_crtc,
+				     bool in_vblank_irq,
+				     int *vpos, int *hpos,
+				     ktime_t *stime, ktime_t *etime,
+				     const struct drm_display_mode *mode)
+{
+	struct drm_device *dev = _crtc->dev;
+	struct drm_i915_private *dev_priv = to_i915(dev);
+	struct intel_crtc *crtc = to_intel_crtc(_crtc);
+	enum pipe pipe = crtc->pipe;
+	int position;
+	int vbl_start, vbl_end, hsync_start, htotal, vtotal;
+	unsigned long irqflags;
+	bool use_scanline_counter = DISPLAY_VER(dev_priv) >= 5 ||
+		IS_G4X(dev_priv) || DISPLAY_VER(dev_priv) == 2 ||
+		crtc->mode_flags & I915_MODE_FLAG_USE_SCANLINE_COUNTER;
+
+	if (drm_WARN_ON(&dev_priv->drm, !mode->crtc_clock)) {
+		drm_dbg(&dev_priv->drm,
+			"trying to get scanoutpos for disabled pipe %c\n",
+			pipe_name(pipe));
+		return false;
+	}
+
+	htotal = mode->crtc_htotal;
+	hsync_start = mode->crtc_hsync_start;
+	vtotal = mode->crtc_vtotal;
+	vbl_start = mode->crtc_vblank_start;
+	vbl_end = mode->crtc_vblank_end;
+
+	if (mode->flags & DRM_MODE_FLAG_INTERLACE) {
+		vbl_start = DIV_ROUND_UP(vbl_start, 2);
+		vbl_end /= 2;
+		vtotal /= 2;
+	}
+
+	/*
+	 * Lock uncore.lock, as we will do multiple timing critical raw
+	 * register reads, potentially with preemption disabled, so the
+	 * following code must not block on uncore.lock.
+	 */
+	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
+
+	/* preempt_disable_rt() should go right here in PREEMPT_RT patchset. */
+
+	/* Get optional system timestamp before query. */
+	if (stime)
+		*stime = ktime_get();
+
+	if (crtc->mode_flags & I915_MODE_FLAG_VRR) {
+		int scanlines = intel_crtc_scanlines_since_frame_timestamp(crtc);
+
+		position = __intel_get_crtc_scanline(crtc);
+
+		/*
+		 * Already exiting vblank? If so, shift our position
+		 * so it looks like we're already apporaching the full
+		 * vblank end. This should make the generated timestamp
+		 * more or less match when the active portion will start.
+		 */
+		if (position >= vbl_start && scanlines < position)
+			position = min(crtc->vmax_vblank_start + scanlines, vtotal - 1);
+	} else if (use_scanline_counter) {
+		/* No obvious pixelcount register. Only query vertical
+		 * scanout position from Display scan line register.
+		 */
+		position = __intel_get_crtc_scanline(crtc);
+	} else {
+		/*
+		 * Have access to pixelcount since start of frame.
+		 * We can split this into vertical and horizontal
+		 * scanout position.
+		 */
+		position = (intel_de_read_fw(dev_priv, PIPEFRAMEPIXEL(pipe)) & PIPE_PIXEL_MASK) >> PIPE_PIXEL_SHIFT;
+
+		/* convert to pixel counts */
+		vbl_start *= htotal;
+		vbl_end *= htotal;
+		vtotal *= htotal;
+
+		/*
+		 * In interlaced modes, the pixel counter counts all pixels,
+		 * so one field will have htotal more pixels. In order to avoid
+		 * the reported position from jumping backwards when the pixel
+		 * counter is beyond the length of the shorter field, just
+		 * clamp the position the length of the shorter field. This
+		 * matches how the scanline counter based position works since
+		 * the scanline counter doesn't count the two half lines.
+		 */
+		if (position >= vtotal)
+			position = vtotal - 1;
+
+		/*
+		 * Start of vblank interrupt is triggered at start of hsync,
+		 * just prior to the first active line of vblank. However we
+		 * consider lines to start at the leading edge of horizontal
+		 * active. So, should we get here before we've crossed into
+		 * the horizontal active of the first line in vblank, we would
+		 * not set the DRM_SCANOUTPOS_INVBL flag. In order to fix that,
+		 * always add htotal-hsync_start to the current pixel position.
+		 */
+		position = (position + htotal - hsync_start) % vtotal;
+	}
+
+	/* Get optional system timestamp after query. */
+	if (etime)
+		*etime = ktime_get();
+
+	/* preempt_enable_rt() should go right here in PREEMPT_RT patchset. */
+
+	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
+
+	/*
+	 * While in vblank, position will be negative
+	 * counting up towards 0 at vbl_end. And outside
+	 * vblank, position will be positive counting
+	 * up since vbl_end.
+	 */
+	if (position >= vbl_start)
+		position -= vbl_end;
+	else
+		position += vtotal - vbl_end;
+
+	if (use_scanline_counter) {
+		*vpos = position;
+		*hpos = 0;
+	} else {
+		*vpos = position / htotal;
+		*hpos = position - (*vpos * htotal);
+	}
+
+	return true;
+}
+
+bool intel_crtc_get_vblank_timestamp(struct drm_crtc *crtc, int *max_error,
+				     ktime_t *vblank_time, bool in_vblank_irq)
+{
+	return drm_crtc_vblank_helper_get_vblank_timestamp_internal(
+		crtc, max_error, vblank_time, in_vblank_irq,
+		i915_get_crtc_scanoutpos);
+}
+
+int intel_get_crtc_scanline(struct intel_crtc *crtc)
+{
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	unsigned long irqflags;
+	int position;
+
+	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
+	position = __intel_get_crtc_scanline(crtc);
+	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
+
+	return position;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_vblank.h b/drivers/gpu/drm/i915/display/intel_vblank.h
new file mode 100644
index 000000000000..9c0034d7454d
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_vblank.h
@@ -0,0 +1,21 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2022 Intel Corporation
+ */
+
+#ifndef __INTEL_VBLANK_H__
+#define __INTEL_VBLANK_H__
+
+#include <linux/ktime.h>
+#include <linux/types.h>
+
+struct drm_crtc;
+struct intel_crtc;
+
+u32 i915_get_vblank_counter(struct drm_crtc *crtc);
+u32 g4x_get_vblank_counter(struct drm_crtc *crtc);
+bool intel_crtc_get_vblank_timestamp(struct drm_crtc *crtc, int *max_error,
+				     ktime_t *vblank_time, bool in_vblank_irq);
+int intel_get_crtc_scanline(struct intel_crtc *crtc);
+
+#endif /* __INTEL_VBLANK_H__ */
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index edfe363af838..3ef86a80c401 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -614,414 +614,6 @@ static void i915_enable_asle_pipestat(struct drm_i915_private *dev_priv)
 	spin_unlock_irq(&dev_priv->irq_lock);
 }
 
-/*
- * This timing diagram depicts the video signal in and
- * around the vertical blanking period.
- *
- * Assumptions about the fictitious mode used in this example:
- *  vblank_start >= 3
- *  vsync_start = vblank_start + 1
- *  vsync_end = vblank_start + 2
- *  vtotal = vblank_start + 3
- *
- *           start of vblank:
- *           latch double buffered registers
- *           increment frame counter (ctg+)
- *           generate start of vblank interrupt (gen4+)
- *           |
- *           |          frame start:
- *           |          generate frame start interrupt (aka. vblank interrupt) (gmch)
- *           |          may be shifted forward 1-3 extra lines via PIPECONF
- *           |          |
- *           |          |  start of vsync:
- *           |          |  generate vsync interrupt
- *           |          |  |
- * ___xxxx___    ___xxxx___    ___xxxx___    ___xxxx___    ___xxxx___    ___xxxx
- *       .   \hs/   .      \hs/          \hs/          \hs/   .      \hs/
- * ----va---> <-----------------vb--------------------> <--------va-------------
- *       |          |       <----vs----->                     |
- * -vbs-----> <---vbs+1---> <---vbs+2---> <-----0-----> <-----1-----> <-----2--- (scanline counter gen2)
- * -vbs-2---> <---vbs-1---> <---vbs-----> <---vbs+1---> <---vbs+2---> <-----0--- (scanline counter gen3+)
- * -vbs-2---> <---vbs-2---> <---vbs-1---> <---vbs-----> <---vbs+1---> <---vbs+2- (scanline counter hsw+ hdmi)
- *       |          |                                         |
- *       last visible pixel                                   first visible pixel
- *                  |                                         increment frame counter (gen3/4)
- *                  pixel counter = vblank_start * htotal     pixel counter = 0 (gen3/4)
- *
- * x  = horizontal active
- * _  = horizontal blanking
- * hs = horizontal sync
- * va = vertical active
- * vb = vertical blanking
- * vs = vertical sync
- * vbs = vblank_start (number)
- *
- * Summary:
- * - most events happen at the start of horizontal sync
- * - frame start happens at the start of horizontal blank, 1-4 lines
- *   (depending on PIPECONF settings) after the start of vblank
- * - gen3/4 pixel and frame counter are synchronized with the start
- *   of horizontal active on the first line of vertical active
- */
-
-/* Called from drm generic code, passed a 'crtc', which
- * we use as a pipe index
- */
-u32 i915_get_vblank_counter(struct drm_crtc *crtc)
-{
-	struct drm_i915_private *dev_priv = to_i915(crtc->dev);
-	struct drm_vblank_crtc *vblank = &dev_priv->drm.vblank[drm_crtc_index(crtc)];
-	const struct drm_display_mode *mode = &vblank->hwmode;
-	enum pipe pipe = to_intel_crtc(crtc)->pipe;
-	i915_reg_t high_frame, low_frame;
-	u32 high1, high2, low, pixel, vbl_start, hsync_start, htotal;
-	unsigned long irqflags;
-
-	/*
-	 * On i965gm TV output the frame counter only works up to
-	 * the point when we enable the TV encoder. After that the
-	 * frame counter ceases to work and reads zero. We need a
-	 * vblank wait before enabling the TV encoder and so we
-	 * have to enable vblank interrupts while the frame counter
-	 * is still in a working state. However the core vblank code
-	 * does not like us returning non-zero frame counter values
-	 * when we've told it that we don't have a working frame
-	 * counter. Thus we must stop non-zero values leaking out.
-	 */
-	if (!vblank->max_vblank_count)
-		return 0;
-
-	htotal = mode->crtc_htotal;
-	hsync_start = mode->crtc_hsync_start;
-	vbl_start = mode->crtc_vblank_start;
-	if (mode->flags & DRM_MODE_FLAG_INTERLACE)
-		vbl_start = DIV_ROUND_UP(vbl_start, 2);
-
-	/* Convert to pixel count */
-	vbl_start *= htotal;
-
-	/* Start of vblank event occurs at start of hsync */
-	vbl_start -= htotal - hsync_start;
-
-	high_frame = PIPEFRAME(pipe);
-	low_frame = PIPEFRAMEPIXEL(pipe);
-
-	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
-
-	/*
-	 * High & low register fields aren't synchronized, so make sure
-	 * we get a low value that's stable across two reads of the high
-	 * register.
-	 */
-	do {
-		high1 = intel_de_read_fw(dev_priv, high_frame) & PIPE_FRAME_HIGH_MASK;
-		low   = intel_de_read_fw(dev_priv, low_frame);
-		high2 = intel_de_read_fw(dev_priv, high_frame) & PIPE_FRAME_HIGH_MASK;
-	} while (high1 != high2);
-
-	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
-
-	high1 >>= PIPE_FRAME_HIGH_SHIFT;
-	pixel = low & PIPE_PIXEL_MASK;
-	low >>= PIPE_FRAME_LOW_SHIFT;
-
-	/*
-	 * The frame counter increments at beginning of active.
-	 * Cook up a vblank counter by also checking the pixel
-	 * counter against vblank start.
-	 */
-	return (((high1 << 8) | low) + (pixel >= vbl_start)) & 0xffffff;
-}
-
-u32 g4x_get_vblank_counter(struct drm_crtc *crtc)
-{
-	struct drm_i915_private *dev_priv = to_i915(crtc->dev);
-	struct drm_vblank_crtc *vblank = &dev_priv->drm.vblank[drm_crtc_index(crtc)];
-	enum pipe pipe = to_intel_crtc(crtc)->pipe;
-
-	if (!vblank->max_vblank_count)
-		return 0;
-
-	return intel_uncore_read(&dev_priv->uncore, PIPE_FRMCOUNT_G4X(pipe));
-}
-
-static u32 intel_crtc_scanlines_since_frame_timestamp(struct intel_crtc *crtc)
-{
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	struct drm_vblank_crtc *vblank =
-		&crtc->base.dev->vblank[drm_crtc_index(&crtc->base)];
-	const struct drm_display_mode *mode = &vblank->hwmode;
-	u32 htotal = mode->crtc_htotal;
-	u32 clock = mode->crtc_clock;
-	u32 scan_prev_time, scan_curr_time, scan_post_time;
-
-	/*
-	 * To avoid the race condition where we might cross into the
-	 * next vblank just between the PIPE_FRMTMSTMP and TIMESTAMP_CTR
-	 * reads. We make sure we read PIPE_FRMTMSTMP and TIMESTAMP_CTR
-	 * during the same frame.
-	 */
-	do {
-		/*
-		 * This field provides read back of the display
-		 * pipe frame time stamp. The time stamp value
-		 * is sampled at every start of vertical blank.
-		 */
-		scan_prev_time = intel_de_read_fw(dev_priv,
-						  PIPE_FRMTMSTMP(crtc->pipe));
-
-		/*
-		 * The TIMESTAMP_CTR register has the current
-		 * time stamp value.
-		 */
-		scan_curr_time = intel_de_read_fw(dev_priv, IVB_TIMESTAMP_CTR);
-
-		scan_post_time = intel_de_read_fw(dev_priv,
-						  PIPE_FRMTMSTMP(crtc->pipe));
-	} while (scan_post_time != scan_prev_time);
-
-	return div_u64(mul_u32_u32(scan_curr_time - scan_prev_time,
-				   clock), 1000 * htotal);
-}
-
-/*
- * On certain encoders on certain platforms, pipe
- * scanline register will not work to get the scanline,
- * since the timings are driven from the PORT or issues
- * with scanline register updates.
- * This function will use Framestamp and current
- * timestamp registers to calculate the scanline.
- */
-static u32 __intel_get_crtc_scanline_from_timestamp(struct intel_crtc *crtc)
-{
-	struct drm_vblank_crtc *vblank =
-		&crtc->base.dev->vblank[drm_crtc_index(&crtc->base)];
-	const struct drm_display_mode *mode = &vblank->hwmode;
-	u32 vblank_start = mode->crtc_vblank_start;
-	u32 vtotal = mode->crtc_vtotal;
-	u32 scanline;
-
-	scanline = intel_crtc_scanlines_since_frame_timestamp(crtc);
-	scanline = min(scanline, vtotal - 1);
-	scanline = (scanline + vblank_start) % vtotal;
-
-	return scanline;
-}
-
-/*
- * intel_de_read_fw(), only for fast reads of display block, no need for
- * forcewake etc.
- */
-static int __intel_get_crtc_scanline(struct intel_crtc *crtc)
-{
-	struct drm_device *dev = crtc->base.dev;
-	struct drm_i915_private *dev_priv = to_i915(dev);
-	const struct drm_display_mode *mode;
-	struct drm_vblank_crtc *vblank;
-	enum pipe pipe = crtc->pipe;
-	int position, vtotal;
-
-	if (!crtc->active)
-		return 0;
-
-	vblank = &crtc->base.dev->vblank[drm_crtc_index(&crtc->base)];
-	mode = &vblank->hwmode;
-
-	if (crtc->mode_flags & I915_MODE_FLAG_GET_SCANLINE_FROM_TIMESTAMP)
-		return __intel_get_crtc_scanline_from_timestamp(crtc);
-
-	vtotal = mode->crtc_vtotal;
-	if (mode->flags & DRM_MODE_FLAG_INTERLACE)
-		vtotal /= 2;
-
-	position = intel_de_read_fw(dev_priv, PIPEDSL(pipe)) & PIPEDSL_LINE_MASK;
-
-	/*
-	 * On HSW, the DSL reg (0x70000) appears to return 0 if we
-	 * read it just before the start of vblank.  So try it again
-	 * so we don't accidentally end up spanning a vblank frame
-	 * increment, causing the pipe_update_end() code to squak at us.
-	 *
-	 * The nature of this problem means we can't simply check the ISR
-	 * bit and return the vblank start value; nor can we use the scanline
-	 * debug register in the transcoder as it appears to have the same
-	 * problem.  We may need to extend this to include other platforms,
-	 * but so far testing only shows the problem on HSW.
-	 */
-	if (HAS_DDI(dev_priv) && !position) {
-		int i, temp;
-
-		for (i = 0; i < 100; i++) {
-			udelay(1);
-			temp = intel_de_read_fw(dev_priv, PIPEDSL(pipe)) & PIPEDSL_LINE_MASK;
-			if (temp != position) {
-				position = temp;
-				break;
-			}
-		}
-	}
-
-	/*
-	 * See update_scanline_offset() for the details on the
-	 * scanline_offset adjustment.
-	 */
-	return (position + crtc->scanline_offset) % vtotal;
-}
-
-static bool i915_get_crtc_scanoutpos(struct drm_crtc *_crtc,
-				     bool in_vblank_irq,
-				     int *vpos, int *hpos,
-				     ktime_t *stime, ktime_t *etime,
-				     const struct drm_display_mode *mode)
-{
-	struct drm_device *dev = _crtc->dev;
-	struct drm_i915_private *dev_priv = to_i915(dev);
-	struct intel_crtc *crtc = to_intel_crtc(_crtc);
-	enum pipe pipe = crtc->pipe;
-	int position;
-	int vbl_start, vbl_end, hsync_start, htotal, vtotal;
-	unsigned long irqflags;
-	bool use_scanline_counter = DISPLAY_VER(dev_priv) >= 5 ||
-		IS_G4X(dev_priv) || DISPLAY_VER(dev_priv) == 2 ||
-		crtc->mode_flags & I915_MODE_FLAG_USE_SCANLINE_COUNTER;
-
-	if (drm_WARN_ON(&dev_priv->drm, !mode->crtc_clock)) {
-		drm_dbg(&dev_priv->drm,
-			"trying to get scanoutpos for disabled "
-			"pipe %c\n", pipe_name(pipe));
-		return false;
-	}
-
-	htotal = mode->crtc_htotal;
-	hsync_start = mode->crtc_hsync_start;
-	vtotal = mode->crtc_vtotal;
-	vbl_start = mode->crtc_vblank_start;
-	vbl_end = mode->crtc_vblank_end;
-
-	if (mode->flags & DRM_MODE_FLAG_INTERLACE) {
-		vbl_start = DIV_ROUND_UP(vbl_start, 2);
-		vbl_end /= 2;
-		vtotal /= 2;
-	}
-
-	/*
-	 * Lock uncore.lock, as we will do multiple timing critical raw
-	 * register reads, potentially with preemption disabled, so the
-	 * following code must not block on uncore.lock.
-	 */
-	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
-
-	/* preempt_disable_rt() should go right here in PREEMPT_RT patchset. */
-
-	/* Get optional system timestamp before query. */
-	if (stime)
-		*stime = ktime_get();
-
-	if (crtc->mode_flags & I915_MODE_FLAG_VRR) {
-		int scanlines = intel_crtc_scanlines_since_frame_timestamp(crtc);
-
-		position = __intel_get_crtc_scanline(crtc);
-
-		/*
-		 * Already exiting vblank? If so, shift our position
-		 * so it looks like we're already apporaching the full
-		 * vblank end. This should make the generated timestamp
-		 * more or less match when the active portion will start.
-		 */
-		if (position >= vbl_start && scanlines < position)
-			position = min(crtc->vmax_vblank_start + scanlines, vtotal - 1);
-	} else if (use_scanline_counter) {
-		/* No obvious pixelcount register. Only query vertical
-		 * scanout position from Display scan line register.
-		 */
-		position = __intel_get_crtc_scanline(crtc);
-	} else {
-		/* Have access to pixelcount since start of frame.
-		 * We can split this into vertical and horizontal
-		 * scanout position.
-		 */
-		position = (intel_de_read_fw(dev_priv, PIPEFRAMEPIXEL(pipe)) & PIPE_PIXEL_MASK) >> PIPE_PIXEL_SHIFT;
-
-		/* convert to pixel counts */
-		vbl_start *= htotal;
-		vbl_end *= htotal;
-		vtotal *= htotal;
-
-		/*
-		 * In interlaced modes, the pixel counter counts all pixels,
-		 * so one field will have htotal more pixels. In order to avoid
-		 * the reported position from jumping backwards when the pixel
-		 * counter is beyond the length of the shorter field, just
-		 * clamp the position the length of the shorter field. This
-		 * matches how the scanline counter based position works since
-		 * the scanline counter doesn't count the two half lines.
-		 */
-		if (position >= vtotal)
-			position = vtotal - 1;
-
-		/*
-		 * Start of vblank interrupt is triggered at start of hsync,
-		 * just prior to the first active line of vblank. However we
-		 * consider lines to start at the leading edge of horizontal
-		 * active. So, should we get here before we've crossed into
-		 * the horizontal active of the first line in vblank, we would
-		 * not set the DRM_SCANOUTPOS_INVBL flag. In order to fix that,
-		 * always add htotal-hsync_start to the current pixel position.
-		 */
-		position = (position + htotal - hsync_start) % vtotal;
-	}
-
-	/* Get optional system timestamp after query. */
-	if (etime)
-		*etime = ktime_get();
-
-	/* preempt_enable_rt() should go right here in PREEMPT_RT patchset. */
-
-	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
-
-	/*
-	 * While in vblank, position will be negative
-	 * counting up towards 0 at vbl_end. And outside
-	 * vblank, position will be positive counting
-	 * up since vbl_end.
-	 */
-	if (position >= vbl_start)
-		position -= vbl_end;
-	else
-		position += vtotal - vbl_end;
-
-	if (use_scanline_counter) {
-		*vpos = position;
-		*hpos = 0;
-	} else {
-		*vpos = position / htotal;
-		*hpos = position - (*vpos * htotal);
-	}
-
-	return true;
-}
-
-bool intel_crtc_get_vblank_timestamp(struct drm_crtc *crtc, int *max_error,
-				     ktime_t *vblank_time, bool in_vblank_irq)
-{
-	return drm_crtc_vblank_helper_get_vblank_timestamp_internal(
-		crtc, max_error, vblank_time, in_vblank_irq,
-		i915_get_crtc_scanoutpos);
-}
-
-int intel_get_crtc_scanline(struct intel_crtc *crtc)
-{
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	unsigned long irqflags;
-	int position;
-
-	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
-	position = __intel_get_crtc_scanline(crtc);
-	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
-
-	return position;
-}
-
 /**
  * ivb_parity_work - Workqueue called when a parity error interrupt
  * occurred.
diff --git a/drivers/gpu/drm/i915/i915_irq.h b/drivers/gpu/drm/i915/i915_irq.h
index 9b004fc3444e..03ee4c8b1ed3 100644
--- a/drivers/gpu/drm/i915/i915_irq.h
+++ b/drivers/gpu/drm/i915/i915_irq.h
@@ -66,18 +66,12 @@ bool intel_irqs_enabled(struct drm_i915_private *dev_priv);
 void intel_synchronize_irq(struct drm_i915_private *i915);
 void intel_synchronize_hardirq(struct drm_i915_private *i915);
 
-int intel_get_crtc_scanline(struct intel_crtc *crtc);
 void gen8_irq_power_well_post_enable(struct drm_i915_private *dev_priv,
 				     u8 pipe_mask);
 void gen8_irq_power_well_pre_disable(struct drm_i915_private *dev_priv,
 				     u8 pipe_mask);
 u32 gen8_de_pipe_underrun_mask(struct drm_i915_private *dev_priv);
 
-bool intel_crtc_get_vblank_timestamp(struct drm_crtc *crtc, int *max_error,
-				     ktime_t *vblank_time, bool in_vblank_irq);
-
-u32 i915_get_vblank_counter(struct drm_crtc *crtc);
-u32 g4x_get_vblank_counter(struct drm_crtc *crtc);
 
 int i8xx_enable_vblank(struct drm_crtc *crtc);
 int i915gm_enable_vblank(struct drm_crtc *crtc);
-- 
2.34.1

