Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 734605B0870
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Sep 2022 17:23:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A43410E7AB;
	Wed,  7 Sep 2022 15:23:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com
 [IPv6:2a00:1450:4864:20::634])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20C4B10E7A8
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Sep 2022 15:23:34 +0000 (UTC)
Received: by mail-ej1-x634.google.com with SMTP id dv25so1898675ejb.12
 for <intel-gfx@lists.freedesktop.org>; Wed, 07 Sep 2022 08:23:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date;
 bh=8a7ewnIYbL77uedhfZXQbZgzn5QAFgKLZsd2CKYFFYk=;
 b=AchJwPn24k3u+An1yFXLx7fKsR2DA3PUtRVgLq7HhUaV5d0Gt5OiHrUhv8HHiDo8aL
 XP6XfSQ7JZz3VctsF3KFqru05hK788IX0ayex0RxpAX6giFtTfNO+2k1FVfKWrH9Q4mb
 q5J2xOJNMUzsUUP+Z809zpOyIsDTQhQZY14tYEOkEBhmz4kigDnJ+m8FMjIWPEf3xb9y
 3zS7Ld4M3oZMJ+ImhoDRYAbfjNOgRiKElk0Q530AIK2PB9E5fsZDjucrr5YLxiZKJP3L
 gKLJICLHoekQuXTmWB1HPSQCbdIhzFRyvs48DONGdLo9hWs+x9p0dfVXRPw0riEo5aVa
 6rCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date;
 bh=8a7ewnIYbL77uedhfZXQbZgzn5QAFgKLZsd2CKYFFYk=;
 b=zove3Ctl6wCbnp7Jwf1Y0wCc6HdIXJ8LSOQwMkHErxSp1+6ERYGe3kmCMiHgllBd4t
 4qaLwtqClT7X576U06PFryet4tnQOHXGuVIEExbrejEDogMLkcQO0VfHpzYe0Eb5jUfm
 BokpkvPczuYUvacbjz/wb9NYdAP6lwgclUkFtaS8veQeMZSJo/fpUBD6Lb6tjwROf1t1
 EodtT5DRsSgDzYr3O1J1Ee7PpTQ54DPYv5QzzJ7oOz17aZTEwGaBeYrVWkMBrMHdL6Zx
 EQSboKbTXd04+Hpvggij7azQ2Ei0q2BRm4H5vExxoL53xxzEX5EJ8l9ZrEUUo9McHoVR
 2iHg==
X-Gm-Message-State: ACgBeo2vosdwVPWY4mmRprMEQW72OCfSiIFykt83ioHZ6kFCGiUmbPoh
 ERu8YTrXvbuFNoXGjyYvG2SS3fBCJco=
X-Google-Smtp-Source: AA6agR47efq77zK77Ig61ZYacG8GFjEZYrz2hopA7cyD6Hr3UTnc7A+WRkFweovW8/fmbAYtZrttOA==
X-Received: by 2002:a17:907:2d2a:b0:76f:ab1:d25b with SMTP id
 gs42-20020a1709072d2a00b0076f0ab1d25bmr2619727ejc.459.1662564212562; 
 Wed, 07 Sep 2022 08:23:32 -0700 (PDT)
Received: from EliteBook.fritz.box ([2a02:908:1256:79a0:4b54:d3b:e2ad:b40e])
 by smtp.gmail.com with ESMTPSA id
 a26-20020aa7d91a000000b0044ee18e5f79sm3361784edr.28.2022.09.07.08.23.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 07 Sep 2022 08:23:32 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Sep 2022 17:23:31 +0200
Message-Id: <20220907152331.572240-1-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/ttm: cleanup the resource of ghost objects
 after locking them
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
Cc: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Otherwise lockdep will complain about cleaning up the bulk_move.

Not even compile tested.

Signed-off-by: Christian König <christian.koenig@amd.com>
---
 drivers/gpu/drm/ttm/ttm_bo_util.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/ttm/ttm_bo_util.c b/drivers/gpu/drm/ttm/ttm_bo_util.c
index 57a27847206f..911141d16e95 100644
--- a/drivers/gpu/drm/ttm/ttm_bo_util.c
+++ b/drivers/gpu/drm/ttm/ttm_bo_util.c
@@ -236,6 +236,11 @@ static int ttm_buffer_object_transfer(struct ttm_buffer_object *bo,
 	if (bo->type != ttm_bo_type_sg)
 		fbo->base.base.resv = &fbo->base.base._resv;
 
+	dma_resv_init(&fbo->base.base._resv);
+	fbo->base.base.dev = NULL;
+	ret = dma_resv_trylock(&fbo->base.base._resv);
+	WARN_ON(!ret);
+
 	if (fbo->base.resource) {
 		ttm_resource_set_bo(fbo->base.resource, &fbo->base);
 		bo->resource = NULL;
@@ -244,11 +249,6 @@ static int ttm_buffer_object_transfer(struct ttm_buffer_object *bo,
 		fbo->base.bulk_move = NULL;
 	}
 
-	dma_resv_init(&fbo->base.base._resv);
-	fbo->base.base.dev = NULL;
-	ret = dma_resv_trylock(&fbo->base.base._resv);
-	WARN_ON(!ret);
-
 	ret = dma_resv_reserve_fences(&fbo->base.base._resv, 1);
 	if (ret) {
 		kfree(fbo);
-- 
2.25.1

