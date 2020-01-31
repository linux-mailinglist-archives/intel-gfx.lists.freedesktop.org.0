Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C136814EA1E
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2020 10:34:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C8086FAD0;
	Fri, 31 Jan 2020 09:34:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com
 [IPv6:2a00:1450:4864:20::343])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F40CF6FAB7
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jan 2020 09:34:27 +0000 (UTC)
Received: by mail-wm1-x343.google.com with SMTP id c84so7852944wme.4
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jan 2020 01:34:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=e3MZXNyxFwYwo2UVh5xViBOAzVA7GvZUbqfD2nX37+g=;
 b=EXaJU3k/BcBkoSPZ3DiWm4Vwqlvw32Oo1l/yVq5NqbcRZe0kw0CbxxCCxiJfWfMmV3
 Fgyg3aVgqoeiOwE6fRwBHTsTIIJL/kvxT5dGbRjTn8PxR30MBj5il9zZrQc92nRK3ZL3
 L8KEodS+sSRcPlXnITOfMLAWCxJFarZSR9peAjbshUnd9MM+mW5vgrUp3JapG6PIBsuE
 TCkrLNlqThdA71mIpFCt070aPjCuwMPCX9vpMMSMCwTaZSkfqQCJrFYKnmmMt4HCVZaK
 27Y3f21P8f4UKgeEXJUUQYkjQF9tn4rPTOCB/baiwSmfNk/u20BIgipDtF8Qn4y6q5OX
 DZdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=e3MZXNyxFwYwo2UVh5xViBOAzVA7GvZUbqfD2nX37+g=;
 b=XV8fZK2qhz929wo7qVao3OkiTeUzTNfU/Uj814XsCr62qaXPfPf744UC8QdhpqJhu6
 hNzc0XoCTOdF86PVYk7i36UpaBdpV6Csy2lt9U694ATONvMGjaBq+/w0kGIPKJCJzxDu
 ztZ7qxtpNdhe1ElMhq/2J7bTw/756iCJmTM4TgJryaVpcwuebvUTVZKIU2Er6Xvfzbvt
 LI+9QBaThMQJ1qtBausjnKLdfLxL+PkgR10aC1/RYgzJTN+eEEymbFKB3sInbBHo6Gp/
 p4U03HkbMFST/dbNLv1N8X2tU/W+zEm++YRHqT2oap1nWbomOi5eY4q2V4GupK/GGkWX
 xRpw==
X-Gm-Message-State: APjAAAV6OUdZEtupK9CFTLF+Wt8D9uJt/u9cT2W8ZBp2o341iZ7IxLWK
 YXmV/tCJ5t1TgoK3hSWtTkY=
X-Google-Smtp-Source: APXvYqwF5b6IqS6OvHyIvD+kDUaU1nedFEeHpNXkA8gkGj1ZtPYwPTiptOM8XAlOu2ocN5kZU955KA==
X-Received: by 2002:a05:600c:3d1:: with SMTP id
 z17mr11470470wmd.90.1580463266023; 
 Fri, 31 Jan 2020 01:34:26 -0800 (PST)
Received: from wambui.zuku.co.ke ([197.237.61.225])
 by smtp.googlemail.com with ESMTPSA id b67sm10365360wmc.38.2020.01.31.01.34.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 31 Jan 2020 01:34:25 -0800 (PST)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, airlied@linux.ie, daniel@ffwll.ch
Date: Fri, 31 Jan 2020 12:34:12 +0300
Message-Id: <20200131093416.28431-2-wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200131093416.28431-1-wambui.karugax@gmail.com>
References: <20200131093416.28431-1-wambui.karugax@gmail.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/5] drm/i915: conversion to drm_device logging
 macros when drm_i915_private is present.
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

Converts various instances of the printk drm logging macros to the
struct drm_device based logging macros in the drm/i915 folder using the
following coccinelle script that transforms based on the existence of
the struct drm_i915_private device pointer:
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

Checkpatch warnings were fixed manually.

Instances of the DRM_DEBUG macro were not converted due to lack of a
consensus of an analogous struct drm_device based macro.

References: https://lists.freedesktop.org/archives/dri-devel/2020-January/253381.html
Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 drivers/gpu/drm/i915/i915_debugfs.c       |  23 ++--
 drivers/gpu/drm/i915/i915_drv.c           | 126 ++++++++++++----------
 drivers/gpu/drm/i915/i915_gem_fence_reg.c |   2 +-
 drivers/gpu/drm/i915/i915_gem_gtt.c       |   3 +-
 drivers/gpu/drm/i915/i915_irq.c           |  92 +++++++++-------
 drivers/gpu/drm/i915/i915_perf.c          |   5 +-
 drivers/gpu/drm/i915/i915_sysfs.c         |  19 ++--
 7 files changed, 156 insertions(+), 114 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index 27cb4e219322..350ebfe79de4 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -2161,7 +2161,7 @@ i915_edp_psr_debug_set(void *data, u64 val)
 	if (!CAN_PSR(dev_priv))
 		return -ENODEV;
 
-	DRM_DEBUG_KMS("Setting PSR debug to %llx\n", val);
+	drm_dbg_kms(&dev_priv->drm, "Setting PSR debug to %llx\n", val);
 
 	wakeref = intel_runtime_pm_get(&dev_priv->runtime_pm);
 
@@ -3998,10 +3998,11 @@ static ssize_t i915_hpd_storm_ctl_write(struct file *file,
 		return -EINVAL;
 
 	if (new_threshold > 0)
-		DRM_DEBUG_KMS("Setting HPD storm detection threshold to %d\n",
-			      new_threshold);
+		drm_dbg_kms(&dev_priv->drm,
+			    "Setting HPD storm detection threshold to %d\n",
+			    new_threshold);
 	else
-		DRM_DEBUG_KMS("Disabling HPD storm detection\n");
+		drm_dbg_kms(&dev_priv->drm, "Disabling HPD storm detection\n");
 
 	spin_lock_irq(&dev_priv->irq_lock);
 	hotplug->hpd_storm_threshold = new_threshold;
@@ -4078,8 +4079,8 @@ static ssize_t i915_hpd_short_storm_ctl_write(struct file *file,
 	else if (kstrtobool(tmp, &new_state) != 0)
 		return -EINVAL;
 
-	DRM_DEBUG_KMS("%sabling HPD short storm detection\n",
-		      new_state ? "En" : "Dis");
+	drm_dbg_kms(&dev_priv->drm, "%sabling HPD short storm detection\n",
+		    new_state ? "En" : "Dis");
 
 	spin_lock_irq(&dev_priv->irq_lock);
 	hotplug->hpd_short_storm_enabled = new_state;
@@ -4149,8 +4150,9 @@ static int i915_drrs_ctl_set(void *data, u64 val)
 			if (encoder->type != INTEL_OUTPUT_EDP)
 				continue;
 
-			DRM_DEBUG_DRIVER("Manually %sabling DRRS. %llu\n",
-						val ? "en" : "dis", val);
+			drm_dbg(&dev_priv->drm,
+				"Manually %sabling DRRS. %llu\n",
+				val ? "en" : "dis", val);
 
 			intel_dp = enc_to_intel_dp(encoder);
 			if (val)
@@ -4208,8 +4210,9 @@ i915_fifo_underrun_reset_write(struct file *filp,
 		}
 
 		if (!ret && crtc_state->hw.active) {
-			DRM_DEBUG_KMS("Re-arming FIFO underruns on pipe %c\n",
-				      pipe_name(intel_crtc->pipe));
+			drm_dbg_kms(&dev_priv->drm,
+				    "Re-arming FIFO underruns on pipe %c\n",
+				    pipe_name(intel_crtc->pipe));
 
 			intel_crtc_arm_fifo_underrun(intel_crtc, crtc_state);
 		}
diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
index 4661c5f1f297..516536234e97 100644
--- a/drivers/gpu/drm/i915/i915_drv.c
+++ b/drivers/gpu/drm/i915/i915_drv.c
@@ -152,7 +152,7 @@ static int i915_get_bridge_dev(struct drm_i915_private *dev_priv)
 	dev_priv->bridge_dev =
 		pci_get_domain_bus_and_slot(domain, 0, PCI_DEVFN(0, 0));
 	if (!dev_priv->bridge_dev) {
-		DRM_ERROR("bridge device not found\n");
+		drm_err(&dev_priv->drm, "bridge device not found\n");
 		return -1;
 	}
 	return 0;
@@ -189,7 +189,7 @@ intel_alloc_mchbar_resource(struct drm_i915_private *dev_priv)
 				     0, pcibios_align_resource,
 				     dev_priv->bridge_dev);
 	if (ret) {
-		DRM_DEBUG_DRIVER("failed bus alloc: %d\n", ret);
+		drm_dbg(&dev_priv->drm, "failed bus alloc: %d\n", ret);
 		dev_priv->mch_res.start = 0;
 		return ret;
 	}
@@ -409,7 +409,7 @@ static int i915_workqueues_init(struct drm_i915_private *dev_priv)
 out_free_wq:
 	destroy_workqueue(dev_priv->wq);
 out_err:
-	DRM_ERROR("Failed to allocate workqueues.\n");
+	drm_err(&dev_priv->drm, "Failed to allocate workqueues.\n");
 
 	return -ENOMEM;
 }
@@ -440,7 +440,7 @@ static void intel_detect_preproduction_hw(struct drm_i915_private *dev_priv)
 	pre |= IS_KBL_REVID(dev_priv, 0, KBL_REVID_A0);
 
 	if (pre) {
-		DRM_ERROR("This is a pre-production stepping. "
+		drm_err(&dev_priv->drm, "This is a pre-production stepping. "
 			  "It may not be fully functional.\n");
 		add_taint(TAINT_MACHINE_CHECK, LOCKDEP_STILL_OK);
 	}
@@ -751,9 +751,10 @@ skl_dram_get_dimm_info(struct drm_i915_private *dev_priv,
 		dimm->ranks = skl_get_dimm_ranks(val);
 	}
 
-	DRM_DEBUG_KMS("CH%u DIMM %c size: %u GB, width: X%u, ranks: %u, 16Gb DIMMs: %s\n",
-		      channel, dimm_name, dimm->size, dimm->width, dimm->ranks,
-		      yesno(skl_is_16gb_dimm(dimm)));
+	drm_dbg_kms(&dev_priv->drm,
+		    "CH%u DIMM %c size: %u GB, width: X%u, ranks: %u, 16Gb DIMMs: %s\n",
+		    channel, dimm_name, dimm->size, dimm->width, dimm->ranks,
+		    yesno(skl_is_16gb_dimm(dimm)));
 }
 
 static int
@@ -767,7 +768,7 @@ skl_dram_get_channel_info(struct drm_i915_private *dev_priv,
 			       channel, 'S', val >> 16);
 
 	if (ch->dimm_l.size == 0 && ch->dimm_s.size == 0) {
-		DRM_DEBUG_KMS("CH%u not populated\n", channel);
+		drm_dbg_kms(&dev_priv->drm, "CH%u not populated\n", channel);
 		return -EINVAL;
 	}
 
@@ -782,8 +783,8 @@ skl_dram_get_channel_info(struct drm_i915_private *dev_priv,
 		skl_is_16gb_dimm(&ch->dimm_l) ||
 		skl_is_16gb_dimm(&ch->dimm_s);
 
-	DRM_DEBUG_KMS("CH%u ranks: %u, 16Gb DIMMs: %s\n",
-		      channel, ch->ranks, yesno(ch->is_16gb_dimm));
+	drm_dbg_kms(&dev_priv->drm, "CH%u ranks: %u, 16Gb DIMMs: %s\n",
+		    channel, ch->ranks, yesno(ch->is_16gb_dimm));
 
 	return 0;
 }
@@ -816,7 +817,8 @@ skl_dram_get_channels_info(struct drm_i915_private *dev_priv)
 		dram_info->num_channels++;
 
 	if (dram_info->num_channels == 0) {
-		DRM_INFO("Number of memory channels is zero\n");
+		drm_info(&dev_priv->drm,
+			 "Number of memory channels is zero\n");
 		return -EINVAL;
 	}
 
@@ -831,7 +833,8 @@ skl_dram_get_channels_info(struct drm_i915_private *dev_priv)
 		dram_info->ranks = max(ch0.ranks, ch1.ranks);
 
 	if (dram_info->ranks == 0) {
-		DRM_INFO("couldn't get memory rank information\n");
+		drm_info(&dev_priv->drm,
+			 "couldn't get memory rank information\n");
 		return -EINVAL;
 	}
 
@@ -839,8 +842,8 @@ skl_dram_get_channels_info(struct drm_i915_private *dev_priv)
 
 	dram_info->symmetric_memory = intel_is_dram_symmetric(&ch0, &ch1);
 
-	DRM_DEBUG_KMS("Memory configuration is symmetric? %s\n",
-		      yesno(dram_info->symmetric_memory));
+	drm_dbg_kms(&dev_priv->drm, "Memory configuration is symmetric? %s\n",
+		    yesno(dram_info->symmetric_memory));
 	return 0;
 }
 
@@ -874,7 +877,8 @@ skl_get_dram_info(struct drm_i915_private *dev_priv)
 	int ret;
 
 	dram_info->type = skl_get_dram_type(dev_priv);
-	DRM_DEBUG_KMS("DRAM type: %s\n", intel_dram_type_str(dram_info->type));
+	drm_dbg_kms(&dev_priv->drm, "DRAM type: %s\n",
+		    intel_dram_type_str(dram_info->type));
 
 	ret = skl_dram_get_channels_info(dev_priv);
 	if (ret)
@@ -888,7 +892,8 @@ skl_get_dram_info(struct drm_i915_private *dev_priv)
 							mem_freq_khz * 8;
 
 	if (dram_info->bandwidth_kbps == 0) {
-		DRM_INFO("Couldn't get system memory bandwidth\n");
+		drm_info(&dev_priv->drm,
+			 "Couldn't get system memory bandwidth\n");
 		return -EINVAL;
 	}
 
@@ -995,7 +1000,8 @@ bxt_get_dram_info(struct drm_i915_private *dev_priv)
 	dram_info->bandwidth_kbps = (mem_freq_khz * num_active_channels * 4);
 
 	if (dram_info->bandwidth_kbps == 0) {
-		DRM_INFO("Couldn't get system memory bandwidth\n");
+		drm_info(&dev_priv->drm,
+			 "Couldn't get system memory bandwidth\n");
 		return -EINVAL;
 	}
 
@@ -1019,10 +1025,11 @@ bxt_get_dram_info(struct drm_i915_private *dev_priv)
 			    dram_info->type != INTEL_DRAM_UNKNOWN &&
 			    dram_info->type != type);
 
-		DRM_DEBUG_KMS("CH%u DIMM size: %u GB, width: X%u, ranks: %u, type: %s\n",
-			      i - BXT_D_CR_DRP0_DUNIT_START,
-			      dimm.size, dimm.width, dimm.ranks,
-			      intel_dram_type_str(type));
+		drm_dbg_kms(&dev_priv->drm,
+			    "CH%u DIMM size: %u GB, width: X%u, ranks: %u, type: %s\n",
+			    i - BXT_D_CR_DRP0_DUNIT_START,
+			    dimm.size, dimm.width, dimm.ranks,
+			    intel_dram_type_str(type));
 
 		/*
 		 * If any of the channel is single rank channel,
@@ -1040,7 +1047,7 @@ bxt_get_dram_info(struct drm_i915_private *dev_priv)
 
 	if (dram_info->type == INTEL_DRAM_UNKNOWN ||
 	    dram_info->ranks == 0) {
-		DRM_INFO("couldn't get memory information\n");
+		drm_info(&dev_priv->drm, "couldn't get memory information\n");
 		return -EINVAL;
 	}
 
@@ -1071,12 +1078,12 @@ intel_get_dram_info(struct drm_i915_private *dev_priv)
 	if (ret)
 		return;
 
-	DRM_DEBUG_KMS("DRAM bandwidth: %u kBps, channels: %u\n",
-		      dram_info->bandwidth_kbps,
-		      dram_info->num_channels);
+	drm_dbg_kms(&dev_priv->drm, "DRAM bandwidth: %u kBps, channels: %u\n",
+		    dram_info->bandwidth_kbps,
+		    dram_info->num_channels);
 
-	DRM_DEBUG_KMS("DRAM ranks: %u, 16Gb DIMMs: %s\n",
-		      dram_info->ranks, yesno(dram_info->is_16gb_dimm));
+	drm_dbg_kms(&dev_priv->drm, "DRAM ranks: %u, 16Gb DIMMs: %s\n",
+		    dram_info->ranks, yesno(dram_info->is_16gb_dimm));
 }
 
 static u32 gen9_edram_size_mb(struct drm_i915_private *dev_priv, u32 cap)
@@ -1186,7 +1193,7 @@ static int i915_driver_hw_probe(struct drm_i915_private *dev_priv)
 
 	ret = i915_ggtt_enable_hw(dev_priv);
 	if (ret) {
-		DRM_ERROR("failed to enable GGTT\n");
+		drm_err(&dev_priv->drm, "failed to enable GGTT\n");
 		goto err_mem_regions;
 	}
 
@@ -1202,7 +1209,7 @@ static int i915_driver_hw_probe(struct drm_i915_private *dev_priv)
 	if (IS_GEN(dev_priv, 2)) {
 		ret = dma_set_coherent_mask(&pdev->dev, DMA_BIT_MASK(30));
 		if (ret) {
-			DRM_ERROR("failed to set DMA mask\n");
+			drm_err(&dev_priv->drm, "failed to set DMA mask\n");
 
 			goto err_mem_regions;
 		}
@@ -1220,7 +1227,7 @@ static int i915_driver_hw_probe(struct drm_i915_private *dev_priv)
 		ret = dma_set_coherent_mask(&pdev->dev, DMA_BIT_MASK(32));
 
 		if (ret) {
-			DRM_ERROR("failed to set DMA mask\n");
+			drm_err(&dev_priv->drm, "failed to set DMA mask\n");
 
 			goto err_mem_regions;
 		}
@@ -1252,7 +1259,7 @@ static int i915_driver_hw_probe(struct drm_i915_private *dev_priv)
 	 */
 	if (INTEL_GEN(dev_priv) >= 5) {
 		if (pci_enable_msi(pdev) < 0)
-			DRM_DEBUG_DRIVER("can't enable MSI");
+			drm_dbg(&dev_priv->drm, "can't enable MSI");
 	}
 
 	ret = intel_gvt_init(dev_priv);
@@ -1328,7 +1335,8 @@ static void i915_driver_register(struct drm_i915_private *dev_priv)
 		/* Depends on sysfs having been initialized */
 		i915_perf_register(dev_priv);
 	} else
-		DRM_ERROR("Failed to register driver for userspace access!\n");
+		drm_err(&dev_priv->drm,
+			"Failed to register driver for userspace access!\n");
 
 	if (HAS_DISPLAY(dev_priv) && INTEL_DISPLAY_ENABLED(dev_priv)) {
 		/* Must be done after probing outputs */
@@ -1410,11 +1418,12 @@ static void i915_welcome_messages(struct drm_i915_private *dev_priv)
 	}
 
 	if (IS_ENABLED(CONFIG_DRM_I915_DEBUG))
-		DRM_INFO("DRM_I915_DEBUG enabled\n");
+		drm_info(&dev_priv->drm, "DRM_I915_DEBUG enabled\n");
 	if (IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM))
-		DRM_INFO("DRM_I915_DEBUG_GEM enabled\n");
+		drm_info(&dev_priv->drm, "DRM_I915_DEBUG_GEM enabled\n");
 	if (IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM))
-		DRM_INFO("DRM_I915_DEBUG_RUNTIME_PM enabled\n");
+		drm_info(&dev_priv->drm,
+			 "DRM_I915_DEBUG_RUNTIME_PM enabled\n");
 }
 
 static struct drm_i915_private *
@@ -1771,7 +1780,7 @@ static int i915_drm_suspend_late(struct drm_device *dev, bool hibernation)
 		ret = vlv_suspend_complete(dev_priv);
 
 	if (ret) {
-		DRM_ERROR("Suspend complete failed: %d\n", ret);
+		drm_err(&dev_priv->drm, "Suspend complete failed: %d\n", ret);
 		intel_power_domains_resume(dev_priv);
 
 		goto out;
@@ -1830,7 +1839,7 @@ static int i915_drm_resume(struct drm_device *dev)
 
 	ret = i915_ggtt_enable_hw(dev_priv);
 	if (ret)
-		DRM_ERROR("failed to re-enable GGTT\n");
+		drm_err(&dev_priv->drm, "failed to re-enable GGTT\n");
 
 	i915_ggtt_resume(&dev_priv->ggtt);
 	i915_gem_restore_fences(&dev_priv->ggtt);
@@ -1919,7 +1928,8 @@ static int i915_drm_resume_early(struct drm_device *dev)
 	 */
 	ret = pci_set_power_state(pdev, PCI_D0);
 	if (ret) {
-		DRM_ERROR("failed to set PCI D0 power state (%d)\n", ret);
+		drm_err(&dev_priv->drm,
+			"failed to set PCI D0 power state (%d)\n", ret);
 		return ret;
 	}
 
@@ -1946,8 +1956,9 @@ static int i915_drm_resume_early(struct drm_device *dev)
 	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
 		ret = vlv_resume_prepare(dev_priv, false);
 	if (ret)
-		DRM_ERROR("Resume prepare failed: %d, continuing anyway\n",
-			  ret);
+		drm_err(&dev_priv->drm,
+			"Resume prepare failed: %d, continuing anyway\n",
+			ret);
 
 	intel_uncore_resume_early(&dev_priv->uncore);
 
@@ -2358,8 +2369,9 @@ int vlv_force_gfx_clock(struct drm_i915_private *dev_priv, bool force_on)
 				      VLV_GFX_CLK_STATUS_BIT,
 				      20);
 	if (err)
-		DRM_ERROR("timeout waiting for GFX clock force-on (%08x)\n",
-			  I915_READ(VLV_GTLC_SURVIVABILITY_REG));
+		drm_err(&dev_priv->drm,
+			"timeout waiting for GFX clock force-on (%08x)\n",
+			I915_READ(VLV_GTLC_SURVIVABILITY_REG));
 
 	return err;
 }
@@ -2382,7 +2394,7 @@ static int vlv_allow_gt_wake(struct drm_i915_private *dev_priv, bool allow)
 
 	err = vlv_wait_for_pw_status(dev_priv, mask, val);
 	if (err)
-		DRM_ERROR("timeout disabling GT waking\n");
+		drm_err(&dev_priv->drm, "timeout disabling GT waking\n");
 
 	return err;
 }
@@ -2404,8 +2416,9 @@ static void vlv_wait_for_gt_wells(struct drm_i915_private *dev_priv,
 	 * reset and we are trying to force the machine to sleep.
 	 */
 	if (vlv_wait_for_pw_status(dev_priv, mask, val))
-		DRM_DEBUG_DRIVER("timeout waiting for GT wells to go %s\n",
-				 onoff(wait_for_on));
+		drm_dbg(&dev_priv->drm,
+			"timeout waiting for GT wells to go %s\n",
+			onoff(wait_for_on));
 }
 
 static void vlv_check_no_gt_access(struct drm_i915_private *dev_priv)
@@ -2413,7 +2426,8 @@ static void vlv_check_no_gt_access(struct drm_i915_private *dev_priv)
 	if (!(I915_READ(VLV_GTLC_PW_STATUS) & VLV_GTLC_ALLOWWAKEERR))
 		return;
 
-	DRM_DEBUG_DRIVER("GT register access while GT waking disabled\n");
+	drm_dbg(&dev_priv->drm,
+		"GT register access while GT waking disabled\n");
 	I915_WRITE(VLV_GTLC_PW_STATUS, VLV_GTLC_ALLOWWAKEERR);
 }
 
@@ -2499,7 +2513,7 @@ static int intel_runtime_suspend(struct device *kdev)
 	if (drm_WARN_ON_ONCE(&dev_priv->drm, !HAS_RUNTIME_PM(dev_priv)))
 		return -ENODEV;
 
-	DRM_DEBUG_KMS("Suspending device\n");
+	drm_dbg_kms(&dev_priv->drm, "Suspending device\n");
 
 	disable_rpm_wakeref_asserts(rpm);
 
@@ -2521,7 +2535,8 @@ static int intel_runtime_suspend(struct device *kdev)
 		ret = vlv_suspend_complete(dev_priv);
 
 	if (ret) {
-		DRM_ERROR("Runtime suspend failed, disabling it (%d)\n", ret);
+		drm_err(&dev_priv->drm,
+			"Runtime suspend failed, disabling it (%d)\n", ret);
 		intel_uncore_runtime_resume(&dev_priv->uncore);
 
 		intel_runtime_pm_enable_interrupts(dev_priv);
@@ -2539,7 +2554,8 @@ static int intel_runtime_suspend(struct device *kdev)
 	intel_runtime_pm_driver_release(rpm);
 
 	if (intel_uncore_arm_unclaimed_mmio_detection(&dev_priv->uncore))
-		DRM_ERROR("Unclaimed access detected prior to suspending\n");
+		drm_err(&dev_priv->drm,
+			"Unclaimed access detected prior to suspending\n");
 
 	rpm->suspended = true;
 
@@ -2571,7 +2587,7 @@ static int intel_runtime_suspend(struct device *kdev)
 	if (!IS_VALLEYVIEW(dev_priv) && !IS_CHERRYVIEW(dev_priv))
 		intel_hpd_poll_init(dev_priv);
 
-	DRM_DEBUG_KMS("Device suspended\n");
+	drm_dbg_kms(&dev_priv->drm, "Device suspended\n");
 	return 0;
 }
 
@@ -2584,7 +2600,7 @@ static int intel_runtime_resume(struct device *kdev)
 	if (drm_WARN_ON_ONCE(&dev_priv->drm, !HAS_RUNTIME_PM(dev_priv)))
 		return -ENODEV;
 
-	DRM_DEBUG_KMS("Resuming device\n");
+	drm_dbg_kms(&dev_priv->drm, "Resuming device\n");
 
 	drm_WARN_ON_ONCE(&dev_priv->drm, atomic_read(&rpm->wakeref_count));
 	disable_rpm_wakeref_asserts(rpm);
@@ -2592,7 +2608,8 @@ static int intel_runtime_resume(struct device *kdev)
 	intel_opregion_notify_adapter(dev_priv, PCI_D0);
 	rpm->suspended = false;
 	if (intel_uncore_unclaimed_mmio(&dev_priv->uncore))
-		DRM_DEBUG_DRIVER("Unclaimed access during suspend, bios?\n");
+		drm_dbg(&dev_priv->drm,
+			"Unclaimed access during suspend, bios?\n");
 
 	intel_display_power_resume(dev_priv);
 
@@ -2623,9 +2640,10 @@ static int intel_runtime_resume(struct device *kdev)
 	enable_rpm_wakeref_asserts(rpm);
 
 	if (ret)
-		DRM_ERROR("Runtime resume failed, disabling it (%d)\n", ret);
+		drm_err(&dev_priv->drm,
+			"Runtime resume failed, disabling it (%d)\n", ret);
 	else
-		DRM_DEBUG_KMS("Device resumed\n");
+		drm_dbg_kms(&dev_priv->drm, "Device resumed\n");
 
 	return ret;
 }
diff --git a/drivers/gpu/drm/i915/i915_gem_fence_reg.c b/drivers/gpu/drm/i915/i915_gem_fence_reg.c
index 6c54d78bea7b..049cd3785347 100644
--- a/drivers/gpu/drm/i915/i915_gem_fence_reg.c
+++ b/drivers/gpu/drm/i915/i915_gem_fence_reg.c
@@ -714,7 +714,7 @@ static void detect_bit_6_swizzle(struct i915_ggtt *ggtt)
 		}
 
 		if (dcc == 0xffffffff) {
-			DRM_ERROR("Couldn't read from MCHBAR.  "
+			drm_err(&i915->drm, "Couldn't read from MCHBAR.  "
 				  "Disabling tiling.\n");
 			swizzle_x = I915_BIT_6_SWIZZLE_UNKNOWN;
 			swizzle_y = I915_BIT_6_SWIZZLE_UNKNOWN;
diff --git a/drivers/gpu/drm/i915/i915_gem_gtt.c b/drivers/gpu/drm/i915/i915_gem_gtt.c
index e039eb56900f..e7834fa1e0ac 100644
--- a/drivers/gpu/drm/i915/i915_gem_gtt.c
+++ b/drivers/gpu/drm/i915/i915_gem_gtt.c
@@ -63,7 +63,8 @@ void i915_gem_gtt_finish_pages(struct drm_i915_gem_object *obj,
 		/* XXX This does not prevent more requests being submitted! */
 		if (intel_gt_retire_requests_timeout(ggtt->vm.gt,
 						     -MAX_SCHEDULE_TIMEOUT)) {
-			DRM_ERROR("Failed to wait for idle; VT'd may hang.\n");
+			drm_err(&dev_priv->drm,
+				"Failed to wait for idle; VT'd may hang.\n");
 			/* Wait a bit, in hopes it avoids the hang */
 			udelay(10);
 		}
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 5c2b419c0603..de75bc53dc40 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -788,8 +788,9 @@ bool i915_get_crtc_scanoutpos(struct drm_device *dev, unsigned int index,
 		mode->private_flags & I915_MODE_FLAG_USE_SCANLINE_COUNTER;
 
 	if (drm_WARN_ON(&dev_priv->drm, !mode->crtc_clock)) {
-		DRM_DEBUG_DRIVER("trying to get scanoutpos for disabled "
-				 "pipe %c\n", pipe_name(pipe));
+		drm_dbg(&dev_priv->drm,
+			"trying to get scanoutpos for disabled "
+			"pipe %c\n", pipe_name(pipe));
 		return false;
 	}
 
@@ -1176,8 +1177,9 @@ static void intel_get_hpd_pins(struct drm_i915_private *dev_priv,
 			*long_mask |= BIT(pin);
 	}
 
-	DRM_DEBUG_DRIVER("hotplug event received, stat 0x%08x, dig 0x%08x, pins 0x%08x, long 0x%08x\n",
-			 hotplug_trigger, dig_hotplug_reg, *pin_mask, *long_mask);
+	drm_dbg(&dev_priv->drm,
+		"hotplug event received, stat 0x%08x, dig 0x%08x, pins 0x%08x, long 0x%08x\n",
+		hotplug_trigger, dig_hotplug_reg, *pin_mask, *long_mask);
 
 }
 
@@ -1718,8 +1720,8 @@ static void ibx_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
 	if (pch_iir & SDE_AUDIO_POWER_MASK) {
 		int port = ffs((pch_iir & SDE_AUDIO_POWER_MASK) >>
 			       SDE_AUDIO_POWER_SHIFT);
-		DRM_DEBUG_DRIVER("PCH audio power change on port %d\n",
-				 port_name(port));
+		drm_dbg(&dev_priv->drm, "PCH audio power change on port %d\n",
+			port_name(port));
 	}
 
 	if (pch_iir & SDE_AUX_MASK)
@@ -1729,25 +1731,26 @@ static void ibx_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
 		gmbus_irq_handler(dev_priv);
 
 	if (pch_iir & SDE_AUDIO_HDCP_MASK)
-		DRM_DEBUG_DRIVER("PCH HDCP audio interrupt\n");
+		drm_dbg(&dev_priv->drm, "PCH HDCP audio interrupt\n");
 
 	if (pch_iir & SDE_AUDIO_TRANS_MASK)
-		DRM_DEBUG_DRIVER("PCH transcoder audio interrupt\n");
+		drm_dbg(&dev_priv->drm, "PCH transcoder audio interrupt\n");
 
 	if (pch_iir & SDE_POISON)
-		DRM_ERROR("PCH poison interrupt\n");
+		drm_err(&dev_priv->drm, "PCH poison interrupt\n");
 
 	if (pch_iir & SDE_FDI_MASK)
 		for_each_pipe(dev_priv, pipe)
-			DRM_DEBUG_DRIVER("  pipe %c FDI IIR: 0x%08x\n",
-					 pipe_name(pipe),
-					 I915_READ(FDI_RX_IIR(pipe)));
+			drm_dbg(&dev_priv->drm, "  pipe %c FDI IIR: 0x%08x\n",
+				pipe_name(pipe),
+				I915_READ(FDI_RX_IIR(pipe)));
 
 	if (pch_iir & (SDE_TRANSB_CRC_DONE | SDE_TRANSA_CRC_DONE))
-		DRM_DEBUG_DRIVER("PCH transcoder CRC done interrupt\n");
+		drm_dbg(&dev_priv->drm, "PCH transcoder CRC done interrupt\n");
 
 	if (pch_iir & (SDE_TRANSB_CRC_ERR | SDE_TRANSA_CRC_ERR))
-		DRM_DEBUG_DRIVER("PCH transcoder CRC error interrupt\n");
+		drm_dbg(&dev_priv->drm,
+			"PCH transcoder CRC error interrupt\n");
 
 	if (pch_iir & SDE_TRANSA_FIFO_UNDER)
 		intel_pch_fifo_underrun_irq_handler(dev_priv, PIPE_A);
@@ -1762,7 +1765,7 @@ static void ivb_err_int_handler(struct drm_i915_private *dev_priv)
 	enum pipe pipe;
 
 	if (err_int & ERR_INT_POISON)
-		DRM_ERROR("Poison interrupt\n");
+		drm_err(&dev_priv->drm, "Poison interrupt\n");
 
 	for_each_pipe(dev_priv, pipe) {
 		if (err_int & ERR_INT_FIFO_UNDERRUN(pipe))
@@ -1785,7 +1788,7 @@ static void cpt_serr_int_handler(struct drm_i915_private *dev_priv)
 	enum pipe pipe;
 
 	if (serr_int & SERR_INT_POISON)
-		DRM_ERROR("PCH poison interrupt\n");
+		drm_err(&dev_priv->drm, "PCH poison interrupt\n");
 
 	for_each_pipe(dev_priv, pipe)
 		if (serr_int & SERR_INT_TRANS_FIFO_UNDERRUN(pipe))
@@ -1804,8 +1807,8 @@ static void cpt_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
 	if (pch_iir & SDE_AUDIO_POWER_MASK_CPT) {
 		int port = ffs((pch_iir & SDE_AUDIO_POWER_MASK_CPT) >>
 			       SDE_AUDIO_POWER_SHIFT_CPT);
-		DRM_DEBUG_DRIVER("PCH audio power change on port %c\n",
-				 port_name(port));
+		drm_dbg(&dev_priv->drm, "PCH audio power change on port %c\n",
+			port_name(port));
 	}
 
 	if (pch_iir & SDE_AUX_MASK_CPT)
@@ -1815,16 +1818,16 @@ static void cpt_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
 		gmbus_irq_handler(dev_priv);
 
 	if (pch_iir & SDE_AUDIO_CP_REQ_CPT)
-		DRM_DEBUG_DRIVER("Audio CP request interrupt\n");
+		drm_dbg(&dev_priv->drm, "Audio CP request interrupt\n");
 
 	if (pch_iir & SDE_AUDIO_CP_CHG_CPT)
-		DRM_DEBUG_DRIVER("Audio CP change interrupt\n");
+		drm_dbg(&dev_priv->drm, "Audio CP change interrupt\n");
 
 	if (pch_iir & SDE_FDI_MASK_CPT)
 		for_each_pipe(dev_priv, pipe)
-			DRM_DEBUG_DRIVER("  pipe %c FDI IIR: 0x%08x\n",
-					 pipe_name(pipe),
-					 I915_READ(FDI_RX_IIR(pipe)));
+			drm_dbg(&dev_priv->drm, "  pipe %c FDI IIR: 0x%08x\n",
+				pipe_name(pipe),
+				I915_READ(FDI_RX_IIR(pipe)));
 
 	if (pch_iir & SDE_ERROR_CPT)
 		cpt_serr_int_handler(dev_priv);
@@ -1961,7 +1964,7 @@ static void ilk_display_irq_handler(struct drm_i915_private *dev_priv,
 		intel_opregion_asle_intr(dev_priv);
 
 	if (de_iir & DE_POISON)
-		DRM_ERROR("Poison interrupt\n");
+		drm_err(&dev_priv->drm, "Poison interrupt\n");
 
 	for_each_pipe(dev_priv, pipe) {
 		if (de_iir & DE_PIPE_VBLANK(pipe))
@@ -2162,7 +2165,8 @@ static void gen11_hpd_irq_handler(struct drm_i915_private *dev_priv, u32 iir)
 	if (pin_mask)
 		intel_hpd_irq_handler(dev_priv, pin_mask, long_mask);
 	else
-		DRM_ERROR("Unexpected DE HPD interrupt 0x%08x\n", iir);
+		drm_err(&dev_priv->drm,
+			"Unexpected DE HPD interrupt 0x%08x\n", iir);
 }
 
 static u32 gen8_de_port_aux_mask(struct drm_i915_private *dev_priv)
@@ -2235,7 +2239,7 @@ gen8_de_misc_irq_handler(struct drm_i915_private *dev_priv, u32 iir)
 	}
 
 	if (!found)
-		DRM_ERROR("Unexpected DE Misc interrupt\n");
+		drm_err(&dev_priv->drm, "Unexpected DE Misc interrupt\n");
 }
 
 static irqreturn_t
@@ -2252,7 +2256,8 @@ gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
 			ret = IRQ_HANDLED;
 			gen8_de_misc_irq_handler(dev_priv, iir);
 		} else {
-			DRM_ERROR("The master control interrupt lied (DE MISC)!\n");
+			drm_err(&dev_priv->drm,
+				"The master control interrupt lied (DE MISC)!\n");
 		}
 	}
 
@@ -2263,7 +2268,8 @@ gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
 			ret = IRQ_HANDLED;
 			gen11_hpd_irq_handler(dev_priv, iir);
 		} else {
-			DRM_ERROR("The master control interrupt lied, (DE HPD)!\n");
+			drm_err(&dev_priv->drm,
+				"The master control interrupt lied, (DE HPD)!\n");
 		}
 	}
 
@@ -2303,10 +2309,12 @@ gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
 			}
 
 			if (!found)
-				DRM_ERROR("Unexpected DE Port interrupt\n");
+				drm_err(&dev_priv->drm,
+					"Unexpected DE Port interrupt\n");
 		}
 		else
-			DRM_ERROR("The master control interrupt lied (DE PORT)!\n");
+			drm_err(&dev_priv->drm,
+				"The master control interrupt lied (DE PORT)!\n");
 	}
 
 	for_each_pipe(dev_priv, pipe) {
@@ -2317,7 +2325,8 @@ gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
 
 		iir = I915_READ(GEN8_DE_PIPE_IIR(pipe));
 		if (!iir) {
-			DRM_ERROR("The master control interrupt lied (DE PIPE)!\n");
+			drm_err(&dev_priv->drm,
+				"The master control interrupt lied (DE PIPE)!\n");
 			continue;
 		}
 
@@ -2335,9 +2344,10 @@ gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
 
 		fault_errors = iir & gen8_de_pipe_fault_mask(dev_priv);
 		if (fault_errors)
-			DRM_ERROR("Fault errors on pipe %c: 0x%08x\n",
-				  pipe_name(pipe),
-				  fault_errors);
+			drm_err(&dev_priv->drm,
+				"Fault errors on pipe %c: 0x%08x\n",
+				pipe_name(pipe),
+				fault_errors);
 	}
 
 	if (HAS_PCH_SPLIT(dev_priv) && !HAS_PCH_NOP(dev_priv) &&
@@ -2363,7 +2373,8 @@ gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
 			 * Like on previous PCH there seems to be something
 			 * fishy going on with forwarding PCH interrupts.
 			 */
-			DRM_DEBUG_DRIVER("The master control interrupt lied (SDE)!\n");
+			drm_dbg(&dev_priv->drm,
+				"The master control interrupt lied (SDE)!\n");
 		}
 	}
 
@@ -3169,8 +3180,9 @@ static void __bxt_hpd_detection_setup(struct drm_i915_private *dev_priv,
 		   PORTB_HOTPLUG_ENABLE |
 		   PORTC_HOTPLUG_ENABLE;
 
-	DRM_DEBUG_KMS("Invert bit setting: hp_ctl:%x hp_port:%x\n",
-		      hotplug, enabled_irqs);
+	drm_dbg_kms(&dev_priv->drm,
+		    "Invert bit setting: hp_ctl:%x hp_port:%x\n",
+		    hotplug, enabled_irqs);
 	hotplug &= ~BXT_DDI_HPD_INVERT_MASK;
 
 	/*
@@ -3553,7 +3565,8 @@ static void i8xx_error_irq_handler(struct drm_i915_private *dev_priv,
 	DRM_DEBUG("Master Error: EIR 0x%04x\n", eir);
 
 	if (eir_stuck)
-		DRM_DEBUG_DRIVER("EIR stuck: 0x%04x, masked\n", eir_stuck);
+		drm_dbg(&dev_priv->drm, "EIR stuck: 0x%04x, masked\n",
+			eir_stuck);
 }
 
 static void i9xx_error_irq_ack(struct drm_i915_private *dev_priv,
@@ -3590,7 +3603,8 @@ static void i9xx_error_irq_handler(struct drm_i915_private *dev_priv,
 	DRM_DEBUG("Master Error, EIR 0x%08x\n", eir);
 
 	if (eir_stuck)
-		DRM_DEBUG_DRIVER("EIR stuck: 0x%08x, masked\n", eir_stuck);
+		drm_dbg(&dev_priv->drm, "EIR stuck: 0x%08x, masked\n",
+			eir_stuck);
 }
 
 static irqreturn_t i8xx_irq_handler(int irq, void *arg)
diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 535a12520dba..b5249ee5bda6 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -1598,7 +1598,7 @@ static int alloc_oa_buffer(struct i915_perf_stream *stream)
 
 	bo = i915_gem_object_create_shmem(stream->perf->i915, OA_BUFFER_SIZE);
 	if (IS_ERR(bo)) {
-		DRM_ERROR("Failed to allocate OA buffer\n");
+		drm_err(&i915->drm, "Failed to allocate OA buffer\n");
 		return PTR_ERR(bo);
 	}
 
@@ -1680,7 +1680,8 @@ static int alloc_noa_wait(struct i915_perf_stream *stream)
 
 	bo = i915_gem_object_create_internal(i915, 4096);
 	if (IS_ERR(bo)) {
-		DRM_ERROR("Failed to allocate NOA wait batchbuffer\n");
+		drm_err(&i915->drm,
+			"Failed to allocate NOA wait batchbuffer\n");
 		return PTR_ERR(bo);
 	}
 
diff --git a/drivers/gpu/drm/i915/i915_sysfs.c b/drivers/gpu/drm/i915/i915_sysfs.c
index 0cef3130db05..c14d762bd652 100644
--- a/drivers/gpu/drm/i915/i915_sysfs.c
+++ b/drivers/gpu/drm/i915/i915_sysfs.c
@@ -525,7 +525,7 @@ static ssize_t error_state_write(struct file *file, struct kobject *kobj,
 	struct device *kdev = kobj_to_dev(kobj);
 	struct drm_i915_private *dev_priv = kdev_minor_to_i915(kdev);
 
-	DRM_DEBUG_DRIVER("Resetting error state\n");
+	drm_dbg(&dev_priv->drm, "Resetting error state\n");
 	i915_reset_error_state(dev_priv);
 
 	return count;
@@ -564,31 +564,36 @@ void i915_setup_sysfs(struct drm_i915_private *dev_priv)
 		ret = sysfs_merge_group(&kdev->kobj,
 					&rc6_attr_group);
 		if (ret)
-			DRM_ERROR("RC6 residency sysfs setup failed\n");
+			drm_err(&dev_priv->drm,
+				"RC6 residency sysfs setup failed\n");
 	}
 	if (HAS_RC6p(dev_priv)) {
 		ret = sysfs_merge_group(&kdev->kobj,
 					&rc6p_attr_group);
 		if (ret)
-			DRM_ERROR("RC6p residency sysfs setup failed\n");
+			drm_err(&dev_priv->drm,
+				"RC6p residency sysfs setup failed\n");
 	}
 	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
 		ret = sysfs_merge_group(&kdev->kobj,
 					&media_rc6_attr_group);
 		if (ret)
-			DRM_ERROR("Media RC6 residency sysfs setup failed\n");
+			drm_err(&dev_priv->drm,
+				"Media RC6 residency sysfs setup failed\n");
 	}
 #endif
 	if (HAS_L3_DPF(dev_priv)) {
 		ret = device_create_bin_file(kdev, &dpf_attrs);
 		if (ret)
-			DRM_ERROR("l3 parity sysfs setup failed\n");
+			drm_err(&dev_priv->drm,
+				"l3 parity sysfs setup failed\n");
 
 		if (NUM_L3_SLICES(dev_priv) > 1) {
 			ret = device_create_bin_file(kdev,
 						     &dpf_attrs_1);
 			if (ret)
-				DRM_ERROR("l3 parity slice 1 setup failed\n");
+				drm_err(&dev_priv->drm,
+					"l3 parity slice 1 setup failed\n");
 		}
 	}
 
@@ -598,7 +603,7 @@ void i915_setup_sysfs(struct drm_i915_private *dev_priv)
 	else if (INTEL_GEN(dev_priv) >= 6)
 		ret = sysfs_create_files(&kdev->kobj, gen6_attrs);
 	if (ret)
-		DRM_ERROR("RPS sysfs setup failed\n");
+		drm_err(&dev_priv->drm, "RPS sysfs setup failed\n");
 
 	i915_setup_error_capture(kdev);
 }
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
