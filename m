Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 34EB5B24B1E
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Aug 2025 15:51:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C446610E728;
	Wed, 13 Aug 2025 13:51:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; secure) header.d=estudante.ufscar.br header.i=@estudante.ufscar.br header.b="oSerxNgs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com
 [209.85.214.170])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED84010E728
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Aug 2025 13:51:26 +0000 (UTC)
Received: by mail-pl1-f170.google.com with SMTP id
 d9443c01a7336-240b3335c20so42934595ad.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Aug 2025 06:51:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=estudante.ufscar.br; s=google; t=1755093086; x=1755697886;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=GLfVPUa0a/XKPWyHgMZmGFddaXL+XDxKy7ccOh+PzIU=;
 b=oSerxNgse9hoJzpmnWNhlt4xxx4FGkHcBxY/HyJ2Hqzn/Cqz2YINlCSpN+K7JG2E+F
 uH8KT1z7Dihxgb2KpvEly6Q/3OMiEy54qqcrItOOZQ5JaPqxtKQNndIVGxm8E5IGO/xP
 ygCaVcRdndlI1d31Wp99OfRVOi3lsq+cPvRIA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1755093086; x=1755697886;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=GLfVPUa0a/XKPWyHgMZmGFddaXL+XDxKy7ccOh+PzIU=;
 b=e93kamXDI9KdTaSRLecTF7JZUauY21PeKYs5Z73c9dG/SuaWsPqEYAHk8v8ySD43J3
 UDVFxgNk1jkJ9z1NXhCvactLRgFTJeTO3PgzWQtssW7gsCeNl7YHkpg/WN+OySLKa7kC
 H7nT0qXJIdxTiU+oTD2CPBRowemfnWH4ifL/lcR/q3fFNHiRr3yh7iJ5Scxr+cAF+cEa
 qAGwaKuR0tfwTZS7Qgam4euY8qZP4Ldc4+8sJ2IijpO23GMp3HRR6B5Vi2iv3IjIK/Tf
 XseIrPP4+zJ0iaLq6sBgZrUeD9My76DSH/hhY8DJV8e6ek6nz+wZlViif/BHbOBIp/76
 1qkw==
X-Gm-Message-State: AOJu0YzNljjyFRPFLEPs6AzqS9OKXVuUC980WHzyixCGEB357zDigUos
 B6GihN1PVSDcU7cCbEaLdGOg8EKtMEartCvb87oy0xo+uO4GzWBcgdMPRA+/AYEe23cj8gh6Oeq
 QmktywqOGzg==
X-Gm-Gg: ASbGncsgZ4oygPJg3vpN90q3AZ5kb89YO4o/5MYWkVrHz/nc+YjTwsb66jyMMVTzmZv
 xTWmX2sHYlHARfZvFFRqbYbnxcGjL2D24Z9vbXOZWMZYx5yT/7WXsDe0wYZOrJ7PhIYfdsC3sBH
 Iv7eti+KVQ2HWt+eClJ/JbyEIXmpaopEtMqqvo9nOaH/ogm5ADU7Eyx7DI2pHKZwe1L3VAoGAEc
 R0ywVINP6bL1yHZofjxhoJaU4IJ2gO7oZSyTrNyAWJsMko3FUBTO8C+Zbji+EqpwinuOyALCcwV
 jWA49r9pkfOuOwfhcyoFy0GGOhA1UaaxfYzfb6Q1HgCPEnx/RXmISkxxQphoMH+D8w/KI5VgpJT
 QH4vKL9SFdk0t4qSwZ8hGT1vTKCMDRP6p
X-Google-Smtp-Source: AGHT+IGAkayIz8t0CZBjk7wfb2pPKlgakxlKu3zTR8lWijx7IvX/y3nldQek3T8RM0sh4ORFCUarWA==
X-Received: by 2002:a17:902:c409:b0:240:10dc:b7c9 with SMTP id
 d9443c01a7336-2430d10e3d7mr54335745ad.9.1755093086515; 
 Wed, 13 Aug 2025 06:51:26 -0700 (PDT)
Received: from localhost.localdomain ([2804:14c:4a5:8ac9::1709])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-241e8aaf855sm326965955ad.168.2025.08.13.06.51.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Aug 2025 06:51:26 -0700 (PDT)
From: Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>
To: rodrigo.vivi@intel.com, jani.nikula@linux.intel.com,
 joonas.lahtinen@linux.intel.com, simona@ffwll.ch, airlied@gmail.com,
 tursulin@ursulin.net
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 mairacanal@riseup.net, Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>
Subject: [PATCH 8/9 v3] drm/i915: Drop unused struct_mutex from
 drm_i915_private
Date: Wed, 13 Aug 2025 10:50:32 -0300
Message-ID: <20250813135035.144762-9-luiz.mello@estudante.ufscar.br>
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

The struct_mutex field in drm_i915_private is no longer used anywhere in
the driver. This patch removes it completely to clean up unused code and
avoid confusion.

Signed-off-by: Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c | 2 --
 1 file changed, 2 deletions(-)

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
 
-- 
2.50.1

