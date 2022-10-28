Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BDBD611657
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Oct 2022 17:51:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B5AA10E863;
	Fri, 28 Oct 2022 15:51:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECE1310E85E
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Oct 2022 15:50:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666972248; x=1698508248;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ACTC2MFhq0xtY2Hj4d6/hk92/mMLNyWWb0MxgKuuFpw=;
 b=EsHs7SSAAv6JeRGSJd+/M8vXDCO+0QWnIDzrtXHJs26VTyTSEu33LB+6
 oOSjOVSki1mahi/AHaRuFO6yTtJ+MgylK3KhSLpCFPOcxq9+HsCk8Mw51
 3MDZJVMDHPhxz2O+U608MC3vrpx9Ko/6MNzH+vEmmmcWKW4YOKHISOBOH
 c9YZLnF5OV1RjxSLA6F8Ek1/RuF/FcW+BmyyNpyV+IZ2rYvujwbiGJMkn
 tiEprQata4BMxyzr66jP4Z4n4h1u4bFQdf9Qqg8x+m4Ny6URzHL0Xcqba
 Q5Octd8PaAL4AarH0SFn38vUu9suXM4ZI10Q6kdxA9vNVX5ybpd3P4xbw g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10514"; a="288237682"
X-IronPort-AV: E=Sophos;i="5.95,221,1661842800"; d="scan'208";a="288237682"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2022 08:50:48 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10514"; a="758120041"
X-IronPort-AV: E=Sophos;i="5.95,221,1661842800"; d="scan'208";a="758120041"
Received: from ahamill-mobl2.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.29.35])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2022 08:50:47 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Oct 2022 16:50:29 +0100
Message-Id: <20221028155029.494736-4-matthew.auld@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221028155029.494736-1-matthew.auld@intel.com>
References: <20221028155029.494736-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 4/4] drm/i915/dmabuf: Use scatterlist
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: "Michael J. Ruhl" <michael.j.ruhl@intel.com>

Update open coded for loop to use the standard scatterlist
for_each_sg API.

Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Signed-off-by: Michael J. Ruhl <michael.j.ruhl@intel.com>
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c b/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
index 8342e01a0d27..ec6f7ae47783 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
@@ -47,12 +47,10 @@ static struct sg_table *i915_gem_map_dma_buf(struct dma_buf_attachment *attach,
 	if (ret)
 		goto err_free;
 
-	src = obj->mm.pages->sgl;
 	dst = sgt->sgl;
-	for (i = 0; i < obj->mm.pages->orig_nents; i++) {
+	for_each_sg(obj->mm.pages->sgl, src, obj->mm.pages->orig_nents, i) {
 		sg_set_page(dst, sg_page(src), src->length, 0);
 		dst = sg_next(dst);
-		src = sg_next(src);
 	}
 
 	ret = dma_map_sgtable(attach->dev, sgt, dir, DMA_ATTR_SKIP_CPU_SYNC);
-- 
2.37.3

