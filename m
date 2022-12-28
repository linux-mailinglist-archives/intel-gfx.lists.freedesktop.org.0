Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D7E06577C1
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Dec 2022 15:26:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C578810E3AC;
	Wed, 28 Dec 2022 14:26:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0951310E3AA
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Dec 2022 14:26:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672237605; x=1703773605;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cK8UrKAf2kCg1MQ5k+QIiIBNViSyo8s0XYcamE9/Ujk=;
 b=TVdGBQxiGCoWSwvY5V+Ru31R6FYTcd9aTke6/PFrMfGc7EuSzNWV3JWa
 SzEnw+IbG3ZY3bvDdWCZCfn9OrIux5eM6e16/K9mv2OAoo+kBAM1HcVZi
 3x36B1YIsIjWk+wfZgDAZhDE/06qeNgtrD6OxzdrT048yg9JxRKVT6D/5
 lG3as9cmeANa3U83LL06kKjkppqhvqTY/sUO/46p/wBZfzLqLuj9NhbMU
 PpTfRp7uaPBdyXMxslQu6XVHD72ZnzRyMyuwdS0a4P7dH5N89WPB7Nge2
 HqDxe8dvNpePLhxM4mU5im+Ht4bRXrz2gCfvApW9HOeGTdBOq83UiV/jM Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10574"; a="322113503"
X-IronPort-AV: E=Sophos;i="5.96,280,1665471600"; d="scan'208";a="322113503"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Dec 2022 06:26:44 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10574"; a="982101472"
X-IronPort-AV: E=Sophos;i="5.96,280,1665471600"; d="scan'208";a="982101472"
Received: from rsznejde-mobl.ger.corp.intel.com (HELO
 paris.ger.corp.intel.com) ([10.249.140.251])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Dec 2022 06:26:40 -0800
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 28 Dec 2022 16:25:32 +0200
Message-Id: <20221228142533.880703-6-gwan-gyeong.mun@intel.com>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20221228142533.880703-1-gwan-gyeong.mun@intel.com>
References: <20221228142533.880703-1-gwan-gyeong.mun@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v15 5/6] drm/i915: Use error code as -E2BIG when
 the size of gem ttm object is too large
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
Cc: thomas.hellstrom@linux.intel.com, andrzej.hajda@intel.com,
 jani.nikula@intel.com, chris@chris-wilson.co.uk, matthew.auld@intel.com,
 mchehab@kernel.org, nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The ttm_bo_init_reserved() functions returns -ENOSPC if the size is too big
to add vma. The direct function that returns -ENOSPC is drm_mm_insert_node_in_range().
To handle the same error as other code returning -E2BIG when the size is
too large, it converts return value to -E2BIG.

Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Matthew Auld <matthew.auld@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Signed-off-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>
Reviewed-by: Mauro Carvalho Chehab <mchehab@kernel.org>
Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_ttm.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
index ae10c7bdd509..8cfed1bef629 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
@@ -1312,6 +1312,17 @@ int __i915_gem_ttm_object_init(struct intel_memory_region *mem,
 	ret = ttm_bo_init_reserved(&i915->bdev, i915_gem_to_ttm(obj), bo_type,
 				   &i915_sys_placement, page_size >> PAGE_SHIFT,
 				   &ctx, NULL, NULL, i915_ttm_bo_destroy);
+
+	/*
+	 * XXX: The ttm_bo_init_reserved() functions returns -ENOSPC if the size
+	 * is too big to add vma. The direct function that returns -ENOSPC is
+	 * drm_mm_insert_node_in_range(). To handle the same error as other code
+	 * that returns -E2BIG when the size is too large, it converts -ENOSPC to
+	 * -E2BIG.
+	 */
+	if (size >> PAGE_SHIFT > INT_MAX && ret == -ENOSPC)
+		ret = -E2BIG;
+
 	if (ret)
 		return i915_ttm_err_to_gem(ret);
 
-- 
2.37.1

