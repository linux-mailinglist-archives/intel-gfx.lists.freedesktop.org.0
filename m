Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3661E51DF82
	for <lists+intel-gfx@lfdr.de>; Fri,  6 May 2022 21:09:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCDC910E1D1;
	Fri,  6 May 2022 19:09:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B1F310E1D1
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 May 2022 19:09:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651864156; x=1683400156;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0JsMi73MMytiom/DFhnzD32R9w2A1ssHqX8+/bTeU18=;
 b=m1avJZSuxqTTvz2xlfJrSZRbvhNTKeLOe0N11h6Bue5BI82SgoyrNsjg
 9oTpmuwKOQ0yAXJjJRzX/FVx3UCgVkKxSZszPavgOEXtp4cbQAG9uwwZk
 tydbF0j4J7++HpMa+99wN+smOUPZYwFvMdhFBHaw3LQ5Td6qjPUiYyLJt
 e74Hx+FZTearYB35WeLlV/IkZS6gbUC/rZZt2LTkjg4eHyXmFXl9hjEkm
 MH8bicRgv2Bl/37tjaXyeADBE8vbhP0bN2rCRsQ2Ep91WZwalOeeyhdAx
 nEhJz/Ue8zHGh3mIvM4oHlRNsZchDCxuW6LRlNbi9cFSpi9RKLQeuWDoa A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10339"; a="331543157"
X-IronPort-AV: E=Sophos;i="5.91,205,1647327600"; d="scan'208";a="331543157"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2022 12:09:15 -0700
X-IronPort-AV: E=Sophos;i="5.91,205,1647327600"; d="scan'208";a="654825090"
Received: from awvttdev-05.aw.intel.com ([10.228.212.156])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2022 12:09:15 -0700
From: "Michael J. Ruhl" <michael.j.ruhl@intel.com>
To: intel-gfx@lists.freedesktop.org,
	airlied@linux.ie,
	daniel@ffwll.ch
Date: Fri,  6 May 2022 15:08:47 -0400
Message-Id: <20220506190847.480320-3-michael.j.ruhl@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20220506190847.480320-1-michael.j.ruhl@intel.com>
References: <20220506190847.480320-1-michael.j.ruhl@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/dmabuf: Use scatterlist
 for_each_sg API
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
Cc: lucas.demarchi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Update open coded for loop to use the standard scatterlist
for_each_sg API.

Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Signed-off-by: Michael J. Ruhl <michael.j.ruhl@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c b/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
index 5f327eac26e6..3006e60e2d51 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
@@ -47,12 +47,10 @@ static struct sg_table *i915_gem_map_dma_buf(struct dma_buf_attachment *attach,
 	if (ret)
 		goto err_free;
 
-	src = obj->mm.pages->sgl;
 	dst = sgt->sgl;
-	for (i = 0; i < obj->mm.pages->nents; i++) {
+	for_each_sg(obj->mm.pages->sgl, src, obj->mm.pages->nents, i) {
 		sg_set_page(dst, sg_page(src), src->length, 0);
 		dst = sg_next(dst);
-		src = sg_next(src);
 	}
 
 	ret = dma_map_sgtable(attach->dev, sgt, dir, DMA_ATTR_SKIP_CPU_SYNC);
-- 
2.31.1

