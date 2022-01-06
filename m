Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DFA54863A6
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jan 2022 12:20:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2A1810E822;
	Thu,  6 Jan 2022 11:20:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B23AB10E822;
 Thu,  6 Jan 2022 11:20:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641468050; x=1673004050;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SCnzuQi3dotUBtBqeb54lLg+lQjxadOrtik/jgsOtJU=;
 b=luV9HjRsL2EjAGOrofYtLqHltVNWrYkzgy405UfETpZpW5EI2i8gBB3j
 teEweGlr5Cg63tl8wDp/ABltRn6zCw7x9bonBCDo7SPgESA7493WOwrvx
 Ud/xgL0s4WElYBq8nHcig3GaqvR44OwC88wwfizkgaDWlD0ztu7rfYBCi
 yZ9/eWEmIaQ92MyVP7ASJx7+2qzAH1dIBA+W8b/Hz/PCT+gBXBwkzv0k/
 Q4MmpQqEsbfaUS0MIbaAi2awYrY84YoycthJS1lWZLNum6H0ZoPvbhoMG
 MuLrD8Ke6MN2PGQomCKvB59EWcE1CWlw7AdyrhWDFIIHtwdRad2sgaQWb w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10217"; a="305992111"
X-IronPort-AV: E=Sophos;i="5.88,266,1635231600"; d="scan'208";a="305992111"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2022 03:20:50 -0800
X-IronPort-AV: E=Sophos;i="5.88,266,1635231600"; d="scan'208";a="556892152"
Received: from lsgoh-mobl1.gar.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.249.65.184])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2022 03:20:48 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  6 Jan 2022 11:20:26 +0000
Message-Id: <20220106112026.247459-4-matthew.auld@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20220106112026.247459-1-matthew.auld@intel.com>
References: <20220106112026.247459-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 4/4] drm/i915/ttm: ensure we unmap when
 purging
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Purging can happen during swapping out, or directly invoked with the
madvise ioctl. In such cases this doesn't involve a ttm move, which
skips umapping the object.

v2(Thomas):
- add ttm_truncate helper, and just call into i915_ttm_move_notify() to
  handle the unmapping step

Fixes: cf3e3e86d779 ("drm/i915: Use ttm mmap handling for ttm bo's.")
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_ttm.c | 16 +++++++++++++++-
 1 file changed, 15 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
index 1530d9f0bc81..de3fe79b665a 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
@@ -556,6 +556,20 @@ i915_ttm_resource_get_st(struct drm_i915_gem_object *obj,
 	return intel_region_ttm_resource_to_rsgt(obj->mm.region, res);
 }
 
+static int i915_ttm_truncate(struct drm_i915_gem_object *obj)
+{
+	struct ttm_buffer_object *bo = i915_gem_to_ttm(obj);
+	int err;
+
+	WARN_ON_ONCE(obj->mm.madv == I915_MADV_WILLNEED);
+
+	err = i915_ttm_move_notify(bo);
+	if (err)
+		return err;
+
+	return i915_ttm_purge(obj);
+}
+
 static void i915_ttm_swap_notify(struct ttm_buffer_object *bo)
 {
 	struct drm_i915_gem_object *obj = i915_ttm_to_gem(bo);
@@ -962,7 +976,7 @@ static const struct drm_i915_gem_object_ops i915_gem_ttm_obj_ops = {
 
 	.get_pages = i915_ttm_get_pages,
 	.put_pages = i915_ttm_put_pages,
-	.truncate = i915_ttm_purge,
+	.truncate = i915_ttm_truncate,
 	.shrinker_release_pages = i915_ttm_shrinker_release_pages,
 
 	.adjust_lru = i915_ttm_adjust_lru,
-- 
2.31.1

