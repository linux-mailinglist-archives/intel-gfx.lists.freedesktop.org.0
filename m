Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 35FA814659C
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2020 11:23:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A71836FBBB;
	Thu, 23 Jan 2020 10:23:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com
 [IPv6:2a00:1450:4864:20::342])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 43D966F4AD;
 Wed, 22 Jan 2020 11:09:00 +0000 (UTC)
Received: by mail-wm1-x342.google.com with SMTP id a5so6385154wmb.0;
 Wed, 22 Jan 2020 03:09:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ngYTzrhT+Rq+kAoMCmG7b6eqkExiTAUPRYY0Y3GTRQg=;
 b=uf0um+HUR5YEadHNJdqHpUlQGySBkxYBQwhwVpXX1ZT3hOurfzjJ5d52/KJCICyZGq
 5cOnIGlJqnQlRJVQjiCeEdYOP2pcwn8qaK2p0yyjhU4WDB3N8NLv249ahLg9cFub2NCc
 anb7jSUrWUrMcZx04+Wgie86FzwDrxmgby9GHPcDxgmHNIur9qD6Jg5/ai0TOfk5LkEd
 Lu0+c2wOZppCBYdTcPtSy6m+e1qTqHOTx8gvGZXJeG2mF9+V3zJMB9gwb/YQeV73cSpG
 GUJw6A5hjQ25uTenjE3zqLUPwaTohVUODARi9ZKzo172oCCaCclYScFCyxgyoZTApDpE
 pMeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ngYTzrhT+Rq+kAoMCmG7b6eqkExiTAUPRYY0Y3GTRQg=;
 b=Cu5sxUFX/jCAMqZCw2tPNrPG9zU8y7+Lz17Djmga3b5qZKyT5aGcbVQUUJENQQDwbz
 VZUBjcL5/XNnWrUqMdkaup8RlSG31+Mp/IGOQBO/w6gwgRFvA2qldAW/X9yZvQoOVpwt
 3P39H4/zVcnIMwAaxlXFsrwqqoFJwegH6h2HQENriQHdryv4zE9nxssFETKRO+Hu3j7n
 qvhmt9DrC3yx8BSJ4wU+dXSjUWDu2lWUxvKAvrCV9Zf/ZB3ODl9kBnAeecROhbehBS5c
 BylFB0RnEpJjTg4+8Noe/4kuMjDGNFNAG+OdsZYtVqKJFrEwn0hmwfJdwEwDVZQeoPZN
 zhQQ==
X-Gm-Message-State: APjAAAWXrOCnTB2wWQOHiCv63FBfgOlbzghV5h8Qv2605Cc+5jGckrHu
 8skjfbMPfC47WjBDzM1fAYk=
X-Google-Smtp-Source: APXvYqyehIgA7aFrPoqt/qAGYZ0C8lsTEcfQjX5iVQHsebgcZPbAgk7A59h01VDHk+4B1EOdL8LUOQ==
X-Received: by 2002:a1c:4008:: with SMTP id n8mr2393453wma.121.1579691338716; 
 Wed, 22 Jan 2020 03:08:58 -0800 (PST)
Received: from wambui.zuku.co.ke ([197.237.61.225])
 by smtp.googlemail.com with ESMTPSA id l3sm52454380wrt.29.2020.01.22.03.08.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Jan 2020 03:08:58 -0800 (PST)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, airlied@linux.ie, daniel@ffwll.ch
Date: Wed, 22 Jan 2020 14:08:41 +0300
Message-Id: <20200122110844.2022-4-wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200122110844.2022-1-wambui.karugax@gmail.com>
References: <20200122110844.2022-1-wambui.karugax@gmail.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 23 Jan 2020 10:23:15 +0000
Subject: [Intel-gfx] [PATCH v2 3/6] drm/i915/power: convert to struct
 drm_device macros in display/intel_display_power.c
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
Cc: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Converts various instances of the printk based logging macros in
i915/display/intel_display_power.c to the struct drm_device based
logging macros using the following coccinelle script:
@rule1@
identifier fn, T;
@@

fn(...,struct drm_i915_private *T,...) {
<+...
(
-DRM_INFO(
+drm_info(&T->drm,
...)
|
-DRM_ERROR(
+drm_err(&T->drm,
...)
|
-DRM_WARN(
+drm_warn(&T->drm,
...)
|
-DRM_DEBUG(
+drm_dbg(&T->drm,
...)
|
-DRM_DEBUG_DRIVER(
+drm_dbg(&T->drm,
...)
|
-DRM_DEBUG_KMS(
+drm_dbg_kms(&T->drm,
...)
|
-DRM_DEBUG_ATOMIC(
+drm_dbg_atomic(&T->drm,
...)
)
...+>
}

@rule2@
identifier fn, T;
@@

fn(...) {
...
struct drm_i915_private *T = ...;
<+...
(
-DRM_INFO(
+drm_info(&T->drm,
...)
|
-DRM_ERROR(
+drm_err(&T->drm,
...)
|
-DRM_WARN(
+drm_warn(&T->drm,
...)
|
-DRM_DEBUG(
+drm_dbg(&T->drm,
...)
|
-DRM_DEBUG_KMS(
+drm_dbg_kms(&T->drm,
...)
|
-DRM_DEBUG_DRIVER(
+drm_dbg(&T->drm,
...)
|
-DRM_DEBUG_ATOMIC(
+drm_dbg_atomic(&T->drm,
...)
)
...+>
}

Checkpatch warnings were fixed manually.

Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 .../drm/i915/display/intel_display_power.c    | 177 ++++++++++--------
 1 file changed, 99 insertions(+), 78 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 21561acfa3ac..18d8bfdcb086 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -159,7 +159,7 @@ intel_display_power_domain_str(enum intel_display_power_domain domain)
 static void intel_power_well_enable(struct drm_i915_private *dev_priv,
 				    struct i915_power_well *power_well)
 {
-	DRM_DEBUG_KMS("enabling %s\n", power_well->desc->name);
+	drm_dbg_kms(&dev_priv->drm, "enabling %s\n", power_well->desc->name);
 	power_well->desc->ops->enable(dev_priv, power_well);
 	power_well->hw_enabled = true;
 }
@@ -167,7 +167,7 @@ static void intel_power_well_enable(struct drm_i915_private *dev_priv,
 static void intel_power_well_disable(struct drm_i915_private *dev_priv,
 				     struct i915_power_well *power_well)
 {
-	DRM_DEBUG_KMS("disabling %s\n", power_well->desc->name);
+	drm_dbg_kms(&dev_priv->drm, "disabling %s\n", power_well->desc->name);
 	power_well->hw_enabled = false;
 	power_well->desc->ops->disable(dev_priv, power_well);
 }
@@ -289,8 +289,8 @@ static void hsw_wait_for_power_well_enable(struct drm_i915_private *dev_priv,
 	/* Timeout for PW1:10 us, AUX:not specified, other PWs:20 us. */
 	if (intel_de_wait_for_set(dev_priv, regs->driver,
 				  HSW_PWR_WELL_CTL_STATE(pw_idx), 1)) {
-		DRM_DEBUG_KMS("%s power well enable timeout\n",
-			      power_well->desc->name);
+		drm_dbg_kms(&dev_priv->drm, "%s power well enable timeout\n",
+			    power_well->desc->name);
 
 		/* An AUX timeout is expected if the TBT DP tunnel is down. */
 		WARN_ON(!power_well->desc->hsw.is_tc_tbt);
@@ -336,9 +336,10 @@ static void hsw_wait_for_power_well_disable(struct drm_i915_private *dev_priv,
 	if (disabled)
 		return;
 
-	DRM_DEBUG_KMS("%s forced on (bios:%d driver:%d kvmr:%d debug:%d)\n",
-		      power_well->desc->name,
-		      !!(reqs & 1), !!(reqs & 2), !!(reqs & 4), !!(reqs & 8));
+	drm_dbg_kms(&dev_priv->drm,
+		    "%s forced on (bios:%d driver:%d kvmr:%d debug:%d)\n",
+		    power_well->desc->name,
+		    !!(reqs & 1), !!(reqs & 2), !!(reqs & 4), !!(reqs & 8));
 }
 
 static void gen9_wait_for_power_well_fuses(struct drm_i915_private *dev_priv,
@@ -568,7 +569,8 @@ icl_tc_phy_aux_power_well_enable(struct drm_i915_private *dev_priv,
 
 		if (intel_de_wait_for_set(dev_priv, DKL_CMN_UC_DW_27(tc_port),
 					  DKL_CMN_UC_DW27_UC_HEALTH, 1))
-			DRM_WARN("Timeout waiting TC uC health\n");
+			drm_warn(&dev_priv->drm,
+				 "Timeout waiting TC uC health\n");
 	}
 }
 
@@ -676,13 +678,15 @@ static void gen9_write_dc_state(struct drm_i915_private *dev_priv,
 	} while (rewrites < 100);
 
 	if (v != state)
-		DRM_ERROR("Writing dc state to 0x%x failed, now 0x%x\n",
-			  state, v);
+		drm_err(&dev_priv->drm,
+			"Writing dc state to 0x%x failed, now 0x%x\n",
+			state, v);
 
 	/* Most of the times we need one retry, avoid spam */
 	if (rewrites > 1)
-		DRM_DEBUG_KMS("Rewrote dc state to 0x%x %d times\n",
-			      state, rewrites);
+		drm_dbg_kms(&dev_priv->drm,
+			    "Rewrote dc state to 0x%x %d times\n",
+			    state, rewrites);
 }
 
 static u32 gen9_dc_mask(struct drm_i915_private *dev_priv)
@@ -710,8 +714,9 @@ static void gen9_sanitize_dc_state(struct drm_i915_private *dev_priv)
 
 	val = I915_READ(DC_STATE_EN) & gen9_dc_mask(dev_priv);
 
-	DRM_DEBUG_KMS("Resetting DC state tracking from %02x to %02x\n",
-		      dev_priv->csr.dc_state, val);
+	drm_dbg_kms(&dev_priv->drm,
+		    "Resetting DC state tracking from %02x to %02x\n",
+		    dev_priv->csr.dc_state, val);
 	dev_priv->csr.dc_state = val;
 }
 
@@ -748,13 +753,13 @@ static void gen9_set_dc_state(struct drm_i915_private *dev_priv, u32 state)
 
 	val = I915_READ(DC_STATE_EN);
 	mask = gen9_dc_mask(dev_priv);
-	DRM_DEBUG_KMS("Setting DC state from %02x to %02x\n",
-		      val & mask, state);
+	drm_dbg_kms(&dev_priv->drm, "Setting DC state from %02x to %02x\n",
+		    val & mask, state);
 
 	/* Check if DMC is ignoring our DC state requests */
 	if ((val & mask) != dev_priv->csr.dc_state)
-		DRM_ERROR("DC state mismatch (0x%x -> 0x%x)\n",
-			  dev_priv->csr.dc_state, val & mask);
+		drm_err(&dev_priv->drm, "DC state mismatch (0x%x -> 0x%x)\n",
+			dev_priv->csr.dc_state, val & mask);
 
 	val &= ~mask;
 	val |= state;
@@ -791,7 +796,7 @@ sanitize_target_dc_state(struct drm_i915_private *dev_priv,
 
 static void tgl_enable_dc3co(struct drm_i915_private *dev_priv)
 {
-	DRM_DEBUG_KMS("Enabling DC3CO\n");
+	drm_dbg_kms(&dev_priv->drm, "Enabling DC3CO\n");
 	gen9_set_dc_state(dev_priv, DC_STATE_EN_DC3CO);
 }
 
@@ -799,7 +804,7 @@ static void tgl_disable_dc3co(struct drm_i915_private *dev_priv)
 {
 	u32 val;
 
-	DRM_DEBUG_KMS("Disabling DC3CO\n");
+	drm_dbg_kms(&dev_priv->drm, "Disabling DC3CO\n");
 	val = I915_READ(DC_STATE_EN);
 	val &= ~DC_STATE_DC3CO_STATUS;
 	I915_WRITE(DC_STATE_EN, val);
@@ -814,7 +819,7 @@ static void bxt_enable_dc9(struct drm_i915_private *dev_priv)
 {
 	assert_can_enable_dc9(dev_priv);
 
-	DRM_DEBUG_KMS("Enabling DC9\n");
+	drm_dbg_kms(&dev_priv->drm, "Enabling DC9\n");
 	/*
 	 * Power sequencer reset is not needed on
 	 * platforms with South Display Engine on PCH,
@@ -829,7 +834,7 @@ static void bxt_disable_dc9(struct drm_i915_private *dev_priv)
 {
 	assert_can_disable_dc9(dev_priv);
 
-	DRM_DEBUG_KMS("Disabling DC9\n");
+	drm_dbg_kms(&dev_priv->drm, "Disabling DC9\n");
 
 	gen9_set_dc_state(dev_priv, DC_STATE_DISABLE);
 
@@ -928,7 +933,7 @@ static void gen9_enable_dc5(struct drm_i915_private *dev_priv)
 {
 	assert_can_enable_dc5(dev_priv);
 
-	DRM_DEBUG_KMS("Enabling DC5\n");
+	drm_dbg_kms(&dev_priv->drm, "Enabling DC5\n");
 
 	/* Wa Display #1183: skl,kbl,cfl */
 	if (IS_GEN9_BC(dev_priv))
@@ -952,7 +957,7 @@ static void skl_enable_dc6(struct drm_i915_private *dev_priv)
 {
 	assert_can_enable_dc6(dev_priv);
 
-	DRM_DEBUG_KMS("Enabling DC6\n");
+	drm_dbg_kms(&dev_priv->drm, "Enabling DC6\n");
 
 	/* Wa Display #1183: skl,kbl,cfl */
 	if (IS_GEN9_BC(dev_priv))
@@ -1163,9 +1168,10 @@ static void vlv_set_power_well(struct drm_i915_private *dev_priv,
 	vlv_punit_write(dev_priv, PUNIT_REG_PWRGT_CTRL, ctrl);
 
 	if (wait_for(COND, 100))
-		DRM_ERROR("timeout setting power well state %08x (%08x)\n",
-			  state,
-			  vlv_punit_read(dev_priv, PUNIT_REG_PWRGT_CTRL));
+		drm_err(&dev_priv->drm,
+			"timeout setting power well state %08x (%08x)\n",
+			state,
+			vlv_punit_read(dev_priv, PUNIT_REG_PWRGT_CTRL));
 
 #undef COND
 
@@ -1467,9 +1473,10 @@ static void assert_chv_phy_status(struct drm_i915_private *dev_priv)
 	 */
 	if (intel_de_wait_for_register(dev_priv, DISPLAY_PHY_STATUS,
 				       phy_status_mask, phy_status, 10))
-		DRM_ERROR("Unexpected PHY_STATUS 0x%08x, expected 0x%08x (PHY_CONTROL=0x%08x)\n",
-			  I915_READ(DISPLAY_PHY_STATUS) & phy_status_mask,
-			   phy_status, dev_priv->chv_phy_control);
+		drm_err(&dev_priv->drm,
+			"Unexpected PHY_STATUS 0x%08x, expected 0x%08x (PHY_CONTROL=0x%08x)\n",
+			I915_READ(DISPLAY_PHY_STATUS) & phy_status_mask,
+			phy_status, dev_priv->chv_phy_control);
 }
 
 #undef BITS_SET
@@ -1499,7 +1506,8 @@ static void chv_dpio_cmn_power_well_enable(struct drm_i915_private *dev_priv,
 	/* Poll for phypwrgood signal */
 	if (intel_de_wait_for_set(dev_priv, DISPLAY_PHY_STATUS,
 				  PHY_POWERGOOD(phy), 1))
-		DRM_ERROR("Display PHY %d is not power up\n", phy);
+		drm_err(&dev_priv->drm, "Display PHY %d is not power up\n",
+			phy);
 
 	vlv_dpio_get(dev_priv);
 
@@ -1529,8 +1537,9 @@ static void chv_dpio_cmn_power_well_enable(struct drm_i915_private *dev_priv,
 	dev_priv->chv_phy_control |= PHY_COM_LANE_RESET_DEASSERT(phy);
 	I915_WRITE(DISPLAY_PHY_CONTROL, dev_priv->chv_phy_control);
 
-	DRM_DEBUG_KMS("Enabled DPIO PHY%d (PHY_CONTROL=0x%08x)\n",
-		      phy, dev_priv->chv_phy_control);
+	drm_dbg_kms(&dev_priv->drm,
+		    "Enabled DPIO PHY%d (PHY_CONTROL=0x%08x)\n",
+		    phy, dev_priv->chv_phy_control);
 
 	assert_chv_phy_status(dev_priv);
 }
@@ -1557,8 +1566,9 @@ static void chv_dpio_cmn_power_well_disable(struct drm_i915_private *dev_priv,
 
 	vlv_set_power_well(dev_priv, power_well, false);
 
-	DRM_DEBUG_KMS("Disabled DPIO PHY%d (PHY_CONTROL=0x%08x)\n",
-		      phy, dev_priv->chv_phy_control);
+	drm_dbg_kms(&dev_priv->drm,
+		    "Disabled DPIO PHY%d (PHY_CONTROL=0x%08x)\n",
+		    phy, dev_priv->chv_phy_control);
 
 	/* PHY is fully reset now, so we can enable the PHY state asserts */
 	dev_priv->chv_phy_assert[phy] = true;
@@ -1648,8 +1658,9 @@ bool chv_phy_powergate_ch(struct drm_i915_private *dev_priv, enum dpio_phy phy,
 
 	I915_WRITE(DISPLAY_PHY_CONTROL, dev_priv->chv_phy_control);
 
-	DRM_DEBUG_KMS("Power gating DPIO PHY%d CH%d (DPIO_PHY_CONTROL=0x%08x)\n",
-		      phy, ch, dev_priv->chv_phy_control);
+	drm_dbg_kms(&dev_priv->drm,
+		    "Power gating DPIO PHY%d CH%d (DPIO_PHY_CONTROL=0x%08x)\n",
+		    phy, ch, dev_priv->chv_phy_control);
 
 	assert_chv_phy_status(dev_priv);
 
@@ -1679,8 +1690,9 @@ void chv_phy_powergate_lanes(struct intel_encoder *encoder,
 
 	I915_WRITE(DISPLAY_PHY_CONTROL, dev_priv->chv_phy_control);
 
-	DRM_DEBUG_KMS("Power gating DPIO PHY%d CH%d lanes 0x%x (PHY_CONTROL=0x%08x)\n",
-		      phy, ch, mask, dev_priv->chv_phy_control);
+	drm_dbg_kms(&dev_priv->drm,
+		    "Power gating DPIO PHY%d CH%d lanes 0x%x (PHY_CONTROL=0x%08x)\n",
+		    phy, ch, mask, dev_priv->chv_phy_control);
 
 	assert_chv_phy_status(dev_priv);
 
@@ -1742,9 +1754,10 @@ static void chv_set_pipe_power_well(struct drm_i915_private *dev_priv,
 	vlv_punit_write(dev_priv, PUNIT_REG_DSPSSPM, ctrl);
 
 	if (wait_for(COND, 100))
-		DRM_ERROR("timeout setting power well state %08x (%08x)\n",
-			  state,
-			  vlv_punit_read(dev_priv, PUNIT_REG_DSPSSPM));
+		drm_err(&dev_priv->drm,
+			"timeout setting power well state %08x (%08x)\n",
+			state,
+			vlv_punit_read(dev_priv, PUNIT_REG_DSPSSPM));
 
 #undef COND
 
@@ -4204,11 +4217,13 @@ static u32 get_allowed_dc_mask(const struct drm_i915_private *dev_priv,
 	} else if (enable_dc == -1) {
 		requested_dc = max_dc;
 	} else if (enable_dc > max_dc && enable_dc <= 4) {
-		DRM_DEBUG_KMS("Adjusting requested max DC state (%d->%d)\n",
-			      enable_dc, max_dc);
+		drm_dbg_kms(&dev_priv->drm,
+			    "Adjusting requested max DC state (%d->%d)\n",
+			    enable_dc, max_dc);
 		requested_dc = max_dc;
 	} else {
-		DRM_ERROR("Unexpected value for enable_dc (%d)\n", enable_dc);
+		drm_err(&dev_priv->drm,
+			"Unexpected value for enable_dc (%d)\n", enable_dc);
 		requested_dc = max_dc;
 	}
 
@@ -4227,7 +4242,7 @@ static u32 get_allowed_dc_mask(const struct drm_i915_private *dev_priv,
 		break;
 	}
 
-	DRM_DEBUG_KMS("Allowed DC state mask %02x\n", mask);
+	drm_dbg_kms(&dev_priv->drm, "Allowed DC state mask %02x\n", mask);
 
 	return mask;
 }
@@ -4379,8 +4394,8 @@ bool intel_dbuf_slice_set(struct drm_i915_private *dev_priv,
 
 	status = I915_READ(reg) & DBUF_POWER_STATE;
 	if ((enable && !status) || (!enable && status)) {
-		DRM_ERROR("DBus power %s timeout!\n",
-			  enable ? "enable" : "disable");
+		drm_err(&dev_priv->drm, "DBus power %s timeout!\n",
+			enable ? "enable" : "disable");
 		return false;
 	}
 	return true;
@@ -4410,7 +4425,8 @@ void icl_dbuf_slices_update(struct drm_i915_private *dev_priv,
 	bool ret;
 
 	if (req_slices > intel_dbuf_max_slices(dev_priv)) {
-		DRM_ERROR("Invalid number of dbuf slices requested\n");
+		drm_err(&dev_priv->drm,
+			"Invalid number of dbuf slices requested\n");
 		return;
 	}
 
@@ -4436,7 +4452,7 @@ static void icl_dbuf_enable(struct drm_i915_private *dev_priv)
 
 	if (!(I915_READ(DBUF_CTL_S1) & DBUF_POWER_STATE) ||
 	    !(I915_READ(DBUF_CTL_S2) & DBUF_POWER_STATE))
-		DRM_ERROR("DBuf power enable timeout\n");
+		drm_err(&dev_priv->drm, "DBuf power enable timeout\n");
 	else
 		/*
 		 * FIXME: for now pretend that we only have 1 slice, see
@@ -4455,7 +4471,7 @@ static void icl_dbuf_disable(struct drm_i915_private *dev_priv)
 
 	if ((I915_READ(DBUF_CTL_S1) & DBUF_POWER_STATE) ||
 	    (I915_READ(DBUF_CTL_S2) & DBUF_POWER_STATE))
-		DRM_ERROR("DBuf power disable timeout!\n");
+		drm_err(&dev_priv->drm, "DBuf power disable timeout!\n");
 	else
 		/*
 		 * FIXME: for now pretend that the first slice is always
@@ -4487,13 +4503,13 @@ static void hsw_assert_cdclk(struct drm_i915_private *dev_priv)
 	 */
 
 	if (val & LCPLL_CD_SOURCE_FCLK)
-		DRM_ERROR("CDCLK source is not LCPLL\n");
+		drm_err(&dev_priv->drm, "CDCLK source is not LCPLL\n");
 
 	if (val & LCPLL_PLL_DISABLE)
-		DRM_ERROR("LCPLL is disabled\n");
+		drm_err(&dev_priv->drm, "LCPLL is disabled\n");
 
 	if ((val & LCPLL_REF_MASK) != LCPLL_REF_NON_SSC)
-		DRM_ERROR("LCPLL not using non-SSC reference\n");
+		drm_err(&dev_priv->drm, "LCPLL not using non-SSC reference\n");
 }
 
 static void assert_can_disable_lcpll(struct drm_i915_private *dev_priv)
@@ -4549,7 +4565,8 @@ static void hsw_write_dcomp(struct drm_i915_private *dev_priv, u32 val)
 	if (IS_HASWELL(dev_priv)) {
 		if (sandybridge_pcode_write(dev_priv,
 					    GEN6_PCODE_WRITE_D_COMP, val))
-			DRM_DEBUG_KMS("Failed to write to D_COMP\n");
+			drm_dbg_kms(&dev_priv->drm,
+				    "Failed to write to D_COMP\n");
 	} else {
 		I915_WRITE(D_COMP_BDW, val);
 		POSTING_READ(D_COMP_BDW);
@@ -4579,7 +4596,7 @@ static void hsw_disable_lcpll(struct drm_i915_private *dev_priv,
 
 		if (wait_for_us(I915_READ(LCPLL_CTL) &
 				LCPLL_CD_SOURCE_FCLK_DONE, 1))
-			DRM_ERROR("Switching to FCLK failed\n");
+			drm_err(&dev_priv->drm, "Switching to FCLK failed\n");
 
 		val = I915_READ(LCPLL_CTL);
 	}
@@ -4589,7 +4606,7 @@ static void hsw_disable_lcpll(struct drm_i915_private *dev_priv,
 	POSTING_READ(LCPLL_CTL);
 
 	if (intel_de_wait_for_clear(dev_priv, LCPLL_CTL, LCPLL_PLL_LOCK, 1))
-		DRM_ERROR("LCPLL still locked\n");
+		drm_err(&dev_priv->drm, "LCPLL still locked\n");
 
 	val = hsw_read_dcomp(dev_priv);
 	val |= D_COMP_COMP_DISABLE;
@@ -4598,7 +4615,7 @@ static void hsw_disable_lcpll(struct drm_i915_private *dev_priv,
 
 	if (wait_for((hsw_read_dcomp(dev_priv) &
 		      D_COMP_RCOMP_IN_PROGRESS) == 0, 1))
-		DRM_ERROR("D_COMP RCOMP still in progress\n");
+		drm_err(&dev_priv->drm, "D_COMP RCOMP still in progress\n");
 
 	if (allow_power_down) {
 		val = I915_READ(LCPLL_CTL);
@@ -4644,7 +4661,7 @@ static void hsw_restore_lcpll(struct drm_i915_private *dev_priv)
 	I915_WRITE(LCPLL_CTL, val);
 
 	if (intel_de_wait_for_set(dev_priv, LCPLL_CTL, LCPLL_PLL_LOCK, 5))
-		DRM_ERROR("LCPLL not locked yet\n");
+		drm_err(&dev_priv->drm, "LCPLL not locked yet\n");
 
 	if (val & LCPLL_CD_SOURCE_FCLK) {
 		val = I915_READ(LCPLL_CTL);
@@ -4653,7 +4670,8 @@ static void hsw_restore_lcpll(struct drm_i915_private *dev_priv)
 
 		if (wait_for_us((I915_READ(LCPLL_CTL) &
 				 LCPLL_CD_SOURCE_FCLK_DONE) == 0, 1))
-			DRM_ERROR("Switching back to LCPLL failed\n");
+			drm_err(&dev_priv->drm,
+				"Switching back to LCPLL failed\n");
 	}
 
 	intel_uncore_forcewake_put(&dev_priv->uncore, FORCEWAKE_ALL);
@@ -4689,7 +4707,7 @@ static void hsw_enable_pc8(struct drm_i915_private *dev_priv)
 {
 	u32 val;
 
-	DRM_DEBUG_KMS("Enabling package C8+\n");
+	drm_dbg_kms(&dev_priv->drm, "Enabling package C8+\n");
 
 	if (HAS_PCH_LPT_LP(dev_priv)) {
 		val = I915_READ(SOUTH_DSPCLK_GATE_D);
@@ -4705,7 +4723,7 @@ static void hsw_disable_pc8(struct drm_i915_private *dev_priv)
 {
 	u32 val;
 
-	DRM_DEBUG_KMS("Disabling package C8+\n");
+	drm_dbg_kms(&dev_priv->drm, "Disabling package C8+\n");
 
 	hsw_restore_lcpll(dev_priv);
 	intel_init_pch_refclk(dev_priv);
@@ -4964,7 +4982,8 @@ static void tgl_bw_buddy_init(struct drm_i915_private *dev_priv)
 			break;
 
 	if (table[i].page_mask == 0) {
-		DRM_DEBUG_DRIVER("Unknown memory configuration; disabling address buddy logic.\n");
+		drm_dbg(&dev_priv->drm,
+			"Unknown memory configuration; disabling address buddy logic.\n");
 		I915_WRITE(BW_BUDDY1_CTL, BW_BUDDY_DISABLE);
 		I915_WRITE(BW_BUDDY2_CTL, BW_BUDDY_DISABLE);
 	} else {
@@ -5125,8 +5144,8 @@ static void chv_phy_control_init(struct drm_i915_private *dev_priv)
 
 	I915_WRITE(DISPLAY_PHY_CONTROL, dev_priv->chv_phy_control);
 
-	DRM_DEBUG_KMS("Initial PHY_CONTROL=0x%08x\n",
-		      dev_priv->chv_phy_control);
+	drm_dbg_kms(&dev_priv->drm, "Initial PHY_CONTROL=0x%08x\n",
+		    dev_priv->chv_phy_control);
 }
 
 static void vlv_cmnlane_wa(struct drm_i915_private *dev_priv)
@@ -5142,7 +5161,7 @@ static void vlv_cmnlane_wa(struct drm_i915_private *dev_priv)
 	    I915_READ(DPIO_CTL) & DPIO_CMNRST)
 		return;
 
-	DRM_DEBUG_KMS("toggling display PHY side reset\n");
+	drm_dbg_kms(&dev_priv->drm, "toggling display PHY side reset\n");
 
 	/* cmnlane needs DPLL registers */
 	disp2d->desc->ops->enable(dev_priv, disp2d);
@@ -5417,13 +5436,13 @@ static void intel_power_domains_dump_info(struct drm_i915_private *i915)
 	for_each_power_well(i915, power_well) {
 		enum intel_display_power_domain domain;
 
-		DRM_DEBUG_DRIVER("%-25s %d\n",
-				 power_well->desc->name, power_well->count);
+		drm_dbg(&i915->drm, "%-25s %d\n",
+			power_well->desc->name, power_well->count);
 
 		for_each_power_domain(domain, power_well->desc->domains)
-			DRM_DEBUG_DRIVER("  %-23s %d\n",
-					 intel_display_power_domain_str(domain),
-					 power_domains->domain_use_count[domain]);
+			drm_dbg(&i915->drm, "  %-23s %d\n",
+				intel_display_power_domain_str(domain),
+				power_domains->domain_use_count[domain]);
 	}
 }
 
@@ -5456,19 +5475,21 @@ static void intel_power_domains_verify_state(struct drm_i915_private *i915)
 		enabled = power_well->desc->ops->is_enabled(i915, power_well);
 		if ((power_well->count || power_well->desc->always_on) !=
 		    enabled)
-			DRM_ERROR("power well %s state mismatch (refcount %d/enabled %d)",
-				  power_well->desc->name,
-				  power_well->count, enabled);
+			drm_err(&i915->drm,
+				"power well %s state mismatch (refcount %d/enabled %d)",
+				power_well->desc->name,
+				power_well->count, enabled);
 
 		domains_count = 0;
 		for_each_power_domain(domain, power_well->desc->domains)
 			domains_count += power_domains->domain_use_count[domain];
 
 		if (power_well->count != domains_count) {
-			DRM_ERROR("power well %s refcount/domain refcount mismatch "
-				  "(refcount %d/domains refcount %d)\n",
-				  power_well->desc->name, power_well->count,
-				  domains_count);
+			drm_err(&i915->drm,
+				"power well %s refcount/domain refcount mismatch "
+				"(refcount %d/domains refcount %d)\n",
+				power_well->desc->name, power_well->count,
+				domains_count);
 			dump_domain_info = true;
 		}
 	}
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
