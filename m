Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AE9DC200B7A
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jun 2020 16:31:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CFC446E0D2;
	Fri, 19 Jun 2020 14:31:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com
 [IPv6:2a00:1450:4864:20::341])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C5226E0D2
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Jun 2020 14:31:12 +0000 (UTC)
Received: by mail-wm1-x341.google.com with SMTP id g75so536254wme.5
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Jun 2020 07:31:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=BwKutQLBvEAbQCHtGNTqkk9jOzpK5BksbCZgOzVzkI0=;
 b=BO6JUGMxyZDjoZUAuvkPrPPV7WG2foB2Lb028KLeDUiK9VbK1TH3JCRfsHiwY4JsyO
 XIJmTkvJBx95PEk/ZMeytfq1y8IOlX8/2OuJnG/IE4ZKhiPBM9QJMP/twJnSmw6fvjBN
 wQ8jeDY9Go5RN8+x1y0s8hQbH+fFEy1heMEr2Ze7GRJ3OQYT/WcFVySwORZg+6KkOzjQ
 KkCXutnfpq+edrmF029ThVOQV4YdMMnv1lo+cDUPdbKYpbJ6o2eGHXSETjjjAfkIfKIA
 a7rk0Uk9D4ZkhLntRioViYzkq9JPwqEd9ORWesaa0qtOM9+5i+A6zxs2ZyZ+LL+qiae+
 9I8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=BwKutQLBvEAbQCHtGNTqkk9jOzpK5BksbCZgOzVzkI0=;
 b=e690Elvbsrmr7Sphowgh/IqYcw1bt6qaQUQfWZJ3HY4n23bC/bGFq++FwYlWTBzT+Y
 HXURLVZCvvVDrtMitdHXchm9HdTzDAhPl0o6yiYf/WteDxtPHoeTirZo4Qe0Kejsa/ih
 MTUvozqDZ8Vof6rmxkLeTIcJhO5Pee6NlcKEtuxKOn387bHmFUZbRRC6lIg1StN3QR8f
 QCeqxtuDxuwJsXt9HfbIbJyXe9MZPvnbaum7CO+C/gQWVhPtiO+12Sb/xgaNeP4tC4ix
 tMAs4+KBI1w7eCHQ4H+YpZ5IKCb+GKnE62TzKWgBH52uz8+l2HDgbNVeGUEyTD3P+3dD
 Nsaw==
X-Gm-Message-State: AOAM530lZEeMITWUSWzli8XX1pPuzLEJzTJYBRs7Xj4G70gfnD5clCYp
 rmFLBjXuu7SxGsi43bJ4HHC8nKQJ
X-Google-Smtp-Source: ABdhPJzpN2uHGMXaCvaM2VWxeI3ibuId1ByyUFNGAZ6YHn1aIre3Nr/IGQOxIQJB9VcH5gm6IbfSPw==
X-Received: by 2002:a05:600c:2284:: with SMTP id
 4mr3835303wmf.57.1592577070225; 
 Fri, 19 Jun 2020 07:31:10 -0700 (PDT)
Received: from build.alporthouse.com ([78.156.65.138])
 by smtp.gmail.com with ESMTPSA id x186sm7185746wmg.8.2020.06.19.07.31.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Jun 2020 07:31:09 -0700 (PDT)
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 19 Jun 2020 15:31:05 +0100
Message-Id: <20200619143106.10356-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200619143106.10356-1-chris@chris-wilson.co.uk>
References: <20200619143106.10356-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/gvt: Drop redundant
 prepare_write/pin_pages
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Since gvt calls pin_map for the shadow batch buffer, this makes the
action of prepare_write [+pin_pages] redundant. We can write into the
obj->mm.mapping directory and the flush_map routine knows when it has to
flush the cpu cache afterwards.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gvt/cmd_parser.c | 14 +-------
 drivers/gpu/drm/i915/gvt/scheduler.c  | 51 ++++++++-------------------
 drivers/gpu/drm/i915/gvt/scheduler.h  |  2 --
 3 files changed, 15 insertions(+), 52 deletions(-)

diff --git a/drivers/gpu/drm/i915/gvt/cmd_parser.c b/drivers/gpu/drm/i915/gvt/cmd_parser.c
index 8b87f130f7f1..f1940939260a 100644
--- a/drivers/gpu/drm/i915/gvt/cmd_parser.c
+++ b/drivers/gpu/drm/i915/gvt/cmd_parser.c
@@ -1904,19 +1904,10 @@ static int perform_bb_shadow(struct parser_exec_state *s)
 		goto err_free_bb;
 	}
 
-	ret = i915_gem_object_prepare_write(bb->obj, &bb->clflush);
-	if (ret)
-		goto err_free_obj;
-
 	bb->va = i915_gem_object_pin_map(bb->obj, I915_MAP_WB);
 	if (IS_ERR(bb->va)) {
 		ret = PTR_ERR(bb->va);
-		goto err_finish_shmem_access;
-	}
-
-	if (bb->clflush & CLFLUSH_BEFORE) {
-		drm_clflush_virt_range(bb->va, bb->obj->base.size);
-		bb->clflush &= ~CLFLUSH_BEFORE;
+		goto err_free_obj;
 	}
 
 	ret = copy_gma_to_hva(s->vgpu, mm,
@@ -1935,7 +1926,6 @@ static int perform_bb_shadow(struct parser_exec_state *s)
 	INIT_LIST_HEAD(&bb->list);
 	list_add(&bb->list, &s->workload->shadow_bb);
 
-	bb->accessing = true;
 	bb->bb_start_cmd_va = s->ip_va;
 
 	if ((s->buf_type == BATCH_BUFFER_INSTRUCTION) && (!s->is_ctx_wa))
@@ -1956,8 +1946,6 @@ static int perform_bb_shadow(struct parser_exec_state *s)
 	return 0;
 err_unmap:
 	i915_gem_object_unpin_map(bb->obj);
-err_finish_shmem_access:
-	i915_gem_object_finish_access(bb->obj);
 err_free_obj:
 	i915_gem_object_put(bb->obj);
 err_free_bb:
diff --git a/drivers/gpu/drm/i915/gvt/scheduler.c b/drivers/gpu/drm/i915/gvt/scheduler.c
index 8fc2ad4517e9..3c3b9842bbbd 100644
--- a/drivers/gpu/drm/i915/gvt/scheduler.c
+++ b/drivers/gpu/drm/i915/gvt/scheduler.c
@@ -509,26 +509,18 @@ static int prepare_shadow_batch_buffer(struct intel_vgpu_workload *workload)
 			bb->bb_start_cmd_va = workload->shadow_ring_buffer_va
 				+ bb->bb_offset;
 
-		if (bb->ppgtt) {
-			/* for non-priv bb, scan&shadow is only for
-			 * debugging purpose, so the content of shadow bb
-			 * is the same as original bb. Therefore,
-			 * here, rather than switch to shadow bb's gma
-			 * address, we directly use original batch buffer's
-			 * gma address, and send original bb to hardware
-			 * directly
-			 */
-			if (bb->clflush & CLFLUSH_AFTER) {
-				drm_clflush_virt_range(bb->va,
-						bb->obj->base.size);
-				bb->clflush &= ~CLFLUSH_AFTER;
-			}
-			i915_gem_object_finish_access(bb->obj);
-			bb->accessing = false;
-
-		} else {
+		/*
+		 * For non-priv bb, scan&shadow is only for
+		 * debugging purpose, so the content of shadow bb
+		 * is the same as original bb. Therefore,
+		 * here, rather than switch to shadow bb's gma
+		 * address, we directly use original batch buffer's
+		 * gma address, and send original bb to hardware
+		 * directly
+		 */
+		if (!bb->ppgtt) {
 			bb->vma = i915_gem_object_ggtt_pin(bb->obj,
-					NULL, 0, 0, 0);
+							   NULL, 0, 0, 0);
 			if (IS_ERR(bb->vma)) {
 				ret = PTR_ERR(bb->vma);
 				goto err;
@@ -539,27 +531,15 @@ static int prepare_shadow_batch_buffer(struct intel_vgpu_workload *workload)
 			if (gmadr_bytes == 8)
 				bb->bb_start_cmd_va[2] = 0;
 
-			/* No one is going to touch shadow bb from now on. */
-			if (bb->clflush & CLFLUSH_AFTER) {
-				drm_clflush_virt_range(bb->va,
-						bb->obj->base.size);
-				bb->clflush &= ~CLFLUSH_AFTER;
-			}
-
-			ret = i915_gem_object_set_to_gtt_domain(bb->obj,
-								false);
-			if (ret)
-				goto err;
-
 			ret = i915_vma_move_to_active(bb->vma,
 						      workload->req,
 						      0);
 			if (ret)
 				goto err;
-
-			i915_gem_object_finish_access(bb->obj);
-			bb->accessing = false;
 		}
+
+		/* No one is going to touch shadow bb from now on. */
+		i915_gem_object_flush_map(bb->obj);
 	}
 	return 0;
 err:
@@ -630,9 +610,6 @@ static void release_shadow_batch_buffer(struct intel_vgpu_workload *workload)
 
 	list_for_each_entry_safe(bb, pos, &workload->shadow_bb, list) {
 		if (bb->obj) {
-			if (bb->accessing)
-				i915_gem_object_finish_access(bb->obj);
-
 			if (bb->va && !IS_ERR(bb->va))
 				i915_gem_object_unpin_map(bb->obj);
 
diff --git a/drivers/gpu/drm/i915/gvt/scheduler.h b/drivers/gpu/drm/i915/gvt/scheduler.h
index 15d317f2a4a4..64e7a0b791c3 100644
--- a/drivers/gpu/drm/i915/gvt/scheduler.h
+++ b/drivers/gpu/drm/i915/gvt/scheduler.h
@@ -124,8 +124,6 @@ struct intel_vgpu_shadow_bb {
 	struct i915_vma *vma;
 	void *va;
 	u32 *bb_start_cmd_va;
-	unsigned int clflush;
-	bool accessing;
 	unsigned long bb_offset;
 	bool ppgtt;
 };
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
