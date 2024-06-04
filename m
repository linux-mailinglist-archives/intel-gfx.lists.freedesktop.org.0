Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CBC5A8FB713
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2024 17:28:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6BC010E4F1;
	Tue,  4 Jun 2024 15:28:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NUlizfiL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2039110E4E8
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2024 15:28:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717514910; x=1749050910;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TJ+XKHxpzsE11h0pJLS/oq/LACwPnvBukeh3gXwzh1c=;
 b=NUlizfiLAo9o8+DkoM1tVypTZF11Yt0u6IrhZTZ3SVOqWXPh3GGcyNGj
 77HT+ZZ4WFJEcPmoIzUQgdTXRE8XWxgFfHyJX1611lVFXJz7X2SWchBZF
 YOX3zu6KAAS8mbPBOLS7ZYuMC4SEiDHVUcMbaKyj8wdstn2X4L6Cs9AD3
 iPA7tJZzQdPxncstG9rjsM5NwQuCPUimbdLL7IoWlhovVFBSKSj2VR3vX
 CgoHFjru1hjReZQemTiUORICxzRQJW8K0rntDpiRCsLHm7cnNA9ULkVD+
 YfC2piqhPeucG06xxxDhYq5WNNIf94Oa9Zc/UtBsL3Cxwbzj1cJscF/6Q g==;
X-CSE-ConnectionGUID: m6bl99O6TS2eAxDcNo8Nsg==
X-CSE-MsgGUID: xHwwQj7tQ3GaCtDvqmmgww==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="17009069"
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="17009069"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:28:29 -0700
X-CSE-ConnectionGUID: Yn0U/CZuRf2h277L/XqYZg==
X-CSE-MsgGUID: a7jeqPBZR+iHl9mrCcWP0Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="37742162"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.123])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:28:28 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 25/65] drm/i915: pass dev_priv explicitly to DSPARB
Date: Tue,  4 Jun 2024 18:25:43 +0300
Message-Id: <9e8dc8978ce3122a0e9c53778be547875a9ae6d8.1717514638.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1717514638.git.jani.nikula@intel.com>
References: <cover.1717514638.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Avoid the implicit dev_priv local variable use, and pass dev_priv
explicitly to the DSPARB register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_wm.c | 22 ++++++++++++----------
 drivers/gpu/drm/i915/i915_reg.h        |  2 +-
 drivers/gpu/drm/i915/i915_suspend.c    |  6 ++++--
 3 files changed, 17 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i915/display/i9xx_wm.c
index 628e7192ebc9..fd14010b4cc3 100644
--- a/drivers/gpu/drm/i915/display/i9xx_wm.c
+++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
@@ -269,13 +269,15 @@ static void vlv_get_fifo_size(struct intel_crtc_state *crtc_state)
 
 	switch (pipe) {
 	case PIPE_A:
-		dsparb = intel_uncore_read(&dev_priv->uncore, DSPARB);
+		dsparb = intel_uncore_read(&dev_priv->uncore,
+					   DSPARB(dev_priv));
 		dsparb2 = intel_uncore_read(&dev_priv->uncore, DSPARB2);
 		sprite0_start = VLV_FIFO_START(dsparb, dsparb2, 0, 0);
 		sprite1_start = VLV_FIFO_START(dsparb, dsparb2, 8, 4);
 		break;
 	case PIPE_B:
-		dsparb = intel_uncore_read(&dev_priv->uncore, DSPARB);
+		dsparb = intel_uncore_read(&dev_priv->uncore,
+					   DSPARB(dev_priv));
 		dsparb2 = intel_uncore_read(&dev_priv->uncore, DSPARB2);
 		sprite0_start = VLV_FIFO_START(dsparb, dsparb2, 16, 8);
 		sprite1_start = VLV_FIFO_START(dsparb, dsparb2, 24, 12);
@@ -300,7 +302,7 @@ static void vlv_get_fifo_size(struct intel_crtc_state *crtc_state)
 static int i9xx_get_fifo_size(struct drm_i915_private *dev_priv,
 			      enum i9xx_plane_id i9xx_plane)
 {
-	u32 dsparb = intel_uncore_read(&dev_priv->uncore, DSPARB);
+	u32 dsparb = intel_uncore_read(&dev_priv->uncore, DSPARB(dev_priv));
 	int size;
 
 	size = dsparb & 0x7f;
@@ -316,7 +318,7 @@ static int i9xx_get_fifo_size(struct drm_i915_private *dev_priv,
 static int i830_get_fifo_size(struct drm_i915_private *dev_priv,
 			      enum i9xx_plane_id i9xx_plane)
 {
-	u32 dsparb = intel_uncore_read(&dev_priv->uncore, DSPARB);
+	u32 dsparb = intel_uncore_read(&dev_priv->uncore, DSPARB(dev_priv));
 	int size;
 
 	size = dsparb & 0x1ff;
@@ -333,7 +335,7 @@ static int i830_get_fifo_size(struct drm_i915_private *dev_priv,
 static int i845_get_fifo_size(struct drm_i915_private *dev_priv,
 			      enum i9xx_plane_id i9xx_plane)
 {
-	u32 dsparb = intel_uncore_read(&dev_priv->uncore, DSPARB);
+	u32 dsparb = intel_uncore_read(&dev_priv->uncore, DSPARB(dev_priv));
 	int size;
 
 	size = dsparb & 0x7f;
@@ -1787,7 +1789,7 @@ static void vlv_atomic_update_fifo(struct intel_atomic_state *state,
 
 	switch (crtc->pipe) {
 	case PIPE_A:
-		dsparb = intel_uncore_read_fw(uncore, DSPARB);
+		dsparb = intel_uncore_read_fw(uncore, DSPARB(dev_priv));
 		dsparb2 = intel_uncore_read_fw(uncore, DSPARB2);
 
 		dsparb &= ~(VLV_FIFO(SPRITEA, 0xff) |
@@ -1800,11 +1802,11 @@ static void vlv_atomic_update_fifo(struct intel_atomic_state *state,
 		dsparb2 |= (VLV_FIFO(SPRITEA_HI, sprite0_start >> 8) |
 			   VLV_FIFO(SPRITEB_HI, sprite1_start >> 8));
 
-		intel_uncore_write_fw(uncore, DSPARB, dsparb);
+		intel_uncore_write_fw(uncore, DSPARB(dev_priv), dsparb);
 		intel_uncore_write_fw(uncore, DSPARB2, dsparb2);
 		break;
 	case PIPE_B:
-		dsparb = intel_uncore_read_fw(uncore, DSPARB);
+		dsparb = intel_uncore_read_fw(uncore, DSPARB(dev_priv));
 		dsparb2 = intel_uncore_read_fw(uncore, DSPARB2);
 
 		dsparb &= ~(VLV_FIFO(SPRITEC, 0xff) |
@@ -1817,7 +1819,7 @@ static void vlv_atomic_update_fifo(struct intel_atomic_state *state,
 		dsparb2 |= (VLV_FIFO(SPRITEC_HI, sprite0_start >> 8) |
 			   VLV_FIFO(SPRITED_HI, sprite1_start >> 8));
 
-		intel_uncore_write_fw(uncore, DSPARB, dsparb);
+		intel_uncore_write_fw(uncore, DSPARB(dev_priv), dsparb);
 		intel_uncore_write_fw(uncore, DSPARB2, dsparb2);
 		break;
 	case PIPE_C:
@@ -1841,7 +1843,7 @@ static void vlv_atomic_update_fifo(struct intel_atomic_state *state,
 		break;
 	}
 
-	intel_uncore_posting_read_fw(uncore, DSPARB);
+	intel_uncore_posting_read_fw(uncore, DSPARB(dev_priv));
 
 	spin_unlock(&uncore->lock);
 }
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index cbe109973f57..75223b8cb575 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1984,7 +1984,7 @@
 #define   SPRITEA_INVALID_GTT_STATUS			REG_BIT(1)
 #define   PLANEA_INVALID_GTT_STATUS			REG_BIT(0)
 
-#define DSPARB			_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x70030)
+#define DSPARB(dev_priv)			_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x70030)
 #define   DSPARB_CSTART_MASK	(0x7f << 7)
 #define   DSPARB_CSTART_SHIFT	7
 #define   DSPARB_BSTART_MASK	(0x7f)
diff --git a/drivers/gpu/drm/i915/i915_suspend.c b/drivers/gpu/drm/i915/i915_suspend.c
index 81def10eb58f..bc449613c848 100644
--- a/drivers/gpu/drm/i915/i915_suspend.c
+++ b/drivers/gpu/drm/i915/i915_suspend.c
@@ -92,7 +92,8 @@ void i915_save_display(struct drm_i915_private *dev_priv)
 
 	/* Display arbitration control */
 	if (GRAPHICS_VER(dev_priv) <= 4)
-		dev_priv->regfile.saveDSPARB = intel_de_read(dev_priv, DSPARB);
+		dev_priv->regfile.saveDSPARB = intel_de_read(dev_priv,
+							     DSPARB(dev_priv));
 
 	if (GRAPHICS_VER(dev_priv) == 4)
 		pci_read_config_word(pdev, GCDGMBUS,
@@ -116,7 +117,8 @@ void i915_restore_display(struct drm_i915_private *dev_priv)
 
 	/* Display arbitration */
 	if (GRAPHICS_VER(dev_priv) <= 4)
-		intel_de_write(dev_priv, DSPARB, dev_priv->regfile.saveDSPARB);
+		intel_de_write(dev_priv, DSPARB(dev_priv),
+			       dev_priv->regfile.saveDSPARB);
 
 	intel_vga_redisable(dev_priv);
 
-- 
2.39.2

