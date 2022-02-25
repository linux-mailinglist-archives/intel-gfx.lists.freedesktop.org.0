Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2793E4C4597
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Feb 2022 14:13:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76A1210E1F1;
	Fri, 25 Feb 2022 13:13:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5455D10E1F1
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Feb 2022 13:13:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645794805; x=1677330805;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=C7eh1+BLbDff+7mbto9l8mW7ck+4UPapLdPCoLI3BxA=;
 b=oEDMIxJG37JytzgRmyCrPO5mhPDfbgSHrhuZA9nwCi+qvT2ssmeoxjjZ
 5mji44zUOWIgtbMfGHHO/0WSurvLv1X69qXxS7Ksm0iN9T0QHajdAO0sv
 f7jd6cL0gkHxKTk/Y/2Kkfgs4qdSMaBUlq4mZvCnx0PcdXDTYjun5rKpm
 vo8UMp5A4qGGpOTJPP6EjWnvG4xyXyavruhReorkky4hwt/4BZ78NeMtH
 Ro4bV/9A9z+1zsjrKd0TfMcZnZdd1sVd0jxSmebyS7suXeW90Y6H+h9r5
 FhbgYD334Bv31xwwWbJOcA7N3sCBshagMcALszsQL3SoLTe6jjxHhY4Kj g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10268"; a="313209647"
X-IronPort-AV: E=Sophos;i="5.90,136,1643702400"; d="scan'208";a="313209647"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2022 05:13:25 -0800
X-IronPort-AV: E=Sophos;i="5.90,136,1643702400"; d="scan'208";a="549253915"
Received: from asaechnx-mobl2.ccr.corp.intel.com (HELO
 hades.ger.corp.intel.com) ([10.252.49.63])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2022 05:13:23 -0800
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Feb 2022 15:13:16 +0200
Message-Id: <20220225131316.1433515-3-gwan-gyeong.mun@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220225131316.1433515-1-gwan-gyeong.mun@intel.com>
References: <20220225131316.1433515-1-gwan-gyeong.mun@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/dmabuf: Fix prime_mmap to work
 when using LMEM
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

The current implementation of i915 prime mmap only works when initializing
drm_i915_gem_object with shmem_region.
When using LMEM, drm_i915_gem_object is initialized with ttm_system_region.
In order to make prime mmap work even this case, when using LMEM
(when using ttm in i915), dma_buf_ops.mmap callback function calls
drm_gem_prime_mmap(). drm_gem_prime_mmap() of drm core calls internally
i915_gem_mmap() so that prime mmap can perform normally.
The fake offset is processed inside drm_gem_prime_mmap().

Testcase: igt/prime_mmap

Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Cc: Matthew Auld <matthew.auld@intel.com>
Signed-off-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c b/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
index af899ae1f3c7..f5062d0c6333 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
@@ -93,11 +93,15 @@ static void i915_gem_dmabuf_vunmap(struct dma_buf *dma_buf,
 static int i915_gem_dmabuf_mmap(struct dma_buf *dma_buf, struct vm_area_struct *vma)
 {
 	struct drm_i915_gem_object *obj = dma_buf_to_obj(dma_buf);
+	struct drm_i915_private *i915 = to_i915(obj->base.dev);
 	int ret;
 
 	if (obj->base.size < vma->vm_end - vma->vm_start)
 		return -EINVAL;
 
+	if (HAS_LMEM(i915))
+		return drm_gem_prime_mmap(&obj->base, vma);
+
 	if (!obj->base.filp)
 		return -ENODEV;
 
-- 
2.34.1

