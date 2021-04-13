Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C7F7135DB99
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Apr 2021 11:49:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3331489B96;
	Tue, 13 Apr 2021 09:49:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com
 [IPv6:2a00:1450:4864:20::42f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFE3389B96
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Apr 2021 09:49:11 +0000 (UTC)
Received: by mail-wr1-x42f.google.com with SMTP id w4so12034173wrt.5
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Apr 2021 02:49:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=w7ucKXrJnIzMOthJlOHj471QYeurlAAFSPpADM6ZH3I=;
 b=lHZKFi8p2s2gQf3z6OTx8EPk7FhTUspBjLx0lknmL9wPZ/OK0T9ykLVrdVBredNgtd
 RUXjoCF0oDM3Fcm1gbcBCK3YyntijYmvKJQHS1LmpYEZoxlM3p2guhVKo7I6yLGbRYwO
 YmmMkB3UZ3jDJCnOcLxAD18bU7jItd2NRDhdE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=w7ucKXrJnIzMOthJlOHj471QYeurlAAFSPpADM6ZH3I=;
 b=uoQ/BV2ZvaNBBmiDaP7xciVmK/YfUGQ2a4VApJ1e3FBmSUpsJXN/B6B/RfWFn98WSz
 tlokFaU13qUflTtq7X5ulrWEMoT9nTHH0LZp/G2YmkQrfHadd2zK0Xa+F61C0bE9xwGA
 Eq4XHpzjdOifsvRi+DexgAOx67Sj1p+PAc0yIe6OpdaW+H4rSez+hISHw6tSs4ykJc3T
 e4VSM2J+urR3fCNI+JhPgAOAyLaPHMfBQJkbJWNrl4DMb7Oq4SSdN10YZEMDNFjxHyxS
 nPJI/FXb6QVBuIc9i/evF4eH/ih1WPODGVZnCFFl9KZOsk6JYmbzAZAJe4DxkXsCmrLU
 oXdw==
X-Gm-Message-State: AOAM532EjUafCJC0wLMYrSlLQ2jXibj5khyffZuGBdsUbBWjed8wNARr
 07YgpQd7UnK0eVvGk5D4vI8pOg==
X-Google-Smtp-Source: ABdhPJyNLLLWdmsj1IxqYWpBcGq07B4aRAR8sF7LBNNc6mpuO6LExejBrYGHG/1qTAx9/nQJk+b2Cg==
X-Received: by 2002:a5d:658c:: with SMTP id q12mr35540551wru.30.1618307350470; 
 Tue, 13 Apr 2021 02:49:10 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id 64sm1956458wmz.7.2021.04.13.02.49.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 13 Apr 2021 02:49:09 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue, 13 Apr 2021 11:48:52 +0200
Message-Id: <20210413094904.3736372-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.31.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 01/12] drm/arm: Don't set allow_fb_modifiers
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 "James \(Qian\) Wang" <james.qian.wang@arm.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Mihail Atanassov <mihail.atanassov@arm.com>
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
modifier list correctly. Which is the case here for both komeda and
malidp.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: "James (Qian) Wang" <james.qian.wang@arm.com>
Cc: Liviu Dudau <liviu.dudau@arm.com>
Cc: Mihail Atanassov <mihail.atanassov@arm.com>
Cc: Brian Starkey <brian.starkey@arm.com>
---
 drivers/gpu/drm/arm/display/komeda/komeda_kms.c | 1 -
 drivers/gpu/drm/arm/malidp_drv.c                | 1 -
 2 files changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/arm/display/komeda/komeda_kms.c b/drivers/gpu/drm/arm/display/komeda/komeda_kms.c
index aeda4e5ec4f4..ff45f23f3d56 100644
--- a/drivers/gpu/drm/arm/display/komeda/komeda_kms.c
+++ b/drivers/gpu/drm/arm/display/komeda/komeda_kms.c
@@ -247,7 +247,6 @@ static void komeda_kms_mode_config_init(struct komeda_kms_dev *kms,
 	config->min_height	= 0;
 	config->max_width	= 4096;
 	config->max_height	= 4096;
-	config->allow_fb_modifiers = true;
 
 	config->funcs = &komeda_mode_config_funcs;
 	config->helper_private = &komeda_mode_config_helpers;
diff --git a/drivers/gpu/drm/arm/malidp_drv.c b/drivers/gpu/drm/arm/malidp_drv.c
index d83c7366b348..de59f3302516 100644
--- a/drivers/gpu/drm/arm/malidp_drv.c
+++ b/drivers/gpu/drm/arm/malidp_drv.c
@@ -403,7 +403,6 @@ static int malidp_init(struct drm_device *drm)
 	drm->mode_config.max_height = hwdev->max_line_size;
 	drm->mode_config.funcs = &malidp_mode_config_funcs;
 	drm->mode_config.helper_private = &malidp_mode_config_helpers;
-	drm->mode_config.allow_fb_modifiers = true;
 
 	ret = malidp_crtc_init(drm);
 	if (ret)
-- 
2.31.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
