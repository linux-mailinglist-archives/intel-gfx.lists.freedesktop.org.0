Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EDD2423A67
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Oct 2021 11:17:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8381A6F646;
	Wed,  6 Oct 2021 09:16:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 183C06F645;
 Wed,  6 Oct 2021 09:16:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10128"; a="225843510"
X-IronPort-AV: E=Sophos;i="5.85,350,1624345200"; d="scan'208";a="225843510"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2021 02:16:46 -0700
X-IronPort-AV: E=Sophos;i="5.85,350,1624345200"; d="scan'208";a="589690813"
Received: from dcharle1-mobl1.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.19.138])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2021 02:16:45 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org,
 =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Date: Wed,  6 Oct 2021 10:16:13 +0100
Message-Id: <20211006091614.970596-8-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20211006091614.970596-1-matthew.auld@intel.com>
References: <20211006091614.970596-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v7 8/8] drm/i915/ttm: enable shmem tt backend
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

Turn on the shmem tt backend, and enable shrinking.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Reviewed-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_ttm.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
index 0006ab35cd4d..c889beb7696e 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
@@ -1094,7 +1094,8 @@ static u64 i915_ttm_mmap_offset(struct drm_i915_gem_object *obj)
 
 static const struct drm_i915_gem_object_ops i915_gem_ttm_obj_ops = {
 	.name = "i915_gem_object_ttm",
-	.flags = I915_GEM_OBJECT_SELF_MANAGED_SHRINK_LIST,
+	.flags = I915_GEM_OBJECT_IS_SHRINKABLE |
+		 I915_GEM_OBJECT_SELF_MANAGED_SHRINK_LIST,
 
 	.get_pages = i915_ttm_get_pages,
 	.put_pages = i915_ttm_put_pages,
-- 
2.26.3

