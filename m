Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 966411517A4
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2020 10:19:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE2296EE13;
	Tue,  4 Feb 2020 09:19:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E8EDA6EE12
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Feb 2020 09:19:37 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id y11so21971532wrt.6
 for <intel-gfx@lists.freedesktop.org>; Tue, 04 Feb 2020 01:19:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=GElkeIH25JpiCiVrvyeeieizZwD2EB2FWBCIe9PXsxE=;
 b=K8SZ4QCOP5PYR/qZAObuaEABg75Y2yJiN9HLfU1V7/BC1wxgtBzZyG2EJwx/9ROVcp
 NnhngR8lf9JtCxEc359Olvo8GQ2oVqCQEYAdemok+HcaT/zwQY4LdMiij10zFKeL+ZxV
 arEGSuXV3UNLE6sVnoTaTNLVs7J9ElwxLZbeH7oSJ0zXDEnJEi26tcFUmY6lGhluECPG
 d4U09oyHsO6RAQ4CKBdiJ5SymaO8GAo9M7aG28ASE/8kSoiOKRXt8FhrVrdSgie+T6oJ
 VBkMWBqREPsX3vqeDS9wIqEaufK/yh0iXiNAp9S3iEiexfqbsaYAs48iJhQFwey8ZCcS
 eD8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=GElkeIH25JpiCiVrvyeeieizZwD2EB2FWBCIe9PXsxE=;
 b=U3Zgd0yql4NsdlsUzNvg2RU3zLwzMGe31t6X6uHfMwVc6DnAc1cRzQXPi/CLhZdxqC
 V5t6gN/rT91X0Wob2eY7/xhpQTrG0utIYevzScRcdT8zonUZT0sJ8DXrhfM7feNTsfN9
 hg/kyGE7pZ+bg5d/Ko1NbqxMSX1MjkwXyPGVvXWRdFgkthGspjWi6twXQpyMu6/XCpvW
 r3ZaHsrTsad8BBvv042fn+neA3iw8paKQp4kU6Snl1bkEgTlyp3xHcr+F8iv7uGzFIdg
 nsbGPGfe1h92+k5PL6a85ECnEAPvV7D7qxlmWoMnxPfydiD/Tr01ZrbGTTM1zcnw++M+
 N/8Q==
X-Gm-Message-State: APjAAAU7n6ysiHZV7TZ/uybpsTvXv4RMZmbQOKIuHO47zX5JibKSFXg4
 x083inf3prKKRIqMJV6W2K0=
X-Google-Smtp-Source: APXvYqwexh6hTEvZgHPwrrYQsSP2z2zTMUsl6l+uDB2IxaFNebcQkv0NG7qbM7S3rpMeOLGYwCwWjg==
X-Received: by 2002:adf:d850:: with SMTP id k16mr20578870wrl.216.1580807976639; 
 Tue, 04 Feb 2020 01:19:36 -0800 (PST)
Received: from wambui.zuku.co.ke ([197.237.61.225])
 by smtp.googlemail.com with ESMTPSA id f189sm3094968wmf.16.2020.02.04.01.19.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 04 Feb 2020 01:19:36 -0800 (PST)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, airlied@linux.ie, daniel@ffwll.ch
Date: Tue,  4 Feb 2020 12:18:51 +0300
Message-Id: <20200204091855.24259-9-wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200204091855.24259-1-wambui.karugax@gmail.com>
References: <20200204091855.24259-1-wambui.karugax@gmail.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 08/12] drm/i915/combo_phy: convert to struct
 drm_device logging macros.
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

Conversion of the printk based drm logging macros to the struct
drm_device based logging macros in i915/display/intel_combo_phy.c.
This transformation was achieved using the following coccinelle script
that matches based on the existence of a drm_i915_private device
pointer:
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

This converts DRM_DEBUG/DRM_DEBUG_DRIVER to drm_dbg().
New checkpatch warnings were addressed manually.

References: https://lists.freedesktop.org/archives/dri-devel/2020-January/253381.html
Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 .../gpu/drm/i915/display/intel_combo_phy.c    | 23 +++++++++++--------
 1 file changed, 14 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_combo_phy.c b/drivers/gpu/drm/i915/display/intel_combo_phy.c
index 11f80f15cb4d..59b4c04ef937 100644
--- a/drivers/gpu/drm/i915/display/intel_combo_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_combo_phy.c
@@ -97,10 +97,11 @@ static bool check_phy_reg(struct drm_i915_private *dev_priv,
 	u32 val = intel_de_read(dev_priv, reg);
 
 	if ((val & mask) != expected_val) {
-		DRM_DEBUG_DRIVER("Combo PHY %c reg %08x state mismatch: "
-				 "current %08x mask %08x expected %08x\n",
-				 phy_name(phy),
-				 reg.reg, val, mask, expected_val);
+		drm_dbg(&dev_priv->drm,
+			"Combo PHY %c reg %08x state mismatch: "
+			"current %08x mask %08x expected %08x\n",
+			phy_name(phy),
+			reg.reg, val, mask, expected_val);
 		return false;
 	}
 
@@ -172,7 +173,8 @@ static void cnl_combo_phys_uninit(struct drm_i915_private *dev_priv)
 	u32 val;
 
 	if (!cnl_combo_phy_verify_state(dev_priv))
-		DRM_WARN("Combo PHY HW state changed unexpectedly.\n");
+		drm_warn(&dev_priv->drm,
+			 "Combo PHY HW state changed unexpectedly.\n");
 
 	val = intel_de_read(dev_priv, CHICKEN_MISC_2);
 	val |= CNL_COMP_PWR_DOWN;
@@ -212,7 +214,8 @@ static bool ehl_vbt_ddi_d_present(struct drm_i915_private *i915)
 	 * in the log and let the internal display win.
 	 */
 	if (ddi_d_present)
-		DRM_ERROR("VBT claims to have both internal and external displays on PHY A.  Configuring for internal.\n");
+		drm_err(&i915->drm,
+			"VBT claims to have both internal and external displays on PHY A.  Configuring for internal.\n");
 
 	return false;
 }
@@ -308,8 +311,9 @@ static void icl_combo_phys_init(struct drm_i915_private *dev_priv)
 		u32 val;
 
 		if (icl_combo_phy_verify_state(dev_priv, phy)) {
-			DRM_DEBUG_DRIVER("Combo PHY %c already enabled, won't reprogram it.\n",
-					 phy_name(phy));
+			drm_dbg(&dev_priv->drm,
+				"Combo PHY %c already enabled, won't reprogram it.\n",
+				phy_name(phy));
 			continue;
 		}
 
@@ -368,7 +372,8 @@ static void icl_combo_phys_uninit(struct drm_i915_private *dev_priv)
 
 		if (phy == PHY_A &&
 		    !icl_combo_phy_verify_state(dev_priv, phy))
-			DRM_WARN("Combo PHY %c HW state changed unexpectedly\n",
+			drm_warn(&dev_priv->drm,
+				 "Combo PHY %c HW state changed unexpectedly\n",
 				 phy_name(phy));
 
 		/*
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
