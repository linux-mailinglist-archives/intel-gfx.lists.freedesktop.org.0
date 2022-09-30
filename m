Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A19945F0C77
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Sep 2022 15:31:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D910810ECFB;
	Fri, 30 Sep 2022 13:31:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB6E010ECF3
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Sep 2022 13:31:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664544668; x=1696080668;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Gkpp2w0QmfCalnSjZU+53ky+fTXNOcF0NBZdguwjlaw=;
 b=McZj8K+ZW2/ybzxcSrf/ig7CoLObA1cgul4unX7BiuUAOU5DjAWOT86p
 6aSq0iSlJXdIJ1klaril239MiCN/+6GP8VNy2BCR11pXAri5OM1IcdoWo
 y3yCL7y8N0uME2V8rw0uLHldkdv1F7sA9lAmiklNFTmuo1Q+DCWgRMzoj
 KA9u3Q6pdSLv89hJpsOQupGXY2RaATa9kRWksVkpwh5VA0ch4rWjHODOZ
 1JNQBb0Cx5rcd+erjfdu/QHRazE0fmO4ijUk/bXhPctz4t17pmVdcr8iD
 rl3eyn1dwYZOx5A/Yjrcl80FkSwED9JyR8PKfmZb6OqXK1hnHdfAZ993l w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10486"; a="303676076"
X-IronPort-AV: E=Sophos;i="5.93,358,1654585200"; d="scan'208";a="303676076"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2022 06:31:08 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10486"; a="711798539"
X-IronPort-AV: E=Sophos;i="5.93,358,1654585200"; d="scan'208";a="711798539"
Received: from dtrawins-mobl1.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.7.39])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2022 06:31:07 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 30 Sep 2022 14:30:52 +0100
Message-Id: <20220930133052.387165-2-matthew.auld@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20220930133052.387165-1-matthew.auld@intel.com>
References: <20220930133052.387165-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: check memory is mappable in
 read_from_page
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
Cc: Nirmoy Das <nirmoy.das@intel.com>, Jianshui Yu <jianshui.yu@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On small-bar systems we could be given something non-mappable here,
which leads to nasty oops. Make this nicer by checking if the resource
is mappable or not, and return an error otherwise.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Jianshui Yu <jianshui.yu@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Nirmoy Das <nirmoy.das@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_object.c | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.c b/drivers/gpu/drm/i915/gem/i915_gem_object.c
index 369006c5317f..0a3dbb08376a 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
@@ -444,6 +444,16 @@ i915_gem_object_read_from_page_iomap(struct drm_i915_gem_object *obj, u64 offset
 	io_mapping_unmap(src_map);
 }
 
+static bool object_has_mappable_iomem(struct drm_i915_gem_object *obj)
+{
+	GEM_BUG_ON(!i915_gem_object_has_iomem(obj));
+
+	if (IS_DGFX(to_i915(obj->base.dev)))
+		return i915_ttm_resource_mappable(i915_gem_to_ttm(obj)->resource);
+
+	return true;
+}
+
 /**
  * i915_gem_object_read_from_page - read data from the page of a GEM object
  * @obj: GEM object to read from
@@ -463,10 +473,11 @@ int i915_gem_object_read_from_page(struct drm_i915_gem_object *obj, u64 offset,
 	GEM_BUG_ON(offset >= obj->base.size);
 	GEM_BUG_ON(offset_in_page(offset) > PAGE_SIZE - size);
 	GEM_BUG_ON(!i915_gem_object_has_pinned_pages(obj));
+	GEM_BUG_ON(obj->flags & I915_BO_ALLOC_GPU_ONLY);
 
 	if (i915_gem_object_has_struct_page(obj))
 		i915_gem_object_read_from_page_kmap(obj, offset, dst, size);
-	else if (i915_gem_object_has_iomem(obj))
+	else if (i915_gem_object_has_iomem(obj) && object_has_mappable_iomem(obj))
 		i915_gem_object_read_from_page_iomap(obj, offset, dst, size);
 	else
 		return -ENODEV;
-- 
2.37.3

