Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EFCA19D82C
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Apr 2020 15:59:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 074926EBAA;
	Fri,  3 Apr 2020 13:58:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C38D6EBAC
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Apr 2020 13:58:49 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id w15so2402714wrv.10
 for <intel-gfx@lists.freedesktop.org>; Fri, 03 Apr 2020 06:58:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=N4msz3tKkrDEGqLybdy93lzBjlopw8+NKPSPfgZ8Zsk=;
 b=EfpAbqIu66MPO4j1xOXnHVNU6XFABR3EuijobKLUbSn4n/pOyaUDguxqq5DXjP9L9T
 ojI5ssJMfk79sumVSsQJqUO07UVn2GAMpFsk4pOXmVNnxk8n3mcYMw9Gd9HvieI/WBwl
 7Vu0eAK40NG/Mpeii+eGaQKOlQGcRNJCOHmMw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=N4msz3tKkrDEGqLybdy93lzBjlopw8+NKPSPfgZ8Zsk=;
 b=p/qiovhpR0NZAYJogK4yMzdqmnXioH6RRU9M/IKgmRrOERLEhTPpr4HwD053kP5EyT
 wuHP2IvNJ4SEGf5xMNAqgTiSzrZOtKwzL/z0/wrXRQGs8FVAlZk67WotzKoqzZ3M1cVg
 f+HsbKjuTfEesgWk6TrLteB1UMW7peSuCTjVKSVFUF1wyPYDOlcqQAbSYS1kcdfT2IkY
 KKo9FHcsC2PQB0y/qR1NoX0hxrdlB2WscIv0ZX/4jKoYawh2UF2eoqwJFTtXbbdDPh2t
 1yq2al3FPMmw5JNyauOIvF1Phtd1suQhmqk+Bu3kk8v5VzmlRwFbKUlnOzYcNAOiHh0q
 TqMw==
X-Gm-Message-State: AGi0PuY+Odc4uaVI/MY8VM0EnZbONw/mL5KPeSLy9QFnrGDJ6gvagR+L
 z+Z/ZnIJ+Cbr4dWQHVmNwCuwWg==
X-Google-Smtp-Source: APiQypJ2MYihOCbMHowO8ncB6RqV0zBxufqfJr2ir3uWsasB14/dYTBTGv/nPBCCAs/HwpWwSUt0PA==
X-Received: by 2002:adf:a48d:: with SMTP id g13mr9816601wrb.38.1585922328249; 
 Fri, 03 Apr 2020 06:58:48 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id f141sm11783919wmf.3.2020.04.03.06.58.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Apr 2020 06:58:47 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri,  3 Apr 2020 15:57:55 +0200
Message-Id: <20200403135828.2542770-12-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200403135828.2542770-1-daniel.vetter@ffwll.ch>
References: <20200403135828.2542770-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 11/44] drm/v3d: Don't set drm_device->dev_private
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
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

And switch the helper over to container_of, which is a bunch faster
than chasing a pointer. Plus allows gcc to see through this maze.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Eric Anholt <eric@anholt.net>
---
 drivers/gpu/drm/v3d/v3d_drv.c | 1 -
 drivers/gpu/drm/v3d/v3d_drv.h | 2 +-
 2 files changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/v3d/v3d_drv.c b/drivers/gpu/drm/v3d/v3d_drv.c
index 8d0c0daaac81..ead62a15d48f 100644
--- a/drivers/gpu/drm/v3d/v3d_drv.c
+++ b/drivers/gpu/drm/v3d/v3d_drv.c
@@ -265,7 +265,6 @@ static int v3d_platform_drm_probe(struct platform_device *pdev)
 	}
 
 	platform_set_drvdata(pdev, drm);
-	drm->dev_private = v3d;
 	drmm_add_final_kfree(drm, v3d);
 
 	ret = map_regs(v3d, &v3d->hub_regs, "hub");
diff --git a/drivers/gpu/drm/v3d/v3d_drv.h b/drivers/gpu/drm/v3d/v3d_drv.h
index e0775c884553..112d80aed5f6 100644
--- a/drivers/gpu/drm/v3d/v3d_drv.h
+++ b/drivers/gpu/drm/v3d/v3d_drv.h
@@ -121,7 +121,7 @@ struct v3d_dev {
 static inline struct v3d_dev *
 to_v3d_dev(struct drm_device *dev)
 {
-	return (struct v3d_dev *)dev->dev_private;
+	return container_of(dev, struct v3d_dev, drm);
 }
 
 static inline bool
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
