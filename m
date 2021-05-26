Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A91B0391AA7
	for <lists+intel-gfx@lfdr.de>; Wed, 26 May 2021 16:47:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 685A26EDAA;
	Wed, 26 May 2021 14:47:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com
 [IPv6:2a00:1450:4864:20::62f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2254F6EDAC
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 May 2021 14:47:45 +0000 (UTC)
Received: by mail-ej1-x62f.google.com with SMTP id f18so2853508ejq.10
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 May 2021 07:47:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=GYJiXj0ddj83L8aXFRzvFTEUKUN+B1Z6lPzHOBdtjm8=;
 b=Gx64LBbNwLBBdNiZ+bV5ywxpe6PBhcnCmmLq6MfAhsshgRyRWJE5MRYUBD5wRb0JpZ
 UC7BcdcJ+RPyjVBYsxNTC5eMH0TT1w28arbEApo3LjX7M+QGZsx+bDbm5oM7dqZHUsqG
 mFWL+ok9mjGR7pU6V9Tz4M1U+OhydAVesTOWg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=GYJiXj0ddj83L8aXFRzvFTEUKUN+B1Z6lPzHOBdtjm8=;
 b=r9HL1jQ7repQu/dSgI+Re1lm/ioeX7KBK6mz1bMp1EmrjS+WudGqAoh+V+5D4hIZPi
 XE+hBgPn0cjOF6dsRav2ziBRCb9kRrjpA7j/hFvl4lFpboB3gjNJjgGEUjl/SCTotQrl
 rHHpG85eC1OT3NKlE7xmrQ41XGdHvewJxdEnigAzDGZiZCsFGv1R63CI8WETHFbtLL/n
 Rs8eGk5/udWtwHrlv1jdlSs86RU4QkLlJjvei8Du086HjF6wlzNLU/1dj9kjsJcC/Mjy
 mmqJLPODJqGQ094D7vVtF7s2NMzBNlMEWisHw2vAavWFYQtktTVEXuGxJ+jmuxPcmJKp
 IlIg==
X-Gm-Message-State: AOAM533DNLpFidrgow1OL3TsG8OFPAV99b69wc+bzHFH6kKCVqb5z3cy
 AVXMamyTbWT8Cs2Tkrn9YqoQqvC4vvtDyQ==
X-Google-Smtp-Source: ABdhPJwhr9w2Wi5BavMfFaZH9Z7O4mPTaJqpkodpz6jWKldNLB91UPiGnLBjED8qH1gNlBDtBj432w==
X-Received: by 2002:a17:906:c212:: with SMTP id
 d18mr14780658ejz.291.1622040463738; 
 Wed, 26 May 2021 07:47:43 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id fb19sm10466212ejc.10.2021.05.26.07.47.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 May 2021 07:47:43 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>
Date: Wed, 26 May 2021 16:47:36 +0200
Message-Id: <20210526144736.3277595-3-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210526144736.3277595-1-daniel.vetter@ffwll.ch>
References: <20210526144736.3277595-1-daniel.vetter@ffwll.ch>
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
Cc: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
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
