Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 74D6E41ED19
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Oct 2021 14:10:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 226126EE37;
	Fri,  1 Oct 2021 12:10:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com
 [IPv6:2a00:1450:4864:20::331])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 934A96EDD4;
 Fri,  1 Oct 2021 10:06:25 +0000 (UTC)
Received: by mail-wm1-x331.google.com with SMTP id
 z184-20020a1c7ec1000000b003065f0bc631so10833504wmc.0; 
 Fri, 01 Oct 2021 03:06:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=yabWm1MzZV7BE4HotZc9CHXB10OboyyVoWyddM9btKw=;
 b=Qjc1wIHm7C7+FZ0zf0J37xwTtZPLvOO6ASxDvrf3+VcrFSzE2KmeNFyiQaE/Vl+Rlq
 Jx8kk1cYPA9lPwImZ1HbLMioQPlM2SjpvNPVxIxJBpkB8GUbwvvObtiKWmwMYipkoOub
 uT6mAfqw8T6viENClrMypA9d0xMDMZ+/yfHRCaWYevYJyI1Is/7lIqgbFJye0EzBZk+L
 8ySgBLZ2PuMN1K4kXFltYLbBP9Y4Fhi1bIWjh6eoU2jvmPteWnEA7hb2fVoO2a0Lp1eX
 RDZu6OZZm8gVpIB8h+eQqnKJI4oKdq6bepcKhAJ4cXMWNn3gAJVsXB/hmshmn+ZWnSh0
 lPPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=yabWm1MzZV7BE4HotZc9CHXB10OboyyVoWyddM9btKw=;
 b=dbcL/5A6mdE/uEqSIu3TCmm4AtTfEJd2vFUmDkdBkfpY3wmda+m8zAyoeWnoQ31HTY
 mKDYLK4mBLz7yVxhfLfA/GObfj50fbENDukM/OyWsYXVY3m/G/Vfwv355ZgPrPamJGfe
 2F77uN69FBcBM1+tLktnF5mh+9hK7ulj9Y5EKp8W9IX+AhMnTZrsv1fHgq3zlophjQGD
 e9vn7rHAIQvsx6qIDGbXxkVMN7koxsmXxCF2Xwq2CbXukBelyy3lwD382acic5tZpe14
 osxqyrjAnRMT2bDHE9K5/xvtLFBILKUdyJyawxzOcAmLrURZgVZ4lmUlmbNFnPhnQLUX
 mfTQ==
X-Gm-Message-State: AOAM533BwZEQF6+T/Sh1ik98C0ZlXzRB+pbOgvMm+U6svFmubNfMilgN
 uC/Dcj84Fsz3zUASm5dhqik=
X-Google-Smtp-Source: ABdhPJxdwp7ya/4uzZlQK5Pj4CHR/r3oHjNKAdXCi+hVDyDFWhNfKd+r+tsruJgQprqOmZaeu4PP9Q==
X-Received: by 2002:a05:600c:190c:: with SMTP id
 j12mr3706058wmq.122.1633082784009; 
 Fri, 01 Oct 2021 03:06:24 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 v17sm5746069wro.34.2021.10.01.03.06.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Oct 2021 03:06:23 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Cc: daniel@ffwll.ch,
	tvrtko.ursulin@linux.intel.com
Date: Fri,  1 Oct 2021 12:05:54 +0200
Message-Id: <20211001100610.2899-13-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211001100610.2899-1-christian.koenig@amd.com>
References: <20211001100610.2899-1-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Fri, 01 Oct 2021 12:10:22 +0000
Subject: [Intel-gfx] [PATCH 12/28] drm/amdgpu: use new iterator in
 amdgpu_ttm_bo_eviction_valuable
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
 drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c | 14 ++++----------
 1 file changed, 4 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c
index e8d70b6e6737..722e3c9e8882 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c
@@ -1345,10 +1345,9 @@ static bool amdgpu_ttm_bo_eviction_valuable(struct ttm_buffer_object *bo,
 					    const struct ttm_place *place)
 {
 	unsigned long num_pages = bo->resource->num_pages;
+	struct dma_resv_iter resv_cursor;
 	struct amdgpu_res_cursor cursor;
-	struct dma_resv_list *flist;
 	struct dma_fence *f;
-	int i;
 
 	/* Swapout? */
 	if (bo->resource->mem_type == TTM_PL_SYSTEM)
@@ -1362,14 +1361,9 @@ static bool amdgpu_ttm_bo_eviction_valuable(struct ttm_buffer_object *bo,
 	 * If true, then return false as any KFD process needs all its BOs to
 	 * be resident to run successfully
 	 */
-	flist = dma_resv_shared_list(bo->base.resv);
-	if (flist) {
-		for (i = 0; i < flist->shared_count; ++i) {
-			f = rcu_dereference_protected(flist->shared[i],
-				dma_resv_held(bo->base.resv));
-			if (amdkfd_fence_check_mm(f, current->mm))
-				return false;
-		}
+	dma_resv_for_each_fence(&resv_cursor, bo->base.resv, true, f) {
+		if (amdkfd_fence_check_mm(f, current->mm))
+			return false;
 	}
 
 	switch (bo->resource->mem_type) {
-- 
2.25.1

