Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50BE9B24B10
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Aug 2025 15:51:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9E7210E718;
	Wed, 13 Aug 2025 13:50:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; secure) header.d=estudante.ufscar.br header.i=@estudante.ufscar.br header.b="u9+esRYj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com
 [209.85.210.175])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B88310E71A
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Aug 2025 13:50:58 +0000 (UTC)
Received: by mail-pf1-f175.google.com with SMTP id
 d2e1a72fcca58-76bc61152d8so5760740b3a.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Aug 2025 06:50:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=estudante.ufscar.br; s=google; t=1755093058; x=1755697858;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=w30obqw5UNSOW5Yq5QqWzZLB120DIDhi8ZnxPt7eg6M=;
 b=u9+esRYjVEndnxF/jDZ99DWYfkK90Ybj6MkfKhEmwlegmWiCBVbm4RU/YbctoCQV8x
 xKfnj28HhoCKeb0r+PyyIyu3K4ywNOhydS2/TKxsu1FpOzg1odHAimQZH5uOhDl1RXSy
 /IKbBZHbJoofBNGfJUUEKpe4NEHMA1bNxq58Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1755093058; x=1755697858;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=w30obqw5UNSOW5Yq5QqWzZLB120DIDhi8ZnxPt7eg6M=;
 b=g9l2RmMnd5NSqcMuBp3Uda+OpYQXRvCwFUQD3qIpQ/Y45JHS8Me/NnnyaI/FTSmM2G
 fKs3mMU1CX+VKi86CStvoiA0QhS/FzZT14Ju7iNrBz2NS9LXOgx24ZBEwqNVQ77TABbJ
 YMQ4rQguESbSHYnbhgRfFJSaW0U38RZ9ihQ3xVib9tCc5sXq5B8WgO0c1cPgPoRbi2Bp
 1f+XkDxI/b1X/8y7V06xZ8/n0klhuuNdvbCH9Pgz8n+q7CABZ+/agsgWqUq1EaKf1/YF
 KSo79zVTnEuwPBdUN82mKqaqHVn52GAtA+885Y7+96FOsjN5icNUUrRKJxykVTGBPiEy
 dHhQ==
X-Gm-Message-State: AOJu0YxpT5VjViBTGohnAIp9r/n6aVgwOqWn3E7KFvN4AksG5Ryf2iE4
 W/bhOy1raPZFv4CaZejonUnp9ZFOjo2OqcCj+fIz6O7FD5BepYQ+49Xwkx6Xvtr4ats=
X-Gm-Gg: ASbGncux2R+GsuKzMADxa++uuXwAV9YBt34NCk/Db1MjnqOMr0ejqJn3jizsSCoJ+Px
 n8Pk6eBnZFOzjIwvMFyKa1BkZpUO4+1Y1TVKSIlL6ll6x7k1vM2D9qp5pbns0aCTyNLGPDw4vsm
 usNujb30Y/BN/zhviOAxdUZqlmlSF2fjOm0MnDtu7q5AvpKnjMtZu4C4/3AD11KNmfc4iP9Jkj8
 hvG6GIEK2s7p5WaYV3rcmn6QtRfLsIV/3q5c3hap13WXPxPcCTVBMWm7n8Lex0ZQzalQOUp7NgY
 9CL+RBzqbzO+bdg80PFxQkAmc2XxU7cA5510gLQq/ilysWNjB7HeloFwUABK5QEuqfAqM+8WRXx
 vZdn9BmARdme5GTOaN6sRUreibFFioYg/sOWqKmMuAqA=
X-Google-Smtp-Source: AGHT+IFACHUC2+1KSSvY0rTVlXEJ6rGfyjj/fMD4otDZC0LW9WRyUouE1vE6gX3mOItfKW79tXZHJg==
X-Received: by 2002:a17:903:22cf:b0:226:38ff:1d6a with SMTP id
 d9443c01a7336-2430d0be4d4mr48184985ad.7.1755093057736; 
 Wed, 13 Aug 2025 06:50:57 -0700 (PDT)
Received: from localhost.localdomain ([2804:14c:4a5:8ac9::1709])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-241e8aaf855sm326965955ad.168.2025.08.13.06.50.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Aug 2025 06:50:57 -0700 (PDT)
From: Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>
To: rodrigo.vivi@intel.com, jani.nikula@linux.intel.com,
 joonas.lahtinen@linux.intel.com, simona@ffwll.ch, airlied@gmail.com,
 tursulin@ursulin.net
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 mairacanal@riseup.net, Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>
Subject: [PATCH 1/9 v3] drm/i915: Move struct_mutex to drm_i915_private
Date: Wed, 13 Aug 2025 10:50:25 -0300
Message-ID: <20250813135035.144762-2-luiz.mello@estudante.ufscar.br>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250813135035.144762-1-luiz.mello@estudante.ufscar.br>
References: <20250813135035.144762-1-luiz.mello@estudante.ufscar.br>
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

Move legacy BKL struct_mutex from drm_device to drm_i915_private, which
is the last remaining user.

Signed-off-by: Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/drm_drv.c                  |  2 --
 drivers/gpu/drm/i915/gt/uc/intel_guc_log.c |  4 ++--
 drivers/gpu/drm/i915/i915_driver.c         |  2 ++
 drivers/gpu/drm/i915/i915_drv.h            | 11 +++++++++++
 drivers/gpu/drm/i915/i915_irq.c            |  4 ++--
 include/drm/drm_device.h                   | 10 ----------
 6 files changed, 17 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/drm_drv.c b/drivers/gpu/drm/drm_drv.c
index cdd591b11488..ad3aee354ba3 100644
--- a/drivers/gpu/drm/drm_drv.c
+++ b/drivers/gpu/drm/drm_drv.c
@@ -694,7 +694,6 @@ static void drm_dev_init_release(struct drm_device *dev, void *res)
 	mutex_destroy(&dev->master_mutex);
 	mutex_destroy(&dev->clientlist_mutex);
 	mutex_destroy(&dev->filelist_mutex);
-	mutex_destroy(&dev->struct_mutex);
 }
 
 static int drm_dev_init(struct drm_device *dev,
@@ -735,7 +734,6 @@ static int drm_dev_init(struct drm_device *dev,
 	INIT_LIST_HEAD(&dev->vblank_event_list);
 
 	spin_lock_init(&dev->event_lock);
-	mutex_init(&dev->struct_mutex);
 	mutex_init(&dev->filelist_mutex);
 	mutex_init(&dev->clientlist_mutex);
 	mutex_init(&dev->master_mutex);
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
index 09a64f224c49..65ffcaeee4b9 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
@@ -677,7 +677,7 @@ int intel_guc_log_set_level(struct intel_guc_log *log, u32 level)
 	if (level < GUC_LOG_LEVEL_DISABLED || level > GUC_LOG_LEVEL_MAX)
 		return -EINVAL;
 
-	mutex_lock(&i915->drm.struct_mutex);
+	mutex_lock(&i915->struct_mutex);
 
 	if (log->level == level)
 		goto out_unlock;
@@ -695,7 +695,7 @@ int intel_guc_log_set_level(struct intel_guc_log *log, u32 level)
 	log->level = level;
 
 out_unlock:
-	mutex_unlock(&i915->drm.struct_mutex);
+	mutex_unlock(&i915->struct_mutex);
 
 	return ret;
 }
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index c6263c6d3384..d1559fd8ad3d 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -233,6 +233,7 @@ static int i915_driver_early_probe(struct drm_i915_private *dev_priv)
 
 	intel_sbi_init(display);
 	vlv_iosf_sb_init(dev_priv);
+	mutex_init(&dev_priv->struct_mutex);
 	mutex_init(&dev_priv->sb_lock);
 
 	i915_memcpy_init_early(dev_priv);
@@ -291,6 +292,7 @@ static void i915_driver_late_release(struct drm_i915_private *dev_priv)
 	i915_workqueues_cleanup(dev_priv);
 
 	mutex_destroy(&dev_priv->sb_lock);
+	mutex_destroy(&dev_priv->struct_mutex);
 	vlv_iosf_sb_fini(dev_priv);
 	intel_sbi_fini(display);
 
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 4e4e89746aa6..15f66a7d496d 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -222,6 +222,17 @@ struct drm_i915_private {
 
 	bool irqs_enabled;
 
+	/*
+	 * Currently, struct_mutex is only used by the i915 driver as a replacement
+	 * for BKL.
+	 *
+	 * For this reason, it is no longer part of struct drm_device.
+	 */
+	struct mutex struct_mutex;
+
+	/* LPT/WPT IOSF sideband protection */
+	struct mutex sbi_lock;
+
 	/* VLV/CHV IOSF sideband */
 	struct {
 		struct mutex lock; /* protect sideband access */
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 191ed8bb1d9c..cdfb09464134 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -167,7 +167,7 @@ static void ivb_parity_work(struct work_struct *work)
 	 * In order to prevent a get/put style interface, acquire struct mutex
 	 * any time we access those registers.
 	 */
-	mutex_lock(&dev_priv->drm.struct_mutex);
+	mutex_lock(&dev_priv->struct_mutex);
 
 	/* If we've screwed up tracking, just let the interrupt fire again */
 	if (drm_WARN_ON(&dev_priv->drm, !dev_priv->l3_parity.which_slice))
@@ -225,7 +225,7 @@ static void ivb_parity_work(struct work_struct *work)
 	gen5_gt_enable_irq(gt, GT_PARITY_ERROR(dev_priv));
 	spin_unlock_irq(gt->irq_lock);
 
-	mutex_unlock(&dev_priv->drm.struct_mutex);
+	mutex_unlock(&dev_priv->struct_mutex);
 }
 
 static irqreturn_t valleyview_irq_handler(int irq, void *arg)
diff --git a/include/drm/drm_device.h b/include/drm/drm_device.h
index a33aedd5e9ec..016df5529d46 100644
--- a/include/drm/drm_device.h
+++ b/include/drm/drm_device.h
@@ -188,16 +188,6 @@ struct drm_device {
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

