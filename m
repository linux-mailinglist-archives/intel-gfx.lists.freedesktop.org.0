Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1F9FB1DC43
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Aug 2025 19:03:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B4E010E89A;
	Thu,  7 Aug 2025 17:03:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; secure) header.d=estudante.ufscar.br header.i=@estudante.ufscar.br header.b="w1TISj8S";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com
 [209.85.214.180])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1E9510E89A
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Aug 2025 17:03:51 +0000 (UTC)
Received: by mail-pl1-f180.google.com with SMTP id
 d9443c01a7336-24063eac495so10406265ad.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 07 Aug 2025 10:03:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=estudante.ufscar.br; s=google; t=1754586231; x=1755191031;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=p2xuymiBz9zDhJ/J15SWyQyrOAuhc3eaf/Fda6FdMCk=;
 b=w1TISj8S4LDgFaxJcc043m37LtAhoSEb50US4Gtij8syxelV9wyXrIxzITOo/VsRXZ
 nvTQBDsmYRjroWcbycn8DP+voKJk59HfXJqMoRS2uG9pkSqrlPf0IkBf2XKYa+mK2uQS
 Ksyj4bU3ozifgfN5MIfbR2BfdvjzJC/0tjj0o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1754586231; x=1755191031;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=p2xuymiBz9zDhJ/J15SWyQyrOAuhc3eaf/Fda6FdMCk=;
 b=wvA1JF7lu4A2FBimMtNQCiZ90sOpZVqO+1cuwz4HLASgdRsZHs/mt3ThfUaL+7wlLW
 AywEGfmMLk/aKs6cwsEPgPh2MINwpvZvR24NiA8w9yHP5V/hMyVaSPbhA3w0Lo5ISej1
 goy5qspYF22CKwNGcH6qMUISx66bTSKCvzsqsyf0I8vaY3//cH8QDw93rsN9WaVtL+Jz
 Ctjff+leScCtcrS2H8GQgKYWUUoAyUOyb1+pf19CR+6ZlFeStNuA/WaMKiylsfVeMXgc
 QyAUSjdLwl8EnPV6dyu1IrrLMZHCugmmlS3FSPY53f2y2nqAIyuGjyqt8sNc2knOgYGq
 LDnw==
X-Gm-Message-State: AOJu0Ywfuza+xtQpr0cai+mEulHwwdmao/c/f9go47J8R63R2bAcQrMR
 XTb5OFc0qcugh+mLdwItvoeNqBCVSf3RWqE+UUe9054YfgD7oWVaGHo7UGbWmLP097E=
X-Gm-Gg: ASbGncs7pbWwyOZzOheaCd9mzmxqAJoD7n3XfUamWLoR+YpRaWgQfkISqoah9bWNX4B
 1paAND3jOjQDvGLRpp/fsfCJl/fc1/LNNJGpyAeF56VY19JV0RBR8nPvg5TEhqPIl14b+GFlySD
 eacLKZQg2oW1UQnA1cFAoEWej0NAUNTBJc0XIMt0Qmu18fSVBWfsNGlGxl2TtfuDAOBmTbHanuU
 0dfMGepE2Y4LicrJyctl0SA81O2/avwCMt7FqBrdJFrUUdOwgkxDRmHp1gCHhi+75J55uYOdbO7
 vvX4OTkfpEfMV5DD0A0jYUlmtO+0VFc88uC22ppLnd8RNo9R4DDOMaXOE1zYqPg/X7oYtBDh2ve
 Ft4GsPchhdbSI5h8Mhcgf4VogO2J5zfsO
X-Google-Smtp-Source: AGHT+IGwRBuGDTbeGTzwyG5b2WmBceJkrYjGEdZqKwwOZ6Kpy6/3GldZk8RdkTcNIJ/lgTeRZX+68g==
X-Received: by 2002:a17:902:ce8b:b0:23f:c005:eab0 with SMTP id
 d9443c01a7336-242a0bb69cemr117062955ad.40.1754586229736; 
 Thu, 07 Aug 2025 10:03:49 -0700 (PDT)
Received: from localhost.localdomain ([2804:14c:4a5:8ac9::1a55])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-241d1ef7c30sm188804875ad.37.2025.08.07.10.03.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Aug 2025 10:03:49 -0700 (PDT)
From: Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>
To: rodrigo.vivi@intel.com, joonas.lahtinen@linux.intel.com,
 tursulin@ursulin.net, jani.nikula@linux.intel.com, airlied@gmail.com,
 simona@ffwll.ch
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 mairacanal@riseup.net, Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>
Subject: [PATCH 8/9 v2] drm/i915: Remove unused struct_mutex from
 drm_i915_private
Date: Thu,  7 Aug 2025 14:02:07 -0300
Message-ID: <20250807170212.285385-9-luiz.mello@estudante.ufscar.br>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250807170212.285385-1-luiz.mello@estudante.ufscar.br>
References: <20250807170212.285385-1-luiz.mello@estudante.ufscar.br>
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

The struct_mutex field in drm_i915_private is no longer used anywhere in
the driver. This patch removes it completely to clean up unused code and
avoid confusion.

Signed-off-by: Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>
---
 drivers/gpu/drm/i915/i915_driver.c | 2 --
 drivers/gpu/drm/i915/i915_drv.h    | 8 --------
 2 files changed, 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index d1559fd8ad3d..c6263c6d3384 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -233,7 +233,6 @@ static int i915_driver_early_probe(struct drm_i915_private *dev_priv)
 
 	intel_sbi_init(display);
 	vlv_iosf_sb_init(dev_priv);
-	mutex_init(&dev_priv->struct_mutex);
 	mutex_init(&dev_priv->sb_lock);
 
 	i915_memcpy_init_early(dev_priv);
@@ -292,7 +291,6 @@ static void i915_driver_late_release(struct drm_i915_private *dev_priv)
 	i915_workqueues_cleanup(dev_priv);
 
 	mutex_destroy(&dev_priv->sb_lock);
-	mutex_destroy(&dev_priv->struct_mutex);
 	vlv_iosf_sb_fini(dev_priv);
 	intel_sbi_fini(display);
 
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index e8cb94962482..5a8ac1a52849 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -221,14 +221,6 @@ struct drm_i915_private {
 
 	bool irqs_enabled;
 
-	/*
-	 * Currently, struct_mutex is only used by the i915 driver as a replacement
-	 * for BKL. 
-	 * 
-	 * For this reason, it is no longer part of struct drm_device.
-	*/
-	struct mutex struct_mutex;
-
 	/* LPT/WPT IOSF sideband protection */
 	struct mutex sbi_lock;
 
-- 
2.50.1

