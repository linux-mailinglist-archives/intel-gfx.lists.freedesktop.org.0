Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 18BEA642A1E
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Dec 2022 15:11:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B87E10E09E;
	Mon,  5 Dec 2022 14:11:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C28E10E09E
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Dec 2022 14:11:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670249493; x=1701785493;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7vnRb5se4YIGExgUkAuWs0GLiWlSFV+d8IU4cLDN/KU=;
 b=WQv0h8VBUDao2+zszSSS90aU6tbOkFA1sLflA74DrTwVMNb8QgO5TBgC
 aJMJgRPps+uu7HvkminfWUdhq5Axy27Dx0NZSgY6yY0oYafQ0RyVwFUOi
 hAXqM5IjTLstyn6R8O7fsKKbezjJ+G+vukBdrGna9Fyu8MZPpUv9FK7nm
 MbRFz9o7kXt96+QsvUAiKWGAfvZyiYGzmttbwfiSi6cl7MD8KdAi7EzuW
 +Xdo6LcI4ugR8bU1YFWW6EWRPv1FvF2PcVDFIaji1DnGG1CJChC5zoTwP
 6xnYPt82nwhrFWXvUHzuEp8t3fnjSnV0/NOrcAyQkl7pakhDIyUe6zIXL A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10551"; a="296715026"
X-IronPort-AV: E=Sophos;i="5.96,219,1665471600"; d="scan'208";a="296715026"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2022 06:11:33 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10551"; a="974694620"
X-IronPort-AV: E=Sophos;i="5.96,219,1665471600"; d="scan'208";a="974694620"
Received: from akramiss-mobl1.amr.corp.intel.com (HELO localhost)
 ([10.252.54.203])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2022 06:11:31 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  5 Dec 2022 16:11:15 +0200
Message-Id: <863d9cb78a595d3bc28a0f0a71247b196749ddf7.1670249413.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1670249413.git.jani.nikula@intel.com>
References: <cover.1670249413.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/5] drm/i915/backlight: get rid of the implicit
 dev_priv
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

Pass the i915 pointer to the macros where needed.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_backlight.c    | 38 +++++++++----------
 .../drm/i915/display/intel_backlight_regs.h   |  6 +--
 2 files changed, 22 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c b/drivers/gpu/drm/i915/display/intel_backlight.c
index 71af88a70461..b3c44b054d08 100644
--- a/drivers/gpu/drm/i915/display/intel_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_backlight.c
@@ -159,7 +159,7 @@ static u32 i9xx_get_backlight(struct intel_connector *connector, enum pipe unuse
 	struct intel_panel *panel = &connector->panel;
 	u32 val;
 
-	val = intel_de_read(dev_priv, BLC_PWM_CTL) & BACKLIGHT_DUTY_CYCLE_MASK;
+	val = intel_de_read(dev_priv, BLC_PWM_CTL(dev_priv)) & BACKLIGHT_DUTY_CYCLE_MASK;
 	if (DISPLAY_VER(dev_priv) < 4)
 		val >>= 1;
 
@@ -244,8 +244,8 @@ static void i9xx_set_backlight(const struct drm_connector_state *conn_state, u32
 		mask = BACKLIGHT_DUTY_CYCLE_MASK_PNV;
 	}
 
-	tmp = intel_de_read(dev_priv, BLC_PWM_CTL) & ~mask;
-	intel_de_write(dev_priv, BLC_PWM_CTL, tmp | level);
+	tmp = intel_de_read(dev_priv, BLC_PWM_CTL(dev_priv)) & ~mask;
+	intel_de_write(dev_priv, BLC_PWM_CTL(dev_priv), tmp | level);
 }
 
 static void vlv_set_backlight(const struct drm_connector_state *conn_state, u32 level)
@@ -383,8 +383,8 @@ static void i965_disable_backlight(const struct drm_connector_state *old_conn_st
 
 	intel_backlight_set_pwm_level(old_conn_state, val);
 
-	tmp = intel_de_read(dev_priv, BLC_PWM_CTL2);
-	intel_de_write(dev_priv, BLC_PWM_CTL2, tmp & ~BLM_PWM_ENABLE);
+	tmp = intel_de_read(dev_priv, BLC_PWM_CTL2(dev_priv));
+	intel_de_write(dev_priv, BLC_PWM_CTL2(dev_priv), tmp & ~BLM_PWM_ENABLE);
 }
 
 static void vlv_disable_backlight(const struct drm_connector_state *old_conn_state, u32 val)
@@ -585,10 +585,10 @@ static void i9xx_enable_backlight(const struct intel_crtc_state *crtc_state,
 	struct intel_panel *panel = &connector->panel;
 	u32 ctl, freq;
 
-	ctl = intel_de_read(dev_priv, BLC_PWM_CTL);
+	ctl = intel_de_read(dev_priv, BLC_PWM_CTL(dev_priv));
 	if (ctl & BACKLIGHT_DUTY_CYCLE_MASK_PNV) {
 		drm_dbg_kms(&dev_priv->drm, "backlight already enabled\n");
-		intel_de_write(dev_priv, BLC_PWM_CTL, 0);
+		intel_de_write(dev_priv, BLC_PWM_CTL(dev_priv), 0);
 	}
 
 	freq = panel->backlight.pwm_level_max;
@@ -601,8 +601,8 @@ static void i9xx_enable_backlight(const struct intel_crtc_state *crtc_state,
 	if (IS_PINEVIEW(dev_priv) && panel->backlight.active_low_pwm)
 		ctl |= BLM_POLARITY_PNV;
 
-	intel_de_write(dev_priv, BLC_PWM_CTL, ctl);
-	intel_de_posting_read(dev_priv, BLC_PWM_CTL);
+	intel_de_write(dev_priv, BLC_PWM_CTL(dev_priv), ctl);
+	intel_de_posting_read(dev_priv, BLC_PWM_CTL(dev_priv));
 
 	/* XXX: combine this into above write? */
 	intel_backlight_set_pwm_level(conn_state, level);
@@ -613,7 +613,7 @@ static void i9xx_enable_backlight(const struct intel_crtc_state *crtc_state,
 	 * that has backlight.
 	 */
 	if (DISPLAY_VER(dev_priv) == 2)
-		intel_de_write(dev_priv, BLC_HIST_CTL, BLM_HISTOGRAM_ENABLE);
+		intel_de_write(dev_priv, BLC_HIST_CTL(dev_priv), BLM_HISTOGRAM_ENABLE);
 }
 
 static void i965_enable_backlight(const struct intel_crtc_state *crtc_state,
@@ -625,11 +625,11 @@ static void i965_enable_backlight(const struct intel_crtc_state *crtc_state,
 	enum pipe pipe = to_intel_crtc(conn_state->crtc)->pipe;
 	u32 ctl, ctl2, freq;
 
-	ctl2 = intel_de_read(dev_priv, BLC_PWM_CTL2);
+	ctl2 = intel_de_read(dev_priv, BLC_PWM_CTL2(dev_priv));
 	if (ctl2 & BLM_PWM_ENABLE) {
 		drm_dbg_kms(&dev_priv->drm, "backlight already enabled\n");
 		ctl2 &= ~BLM_PWM_ENABLE;
-		intel_de_write(dev_priv, BLC_PWM_CTL2, ctl2);
+		intel_de_write(dev_priv, BLC_PWM_CTL2(dev_priv), ctl2);
 	}
 
 	freq = panel->backlight.pwm_level_max;
@@ -637,16 +637,16 @@ static void i965_enable_backlight(const struct intel_crtc_state *crtc_state,
 		freq /= 0xff;
 
 	ctl = freq << 16;
-	intel_de_write(dev_priv, BLC_PWM_CTL, ctl);
+	intel_de_write(dev_priv, BLC_PWM_CTL(dev_priv), ctl);
 
 	ctl2 = BLM_PIPE(pipe);
 	if (panel->backlight.combination_mode)
 		ctl2 |= BLM_COMBINATION_MODE;
 	if (panel->backlight.active_low_pwm)
 		ctl2 |= BLM_POLARITY_I965;
-	intel_de_write(dev_priv, BLC_PWM_CTL2, ctl2);
-	intel_de_posting_read(dev_priv, BLC_PWM_CTL2);
-	intel_de_write(dev_priv, BLC_PWM_CTL2, ctl2 | BLM_PWM_ENABLE);
+	intel_de_write(dev_priv, BLC_PWM_CTL2(dev_priv), ctl2);
+	intel_de_posting_read(dev_priv, BLC_PWM_CTL2(dev_priv));
+	intel_de_write(dev_priv, BLC_PWM_CTL2(dev_priv), ctl2 | BLM_PWM_ENABLE);
 
 	intel_backlight_set_pwm_level(conn_state, level);
 }
@@ -1326,7 +1326,7 @@ static int i9xx_setup_backlight(struct intel_connector *connector, enum pipe unu
 	struct intel_panel *panel = &connector->panel;
 	u32 ctl, val;
 
-	ctl = intel_de_read(dev_priv, BLC_PWM_CTL);
+	ctl = intel_de_read(dev_priv, BLC_PWM_CTL(dev_priv));
 
 	if (DISPLAY_VER(dev_priv) == 2 || IS_I915GM(dev_priv) || IS_I945GM(dev_priv))
 		panel->backlight.combination_mode = ctl & BLM_LEGACY_MODE;
@@ -1364,11 +1364,11 @@ static int i965_setup_backlight(struct intel_connector *connector, enum pipe unu
 	struct intel_panel *panel = &connector->panel;
 	u32 ctl, ctl2;
 
-	ctl2 = intel_de_read(dev_priv, BLC_PWM_CTL2);
+	ctl2 = intel_de_read(dev_priv, BLC_PWM_CTL2(dev_priv));
 	panel->backlight.combination_mode = ctl2 & BLM_COMBINATION_MODE;
 	panel->backlight.active_low_pwm = ctl2 & BLM_POLARITY_I965;
 
-	ctl = intel_de_read(dev_priv, BLC_PWM_CTL);
+	ctl = intel_de_read(dev_priv, BLC_PWM_CTL(dev_priv));
 	panel->backlight.pwm_level_max = ctl >> 16;
 
 	if (!panel->backlight.pwm_level_max)
diff --git a/drivers/gpu/drm/i915/display/intel_backlight_regs.h b/drivers/gpu/drm/i915/display/intel_backlight_regs.h
index 02bd1f8201bf..385faafcfcf5 100644
--- a/drivers/gpu/drm/i915/display/intel_backlight_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_backlight_regs.h
@@ -21,7 +21,7 @@
 #define VLV_BLC_HIST_CTL(pipe) _MMIO_PIPE(pipe, _VLV_BLC_HIST_CTL_A, _VLV_BLC_HIST_CTL_B)
 
 /* Backlight control */
-#define BLC_PWM_CTL2	_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x61250) /* 965+ only */
+#define BLC_PWM_CTL2(__i915)	_MMIO(DISPLAY_MMIO_BASE(__i915) + 0x61250) /* 965+ only */
 #define   BLM_PWM_ENABLE		(1 << 31)
 #define   BLM_COMBINATION_MODE		(1 << 30) /* gen4 only */
 #define   BLM_PIPE_SELECT		(1 << 29)
@@ -44,7 +44,7 @@
 #define   BLM_PHASE_IN_COUNT_MASK	(0xff << 8)
 #define   BLM_PHASE_IN_INCR_SHIFT	(0)
 #define   BLM_PHASE_IN_INCR_MASK	(0xff << 0)
-#define BLC_PWM_CTL	_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x61254)
+#define BLC_PWM_CTL(__i915)	_MMIO(DISPLAY_MMIO_BASE(__i915) + 0x61254)
 /*
  * This is the most significant 15 bits of the number of backlight cycles in a
  * complete cycle of the modulated backlight control.
@@ -66,7 +66,7 @@
 #define   BACKLIGHT_DUTY_CYCLE_MASK_PNV		(0xfffe)
 #define   BLM_POLARITY_PNV			(1 << 0) /* pnv only */
 
-#define BLC_HIST_CTL	_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x61260)
+#define BLC_HIST_CTL(__i915)	_MMIO(DISPLAY_MMIO_BASE(__i915) + 0x61260)
 #define  BLM_HISTOGRAM_ENABLE			(1 << 31)
 
 /* New registers for PCH-split platforms. Safe where new bits show up, the
-- 
2.34.1

