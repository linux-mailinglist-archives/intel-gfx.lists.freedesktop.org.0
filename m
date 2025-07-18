Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A2DC4B0AAD2
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Jul 2025 21:56:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4B6110E002;
	Fri, 18 Jul 2025 19:56:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; secure) header.d=estudante.ufscar.br header.i=@estudante.ufscar.br header.b="XF3DIqOz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oo1-f48.google.com (mail-oo1-f48.google.com
 [209.85.161.48])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBA6110E069
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Jul 2025 19:56:00 +0000 (UTC)
Received: by mail-oo1-f48.google.com with SMTP id
 006d021491bc7-60efc773b5fso1445905eaf.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Jul 2025 12:56:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=estudante.ufscar.br; s=google; t=1752868560; x=1753473360;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=Jn8giDL749wRMcd6XK3joiEssp/skQmnWKpjb3i6mtY=;
 b=XF3DIqOzkwo3rkaFKPxXSjrZ3N4s4UKtxTCL4EGBR1kDRpk9EDyq3ktg5Inqu57dDS
 5YfOBFcnG8pKGUwj9pcTbUi+0BTyoSmb39IdvbFsTNfMe0hJXm/ilj1hhtbuVIEJxRqs
 EtvFbo7U+VR7ZckRkbpWgtLQAxyK2pxfqT1Sc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1752868560; x=1753473360;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=Jn8giDL749wRMcd6XK3joiEssp/skQmnWKpjb3i6mtY=;
 b=H2fq1uiZMsBRWw1uJLJHwjrzor+UfXOC1j69P7Kfsgp8s9CHax13mjkfNXNVzdlH4F
 bfzhh1dlr++zjYkouhusL7Us397x8P24iTBE7VHzkgEKqvJNLpMGLcb1MhPLsExupfLp
 OelC3vfoRaW9Zs6dqr0A8x58x/LK6Kb1THdW1o7KNmzw+N+luypjuRiAJGhkD9MhCc+H
 K4I5ga1U91vB1BbMeuVlGGz2dAnxEQEU+1amssWuBXDFM8+l367k1WHtnPRjIRA4L4Jl
 cz/LV+Hhl4qk9ZsKb6ugRcdx2TB44Y6QGdclzzGE0fwn25KByUqyM1ONUQhqLK1KcbVr
 t2eA==
X-Gm-Message-State: AOJu0YwUCVHqdkfGeLsTxsbq6vJTxOITo/iObj5OT4Otjwc/J3o5NZp3
 3hqFyFtfJ8sFL8M8tUubiXe91Mv9EcgTIuZ8EZ4mbtEWBan7oGceYEKotvqCR1wxATA=
X-Gm-Gg: ASbGncs6zHblLl5+hA9WpITihiMtw/xTCyREV92H2OrZSyQxsNF9mrZ2BeWakMI6zPk
 Pz62ghClMhy75N4Jr8cATBe00K9Ld6cToObrVugECV7ueWISvALAe9L+MhoTq8W1IsnCwyt3kGP
 YOjYFuKCmEk7QdAnR/3INKzHL4k/XYTY3HFgdb06dP7KQIJRdWTfuaCBkMCsgzFAxbQRpvYliHB
 KNAFPldkKXePO1DWS1mMnLWKFQ6blXNOZnidVdKyDNX6BK+SgPJr0f8qKgdqRQd7dXM7iPn3Z95
 diSeGce+IfWKubPr7Odg23tW859ZXMlpYPxiglX/dnFukuHeUsAdQ2wzU56Q1NVk4D74B+IkQdb
 TCxKQZ+vAmmXfN8zW2Szue1udRK74XiR54PnAxD/AwDkJP/xSUyi0
X-Google-Smtp-Source: AGHT+IFyG7f8ZAZx/Oo5MSbyeOITQKRV5wZCXPGtSwh4ZCc6lHsVMnOo+fhLI8iYH/kBVXvKYfc+/A==
X-Received: by 2002:a05:6870:40cd:b0:2bc:8c4a:aac2 with SMTP id
 586e51a60fabf-2ffaf5442e4mr10395209fac.27.1752868559831; 
 Fri, 18 Jul 2025 12:55:59 -0700 (PDT)
Received: from localhost.localdomain ([2804:2894:c100:61f6:9607:54a9:55b1:8d3])
 by smtp.gmail.com with ESMTPSA id
 586e51a60fabf-30101cd74a6sm1016408fac.14.2025.07.18.12.55.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Jul 2025 12:55:58 -0700 (PDT)
From: Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>
To: airlied@gmail.com, jani.nikula@linux.intel.com,
 joonas.lahtinen@linux.intel.com, simona@ffwll.ch, mripard@kernel.org
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 mairacanal@riseup.net, Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>
Subject: [PATCH] [PATCH v3] drm/i915: move struct_mutex from drm_device to
 drm_i915_private
Date: Fri, 18 Jul 2025 16:55:43 -0300
Message-ID: <20250718195543.301391-1-luiz.mello@estudante.ufscar.br>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

Includes the missing file drm_device.h, which was unintentionally
omitted in v1.

i915 is the only remaining user of struct_mutex lock.

Move it from drm_device to drm_i915_private so it is only used within
the i915 driver.

Also update intel_guc_log.c to use the new location of struct_mutex.

Signed-off-by: Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>
---

Hi,

In this version, I fixed a typo in a comment in i915_irq.c where I mistakenly wrote "BLK" instead of "BKL".

I also corrected the usage of struct_mutex in i915_irq.c to properly reference it through drm_i915_private.

Additionally, I removed the TODO from Documentation/gpu/todo.rst since this task has now been completed.

Signed-off-by: Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>
---
 Documentation/gpu/todo.rst                 | 25 ----------------------
 drivers/gpu/drm/i915/gt/uc/intel_guc_log.c |  4 ++--
 drivers/gpu/drm/i915/i915_drv.h            |  8 +++++++
 drivers/gpu/drm/i915/i915_irq.c            |  4 ++--
 include/drm/drm_device.h                   | 10 ---------
 5 files changed, 12 insertions(+), 39 deletions(-)

diff --git a/Documentation/gpu/todo.rst b/Documentation/gpu/todo.rst
index c57777a24e03..ff8f4ee32bee 100644
--- a/Documentation/gpu/todo.rst
+++ b/Documentation/gpu/todo.rst
@@ -173,31 +173,6 @@ Contact: Simona Vetter
 
 Level: Intermediate
 
-Get rid of dev->struct_mutex from GEM drivers
----------------------------------------------
-
-``dev->struct_mutex`` is the Big DRM Lock from legacy days and infested
-everything. Nowadays in modern drivers the only bit where it's mandatory is
-serializing GEM buffer object destruction. Which unfortunately means drivers
-have to keep track of that lock and either call ``unreference`` or
-``unreference_locked`` depending upon context.
-
-Core GEM doesn't have a need for ``struct_mutex`` any more since kernel 4.8,
-and there's a GEM object ``free`` callback for any drivers which are
-entirely ``struct_mutex`` free.
-
-For drivers that need ``struct_mutex`` it should be replaced with a driver-
-private lock. The tricky part is the BO free functions, since those can't
-reliably take that lock any more. Instead state needs to be protected with
-suitable subordinate locks or some cleanup work pushed to a worker thread. For
-performance-critical drivers it might also be better to go with a more
-fine-grained per-buffer object and per-context lockings scheme. Currently only
-the ``msm`` and `i915` drivers use ``struct_mutex``.
-
-Contact: Simona Vetter, respective driver maintainers
-
-Level: Advanced
-
 Move Buffer Object Locking to dma_resv_lock()
 ---------------------------------------------
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
index e8a04e476c57..7135fdb0ebb4 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
@@ -678,7 +678,7 @@ int intel_guc_log_set_level(struct intel_guc_log *log, u32 level)
 	if (level < GUC_LOG_LEVEL_DISABLED || level > GUC_LOG_LEVEL_MAX)
 		return -EINVAL;
 
-	mutex_lock(&i915->drm.struct_mutex);
+	mutex_lock(&i915->struct_mutex);
 
 	if (log->level == level)
 		goto out_unlock;
@@ -696,7 +696,7 @@ int intel_guc_log_set_level(struct intel_guc_log *log, u32 level)
 	log->level = level;
 
 out_unlock:
-	mutex_unlock(&i915->drm.struct_mutex);
+	mutex_unlock(&i915->struct_mutex);
 
 	return ret;
 }
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index d0e1980dcba2..0384dae6fa97 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -224,6 +224,14 @@ struct drm_i915_private {
 
 	bool irqs_enabled;
 
+	/*
+	 * Currently, struct_mutex is only used by the i915 driver as a replacement
+	 * for BKL. 
+	 * 
+	 * For this reason, it is no longer part of struct drm_device.
+	*/
+	struct mutex struct_mutex;
+
 	/* LPT/WPT IOSF sideband protection */
 	struct mutex sbi_lock;
 
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 95042879bec4..7b29062fed50 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -166,7 +166,7 @@ static void ivb_parity_work(struct work_struct *work)
 	 * In order to prevent a get/put style interface, acquire struct mutex
 	 * any time we access those registers.
 	 */
-	mutex_lock(&dev_priv->drm.struct_mutex);
+	mutex_lock(&dev_priv->struct_mutex);
 
 	/* If we've screwed up tracking, just let the interrupt fire again */
 	if (drm_WARN_ON(&dev_priv->drm, !dev_priv->l3_parity.which_slice))
@@ -224,7 +224,7 @@ static void ivb_parity_work(struct work_struct *work)
 	gen5_gt_enable_irq(gt, GT_PARITY_ERROR(dev_priv));
 	spin_unlock_irq(gt->irq_lock);
 
-	mutex_unlock(&dev_priv->drm.struct_mutex);
+	mutex_unlock(&dev_priv->struct_mutex);
 }
 
 static irqreturn_t valleyview_irq_handler(int irq, void *arg)
diff --git a/include/drm/drm_device.h b/include/drm/drm_device.h
index e2f894f1b90a..c374c58fb975 100644
--- a/include/drm/drm_device.h
+++ b/include/drm/drm_device.h
@@ -177,16 +177,6 @@ struct drm_device {
 	/** @unique: Unique name of the device */
 	char *unique;
 
-	/**
-	 * @struct_mutex:
-	 *
-	 * Lock for others (not &drm_minor.master and &drm_file.is_master)
-	 *
-	 * TODO: This lock used to be the BKL of the DRM subsystem. Move the
-	 *       lock into i915, which is the only remaining user.
-	 */
-	struct mutex struct_mutex;
-
 	/**
 	 * @master_mutex:
 	 *
-- 
2.50.1

