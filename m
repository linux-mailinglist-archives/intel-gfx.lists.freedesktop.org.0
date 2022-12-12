Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BCC1A64A354
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Dec 2022 15:30:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72F6510E195;
	Mon, 12 Dec 2022 14:30:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89EAA10E1DD
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Dec 2022 14:29:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670855394; x=1702391394;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CjRJZnbcl1G10Z7UksrlZrHVjtU4R3vloApygz46UTY=;
 b=iNaQHfd/vbpm5LM2jXdYzHMugtDyKp+/+KPhMGV8JdTR9jungzOUnilq
 9VxkuUtj1hnUnROlgF/BWUP/Lk9dXrP42Qu6ClzmE+ke1T1kkB/g4PYhr
 XwhFPv8kN6RsTn6aPH2r/ydzpM2VaKbDtnIeXQ71vGr4z+DoMp2FfoT+V
 SBLBD4ximQu+GN/6i2iAcqiCrKS4FbebFr3UjxbPY7D7T5wUTOGcEtVxY
 vgyU59wX4IDelWipTVy56oMB0fH0clQcI3/yg/MV8dgKy3P9n9xeyv5RT
 upINWiXpryUFtxrb01lWrOESVfNqRhef8hkY7hSVGfKT3HOhH6T/JjWFG w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10558"; a="316558464"
X-IronPort-AV: E=Sophos;i="5.96,238,1665471600"; d="scan'208";a="316558464"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2022 06:29:54 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10558"; a="790511236"
X-IronPort-AV: E=Sophos;i="5.96,238,1665471600"; d="scan'208";a="790511236"
Received: from sshumihi-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.5.95])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2022 06:29:53 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Dec 2022 16:29:24 +0200
Message-Id: <e203a558306dffcc4239505e5af88fdde7a78ae5.1670855299.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1670855299.git.jani.nikula@intel.com>
References: <cover.1670855299.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 6/7] drm/i915/vblank: add and use
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
index cf1215631b27..729c39180469 100644
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

