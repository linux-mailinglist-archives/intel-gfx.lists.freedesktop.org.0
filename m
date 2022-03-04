Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DAFA4CD1CE
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Mar 2022 10:59:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DC1210E4B1;
	Fri,  4 Mar 2022 09:59:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4A0710E47E
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Mar 2022 09:59:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646387990; x=1677923990;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=pLPt8QmJBeYeVpKMEQkXBXNCq/u9oEe0Cru2ra8whHg=;
 b=S6qzHv+NqfQ/8uTuUSMFlCidYk3V9RaMVAUuzcOIjb7DyoGmnh17EWu/
 fiXZivm3v1VkcRNUPiH+Vit70yCtGSWj/8WC0ALgBCPRUnm+/iu7vf87C
 Kl3kKYRU4CWaOMbJwiEI6F2UCh2A7LtO54U9UPC7tI+gDf0RKP6rONHYG
 Qe4lsBKAk/Bu7nJa3C6ll/LCMP2crT4HI9gVOomfaGx1lShogPCFWLn9T
 v2Dzvkzmvqb6sask90/knBmvD9M18Yv/MEVsMUT42pxfIykgz332l0L1G
 n2Xi77wU3z2MQTy1PzoNOhtjPJr2fD9bURrDsAClme2VosgzQ+blsdGEe w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10275"; a="317170033"
X-IronPort-AV: E=Sophos;i="5.90,154,1643702400"; d="scan'208";a="317170033"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2022 01:59:50 -0800
X-IronPort-AV: E=Sophos;i="5.90,154,1643702400"; d="scan'208";a="710284647"
Received: from vkats-mobl1.ccr.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.28.8])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2022 01:59:49 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  4 Mar 2022 09:59:33 +0000
Message-Id: <20220304095934.925036-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 1/2] drm/i915/fbdev: fixup setting screen_size
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

Since we are actually mapping the object and not the vma, when dealing
with LMEM, we should be careful and use the backing store size here,
since the vma->node.size could have all kinds of funny padding
constraints, which could result in us writing to OOB address.

v2(Chris):
  - Prefer vma->size here, which should be the backing store size. Some
    more rework is needed here to stop using node.size in some other
    places.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbdev.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
index 2cd62a187df3..221336178991 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
@@ -279,7 +279,7 @@ static int intelfb_create(struct drm_fb_helper *helper,
 		/* Our framebuffer is the entirety of fbdev's system memory */
 		info->fix.smem_start =
 			(unsigned long)(ggtt->gmadr.start + vma->node.start);
-		info->fix.smem_len = vma->node.size;
+		info->fix.smem_len = vma->size;
 	}
 
 	vaddr = i915_vma_pin_iomap(vma);
@@ -290,7 +290,7 @@ static int intelfb_create(struct drm_fb_helper *helper,
 		goto out_unpin;
 	}
 	info->screen_base = vaddr;
-	info->screen_size = vma->node.size;
+	info->screen_size = vma->size;
 
 	drm_fb_helper_fill_info(info, &ifbdev->helper, sizes);
 
-- 
2.34.1

