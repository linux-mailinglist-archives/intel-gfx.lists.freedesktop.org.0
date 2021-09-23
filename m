Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E66A415D26
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Sep 2021 13:57:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBB626ED0D;
	Thu, 23 Sep 2021 11:57:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com
 [IPv6:2a00:1450:4864:20::430])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D3B676E0EE
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Sep 2021 07:56:22 +0000 (UTC)
Received: by mail-wr1-x430.google.com with SMTP id t8so14678130wri.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Sep 2021 00:56:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=9ue7puBcgohS+7D/zNLeUPSF3Sf1Ar8z9127abKsq3w=;
 b=PL7lb9UvqeQe+UyrZ+u5efAWqbJfk8FAKuX5iRKLx+aph7/fLspjEfpC3ns+14U58w
 FHOM0g0W41qb4UpWNCcGQBZsAbhUnu5i79T7cIdGFQM9F3G/Ux28gb/WXHAx0xiVfQso
 zTpOCk8NHUiz82fRD0DUG0zn2sC7ME8pvCOMnRgCyMW8rKOSarzaNgRrqbL3GVXaY4k4
 5dEzi5bmGVRcBYKPcg6RLLGGcb0AYDfV2NUNVVy7dHTgvaVZOgs8XROW/gC6Ah91VEXp
 bpUKHwFdhm0NM3cSk/qCvx+luJiCR0C25ELhrVKIpsHBl+kEOP8+oDqiydnhNgDOwc7n
 rGUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9ue7puBcgohS+7D/zNLeUPSF3Sf1Ar8z9127abKsq3w=;
 b=TNYW4tOpo/3DM2CXwqf6Y2GvsZbey8au9AIE/g36QPh8t6jOE7YRvdsk+op6vsu6lW
 uijpgqmgs7+utXJPNc+mBaLxLObU3waiX6CraTbizE1rZr1+Qfa/6FICdnqKP7PGDgpL
 y3wu49X1WaBjU0vW3hL7RxRqIzXRIuHx2nXgETWGI/sv1SvIbs/inqSdr6TP3ij/u8Qz
 MoVHOplME0+YqTzsLC6Vo6OSqHGI4upunN638fOV9Q6Per5bH97kxaKOBxX/tNBlrP4G
 QDUvAuuA3ez5RwM5Y0wPCFrAwvKW9dweFi98BJRt1khcma2akpvjKPwApiZSixt/w3bU
 HvjQ==
X-Gm-Message-State: AOAM533AtUyX28mLpvPPkuRDMxrZ3XRWSQRubthOMtBoHXVIoKSQnlGU
 Np1umFY3US7kXdPHMddB31jPAMEqRrI=
X-Google-Smtp-Source: ABdhPJwBIRNH0zSG6K1zB4QtaRGm4dgLd74woIU9GvCLLLoJA8ucbd6WjtgSlUiwwgtXU/h4E9S8kA==
X-Received: by 2002:a7b:c409:: with SMTP id k9mr14302249wmi.153.1632383781400; 
 Thu, 23 Sep 2021 00:56:21 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 k19sm4280704wmr.21.2021.09.23.00.56.20
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Sep 2021 00:56:20 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Sep 2021 09:55:57 +0200
Message-Id: <20210923075608.2873-14-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210923075608.2873-1-christian.koenig@amd.com>
References: <20210923075608.2873-1-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Thu, 23 Sep 2021 11:57:22 +0000
Subject: [Intel-gfx] [PATCH 14/25] drm/i915: use the new iterator in
 i915_gem_busy_ioctl v2
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

This makes the function much simpler since the complex
retry logic is now handled else where.

Signed-off-by: Christian König <christian.koenig@amd.com>
Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_busy.c | 35 ++++++++++--------------
 1 file changed, 14 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_busy.c b/drivers/gpu/drm/i915/gem/i915_gem_busy.c
index 6234e17259c1..dc72b36dae54 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_busy.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_busy.c
@@ -82,8 +82,8 @@ i915_gem_busy_ioctl(struct drm_device *dev, void *data,
 {
 	struct drm_i915_gem_busy *args = data;
 	struct drm_i915_gem_object *obj;
-	struct dma_resv_list *list;
-	unsigned int seq;
+	struct dma_resv_iter cursor;
+	struct dma_fence *fence;
 	int err;
 
 	err = -ENOENT;
@@ -109,27 +109,20 @@ i915_gem_busy_ioctl(struct drm_device *dev, void *data,
 	 * to report the overall busyness. This is what the wait-ioctl does.
 	 *
 	 */
-retry:
-	seq = raw_read_seqcount(&obj->base.resv->seq);
-
-	/* Translate the exclusive fence to the READ *and* WRITE engine */
-	args->busy = busy_check_writer(dma_resv_excl_fence(obj->base.resv));
-
-	/* Translate shared fences to READ set of engines */
-	list = dma_resv_shared_list(obj->base.resv);
-	if (list) {
-		unsigned int shared_count = list->shared_count, i;
-
-		for (i = 0; i < shared_count; ++i) {
-			struct dma_fence *fence =
-				rcu_dereference(list->shared[i]);
-
+	args->busy = 0;
+	dma_resv_iter_begin(&cursor, obj->base.resv, true);
+	dma_resv_for_each_fence_unlocked(&cursor, fence) {
+		if (dma_resv_iter_is_restarted(&cursor))
+			args->busy = 0;
+
+		if (dma_resv_iter_is_exclusive(&cursor))
+			/* Translate the exclusive fence to the READ *and* WRITE engine */
+			args->busy |= busy_check_writer(fence);
+		else
+			/* Translate shared fences to READ set of engines */
 			args->busy |= busy_check_reader(fence);
-		}
 	}
-
-	if (args->busy && read_seqcount_retry(&obj->base.resv->seq, seq))
-		goto retry;
+	dma_resv_iter_end(&cursor);
 
 	err = 0;
 out:
-- 
2.25.1

