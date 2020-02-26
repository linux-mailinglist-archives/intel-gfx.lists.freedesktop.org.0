Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BB48916FBC0
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2020 11:12:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07BCA6E462;
	Wed, 26 Feb 2020 10:12:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com
 [IPv6:2a00:1450:4864:20::441])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4C0F6E45D
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Feb 2020 10:12:17 +0000 (UTC)
Received: by mail-wr1-x441.google.com with SMTP id z15so2252701wrl.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Feb 2020 02:12:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=D27umM5eKC6kuJaTlJyOZRCvSSNF8jl3xsRSxdd6CKE=;
 b=dnXlEbI/o8k0A8TAkDMndqqTPfi6EUFodYMxmtRVu94dfM3pPUlr59vmwlRbRzS+YT
 qGx64lujnshYICr5kEAdzODAnXl+Xd97lqJsruBDTb/plAqzw/fALNnqwsuzljKnDIFv
 kt518tFHvPYvEuBwKFM6XWBq+nSQ6ziaeYRp5en5/Tv5BI67+D8MMB7cE2yuvB3lnNuY
 WHB51Y8FHK6+COfaD9uO+J/3+P5J0Vx0p/WDXORSPlYianYLuS+arYMiqcorRh4iYZ5d
 cp54r+kvBGskJ2gs8W5Rj8mB4LUq/kPjflGr1foxCK8Z4lymp0qrHg54y9ajl/27sbKT
 SIAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=D27umM5eKC6kuJaTlJyOZRCvSSNF8jl3xsRSxdd6CKE=;
 b=DQ4CWi1VVFprRwo5VLttFtbzz4gGhXvQriUW5sTlP9HwoWVd1DMILVFoa/HfAL0X+1
 75Yz3MCimYUuIt/4RSL2oNK3WDWvBzmt2rzjT3K2VRccb0v+Q15C33laEG3QfI+XMfhk
 1nAzO26jYhiGeeyq8vabO5b/p/O9pQE27eeqWgXUXr67nYr4utj1H7Myo38t7mpZrdJy
 G5VE13DjGHeula+lkf1TwGWbRDs2i4oHQBB9dxcd4vpv/BPRTjuZKyPogmzAkLWiEn8P
 BcZMACvoYM29gYIEPsb8owoTnvBPun5Ord85K/thxXjLd8cXQHAzJL6AH5jWrxej43SD
 8+pA==
X-Gm-Message-State: APjAAAXPwTs68Lo1ObFx4qni8XqrUxHHfJ6xh37l27rLRrDrTvNRLXXc
 /fgcfZfLD0RojOHV6fU9EP8=
X-Google-Smtp-Source: APXvYqw3jwWMPWN0xvBdfVK3DdsvzPGI6vp/p6ul6p4LtOEEfEKFqQA9Q7OUAEUn2lpzljlm9zoczA==
X-Received: by 2002:adf:ee01:: with SMTP id y1mr4907206wrn.152.1582711935998; 
 Wed, 26 Feb 2020 02:12:15 -0800 (PST)
Received: from wambui.zuku.co.ke ([197.237.61.225])
 by smtp.googlemail.com with ESMTPSA id r3sm2558190wrn.34.2020.02.26.02.12.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Feb 2020 02:12:15 -0800 (PST)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, airlied@linux.ie, daniel@ffwll.ch
Date: Wed, 26 Feb 2020 13:11:36 +0300
Message-Id: <20200226101138.15435-9-wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200226101138.15435-1-wambui.karugax@gmail.com>
References: <20200226101138.15435-1-wambui.karugax@gmail.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 08/10] drm/i915/lpe_audio: convert to drm_device
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

Convert various uses of the printk based drm logging macros to the
struct drm_device based logging macros in
i915/display/intel_lpe_audio.c.

Note that this converts DRM_DEBUG to drm_dbg().

References: https://lists.freedesktop.org/archives/dri-devel/2020-January/253381.html
Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 .../gpu/drm/i915/display/intel_lpe_audio.c    | 23 +++++++++++--------
 1 file changed, 14 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_lpe_audio.c b/drivers/gpu/drm/i915/display/intel_lpe_audio.c
index 516e7179a5a4..ad5cc13037ae 100644
--- a/drivers/gpu/drm/i915/display/intel_lpe_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_lpe_audio.c
@@ -127,7 +127,8 @@ lpe_audio_platdev_create(struct drm_i915_private *dev_priv)
 	kfree(pdata);
 
 	if (IS_ERR(platdev)) {
-		DRM_ERROR("Failed to allocate LPE audio platform device\n");
+		drm_err(&dev_priv->drm,
+			"Failed to allocate LPE audio platform device\n");
 		return platdev;
 	}
 
@@ -190,7 +191,8 @@ static bool lpe_audio_detect(struct drm_i915_private *dev_priv)
 		};
 
 		if (!pci_dev_present(atom_hdaudio_ids)) {
-			DRM_INFO("HDaudio controller not detected, using LPE audio instead\n");
+			drm_info(&dev_priv->drm,
+				 "HDaudio controller not detected, using LPE audio instead\n");
 			lpe_present = true;
 		}
 	}
@@ -203,18 +205,19 @@ static int lpe_audio_setup(struct drm_i915_private *dev_priv)
 
 	dev_priv->lpe_audio.irq = irq_alloc_desc(0);
 	if (dev_priv->lpe_audio.irq < 0) {
-		DRM_ERROR("Failed to allocate IRQ desc: %d\n",
+		drm_err(&dev_priv->drm, "Failed to allocate IRQ desc: %d\n",
 			dev_priv->lpe_audio.irq);
 		ret = dev_priv->lpe_audio.irq;
 		goto err;
 	}
 
-	DRM_DEBUG("irq = %d\n", dev_priv->lpe_audio.irq);
+	drm_dbg(&dev_priv->drm, "irq = %d\n", dev_priv->lpe_audio.irq);
 
 	ret = lpe_audio_irq_init(dev_priv);
 
 	if (ret) {
-		DRM_ERROR("Failed to initialize irqchip for lpe audio: %d\n",
+		drm_err(&dev_priv->drm,
+			"Failed to initialize irqchip for lpe audio: %d\n",
 			ret);
 		goto err_free_irq;
 	}
@@ -223,7 +226,8 @@ static int lpe_audio_setup(struct drm_i915_private *dev_priv)
 
 	if (IS_ERR(dev_priv->lpe_audio.platdev)) {
 		ret = PTR_ERR(dev_priv->lpe_audio.platdev);
-		DRM_ERROR("Failed to create lpe audio platform device: %d\n",
+		drm_err(&dev_priv->drm,
+			"Failed to create lpe audio platform device: %d\n",
 			ret);
 		goto err_free_irq;
 	}
@@ -259,8 +263,8 @@ void intel_lpe_audio_irq_handler(struct drm_i915_private *dev_priv)
 
 	ret = generic_handle_irq(dev_priv->lpe_audio.irq);
 	if (ret)
-		DRM_ERROR_RATELIMITED("error handling LPE audio irq: %d\n",
-				ret);
+		drm_err_ratelimited(&dev_priv->drm,
+				    "error handling LPE audio irq: %d\n", ret);
 }
 
 /**
@@ -278,7 +282,8 @@ int intel_lpe_audio_init(struct drm_i915_private *dev_priv)
 	if (lpe_audio_detect(dev_priv)) {
 		ret = lpe_audio_setup(dev_priv);
 		if (ret < 0)
-			DRM_ERROR("failed to setup LPE Audio bridge\n");
+			drm_err(&dev_priv->drm,
+				"failed to setup LPE Audio bridge\n");
 	}
 	return ret;
 }
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
