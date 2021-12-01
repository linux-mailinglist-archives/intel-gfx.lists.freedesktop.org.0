Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 08524465197
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Dec 2021 16:26:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 31BBE6ECD5;
	Wed,  1 Dec 2021 15:26:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C60DB6ECED
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Dec 2021 15:26:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10184"; a="235208621"
X-IronPort-AV: E=Sophos;i="5.87,278,1631602800"; d="scan'208";a="235208621"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2021 07:26:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,278,1631602800"; d="scan'208";a="512081768"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga007.fm.intel.com with SMTP; 01 Dec 2021 07:26:25 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 01 Dec 2021 17:26:24 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Dec 2021 17:25:49 +0200
Message-Id: <20211201152552.7821-12-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211201152552.7821-1-ville.syrjala@linux.intel.com>
References: <20211201152552.7821-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 11/14] drm/i915: Clean up cursor registers
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

Use REG_BIT() & co. to polish the cursor plane registers.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cursor.c  | 25 ++++---
 drivers/gpu/drm/i915/display/intel_display.c |  4 +-
 drivers/gpu/drm/i915/i915_reg.h              | 71 +++++++++++---------
 3 files changed, 53 insertions(+), 47 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index 16d34685d83f..2ade8fdd9bdd 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -51,16 +51,16 @@ static u32 intel_cursor_position(const struct intel_plane_state *plane_state)
 	u32 pos = 0;
 
 	if (x < 0) {
-		pos |= CURSOR_POS_SIGN << CURSOR_X_SHIFT;
+		pos |= CURSOR_POS_X_SIGN;
 		x = -x;
 	}
-	pos |= x << CURSOR_X_SHIFT;
+	pos |= CURSOR_POS_X(x);
 
 	if (y < 0) {
-		pos |= CURSOR_POS_SIGN << CURSOR_Y_SHIFT;
+		pos |= CURSOR_POS_Y_SIGN;
 		y = -y;
 	}
-	pos |= y << CURSOR_Y_SHIFT;
+	pos |= CURSOR_POS_Y(y);
 
 	return pos;
 }
@@ -180,7 +180,7 @@ static u32 i845_cursor_ctl_crtc(const struct intel_crtc_state *crtc_state)
 	u32 cntl = 0;
 
 	if (crtc_state->gamma_enable)
-		cntl |= CURSOR_GAMMA_ENABLE;
+		cntl |= CURSOR_PIPE_GAMMA_ENABLE;
 
 	return cntl;
 }
@@ -264,7 +264,7 @@ static void i845_cursor_update_arm(struct intel_plane *plane,
 		cntl = plane_state->ctl |
 			i845_cursor_ctl_crtc(crtc_state);
 
-		size = (height << 12) | width;
+		size = CURSOR_HEIGHT(height) | CURSOR_WIDTH(width);
 
 		base = intel_cursor_base(plane_state);
 		pos = intel_cursor_position(plane_state);
@@ -280,7 +280,7 @@ static void i845_cursor_update_arm(struct intel_plane *plane,
 	    plane->cursor.cntl != cntl) {
 		intel_de_write_fw(dev_priv, CURCNTR(PIPE_A), 0);
 		intel_de_write_fw(dev_priv, CURBASE(PIPE_A), base);
-		intel_de_write_fw(dev_priv, CURSIZE, size);
+		intel_de_write_fw(dev_priv, CURSIZE(PIPE_A), size);
 		intel_de_write_fw(dev_priv, CURPOS(PIPE_A), pos);
 		intel_de_write_fw(dev_priv, CURCNTR(PIPE_A), cntl);
 
@@ -340,13 +340,13 @@ static u32 i9xx_cursor_ctl_crtc(const struct intel_crtc_state *crtc_state)
 		return cntl;
 
 	if (crtc_state->gamma_enable)
-		cntl = MCURSOR_GAMMA_ENABLE;
+		cntl = MCURSOR_PIPE_GAMMA_ENABLE;
 
 	if (crtc_state->csc_enable)
 		cntl |= MCURSOR_PIPE_CSC_ENABLE;
 
 	if (DISPLAY_VER(dev_priv) < 5 && !IS_G4X(dev_priv))
-		cntl |= MCURSOR_PIPE_SELECT(crtc->pipe);
+		cntl |= MCURSOR_PIPE_SEL(crtc->pipe);
 
 	return cntl;
 }
@@ -502,7 +502,7 @@ static void i9xx_cursor_update_arm(struct intel_plane *plane,
 			i9xx_cursor_ctl_crtc(crtc_state);
 
 		if (width != height)
-			fbc_ctl = CUR_FBC_CTL_EN | (height - 1);
+			fbc_ctl = CUR_FBC_EN | CUR_FBC_HEIGHT(height - 1);
 
 		base = intel_cursor_base(plane_state);
 		pos = intel_cursor_position(plane_state);
@@ -586,13 +586,12 @@ static bool i9xx_cursor_get_hw_state(struct intel_plane *plane,
 
 	val = intel_de_read(dev_priv, CURCNTR(plane->pipe));
 
-	ret = val & MCURSOR_MODE;
+	ret = val & MCURSOR_MODE_MASK;
 
 	if (DISPLAY_VER(dev_priv) >= 5 || IS_G4X(dev_priv))
 		*pipe = plane->pipe;
 	else
-		*pipe = (val & MCURSOR_PIPE_SELECT_MASK) >>
-			MCURSOR_PIPE_SELECT_SHIFT;
+		*pipe = REG_FIELD_GET(MCURSOR_PIPE_SEL_MASK, val);
 
 	intel_display_power_put(dev_priv, power_domain, wakeref);
 
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 00a2c9915780..34c1463e2ef9 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -10041,9 +10041,9 @@ void i830_disable_pipe(struct drm_i915_private *dev_priv, enum pipe pipe)
 	drm_WARN_ON(&dev_priv->drm,
 		    intel_de_read(dev_priv, DSPCNTR(PLANE_C)) & DSP_ENABLE);
 	drm_WARN_ON(&dev_priv->drm,
-		    intel_de_read(dev_priv, CURCNTR(PIPE_A)) & MCURSOR_MODE);
+		    intel_de_read(dev_priv, CURCNTR(PIPE_A)) & MCURSOR_MODE_MASK);
 	drm_WARN_ON(&dev_priv->drm,
-		    intel_de_read(dev_priv, CURCNTR(PIPE_B)) & MCURSOR_MODE);
+		    intel_de_read(dev_priv, CURCNTR(PIPE_B)) & MCURSOR_MODE_MASK);
 
 	intel_de_write(dev_priv, PIPECONF(pipe), 0);
 	intel_de_posting_read(dev_priv, PIPECONF(pipe));
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index d215cad95fe8..e010add5574a 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -6761,44 +6761,50 @@ enum {
 /* Cursor A & B regs */
 #define _CURACNTR		0x70080
 /* Old style CUR*CNTR flags (desktop 8xx) */
-#define   CURSOR_ENABLE		0x80000000
-#define   CURSOR_GAMMA_ENABLE	0x40000000
-#define   CURSOR_STRIDE_SHIFT	28
-#define   CURSOR_STRIDE(x)	((ffs(x) - 9) << CURSOR_STRIDE_SHIFT) /* 256,512,1k,2k */
-#define   CURSOR_FORMAT_SHIFT	24
-#define   CURSOR_FORMAT_MASK	(0x07 << CURSOR_FORMAT_SHIFT)
-#define   CURSOR_FORMAT_2C	(0x00 << CURSOR_FORMAT_SHIFT)
-#define   CURSOR_FORMAT_3C	(0x01 << CURSOR_FORMAT_SHIFT)
-#define   CURSOR_FORMAT_4C	(0x02 << CURSOR_FORMAT_SHIFT)
-#define   CURSOR_FORMAT_ARGB	(0x04 << CURSOR_FORMAT_SHIFT)
-#define   CURSOR_FORMAT_XRGB	(0x05 << CURSOR_FORMAT_SHIFT)
+#define   CURSOR_ENABLE			REG_BIT(31)
+#define   CURSOR_PIPE_GAMMA_ENABLE	REG_BIT(30)
+#define   CURSOR_STRIDE_MASK	REG_GENMASK(29, 28)
+#define   CURSOR_STRIDE(stride)	REG_FIELD_PREP(CURSOR_STRIDE_MASK, ffs(stride) - 9) /* 256,512,1k,2k */
+#define   CURSOR_FORMAT_MASK	REG_GENMASK(26, 24)
+#define   CURSOR_FORMAT_2C	REG_FIELD_PREP(CURSOR_FORMAT_MASK, 0)
+#define   CURSOR_FORMAT_3C	REG_FIELD_PREP(CURSOR_FORMAT_MASK, 1)
+#define   CURSOR_FORMAT_4C	REG_FIELD_PREP(CURSOR_FORMAT_MASK, 2)
+#define   CURSOR_FORMAT_ARGB	REG_FIELD_PREP(CURSOR_FORMAT_MASK, 4)
+#define   CURSOR_FORMAT_XRGB	REG_FIELD_PREP(CURSOR_FORMAT_MASK, 5)
 /* New style CUR*CNTR flags */
-#define   MCURSOR_MODE		0x27
-#define   MCURSOR_MODE_DISABLE   0x00
-#define   MCURSOR_MODE_128_32B_AX 0x02
-#define   MCURSOR_MODE_256_32B_AX 0x03
-#define   MCURSOR_MODE_64_32B_AX 0x07
-#define   MCURSOR_MODE_128_ARGB_AX ((1 << 5) | MCURSOR_MODE_128_32B_AX)
-#define   MCURSOR_MODE_256_ARGB_AX ((1 << 5) | MCURSOR_MODE_256_32B_AX)
-#define   MCURSOR_MODE_64_ARGB_AX ((1 << 5) | MCURSOR_MODE_64_32B_AX)
 #define   MCURSOR_ARB_SLOTS_MASK	REG_GENMASK(30, 28) /* icl+ */
 #define   MCURSOR_ARB_SLOTS(x)		REG_FIELD_PREP(MCURSOR_ARB_SLOTS_MASK, (x)) /* icl+ */
-#define   MCURSOR_PIPE_SELECT_MASK	(0x3 << 28)
-#define   MCURSOR_PIPE_SELECT_SHIFT	28
-#define   MCURSOR_PIPE_SELECT(pipe)	((pipe) << 28)
-#define   MCURSOR_GAMMA_ENABLE  (1 << 26)
-#define   MCURSOR_PIPE_CSC_ENABLE (1 << 24) /* ilk+ */
-#define   MCURSOR_ROTATE_180	(1 << 15)
-#define   MCURSOR_TRICKLE_FEED_DISABLE	(1 << 14)
+#define   MCURSOR_PIPE_SEL_MASK		REG_GENMASK(29, 28)
+#define   MCURSOR_PIPE_SEL(pipe)	REG_FIELD_PREP(MCURSOR_PIPE_SEL_MASK, (pipe))
+#define   MCURSOR_PIPE_GAMMA_ENABLE	REG_BIT(26)
+#define   MCURSOR_PIPE_CSC_ENABLE	REG_BIT(24) /* ilk+ */
+#define   MCURSOR_ROTATE_180		REG_BIT(15)
+#define   MCURSOR_TRICKLE_FEED_DISABLE	REG_BIT(14)
+#define   MCURSOR_MODE_MASK		0x27
+#define   MCURSOR_MODE_DISABLE		0x00
+#define   MCURSOR_MODE_128_32B_AX	0x02
+#define   MCURSOR_MODE_256_32B_AX	0x03
+#define   MCURSOR_MODE_64_32B_AX	0x07
+#define   MCURSOR_MODE_128_ARGB_AX	(0x20 | MCURSOR_MODE_128_32B_AX)
+#define   MCURSOR_MODE_256_ARGB_AX	(0x20 | MCURSOR_MODE_256_32B_AX)
+#define   MCURSOR_MODE_64_ARGB_AX	(0x20 | MCURSOR_MODE_64_32B_AX)
 #define _CURABASE		0x70084
 #define _CURAPOS		0x70088
-#define   CURSOR_POS_MASK       0x007FF
-#define   CURSOR_POS_SIGN       0x8000
-#define   CURSOR_X_SHIFT        0
-#define   CURSOR_Y_SHIFT        16
-#define CURSIZE			_MMIO(0x700a0) /* 845/865 */
+#define   CURSOR_POS_Y_SIGN		REG_BIT(31)
+#define   CURSOR_POS_Y_MASK		REG_GENMASK(30, 16)
+#define   CURSOR_POS_Y(y)		REG_FIELD_PREP(CURSOR_POS_Y_MASK, (y))
+#define   CURSOR_POS_X_SIGN		REG_BIT(15)
+#define   CURSOR_POS_X_MASK		REG_GENMASK(14, 0)
+#define   CURSOR_POS_X(x)		REG_FIELD_PREP(CURSOR_POS_X_MASK, (x))
+#define _CURASIZE		0x700a0 /* 845/865 */
+#define   CURSOR_HEIGHT_MASK		REG_GENMASK(21, 12)
+#define   CURSOR_HEIGHT(h)		REG_FIELD_PREP(CURSOR_HEIGHT_MASK, (h))
+#define   CURSOR_WIDTH_MASK		REG_GENMASK(9, 0)
+#define   CURSOR_WIDTH(w)		REG_FIELD_PREP(CURSOR_WIDTH_MASK, (w))
 #define _CUR_FBC_CTL_A		0x700a0 /* ivb+ */
-#define   CUR_FBC_CTL_EN	(1 << 31)
+#define   CUR_FBC_EN			REG_BIT(31)
+#define   CUR_FBC_HEIGHT_MASK		REG_GENMASK(7, 0)
+#define   CUR_FBC_HEIGHT(h)		REG_FIELD_PREP(CUR_FBC_HEIGHT_MASK, (h))
 #define _CURASURFLIVE		0x700ac /* g4x+ */
 #define _CURBCNTR		0x700c0
 #define _CURBBASE		0x700c4
@@ -6811,6 +6817,7 @@ enum {
 #define CURCNTR(pipe) _CURSOR2(pipe, _CURACNTR)
 #define CURBASE(pipe) _CURSOR2(pipe, _CURABASE)
 #define CURPOS(pipe) _CURSOR2(pipe, _CURAPOS)
+#define CURSIZE(pipe) _CURSOR2(pipe, _CURASIZE)
 #define CUR_FBC_CTL(pipe) _CURSOR2(pipe, _CUR_FBC_CTL_A)
 #define CURSURFLIVE(pipe) _CURSOR2(pipe, _CURASURFLIVE)
 
-- 
2.32.0

