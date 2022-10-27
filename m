Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA93C60FBE9
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Oct 2022 17:29:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA3DD10E67A;
	Thu, 27 Oct 2022 15:28:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B6E210E67A
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Oct 2022 15:28:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666884536; x=1698420536;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=5eNryszaSVXfJApHN1x71iX4/hBbugVp7ICXFrDwlxA=;
 b=k5RMrYLz66Yux+i+62kvq9MSz3eySeBkzo5IArzBLu8lXXFNf3wuVlHf
 f8DJNHRPVJc8+31LgoGmu56boogsZaSxBUJr1PXxRnkHiTNT/kYq6veXu
 Xb03Uy+nxMnBw4Cs69X37wKyie9dUOBHAUnpRRBypm4vv+Ezw6G9y3g8E
 d4+HJ9TuhV4ygOorhDxd3CCQyYtviBhhOZa1l+Xu+mdh76bYSz9fdCc0X
 V5EWeox9F+a4SfTsweKNolGLpJonmghBngQ1JFaeVHZtyti7F6SgJbPk2
 VgqcR5Y0uZGh+CYV92x8pWXQkG9Mxtjx5Wx+BeYAZH6L+dbnceYE33rJW w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10513"; a="288651667"
X-IronPort-AV: E=Sophos;i="5.95,218,1661842800"; d="scan'208";a="288651667"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2022 08:28:55 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10513"; a="961662741"
X-IronPort-AV: E=Sophos;i="5.95,218,1661842800"; d="scan'208";a="961662741"
Received: from jpascuax-mobl3.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.28.212])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2022 08:28:54 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Oct 2022 16:27:22 +0100
Message-Id: <20221027152723.381060-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/dmabuf: fix sg_table handling in
 map_dma_buf
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

We need to iterate over the original entries here for the sg_table,
pulling out the struct page for each one, to be remapped. However
currently this incorrectly iterates over the final dma mapped entries,
which is likely just one gigantic sg entry if the iommu is enabled,
leading to us only mapping the first struct page (and any physically
contiguous pages following it), even if there is potentially lots more
data to follow.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/7306
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c b/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
index 07eee1c09aaf..05ebbdfd3b3b 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
@@ -40,13 +40,13 @@ static struct sg_table *i915_gem_map_dma_buf(struct dma_buf_attachment *attachme
 		goto err;
 	}
 
-	ret = sg_alloc_table(st, obj->mm.pages->nents, GFP_KERNEL);
+	ret = sg_alloc_table(st, obj->mm.pages->orig_nents, GFP_KERNEL);
 	if (ret)
 		goto err_free;
 
 	src = obj->mm.pages->sgl;
 	dst = st->sgl;
-	for (i = 0; i < obj->mm.pages->nents; i++) {
+	for (i = 0; i < obj->mm.pages->orig_nents; i++) {
 		sg_set_page(dst, sg_page(src), src->length, 0);
 		dst = sg_next(dst);
 		src = sg_next(src);
-- 
2.37.3

