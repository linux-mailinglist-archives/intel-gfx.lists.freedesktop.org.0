Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D80E314E8D
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Feb 2021 13:00:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 704026EB0D;
	Tue,  9 Feb 2021 12:00:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF9B56EB0C
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Feb 2021 12:00:44 +0000 (UTC)
IronPort-SDR: FvZfmlDFeUId+8YEEkXR1LI2pAjO7hrSKf95vhh5mLfokf/6AVXSxKjkYLkK1JYobJxOHY/9Tg
 LjkdH3eB+/LQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9889"; a="161019848"
X-IronPort-AV: E=Sophos;i="5.81,164,1610438400"; d="scan'208";a="161019848"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2021 04:00:44 -0800
IronPort-SDR: veZtwBI9ZpuogRI1u+M5urxKmJaVr/sAmAe34k/u8G7bEhZfslwFtf3pqZqUXxFf9M9pBaatHk
 Fgd0yJlhaG3w==
X-IronPort-AV: E=Sophos;i="5.81,164,1610438400"; d="scan'208";a="436069203"
Received: from tpomalle-mobl.ger.corp.intel.com (HELO
 mwauld-desk1.ger.corp.intel.com) ([10.252.21.147])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2021 04:00:43 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  9 Feb 2021 12:00:26 +0000
Message-Id: <20210209120027.229700-3-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210209120027.229700-1-matthew.auld@intel.com>
References: <20210209120027.229700-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 3/4] drm/i915/stolen: enforce the
 min_page_size contract
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

From: CQ Tang <cq.tang@intel.com>

Since stolen can now be device local-memory underneath, we should try to
enforce any min_page_size restrictions when allocating pages.

v2: Drop the min_page_size sanity checking around
stolen_insert_node_in_range. Given that this is a low-level interface we
shouldn't just assume that the chunks are pages intended to be inserted
into the GTT.

Signed-off-by: CQ Tang <cq.tang@intel.com>
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_stolen.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
index dfc3076abd0c..320270c35949 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
@@ -674,7 +674,8 @@ static int _i915_gem_object_stolen_init(struct intel_memory_region *mem,
 	if (!stolen)
 		return -ENOMEM;
 
-	ret = i915_gem_stolen_insert_node(i915, stolen, size, 4096);
+	ret = i915_gem_stolen_insert_node(i915, stolen, size,
+					  mem->min_page_size);
 	if (ret)
 		goto err_free;
 
@@ -814,8 +815,8 @@ i915_gem_object_create_stolen_for_preallocated(struct drm_i915_private *i915,
 
 	/* KISS and expect everything to be page-aligned */
 	if (GEM_WARN_ON(size == 0) ||
-	    GEM_WARN_ON(!IS_ALIGNED(size, I915_GTT_PAGE_SIZE)) ||
-	    GEM_WARN_ON(!IS_ALIGNED(stolen_offset, I915_GTT_MIN_ALIGNMENT)))
+	    GEM_WARN_ON(!IS_ALIGNED(size, mem->min_page_size)) ||
+	    GEM_WARN_ON(!IS_ALIGNED(stolen_offset, mem->min_page_size)))
 		return ERR_PTR(-EINVAL);
 
 	stolen = kzalloc(sizeof(*stolen), GFP_KERNEL);
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
