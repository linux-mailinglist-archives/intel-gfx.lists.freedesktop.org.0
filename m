Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA7063BFA0D
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jul 2021 14:26:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7770F6E222;
	Thu,  8 Jul 2021 12:26:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 972186E222;
 Thu,  8 Jul 2021 12:26:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10038"; a="273334403"
X-IronPort-AV: E=Sophos;i="5.84,222,1620716400"; d="scan'208";a="273334403"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2021 05:26:41 -0700
X-IronPort-AV: E=Sophos;i="5.84,222,1620716400"; d="scan'208";a="487585274"
Received: from dhowell-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.213.219.126])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2021 05:26:40 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Thu,  8 Jul 2021 13:25:52 +0100
Message-Id: <20210708122554.1874987-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.3
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 1/3] lib/intel_memory_region: verify
 item.length
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

If the regions query fails then the error will be encoded in the
item.length, while the ioctl will still return success.

Reported-by: Ville Syrjala <ville.syrjala@linux.intel.com>
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
---
 lib/i915/intel_memory_region.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/lib/i915/intel_memory_region.c b/lib/i915/intel_memory_region.c
index 144ae12c..e1e210f2 100644
--- a/lib/i915/intel_memory_region.c
+++ b/lib/i915/intel_memory_region.c
@@ -119,6 +119,13 @@ struct drm_i915_query_memory_regions *gem_get_query_memory_regions(int fd)
 	memset(&item, 0, sizeof(item));
 	item.query_id = DRM_I915_QUERY_MEMORY_REGIONS;
 	i915_query_items(fd, &item, 1);
+	/*
+	 * Any DRM_I915_QUERY_MEMORY_REGIONS specific errors are encoded in the
+	 * item.length, even though the ioctl might still return success.
+	 */
+	igt_assert_f(item.length > 0,
+		     "DRM_I915_QUERY_MEMORY_REGIONS failed with %d\n",
+		     item.length);
 
 	query_info = calloc(1, item.length);
 
-- 
2.26.3

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
