Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CEB3C465195
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Dec 2021 16:26:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DE116ECE8;
	Wed,  1 Dec 2021 15:26:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 886696ECD9
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Dec 2021 15:26:25 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10184"; a="236422441"
X-IronPort-AV: E=Sophos;i="5.87,278,1631602800"; d="scan'208";a="236422441"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2021 07:26:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,278,1631602800"; d="scan'208";a="602189171"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga002.fm.intel.com with SMTP; 01 Dec 2021 07:26:22 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 01 Dec 2021 17:26:21 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Dec 2021 17:25:48 +0200
Message-Id: <20211201152552.7821-11-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211201152552.7821-1-ville.syrjala@linux.intel.com>
References: <20211201152552.7821-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 10/14] drm/i915: Clean up g4x+ sprite plane
 registers
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

Use REG_BIT() & co. to polish the g4x+ sprite plane registers.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_sprite.c | 12 ++--
 drivers/gpu/drm/i915/i915_reg.h             | 73 +++++++++++++--------
 2 files changed, 53 insertions(+), 32 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/drm/i915/display/intel_sprite.c
index eb9ce96c030f..6f2a560700ce 100644
--- a/drivers/gpu/drm/i915/display/intel_sprite.c
+++ b/drivers/gpu/drm/i915/display/intel_sprite.c
@@ -1054,7 +1054,7 @@ static u32 g4x_sprite_ctl_crtc(const struct intel_crtc_state *crtc_state)
 	u32 dvscntr = 0;
 
 	if (crtc_state->gamma_enable)
-		dvscntr |= DVS_GAMMA_ENABLE;
+		dvscntr |= DVS_PIPE_GAMMA_ENABLE;
 
 	if (crtc_state->csc_enable)
 		dvscntr |= DVS_PIPE_CSC_ENABLE;
@@ -1206,14 +1206,18 @@ g4x_sprite_update_noarm(struct intel_plane *plane,
 	unsigned long irqflags;
 
 	if (crtc_w != src_w || crtc_h != src_h)
-		dvsscale = DVS_SCALE_ENABLE | ((src_w - 1) << 16) | (src_h - 1);
+		dvsscale = DVS_SCALE_ENABLE |
+			DVS_SRC_WIDTH(src_w - 1) |
+			DVS_SRC_HEIGHT(src_h - 1);
 
 	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
 
 	intel_de_write_fw(dev_priv, DVSSTRIDE(pipe),
 			  plane_state->view.color_plane[0].mapping_stride);
-	intel_de_write_fw(dev_priv, DVSPOS(pipe), (crtc_y << 16) | crtc_x);
-	intel_de_write_fw(dev_priv, DVSSIZE(pipe), ((crtc_h - 1) << 16) | (crtc_w - 1));
+	intel_de_write_fw(dev_priv, DVSPOS(pipe),
+			  DVS_POS_Y(crtc_y) | DVS_POS_X(crtc_x));
+	intel_de_write_fw(dev_priv, DVSSIZE(pipe),
+			  DVS_HEIGHT(crtc_h - 1) | DVS_WIDTH(crtc_w - 1));
 	intel_de_write_fw(dev_priv, DVSSCALE(pipe), dvsscale);
 
 	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 4d61e7f2ee7c..d215cad95fe8 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -6970,46 +6970,63 @@ enum {
 
 /* Sprite A control */
 #define _DVSACNTR		0x72180
-#define   DVS_ENABLE		(1 << 31)
-#define   DVS_GAMMA_ENABLE	(1 << 30)
-#define   DVS_YUV_RANGE_CORRECTION_DISABLE	(1 << 27)
-#define   DVS_PIXFORMAT_MASK	(3 << 25)
-#define   DVS_FORMAT_YUV422	(0 << 25)
-#define   DVS_FORMAT_RGBX101010	(1 << 25)
-#define   DVS_FORMAT_RGBX888	(2 << 25)
-#define   DVS_FORMAT_RGBX161616	(3 << 25)
-#define   DVS_PIPE_CSC_ENABLE   (1 << 24)
-#define   DVS_SOURCE_KEY	(1 << 22)
-#define   DVS_RGB_ORDER_XBGR	(1 << 20)
-#define   DVS_YUV_FORMAT_BT709	(1 << 18)
-#define   DVS_YUV_ORDER_MASK	(3 << 16)
-#define   DVS_YUV_ORDER_YUYV	(0 << 16)
-#define   DVS_YUV_ORDER_UYVY	(1 << 16)
-#define   DVS_YUV_ORDER_YVYU	(2 << 16)
-#define   DVS_YUV_ORDER_VYUY	(3 << 16)
-#define   DVS_ROTATE_180	(1 << 15)
-#define   DVS_DEST_KEY		(1 << 2)
-#define   DVS_TRICKLE_FEED_DISABLE (1 << 14)
-#define   DVS_TILED		(1 << 10)
+#define   DVS_ENABLE			REG_BIT(31)
+#define   DVS_PIPE_GAMMA_ENABLE		REG_BIT(30)
+#define   DVS_YUV_RANGE_CORRECTION_DISABLE	REG_BIT(27)
+#define   DVS_FORMAT_MASK		REG_GENMASK(26, 25)
+#define   DVS_FORMAT_YUV422		REG_FIELD_PREP(DVS_FORMAT_MASK, 0)
+#define   DVS_FORMAT_RGBX101010		REG_FIELD_PREP(DVS_FORMAT_MASK, 1)
+#define   DVS_FORMAT_RGBX888		REG_FIELD_PREP(DVS_FORMAT_MASK, 2)
+#define   DVS_FORMAT_RGBX161616		REG_FIELD_PREP(DVS_FORMAT_MASK, 3)
+#define   DVS_PIPE_CSC_ENABLE		REG_BIT(24)
+#define   DVS_SOURCE_KEY		REG_BIT(22)
+#define   DVS_RGB_ORDER_XBGR		REG_BIT(20)
+#define   DVS_YUV_FORMAT_BT709		REG_BIT(18)
+#define   DVS_YUV_ORDER_MASK		REG_GENMASK(17, 16)
+#define   DVS_YUV_ORDER_YUYV		REG_FIELD_PREP(DVS_YUV_ORDER_MASK, 0)
+#define   DVS_YUV_ORDER_UYVY		REG_FIELD_PREP(DVS_YUV_ORDER_MASK, 1)
+#define   DVS_YUV_ORDER_YVYU		REG_FIELD_PREP(DVS_YUV_ORDER_MASK, 2)
+#define   DVS_YUV_ORDER_VYUY		REG_FIELD_PREP(DVS_YUV_ORDER_MASK, 3)
+#define   DVS_ROTATE_180		REG_BIT(15)
+#define   DVS_DEST_KEY			REG_BIT(2)
+#define   DVS_TRICKLE_FEED_DISABLE	REG_BIT(14)
+#define   DVS_TILED			REG_BIT(10)
 #define _DVSALINOFF		0x72184
 #define _DVSASTRIDE		0x72188
 #define _DVSAPOS		0x7218c
+#define   DVS_POS_Y_MASK		REG_GENMASK(31, 16)
+#define   DVS_POS_Y(y)			REG_FIELD_PREP(DVS_POS_Y_MASK, (y))
+#define   DVS_POS_X_MASK		REG_GENMASK(15, 0)
+#define   DVS_POS_X(x)			REG_FIELD_PREP(DVS_POS_X_MASK, (x))
 #define _DVSASIZE		0x72190
+#define   DVS_HEIGHT_MASK		REG_GENMASK(31, 16)
+#define   DVS_HEIGHT(h)			REG_FIELD_PREP(DVS_HEIGHT_MASK, (h))
+#define   DVS_WIDTH_MASK		REG_GENMASK(15, 0)
+#define   DVS_WIDTH(w)			REG_FIELD_PREP(DVS_WIDTH_MASK, (w))
 #define _DVSAKEYVAL		0x72194
 #define _DVSAKEYMSK		0x72198
 #define _DVSASURF		0x7219c
+#define   DVS_ADDR_MASK			REG_GENMASK(31, 12)
 #define _DVSAKEYMAXVAL		0x721a0
 #define _DVSATILEOFF		0x721a4
+#define   DVS_OFFSET_Y_MASK		REG_GENMASK(31, 16)
+#define   DVS_OFFSET_Y(y)		REG_FIELD_PREP(DVS_OFFSET_Y_MASK, (y))
+#define   DVS_OFFSET_X_MASK		REG_GENMASK(15, 0)
+#define   DVS_OFFSET_X(x)		REG_FIELD_PREP(DVS_OFFSET_X_MASK, (x))
 #define _DVSASURFLIVE		0x721ac
 #define _DVSAGAMC_G4X		0x721e0 /* g4x */
 #define _DVSASCALE		0x72204
-#define   DVS_SCALE_ENABLE	(1 << 31)
-#define   DVS_FILTER_MASK	(3 << 29)
-#define   DVS_FILTER_MEDIUM	(0 << 29)
-#define   DVS_FILTER_ENHANCING	(1 << 29)
-#define   DVS_FILTER_SOFTENING	(2 << 29)
-#define   DVS_VERTICAL_OFFSET_HALF (1 << 28) /* must be enabled below */
-#define   DVS_VERTICAL_OFFSET_ENABLE (1 << 27)
+#define   DVS_SCALE_ENABLE		REG_BIT(31)
+#define   DVS_FILTER_MASK		REG_GENMASK(30, 29)
+#define   DVS_FILTER_MEDIUM		REG_FIELD_PREP(DVS_FILTER_MASK, 0)
+#define   DVS_FILTER_ENHANCING		REG_FIELD_PREP(DVS_FILTER_MASK, 1)
+#define   DVS_FILTER_SOFTENING		REG_FIELD_PREP(DVS_FILTER_MASK, 2)
+#define   DVS_VERTICAL_OFFSET_HALF	REG_BIT(28) /* must be enabled below */
+#define   DVS_VERTICAL_OFFSET_ENABLE	REG_BIT(27)
+#define   DVS_SRC_WIDTH_MASK		REG_GENMASK(26, 16)
+#define   DVS_SRC_WIDTH(w)		REG_FIELD_PREP(DVS_SRC_WIDTH_MASK, (w))
+#define   DVS_SRC_HEIGHT_MASK		REG_GENMASK(10, 0)
+#define   DVS_SRC_HEIGHT(h)		REG_FIELD_PREP(DVS_SRC_HEIGHT_MASK, (h))
 #define _DVSAGAMC_ILK		0x72300 /* ilk/snb */
 #define _DVSAGAMCMAX_ILK	0x72340 /* ilk/snb */
 
-- 
2.32.0

