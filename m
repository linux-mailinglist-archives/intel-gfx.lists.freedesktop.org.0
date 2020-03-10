Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6736617F258
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 09:53:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF8186E84D;
	Tue, 10 Mar 2020 08:53:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE4986E84D
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Mar 2020 08:53:37 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Mar 2020 01:53:37 -0700
X-IronPort-AV: E=Sophos;i="5.70,535,1574150400"; d="scan'208";a="242253036"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Mar 2020 01:53:35 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Mar 2020 10:52:47 +0200
Message-Id: <98588d757a3729d7c8a4b1aaa0b5e7d160398b89.1583766715.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1583766715.git.jani.nikula@intel.com>
References: <cover.1583766715.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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
Cc: jani.nikula@intel.com, Wambui Karuga <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Wambui Karuga <wambui.karugax@gmail.com>

Convert various uses of the printk based drm logging macros to the
struct drm_device based logging macros in
i915/display/intel_lpe_audio.c.

Note that this converts DRM_DEBUG to drm_dbg().

References: https://lists.freedesktop.org/archives/dri-devel/2020-January/253381.html
Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
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
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
