Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A52D0415D40
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Sep 2021 13:58:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 241536ED08;
	Thu, 23 Sep 2021 11:58:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com
 [IPv6:2a00:1450:4864:20::42b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DC7E6ECF8
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Sep 2021 07:56:21 +0000 (UTC)
Received: by mail-wr1-x42b.google.com with SMTP id d21so14423279wra.12
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Sep 2021 00:56:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=IkVWp2cRgm41mlWFdiuPcdEqOEMHJpLCxm3yFN2dD0Q=;
 b=ZCqzI2iGAiYMZ92MWXWTeKpcqad2DOXICsCA97M6kyoXWTKBzSYBnw6Ybuq3qBz2/m
 aUFgr/eGu61FCuxACQd1So6I6QMyQPOmvRcW54LZXLnPTEqlDPSHNlOKCaHstJJJKhTc
 n+n3AKFapt/X2y1vrG4FZqe+XHdvpc2Y29rGWkeLTDNrotPAAUbfisWqFOOpHBO/1Egc
 oV3rnRd4aB487LRdQLe7LrUMJMpWHsKZdb6a0KSneTI36+wfXGupCPAla2dsLB2wmM+W
 ll7pmK0W4cRb870lHomW3DjhzKahK6GqOiBIrHjZWsZCar3WsWl7cTzeu5QlGQMaI4Ij
 r8YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=IkVWp2cRgm41mlWFdiuPcdEqOEMHJpLCxm3yFN2dD0Q=;
 b=z/J4NZIl335EqvffeK02RRJCMpSPoIpCfeFUqOJDUZa8MWxUB/VC4aFPtSChKN1bJG
 dktW+6oPcK5abuVQyGM7cbXbFCGDgNosj3q7K6jv67hGSiFWChfWnb3kffetUrOsRAHP
 ByF8wOAkHXPjcq8TMRakCvJe+Sz/Bg4UZgcKJeCZztKW25au+UJYIoc4hBzGzQIGevYy
 8w6X5iNGy/ElbUMt/kh3xDLo70vSGezxlhApjzxJMqLKedml2scLE7dgok9cPsB7X3IE
 M4V6uX5SbnyseoyCJaRZmbyRx4g1+qdrj4cJPKV28gTe2FlFAidf9wKe0gXbEPKX8deD
 A6Ng==
X-Gm-Message-State: AOAM533IVaOf2wqlqYiO7PqDA4972rifeUvWaL3R2cNqLa2+k5dydcEm
 W3MKkW7nr6GvxQuC+NpAynKNb2bucLg=
X-Google-Smtp-Source: ABdhPJwIpSlbune9RS9q/9SQUhAw0PHqkJmoxUyYa84GRfmIl/ZlQKeA8mjLd377n8ZTrSgXNPxe+A==
X-Received: by 2002:adf:f24a:: with SMTP id b10mr3472662wrp.281.1632383779757; 
 Thu, 23 Sep 2021 00:56:19 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 k19sm4280704wmr.21.2021.09.23.00.56.19
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Sep 2021 00:56:19 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Sep 2021 09:55:55 +0200
Message-Id: <20210923075608.2873-12-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210923075608.2873-1-christian.koenig@amd.com>
References: <20210923075608.2873-1-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Thu, 23 Sep 2021 11:57:22 +0000
Subject: [Intel-gfx] [PATCH 12/25] drm/radeon: use new iterator in
 radeon_sync_resv
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

Simplifying the code a bit.

Signed-off-by: Christian König <christian.koenig@amd.com>
---
 drivers/gpu/drm/radeon/radeon_sync.c | 22 +++-------------------
 1 file changed, 3 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/radeon/radeon_sync.c b/drivers/gpu/drm/radeon/radeon_sync.c
index 9257b60144c4..b991ba1bcd51 100644
--- a/drivers/gpu/drm/radeon/radeon_sync.c
+++ b/drivers/gpu/drm/radeon/radeon_sync.c
@@ -91,33 +91,17 @@ int radeon_sync_resv(struct radeon_device *rdev,
 		     struct dma_resv *resv,
 		     bool shared)
 {
-	struct dma_resv_list *flist;
-	struct dma_fence *f;
+	struct dma_resv_iter cursor;
 	struct radeon_fence *fence;
-	unsigned i;
+	struct dma_fence *f;
 	int r = 0;
 
-	/* always sync to the exclusive fence */
-	f = dma_resv_excl_fence(resv);
-	fence = f ? to_radeon_fence(f) : NULL;
-	if (fence && fence->rdev == rdev)
-		radeon_sync_fence(sync, fence);
-	else if (f)
-		r = dma_fence_wait(f, true);
-
-	flist = dma_resv_shared_list(resv);
-	if (shared || !flist || r)
-		return r;
-
-	for (i = 0; i < flist->shared_count; ++i) {
-		f = rcu_dereference_protected(flist->shared[i],
-					      dma_resv_held(resv));
+	dma_resv_for_each_fence(&cursor, resv, shared, f) {
 		fence = to_radeon_fence(f);
 		if (fence && fence->rdev == rdev)
 			radeon_sync_fence(sync, fence);
 		else
 			r = dma_fence_wait(f, true);
-
 		if (r)
 			break;
 	}
-- 
2.25.1

