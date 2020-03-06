Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 77F7617BC06
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Mar 2020 12:46:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 652046ECDF;
	Fri,  6 Mar 2020 11:46:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 604776ECDF
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Mar 2020 11:46:16 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Mar 2020 03:46:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,521,1574150400"; d="scan'208";a="241148745"
Received: from unknown (HELO karthik-2012-Client-Platform.iind.intel.com)
 ([10.223.74.208])
 by orsmga003.jf.intel.com with ESMTP; 06 Mar 2020 03:46:13 -0800
From: Karthik B S <karthik.b.s@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  6 Mar 2020 17:09:21 +0530
Message-Id: <20200306113927.16904-2-karthik.b.s@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200306113927.16904-1-karthik.b.s@intel.com>
References: <20200306113927.16904-1-karthik.b.s@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 1/7] drm/i915: Define flip done functions and
 enable IER
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

Add enable/disable flip done functions and enable
the flip done interrupt in IER.

Flip done interrupt is used to send the page flip event as soon as the
surface address is written as per the requirement of async flips.

Signed-off-by: Karthik B S <karthik.b.s@intel.com>
---
 drivers/gpu/drm/i915/i915_irq.c | 37 ++++++++++++++++++++++++++++++++-
 drivers/gpu/drm/i915/i915_irq.h |  2 ++
 2 files changed, 38 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index ecf07b0faad2..5955e737a45d 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -2626,6 +2626,27 @@ int bdw_enable_vblank(struct drm_crtc *crtc)
 	return 0;
 }
 
+void icl_enable_flip_done(struct drm_crtc *crtc)
+{
+	struct drm_i915_private *dev_priv = to_i915(crtc->dev);
+	enum pipe pipe = to_intel_crtc(crtc)->pipe;
+	struct drm_vblank_crtc *vblank = &dev_priv->drm.vblank[pipe];
+	unsigned long irqflags;
+
+	/* Make sure that vblank is not enabled, as we are already sending
+	 * the page flip event in the flip_done_handler.
+	 */
+	if (atomic_read(&vblank->refcount) != 0)
+		drm_crtc_vblank_put(crtc);
+
+	spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
+
+	bdw_enable_pipe_irq(dev_priv, pipe, GEN9_PIPE_PLANE1_FLIP_DONE);
+
+	spin_unlock_irqrestore(&dev_priv->irq_lock, irqflags);
+
+}
+
 /* Called from drm generic code, passed 'crtc' which
  * we use as a pipe index
  */
@@ -2686,6 +2707,20 @@ void bdw_disable_vblank(struct drm_crtc *crtc)
 	spin_unlock_irqrestore(&dev_priv->irq_lock, irqflags);
 }
 
+
+void icl_disable_flip_done(struct drm_crtc *crtc)
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
@@ -3375,7 +3410,7 @@ static void gen8_de_irq_postinstall(struct drm_i915_private *dev_priv)
 		de_port_masked |= CNL_AUX_CHANNEL_F;
 
 	de_pipe_enables = de_pipe_masked | GEN8_PIPE_VBLANK |
-					   GEN8_PIPE_FIFO_UNDERRUN;
+			  GEN8_PIPE_FIFO_UNDERRUN | GEN9_PIPE_PLANE1_FLIP_DONE;
 
 	de_port_enables = de_port_masked;
 	if (IS_GEN9_LP(dev_priv))
diff --git a/drivers/gpu/drm/i915/i915_irq.h b/drivers/gpu/drm/i915/i915_irq.h
index 812c47a9c2d6..6fc319980dd3 100644
--- a/drivers/gpu/drm/i915/i915_irq.h
+++ b/drivers/gpu/drm/i915/i915_irq.h
@@ -114,11 +114,13 @@ int i915gm_enable_vblank(struct drm_crtc *crtc);
 int i965_enable_vblank(struct drm_crtc *crtc);
 int ilk_enable_vblank(struct drm_crtc *crtc);
 int bdw_enable_vblank(struct drm_crtc *crtc);
+void icl_enable_flip_done(struct drm_crtc *crtc);
 void i8xx_disable_vblank(struct drm_crtc *crtc);
 void i915gm_disable_vblank(struct drm_crtc *crtc);
 void i965_disable_vblank(struct drm_crtc *crtc);
 void ilk_disable_vblank(struct drm_crtc *crtc);
 void bdw_disable_vblank(struct drm_crtc *crtc);
+void icl_disable_flip_done(struct drm_crtc *crtc);
 
 void gen2_irq_reset(struct intel_uncore *uncore);
 void gen3_irq_reset(struct intel_uncore *uncore, i915_reg_t imr,
-- 
2.22.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
