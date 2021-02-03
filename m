Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 526BA30D990
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Feb 2021 13:12:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC07D89D8D;
	Wed,  3 Feb 2021 12:12:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5896E89D89
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Feb 2021 12:12:06 +0000 (UTC)
IronPort-SDR: 3dvPLb0tJ36hhBTeDOwGgSPCuIbqcD0HWS/meOEQp3BDhA9Nss8gwQ7bwcM3mcJsmq4l/36fYZ
 08oJokpfY0zw==
X-IronPort-AV: E=McAfee;i="6000,8403,9883"; a="160196289"
X-IronPort-AV: E=Sophos;i="5.79,398,1602572400"; d="scan'208";a="160196289"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2021 04:12:05 -0800
IronPort-SDR: rAkMM5iqxNMdv5qgwr9RO7UvEzg+c9Vd4hG5sz8Xr76FBkCxad3cIas5VQIo6Emoz8avgS4/0I
 tRVidKQJD1dg==
X-IronPort-AV: E=Sophos;i="5.79,398,1602572400"; d="scan'208";a="372359049"
Received: from mcampone-mobl1.ger.corp.intel.com (HELO
 mwauld-desk1.ger.corp.intel.com) ([10.252.21.36])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2021 04:12:04 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  3 Feb 2021 12:11:18 +0000
Message-Id: <20210203121119.481146-3-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210203121119.481146-1-matthew.auld@intel.com>
References: <20210203121119.481146-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/4] drm/i915/gtt: make ggtt.insert_page depend
 on mappable aperture
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The vm insert_page is useful to insert a vma-less page into the GGTT,
which so far is always to map something through the mappable aperture,
usually when the entire VMA doesn't fit, or if we specifically don't
want to hog it, since it's generally quite limited in size.

On platforms including DG1 the mappable aperture is gone, and so
insert_page is effectively unused and untested. In the next patch we
need to extend the flags to include the PTE_LM bit when binding into the
GGTT, so rather than extend insert_page to potentially account for this,
we can instead just drop support for the hook on such platforms, at
least until we come up with a valid use.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_ggtt.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index fc399ac16eda..30187483cd92 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -882,7 +882,9 @@ static int gen8_gmch_probe(struct i915_ggtt *ggtt)
 
 	ggtt->vm.total = (size / sizeof(gen8_pte_t)) * I915_GTT_PAGE_SIZE;
 	ggtt->vm.cleanup = gen6_gmch_remove;
-	ggtt->vm.insert_page = gen8_ggtt_insert_page;
+
+	if (ggtt->mappable_end)
+		ggtt->vm.insert_page = gen8_ggtt_insert_page;
 	ggtt->vm.clear_range = nop_clear_range;
 	if (intel_scanout_needs_vtd_wa(i915))
 		ggtt->vm.clear_range = gen8_ggtt_clear_range;
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
