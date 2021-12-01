Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D794465194
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Dec 2021 16:26:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BE086ECE9;
	Wed,  1 Dec 2021 15:26:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D9BEF6ECD9
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Dec 2021 15:26:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10184"; a="299867001"
X-IronPort-AV: E=Sophos;i="5.87,278,1631602800"; d="scan'208";a="299867001"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2021 07:26:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,278,1631602800"; d="scan'208";a="596355378"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by FMSMGA003.fm.intel.com with SMTP; 01 Dec 2021 07:26:16 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 01 Dec 2021 17:26:16 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Dec 2021 17:25:46 +0200
Message-Id: <20211201152552.7821-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211201152552.7821-1-ville.syrjala@linux.intel.com>
References: <20211201152552.7821-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 08/14] drm/i915: Clean up ivb+ sprite plane
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

Use REG_BIT() & co. to polish the ivb+ sprite plane registers.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_sprite.c | 20 +++--
 drivers/gpu/drm/i915/i915_reg.h             | 81 +++++++++++++--------
 2 files changed, 62 insertions(+), 39 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/drm/i915/display/intel_sprite.c
index 2067a7bca4a8..70083d04a9fd 100644
--- a/drivers/gpu/drm/i915/display/intel_sprite.c
+++ b/drivers/gpu/drm/i915/display/intel_sprite.c
@@ -700,7 +700,7 @@ static u32 ivb_sprite_ctl_crtc(const struct intel_crtc_state *crtc_state)
 	u32 sprctl = 0;
 
 	if (crtc_state->gamma_enable)
-		sprctl |= SPRITE_GAMMA_ENABLE;
+		sprctl |= SPRITE_PIPE_GAMMA_ENABLE;
 
 	if (crtc_state->csc_enable)
 		sprctl |= SPRITE_PIPE_CSC_ENABLE;
@@ -770,7 +770,7 @@ static u32 ivb_sprite_ctl(const struct intel_crtc_state *crtc_state,
 	}
 
 	if (!ivb_need_sprite_gamma(plane_state))
-		sprctl |= SPRITE_INT_GAMMA_DISABLE;
+		sprctl |= SPRITE_PLANE_GAMMA_DISABLE;
 
 	if (plane_state->hw.color_encoding == DRM_COLOR_YCBCR_BT709)
 		sprctl |= SPRITE_YUV_TO_RGB_CSC_FORMAT_BT709;
@@ -863,14 +863,18 @@ ivb_sprite_update_noarm(struct intel_plane *plane,
 	unsigned long irqflags;
 
 	if (crtc_w != src_w || crtc_h != src_h)
-		sprscale = SPRITE_SCALE_ENABLE | ((src_w - 1) << 16) | (src_h - 1);
+		sprscale = SPRITE_SCALE_ENABLE |
+			SPRITE_SRC_WIDTH(src_w - 1) |
+			SPRITE_SRC_HEIGHT(src_h - 1);
 
 	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
 
 	intel_de_write_fw(dev_priv, SPRSTRIDE(pipe),
 			  plane_state->view.color_plane[0].mapping_stride);
-	intel_de_write_fw(dev_priv, SPRPOS(pipe), (crtc_y << 16) | crtc_x);
-	intel_de_write_fw(dev_priv, SPRSIZE(pipe), ((crtc_h - 1) << 16) | (crtc_w - 1));
+	intel_de_write_fw(dev_priv, SPRPOS(pipe),
+			  SPRITE_POS_Y(crtc_y) | SPRITE_POS_X(crtc_x));
+	intel_de_write_fw(dev_priv, SPRSIZE(pipe),
+			  SPRITE_HEIGHT(crtc_h - 1) | SPRITE_WIDTH(crtc_w - 1));
 	if (IS_IVYBRIDGE(dev_priv))
 		intel_de_write_fw(dev_priv, SPRSCALE(pipe), sprscale);
 
@@ -907,10 +911,12 @@ ivb_sprite_update_arm(struct intel_plane *plane,
 	/* HSW consolidates SPRTILEOFF and SPRLINOFF into a single SPROFFSET
 	 * register */
 	if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv)) {
-		intel_de_write_fw(dev_priv, SPROFFSET(pipe), (y << 16) | x);
+		intel_de_write_fw(dev_priv, SPROFFSET(pipe),
+				  SPRITE_OFFSET_Y(y) | SPRITE_OFFSET_X(x));
 	} else {
 		intel_de_write_fw(dev_priv, SPRLINOFF(pipe), linear_offset);
-		intel_de_write_fw(dev_priv, SPRTILEOFF(pipe), (y << 16) | x);
+		intel_de_write_fw(dev_priv, SPRTILEOFF(pipe),
+				  SPRITE_OFFSET_Y(y) | SPRITE_OFFSET_X(x));
 	}
 
 	/*
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 8678cbab1d33..0bd47a929f5d 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -7046,50 +7046,67 @@ enum {
 #define DVSGAMCMAX_ILK(pipe, i) _MMIO(_PIPE(pipe, _DVSAGAMCMAX_ILK, _DVSBGAMCMAX_ILK) + (i) * 4) /* 3 x u1.10 */
 
 #define _SPRA_CTL		0x70280
-#define   SPRITE_ENABLE			(1 << 31)
-#define   SPRITE_GAMMA_ENABLE		(1 << 30)
-#define   SPRITE_YUV_RANGE_CORRECTION_DISABLE	(1 << 28)
-#define   SPRITE_PIXFORMAT_MASK		(7 << 25)
-#define   SPRITE_FORMAT_YUV422		(0 << 25)
-#define   SPRITE_FORMAT_RGBX101010	(1 << 25)
-#define   SPRITE_FORMAT_RGBX888		(2 << 25)
-#define   SPRITE_FORMAT_RGBX161616	(3 << 25)
-#define   SPRITE_FORMAT_YUV444		(4 << 25)
-#define   SPRITE_FORMAT_XR_BGR101010	(5 << 25) /* Extended range */
-#define   SPRITE_PIPE_CSC_ENABLE	(1 << 24)
-#define   SPRITE_SOURCE_KEY		(1 << 22)
-#define   SPRITE_RGB_ORDER_RGBX		(1 << 20) /* only for 888 and 161616 */
-#define   SPRITE_YUV_TO_RGB_CSC_DISABLE	(1 << 19)
-#define   SPRITE_YUV_TO_RGB_CSC_FORMAT_BT709	(1 << 18) /* 0 is BT601 */
-#define   SPRITE_YUV_ORDER_MASK		(3 << 16)
-#define   SPRITE_YUV_ORDER_YUYV		(0 << 16)
-#define   SPRITE_YUV_ORDER_UYVY		(1 << 16)
-#define   SPRITE_YUV_ORDER_YVYU		(2 << 16)
-#define   SPRITE_YUV_ORDER_VYUY		(3 << 16)
-#define   SPRITE_ROTATE_180		(1 << 15)
-#define   SPRITE_TRICKLE_FEED_DISABLE	(1 << 14)
-#define   SPRITE_INT_GAMMA_DISABLE	(1 << 13)
-#define   SPRITE_TILED			(1 << 10)
-#define   SPRITE_DEST_KEY		(1 << 2)
+#define   SPRITE_ENABLE				REG_BIT(31)
+#define   SPRITE_PIPE_GAMMA_ENABLE		REG_BIT(30)
+#define   SPRITE_YUV_RANGE_CORRECTION_DISABLE	REG_BIT(28)
+#define   SPRITE_FORMAT_MASK			REG_GENMASK(27, 25)
+#define   SPRITE_FORMAT_YUV422			REG_FIELD_PREP(SPRITE_FORMAT_MASK, 0)
+#define   SPRITE_FORMAT_RGBX101010		REG_FIELD_PREP(SPRITE_FORMAT_MASK, 1)
+#define   SPRITE_FORMAT_RGBX888			REG_FIELD_PREP(SPRITE_FORMAT_MASK, 2)
+#define   SPRITE_FORMAT_RGBX161616		REG_FIELD_PREP(SPRITE_FORMAT_MASK, 3)
+#define   SPRITE_FORMAT_YUV444			REG_FIELD_PREP(SPRITE_FORMAT_MASK, 4)
+#define   SPRITE_FORMAT_XR_BGR101010		REG_FIELD_PREP(SPRITE_FORMAT_MASK, 5) /* Extended range */
+#define   SPRITE_PIPE_CSC_ENABLE		REG_BIT(24)
+#define   SPRITE_SOURCE_KEY			REG_BIT(22)
+#define   SPRITE_RGB_ORDER_RGBX			REG_BIT(20) /* only for 888 and 161616 */
+#define   SPRITE_YUV_TO_RGB_CSC_DISABLE		REG_BIT(19)
+#define   SPRITE_YUV_TO_RGB_CSC_FORMAT_BT709	REG_BIT(18) /* 0 is BT601 */
+#define   SPRITE_YUV_ORDER_MASK			REG_GENMASK(17, 16)
+#define   SPRITE_YUV_ORDER_YUYV			REG_FIELD_PREP(SPRITE_YUV_ORDER_MASK, 0)
+#define   SPRITE_YUV_ORDER_UYVY			REG_FIELD_PREP(SPRITE_YUV_ORDER_MASK, 1)
+#define   SPRITE_YUV_ORDER_YVYU			REG_FIELD_PREP(SPRITE_YUV_ORDER_MASK, 2)
+#define   SPRITE_YUV_ORDER_VYUY			REG_FIELD_PREP(SPRITE_YUV_ORDER_MASK, 3)
+#define   SPRITE_ROTATE_180			REG_BIT(15)
+#define   SPRITE_TRICKLE_FEED_DISABLE		REG_BIT(14)
+#define   SPRITE_PLANE_GAMMA_DISABLE		REG_BIT(13)
+#define   SPRITE_TILED				REG_BIT(10)
+#define   SPRITE_DEST_KEY			REG_BIT(2)
 #define _SPRA_LINOFF		0x70284
 #define _SPRA_STRIDE		0x70288
 #define _SPRA_POS		0x7028c
+#define   SPRITE_POS_Y_MASK	REG_GENMASK(31, 16)
+#define   SPRITE_POS_Y(y)	REG_FIELD_PREP(SPRITE_POS_Y_MASK, (y))
+#define   SPRITE_POS_X_MASK	REG_GENMASK(15, 0)
+#define   SPRITE_POS_X(x)	REG_FIELD_PREP(SPRITE_POS_X_MASK, (x))
 #define _SPRA_SIZE		0x70290
+#define   SPRITE_HEIGHT_MASK	REG_GENMASK(31, 16)
+#define   SPRITE_HEIGHT(h)	REG_FIELD_PREP(SPRITE_HEIGHT_MASK, (h))
+#define   SPRITE_WIDTH_MASK	REG_GENMASK(15, 0)
+#define   SPRITE_WIDTH(w)	REG_FIELD_PREP(SPRITE_WIDTH_MASK, (w))
 #define _SPRA_KEYVAL		0x70294
 #define _SPRA_KEYMSK		0x70298
 #define _SPRA_SURF		0x7029c
+#define   SPRITE_ADDR_MASK	REG_GENMASK(31, 12)
 #define _SPRA_KEYMAX		0x702a0
 #define _SPRA_TILEOFF		0x702a4
+#define   SPRITE_OFFSET_Y_MASK	REG_GENMASK(31, 16)
+#define   SPRITE_OFFSET_Y(y)	REG_FIELD_PREP(SPRITE_OFFSET_Y_MASK, (y))
+#define   SPRITE_OFFSET_X_MASK	REG_GENMASK(15, 0)
+#define   SPRITE_OFFSET_X(x)	REG_FIELD_PREP(SPRITE_OFFSET_X_MASK, (x))
 #define _SPRA_OFFSET		0x702a4
 #define _SPRA_SURFLIVE		0x702ac
 #define _SPRA_SCALE		0x70304
-#define   SPRITE_SCALE_ENABLE	(1 << 31)
-#define   SPRITE_FILTER_MASK	(3 << 29)
-#define   SPRITE_FILTER_MEDIUM	(0 << 29)
-#define   SPRITE_FILTER_ENHANCING	(1 << 29)
-#define   SPRITE_FILTER_SOFTENING	(2 << 29)
-#define   SPRITE_VERTICAL_OFFSET_HALF	(1 << 28) /* must be enabled below */
-#define   SPRITE_VERTICAL_OFFSET_ENABLE	(1 << 27)
+#define   SPRITE_SCALE_ENABLE			REG_BIT(31)
+#define   SPRITE_FILTER_MASK			REG_GENMASK(30, 29)
+#define   SPRITE_FILTER_MEDIUM			REG_FIELD_PREP(SPRITE_FILTER_MASK, 0)
+#define   SPRITE_FILTER_ENHANCING		REG_FIELD_PREP(SPRITE_FILTER_MASK, 1)
+#define   SPRITE_FILTER_SOFTENING		REG_FIELD_PREP(SPRITE_FILTER_MASK, 2)
+#define   SPRITE_VERTICAL_OFFSET_HALF		REG_BIT(28) /* must be enabled below */
+#define   SPRITE_VERTICAL_OFFSET_ENABLE		REG_BIT(27)
+#define   SPRITE_SRC_WIDTH_MASK			REG_GENMASK(26, 16)
+#define   SPRITE_SRC_WIDTH(w)			REG_FIELD_PREP(SPRITE_SRC_WIDTH_MASK, (w))
+#define   SPRITE_SRC_HEIGHT_MASK		REG_GENMASK(10, 0)
+#define   SPRITE_SRC_HEIGHT(h)			REG_FIELD_PREP(SPRITE_SRC_HEIGHT_MASK, (h))
 #define _SPRA_GAMC		0x70400
 #define _SPRA_GAMC16		0x70440
 #define _SPRA_GAMC17		0x7044c
-- 
2.32.0

