Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A81436C18B
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Apr 2021 11:20:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DD1B6E926;
	Tue, 27 Apr 2021 09:20:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com
 [IPv6:2a00:1450:4864:20::430])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7DC36E926
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Apr 2021 09:20:25 +0000 (UTC)
Received: by mail-wr1-x430.google.com with SMTP id m9so45947186wrx.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Apr 2021 02:20:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=w7ucKXrJnIzMOthJlOHj471QYeurlAAFSPpADM6ZH3I=;
 b=Rx8JgwjlzG1e19dvcRC9VP6CH7vTVKpyfbppSfJ9X5bbePR4iAYwriFgcge939FZ4l
 X+0LHzQoiUvCIeUe+5ZDei2sThYvt3T8r1CDxOluJ2txvuSBzHoS2qDEbGyZZJDv4Fwx
 vVwyZGIegB+Q/ZM7W1I791CY18Au/BFtwB0qY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=w7ucKXrJnIzMOthJlOHj471QYeurlAAFSPpADM6ZH3I=;
 b=rHXh8YyXI7rZQh64pvNg/n8VRWFvblHuUN1bghOTyEWhY46B5TA8B8ZiLSkk9oONWT
 56znNblslRlmJBd2+ihTBCyaL9IVk1nbaoEOMVjdMnJQW32cBnu6aCSAeVR0FGArWZum
 pOqfSTPHGAC+gtd6E/HMj+U0/3RRbRGPJZTmmOcGs+eFHpz+JWA6t5jcVHg//nnMD4Lc
 CTIuW5yiMVbf+XGj/0cCEWfVC/hE25k2Ltx1rrHBHY+FpYBQa4Mm3I6s+GSdCReuy5Qm
 nRbqkGKkgZtz1BqgU76430t57PWpjzRbetFDMTIqI4hwt6XWiEPSyxrYSgT+pgYl/R+h
 u8IQ==
X-Gm-Message-State: AOAM533ovH43rE7iyJ5dpEcWrGqAakAIYRNSNnb15j5QKS0LYG7F4HAg
 i9Esjr3KC24SvSnS4mFfrEtPqA==
X-Google-Smtp-Source: ABdhPJy8pOyI5R6E1lUEqrN7U7Gug8UnHKhW1d2kP9mPOZ7o3BUcpHInuWAxiuMFpevkmM5pJ+272w==
X-Received: by 2002:a5d:5903:: with SMTP id v3mr12168170wrd.405.1619515224573; 
 Tue, 27 Apr 2021 02:20:24 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id r24sm1939816wmh.8.2021.04.27.02.20.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Apr 2021 02:20:24 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue, 27 Apr 2021 11:20:11 +0200
Message-Id: <20210427092018.832258-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.31.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/8] drm/arm: Don't set allow_fb_modifiers
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
