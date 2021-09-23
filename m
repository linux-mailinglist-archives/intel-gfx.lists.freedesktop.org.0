Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4484B415D2E
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Sep 2021 13:57:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F7E46ED20;
	Thu, 23 Sep 2021 11:57:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com
 [IPv6:2a00:1450:4864:20::42f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB61C6E0F2
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Sep 2021 07:56:19 +0000 (UTC)
Received: by mail-wr1-x42f.google.com with SMTP id q11so14487590wrr.9
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Sep 2021 00:56:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=SQ++zZ5/yZpkHj9Fw3rhcDISIEh5bldO1ALOtoZPTbI=;
 b=JXVoytsv9/SsGjstM6+NqsOmWF79/3PMOAT5X6oLPm2XzKEvCzNmm9RhCDCoXwk4Hj
 kA/Rs0MKBxOs1oL0w14Fa24RLoqj/CTvUCbl2EERTSfT8hiSJ2zkyum1uflgYhbbrAkb
 7otG6vztVfw4i0HqmWd0v7a5/v7Yna8i9x0cfBoiMnjALnGEmDaYQLQKAlD+PYJuua8k
 +HltBgLxJtHp/pVOGL13jBkFVuF5+9zgdiSFEEaazRF3VAL1F9LNZobuK5IcaXox0j9h
 gV1eg9z0Sx2uowKzQ6vQcnSZ/ucdvHyT+Qdhcg0JmCZyfEbL7uY5+K6uS8K6e50ySyC6
 gkHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=SQ++zZ5/yZpkHj9Fw3rhcDISIEh5bldO1ALOtoZPTbI=;
 b=tgVer5+KEA8GTQkIWR9ZO3XgVOZ+ogcnQt+a8LcWth/cKAAzYljYRBTsedbgqME9st
 Bef7fRDYBE3jtQvNe5XxVMAdQ5RA+TvDjdwIxVA+QtqxkDYH9Rc3ujN4jHispIMCtGPZ
 ecMRhyBqioShvYkL/i75Cxb/PhZ8ljZGCVsVStz3aao2gt2rM6Ex3LEBgmD9YlolbeoS
 DMF3Y5ej7tjbNpWZfovN9BCGf7bdfDz9VozWPv4i0UXNu9laeNp5+HEZhGHr50W9LrxW
 4Mf4sbirlAdClY56k1Tl44oawgaKrvCP6Bxf/BqXf4kCLER59fqeGv8L/uAseH7x+MIb
 Ge4g==
X-Gm-Message-State: AOAM530wAONf8PFDIP7UdD2zPROQM5th4LzPcgvN+FyQIZSn8fB/uG1A
 uwY4hrGiKQYUkA6mNYGFYCkWRyFemz8=
X-Google-Smtp-Source: ABdhPJwbG3HA460PIx5c5/LxNVYXBW0wtSO9jm0hd085/2JWNGw+T2bHDobwGGjtOciL6ZJHVRt4Tw==
X-Received: by 2002:a05:600c:19ca:: with SMTP id
 u10mr2914991wmq.45.1632383778294; 
 Thu, 23 Sep 2021 00:56:18 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 k19sm4280704wmr.21.2021.09.23.00.56.17
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Sep 2021 00:56:17 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Sep 2021 09:55:53 +0200
Message-Id: <20210923075608.2873-10-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210923075608.2873-1-christian.koenig@amd.com>
References: <20210923075608.2873-1-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Thu, 23 Sep 2021 11:57:22 +0000
Subject: [Intel-gfx] [PATCH 10/25] drm/amdgpu: use new iterator in
 amdgpu_vm_prt_fini
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

No need to actually allocate an array of fences here.

Signed-off-by: Christian König <christian.koenig@amd.com>
---
 drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c | 26 +++++---------------------
 1 file changed, 5 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c
index 6b15cad78de9..e42dd79ed6f4 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c
@@ -2090,30 +2090,14 @@ static void amdgpu_vm_free_mapping(struct amdgpu_device *adev,
 static void amdgpu_vm_prt_fini(struct amdgpu_device *adev, struct amdgpu_vm *vm)
 {
 	struct dma_resv *resv = vm->root.bo->tbo.base.resv;
-	struct dma_fence *excl, **shared;
-	unsigned i, shared_count;
-	int r;
+	struct dma_resv_iter cursor;
+	struct dma_fence *fence;
 
-	r = dma_resv_get_fences(resv, &excl, &shared_count, &shared);
-	if (r) {
-		/* Not enough memory to grab the fence list, as last resort
-		 * block for all the fences to complete.
-		 */
-		dma_resv_wait_timeout(resv, true, false,
-						    MAX_SCHEDULE_TIMEOUT);
-		return;
-	}
-
-	/* Add a callback for each fence in the reservation object */
-	amdgpu_vm_prt_get(adev);
-	amdgpu_vm_add_prt_cb(adev, excl);
-
-	for (i = 0; i < shared_count; ++i) {
+	dma_resv_for_each_fence(&cursor, resv, true, fence) {
+		/* Add a callback for each fence in the reservation object */
 		amdgpu_vm_prt_get(adev);
-		amdgpu_vm_add_prt_cb(adev, shared[i]);
+		amdgpu_vm_add_prt_cb(adev, fence);
 	}
-
-	kfree(shared);
 }
 
 /**
-- 
2.25.1

