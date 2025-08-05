Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 47F7EB1B6BF
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Aug 2025 16:40:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DADB910E699;
	Tue,  5 Aug 2025 14:40:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; secure) header.d=estudante.ufscar.br header.i=@estudante.ufscar.br header.b="qztX64wr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com
 [209.85.210.179])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D00B810E699
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Aug 2025 14:40:23 +0000 (UTC)
Received: by mail-pf1-f179.google.com with SMTP id
 d2e1a72fcca58-7682560a2f2so5715719b3a.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 05 Aug 2025 07:40:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=estudante.ufscar.br; s=google; t=1754404823; x=1755009623;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=fajDbgtbM30YnMRClxsg/vJjUrHClJN7njp9m2+W2qI=;
 b=qztX64wr3O6BNGaAZonOWx24NbAQ/PJhRb/g/S1Z0Ru90SB/3ScVtJg1vLKg3jXvIn
 sVVuXP3s0hn02lBbxyV+a2oOhllrRQgu4PRQK+l6sKo2LcbBSZ5DsfglFdCzSbWdp8S4
 lR6CPxhHiN3RS9Mxy8CKk89ssPJ0mOok2YFy4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1754404823; x=1755009623;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=fajDbgtbM30YnMRClxsg/vJjUrHClJN7njp9m2+W2qI=;
 b=D3B0Yy6ocu+r90BafTdIC0O8D8zdLx68Ou1QjE9m6WA7ElZrItoCZDXVcwV/1bcRLu
 6HxHZzZ/YiwrfbdzFUuVPeRcmO9axynxgU/ifgfN5pGy1BsuErESLgYbVkSe2YSnKeFP
 k70m1qTJ2ogswR32JeSKq3td6PCCe/ga9jmr7TrGjbkUEPhSnAcmqBtxMmF54toW3j6P
 NUvR6yRWypkioKdhupiL6Z9ZuIffcW7bXwITrETeglEN/UIOxONy9f9SE+4/F3+hwR/2
 YCTeIrbV06ZAEgOJ4m2xzrRli2P4/NvR6WnhHJrOSte9IL/CZ6DYh7yJx70VI4saFJJI
 81yg==
X-Gm-Message-State: AOJu0YwJBMvVZSwuWGYvXLULk7irir2PDRzyk7Ck+o5XLTibayKRrKBY
 +WO477V2nUO12PzKsbP4pzeEQ9YlRUUlUFBsFVQC4ajSsbRDqZn8GxpPdij1eO4tRQA=
X-Gm-Gg: ASbGncuiCuEXXDyWLYh90drGtb+eI4GYN6yZvlVICEcmUKXCsQ6UmVQBOM/pPjHu9JW
 XvofY121x+hpbcdmJHSJqfPWu/rwkp2KF8O0RYpyya57aIgslxGzlCH6DOl7i6+tSJjrCfqBOXs
 d23jBpoV4mpYlMhysu5A+olNKY40xUVND3RckONmHcNaXJnvzDtX1PZET2Yzv9ydAtJWhjeCjSL
 NI4QCG23KTYI+1zLKKIyDl3yLC/MM39PYgKHx0IKBq4WKy6QLMUdgwu4NkGO/0UflkNdYYVtI6g
 QeZNyBuOcvf5KI+99b82gqAVFfyG7ef6oOICZgf3o4ARxOPfGmwgmQFLTaHzpjuHFZwYPOcWuOe
 pd/xalkB1HesfMpUBe2rekRExZXOsr1w5ptGr1j2p6aw=
X-Google-Smtp-Source: AGHT+IFLnF+Z7qLpFWIVr4xJPhkhWhmWgKjpGk7seYclP8Kw873twWpN26Nae3K2hpukl+/5VZp2OA==
X-Received: by 2002:a05:6a00:1a15:b0:746:195b:bf1c with SMTP id
 d2e1a72fcca58-76c272b5efemr50616b3a.10.1754404823252; 
 Tue, 05 Aug 2025 07:40:23 -0700 (PDT)
Received: from localhost.localdomain ([2804:14c:4a5:8ac9::1a55])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-76bf1c6d5dcsm7899757b3a.74.2025.08.05.07.40.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Aug 2025 07:40:22 -0700 (PDT)
From: Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>
To: rodrigo.vivi@intel.com, joonas.lahtinen@linux.intel.com,
 tursulin@ursulin.net, jani.nikula@linux.intel.com, airlied@gmail.com,
 simona@ffwll.ch
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 mairacanal@riseup.net, Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>
Subject: [PATCH 8/9] drm/i915: Remove unused struct_mutex from drm_i915_private
Date: Tue,  5 Aug 2025 11:39:03 -0300
Message-ID: <20250805143908.32343-9-luiz.mello@estudante.ufscar.br>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250805143908.32343-1-luiz.mello@estudante.ufscar.br>
References: <20250805143908.32343-1-luiz.mello@estudante.ufscar.br>
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
the driver. This patch removes it completely to clean-up unused code and
avoid confusion.

Signed-off-by: Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>
---
 drivers/gpu/drm/i915/i915_driver.c | 2 --
 drivers/gpu/drm/i915/i915_drv.h    | 8 --------
 2 files changed, 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 46b13ab113b0..273bc43468a0 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -238,7 +238,6 @@ static int i915_driver_early_probe(struct drm_i915_private *dev_priv)
 
 	intel_sbi_init(dev_priv);
 	vlv_iosf_sb_init(dev_priv);
-	mutex_init(&dev_priv->struct_mutex);
 	mutex_init(&dev_priv->sb_lock);
 
 	i915_memcpy_init_early(dev_priv);
@@ -297,7 +296,6 @@ static void i915_driver_late_release(struct drm_i915_private *dev_priv)
 	i915_workqueues_cleanup(dev_priv);
 
 	mutex_destroy(&dev_priv->sb_lock);
-	mutex_destroy(&dev_priv->struct_mutex);
 	vlv_iosf_sb_fini(dev_priv);
 	intel_sbi_fini(dev_priv);
 
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 2135ced0d93d..d28e27c08070 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -223,14 +223,6 @@ struct drm_i915_private {
 
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

