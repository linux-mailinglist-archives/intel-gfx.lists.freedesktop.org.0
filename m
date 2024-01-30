Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA08E842D05
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jan 2024 20:38:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7C4E1134A5;
	Tue, 30 Jan 2024 19:38:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com
 [209.85.167.46])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37E221134E1;
 Tue, 30 Jan 2024 19:38:09 +0000 (UTC)
Received: by mail-lf1-f46.google.com with SMTP id
 2adb3069b0e04-51121c08535so401331e87.3; 
 Tue, 30 Jan 2024 11:38:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1706643427; x=1707248227; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=hFA0DrqTuqm001TG+v9NT8zlguShxjXq5qUzbTrLKjs=;
 b=NBcVUYN9EE8VIUUWzMNzws0SagoIQYxT6KZMEoMsEktYKY2o4qfLbXiXviNRsosGGV
 Vyb19QbHSU7PlcAQKNpYzyXYxWM7ZjLCQKzVdgDdv2Kxo9h1T57908Kl1RYMZjShjc/P
 gkQMYpcwQl/BomU0LLw9PpNrXgzlJdeQZDVv82wwG5ktnkYnFI04hElsSJh+HdLirBmH
 jwsjIUFMmD1fym5wpRgcefJY31QszMeOttpgkCcRG4Ww/rxynOZiUU1Nn02oMw9bO55e
 P/ZlqDshZlHYfg4Gpx22UsZmmYsxjy6Lo2WBZIwrOc9rtoy/o0ewOGFc8Xgmy9XeObvN
 Ujig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1706643427; x=1707248227;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=hFA0DrqTuqm001TG+v9NT8zlguShxjXq5qUzbTrLKjs=;
 b=a7HWoT23MTBPQEudKg9X2XZeZ4bZwilw6SoXGCrZ3qXtfpOuQt1XRwjbuWA5vYqNYt
 r/r7jGavBmkMuyFJn2Yd/ttzWyiPjg0UvZE5WJu4j3brOBUVUauQS9ugLszFtc8F2EPr
 /8TgLPdRQphgGpPPdNvGxSD8m1xlSQ69NXee6UZ+wx11ppS4er6lrcdOGErUjbFfBSm7
 FttYG2cqVPLGfRppdAZLk1ANBX9vO6uqURWPBSDH8RIK4xjWjfNjG8q+WHddfOO25ga4
 /mg4W8LnNySgrkEqDbvj1IyWhUj0zYDGwVWQb753lTf7NjppD2fWB7Mgt9eZcXcz4egf
 41aA==
X-Gm-Message-State: AOJu0YwHlTvn3wFgT9hvP3v6xLa7K2CJ+B5RpCH6xtbo3evMjjs+2pRO
 U3+jrj2CXMtxmYNw4scgkv0+2rtAB8c4aw5ajw73zxuXbkziQocB2MPkpbzrxvA=
X-Google-Smtp-Source: AGHT+IFL/4CTFcvm1ETL5Wo6IbpxT8Ysbv/QNulOpGur6/FpArTVf0X2Db+lOfb3dV2riNTCELKUBQ==
X-Received: by 2002:ac2:4651:0:b0:50e:6c1d:5dec with SMTP id
 s17-20020ac24651000000b0050e6c1d5decmr6153543lfo.23.1706643426678; 
 Tue, 30 Jan 2024 11:37:06 -0800 (PST)
Received: from jheikkil-mobl1.. (91-156-196-125.elisa-laajakaista.fi.
 [91.156.196.125]) by smtp.gmail.com with ESMTPSA id
 w30-20020a05651204de00b00510187749besm1558863lfq.80.2024.01.30.11.37.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 30 Jan 2024 11:37:06 -0800 (PST)
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Subject: [PATCH 2/4] drm/xe: add bind time pat index to xe_bo structure
Date: Tue, 30 Jan 2024 21:36:50 +0200
Message-Id: <20240130193652.374270-3-juhapekka.heikkila@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240130193652.374270-1-juhapekka.heikkila@gmail.com>
References: <20240130193652.374270-1-juhapekka.heikkila@gmail.com>
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

Add BO bind time pat index member to xe_bo structure and store
pat index from xe_vma to xe_bo.

Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
---
 drivers/gpu/drm/xe/xe_bo_types.h | 12 ++++++++++++
 drivers/gpu/drm/xe/xe_pt.c       | 22 ++++++++++++++++++----
 2 files changed, 30 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/xe/xe_bo_types.h b/drivers/gpu/drm/xe/xe_bo_types.h
index 14ef13b7b421..6d599f1e846b 100644
--- a/drivers/gpu/drm/xe/xe_bo_types.h
+++ b/drivers/gpu/drm/xe/xe_bo_types.h
@@ -91,6 +91,18 @@ struct xe_bo {
 
 	/** @vram_userfault_link: Link into @mem_access.vram_userfault.list */
 		struct list_head vram_userfault_link;
+
+	/**
+	 * @pat_index: The pat index requested when bind this BO
+	 */
+	u16 pat_index;
+
+	/**
+	 * @has_sealed_pat_index: The pat index is sealed because this BO is
+	 * pinned as framebuffer. This is to prevent flipping compression
+	 * on/off from framebuffers while in use.
+	 */
+	bool has_sealed_pat_index;
 };
 
 #define intel_bo_to_drm_bo(bo) (&(bo)->ttm.base)
diff --git a/drivers/gpu/drm/xe/xe_pt.c b/drivers/gpu/drm/xe/xe_pt.c
index de1030a47588..c72cb75d993c 100644
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
@@ -1252,8 +1253,21 @@ __xe_pt_bind_vma(struct xe_tile *tile, struct xe_vma *vma, struct xe_exec_queue
 		return ERR_PTR(-ENOMEM);
 	}
 
+	/*
+	 * On Xe2 BO which was pinned as framebuffer before with different
+	 * PAT index cannot be bound with different PAT index. This is
+	 * to prevent switching CCS on/off from framebuffers on the fly
+	 * with Xe2.
+	 */
+	if (bo) {
+		if (bo->has_sealed_pat_index && bo->pat_index != vma->pat_index)
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
@@ -1287,8 +1301,8 @@ __xe_pt_bind_vma(struct xe_tile *tile, struct xe_vma *vma, struct xe_exec_queue
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

