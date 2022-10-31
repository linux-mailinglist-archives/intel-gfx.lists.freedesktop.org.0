Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6641A61338A
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Oct 2022 11:25:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7ABF10E18B;
	Mon, 31 Oct 2022 10:25:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3ACEA10E18B
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Oct 2022 10:25:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667211940; x=1698747940;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=u877WPcr7a+Y6I6Ts6kLVgYZ7VeoSmIOz19bmkgF9o4=;
 b=GMzRnT/rVpfCic5nqTVU8iAJmu8ga8YHvp+/RUKd/SOEKjIIZvm9YIWe
 6eJ9HoEAOqWZyiaX19l+4j4VqiBBOAastdWtWnmDozHhBEJS4YsnabKUu
 1McJ18liDAL/5/4p1ss+dVeimXE8/StkeptUw6oQldETnWNxZUoLPS4EA
 QuldfIESmun8WMca8fB5A+ep7BFXfdWXN6oPMmQWdI7xt7sXn7MP5wGoi
 UYAyXvw5YIiqbSAL5poxsMedehgXAq1I5/DArQye094Iwe6cRNo2JzHVN
 NT73p3DERJAQWSBN1DDdFt38v+NrxHCZT3uSwTZoLft8g/wN6rKkFkzux g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10516"; a="395178294"
X-IronPort-AV: E=Sophos;i="5.95,227,1661842800"; d="scan'208";a="395178294"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2022 03:25:39 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10516"; a="738904221"
X-IronPort-AV: E=Sophos;i="5.95,227,1661842800"; d="scan'208";a="738904221"
Received: from fzaher-mobl1.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.29.143])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2022 03:25:37 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 31 Oct 2022 10:24:53 +0000
Message-Id: <20221031102453.19587-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/uapi: expose GTT alignment
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
 Michal Mrozek <michal.mrozek@intel.com>, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On some platforms we potentially have different alignment restrictions
depending on the memory type. We also now have different alignment
restrictions for the same region across different kernel versions.
Extend the region query to return the minimum required GTT alignment.

Mesa MR: https://gitlab.freedesktop.org/mesa/mesa/-/merge_requests/19398

Testcase: igt@gem_create@create-ext-placement-alignment
Testcase: igt@i915_query@query-regions-sanity-check
Suggested-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Michal Mrozek <michal.mrozek@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Cc: Stuart Summers <stuart.summers@intel.com>
Cc: Jordan Justen <jordan.l.justen@intel.com>
Cc: Yang A Shi <yang.a.shi@intel.com>
Cc: Nirmoy Das <nirmoy.das@intel.com>
Cc: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>
Acked-by: Jordan Justen <jordan.l.justen@intel.com>
Link: https://patchwork.freedesktop.org/patch/msgid/20221004114915.221708-2-matthew.auld@intel.com
---
 drivers/gpu/drm/i915/i915_query.c |  1 +
 include/uapi/drm/i915_drm.h       | 29 +++++++++++++++++++++++++++--
 2 files changed, 28 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_query.c b/drivers/gpu/drm/i915/i915_query.c
index 6ec9c9fb7b0d..111377f210ed 100644
--- a/drivers/gpu/drm/i915/i915_query.c
+++ b/drivers/gpu/drm/i915/i915_query.c
@@ -498,6 +498,7 @@ static int query_memregion_info(struct drm_i915_private *i915,
 		info.region.memory_class = mr->type;
 		info.region.memory_instance = mr->instance;
 		info.probed_size = mr->total;
+		info.gtt_alignment = mr->min_page_size;
 
 		if (mr->type == INTEL_MEMORY_LOCAL)
 			info.probed_cpu_visible_size = mr->io_size;
diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
index 8df261c5ab9b..c346b1923d11 100644
--- a/include/uapi/drm/i915_drm.h
+++ b/include/uapi/drm/i915_drm.h
@@ -3356,8 +3356,33 @@ struct drm_i915_memory_region_info {
 	/** @region: The class:instance pair encoding */
 	struct drm_i915_gem_memory_class_instance region;
 
-	/** @rsvd0: MBZ */
-	__u32 rsvd0;
+	union {
+		/** @rsvd0: MBZ */
+		__u32 rsvd0;
+		/**
+		 * @gtt_alignment:
+		 *
+		 * The minimum required GTT alignment for this type of memory.
+		 * When allocating a GTT address it must be aligned to this
+		 * value or larger. On some platforms the kernel might opt to
+		 * using 64K pages for I915_MEMORY_CLASS_DEVICE, where 64K GTT
+		 * pages can then be used if we also use 64K GTT alignment.
+		 *
+		 * NOTE: If this is zero then this must be an older
+		 * kernel which lacks support for this field.
+		 *
+		 * Side note: For larger objects (especially for
+		 * I915_MEMORY_CLASS_DEVICE), like 2M+ in size, userspace should
+		 * consider potentially bumping the GTT alignment to say 2M,
+		 * which could potentially increase the likelihood of the kernel
+		 * being able to utilise 2M GTT pages underneath, if the layout
+		 * of the physical pages allows it.  On some configurations we
+		 * can then also use a more efficient page-table layout, if we
+		 * can't use the more desirable 2M GTT page, so long as we know
+		 * that the entire page-table will be used by this object.
+		 */
+		__u32 gtt_alignment;
+	};
 
 	/**
 	 * @probed_size: Memory probed by the driver
-- 
2.38.1

