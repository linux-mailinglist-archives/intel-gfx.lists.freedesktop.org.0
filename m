Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 176CDB48D27
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Sep 2025 14:16:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E0A610E4EF;
	Mon,  8 Sep 2025 12:16:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; secure) header.d=estudante.ufscar.br header.i=@estudante.ufscar.br header.b="XjmHTIna";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com
 [209.85.210.169])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2A3710E4F2
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Sep 2025 12:16:08 +0000 (UTC)
Received: by mail-pf1-f169.google.com with SMTP id
 d2e1a72fcca58-76e2ea933b7so3664142b3a.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 08 Sep 2025 05:16:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=estudante.ufscar.br; s=google; t=1757333768; x=1757938568;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=mZEHlE8H0Ruaic32mxMACA8AR7oea0y3sfBmbxXre+I=;
 b=XjmHTInal1QpwX5Ros0zm38mDFFUApNWApP1MatpFLmenkw+vp5uvVM5rX/fA2ITLu
 aWFyh1bT0/fcUJ4B0CAunK57jdy8o3sHoG8x4jKuZ4Fn7pYgpdaaZeF+DcMX6FBI50aQ
 RzzQrA3r5p60Vzx8OlRk+UJ7dEfm7eiax5ICI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1757333768; x=1757938568;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=mZEHlE8H0Ruaic32mxMACA8AR7oea0y3sfBmbxXre+I=;
 b=opziZBZa0zE2e29HBkuH6ZDfoOCvIL+OS08nblTttubLHQQmQ2esQhkngRTkSKHM5o
 scPnySUaxtc6pIg088Gs+OxFj/33h7hEFVEi153hMPEQvxdIMBJUZg7YcWXOrCaNrx0b
 WTV950TfaCgjLcB5JnOhKC43aGqVttFYPdWt6oiKcHuVNt/CY9MXyivQEwMHtrkOapiX
 6mEEHMLfmlH+a96O16qTWJfIQiZ4SceyxU5a45fTlpQz1uNdKrRgzkBP3B8oZL30aUNx
 ZPwSTVQlxXqQaMoCs5zf6gCEbD7ghR7oV3rVH3Ml9nHA+ILC57+v4IMZKXZqDfC9K8K1
 SphA==
X-Gm-Message-State: AOJu0YwEZ3aWjsyvAjIShgiXOIj2kDyB22bBp+IIhdnyGZEGTLGiqVS0
 nCSy1FxwkDDz9e3t+x1zxJjdtegbiQWJhj9iDUPO5jVz+Z8WSrpR2vj5gHOnjNL0vQw=
X-Gm-Gg: ASbGncsPLyfKdo/Ah8fkeGUH7QGDwrfOVgCaktFbYXuOrzaxkSfqxj2VNqAFn46rmsY
 cdCXHF2z3eSv40uKRnPXaEOB57mLxrNsvyeZrpvxUKHM3InMAI0aSlvL1Dr0wPmljr4sRPGhpvV
 fpVSzxqCqZInrh3bZNs8leGJn1ZyfGLxdghFnzymtf75lphpoAMhah4yILL0eUcB/8F+qjTFbg2
 UWSXbSSginld5bqv7ikG0Jjabc7Nf9rUqFAlU9ujw7NaCFU2+fZbU9Q0hH4pcLICgtcj9AWs5XP
 RQBs7MDmTqxQY1xQdLPJvjlrHiIS4yQZUvy8TdYygs9wm1QUMwJeB8OdcboEFDeXpsE01EVQ5Xg
 fE21alRNdAgJAB/BxysNJKOjKfN7naSsU
X-Google-Smtp-Source: AGHT+IGQja/ykL+mfQY0J13Vfp6B9b+4CT2qJ7CAn6ocP7Rk27GdVOLgvF9Ndb/zp2IGArGfhTvJOQ==
X-Received: by 2002:a05:6a00:2da5:b0:772:490f:e31e with SMTP id
 d2e1a72fcca58-7742e380b10mr8748148b3a.3.1757333768131; 
 Mon, 08 Sep 2025 05:16:08 -0700 (PDT)
Received: from localhost.localdomain ([2804:14c:4a5:943d::1709])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-772306a1870sm28345188b3a.75.2025.09.08.05.16.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Sep 2025 05:16:07 -0700 (PDT)
From: Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>
To: rodrigo.vivi@intel.com, jani.nikula@linux.intel.com,
 joonas.lahtinen@linux.intel.com, simona@ffwll.ch, airlied@gmail.com,
 tursulin@ursulin.net
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 mairacanal@riseup.net, Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>
Subject: [PATCH 8/9 v4] drm/i915: Drop unused struct_mutex from
 drm_i915_private
Date: Mon,  8 Sep 2025 09:15:16 -0400
Message-ID: <20250908131518.36625-9-luiz.mello@estudante.ufscar.br>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250908131518.36625-1-luiz.mello@estudante.ufscar.br>
References: <20250908131518.36625-1-luiz.mello@estudante.ufscar.br>
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
index 63fef3873a38..5a8ac1a52849 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -221,14 +221,6 @@ struct drm_i915_private {
 
 	bool irqs_enabled;
 
-	/*
-	 * Currently, struct_mutex is only used by the i915 driver as a replacement
-	 * for BKL.
-	 *
-	 * For this reason, it is no longer part of struct drm_device.
-	 */
-	struct mutex struct_mutex;
-
 	/* LPT/WPT IOSF sideband protection */
 	struct mutex sbi_lock;
 
-- 
2.50.1

