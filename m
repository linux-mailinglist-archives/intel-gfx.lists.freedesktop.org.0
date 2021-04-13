Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4634D35DBB4
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Apr 2021 11:49:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9598E6E364;
	Tue, 13 Apr 2021 09:49:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com
 [IPv6:2a00:1450:4864:20::433])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A84F56E3D3
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Apr 2021 09:49:21 +0000 (UTC)
Received: by mail-wr1-x433.google.com with SMTP id w4so12034719wrt.5
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Apr 2021 02:49:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=RphiA/VGkxJpy+mzsz7ElRrDbay++4IiWnsjaQ6KUhU=;
 b=CQFUCK69d4uUzPRiNlz8+sTbF9AYcdh9v36SA73CXTKBLhiTf3tLJU1wAe+JFdCYTn
 NMDkXoGpRd1G1st4QPfhEr1Kec3QATiimxyaqi2M34OUpjhzvQI5BimMuuJl+C/p9poY
 GSQPPGzxtvIah5oc6ccAD98MeQqn543Nf3Okg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=RphiA/VGkxJpy+mzsz7ElRrDbay++4IiWnsjaQ6KUhU=;
 b=tEfVbBOhZCaChDz9Q3eED8NDTM6Ebd9SHFrldsWF0gZmHyWT2rBXQlW0jCebJf+mQ3
 tkJBtTOAeoczylMezHXfoKO3uNIaMmGLI338DiZbckjwsuM5KCBDWWffFGuMIRXEGW1N
 xjwPIjRwEMmzbViol/0DZDjuF+rGRAdEeanaJ7QDMxXiT6IRu2UASzH5VdfB7h8RahYY
 Fura1pII7IT6OugnthfMGa1I19lwZXUX1cmnNfCekhZF1zXgxd3z5gER/CcM7cEzhEBq
 P5BUz0EVI1MPWAmVefmjhHLd1+PqR/kscSEZ9C+hc5g2rCQgaMBNMZ2jOOYAKJCgaaIy
 NyuQ==
X-Gm-Message-State: AOAM533MmFKkN3sZf4eMA4bVqiLBbDCsyE2aHtd3EJwmq0nx6fYWQx1j
 VlSn3rsXriWZXZhJTKmDyraCpgmE1c4DAg==
X-Google-Smtp-Source: ABdhPJyO5SI9CUDQP3JiMJYTnRrSJhQaOshEHwfla2HISVh1lugxxrxOaa4ZrLFK2fD60ExT+wqqkg==
X-Received: by 2002:a5d:658c:: with SMTP id q12mr35541276wru.30.1618307360347; 
 Tue, 13 Apr 2021 02:49:20 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id 64sm1956458wmz.7.2021.04.13.02.49.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 13 Apr 2021 02:49:19 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue, 13 Apr 2021 11:49:02 +0200
Message-Id: <20210413094904.3736372-11-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210413094904.3736372-1-daniel.vetter@ffwll.ch>
References: <20210413094904.3736372-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 11/12] drm/vc4: Don't set allow_fb_modifiers
 explicitly
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
Cc: Eric Anholt <eric@anholt.net>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maxime Ripard <mripard@kernel.org>, Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Since

commit 890880ddfdbe256083170866e49c87618b706ac7
Author: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Date:   Fri Jan 4 09:56:10 2019 +0100

    drm: Auto-set allow_fb_modifiers when given modifiers at plane init

this is done automatically as part of plane init, if drivers set the
modifier list correctly. Which is the case here.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Eric Anholt <eric@anholt.net>
Cc: Maxime Ripard <mripard@kernel.org>
---
 drivers/gpu/drm/vc4/vc4_kms.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/vc4/vc4_kms.c b/drivers/gpu/drm/vc4/vc4_kms.c
index bb5529a7a9c2..f29ac64a5aa5 100644
--- a/drivers/gpu/drm/vc4/vc4_kms.c
+++ b/drivers/gpu/drm/vc4/vc4_kms.c
@@ -899,7 +899,6 @@ int vc4_kms_load(struct drm_device *dev)
 	dev->mode_config.helper_private = &vc4_mode_config_helpers;
 	dev->mode_config.preferred_depth = 24;
 	dev->mode_config.async_page_flip = true;
-	dev->mode_config.allow_fb_modifiers = true;
 
 	ret = vc4_ctm_obj_init(vc4);
 	if (ret)
-- 
2.31.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
