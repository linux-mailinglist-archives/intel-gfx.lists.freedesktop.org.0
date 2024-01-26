Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BD2783E3AA
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jan 2024 22:09:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67AAD10FEAD;
	Fri, 26 Jan 2024 21:09:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com
 [209.85.208.176])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8815610FEAD;
 Fri, 26 Jan 2024 21:09:32 +0000 (UTC)
Received: by mail-lj1-f176.google.com with SMTP id
 38308e7fff4ca-2cf4a22e10dso9083771fa.3; 
 Fri, 26 Jan 2024 13:09:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1706303310; x=1706908110; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=gAdragFp14ZDf5qrqrIoqQxrVW0ywkpYG2do2M6fgug=;
 b=CMO2xgGbd3PCtuQaqapiUXxufBFxMsbOWVNfd0aZwpOZyoAOU3XD3+7qxW++4Ab4qB
 a9LtS8vfdTWi2EW6MDD62ieKe6wJmt0laWgKgNx7DSYVpti+DZKRR3oIOtJkhp/ScN0q
 i24M7fR67aPOXE/ngaklY3ci0XtN8c0IUKOuzle4EZOCnlCMnCedVy4XRlfm2lY8rfPC
 dCx7v0q2Bl1a7BGdZDHJlGjb9j0eUcriwItpGjOxElynnkHLBC1COObCdSbcI5xqc949
 Yy6HDZvbiBn20wAk+icCNH2EjewmQM4l9ZSImoCJOpcT+ogbN+WO2lXUyw8q3u9XUzfG
 7PdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1706303310; x=1706908110;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=gAdragFp14ZDf5qrqrIoqQxrVW0ywkpYG2do2M6fgug=;
 b=eCn3S06RPi3KZEHqZJNbh1Ihn9gYqPZsAGYESqj7AvftqMLFIt0XKJK3kPzgaoxZsS
 4CFanM/yUyqKUvMO3Vwt+zQeO7Qz+rybBHvLzjFC/L5tLaEcJnOsomBfpDz7Y5RNVsE1
 TbfbSvveH+irlhewzxP5sPUJMhKQSSxHkUZ2qLg9qfXD5NWRpSw6jzjBTRuLv+pk4P+/
 MhOJQ+TFDFO/enHLKoxmeojac+6eSbjVvOjElKAbqEeD6jcuAFxXWGChQkWmubAGj+Mc
 1PCZ4RqjXOU4+ymESv7KLSLr78YkPhAJU6LAe4wEn0fOoQYm6+jhalHqYHwLOfRc+dde
 ipJQ==
X-Gm-Message-State: AOJu0YxmLlmczTnkgDPZXt+CU0L9neravgWmHSrnaaq/htN2x8mEC4xT
 Edo56lQgH8+ypx4n+1At510zj5IA+g2Qu2E7K+M8RMb9R+wntWNPALoRr4GlxfI=
X-Google-Smtp-Source: AGHT+IEIVQev5Ic4tn4HLBA7P1QMy5cGC+L/+Z9OGvPBAi9B21Y8Yg/BWpwvSuuMh8StoK5YHORjOA==
X-Received: by 2002:a2e:8503:0:b0:2cf:2efd:84e4 with SMTP id
 j3-20020a2e8503000000b002cf2efd84e4mr152859lji.184.1706303310186; 
 Fri, 26 Jan 2024 13:08:30 -0800 (PST)
Received: from jheikkil-mobl1.. (91-156-196-125.elisa-laajakaista.fi.
 [91.156.196.125]) by smtp.gmail.com with ESMTPSA id
 t3-20020a192d43000000b00510218debaasm290479lft.35.2024.01.26.13.08.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 26 Jan 2024 13:08:29 -0800 (PST)
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Subject: [PATCH 3/5] drm/xe: store bind time pat index to xe_bo
Date: Fri, 26 Jan 2024 23:08:05 +0200
Message-Id: <20240126210807.320671-4-juhapekka.heikkila@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240126210807.320671-1-juhapekka.heikkila@gmail.com>
References: <20240126210807.320671-1-juhapekka.heikkila@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

Store pat index from xe_vma to xe_bo and check if bo was pinned
as framebuffer and verify pat index is not changing for pinned
framebuffers.

Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
---
 drivers/gpu/drm/xe/xe_pt.c | 23 +++++++++++++++++++----
 1 file changed, 19 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/xe/xe_pt.c b/drivers/gpu/drm/xe/xe_pt.c
index de1030a47588..0a5d7c7543b1 100644
--- a/drivers/gpu/drm/xe/xe_pt.c
+++ b/drivers/gpu/drm/xe/xe_pt.c
@@ -1208,10 +1208,11 @@ __xe_pt_bind_vma(struct xe_tile *tile, struct xe_vma *vma, struct xe_exec_queue
 	struct dma_fence *fence;
 	struct invalidation_fence *ifence = NULL;
 	struct xe_range_fence *rfence;
+	struct xe_bo *bo = xe_vma_bo(vma);
 	int err;
 
 	bind_pt_update.locked = false;
-	xe_bo_assert_held(xe_vma_bo(vma));
+	xe_bo_assert_held(bo);
 	xe_vm_assert_held(vm);
 
 	vm_dbg(&xe_vma_vm(vma)->xe->drm,
@@ -1252,8 +1253,22 @@ __xe_pt_bind_vma(struct xe_tile *tile, struct xe_vma *vma, struct xe_exec_queue
 		return ERR_PTR(-ENOMEM);
 	}
 
+	/*
+	 * BO which has XE_BO_SCANOUT_BIT set and was pinned as framebuffer
+	 * before with different PAT index cannot be bound with different PAT
+	 * index. This is to prevent switching CCS on/off from framebuffers
+	 * on the fly.
+	 */
+	if (bo) {
+		if (bo->flags & XE_BO_SCANOUT_BIT && bo->pat_index_scanout &&
+		    bo->pat_index_scanout != vma->pat_index)
+			return ERR_PTR(-EINVAL);
+
+		bo->pat_index = vma->pat_index;
+	}
+
 	fence = xe_migrate_update_pgtables(tile->migrate,
-					   vm, xe_vma_bo(vma), q,
+					   vm, bo, q,
 					   entries, num_entries,
 					   syncs, num_syncs,
 					   &bind_pt_update.base);
@@ -1287,8 +1302,8 @@ __xe_pt_bind_vma(struct xe_tile *tile, struct xe_vma *vma, struct xe_exec_queue
 				   DMA_RESV_USAGE_KERNEL :
 				   DMA_RESV_USAGE_BOOKKEEP);
 
-		if (!xe_vma_has_no_bo(vma) && !xe_vma_bo(vma)->vm)
-			dma_resv_add_fence(xe_vma_bo(vma)->ttm.base.resv, fence,
+		if (!xe_vma_has_no_bo(vma) && !bo->vm)
+			dma_resv_add_fence(bo->ttm.base.resv, fence,
 					   DMA_RESV_USAGE_BOOKKEEP);
 		xe_pt_commit_bind(vma, entries, num_entries, rebind,
 				  bind_pt_update.locked ? &deferred : NULL);
-- 
2.25.1

