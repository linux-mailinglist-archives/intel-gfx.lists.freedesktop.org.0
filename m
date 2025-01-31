Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25482A23F27
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2025 15:31:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C344F10E1E4;
	Fri, 31 Jan 2025 14:30:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Bszm6tdq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com
 [209.85.128.47])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7ED2B10EAD7
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jan 2025 14:30:56 +0000 (UTC)
Received: by mail-wm1-f47.google.com with SMTP id
 5b1f17b1804b1-438a39e659cso14723905e9.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jan 2025 06:30:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1738333855; x=1738938655; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
 :reply-to; bh=jkJ00bQPlHyacSDxXMVR+WVEfXofLdMgzS8qb7ZbIsw=;
 b=Bszm6tdqTUMf02jLT6e5JPxS6ArhlA/+dvkeUWSZm23zN2I+0xkSDgpW3CjwcEHRl2
 QO6ZAf2xrrpyYldp3EaIC514FpRJB4SRXr/y4nyD87MGCssv2nrZ7o0f9JPZ0x4LS+j3
 ikrEkz57UHzv8WGJzytj6bog2fEl+sz66EJwy8x4W/86E3Am8J8PuhhYkh5S311hevMN
 vHPRTCXrGJc92SSc73hh8Q4XEQhVj9W0tTwjyF13Afv7g2HA3Sxqr6zumsby2o3LBruw
 hpOXyvaZ16nYNBI0EEEe2xk1O7sSDV4ykzto67G659iU9gvlzlusctIzWh7EnlFd06iN
 DYrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1738333855; x=1738938655;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=jkJ00bQPlHyacSDxXMVR+WVEfXofLdMgzS8qb7ZbIsw=;
 b=fAvI51T0RmxA2NcGAm74vJiOitCGk8Izx94PjZF/wHjLPjSaV3LDWdi5LI00MLqoD6
 4lGcMSs1QJKexlQmzA+EkR1bng9xtC0CZ6M07nHQhLcSvlljW9+xHSeKNajQHUUW6UC2
 TFNUYt6XJFHAIxy3J7INXBGoFC4f2QegniRWu7lx52cBOs3e9x21MI5ti5efv7N/Lkzj
 PWzyWJHeQlAo2l31BL9nfivIK6XytM+X4Bu3ZxZhOzZe7JIpF0yVFg5wLL9y9x97lHHu
 3d9QYFI1bwom1dl6D6iM28+M3T46y2uolgx9IKPX2O0PN1AESJ9+5yOC35yMPr8/bnJG
 r2vg==
X-Gm-Message-State: AOJu0Yzxg4fAZLB23ZxVf6w6e2I2eTgC/upGKAN3Xi0gJ9EBS/WedQWm
 tURw8rue/ybupkAG6o+BfW3sCBjsCGKzSdD/Zxx27pVe0mv09PG8SSnVBC7Q
X-Gm-Gg: ASbGncvuP6b6WWaCTxOmBeW08fiO2A6geO+4JmAic1zz3RkXlv0rFIJqy2gCi6F/74R
 XykNRdrCVzr5Wafw7j3NB6gCf5KJ80OSeSctcXBnT7Xw2PGHx3dDPt82S6tqcjQA/TESihp6cRk
 C5hrvwSY3IylamOUNpB1ZxcQ/0PKFC6VEDE+xNEiIz08zZXRH3Ppq7uHQRgd6/J+5DY/lPoZhe6
 ooUmofFL6SvYaQwsgxUyP4lQq4oNflFujnvXenkMNXf8hwBZ7onntiouRf+VlLPpONk2nJj7n6k
 s5hr+dA7HugXbWjGOcVMn3xv+fPe
X-Google-Smtp-Source: AGHT+IFDMFNXgbRPNPeH2RFneEFBwrLq6X2f/yQL/UxS/UDPYjErCz728ru47sykedb9LcTXv8EzPA==
X-Received: by 2002:a05:6000:188b:b0:385:f2a2:50df with SMTP id
 ffacd0b85a97d-38c5195f498mr11116175f8f.27.1738333854737; 
 Fri, 31 Jan 2025 06:30:54 -0800 (PST)
Received: from able.fritz.box ([2a00:e180:14ea:9e00:b99f:ba95:78e6:9a32])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-38c5c102e19sm4891382f8f.36.2025.01.31.06.30.54
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 31 Jan 2025 06:30:54 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 1/2] drm/ttm: test private resv obj on release/destroy
Date: Fri, 31 Jan 2025 15:30:51 +0100
Message-Id: <20250131143052.1728-2-christian.koenig@amd.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250131143052.1728-1-christian.koenig@amd.com>
References: <20250131143052.1728-1-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Test the fences in the private dma_resv object instead of the pointer to
a potentially shared dma_resv object.

This only matters for imported BOs with an SG table since those don't
get their dma_resv pointer replaced on release.

Signed-off-by: Christian König <christian.koenig@amd.com>
Reviewed-and-Tested-by: James Zhu <James.Zhu@amd.com>
Reviewed-by: Felix Kuehling <felix.kuehling@amd.com>
---
 drivers/gpu/drm/ttm/ttm_bo.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/ttm/ttm_bo.c b/drivers/gpu/drm/ttm/ttm_bo.c
index 06d6a452c4f4..4d6b2143db63 100644
--- a/drivers/gpu/drm/ttm/ttm_bo.c
+++ b/drivers/gpu/drm/ttm/ttm_bo.c
@@ -234,7 +234,7 @@ static void ttm_bo_delayed_delete(struct work_struct *work)
 
 	bo = container_of(work, typeof(*bo), delayed_delete);
 
-	dma_resv_wait_timeout(bo->base.resv, DMA_RESV_USAGE_BOOKKEEP, false,
+	dma_resv_wait_timeout(&bo->base._resv, DMA_RESV_USAGE_BOOKKEEP, false,
 			      MAX_SCHEDULE_TIMEOUT);
 	dma_resv_lock(bo->base.resv, NULL);
 	ttm_bo_cleanup_memtype_use(bo);
@@ -269,7 +269,7 @@ static void ttm_bo_release(struct kref *kref)
 		drm_vma_offset_remove(bdev->vma_manager, &bo->base.vma_node);
 		ttm_mem_io_free(bdev, bo->resource);
 
-		if (!dma_resv_test_signaled(bo->base.resv,
+		if (!dma_resv_test_signaled(&bo->base._resv,
 					    DMA_RESV_USAGE_BOOKKEEP) ||
 		    (want_init_on_free() && (bo->ttm != NULL)) ||
 		    bo->type == ttm_bo_type_sg ||
-- 
2.34.1

