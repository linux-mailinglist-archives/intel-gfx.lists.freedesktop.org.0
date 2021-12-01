Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B27D2465380
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Dec 2021 18:03:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F321C6E845;
	Wed,  1 Dec 2021 17:03:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 088656E845
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Dec 2021 17:03:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10185"; a="217193109"
X-IronPort-AV: E=Sophos;i="5.87,279,1631602800"; d="scan'208";a="217193109"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP; 01 Dec 2021 09:03:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,279,1631602800"; d="scan'208";a="560529776"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga008.fm.intel.com with SMTP; 01 Dec 2021 07:26:19 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 01 Dec 2021 17:26:19 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Dec 2021 17:25:47 +0200
Message-Id: <20211201152552.7821-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211201152552.7821-1-ville.syrjala@linux.intel.com>
References: <20211201152552.7821-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 09/14] drm/i915: Clean up vlv/chv sprite plane
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

Use REG_BIT() & co. to polish the vlv/chv sprite plane registers.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_sprite.c |   9 +-
 drivers/gpu/drm/i915/i915_reg.h             | 103 ++++++++++++--------
 2 files changed, 70 insertions(+), 42 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/drm/i915/display/intel_sprite.c
index 70083d04a9fd..eb9ce96c030f 100644
--- a/drivers/gpu/drm/i915/display/intel_sprite.c
+++ b/drivers/gpu/drm/i915/display/intel_sprite.c
@@ -313,7 +313,7 @@ static u32 vlv_sprite_ctl_crtc(const struct intel_crtc_state *crtc_state)
 	u32 sprctl = 0;
 
 	if (crtc_state->gamma_enable)
-		sprctl |= SP_GAMMA_ENABLE;
+		sprctl |= SP_PIPE_GAMMA_ENABLE;
 
 	return sprctl;
 }
@@ -436,9 +436,9 @@ vlv_sprite_update_noarm(struct intel_plane *plane,
 	intel_de_write_fw(dev_priv, SPSTRIDE(pipe, plane_id),
 			  plane_state->view.color_plane[0].mapping_stride);
 	intel_de_write_fw(dev_priv, SPPOS(pipe, plane_id),
-			  (crtc_y << 16) | crtc_x);
+			  SP_POS_Y(crtc_y) | SP_POS_X(crtc_x));
 	intel_de_write_fw(dev_priv, SPSIZE(pipe, plane_id),
-			  ((crtc_h - 1) << 16) | (crtc_w - 1));
+			  SP_HEIGHT(crtc_h - 1) | SP_WIDTH(crtc_w - 1));
 
 	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
 }
@@ -479,7 +479,8 @@ vlv_sprite_update_arm(struct intel_plane *plane,
 	intel_de_write_fw(dev_priv, SPCONSTALPHA(pipe, plane_id), 0);
 
 	intel_de_write_fw(dev_priv, SPLINOFF(pipe, plane_id), linear_offset);
-	intel_de_write_fw(dev_priv, SPTILEOFF(pipe, plane_id), (y << 16) | x);
+	intel_de_write_fw(dev_priv, SPTILEOFF(pipe, plane_id),
+			  SP_OFFSET_Y(y) | SP_OFFSET_X(x));
 
 	/*
 	 * The control register self-arms if the plane was previously
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 0bd47a929f5d..4d61e7f2ee7c 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -7146,48 +7146,67 @@ enum {
 #define SPRSURFLIVE(pipe) _MMIO_PIPE(pipe, _SPRA_SURFLIVE, _SPRB_SURFLIVE)
 
 #define _SPACNTR		(VLV_DISPLAY_BASE + 0x72180)
-#define   SP_ENABLE			(1 << 31)
-#define   SP_GAMMA_ENABLE		(1 << 30)
-#define   SP_PIXFORMAT_MASK		(0xf << 26)
-#define   SP_FORMAT_YUV422		(0x0 << 26)
-#define   SP_FORMAT_8BPP		(0x2 << 26)
-#define   SP_FORMAT_BGR565		(0x5 << 26)
-#define   SP_FORMAT_BGRX8888		(0x6 << 26)
-#define   SP_FORMAT_BGRA8888		(0x7 << 26)
-#define   SP_FORMAT_RGBX1010102		(0x8 << 26)
-#define   SP_FORMAT_RGBA1010102		(0x9 << 26)
-#define   SP_FORMAT_BGRX1010102		(0xa << 26) /* CHV pipe B */
-#define   SP_FORMAT_BGRA1010102		(0xb << 26) /* CHV pipe B */
-#define   SP_FORMAT_RGBX8888		(0xe << 26)
-#define   SP_FORMAT_RGBA8888		(0xf << 26)
-#define   SP_ALPHA_PREMULTIPLY		(1 << 23) /* CHV pipe B */
-#define   SP_SOURCE_KEY			(1 << 22)
-#define   SP_YUV_FORMAT_BT709		(1 << 18)
-#define   SP_YUV_ORDER_MASK		(3 << 16)
-#define   SP_YUV_ORDER_YUYV		(0 << 16)
-#define   SP_YUV_ORDER_UYVY		(1 << 16)
-#define   SP_YUV_ORDER_YVYU		(2 << 16)
-#define   SP_YUV_ORDER_VYUY		(3 << 16)
-#define   SP_ROTATE_180			(1 << 15)
-#define   SP_TILED			(1 << 10)
-#define   SP_MIRROR			(1 << 8) /* CHV pipe B */
+#define   SP_ENABLE			REG_BIT(31)
+#define   SP_PIPE_GAMMA_ENABLE		REG_BIT(30)
+#define   SP_FORMAT_MASK		REG_GENMASK(29, 26)
+#define   SP_FORMAT_YUV422		REG_FIELD_PREP(SP_FORMAT_MASK, 0)
+#define   SP_FORMAT_8BPP		REG_FIELD_PREP(SP_FORMAT_MASK, 2)
+#define   SP_FORMAT_BGR565		REG_FIELD_PREP(SP_FORMAT_MASK, 5)
+#define   SP_FORMAT_BGRX8888		REG_FIELD_PREP(SP_FORMAT_MASK, 6)
+#define   SP_FORMAT_BGRA8888		REG_FIELD_PREP(SP_FORMAT_MASK, 7)
+#define   SP_FORMAT_RGBX1010102		REG_FIELD_PREP(SP_FORMAT_MASK, 8)
+#define   SP_FORMAT_RGBA1010102		REG_FIELD_PREP(SP_FORMAT_MASK, 9)
+#define   SP_FORMAT_BGRX1010102		REG_FIELD_PREP(SP_FORMAT_MASK, 10) /* CHV pipe B */
+#define   SP_FORMAT_BGRA1010102		REG_FIELD_PREP(SP_FORMAT_MASK, 11) /* CHV pipe B */
+#define   SP_FORMAT_RGBX8888		REG_FIELD_PREP(SP_FORMAT_MASK, 14)
+#define   SP_FORMAT_RGBA8888		REG_FIELD_PREP(SP_FORMAT_MASK, 15)
+#define   SP_ALPHA_PREMULTIPLY		REG_BIT(23) /* CHV pipe B */
+#define   SP_SOURCE_KEY			REG_BIT(22)
+#define   SP_YUV_FORMAT_BT709		REG_BIT(18)
+#define   SP_YUV_ORDER_MASK		REG_GENMASK(17, 16)
+#define   SP_YUV_ORDER_YUYV		REG_FIELD_PREP(SP_YUV_ORDER_MASK, 0)
+#define   SP_YUV_ORDER_UYVY		REG_FIELD_PREP(SP_YUV_ORDER_MASK, 1)
+#define   SP_YUV_ORDER_YVYU		REG_FIELD_PREP(SP_YUV_ORDER_MASK, 2)
+#define   SP_YUV_ORDER_VYUY		REG_FIELD_PREP(SP_YUV_ORDER_MASK, 3)
+#define   SP_ROTATE_180			REG_BIT(15)
+#define   SP_TILED			REG_BIT(10)
+#define   SP_MIRROR			REG_BIT(8) /* CHV pipe B */
 #define _SPALINOFF		(VLV_DISPLAY_BASE + 0x72184)
 #define _SPASTRIDE		(VLV_DISPLAY_BASE + 0x72188)
 #define _SPAPOS			(VLV_DISPLAY_BASE + 0x7218c)
+#define   SP_POS_Y_MASK			REG_GENMASK(31, 16)
+#define   SP_POS_Y(y)			REG_FIELD_PREP(SP_POS_Y_MASK, (y))
+#define   SP_POS_X_MASK			REG_GENMASK(15, 0)
+#define   SP_POS_X(x)			REG_FIELD_PREP(SP_POS_X_MASK, (x))
 #define _SPASIZE		(VLV_DISPLAY_BASE + 0x72190)
+#define   SP_HEIGHT_MASK		REG_GENMASK(31, 16)
+#define   SP_HEIGHT(h)			REG_FIELD_PREP(SP_HEIGHT_MASK, (h))
+#define   SP_WIDTH_MASK			REG_GENMASK(15, 0)
+#define   SP_WIDTH(w)			REG_FIELD_PREP(SP_WIDTH_MASK, (w))
 #define _SPAKEYMINVAL		(VLV_DISPLAY_BASE + 0x72194)
 #define _SPAKEYMSK		(VLV_DISPLAY_BASE + 0x72198)
 #define _SPASURF		(VLV_DISPLAY_BASE + 0x7219c)
+#define   SP_ADDR_MASK			REG_GENMASK(31, 12)
 #define _SPAKEYMAXVAL		(VLV_DISPLAY_BASE + 0x721a0)
 #define _SPATILEOFF		(VLV_DISPLAY_BASE + 0x721a4)
+#define   SP_OFFSET_Y_MASK		REG_GENMASK(31, 16)
+#define   SP_OFFSET_Y(y)		REG_FIELD_PREP(SP_OFFSET_Y_MASK, (y))
+#define   SP_OFFSET_X_MASK		REG_GENMASK(15, 0)
+#define   SP_OFFSET_X(x)		REG_FIELD_PREP(SP_OFFSET_X_MASK, (x))
 #define _SPACONSTALPHA		(VLV_DISPLAY_BASE + 0x721a8)
-#define   SP_CONST_ALPHA_ENABLE		(1 << 31)
+#define   SP_CONST_ALPHA_ENABLE		REG_BIT(31)
+#define   SP_CONST_ALPHA_MASK		REG_GENMASK(7, 0)
+#define   SP_CONST_ALPHA(alpha)		REG_FIELD_PREP(SP_CONST_ALPHA_MASK, (alpha))
 #define _SPACLRC0		(VLV_DISPLAY_BASE + 0x721d0)
-#define   SP_CONTRAST(x)		((x) << 18) /* u3.6 */
-#define   SP_BRIGHTNESS(x)		((x) & 0xff) /* s8 */
+#define   SP_CONTRAST_MASK		REG_GENMASK(26, 18)
+#define   SP_CONTRAST(x)		REG_FIELD_PREP(SP_CONTRAST_MASK, (x)) /* u3.6 */
+#define   SP_BRIGHTNESS_MASK		REG_GENMASK(7, 0)
+#define   SP_BRIGHTNESS(x)		REG_FIELD_PREP(SP_BRIGHTNESS_MASK, (x)) /* s8 */
 #define _SPACLRC1		(VLV_DISPLAY_BASE + 0x721d4)
-#define   SP_SH_SIN(x)			(((x) & 0x7ff) << 16) /* s4.7 */
-#define   SP_SH_COS(x)			(x) /* u3.7 */
+#define   SP_SH_SIN_MASK		REG_GENMASK(26, 16)
+#define   SP_SH_SIN(x)			REG_FIELD_PREP(SP_SH_SIN_MASK, (x)) /* s4.7 */
+#define   SP_SH_COS_MASK		REG_GENMASK(9, 0)
+#define   SP_SH_COS(x)			REG_FIELD_PREP(SP_SH_COS_MASK, (x)) /* u3.7 */
 #define _SPAGAMC		(VLV_DISPLAY_BASE + 0x721e0)
 
 #define _SPBCNTR		(VLV_DISPLAY_BASE + 0x72280)
@@ -7238,28 +7257,36 @@ enum {
 #define SPCSCYGOFF(plane_id)	_MMIO_CHV_SPCSC(plane_id, 0x6d900)
 #define SPCSCCBOFF(plane_id)	_MMIO_CHV_SPCSC(plane_id, 0x6d904)
 #define SPCSCCROFF(plane_id)	_MMIO_CHV_SPCSC(plane_id, 0x6d908)
-#define  SPCSC_OOFF(x)		(((x) & 0x7ff) << 16) /* s11 */
-#define  SPCSC_IOFF(x)		(((x) & 0x7ff) << 0) /* s11 */
+#define  SPCSC_OOFF_MASK	REG_GENMASK(26, 16)
+#define  SPCSC_OOFF(x)		REG_FIELD_PREP(SPCSC_OOFF_MASK, (x) & 0x7ff) /* s11 */
+#define  SPCSC_IOFF_MASK	REG_GENMASK(10, 0)
+#define  SPCSC_IOFF(x)		REG_FIELD_PREP(SPCSC_IOFF_MASK, (x) & 0x7ff) /* s11 */
 
 #define SPCSCC01(plane_id)	_MMIO_CHV_SPCSC(plane_id, 0x6d90c)
 #define SPCSCC23(plane_id)	_MMIO_CHV_SPCSC(plane_id, 0x6d910)
 #define SPCSCC45(plane_id)	_MMIO_CHV_SPCSC(plane_id, 0x6d914)
 #define SPCSCC67(plane_id)	_MMIO_CHV_SPCSC(plane_id, 0x6d918)
 #define SPCSCC8(plane_id)	_MMIO_CHV_SPCSC(plane_id, 0x6d91c)
-#define  SPCSC_C1(x)		(((x) & 0x7fff) << 16) /* s3.12 */
-#define  SPCSC_C0(x)		(((x) & 0x7fff) << 0) /* s3.12 */
+#define  SPCSC_C1_MASK		REG_GENMASK(30, 16)
+#define  SPCSC_C1(x)		REG_FIELD_PREP(SPCSC_C1_MASK, (x) & 0x7fff) /* s3.12 */
+#define  SPCSC_C0_MASK		REG_GENMASK(14, 0)
+#define  SPCSC_C0(x)		REG_FIELD_PREP(SPCSC_C0_MASK, (x) & 0x7fff) /* s3.12 */
 
 #define SPCSCYGICLAMP(plane_id)	_MMIO_CHV_SPCSC(plane_id, 0x6d920)
 #define SPCSCCBICLAMP(plane_id)	_MMIO_CHV_SPCSC(plane_id, 0x6d924)
 #define SPCSCCRICLAMP(plane_id)	_MMIO_CHV_SPCSC(plane_id, 0x6d928)
-#define  SPCSC_IMAX(x)		(((x) & 0x7ff) << 16) /* s11 */
-#define  SPCSC_IMIN(x)		(((x) & 0x7ff) << 0) /* s11 */
+#define  SPCSC_IMAX_MASK	REG_GENMASK(26, 16)
+#define  SPCSC_IMAX(x)		REG_FIELD_PREP(SPCSC_IMAX_MASK, (x) & 0x7ff) /* s11 */
+#define  SPCSC_IMIN_MASK	REG_GENMASK(10, 0)
+#define  SPCSC_IMIN(x)		REG_FIELD_PREP(SPCSC_IMIN_MASK, (x) & 0x7ff) /* s11 */
 
 #define SPCSCYGOCLAMP(plane_id)	_MMIO_CHV_SPCSC(plane_id, 0x6d92c)
 #define SPCSCCBOCLAMP(plane_id)	_MMIO_CHV_SPCSC(plane_id, 0x6d930)
 #define SPCSCCROCLAMP(plane_id)	_MMIO_CHV_SPCSC(plane_id, 0x6d934)
-#define  SPCSC_OMAX(x)		((x) << 16) /* u10 */
-#define  SPCSC_OMIN(x)		((x) << 0) /* u10 */
+#define  SPCSC_OMAX_MASK	REG_GENMASK(25, 16)
+#define  SPCSC_OMAX(x)		REG_FIELD_PREP(SPCSC_OMAX_MASK, (x)) /* u10 */
+#define  SPCSC_OMIN_MASK	REG_GENMASK(9, 0)
+#define  SPCSC_OMIN(x)		REG_FIELD_PREP(SPCSC_OMIN_MASK, (x)) /* u10 */
 
 /* Skylake plane registers */
 
-- 
2.32.0

