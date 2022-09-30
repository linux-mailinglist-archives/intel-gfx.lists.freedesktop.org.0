Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CB5B5F0CB6
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Sep 2022 15:47:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BCC010ED03;
	Fri, 30 Sep 2022 13:47:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 669E210ED01
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Sep 2022 13:47:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664545661; x=1696081661;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1JzRrIb+fY/dz2w+aDBkUVO8vUGg8eDXI6u0tEXE8ek=;
 b=Wlavx9YTrl7Kv5Jxfkepq6TfLtR/bS6PE4x32etahsYWqDXr9XSiz9HB
 lWJqajKr3dEWL3HeujfiO59ZSKjkCUNZpNqyKc6voPtINK7ERvtcziysG
 wbLaZwJR7Tn64w8teVbI8xDWefVz2RSprBtQO+y2tagfdUWY4XftEuCC5
 xSID8lEecQZL8+Yd0dA7FhDGlvFccvwO+zNyofyRFa0rvgqELxA823wX2
 hGDaZ6+n24dTxF//UJiXCVRQ9UQOO09n01Ryg+S4IhOH6579ux0YYrZf1
 pAdY2lmYkfXYEYYZnGk+kdc+3djlO8gQzlK/kd2wAXURlWwlfNaApRdEX g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10486"; a="299794787"
X-IronPort-AV: E=Sophos;i="5.93,358,1654585200"; d="scan'208";a="299794787"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2022 06:47:41 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10486"; a="685291079"
X-IronPort-AV: E=Sophos;i="5.93,358,1654585200"; d="scan'208";a="685291079"
Received: from dtrawins-mobl1.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.7.39])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2022 06:47:39 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 30 Sep 2022 14:47:31 +0100
Message-Id: <20220930134731.389416-2-matthew.auld@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20220930134731.389416-1-matthew.auld@intel.com>
References: <20220930134731.389416-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/2] drm/i915: check memory is mappable in
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

