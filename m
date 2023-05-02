Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CDAF6F4765
	for <lists+intel-gfx@lfdr.de>; Tue,  2 May 2023 17:38:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B85710E58D;
	Tue,  2 May 2023 15:38:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8847110E58D
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 May 2023 15:38:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683041893; x=1714577893;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=P4W60pisNNZsCSy20jBP3114LXmKNz633NJ4EFIIXj8=;
 b=ecmpQe7wmgLyfwMe72TED1OAIe8Tz6B/cMfPtudwtRsujvCjxi62sQVn
 KHyWALKfX7O8XspMYIagKhYgwoxkezkrvemN/GC+mhVsiKuFzhMdLiocN
 wG3EaxEqE291bl8VJ7U1ZNY4OE7wk2eSllOGUscXogsfV80GOFdHDmYYB
 Q6IWgBGI9G4ZdsNXiRWEFEJhehUnmelK59EpZMn7AXNjA5eKMt6KfS0Yl
 hbc0E6H5DsbpffXRal6+xfTZrnoBrrXRFJzpZkF8ryb9Lwtw/CqNWEBoG
 X4inVdgssRax/0FtFzmxxhJzVslk/dadaPxwEN7ggE1cLHqwS4NKrc6e/ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="413889353"
X-IronPort-AV: E=Sophos;i="5.99,244,1677571200"; d="scan'208";a="413889353"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2023 08:38:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="807896230"
X-IronPort-AV: E=Sophos;i="5.99,244,1677571200"; d="scan'208";a="807896230"
Received: from awojtkie-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.36.50])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2023 08:38:08 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  2 May 2023 18:37:22 +0300
Message-Id: <89ab5cf179566c429383cc57db746038f75cba0d.1683041799.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1683041799.git.jani.nikula@intel.com>
References: <cover.1683041799.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 05/24] drm/i915/vma: fix struct
 i915_vma_bindinfo kernel-doc
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

You can't document both a sub-struct type and a struct member at the
same time. Separate them.

drivers/gpu/drm/i915/i915_vma_resource.h:91: warning: Incorrect use of kernel-doc format:          * struct i915_vma_bindinfo - Information needed for async bind
drivers/gpu/drm/i915/i915_vma_resource.h:129: warning: Function parameter or member 'bi' not described in 'i915_vma_resource'

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_vma_resource.h | 45 ++++++++++++++----------
 1 file changed, 27 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_vma_resource.h b/drivers/gpu/drm/i915/i915_vma_resource.h
index 2053c037dbfb..ca2b0f7f59bc 100644
--- a/drivers/gpu/drm/i915/i915_vma_resource.h
+++ b/drivers/gpu/drm/i915/i915_vma_resource.h
@@ -33,6 +33,27 @@ struct i915_page_sizes {
 	unsigned int sg;
 };
 
+/**
+ * struct i915_vma_bindinfo - Information needed for async bind
+ * only but that can be dropped after the bind has taken place.
+ * Consider making this a separate argument to the bind_vma
+ * op, coalescing with other arguments like vm, stash, cache_level
+ * and flags
+ * @pages: The pages sg-table.
+ * @page_sizes: Page sizes of the pages.
+ * @pages_rsgt: Refcounted sg-table when delayed object destruction
+ * is supported. May be NULL.
+ * @readonly: Whether the vma should be bound read-only.
+ * @lmem: Whether the vma points to lmem.
+ */
+struct i915_vma_bindinfo {
+	struct sg_table *pages;
+	struct i915_page_sizes page_sizes;
+	struct i915_refct_sgt *pages_rsgt;
+	bool readonly:1;
+	bool lmem:1;
+};
+
 /**
  * struct i915_vma_resource - Snapshotted unbind information.
  * @unbind_fence: Fence to mark unbinding complete. Note that this fence
@@ -89,25 +110,13 @@ struct i915_vma_resource {
 	intel_wakeref_t wakeref;
 
 	/**
-	 * struct i915_vma_bindinfo - Information needed for async bind
-	 * only but that can be dropped after the bind has taken place.
-	 * Consider making this a separate argument to the bind_vma
-	 * op, coalescing with other arguments like vm, stash, cache_level
-	 * and flags
-	 * @pages: The pages sg-table.
-	 * @page_sizes: Page sizes of the pages.
-	 * @pages_rsgt: Refcounted sg-table when delayed object destruction
-	 * is supported. May be NULL.
-	 * @readonly: Whether the vma should be bound read-only.
-	 * @lmem: Whether the vma points to lmem.
+	 * @bi: Information needed for async bind only but that can be dropped
+	 * after the bind has taken place.
+	 *
+	 * Consider making this a separate argument to the bind_vma op,
+	 * coalescing with other arguments like vm, stash, cache_level and flags
 	 */
-	struct i915_vma_bindinfo {
-		struct sg_table *pages;
-		struct i915_page_sizes page_sizes;
-		struct i915_refct_sgt *pages_rsgt;
-		bool readonly:1;
-		bool lmem:1;
-	} bi;
+	struct i915_vma_bindinfo bi;
 
 #if IS_ENABLED(CONFIG_DRM_I915_CAPTURE_ERROR)
 	struct intel_memory_region *mr;
-- 
2.39.2

