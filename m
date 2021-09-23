Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28B57415D2F
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Sep 2021 13:57:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 785C86ED16;
	Thu, 23 Sep 2021 11:57:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com
 [IPv6:2a00:1450:4864:20::42c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 837BE895E1
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Sep 2021 07:56:30 +0000 (UTC)
Received: by mail-wr1-x42c.google.com with SMTP id q11so14488866wrr.9
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Sep 2021 00:56:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=KGewx1QiQQVkw015IvGnnogZeqnpnoxIhP9ykI50FyQ=;
 b=nMhjVztgacZ7Rgh4Zl2/jUdj8mUPiIM5Utw8bUq0NXFTRWOhKgbtqkKB/D5yj6/g4c
 C/M2FwzIJjXkPyjisj7p/BK1RQf9USA6P5EVz2XXwjcffnsJR7KMgV6tkLjDyGEOIhrO
 q6DX/gE8jOs5Y+v5IMnGugpljGUFWAmeQsN2BbtvksqUcZhW9uFWf/VHgjOaLz4kKtLJ
 kWwslfzg3o1ykxoYJmi/Vqj8b4iZX/stncNOH4sNOlMSqA9dOpANZHvf4+RCYdolJhC9
 Muu+eLXudWipNoUz4CtNh8FiVQyn0v00Tvf/ZsXGEbTFRD7KMc6rWOwN1JDwhkH6vmgu
 aKbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KGewx1QiQQVkw015IvGnnogZeqnpnoxIhP9ykI50FyQ=;
 b=LIbkwZy+6Ywo8YzXLo2shvy8L0vsZgyEI5RmYSJ+JuYwXhjUS/iBNPoDHC7E9IqJbS
 3lnpzkdO6ukgE/bVV2SCVxBpBcFaI31FVWX53MZL6XCHCmOvo13CnstrkIcmU9c1WPgL
 lc9WdXK+yQ8xMTC+vKjztuS1q9zuFnjpCBK6EwJT1eV/PlgBk9fR+mo4H9+ePBUl8D1U
 fzwRVqQmv4dAV9HqtF0nBbCFxvWYPsKEr/2A+2k+I88t/9l4jJfKPEFDcAXqWG/yH/I5
 4bfv9ESxWSis3wZXHBhrQ9QP84alRYE2ACea0Kg+2Rpp9f63ZOt1K3IGiGD8zmIMGfPQ
 srNA==
X-Gm-Message-State: AOAM530fxu3ZgMq1zj96yLHl3dL3buz3c7NA8le6BA79+sf2ql5lro7O
 6EwXwCK+cd2QH0K63V11gogyxAsaH8k=
X-Google-Smtp-Source: ABdhPJxRQzMuq23JuS/dui5gE4n9C+GpslHug7+WGksLckMepyMz5pc3PBKzDjcAWLQ8+F3vZfmA8g==
X-Received: by 2002:a5d:5386:: with SMTP id d6mr3499864wrv.112.1632383789073; 
 Thu, 23 Sep 2021 00:56:29 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 k19sm4280704wmr.21.2021.09.23.00.56.28
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Sep 2021 00:56:28 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Sep 2021 09:56:06 +0200
Message-Id: <20210923075608.2873-23-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210923075608.2873-1-christian.koenig@amd.com>
References: <20210923075608.2873-1-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Thu, 23 Sep 2021 11:57:22 +0000
Subject: [Intel-gfx] [PATCH 23/25] drm/nouveau: use the new interator in
 nv50_wndw_prepare_fb
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
 drivers/gpu/drm/nouveau/dispnv50/wndw.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/nouveau/dispnv50/wndw.c b/drivers/gpu/drm/nouveau/dispnv50/wndw.c
index 8d048bacd6f0..30712a681e2a 100644
--- a/drivers/gpu/drm/nouveau/dispnv50/wndw.c
+++ b/drivers/gpu/drm/nouveau/dispnv50/wndw.c
@@ -539,6 +539,8 @@ nv50_wndw_prepare_fb(struct drm_plane *plane, struct drm_plane_state *state)
 	struct nouveau_bo *nvbo;
 	struct nv50_head_atom *asyh;
 	struct nv50_wndw_ctxdma *ctxdma;
+	struct dma_resv_iter cursor;
+	struct dma_fence *fence;
 	int ret;
 
 	NV_ATOMIC(drm, "%s prepare: %p\n", plane->name, fb);
@@ -561,7 +563,13 @@ nv50_wndw_prepare_fb(struct drm_plane *plane, struct drm_plane_state *state)
 			asyw->image.handle[0] = ctxdma->object.handle;
 	}
 
-	asyw->state.fence = dma_resv_get_excl_unlocked(nvbo->bo.base.resv);
+	dma_resv_iter_begin(&cursor, nvbo->bo.base.resv, false);
+	dma_resv_for_each_fence_unlocked(&cursor, fence) {
+		/* TODO: We only use the first writer here */
+		asyw->state.fence = dma_fence_get(fence);
+		break;
+	}
+	dma_resv_iter_end(&cursor);
 	asyw->image.offset[0] = nvbo->offset;
 
 	if (wndw->func->prepare) {
-- 
2.25.1

