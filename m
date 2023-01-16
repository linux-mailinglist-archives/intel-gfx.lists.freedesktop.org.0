Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 408F166BE5E
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Jan 2023 13:56:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BBB110E298;
	Mon, 16 Jan 2023 12:56:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2630F10E3FD
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Jan 2023 12:56:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673873801; x=1705409801;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/cFwPfZ3tEtXHBqB+VDES38aaZh9ZLVIZOQFZF6jcMU=;
 b=YEyd9uakITkzyhDDeA+BIwRY3yh3cnN9RALkY96JPPAHfwQGR74O30Kf
 7eLjj61/7eman9W77CY1Ac0/XNywTs064L4bkFssg4Yhbnp8/EDyV9bZ8
 QGVFjUunlpdGC+GFw3mBaejN3xyb1c1eAx5QDdwolkmAOkcR33+Ezu/ey
 ojHe25O8ClrQ4qOdYkyOWta1Km5yNb0pE4qDhCbhKsrBBRkdgfZwYpmHA
 qNeArCOWBqhNrmGMmoWmYYFQoTAvM9d1Fr7wnh6/q0BumWht1st1Mvkyx
 1CnXyH21DozGYI+IvCeJ+ZXrTY19ip9C0HbvuWTcOQHxtJWFa7zdhnb7T w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10591"; a="386800036"
X-IronPort-AV: E=Sophos;i="5.97,221,1669104000"; d="scan'208";a="386800036"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2023 04:56:40 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10591"; a="904320321"
X-IronPort-AV: E=Sophos;i="5.97,221,1669104000"; d="scan'208";a="904320321"
Received: from amakarev-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.13.137])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2023 04:56:39 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 16 Jan 2023 14:56:16 +0200
Message-Id: <33853549adff82045b95af527e14cfdff5712470.1673873708.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1673873708.git.jani.nikula@intel.com>
References: <cover.1673873708.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 5/5] drm/i915/vblank: add and use
 intel_de_read64_2x32() to read vblank counter
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

Add intel_de_read64_2x32() wrapper for the uncore version of the same,
and use it to read the high and low frame registers. Avoid duplicating
code for existing helpers.

The slight functional difference is checking that the entire high
register remains the same across two reads, instead of just the part
we're interested in. This should be of no consequence. (Unless those
bits function as a PRNG.)

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_de.h     |  7 ++++++
 drivers/gpu/drm/i915/display/intel_vblank.c | 25 +++++----------------
 2 files changed, 13 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_de.h b/drivers/gpu/drm/i915/display/intel_de.h
index 3dbd76fdabd6..42552d8c151e 100644
--- a/drivers/gpu/drm/i915/display/intel_de.h
+++ b/drivers/gpu/drm/i915/display/intel_de.h
@@ -22,6 +22,13 @@ intel_de_read8(struct drm_i915_private *i915, i915_reg_t reg)
 	return intel_uncore_read8(&i915->uncore, reg);
 }
 
+static inline u64
+intel_de_read64_2x32(struct drm_i915_private *i915,
+		     i915_reg_t lower_reg, i915_reg_t upper_reg)
+{
+	return intel_uncore_read64_2x32(&i915->uncore, lower_reg, upper_reg);
+}
+
 static inline void
 intel_de_posting_read(struct drm_i915_private *i915, i915_reg_t reg)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
index b2d4d289aaa7..4c83e2320bca 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.c
+++ b/drivers/gpu/drm/i915/display/intel_vblank.c
@@ -68,9 +68,8 @@ u32 i915_get_vblank_counter(struct drm_crtc *crtc)
 	struct drm_vblank_crtc *vblank = &dev_priv->drm.vblank[drm_crtc_index(crtc)];
 	const struct drm_display_mode *mode = &vblank->hwmode;
 	enum pipe pipe = to_intel_crtc(crtc)->pipe;
-	i915_reg_t high_frame, low_frame;
-	u32 high1, high2, low, pixel, vbl_start, hsync_start, htotal;
-	unsigned long irqflags;
+	u32 pixel, vbl_start, hsync_start, htotal;
+	u64 frame;
 
 	/*
 	 * On i965gm TV output the frame counter only works up to
@@ -98,34 +97,22 @@ u32 i915_get_vblank_counter(struct drm_crtc *crtc)
 	/* Start of vblank event occurs at start of hsync */
 	vbl_start -= htotal - hsync_start;
 
-	high_frame = PIPEFRAME(pipe);
-	low_frame = PIPEFRAMEPIXEL(pipe);
-
-	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
-
 	/*
 	 * High & low register fields aren't synchronized, so make sure
 	 * we get a low value that's stable across two reads of the high
 	 * register.
 	 */
-	do {
-		high1 = intel_de_read_fw(dev_priv, high_frame) & PIPE_FRAME_HIGH_MASK;
-		low   = intel_de_read_fw(dev_priv, low_frame);
-		high2 = intel_de_read_fw(dev_priv, high_frame) & PIPE_FRAME_HIGH_MASK;
-	} while (high1 != high2);
-
-	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
+	frame = intel_de_read64_2x32(dev_priv, PIPEFRAMEPIXEL(pipe), PIPEFRAME(pipe));
 
-	high1 >>= PIPE_FRAME_HIGH_SHIFT;
-	pixel = low & PIPE_PIXEL_MASK;
-	low >>= PIPE_FRAME_LOW_SHIFT;
+	pixel = frame & PIPE_PIXEL_MASK;
+	frame = (frame >> PIPE_FRAME_LOW_SHIFT) & 0xffffff;
 
 	/*
 	 * The frame counter increments at beginning of active.
 	 * Cook up a vblank counter by also checking the pixel
 	 * counter against vblank start.
 	 */
-	return (((high1 << 8) | low) + (pixel >= vbl_start)) & 0xffffff;
+	return (frame + (pixel >= vbl_start)) & 0xffffff;
 }
 
 u32 g4x_get_vblank_counter(struct drm_crtc *crtc)
-- 
2.34.1

