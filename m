Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00C21415D42
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Sep 2021 13:58:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B4D06ED6B;
	Thu, 23 Sep 2021 11:58:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com
 [IPv6:2a00:1450:4864:20::42d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7AF96ECF6
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Sep 2021 07:56:28 +0000 (UTC)
Received: by mail-wr1-x42d.google.com with SMTP id i23so14641873wrb.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Sep 2021 00:56:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=embkrJo3e9xiJFTU9PfC3+rsuixYC3ybu+PUBE5n6do=;
 b=ME1Yk6vcB4pBagrYM9vgm7be/sbQ3V17g7odwTb8d5NIfOXo/6yqdM0Snz8jbVWlGy
 lHoZN/GtIwY3uNXLeQM3MZL6BV0m5ED4b6/Ty/98ShF0cS5kOqwCdZ0ekb6nROzVG09F
 jZI0epowvxrx6Moi4WcF7YXBKYr/cvZujyCklQGb6PICbX6VNBGdsyyUPxfP8CafOOlg
 rnaWPk7cwBz2XXmJXzZE5VGW5KFoktbvl3Y6BzWNIkeOVoAbbaMVyI9/wFNB8l/pOjre
 zlie/ezhiCOFB2zZOnv2AP/Gi1ziDFIQOl1Jg+lqFa1rOl2sgizi2tEJGULk/S21ktcM
 5CfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=embkrJo3e9xiJFTU9PfC3+rsuixYC3ybu+PUBE5n6do=;
 b=wRCUn4bDKyxkR+jqjDwBowbhVCyvhJ5HqJg+Z39KVjKlFxtEq1K2ejZklTLgfYFuJa
 uwiIoHwDtzbVGJ4TydpcrFIgdNC34kKcVG68X2mWQm7ti4c1LNrzeRdwOlkTOgkEdziE
 pTyNOUL0g6ebsbZQZkpNS4vZuTYu0mAXSrxN0wVlwQHAVGk9ch0OvaGVPm0ItS4or6lT
 +hQICOERuPSzWOmCZGNd+kLN41GFdDq82WKP4MUjNj2KrKnjKDEDNfw7/v0y7NlXUw8I
 Lo1sycALzsQ9eZo7eAgrTnU33v/4VZTg3+clUDJsuUwrzLlbbs+XwN00AerDqamaUXwt
 9kZg==
X-Gm-Message-State: AOAM531THl2Pj/EiYcWo+8XwAcBUUn3sLTZxwwJitcN5ZU+nBFhYyH4b
 PzVPYlYM4KIWMc/xTe075ncDS98rS7w=
X-Google-Smtp-Source: ABdhPJw1t14vDdzv2NH5/hy3UFRfV6A6zWi2pHD/V5OBN2ZcSvCseoTzzbMsD42+hZE9LSSXtVXZjA==
X-Received: by 2002:a1c:9846:: with SMTP id a67mr2993215wme.148.1632383787265; 
 Thu, 23 Sep 2021 00:56:27 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 k19sm4280704wmr.21.2021.09.23.00.56.26
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Sep 2021 00:56:26 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Sep 2021 09:56:04 +0200
Message-Id: <20210923075608.2873-21-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210923075608.2873-1-christian.koenig@amd.com>
References: <20210923075608.2873-1-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Thu, 23 Sep 2021 11:57:22 +0000
Subject: [Intel-gfx] [PATCH 21/25] drm: use new iterator in
 drm_gem_plane_helper_prepare_fb
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

Makes the handling a bit more complex, but avoids the use of
dma_resv_get_excl_unlocked().

Signed-off-by: Christian König <christian.koenig@amd.com>
---
 drivers/gpu/drm/drm_gem_atomic_helper.c | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/drm_gem_atomic_helper.c b/drivers/gpu/drm/drm_gem_atomic_helper.c
index e570398abd78..21ed930042b8 100644
--- a/drivers/gpu/drm/drm_gem_atomic_helper.c
+++ b/drivers/gpu/drm/drm_gem_atomic_helper.c
@@ -143,6 +143,7 @@
  */
 int drm_gem_plane_helper_prepare_fb(struct drm_plane *plane, struct drm_plane_state *state)
 {
+	struct dma_resv_iter cursor;
 	struct drm_gem_object *obj;
 	struct dma_fence *fence;
 
@@ -150,9 +151,17 @@ int drm_gem_plane_helper_prepare_fb(struct drm_plane *plane, struct drm_plane_st
 		return 0;
 
 	obj = drm_gem_fb_get_obj(state->fb, 0);
-	fence = dma_resv_get_excl_unlocked(obj->resv);
-	drm_atomic_set_fence_for_plane(state, fence);
+	dma_resv_iter_begin(&cursor, obj->resv, false);
+	dma_resv_for_each_fence_unlocked(&cursor, fence) {
+		dma_fence_get(fence);
+		dma_resv_iter_end(&cursor);
+		/* TODO: We only use the first write fence here */
+		drm_atomic_set_fence_for_plane(state, fence);
+		return 0;
+	}
+	dma_resv_iter_end(&cursor);
 
+	drm_atomic_set_fence_for_plane(state, NULL);
 	return 0;
 }
 EXPORT_SYMBOL_GPL(drm_gem_plane_helper_prepare_fb);
-- 
2.25.1

