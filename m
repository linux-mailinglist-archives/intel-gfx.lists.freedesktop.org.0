Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A3D1BDE440
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 13:29:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6ACE810E786;
	Wed, 15 Oct 2025 11:29:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="H5a6NYJv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com
 [209.85.214.172])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD69710E786
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Oct 2025 11:29:33 +0000 (UTC)
Received: by mail-pl1-f172.google.com with SMTP id
 d9443c01a7336-27d2c35c459so45549555ad.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Oct 2025 04:29:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1760527773; x=1761132573; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Jj+QhgWtLuCKk5/rRInYOnzQVzyiZG/4ASPDIAeT8cA=;
 b=H5a6NYJvGR79f/dZNjKuFtcBTny21dtIhDATjkAbGfmjLv/y6b665QgjszuwUfMn5X
 TJKBOedkAnQgtPVkNT8l5KEbt6viyM//xEWvuHyhXgUYuLAeHzK0KSbwXPd8lv1gmWqu
 84WazlV0xt4kvw7XALTpyc0QuYa/yUPnUM8InZCCZaZ2/a0WcKUMCKts9y7u/a93/ug3
 YSoVb+600aVtra0UJBy7V7FnNCPvwuLDP9yrau3rSc0UgK34FPyzdsz6jG3eotQBksx1
 KZA73TFAfDBK9tQ23/CMkkhrWQ8J+4BfD2N4/0kIgjJUS8u/7EkSB0ufzSzyBgWsXFY6
 f99Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1760527773; x=1761132573;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Jj+QhgWtLuCKk5/rRInYOnzQVzyiZG/4ASPDIAeT8cA=;
 b=nqBmwgm5afQ9y2K9pTcec0sRYkxug9Z5y8+RzI64DMiItprMCsASK0HGVp4JUTM3nr
 B4YOWYAiTEwTu1Ua5siMpjQYAaz3Vpxc14xt21NRlhrUY0nVYVJTEBkF+0PHxrLtqQA2
 Bdj1mrOJzNv/Uj27TwXRyXnF6DMEKZRl/8DSEQOKk8ziOGGvkBPooIomoJXYsyaEhx1q
 SmyRcv+LyUzoFSEMmPAVBanl9TUp2tsgX0+7vW7hkJAdrAJH4SfAQmM8rqWLMOo0J7g/
 6U90EJeuj0ozbC5SYlXalW7ybCOMPc4mccRBwgNzBWbL9xm+VhlFuf+ELGgPKDSrlEWD
 wbNA==
X-Gm-Message-State: AOJu0YzdjfvP/0YlXdkaLgyHHywrqhD7k2aq/o3TbDVQmSWvffOgvhIA
 2+AoiaNVGhDDDFF+4C1DzzlRoaxtgw94mAo/BQNU0InhBB9Qb7elCOKm2v0Z7W7eMcw=
X-Gm-Gg: ASbGncsGMIGlCJpxvRakBjcPSooz5rnHQ1OBvEM2sb9yy6RqE7ii1FsspwC1DJSh6KS
 DqX1TgoqDwHIX5qwLQHXPyWOHbHtSRBFTJTmquuWqMF89I6+INnaYD1fQndJ0IlrhZnTPoqCU8w
 GySzg+BUBZiQwyv99+uXHZNQX33p395211Ak1H5MtfTdMQRiItUDoOmCdwyi6we6EgR35nk0CTJ
 4oBWxd+TBn2iZMxwfXii4sGLg82YzXUuvUzI3Zvn2SVkXXRb/cXEe/dtCo80tUqulRgOMuqLbEf
 Y1WpswQWSFEwpOHl6vNCuyO/p49KnQnIqneyvBkwOwe+lXsFhBj3VOV9c5tfzqjEdiM8ZWd93qY
 5OfkIcg6CVcRFyAuoHQyBKLCu81+h0gEuPHK/Zc1gp2heZbBZ0ncB7ldAFQ==
X-Google-Smtp-Source: AGHT+IFtuIdrqDr9mEqepZlpNGJ36QC/eG5yr4dhoBOV++kpnYGC3dCnrs8Jd5IFaiMmgGCZKf7jKQ==
X-Received: by 2002:a17:902:fc4c:b0:28e:a875:f7d1 with SMTP id
 d9443c01a7336-2902729036bmr340837175ad.10.1760527772901; 
 Wed, 15 Oct 2025 04:29:32 -0700 (PDT)
Received: from localhost ([192.55.54.45]) by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-29034de9febsm195397035ad.7.2025.10.15.04.29.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Oct 2025 04:29:32 -0700 (PDT)
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Subject: [PATCH 1/1] drm/i915: switch to use kernel standard error injection
Date: Wed, 15 Oct 2025 14:29:02 +0300
Message-ID: <20251015112902.235567-2-juhapekka.heikkila@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251015112902.235567-1-juhapekka.heikkila@gmail.com>
References: <20251015112902.235567-1-juhapekka.heikkila@gmail.com>
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
 .../gpu/drm/i915/display/intel_connector.c    | 14 +----
 .../drm/i915/display/intel_display_driver.c   |  5 +-
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  4 +-
 drivers/gpu/drm/i915/gt/intel_gt.c            |  9 +--
 drivers/gpu/drm/i915/gt/intel_gt_print.h      |  5 +-
 drivers/gpu/drm/i915/gt/intel_lrc.c           |  4 --
 drivers/gpu/drm/i915/gt/intel_wopcm.c         |  3 -
 drivers/gpu/drm/i915/gt/intel_wopcm.h         |  1 +
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c     |  8 +--
 drivers/gpu/drm/i915/gt/uc/intel_huc.c        |  4 --
 drivers/gpu/drm/i915/gt/uc/intel_uc.c         | 17 +-----
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c      | 60 +------------------
 drivers/gpu/drm/i915/i915_driver.c            | 12 +---
 drivers/gpu/drm/i915/i915_params.c            |  5 --
 drivers/gpu/drm/i915/i915_params.h            |  1 -
 drivers/gpu/drm/i915/i915_pci.c               |  6 +-
 drivers/gpu/drm/i915/i915_utils.c             | 30 +---------
 drivers/gpu/drm/i915/i915_utils.h             | 22 +------
 drivers/gpu/drm/i915/intel_gvt.c              |  3 -
 drivers/gpu/drm/i915/intel_uncore.c           |  4 +-
 drivers/gpu/drm/xe/display/ext/i915_utils.c   | 11 ----
 21 files changed, 18 insertions(+), 210 deletions(-)

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
diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index 3d3b1ba76e2b..ac527d878820 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -686,10 +686,6 @@ int intel_gt_init(struct intel_gt *gt)
 {
 	int err;
 
-	err = i915_inject_probe_error(gt->i915, -ENODEV);
-	if (err)
-		return err;
-
 	intel_gt_init_workarounds(gt);
 
 	/*
@@ -740,10 +736,6 @@ int intel_gt_init(struct intel_gt *gt)
 	if (err)
 		goto err_gt;
 
-	err = i915_inject_probe_error(gt->i915, -EIO);
-	if (err)
-		goto err_gt;
-
 	intel_uc_init_late(&gt->uc);
 
 	intel_migrate_init(&gt->migrate, gt);
@@ -766,6 +758,7 @@ int intel_gt_init(struct intel_gt *gt)
 	intel_uncore_forcewake_put(gt->uncore, FORCEWAKE_ALL);
 	return err;
 }
+ALLOW_ERROR_INJECTION(intel_gt_init, ERRNO);
 
 void intel_gt_driver_remove(struct intel_gt *gt)
 {
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_print.h b/drivers/gpu/drm/i915/gt/intel_gt_print.h
index 7fdc78c79273..48f0afd05fd8 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_print.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_print.h
@@ -36,10 +36,7 @@
 
 #define gt_probe_error(_gt, _fmt, ...) \
 	do { \
-		if (i915_error_injected()) \
-			gt_dbg(_gt, _fmt, ##__VA_ARGS__); \
-		else \
-			gt_err(_gt, _fmt, ##__VA_ARGS__); \
+		gt_err(_gt, _fmt, ##__VA_ARGS__); \
 	} while (0)
 
 #define gt_WARN(_gt, _condition, _fmt, ...) \
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index c481b56fa67d..2d33839b0413 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1909,10 +1909,6 @@ void lrc_init_wa_ctx(struct intel_engine_cs *engine)
 	__i915_gem_object_flush_map(wa_ctx->vma->obj, 0, batch_ptr - batch);
 	__i915_gem_object_release_map(wa_ctx->vma->obj);
 
-	/* Verify that we can handle failure to setup the wa_ctx */
-	if (!err)
-		err = i915_inject_probe_error(engine->i915, -ENODEV);
-
 err_unpin:
 	if (err)
 		i915_vma_unpin(wa_ctx->vma);
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
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
index 2c651ec024ef..f1e53312ed90 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
@@ -266,10 +266,6 @@ int intel_guc_ct_init(struct intel_guc_ct *ct)
 	u32 *cmds;
 	int err;
 
-	err = i915_inject_probe_error(guc_to_i915(guc), -ENXIO);
-	if (err)
-		return err;
-
 	GEM_BUG_ON(ct->vma);
 
 	blob_size = 2 * CTB_DESC_SIZE + CTB_H2G_BUFFER_SIZE + CTB_G2H_BUFFER_SIZE;
@@ -306,6 +302,7 @@ int intel_guc_ct_init(struct intel_guc_ct *ct)
 
 	return 0;
 }
+ALLOW_ERROR_INJECTION(intel_guc_ct_init, ERRNO);
 
 /**
  * intel_guc_ct_fini - Fini buffer-based communication
@@ -1394,9 +1391,6 @@ static void ct_dead_ct_worker_func(struct work_struct *w)
 	if (ct->dead_ct_reported)
 		return;
 
-	if (i915_error_injected())
-		return;
-
 	ct->dead_ct_reported = true;
 
 	guc_info(guc, "CTB is dead - reason=0x%X\n", ct->dead_ct_reason);
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_huc.c b/drivers/gpu/drm/i915/gt/uc/intel_huc.c
index 456d3372eef8..f3249b98c992 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_huc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_huc.c
@@ -541,10 +541,6 @@ int intel_huc_auth(struct intel_huc *huc, enum intel_huc_authentication_type typ
 	if (intel_huc_is_authenticated(huc, type))
 		return -EEXIST;
 
-	ret = i915_inject_probe_error(gt->i915, -ENXIO);
-	if (ret)
-		goto fail;
-
 	switch (type) {
 	case INTEL_HUC_AUTH_BY_GUC:
 		ret = intel_guc_auth_huc(guc, intel_guc_ggtt_offset(guc, huc->fw.rsa_data));
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
index 4a3493e8d433..bd07c72a66fc 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
@@ -60,10 +60,6 @@ static int __intel_uc_reset_hw(struct intel_uc *uc)
 	int ret;
 	u32 guc_status;
 
-	ret = i915_inject_probe_error(gt->i915, -ENXIO);
-	if (ret)
-		return ret;
-
 	ret = intel_reset_guc(gt);
 	if (ret) {
 		gt_err(gt, "Failed to reset GuC, ret = %d\n", ret);
@@ -220,15 +216,10 @@ static void guc_handle_mmio_msg(struct intel_guc *guc)
 static int guc_enable_communication(struct intel_guc *guc)
 {
 	struct intel_gt *gt = guc_to_gt(guc);
-	struct drm_i915_private *i915 = gt->i915;
 	int ret;
 
 	GEM_BUG_ON(intel_guc_ct_enabled(&guc->ct));
 
-	ret = i915_inject_probe_error(i915, -ENXIO);
-	if (ret)
-		return ret;
-
 	ret = intel_guc_ct_enable(&guc->ct);
 	if (ret)
 		return ret;
@@ -323,9 +314,6 @@ static int __uc_init(struct intel_uc *uc)
 	if (!intel_uc_uses_guc(uc))
 		return 0;
 
-	if (i915_inject_probe_failure(uc_to_gt(uc)->i915))
-		return -ENOMEM;
-
 	ret = intel_guc_init(guc);
 	if (ret)
 		return ret;
@@ -338,6 +326,7 @@ static int __uc_init(struct intel_uc *uc)
 
 	return 0;
 }
+ALLOW_ERROR_INJECTION(__uc_init, ERRNO);
 
 static void __uc_fini(struct intel_uc *uc)
 {
@@ -381,10 +370,6 @@ static int uc_init_wopcm(struct intel_uc *uc)
 	GEM_BUG_ON(!(size & GUC_WOPCM_SIZE_MASK));
 	GEM_BUG_ON(size & ~GUC_WOPCM_SIZE_MASK);
 
-	err = i915_inject_probe_error(gt->i915, -ENXIO);
-	if (err)
-		return err;
-
 	mask = GUC_WOPCM_SIZE_MASK | GUC_WOPCM_SIZE_LOCKED;
 	err = intel_uncore_write_and_verify(uncore, GUC_WOPCM_SIZE, size, mask,
 					    size | GUC_WOPCM_SIZE_LOCKED);
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
index e848a04a80dc..fd04fe892c28 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
@@ -542,43 +542,6 @@ void intel_uc_fw_init_early(struct intel_uc_fw *uc_fw,
 				  INTEL_UC_FIRMWARE_NOT_SUPPORTED);
 }
 
-static void __force_fw_fetch_failures(struct intel_uc_fw *uc_fw, int e)
-{
-	struct drm_i915_private *i915 = __uc_fw_to_gt(uc_fw)->i915;
-	bool user = e == -EINVAL;
-
-	if (i915_inject_probe_error(i915, e)) {
-		/* non-existing blob */
-		uc_fw->file_selected.path = "<invalid>";
-		uc_fw->user_overridden = user;
-	} else if (i915_inject_probe_error(i915, e)) {
-		/* require next major version */
-		uc_fw->file_wanted.ver.major += 1;
-		uc_fw->file_wanted.ver.minor = 0;
-		uc_fw->user_overridden = user;
-	} else if (i915_inject_probe_error(i915, e)) {
-		/* require next minor version */
-		uc_fw->file_wanted.ver.minor += 1;
-		uc_fw->user_overridden = user;
-	} else if (uc_fw->file_wanted.ver.major &&
-		   i915_inject_probe_error(i915, e)) {
-		/* require prev major version */
-		uc_fw->file_wanted.ver.major -= 1;
-		uc_fw->file_wanted.ver.minor = 0;
-		uc_fw->user_overridden = user;
-	} else if (uc_fw->file_wanted.ver.minor &&
-		   i915_inject_probe_error(i915, e)) {
-		/* require prev minor version - hey, this should work! */
-		uc_fw->file_wanted.ver.minor -= 1;
-		uc_fw->user_overridden = user;
-	} else if (user && i915_inject_probe_error(i915, e)) {
-		/* officially unsupported platform */
-		uc_fw->file_wanted.ver.major = 0;
-		uc_fw->file_wanted.ver.minor = 0;
-		uc_fw->user_overridden = true;
-	}
-}
-
 static void uc_unpack_css_version(struct intel_uc_fw_ver *ver, u32 css_value)
 {
 	/* Get version numbers from the CSS header */
@@ -766,7 +729,7 @@ static int guc_check_version_range(struct intel_uc_fw *uc_fw)
 		return -EINVAL;
 	}
 
-	return i915_inject_probe_error(gt->i915, -EINVAL);
+	return 0;
 }
 
 static int check_fw_header(struct intel_gt *gt,
@@ -905,13 +868,6 @@ int intel_uc_fw_fetch(struct intel_uc_fw *uc_fw)
 	GEM_BUG_ON(!gt->wopcm.size);
 	GEM_BUG_ON(!intel_uc_fw_is_enabled(uc_fw));
 
-	err = i915_inject_probe_error(i915, -ENXIO);
-	if (err)
-		goto fail;
-
-	__force_fw_fetch_failures(uc_fw, -EINVAL);
-	__force_fw_fetch_failures(uc_fw, -ESTALE);
-
 	err = try_firmware_load(uc_fw, &fw);
 	memcpy(&file_ideal, &uc_fw->file_wanted, sizeof(file_ideal));
 
@@ -1088,10 +1044,6 @@ static int uc_fw_xfer(struct intel_uc_fw *uc_fw, u32 dst_offset, u32 dma_flags)
 	u64 offset;
 	int ret;
 
-	ret = i915_inject_probe_error(gt->i915, -ETIMEDOUT);
-	if (ret)
-		return ret;
-
 	intel_uncore_forcewake_get(uncore, FORCEWAKE_ALL);
 
 	/* Set the source address for the uCode */
@@ -1155,16 +1107,11 @@ int intel_uc_fw_mark_load_failed(struct intel_uc_fw *uc_fw, int err)
  */
 int intel_uc_fw_upload(struct intel_uc_fw *uc_fw, u32 dst_offset, u32 dma_flags)
 {
-	struct intel_gt *gt = __uc_fw_to_gt(uc_fw);
 	int err;
 
 	/* make sure the status was cleared the last time we reset the uc */
 	GEM_BUG_ON(intel_uc_fw_is_loaded(uc_fw));
 
-	err = i915_inject_probe_error(gt->i915, -ENOEXEC);
-	if (err)
-		return err;
-
 	if (!intel_uc_fw_is_loadable(uc_fw))
 		return -ENOEXEC;
 
@@ -1198,10 +1145,6 @@ static int uc_fw_rsa_data_create(struct intel_uc_fw *uc_fw)
 	void *vaddr;
 	int err;
 
-	err = i915_inject_probe_error(gt->i915, -ENXIO);
-	if (err)
-		return err;
-
 	if (!uc_fw_need_rsa_in_memory(uc_fw))
 		return 0;
 
@@ -1243,6 +1186,7 @@ static int uc_fw_rsa_data_create(struct intel_uc_fw *uc_fw)
 	i915_vma_unpin_and_release(&vma, 0);
 	return err;
 }
+ALLOW_ERROR_INJECTION(uc_fw_rsa_data_create, ERRNO);
 
 static void uc_fw_rsa_data_destroy(struct intel_uc_fw *uc_fw)
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
diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i915_params.c
index 37746dd619fd..34ed82bb1b1a 100644
--- a/drivers/gpu/drm/i915/i915_params.c
+++ b/drivers/gpu/drm/i915/i915_params.c
@@ -110,11 +110,6 @@ i915_param_named_unsafe(huc_firmware_path, charp, 0400,
 i915_param_named_unsafe(gsc_firmware_path, charp, 0400,
 	"GSC firmware path to use instead of the default one");
 
-#if IS_ENABLED(CONFIG_DRM_I915_DEBUG)
-i915_param_named_unsafe(inject_probe_failure, uint, 0400,
-	"Force an error after a number of failure check points (0:disabled (default), N:force failure at the Nth failure check point)");
-#endif
-
 #if IS_ENABLED(CONFIG_DRM_I915_GVT)
 i915_param_named(enable_gvt, bool, 0400,
 	"Enable support for Intel GVT-g graphics virtualization host support(default:false)");
diff --git a/drivers/gpu/drm/i915/i915_params.h b/drivers/gpu/drm/i915/i915_params.h
index 0fbcb5b6d7bf..4d9d4cd3220d 100644
--- a/drivers/gpu/drm/i915/i915_params.h
+++ b/drivers/gpu/drm/i915/i915_params.h
@@ -55,7 +55,6 @@ struct drm_printer;
 	param(bool, memtest, false, 0400) \
 	param(int, mmio_debug, -IS_ENABLED(CONFIG_DRM_I915_DEBUG_MMIO), 0600) \
 	param(unsigned int, reset, 3, 0600) \
-	param(unsigned int, inject_probe_failure, 0, 0) \
 	param(char *, force_probe, CONFIG_DRM_I915_FORCE_PROBE, 0400) \
 	param(unsigned int, request_timeout_ms, CONFIG_DRM_I915_REQUEST_TIMEOUT, CONFIG_DRM_I915_REQUEST_TIMEOUT ? 0600 : 0) \
 	param(unsigned int, lmem_size, 0, 0400) \
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
diff --git a/drivers/gpu/drm/i915/i915_utils.c b/drivers/gpu/drm/i915/i915_utils.c
index 49f7ed413132..cd3fc51ccf83 100644
--- a/drivers/gpu/drm/i915/i915_utils.c
+++ b/drivers/gpu/drm/i915/i915_utils.c
@@ -16,37 +16,9 @@ void add_taint_for_CI(struct drm_i915_private *i915, unsigned int taint)
 	drm_notice(&i915->drm, "CI tainted: %#x by %pS\n",
 		   taint, __builtin_return_address(0));
 
-	/* Failures that occur during fault injection testing are expected */
-	if (!i915_error_injected())
-		__add_taint_for_CI(taint);
+	__add_taint_for_CI(taint);
 }
 
-#if IS_ENABLED(CONFIG_DRM_I915_DEBUG)
-static unsigned int i915_probe_fail_count;
-
-int __i915_inject_probe_error(struct drm_i915_private *i915, int err,
-			      const char *func, int line)
-{
-	if (i915_probe_fail_count >= i915_modparams.inject_probe_failure)
-		return 0;
-
-	if (++i915_probe_fail_count < i915_modparams.inject_probe_failure)
-		return 0;
-
-	drm_info(&i915->drm, "Injecting failure %d at checkpoint %u [%s:%d]\n",
-		 err, i915_modparams.inject_probe_failure, func, line);
-
-	i915_modparams.inject_probe_failure = 0;
-	return err;
-}
-
-bool i915_error_injected(void)
-{
-	return i915_probe_fail_count && !i915_modparams.inject_probe_failure;
-}
-
-#endif
-
 bool i915_vtd_active(struct drm_i915_private *i915)
 {
 	if (device_iommu_mapped(i915->drm.dev))
diff --git a/drivers/gpu/drm/i915/i915_utils.h b/drivers/gpu/drm/i915/i915_utils.h
index a0c892e4c40d..5f01a9ca07c2 100644
--- a/drivers/gpu/drm/i915/i915_utils.h
+++ b/drivers/gpu/drm/i915/i915_utils.h
@@ -41,28 +41,8 @@ struct drm_i915_private;
 #define MISSING_CASE(x) WARN(1, "Missing case (%s == %ld)\n", \
 			     __stringify(x), (long)(x))
 
-#if IS_ENABLED(CONFIG_DRM_I915_DEBUG)
-
-int __i915_inject_probe_error(struct drm_i915_private *i915, int err,
-			      const char *func, int line);
-#define i915_inject_probe_error(_i915, _err) \
-	__i915_inject_probe_error((_i915), (_err), __func__, __LINE__)
-bool i915_error_injected(void);
-
-#else
-
-#define i915_inject_probe_error(i915, e) ({ BUILD_BUG_ON_INVALID(i915); 0; })
-#define i915_error_injected() false
-
-#endif
-
-#define i915_inject_probe_failure(i915) i915_inject_probe_error((i915), -ENODEV)
-
 #define i915_probe_error(i915, fmt, ...) ({ \
-	if (i915_error_injected()) \
-		drm_dbg(&(i915)->drm, fmt, ##__VA_ARGS__); \
-	else \
-		drm_err(&(i915)->drm, fmt, ##__VA_ARGS__); \
+	drm_err(&(i915)->drm, fmt, ##__VA_ARGS__); \
 })
 
 #define fetch_and_zero(ptr) ({						\
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
diff --git a/drivers/gpu/drm/xe/display/ext/i915_utils.c b/drivers/gpu/drm/xe/display/ext/i915_utils.c
index 1421c2a7b64d..111f03e542bc 100644
--- a/drivers/gpu/drm/xe/display/ext/i915_utils.c
+++ b/drivers/gpu/drm/xe/display/ext/i915_utils.c
@@ -14,14 +14,3 @@ bool i915_vtd_active(struct drm_i915_private *i915)
 	/* Running as a guest, we assume the host is enforcing VT'd */
 	return i915_run_as_guest();
 }
-
-#if IS_ENABLED(CONFIG_DRM_I915_DEBUG)
-
-/* i915 specific, just put here for shutting it up */
-int __i915_inject_probe_error(struct drm_i915_private *i915, int err,
-			      const char *func, int line)
-{
-	return 0;
-}
-
-#endif
-- 
2.43.0

