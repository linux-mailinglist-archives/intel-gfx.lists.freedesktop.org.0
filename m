Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52D3F4C4596
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Feb 2022 14:13:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B0CE10E1C3;
	Fri, 25 Feb 2022 13:13:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 54F5510E1F1
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Feb 2022 13:13:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645794803; x=1677330803;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=j4TzbDVGZaR4QwCMd9W6ZrbxDmQ+p0hPPVxgZU5O4dg=;
 b=l4aTz508qJ3kE7m/r5JMELjxsSqlCKNe/j2AYvfyaDX4KveW6lIoYSJS
 n2i9MxzoROLfX4vyLA+fvupUHdK6XwW774j70pdCDCQnDDTDGwKoNdKdi
 4gzevMCNrfHqnxGy0EGxPiHnTbkjdHsg+nlWPD8oMYtn0S036Ix+2BPvd
 pidJcdnQdPO1JmYSV2PfV9jMlcshRVy5cu9PNCXVyUHbqIU08WfxBdMh7
 p6x5NfdCX+899b0H1aloA7bI7znwF/mWRTzFSyvjXynDZbAHEGlwfEVBa
 QsmNvMBZ7ZS9lPo5z3D66UcQkb/rP/qzOS8Jk4vAT2tCh3z5TgBv3CVwd w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10268"; a="313209639"
X-IronPort-AV: E=Sophos;i="5.90,136,1643702400"; d="scan'208";a="313209639"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2022 05:13:23 -0800
X-IronPort-AV: E=Sophos;i="5.90,136,1643702400"; d="scan'208";a="549253902"
Received: from asaechnx-mobl2.ccr.corp.intel.com (HELO
 hades.ger.corp.intel.com) ([10.252.49.63])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2022 05:13:21 -0800
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Feb 2022 15:13:15 +0200
Message-Id: <20220225131316.1433515-2-gwan-gyeong.mun@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220225131316.1433515-1-gwan-gyeong.mun@intel.com>
References: <20220225131316.1433515-1-gwan-gyeong.mun@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/dmabuf: Update
 dma_buf_ops.unmap_dma_buf callback to use drm_gem_unmap_dma_buf()
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
Cc: thomas.hellstrom@linux.intel.com, matthew.auld@intel.com,
 daniel.vetter@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The dma_buf_ops.unmap_dma_buf callback used in i915,
i915_gem_unmap_dma_buf(), has the same code as drm_gem_unmap_dma_buf().
In order to eliminate defining and using duplicate function, it updates
the dma_buf_ops.unmap_dma_buf callback to use drm_gem_unmap_dma_buf().

Signed-off-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c | 11 +----------
 1 file changed, 1 insertion(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c b/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
index 13917231ae81..af899ae1f3c7 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
@@ -66,15 +66,6 @@ static struct sg_table *i915_gem_map_dma_buf(struct dma_buf_attachment *attachme
 	return ERR_PTR(ret);
 }
 
-static void i915_gem_unmap_dma_buf(struct dma_buf_attachment *attachment,
-				   struct sg_table *sg,
-				   enum dma_data_direction dir)
-{
-	dma_unmap_sgtable(attachment->dev, sg, dir, DMA_ATTR_SKIP_CPU_SYNC);
-	sg_free_table(sg);
-	kfree(sg);
-}
-
 static int i915_gem_dmabuf_vmap(struct dma_buf *dma_buf,
 				struct iosys_map *map)
 {
@@ -209,7 +200,7 @@ static const struct dma_buf_ops i915_dmabuf_ops =  {
 	.attach = i915_gem_dmabuf_attach,
 	.detach = i915_gem_dmabuf_detach,
 	.map_dma_buf = i915_gem_map_dma_buf,
-	.unmap_dma_buf = i915_gem_unmap_dma_buf,
+	.unmap_dma_buf = drm_gem_unmap_dma_buf,
 	.release = drm_gem_dmabuf_release,
 	.mmap = i915_gem_dmabuf_mmap,
 	.vmap = i915_gem_dmabuf_vmap,
-- 
2.34.1

