Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DC1381E572D
	for <lists+intel-gfx@lfdr.de>; Thu, 28 May 2020 08:02:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5ECA16E3C4;
	Thu, 28 May 2020 06:02:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3CD6E6E3AE
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 May 2020 06:02:32 +0000 (UTC)
IronPort-SDR: 3IYMCXxJa7nRhBFfTBsUYncjdOL1mf2pT9OpSiQ4xISi5pbp2b5r6UuD31bpUffZ3kbcAKAVfi
 SEFP41Agju+g==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2020 23:02:32 -0700
IronPort-SDR: iRRtnhAb3xQ5HgCC6JzzxvfNDSFbzxZcKwhAjaWpjlM/ZG4WspfFqETDUdfrqhDneknywjqC0z
 0/ahVpfkVbmQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,443,1583222400"; d="scan'208";a="291883997"
Received: from unknown (HELO karthik-2012-Client-Platform.iind.intel.com)
 ([10.223.74.217])
 by fmsmga004.fm.intel.com with ESMTP; 27 May 2020 23:02:30 -0700
From: Karthik B S <karthik.b.s@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 28 May 2020 11:09:27 +0530
Message-Id: <20200528053931.29282-2-karthik.b.s@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200528053931.29282-1-karthik.b.s@intel.com>
References: <20200528053931.29282-1-karthik.b.s@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 1/5] drm/i915: Add enable/disable flip done
 and flip done handler
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
Cc: paulo.r.zanoni@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add enable/disable flip done functions and the flip done handler
function which handles the flip done interrupt.

Enable the flip done interrupt in IER.

Enable flip done function is called before writing the
surface address register as the write to this register triggers
the flip done interrupt

Flip done handler is used to send the page flip event as soon as the
surface address is written as per the requirement of async flips.
The interrupt is disabled after the event is sent.

v2: -Change function name from icl_* to skl_* (Paulo)
    -Move flip handler to this patch (Paulo)
    -Remove vblank_put() (Paulo)
    -Enable flip done interrupt for gen9+ only (Paulo)
    -Enable flip done interrupt in power_well_post_enable hook (Paulo)
    -Removed the event check in flip done handler to handle async
     flips without pageflip events.

v3: -Move skl_disable_flip_done out of interrupt handler (Paulo)
    -Make the pending vblank event NULL in the begining of
     flip_done_handler to remove sporadic WARN_ON that is seen.

Signed-off-by: Karthik B S <karthik.b.s@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 10 ++++
 drivers/gpu/drm/i915/i915_irq.c              | 52 ++++++++++++++++++++
 drivers/gpu/drm/i915/i915_irq.h              |  2 +
 3 files changed, 64 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index f40b909952cc..48cc1fc9bc5a 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -15530,6 +15530,13 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 
 	intel_dbuf_pre_plane_update(state);
 
+	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
+		if (new_crtc_state->uapi.async_flip) {
+			skl_enable_flip_done(&crtc->base);
+			break;
+		}
+	}
+
 	/* Now enable the clocks, plane, pipe, and connectors that we set up. */
 	dev_priv->display.commit_modeset_enables(state);
 
@@ -15551,6 +15558,9 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 	drm_atomic_helper_wait_for_flip_done(dev, &state->base);
 
 	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
+		if (new_crtc_state->uapi.async_flip)
+			skl_disable_flip_done(&crtc->base);
+
 		if (new_crtc_state->hw.active &&
 		    !needs_modeset(new_crtc_state) &&
 		    !new_crtc_state->preload_luts &&
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index efdd4c7b8e92..632e7b1deb87 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -1295,6 +1295,23 @@ display_pipe_crc_irq_handler(struct drm_i915_private *dev_priv,
 			     u32 crc4) {}
 #endif
 
+static void flip_done_handler(struct drm_i915_private *dev_priv,
+			      unsigned int pipe)
+{
+	struct intel_crtc *crtc = intel_get_crtc_for_pipe(dev_priv, pipe);
+	struct drm_crtc_state *crtc_state = crtc->base.state;
+	struct drm_pending_vblank_event *e = crtc_state->event;
+	struct drm_device *dev = &dev_priv->drm;
+	unsigned long irqflags;
+
+	crtc_state->event = NULL;
+
+	spin_lock_irqsave(&dev->event_lock, irqflags);
+
+	drm_crtc_send_vblank_event(&crtc->base, e);
+
+	spin_unlock_irqrestore(&dev->event_lock, irqflags);
+}
 
 static void hsw_pipe_crc_irq_handler(struct drm_i915_private *dev_priv,
 				     enum pipe pipe)
@@ -2388,6 +2405,9 @@ gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
 		if (iir & GEN8_PIPE_VBLANK)
 			intel_handle_vblank(dev_priv, pipe);
 
+		if (iir & GEN9_PIPE_PLANE1_FLIP_DONE)
+			flip_done_handler(dev_priv, pipe);
+
 		if (iir & GEN8_PIPE_CDCLK_CRC_DONE)
 			hsw_pipe_crc_irq_handler(dev_priv, pipe);
 
@@ -2669,6 +2689,19 @@ int bdw_enable_vblank(struct drm_crtc *crtc)
 	return 0;
 }
 
+void skl_enable_flip_done(struct drm_crtc *crtc)
+{
+	struct drm_i915_private *dev_priv = to_i915(crtc->dev);
+	enum pipe pipe = to_intel_crtc(crtc)->pipe;
+	unsigned long irqflags;
+
+	spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
+
+	bdw_enable_pipe_irq(dev_priv, pipe, GEN9_PIPE_PLANE1_FLIP_DONE);
+
+	spin_unlock_irqrestore(&dev_priv->irq_lock, irqflags);
+}
+
 /* Called from drm generic code, passed 'crtc' which
  * we use as a pipe index
  */
@@ -2729,6 +2762,19 @@ void bdw_disable_vblank(struct drm_crtc *crtc)
 	spin_unlock_irqrestore(&dev_priv->irq_lock, irqflags);
 }
 
+void skl_disable_flip_done(struct drm_crtc *crtc)
+{
+	struct drm_i915_private *dev_priv = to_i915(crtc->dev);
+	enum pipe pipe = to_intel_crtc(crtc)->pipe;
+	unsigned long irqflags;
+
+	spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
+
+	bdw_disable_pipe_irq(dev_priv, pipe, GEN9_PIPE_PLANE1_FLIP_DONE);
+
+	spin_unlock_irqrestore(&dev_priv->irq_lock, irqflags);
+}
+
 static void ibx_irq_reset(struct drm_i915_private *dev_priv)
 {
 	struct intel_uncore *uncore = &dev_priv->uncore;
@@ -2936,6 +2982,9 @@ void gen8_irq_power_well_post_enable(struct drm_i915_private *dev_priv,
 	u32 extra_ier = GEN8_PIPE_VBLANK | GEN8_PIPE_FIFO_UNDERRUN;
 	enum pipe pipe;
 
+	if (INTEL_GEN(dev_priv) >= 9)
+		extra_ier |= GEN9_PIPE_PLANE1_FLIP_DONE;
+
 	spin_lock_irq(&dev_priv->irq_lock);
 
 	if (!intel_irqs_enabled(dev_priv)) {
@@ -3410,6 +3459,9 @@ static void gen8_de_irq_postinstall(struct drm_i915_private *dev_priv)
 	de_pipe_enables = de_pipe_masked | GEN8_PIPE_VBLANK |
 					   GEN8_PIPE_FIFO_UNDERRUN;
 
+	if (INTEL_GEN(dev_priv) >= 9)
+		de_pipe_enables |= GEN9_PIPE_PLANE1_FLIP_DONE;
+
 	de_port_enables = de_port_masked;
 	if (IS_GEN9_LP(dev_priv))
 		de_port_enables |= BXT_DE_PORT_HOTPLUG_MASK;
diff --git a/drivers/gpu/drm/i915/i915_irq.h b/drivers/gpu/drm/i915/i915_irq.h
index 25f25cd95818..2f10c8135116 100644
--- a/drivers/gpu/drm/i915/i915_irq.h
+++ b/drivers/gpu/drm/i915/i915_irq.h
@@ -112,11 +112,13 @@ int i915gm_enable_vblank(struct drm_crtc *crtc);
 int i965_enable_vblank(struct drm_crtc *crtc);
 int ilk_enable_vblank(struct drm_crtc *crtc);
 int bdw_enable_vblank(struct drm_crtc *crtc);
+void skl_enable_flip_done(struct drm_crtc *crtc);
 void i8xx_disable_vblank(struct drm_crtc *crtc);
 void i915gm_disable_vblank(struct drm_crtc *crtc);
 void i965_disable_vblank(struct drm_crtc *crtc);
 void ilk_disable_vblank(struct drm_crtc *crtc);
 void bdw_disable_vblank(struct drm_crtc *crtc);
+void skl_disable_flip_done(struct drm_crtc *crtc);
 
 void gen2_irq_reset(struct intel_uncore *uncore);
 void gen3_irq_reset(struct intel_uncore *uncore, i915_reg_t imr,
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
