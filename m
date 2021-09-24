Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DB45F41785A
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Sep 2021 18:21:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20E006E1F2;
	Fri, 24 Sep 2021 16:21:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com
 [IPv6:2a00:1450:4864:20::42c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A10688FF9;
 Fri, 24 Sep 2021 15:31:31 +0000 (UTC)
Received: by mail-wr1-x42c.google.com with SMTP id d6so28548973wrc.11;
 Fri, 24 Sep 2021 08:31:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Xs3urb+CfK37NrDBLos1427ZQKhaGuo6xOveDYDdwk4=;
 b=RzWuZAIMOpiub0i7yP5lKCR61AHclgo7MbaIOB/YpUBnGhJeWQb8Q5AqotPExpFYQQ
 dy6t/eBKl6/M2Gz6wG86VOYRcceKsTWJLtjW2eGl01Pml8yspK/aeE/nrYwwXWngv1Yk
 3nz0SdDKu8c3EI+2GsAl9PQBLtP85YPiOXp4jmBPoi1UM14B9eXN6wnLRJF/DOY1N8du
 efRUA4Ijkq9U2mF8o02NZZ7XQBSHJ3QWSnauZ4R3il+/l3bkxuxLYh6+WacVk2XVwwT+
 /5PXoEMf7oiQXnDwz0ne1WQlDb2jKN2JsMfy5PyhjwamiIQOnq1B4UeeFBF6J6NJeECz
 vf6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Xs3urb+CfK37NrDBLos1427ZQKhaGuo6xOveDYDdwk4=;
 b=Z+SJKMYmZmLI3uHjNpdJcvRWS2P7J3jgLAZqPjdH60UoThEY4t6anvTtbRa7F/+3rA
 450NYzU1LUFgnTp312ZP0fnd15VlqjPpR+tFUVYemfMxGOVVhPFrcN/9k9B0NtKgQgyi
 iJLrPP5IGkfpsOJ3q4x8w0rRfiwMJRjFb1THhH/ziouUjh/O2FaSNGroZgLNzsH1p1lv
 G1G9i/Wieo+P6OftMEcXeDCoyYyxQgnXkjJgMY+J4ydZtBp+x1WTnmzojmZ+m00ZfglF
 XH4SXghlZZspfCpqhK0omA39gynmqR4uJaUrUo2e1Gc/TSfXDSagpRdR0kSzEeG09Z4y
 lHBA==
X-Gm-Message-State: AOAM533J034NSYe39kQYZKRwC012zb0Y1IP7W3P9svdHodRNF3QSnssw
 nvgST6g9xm5k+MjgtOUCe5A=
X-Google-Smtp-Source: ABdhPJw9rc8OiQvJzlLG/fsJFsT7Qo05foEBmvzgcuYqLtl+aLiMxcLcARExzXnhKjvfu2LBv5YmCA==
X-Received: by 2002:adf:ce84:: with SMTP id r4mr12371922wrn.107.1632497489685; 
 Fri, 24 Sep 2021 08:31:29 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 u25sm9902248wmm.5.2021.09.24.08.31.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 24 Sep 2021 08:31:29 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Cc: daniel@ffwll.ch,
	tvrtko.ursulin@linux.intel.com
Date: Fri, 24 Sep 2021 17:30:59 +0200
Message-Id: <20210924153113.2159-13-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210924153113.2159-1-christian.koenig@amd.com>
References: <20210924153113.2159-1-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Fri, 24 Sep 2021 16:21:14 +0000
Subject: [Intel-gfx] [PATCH 13/27] drm/msm: use new iterator in
 msm_gem_describe
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

Simplifying the code a bit. Also drop the RCU read side lock since the
object is locked anyway.

Untested since I can't get the driver to compile on !ARM.

Signed-off-by: Christian König <christian.koenig@amd.com>
---
 drivers/gpu/drm/msm/msm_gem.c | 19 +++++--------------
 1 file changed, 5 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/msm/msm_gem.c b/drivers/gpu/drm/msm/msm_gem.c
index 22308a1b66fc..14907622769f 100644
--- a/drivers/gpu/drm/msm/msm_gem.c
+++ b/drivers/gpu/drm/msm/msm_gem.c
@@ -880,7 +880,7 @@ void msm_gem_describe(struct drm_gem_object *obj, struct seq_file *m,
 {
 	struct msm_gem_object *msm_obj = to_msm_bo(obj);
 	struct dma_resv *robj = obj->resv;
-	struct dma_resv_list *fobj;
+	struct dma_resv_iter cursor;
 	struct dma_fence *fence;
 	struct msm_gem_vma *vma;
 	uint64_t off = drm_vma_node_start(&obj->vma_node);
@@ -955,22 +955,13 @@ void msm_gem_describe(struct drm_gem_object *obj, struct seq_file *m,
 		seq_puts(m, "\n");
 	}
 
-	rcu_read_lock();
-	fobj = dma_resv_shared_list(robj);
-	if (fobj) {
-		unsigned int i, shared_count = fobj->shared_count;
-
-		for (i = 0; i < shared_count; i++) {
-			fence = rcu_dereference(fobj->shared[i]);
+	dma_resv_for_each_fence(&cursor, robj, true, fence) {
+		if (dma_resv_iter_is_exclusive(&cursor))
+			describe_fence(fence, "Exclusive", m);
+		else
 			describe_fence(fence, "Shared", m);
-		}
 	}
 
-	fence = dma_resv_excl_fence(robj);
-	if (fence)
-		describe_fence(fence, "Exclusive", m);
-	rcu_read_unlock();
-
 	msm_gem_unlock(obj);
 }
 
-- 
2.25.1

