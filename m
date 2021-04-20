Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 045903659CB
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Apr 2021 15:19:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F72C6E81E;
	Tue, 20 Apr 2021 13:19:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85C796E820;
 Tue, 20 Apr 2021 13:19:48 +0000 (UTC)
IronPort-SDR: bHZxIFJ8rO3xbAdxLHOEtjNG7VMI+rYVDDyLCNp458INP/6FT80IroXNjIsgkDloJsq13g+2da
 EU5l9A0e2lLQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9960"; a="192315860"
X-IronPort-AV: E=Sophos;i="5.82,237,1613462400"; d="scan'208";a="192315860"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2021 06:19:48 -0700
IronPort-SDR: IlYHd7r8E4vROJwzhCLR6h0j9k1NLIMpxVG26Zp6VgZx6bcITTZq7VjlGHCB1AEIM51/KtO6Rq
 sN9I5SghaqAQ==
X-IronPort-AV: E=Sophos;i="5.82,237,1613462400"; d="scan'208";a="534484888"
Received: from adrianwa-mobl.ger.corp.intel.com (HELO
 mwauld-desk1.ger.corp.intel.com) ([10.252.9.139])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2021 06:19:46 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 20 Apr 2021 14:18:40 +0100
Message-Id: <20210420131842.164163-3-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20210420131842.164163-1-matthew.auld@intel.com>
References: <20210420131842.164163-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/5] drm/i915/stolen: enforce the min_page_size
 contract
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
Cc: dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: CQ Tang <cq.tang@intel.com>

Since stolen can now be device local-memory underneath, we should try to
enforce any min_page_size restrictions when allocating pages.

Signed-off-by: CQ Tang <cq.tang@intel.com>
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_stolen.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
index 2ed1ca9aec75..4f9fe5aca37e 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
@@ -677,7 +677,8 @@ static int _i915_gem_object_stolen_init(struct intel_memory_region *mem,
 	if (!stolen)
 		return -ENOMEM;
 
-	ret = i915_gem_stolen_insert_node(i915, stolen, size, 4096);
+	ret = i915_gem_stolen_insert_node(i915, stolen, size,
+					  mem->min_page_size);
 	if (ret)
 		goto err_free;
 
@@ -843,8 +844,8 @@ i915_gem_object_create_stolen_for_preallocated(struct drm_i915_private *i915,
 
 	/* KISS and expect everything to be page-aligned */
 	if (GEM_WARN_ON(size == 0) ||
-	    GEM_WARN_ON(!IS_ALIGNED(size, I915_GTT_PAGE_SIZE)) ||
-	    GEM_WARN_ON(!IS_ALIGNED(stolen_offset, I915_GTT_MIN_ALIGNMENT)))
+	    GEM_WARN_ON(!IS_ALIGNED(size, mem->min_page_size)) ||
+	    GEM_WARN_ON(!IS_ALIGNED(stolen_offset, mem->min_page_size)))
 		return ERR_PTR(-EINVAL);
 
 	stolen = kzalloc(sizeof(*stolen), GFP_KERNEL);
-- 
2.26.3

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
