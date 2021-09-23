Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 826E9415D3D
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Sep 2021 13:58:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D2ED6ED0B;
	Thu, 23 Sep 2021 11:58:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com
 [IPv6:2a00:1450:4864:20::436])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6FFEF6ECF8
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Sep 2021 07:56:20 +0000 (UTC)
Received: by mail-wr1-x436.google.com with SMTP id d21so14423217wra.12
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Sep 2021 00:56:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=Xs3urb+CfK37NrDBLos1427ZQKhaGuo6xOveDYDdwk4=;
 b=ZwDfpOhbmWhwLMk8IJuyvyPJQPys8ZM/DIvja7+YSw8UFRiMqx8auI8AtQCCP2IX7W
 Noiu0gSXP1pv6YQM3ijzXSAFP4F2l9WrXFokxpBMNLDWzPu4qQQw7Gb70Iz7pWPS+zMP
 sq9cFCx7KW3JiijFCQNEqL9yFFoC5aNqhL0rQnEHwZhKEdaHD9A3rZKjedBuw+RmbOoO
 rlkQnNk7CU7KGdBeKSBmhneo2lVpyoEyiuYKVu9eoVwTT7Cj1zPo8Q0bJ6uhBmrxZQYK
 JXVE1rE98HYPQ9pqJpMrQd1EMUgdrpgyvkiLxVCFotu0f//rY0865bQrt/fuPezu9xJj
 +akA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Xs3urb+CfK37NrDBLos1427ZQKhaGuo6xOveDYDdwk4=;
 b=dTfTqM4CRNBLM4q8BK75d23meRureN/LKQ9lpXL5BBPNCfl+Bn567LElIdWjWxLYua
 LXQGa+utAt1C/p0Kf/Ewr46sHjKFtgi/HAPjKZ33FP2gonsce1dLHOj0fP5A1/vc8cOr
 Fu0jRfpzAN7Z5IZ+ZyWI6wyV9p/bpnxJTGjST2vTDtQb4iXyqqKklyb14w+oJ7mFIQZg
 5GPEUei0Lw+ZuxH7Z4ZgTH6ENY5eEiPkEc2ndAKSfElrAEzzz8lVWWVmedC2FPsn8AXW
 uFq7frhCZM8ZFja4x0WkRLikBcge5v5JIRqvLaY8HbXSB57nlJJmIJZQBzq0G3HfWrE8
 +uYA==
X-Gm-Message-State: AOAM531wyFzb2oIVYPb+p4+gWistdIrXODEn8NWhabE4zUvbud84T4ki
 N0W1W3ZU0J56RFAlTbQVUfL7EDnlDyY=
X-Google-Smtp-Source: ABdhPJwRagv4wSh+wbPrYAhKMMEMkBbbGAn2z0ndhVG8dWc3kpkcOselyLfnRt42XprQqGkh1LQs4Q==
X-Received: by 2002:a1c:800e:: with SMTP id b14mr14917314wmd.54.1632383778992; 
 Thu, 23 Sep 2021 00:56:18 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 k19sm4280704wmr.21.2021.09.23.00.56.18
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Sep 2021 00:56:18 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Sep 2021 09:55:54 +0200
Message-Id: <20210923075608.2873-11-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210923075608.2873-1-christian.koenig@amd.com>
References: <20210923075608.2873-1-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Thu, 23 Sep 2021 11:57:22 +0000
Subject: [Intel-gfx] [PATCH 11/25] drm/msm: use new iterator in
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

