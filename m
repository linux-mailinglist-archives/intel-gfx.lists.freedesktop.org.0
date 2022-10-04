Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BE155F40E5
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Oct 2022 12:34:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63C3910E548;
	Tue,  4 Oct 2022 10:33:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6630E10E544
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Oct 2022 10:33:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664879620; x=1696415620;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=InUwIC4mexdj2gLWxRfZtMGzvVeH7r0t2mNdYFsHTwk=;
 b=IERx/L1Ctr+OqvP+MfMKWvss7nuSuYPyuNhIHrzRDIPxoVoi3Sx/EFsU
 8IPZOOF5R4pKzobYXeDJAOzlNra009+dn/c84Aw7cOIY/Rc860a9DRu0l
 kiaAbBaks+bGi3SUkn1oJN8zRO1tJtnLn2xYbZFqOPTgfXR+eLTbGiU9D
 O8tSJEjrztGJrrxD4GYG1ggx7zJxxrs9wTennKvgQbV4f/nnqIefb0fnH
 Vux5D4Pr+qF57zkBp1sTCyuEJWpEO/1xrAEVbUKYkGDyhBc67kA72a6pm
 WFFaVQFr8rqiN54w+reMI1iy6d7Ag2wFZQkfKkm4Shox7L2VawatbmbDJ A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="304420542"
X-IronPort-AV: E=Sophos;i="5.93,367,1654585200"; d="scan'208";a="304420542"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 03:33:40 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="601575158"
X-IronPort-AV: E=Sophos;i="5.93,367,1654585200"; d="scan'208";a="601575158"
Received: from ngverso-mobl2.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.7.149])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 03:33:38 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  4 Oct 2022 11:33:11 +0100
Message-Id: <20221004103311.194409-5-matthew.auld@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221004103311.194409-1-matthew.auld@intel.com>
References: <20221004103311.194409-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 5/5] drm/i915: check memory is mappable in
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

v2: drop GEM_BUG_ON(flags & I915_BO_ALLOC_GPU_ONLY)

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Jianshui Yu <jianshui.yu@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Nirmoy Das <nirmoy.das@intel.com>
Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_object.c | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.c b/drivers/gpu/drm/i915/gem/i915_gem_object.c
index 369006c5317f..62495d5d0038 100644
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
@@ -466,7 +476,7 @@ int i915_gem_object_read_from_page(struct drm_i915_gem_object *obj, u64 offset,
 
 	if (i915_gem_object_has_struct_page(obj))
 		i915_gem_object_read_from_page_kmap(obj, offset, dst, size);
-	else if (i915_gem_object_has_iomem(obj))
+	else if (i915_gem_object_has_iomem(obj) && object_has_mappable_iomem(obj))
 		i915_gem_object_read_from_page_iomap(obj, offset, dst, size);
 	else
 		return -ENODEV;
-- 
2.37.3

