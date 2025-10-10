Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76DC4BCE43F
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Oct 2025 20:40:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0ED3310EC75;
	Fri, 10 Oct 2025 18:40:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="HB8ousvj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com
 [209.85.210.175])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4DA110EC75
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Oct 2025 18:40:26 +0000 (UTC)
Received: by mail-pf1-f175.google.com with SMTP id
 d2e1a72fcca58-77f605f22easo2183166b3a.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Oct 2025 11:40:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1760121626; x=1760726426; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=u3oPc0obinghArgRLV+GqWiLm1T0Zw3n4YN9KlFYBq0=;
 b=HB8ousvjVtRaviNZQ4u5DF50SuyPKGVl7gpdSHtIlrVvnJxqTzx9DaNXr/E+yF7zEY
 tdhI1CIQuOQ91+2aVspi+JvZmZTh66xR5GjSV0yrqXsFc+Zz61X67pDPMux8Ch8RzlLM
 J15QXwwgzznF7Q4zO9+2tQ7g23IU0Uo4b4UP/BP61fF6Kt69ls2d/SqkiqV+oJ7X+K1h
 3tIj8ST3qCi5b7BeFOGy6IVP+5FSwD6ZASE98JIpNK4xatZWMeiijN5m8almzTQn+gds
 bxzp+ECwItbLtribDvDf2jgB+owyD1jcuw5Jivc20w9MkJJUvEU7ZmsJrqH7PqLMpZP7
 N+1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1760121626; x=1760726426;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=u3oPc0obinghArgRLV+GqWiLm1T0Zw3n4YN9KlFYBq0=;
 b=HWKP8+j0xRmKkLwa219qgDQ7lmdHxaR+rviYlM5yHjEaGayklnWpmXENGAaB0G0d1N
 YrkXyPPXO3O783n86cmlB+CqD5kT9DyhZpLCfEP4mOUxeWtHQ/a6h8NoOcFSul1XHjCD
 yHqGaKTh+iYMIO7bKOW4t7Nh26hdGK2AhHbvNJdssAEDQtjWll206jB3jyK7voeBPR8M
 uGvcvE+O14RQ++MsxXqwowG8Y2iX67Bq7XRaRZKWxZx9R3UArPA5EFzwtB6wGrjXHDbK
 /7hvf3ET3K8zhnEBAGZkmKPNsa+rxY3akSmMeEZ9slG2mCu6yzKnl5UpaGUon//FRkge
 5wOw==
X-Gm-Message-State: AOJu0YzwHmI1j718xFh91OvRBYsbb2L7M9kk37zOHNHlqV0g3wJ6u2Pr
 kKP84nZq6saA5n8Q6PewUjFwK2sxNg0pMj3FBggRdtv06jJwOciSeFz8QaeNlSsr
X-Gm-Gg: ASbGnctbmFQqixnlNAxXxR8gjLIxxoyj5GG/dbToK2pLCJVVp2qp0s862UEXF/KP9Pb
 SKBVVBOgYgY+x2dl9fCA4KxlxJX0ATemZEISiaqKA/o4/SXm7zULP9/43P1RTC3UVxBHbrWveeE
 ZEYUeUn3T6+4RKDwoAs0n4+mUAjJ3O/YHhSEIG1eqTJ9n7KfwescGAv8VI0QynN8xgKjzA8p+De
 OVuefYwlctc4HDRyPYhShsTBecD4YGd0ogZtsJarSm7XiskFSE6UkfnvsfC4g9AG36trQWDTIQc
 taM7dvvB9IdGgX4H3QrJipERY1paQEHukjZRWe+AzdO5Ww7lM6cU3fsEmfB91N95+WoVkPpg+Iu
 EkQsGp8TWv7lFXIa/o6Gzb7dliAHykAY6G1NLEG0Tau7dyQoe
X-Google-Smtp-Source: AGHT+IEy4CyghhevPTqyizEfr5op7AKofskRpbyb7efSK3jL4AwYWH/LGBlWAcR66/4+gFZDI07ikQ==
X-Received: by 2002:a05:6a00:4195:b0:781:264b:dd96 with SMTP id
 d2e1a72fcca58-79387440a58mr13401949b3a.19.1760121625670; 
 Fri, 10 Oct 2025 11:40:25 -0700 (PDT)
Received: from localhost ([134.134.137.76]) by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-7992d096586sm3643121b3a.42.2025.10.10.11.40.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Oct 2025 11:40:25 -0700 (PDT)
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
To: intel-gfx@lists.freedesktop.org
Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>,
 "Jani Nikula" <jani.nikula@intel.com>
Subject: [PATCH 1/1] drm/i915: switch to use kernel standard error injection
Date: Fri, 10 Oct 2025 21:40:06 +0300
Message-ID: <20251010184006.1635201-2-juhapekka.heikkila@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251010184006.1635201-1-juhapekka.heikkila@gmail.com>
References: <20251010184006.1635201-1-juhapekka.heikkila@gmail.com>
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

Switch error injection testing from i915_inject_probe_failure
to ALLOW_ERROR_INJECTION.

Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
---
 drivers/gpu/drm/i915/display/intel_connector.c     | 14 ++------------
 .../gpu/drm/i915/display/intel_display_driver.c    |  5 +----
 drivers/gpu/drm/i915/gt/intel_engine_cs.c          |  4 +---
 drivers/gpu/drm/i915/gt/intel_wopcm.c              |  3 ---
 drivers/gpu/drm/i915/gt/intel_wopcm.h              |  1 +
 drivers/gpu/drm/i915/gt/uc/intel_uc.c              |  4 +---
 drivers/gpu/drm/i915/i915_driver.c                 | 12 +++---------
 drivers/gpu/drm/i915/i915_pci.c                    |  6 +-----
 drivers/gpu/drm/i915/intel_gvt.c                   |  3 ---
 drivers/gpu/drm/i915/intel_uncore.c                |  4 +---
 10 files changed, 11 insertions(+), 45 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_connector.c b/drivers/gpu/drm/i915/display/intel_connector.c
index 6a55854db5b6..aa8ac1130f5f 100644
--- a/drivers/gpu/drm/i915/display/intel_connector.c
+++ b/drivers/gpu/drm/i915/display/intel_connector.c
@@ -155,27 +155,17 @@ void intel_connector_destroy(struct drm_connector *connector)
 int intel_connector_register(struct drm_connector *_connector)
 {
 	struct intel_connector *connector = to_intel_connector(_connector);
-	struct drm_i915_private *i915 = to_i915(_connector->dev);
 	int ret;
 
 	ret = intel_panel_register(connector);
 	if (ret)
-		goto err;
-
-	if (i915_inject_probe_failure(i915)) {
-		ret = -EFAULT;
-		goto err_panel;
-	}
+		return ret;
 
 	intel_connector_debugfs_add(connector);
 
 	return 0;
-
-err_panel:
-	intel_panel_unregister(connector);
-err:
-	return ret;
 }
+ALLOW_ERROR_INJECTION(intel_connector_register, ERRNO);
 
 void intel_connector_unregister(struct drm_connector *_connector)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index f84a0b26b7a6..d53a76e30222 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -205,12 +205,8 @@ void intel_display_driver_early_probe(struct intel_display *display)
 /* part #1: call before irq install */
 int intel_display_driver_probe_noirq(struct intel_display *display)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	int ret;
 
-	if (i915_inject_probe_failure(i915))
-		return -ENODEV;
-
 	if (HAS_DISPLAY(display)) {
 		ret = drm_vblank_init(display->drm,
 				      INTEL_NUM_PIPES(display));
@@ -319,6 +315,7 @@ int intel_display_driver_probe_noirq(struct intel_display *display)
 
 	return ret;
 }
+ALLOW_ERROR_INJECTION(intel_display_driver_probe_noirq, ERRNO);
 
 static void set_display_access(struct intel_display *display,
 			       bool any_task_allowed,
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index b721bbd23356..98a3a7a9de50 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -963,9 +963,6 @@ int intel_engines_init_mmio(struct intel_gt *gt)
 	drm_WARN_ON(&i915->drm, engine_mask &
 		    GENMASK(BITS_PER_TYPE(mask) - 1, I915_NUM_ENGINES));
 
-	if (i915_inject_probe_failure(i915))
-		return -ENODEV;
-
 	for (class = 0; class < MAX_ENGINE_CLASS + 1; ++class) {
 		setup_logical_ids(gt, logical_ids, class);
 
@@ -1007,6 +1004,7 @@ int intel_engines_init_mmio(struct intel_gt *gt)
 	intel_engines_free(gt);
 	return err;
 }
+ALLOW_ERROR_INJECTION(intel_engines_init_mmio, ERRNO);
 
 void intel_engine_init_execlists(struct intel_engine_cs *engine)
 {
diff --git a/drivers/gpu/drm/i915/gt/intel_wopcm.c b/drivers/gpu/drm/i915/gt/intel_wopcm.c
index 7ebbcc191c2d..dd9edef6a8c1 100644
--- a/drivers/gpu/drm/i915/gt/intel_wopcm.c
+++ b/drivers/gpu/drm/i915/gt/intel_wopcm.c
@@ -251,9 +251,6 @@ void intel_wopcm_init(struct intel_wopcm *wopcm)
 	GEM_BUG_ON(huc_fw_size >= wopcm_size);
 	GEM_BUG_ON(ctx_rsvd + WOPCM_RESERVED_SIZE >= wopcm_size);
 
-	if (i915_inject_probe_failure(i915))
-		return;
-
 	if (__wopcm_regs_locked(gt->uncore, &guc_wopcm_base, &guc_wopcm_size)) {
 		drm_dbg(&i915->drm, "GuC WOPCM is already locked [%uK, %uK)\n",
 			guc_wopcm_base / SZ_1K, guc_wopcm_size / SZ_1K);
diff --git a/drivers/gpu/drm/i915/gt/intel_wopcm.h b/drivers/gpu/drm/i915/gt/intel_wopcm.h
index d2038b6de5e7..73dc6ff3a894 100644
--- a/drivers/gpu/drm/i915/gt/intel_wopcm.h
+++ b/drivers/gpu/drm/i915/gt/intel_wopcm.h
@@ -56,4 +56,5 @@ static inline u32 intel_wopcm_guc_size(struct intel_wopcm *wopcm)
 void intel_wopcm_init_early(struct intel_wopcm *wopcm);
 void intel_wopcm_init(struct intel_wopcm *wopcm);
 
+int intel_wopcm_init_inject_failure(void);
 #endif
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
index 4a3493e8d433..ba444da35f9d 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
@@ -323,9 +323,6 @@ static int __uc_init(struct intel_uc *uc)
 	if (!intel_uc_uses_guc(uc))
 		return 0;
 
-	if (i915_inject_probe_failure(uc_to_gt(uc)->i915))
-		return -ENOMEM;
-
 	ret = intel_guc_init(guc);
 	if (ret)
 		return ret;
@@ -338,6 +335,7 @@ static int __uc_init(struct intel_uc *uc)
 
 	return 0;
 }
+ALLOW_ERROR_INJECTION(__uc_init, ERRNO);
 
 static void __uc_fini(struct intel_uc *uc)
 {
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index b46cb54ef5dc..a0ff6cb89853 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -223,9 +223,6 @@ static int i915_driver_early_probe(struct drm_i915_private *dev_priv)
 	struct intel_display *display = dev_priv->display;
 	int ret = 0;
 
-	if (i915_inject_probe_failure(dev_priv))
-		return -ENODEV;
-
 	intel_device_info_runtime_init_early(dev_priv);
 
 	intel_step_init(dev_priv);
@@ -275,6 +272,7 @@ static int i915_driver_early_probe(struct drm_i915_private *dev_priv)
 	i915_workqueues_cleanup(dev_priv);
 	return ret;
 }
+ALLOW_ERROR_INJECTION(i915_driver_early_probe, ERRNO);
 
 /**
  * i915_driver_late_release - cleanup the setup done in
@@ -317,9 +315,6 @@ static int i915_driver_mmio_probe(struct drm_i915_private *dev_priv)
 	struct intel_gt *gt;
 	int ret, i;
 
-	if (i915_inject_probe_failure(dev_priv))
-		return -ENODEV;
-
 	ret = intel_gmch_bridge_setup(dev_priv);
 	if (ret < 0)
 		return ret;
@@ -357,6 +352,7 @@ static int i915_driver_mmio_probe(struct drm_i915_private *dev_priv)
 
 	return ret;
 }
+ALLOW_ERROR_INJECTION(i915_driver_mmio_probe, ERRNO);
 
 /**
  * i915_driver_mmio_release - cleanup the setup done in i915_driver_mmio_probe()
@@ -464,9 +460,6 @@ static int i915_driver_hw_probe(struct drm_i915_private *dev_priv)
 	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
 	int ret;
 
-	if (i915_inject_probe_failure(dev_priv))
-		return -ENODEV;
-
 	if (HAS_PPGTT(dev_priv)) {
 		if (intel_vgpu_active(dev_priv) &&
 		    !intel_vgpu_has_full_ppgtt(dev_priv)) {
@@ -594,6 +587,7 @@ static int i915_driver_hw_probe(struct drm_i915_private *dev_priv)
 	i915_perf_fini(dev_priv);
 	return ret;
 }
+ALLOW_ERROR_INJECTION(i915_driver_hw_probe, ERRNO);
 
 /**
  * i915_driver_hw_remove - cleanup the setup done in i915_driver_hw_probe()
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index b2e311f4791a..d966a00520f1 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -999,11 +999,6 @@ static int i915_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	if (err)
 		return err;
 
-	if (i915_inject_probe_failure(pdev_to_i915(pdev))) {
-		i915_pci_remove(pdev);
-		return -ENODEV;
-	}
-
 	err = i915_live_selftests(pdev);
 	if (err) {
 		i915_pci_remove(pdev);
@@ -1018,6 +1013,7 @@ static int i915_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 
 	return 0;
 }
+ALLOW_ERROR_INJECTION(i915_pci_probe, ERRNO);
 
 static void i915_pci_shutdown(struct pci_dev *pdev)
 {
diff --git a/drivers/gpu/drm/i915/intel_gvt.c b/drivers/gpu/drm/i915/intel_gvt.c
index dae9dce7d1b3..ee4097ca0b85 100644
--- a/drivers/gpu/drm/i915/intel_gvt.c
+++ b/drivers/gpu/drm/i915/intel_gvt.c
@@ -236,9 +236,6 @@ EXPORT_SYMBOL_NS_GPL(intel_gvt_clear_ops, "I915_GVT");
  */
 int intel_gvt_init(struct drm_i915_private *dev_priv)
 {
-	if (i915_inject_probe_failure(dev_priv))
-		return -ENODEV;
-
 	mutex_lock(&intel_gvt_mutex);
 	list_add_tail(&dev_priv->vgpu.entry, &intel_gvt_devices);
 	if (intel_gvt_ops)
diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
index 8cb59f8d1f4c..aed0adadf31b 100644
--- a/drivers/gpu/drm/i915/intel_uncore.c
+++ b/drivers/gpu/drm/i915/intel_uncore.c
@@ -2070,9 +2070,6 @@ static int __fw_domain_init(struct intel_uncore *uncore,
 	GEM_BUG_ON(domain_id >= FW_DOMAIN_ID_COUNT);
 	GEM_BUG_ON(uncore->fw_domain[domain_id]);
 
-	if (i915_inject_probe_failure(uncore->i915))
-		return -ENOMEM;
-
 	d = kzalloc(sizeof(*d), GFP_KERNEL);
 	if (!d)
 		return -ENOMEM;
@@ -2116,6 +2113,7 @@ static int __fw_domain_init(struct intel_uncore *uncore,
 
 	return 0;
 }
+ALLOW_ERROR_INJECTION(__fw_domain_init, ERRNO);
 
 static void fw_domain_fini(struct intel_uncore *uncore,
 			   enum forcewake_domain_id domain_id)
-- 
2.43.0

