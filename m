Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F88D98C65D
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Oct 2024 21:58:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DAF5510E676;
	Tue,  1 Oct 2024 19:58:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Mko1PLUY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB72F10E676
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Oct 2024 19:58:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727812692; x=1759348692;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=2NclccO89l5xJFaKyu/Jdyzw1RumdLxjqMPzzFHdhaE=;
 b=Mko1PLUYp0W+pW3zTsVmJ493eq+n4Nhw+RlkleQJoIcEVz4rwrOG1SLL
 631R98eqifV5p+QQ/aN4G1ZkTfkaYahi2a6qQh39hqW4Y78r24yzWYQiP
 4k1pW0QBJzYAgBedELfltAlR2H6oYB2wYx9r0R+TkfLqJfj46vnhb7nwv
 13ebgq3cHtWmlHi/ivpzAkJAY9r9kRiIEBVTSO0tUfMzUKRV19kKkW261
 U3Eg5TU7WXts72EymXxMeCuqTZlYKccoWWPR110Cz9qIUgdgm8ccHH3cn
 ZZhnpMoYAsSvg5hCzJD89RKNokGzpjpxN3o1mcBj6l9ZO/Mo9uywPTMC4 Q==;
X-CSE-ConnectionGUID: /0j5cGpgQoSefS7CRDLeWA==
X-CSE-MsgGUID: FjC9EnAlQ++i4rHDBkQFgQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11212"; a="26852033"
X-IronPort-AV: E=Sophos;i="6.11,169,1725346800"; d="scan'208";a="26852033"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2024 12:58:11 -0700
X-CSE-ConnectionGUID: 3NMn84QCRpOYQIT0n0lubg==
X-CSE-MsgGUID: vqoi8FFsS4SlSn11jfllhQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,169,1725346800"; d="scan'208";a="73899362"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 01 Oct 2024 12:58:09 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 01 Oct 2024 22:58:09 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 2/4] drm/i915/irq: Pair up the vblank enable/disable functions
Date: Tue,  1 Oct 2024 22:58:01 +0300
Message-ID: <20241001195803.3371-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241001195803.3371-1-ville.syrjala@linux.intel.com>
References: <20241001195803.3371-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

The current way of organizing all .vblank_enable() functions
before all .vblabk_disable() functions is infuriating. It's
really hard to compare the enable() vs. disable() for the
same platform to make sure they properly mirror each other.

Reorganize the functions so that the enable+disable for
the same platoform are next to each.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../gpu/drm/i915/display/intel_display_irq.c  | 92 +++++++++----------
 1 file changed, 46 insertions(+), 46 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index 0ea1fcc61dde..43a0b3565bc8 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -1272,6 +1272,17 @@ int i8xx_enable_vblank(struct drm_crtc *crtc)
 	return 0;
 }
 
+void i8xx_disable_vblank(struct drm_crtc *crtc)
+{
+	struct drm_i915_private *dev_priv = to_i915(crtc->dev);
+	enum pipe pipe = to_intel_crtc(crtc)->pipe;
+	unsigned long irqflags;
+
+	spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
+	i915_disable_pipestat(dev_priv, pipe, PIPE_VBLANK_INTERRUPT_STATUS);
+	spin_unlock_irqrestore(&dev_priv->irq_lock, irqflags);
+}
+
 int i915gm_enable_vblank(struct drm_crtc *crtc)
 {
 	struct drm_i915_private *i915 = to_i915(crtc->dev);
@@ -1288,6 +1299,16 @@ int i915gm_enable_vblank(struct drm_crtc *crtc)
 	return i8xx_enable_vblank(crtc);
 }
 
+void i915gm_disable_vblank(struct drm_crtc *crtc)
+{
+	struct drm_i915_private *i915 = to_i915(crtc->dev);
+
+	i8xx_disable_vblank(crtc);
+
+	if (--i915->display.irq.vblank_enabled == 0)
+		intel_uncore_write(&i915->uncore, SCPD0, _MASKED_BIT_DISABLE(CSTATE_RENDER_CLOCK_GATE_DISABLE));
+}
+
 int i965_enable_vblank(struct drm_crtc *crtc)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc->dev);
@@ -1302,6 +1323,18 @@ int i965_enable_vblank(struct drm_crtc *crtc)
 	return 0;
 }
 
+void i965_disable_vblank(struct drm_crtc *crtc)
+{
+	struct drm_i915_private *dev_priv = to_i915(crtc->dev);
+	enum pipe pipe = to_intel_crtc(crtc)->pipe;
+	unsigned long irqflags;
+
+	spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
+	i915_disable_pipestat(dev_priv, pipe,
+			      PIPE_START_VBLANK_INTERRUPT_STATUS);
+	spin_unlock_irqrestore(&dev_priv->irq_lock, irqflags);
+}
+
 int ilk_enable_vblank(struct drm_crtc *crtc)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc->dev);
@@ -1323,6 +1356,19 @@ int ilk_enable_vblank(struct drm_crtc *crtc)
 	return 0;
 }
 
+void ilk_disable_vblank(struct drm_crtc *crtc)
+{
+	struct drm_i915_private *dev_priv = to_i915(crtc->dev);
+	enum pipe pipe = to_intel_crtc(crtc)->pipe;
+	unsigned long irqflags;
+	u32 bit = DISPLAY_VER(dev_priv) >= 7 ?
+		DE_PIPE_VBLANK_IVB(pipe) : DE_PIPE_VBLANK(pipe);
+
+	spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
+	ilk_disable_display_irq(dev_priv, bit);
+	spin_unlock_irqrestore(&dev_priv->irq_lock, irqflags);
+}
+
 static bool gen11_dsi_configure_te(struct intel_crtc *intel_crtc,
 				   bool enable)
 {
@@ -1391,52 +1437,6 @@ int bdw_enable_vblank(struct drm_crtc *_crtc)
 	return 0;
 }
 
-void i8xx_disable_vblank(struct drm_crtc *crtc)
-{
-	struct drm_i915_private *dev_priv = to_i915(crtc->dev);
-	enum pipe pipe = to_intel_crtc(crtc)->pipe;
-	unsigned long irqflags;
-
-	spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
-	i915_disable_pipestat(dev_priv, pipe, PIPE_VBLANK_INTERRUPT_STATUS);
-	spin_unlock_irqrestore(&dev_priv->irq_lock, irqflags);
-}
-
-void i915gm_disable_vblank(struct drm_crtc *crtc)
-{
-	struct drm_i915_private *i915 = to_i915(crtc->dev);
-
-	i8xx_disable_vblank(crtc);
-
-	if (--i915->display.irq.vblank_enabled == 0)
-		intel_uncore_write(&i915->uncore, SCPD0, _MASKED_BIT_DISABLE(CSTATE_RENDER_CLOCK_GATE_DISABLE));
-}
-
-void i965_disable_vblank(struct drm_crtc *crtc)
-{
-	struct drm_i915_private *dev_priv = to_i915(crtc->dev);
-	enum pipe pipe = to_intel_crtc(crtc)->pipe;
-	unsigned long irqflags;
-
-	spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
-	i915_disable_pipestat(dev_priv, pipe,
-			      PIPE_START_VBLANK_INTERRUPT_STATUS);
-	spin_unlock_irqrestore(&dev_priv->irq_lock, irqflags);
-}
-
-void ilk_disable_vblank(struct drm_crtc *crtc)
-{
-	struct drm_i915_private *dev_priv = to_i915(crtc->dev);
-	enum pipe pipe = to_intel_crtc(crtc)->pipe;
-	unsigned long irqflags;
-	u32 bit = DISPLAY_VER(dev_priv) >= 7 ?
-		DE_PIPE_VBLANK_IVB(pipe) : DE_PIPE_VBLANK(pipe);
-
-	spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
-	ilk_disable_display_irq(dev_priv, bit);
-	spin_unlock_irqrestore(&dev_priv->irq_lock, irqflags);
-}
-
 void bdw_disable_vblank(struct drm_crtc *_crtc)
 {
 	struct intel_crtc *crtc = to_intel_crtc(_crtc);
-- 
2.45.2

