Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ABCD835DBC0
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Apr 2021 11:49:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6F3E6E2B6;
	Tue, 13 Apr 2021 09:49:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com
 [IPv6:2a00:1450:4864:20::336])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8ECF56E3DB
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Apr 2021 09:49:46 +0000 (UTC)
Received: by mail-wm1-x336.google.com with SMTP id
 w7-20020a1cdf070000b0290125f388fb34so7773786wmg.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Apr 2021 02:49:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gwHzUDNZVp2wEYlqxQZ6iUtDyBjLy7nUegflHoeCCQU=;
 b=WsnsVFnnw18rtpTTkaKgaUTVo2knqSbUw+1HAXzn6hDBHVVivOqZ07j9rj7Ac0AJxS
 FCLzmQNZUYVQq5BBIcab4BhBBgen4wuNGO8jKPS74ad7D7NY8EUvS5O8HE9LPFHm4wtk
 TQet8D2NJJH7Pus6SSfBbigL2zMINFLZCASZw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gwHzUDNZVp2wEYlqxQZ6iUtDyBjLy7nUegflHoeCCQU=;
 b=B6Lts9+kP0Hl9+V/p5KYEgAZz//it5YEyj9yt4aQ51iJQKX3zWQAHXGxDNKeUity0i
 FaFLSRbs0NnqKXPKvMyOtSoHBHBGEi2ixNHTmZOVYfrYDBrR134KoGu8AgJG+cNjzC4I
 HIDQxL+uQdLMmyfRvFfh4NcCxDLurhrMwT3kqkeGX/usjYzZ6/Ie6vqwOKu5RngbLgT2
 IbL6mHDNBdEGg477yelBLmro0Efl8pw/z7K0uA8MGyneydMR0YM5dYWdg0VvkbggyznM
 HklFZdOci+g3r7l9ArTWYpVikIjwKBAcSZHJp9cWikr6CIvXZJifJ0GCufwbs5RP/S+G
 XJHw==
X-Gm-Message-State: AOAM530r3bp7p6deQbRdUWuBQEaRCN3H5KTQZNIg7CdID0vbyNFyLxHw
 l5XsLJvx64LWT2foy63K8XjitA==
X-Google-Smtp-Source: ABdhPJzaRamoYmdzxqDGLfQNgna+K/MAzd/DUmyyOGXLev1lzbvWBKdxyY3YqYxMb9pxt8WhhtFiOQ==
X-Received: by 2002:a1c:64c4:: with SMTP id y187mr3239021wmb.162.1618307385281; 
 Tue, 13 Apr 2021 02:49:45 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id x15sm1945964wmi.41.2021.04.13.02.49.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 13 Apr 2021 02:49:44 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue, 13 Apr 2021 11:49:37 +0200
Message-Id: <20210413094937.3736541-3-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210413094937.3736541-1-daniel.vetter@ffwll.ch>
References: <20210413094937.3736541-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/3] drm/shmem-helper: Align to page size in
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

shmem helpers seem a bit sloppy here by automatically rounding up when
actually creating the buffer, which results in under-reporting of what
we actually have. Caught by igt/vgem_basic tests.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
---
 drivers/gpu/drm/drm_gem_shmem_helper.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/drm_gem_shmem_helper.c b/drivers/gpu/drm/drm_gem_shmem_helper.c
index 6d625cee7a6a..d5e6d4568f99 100644
--- a/drivers/gpu/drm/drm_gem_shmem_helper.c
+++ b/drivers/gpu/drm/drm_gem_shmem_helper.c
@@ -505,13 +505,13 @@ int drm_gem_shmem_dumb_create(struct drm_file *file, struct drm_device *dev,
 
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
