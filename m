Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B64CB0A847
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Jul 2025 18:17:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED36A10E9FE;
	Fri, 18 Jul 2025 16:17:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; secure) header.d=estudante.ufscar.br header.i=@estudante.ufscar.br header.b="owJSytm3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com
 [209.85.222.176])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4585610E9FC
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Jul 2025 16:17:33 +0000 (UTC)
Received: by mail-qk1-f176.google.com with SMTP id
 af79cd13be357-7d95b08634fso133346085a.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Jul 2025 09:17:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=estudante.ufscar.br; s=google; t=1752855452; x=1753460252;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=/ZJAr01vEkmdKcFLK4S5+N5ofw3RRu4km5B0NpQHBuQ=;
 b=owJSytm3aQu64q8Da9x7xnqazC9VqrMpr8c05eEOzFWu0M9Mn844zGEFFzNC0BjVOe
 d631K/PBzIQ0xs/Oa3SbkIjmg4K4wJjX0cGESv8nFz6wEBbD9Vl4Ujz86l9mtHqtPiRX
 BKXmWx2AL71FScLF38Pkn1havpwP4oAKEz5fU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1752855452; x=1753460252;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=/ZJAr01vEkmdKcFLK4S5+N5ofw3RRu4km5B0NpQHBuQ=;
 b=ZR+QByTNaFQCCV+K21VfKwOtvC+SVMI/KJfQ6PAirMW9NIcirJcjfHtck3f7g20z4S
 FE71hsrcY4j4T40ljHHMH/h2nBxzCkoQ8msnM/Iu35O7ytxGmBb6Bi0VbzbyCqeAZnOT
 kvo/EAbqwJonhu7yZI5mBdtcbb36NMmrD950DTag3Ez7nv/55aC+5z3YDQhhm/fC3Wjl
 1m2LKpTom1f+6iXzO7UImvq3VuMRwY2qK/cPoVGTHr97NDGXbbalfUSKhgPlg0uVDvJd
 I5o5If0YmhQV3e1HMNjuCsVjxCPb2t5s5lZQLDIwZYq9DzMCwg+m/t0GmPVfCpmIQcYb
 CqbQ==
X-Gm-Message-State: AOJu0YxohNy7qutP9ST+i7kHta6MHbcWQwXQu6n95MaGtJSvVMYMeETT
 NMc2UeEg1+Wkgyxt+SoXYrc2jRWZb1db7HHz0KxKh+kTf4smizRyXAj1RpxA6XweVXY=
X-Gm-Gg: ASbGncvuSy0KdJ/G8q80Fgj/b3QQdfi0V5SJR955OcYMS3TiG0HUiUe2gyheG8+E8ts
 20CSRMuZ5qQmGSQArEvf7bBOlxlO84oIICeunMuP4cHqTZxRFzqolNFYQdPlXyK50lxykOjYp7Z
 fz2QHTmCfiMt/5jD6puPKlym0YFFVVebvm8eLSfGBVXqkUYIjEjYq4nPfQxeAnw3LukV4DRKVIS
 NC9/5IphoKRAyEGlOg4ioDG1cG62jK0Lqz2eFOT80KdfK4Q4pNF83i4wcv+7nf3mAOJ4eXGSjBc
 Q5ha4TXx4tZjnBYchnmF+PsxEo6xhfCiM9CK7YrsipsFoE33Fk8e3XunWz0Udlz5ydCE/+DI09u
 jVN6cHc0hKBQehc/cAcWHQs0dQEOrolCu2PQ6AgDFtZqsd9e6+vfwsGdevv6PHUw=
X-Google-Smtp-Source: AGHT+IHu+Nl/YESfBVlH8WyKKX0Gl07Nau3uTqsG7jG0fDyglwA/Py9MqCyV5BmP0ZQezCzy+Uubrg==
X-Received: by 2002:a05:620a:45a4:b0:7e3:57ea:c6d7 with SMTP id
 af79cd13be357-7e357eac6ddmr473613285a.15.1752855451991; 
 Fri, 18 Jul 2025 09:17:31 -0700 (PDT)
Received: from localhost.localdomain ([2804:2894:c100:61f6:9607:54a9:55b1:8d3])
 by smtp.gmail.com with ESMTPSA id
 a1e0cc1a2514c-88b0ad603easm677844241.16.2025.07.18.09.17.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Jul 2025 09:17:31 -0700 (PDT)
From: Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>
To: airlied@gmail.com,
	jani.nikula@linux.intel.com
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 mairacanal@riseup.net, Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>
Subject: [PATCH] drm/i915: move struct_mutex from drm_device to
 drm_i915_private
Date: Fri, 18 Jul 2025 13:17:25 -0300
Message-ID: <20250718161725.289944-1-luiz.mello@estudante.ufscar.br>
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

i915 is the only remaining user of struct_mutex lock.

Move it from drm_device to drm_i915_private so it is only used within
the i915 driver.

Signed-off-by: Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_log.c | 4 ++--
 drivers/gpu/drm/i915/i915_drv.h            | 8 ++++++++
 2 files changed, 10 insertions(+), 2 deletions(-)

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
 
-- 
2.49.0

