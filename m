Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF46CB0A87C
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Jul 2025 18:34:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3713210EA0C;
	Fri, 18 Jul 2025 16:34:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; secure) header.d=estudante.ufscar.br header.i=@estudante.ufscar.br header.b="lLGLlvOc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ua1-f41.google.com (mail-ua1-f41.google.com
 [209.85.222.41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69F4F10EA0C
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Jul 2025 16:34:23 +0000 (UTC)
Received: by mail-ua1-f41.google.com with SMTP id
 a1e0cc1a2514c-886c8de5d90so1136182241.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Jul 2025 09:34:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=estudante.ufscar.br; s=google; t=1752856462; x=1753461262;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=+Jw4cD5ienRYpAlgcPz02KR5nIM7xo4Tb+Cfzl+BIW8=;
 b=lLGLlvOchWJArABuEd4r5AvxwYSMhROBdXqoEYDl0KaFiVvr6STBbCkG+bi5+f4pme
 POtAzZUAHLDda4EtcKAG4LTE24ftNCZ0z6Q3UKr6YsNeNXIZsnJELJbDRSH6TIy5DUjt
 FY/SzT/a9XkSWYqn5BUHUyl8OmnfzCNXW+UFI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1752856462; x=1753461262;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=+Jw4cD5ienRYpAlgcPz02KR5nIM7xo4Tb+Cfzl+BIW8=;
 b=fF9k8LiNGjR1N9fNf6uk98ITKPLHxUVZZ9D7xZsb26bXGOKYr2DI3NRzYcnCf+Kut7
 XuUrP3clHr0MZnXHdrzasHkH1DGsspGYHHKVE/TR6oZbNZeYa7ATTEVzvppUYL5LtaaT
 iBJM34fRhGvVKmwPrRNDG7O89PxbUgU+zzzSP74T+TXHqTCfighjbI9Rp96S+cf7WwAU
 eiBq6ySDY2zHVzPtkyfM3/iiVUdm9IA4CY4d2rHle6sQ2zZ4UDAQiWkbxuh/YcEpHv/h
 PK7Iq+0PXkPJuZKK+tVl7Un2p2y8cjK5JwVIQ3eLj8nJ4ZDU8e8Zub3vlWrV6y/A/iwN
 rt7w==
X-Gm-Message-State: AOJu0YwagxTQeFtnVurO5v5CgJXu1KUQNPMR4inJkhxU0fHG/aRB0lm8
 qH8cQAwIdpa/bjVjFjMg3vlcDWDHuygSjNnwmIxhT1OMBFaX8RKa7REocdU+0JuisXk=
X-Gm-Gg: ASbGncvPS/SJUOq8aHXVF3XEOAqpqLwzYLipKh39J7l616xmon84Z4ODxvN/Nq93JTq
 qTsszzCcHJsX1//KJY2a7ql0mxRrVUuWUy+50Qwkj4TBxNYd/rBiB9KwmO7DGvGcO5IcaxaP+L+
 ENYl7KghwFcGRzKlJrvAYLzHOZzoAhDRlY0SWatlwgbABTyFbd/1FyQsA8uuBHuzyLOmwacti/z
 X0rbLBQD8ODd9BSD/ao15/I8mQ73c9nFkKJ/gqTOg7eKrzHPMjHKBRf8kXZO5L0WwD2s0or+v00
 5ePM9bcMuTlss4j1YgG7fxEWp/rNyt/B8wt4B+aMiXyZ640suLA/448e/GwaodJVVxxVinp1b4O
 33Yh1hrkPq+ivu0IvG9xlhnv45njfHUhn7bRmqeWTX3mgO/hwAbJf
X-Google-Smtp-Source: AGHT+IErqScymnZiT55Vrn2hztIgboOZgnnl+lMHooKzbNzjAGu84uPUafAubcOLZgs6B0DzcHa3xA==
X-Received: by 2002:a05:6102:1613:b0:4f6:25ca:e797 with SMTP id
 ada2fe7eead31-4f95f59130amr5739846137.25.1752856462070; 
 Fri, 18 Jul 2025 09:34:22 -0700 (PDT)
Received: from localhost.localdomain ([2804:2894:c100:61f6:9607:54a9:55b1:8d3])
 by smtp.gmail.com with ESMTPSA id
 a1e0cc1a2514c-88b0ac45574sm645545241.9.2025.07.18.09.34.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Jul 2025 09:34:21 -0700 (PDT)
From: Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>
To: airlied@gmail.com,
	jani.nikula@linux.intel.com
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 mairacanal@riseup.net, Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>
Subject: [PATCH] [PATCH v2] drm/i915: move struct_mutex from drm_device to
 drm_i915_private
Date: Fri, 18 Jul 2025 13:34:13 -0300
Message-ID: <20250718163413.291909-1-luiz.mello@estudante.ufscar.br>
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
 drivers/gpu/drm/i915/gt/uc/intel_guc_log.c |  4 ++--
 drivers/gpu/drm/i915/i915_drv.h            |  8 ++++++++
 include/drm/drm_device.h                   | 10 ----------
 3 files changed, 10 insertions(+), 12 deletions(-)

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
index d0e1980dcba2..c585569b6036 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -224,6 +224,14 @@ struct drm_i915_private {
 
 	bool irqs_enabled;
 
+	/*
+	 * Currently, struct_mutex is only used by the i915 driver as a replacement
+	 * for BLK. 
+	 * 
+	 * For this reason, it is no longer part of struct drm_device.
+	*/
+	struct mutex struct_mutex;
+
 	/* LPT/WPT IOSF sideband protection */
 	struct mutex sbi_lock;
 
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

