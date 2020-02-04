Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E43BD1517A9
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2020 10:19:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44D636EE1B;
	Tue,  4 Feb 2020 09:19:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4085A6EE1B
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Feb 2020 09:19:53 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id y11so21972561wrt.6
 for <intel-gfx@lists.freedesktop.org>; Tue, 04 Feb 2020 01:19:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=cQ8fBXJsqankCKJ6ed8A+3dPcowN43/k0B4zSWk125Q=;
 b=Qwth/0zZypb51C0S6JO9gfBzKlhV8e5lrZbq2k1QxPd268YxdxFP6qrnymbhcdf8xh
 z29POcI0kmh7caVhfwh3Dm/MOZD2YHeoYH9u1BYnkBuT62+rSTenAw+tg9LxsEQmmqo0
 DhxrEVaSG25a7t1zVaUSFQTewBgi/ZX1uw1Ztlh1gHjKf1JRerKqK648Hc9HDqOjUxHy
 ohkM0NQuFDD2r4OVwA65Zml7nnbxqB49qzejPe7msagRcMXrhn1VwilxxMgXgTFxGWhd
 tAccUFNcUaNc5+rJDi9nHxnQNVhV2q2QZETctQqS3HtYN5s5IyfR/eqnQ91en/H2nAeG
 gU2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=cQ8fBXJsqankCKJ6ed8A+3dPcowN43/k0B4zSWk125Q=;
 b=lkeBr0ulTq8jCwRU6G7vZHgF6Elz+mD77PijKPSUB0+RubhMgCSIZx0AvwGtjMgsEu
 NDF5wq4Ol/4hm64ycCrwWNz3MiM/z8kWyA4HNW5ni/A6y0IDiUGnu1WaNvwAgcunnY8T
 WliHQ01sZSZ7n2JEyDhK+0JoSTtts/q3Y8mh36Ayue4fuWyJA4IX2dOvnf9ifoQq3j9z
 gyAKtElVZPePE4T8zhPaOEcVxLf47qNecS0CenedFywclsdWb4br9PN37dsB8aPknU8R
 fpWeb3L8xvWy6wHvb8n5cHtcbgTpQvsq4eBoI8p0r1aBKGe4yc9pTytP+wRU9sUshEs2
 SDFg==
X-Gm-Message-State: APjAAAVn9WWEBT9o3d222TzU1+ve7BDa67lQfX1DZLpmd3cZy8dSX4nz
 z7rJ+BK+RS/1HmSt4gxMOm4=
X-Google-Smtp-Source: APXvYqwsZ/quZ9drnXJTX6yU60Q1IxwlpbJTKtoUj24IUsHvlsUR5FN1GpKO4QswYWKlJry4RmmNbQ==
X-Received: by 2002:a5d:608f:: with SMTP id w15mr16139658wrt.20.1580807991932; 
 Tue, 04 Feb 2020 01:19:51 -0800 (PST)
Received: from wambui.zuku.co.ke ([197.237.61.225])
 by smtp.googlemail.com with ESMTPSA id f189sm3094968wmf.16.2020.02.04.01.19.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 04 Feb 2020 01:19:51 -0800 (PST)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, airlied@linux.ie, daniel@ffwll.ch
Date: Tue,  4 Feb 2020 12:18:55 +0300
Message-Id: <20200204091855.24259-13-wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200204091855.24259-1-wambui.karugax@gmail.com>
References: <20200204091855.24259-1-wambui.karugax@gmail.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 12/12] drm/i915/dpio_phy: convert to drm_device
 based logging macros.
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Conversion of the printk based logging macros to the struct drm_device
based logging macros in i915/display/intel_dpio_phy.c.
This was achieved using the following coccinelle semantic patch that
matches based on the existence of a drm_i915_private device:
@@
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

@@
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

Note that this converts both DRM_DEBUG/DRM_DEBUG_DRIVER to drm_dbg().
Checkpatch warnings were fixed manually.

References: https://lists.freedesktop.org/archives/dri-devel/2020-January/253381.html
Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 drivers/gpu/drm/i915/display/intel_dpio_phy.c | 28 +++++++++++--------
 1 file changed, 16 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpio_phy.c b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
index e9d46ae75377..a8557720d34b 100644
--- a/drivers/gpu/drm/i915/display/intel_dpio_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
@@ -293,7 +293,8 @@ void bxt_ddi_phy_set_signal_level(struct drm_i915_private *dev_priv,
 		val |= SCALE_DCOMP_METHOD;
 
 	if ((val & UNIQUE_TRANGE_EN_METHOD) && !(val & SCALE_DCOMP_METHOD))
-		DRM_ERROR("Disabled scaling while ouniqetrangenmethod was set");
+		drm_err(&dev_priv->drm,
+			"Disabled scaling while ouniqetrangenmethod was set");
 
 	intel_de_write(dev_priv, BXT_PORT_TX_DW3_GRP(phy, ch), val);
 
@@ -319,15 +320,15 @@ bool bxt_ddi_phy_is_enabled(struct drm_i915_private *dev_priv,
 
 	if ((intel_de_read(dev_priv, BXT_PORT_CL1CM_DW0(phy)) &
 	     (PHY_POWER_GOOD | PHY_RESERVED)) != PHY_POWER_GOOD) {
-		DRM_DEBUG_DRIVER("DDI PHY %d powered, but power hasn't settled\n",
-				 phy);
+		drm_dbg(&dev_priv->drm,
+			"DDI PHY %d powered, but power hasn't settled\n", phy);
 
 		return false;
 	}
 
 	if (!(intel_de_read(dev_priv, BXT_PHY_CTL_FAMILY(phy)) & COMMON_RESET_DIS)) {
-		DRM_DEBUG_DRIVER("DDI PHY %d powered, but still in reset\n",
-				 phy);
+		drm_dbg(&dev_priv->drm,
+			"DDI PHY %d powered, but still in reset\n", phy);
 
 		return false;
 	}
@@ -347,7 +348,8 @@ static void bxt_phy_wait_grc_done(struct drm_i915_private *dev_priv,
 {
 	if (intel_de_wait_for_set(dev_priv, BXT_PORT_REF_DW3(phy),
 				  GRC_DONE, 10))
-		DRM_ERROR("timeout waiting for PHY%d GRC\n", phy);
+		drm_err(&dev_priv->drm, "timeout waiting for PHY%d GRC\n",
+			phy);
 }
 
 static void _bxt_ddi_phy_init(struct drm_i915_private *dev_priv,
@@ -364,13 +366,14 @@ static void _bxt_ddi_phy_init(struct drm_i915_private *dev_priv,
 			dev_priv->bxt_phy_grc = bxt_get_grc(dev_priv, phy);
 
 		if (bxt_ddi_phy_verify_state(dev_priv, phy)) {
-			DRM_DEBUG_DRIVER("DDI PHY %d already enabled, "
-					 "won't reprogram it\n", phy);
+			drm_dbg(&dev_priv->drm, "DDI PHY %d already enabled, "
+				"won't reprogram it\n", phy);
 			return;
 		}
 
-		DRM_DEBUG_DRIVER("DDI PHY %d enabled with invalid state, "
-				 "force reprogramming it\n", phy);
+		drm_dbg(&dev_priv->drm,
+			"DDI PHY %d enabled with invalid state, "
+			"force reprogramming it\n", phy);
 	}
 
 	val = intel_de_read(dev_priv, BXT_P_CR_GT_DISP_PWRON);
@@ -390,7 +393,8 @@ static void _bxt_ddi_phy_init(struct drm_i915_private *dev_priv,
 				       PHY_RESERVED | PHY_POWER_GOOD,
 				       PHY_POWER_GOOD,
 				       1))
-		DRM_ERROR("timeout during PHY%d power on\n", phy);
+		drm_err(&dev_priv->drm, "timeout during PHY%d power on\n",
+			phy);
 
 	/* Program PLL Rcomp code offset */
 	val = intel_de_read(dev_priv, BXT_PORT_CL1CM_DW9(phy));
@@ -504,7 +508,7 @@ __phy_reg_verify_state(struct drm_i915_private *dev_priv, enum dpio_phy phy,
 	vaf.fmt = reg_fmt;
 	vaf.va = &args;
 
-	DRM_DEBUG_DRIVER("DDI PHY %d reg %pV [%08x] state mismatch: "
+	drm_dbg(&dev_priv->drm, "DDI PHY %d reg %pV [%08x] state mismatch: "
 			 "current %08x, expected %08x (mask %08x)\n",
 			 phy, &vaf, reg.reg, val, (val & ~mask) | expected,
 			 mask);
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
