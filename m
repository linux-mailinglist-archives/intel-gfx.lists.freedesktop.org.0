Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 176EF39A3ED
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Jun 2021 17:03:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 738366F49B;
	Thu,  3 Jun 2021 15:03:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com
 [IPv6:2a00:1450:4864:20::636])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40CDD6F495
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Jun 2021 15:03:36 +0000 (UTC)
Received: by mail-ej1-x636.google.com with SMTP id a11so9015328ejf.3
 for <intel-gfx@lists.freedesktop.org>; Thu, 03 Jun 2021 08:03:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=c2sMhn9FFyBCT6ijxYFstqFFhQ5iAR+T1N0Su8AmZKc=;
 b=b5YGKhW67xjkGqardlMLX0byeC1Hyh6KG+XBWd6aJg4q/02YB5hABUkP6RtJgcy9SW
 fTH71xqlrt5vu9rZqDoRbWmVf8ZlJQ5MxzdttpG2TBLLZVmIsyBV9Qzl9bh4rLJWEGE+
 USX+9Msqg+5S7cGjRlEtRnqlWMbVAGZkG+8MI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=c2sMhn9FFyBCT6ijxYFstqFFhQ5iAR+T1N0Su8AmZKc=;
 b=ppuJNiYemHIDUtS+RUznOlc/KpFDTe7NvqfPFTpGDWo/mT3ynZ18ayXQqlZpc6AWUT
 JOxXWyjLLDbUJ9FrKVcvuPtLBjptui1pQqEndW9oHE1WwIcLRUPMzWptGIgpaPxJLFkD
 2tYP1XdWD55qQTgfDinIwaTujrbPjstDfmBySdjghkswJIYSYeb2Rsu7+vxqEboq9UQs
 KqF6jO3/9trLRyzC5m/mD1t8ChtD1p8g5YII9NsWvdo+2Ol6YFkjdPGTpp1P9v7JkFJs
 gxQ7Hg8+WOhhRiPAD/YpRbW4+lxGz3vaADzZ+LJ9GvKLNAIm8ZUuTwuJ+jqRwbVEhYUD
 GwOw==
X-Gm-Message-State: AOAM531Z/ttPRCx6hdprZBKI+Lo7evLwdBQith/uvjtXZdIwNrw/JvLX
 MlyTdRnAMrxmWwWCIKemnQjPBEm07BwMNA==
X-Google-Smtp-Source: ABdhPJx3yZPNIGc9E+54yTxqnviDJ/6ql0UunR/RnTxUjYfQu8JPACwbGAyELgPfSP1+xUfW4uPwDQ==
X-Received: by 2002:a17:906:e104:: with SMTP id
 gj4mr42874ejb.350.1622732614813; 
 Thu, 03 Jun 2021 08:03:34 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id hz10sm1621791ejc.40.2021.06.03.08.03.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 03 Jun 2021 08:03:34 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Date: Thu,  3 Jun 2021 17:03:25 +0200
Message-Id: <20210603150326.1326658-4-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210603150326.1326658-1-daniel.vetter@ffwll.ch>
References: <20210603150326.1326658-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 3/4] drm/shmem-helper: Align to page size in
 dumb_create
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
Cc: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Maxime Ripard <mripard@kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

shmem helpers seem a bit sloppy here by automatically rounding up when
actually creating the buffer, which results in under-reporting of what
we actually have. Caught by igt/vgem_basic tests.

Acked-by: Thomas Zimmermann <tzimmermann@suse.de>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Maxime Ripard <mripard@kernel.org>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
Cc: David Airlie <airlied@linux.ie>
Cc: Daniel Vetter <daniel@ffwll.ch>
---
 drivers/gpu/drm/drm_gem_shmem_helper.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/drm_gem_shmem_helper.c b/drivers/gpu/drm/drm_gem_shmem_helper.c
index 32f1d7601ec6..2985744b4300 100644
--- a/drivers/gpu/drm/drm_gem_shmem_helper.c
+++ b/drivers/gpu/drm/drm_gem_shmem_helper.c
@@ -506,13 +506,13 @@ int drm_gem_shmem_dumb_create(struct drm_file *file, struct drm_device *dev,
 
 	if (!args->pitch || !args->size) {
 		args->pitch = min_pitch;
-		args->size = args->pitch * args->height;
+		args->size = PAGE_ALIGN(args->pitch * args->height);
 	} else {
 		/* ensure sane minimum values */
 		if (args->pitch < min_pitch)
 			args->pitch = min_pitch;
 		if (args->size < args->pitch * args->height)
-			args->size = args->pitch * args->height;
+			args->size = PAGE_ALIGN(args->pitch * args->height);
 	}
 
 	shmem = drm_gem_shmem_create_with_handle(file, dev, args->size, &args->handle);
-- 
2.31.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
