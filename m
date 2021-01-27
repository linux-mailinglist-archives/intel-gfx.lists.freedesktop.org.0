Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 05EA4305CB1
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Jan 2021 14:14:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 228556E819;
	Wed, 27 Jan 2021 13:14:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56FD76E7F5
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Jan 2021 13:14:30 +0000 (UTC)
IronPort-SDR: Omm/QcKejhd6bJY7J2Cs9q44p1ir7jZW8Hx+EeqAOiXs+a3ktyhjQnGaSnGdLBZHAk0CnYIx+o
 7VtNV6Ms3h0A==
X-IronPort-AV: E=McAfee;i="6000,8403,9876"; a="180209893"
X-IronPort-AV: E=Sophos;i="5.79,379,1602572400"; d="scan'208";a="180209893"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 05:14:30 -0800
IronPort-SDR: C4s30J+aQdY+zPuuJJRhW4ir1Z6mMJbmEb82BZ9gLfVjeV/1V0kZjanhlanNDrJVU1NR8DGFbe
 oH6B7LqU89JA==
X-IronPort-AV: E=Sophos;i="5.79,379,1602572400"; d="scan'208";a="369471255"
Received: from gladkina-mobl.ger.corp.intel.com (HELO
 mwauld-desk1.ger.corp.intel.com) ([10.252.19.195])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 05:14:29 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Jan 2021 13:14:16 +0000
Message-Id: <20210127131417.393872-7-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210127131417.393872-1-matthew.auld@intel.com>
References: <20210127131417.393872-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v5 7/8] drm/i915: move engine scratch to LMEM
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Prefer allocating the engine scratch from LMEM on dgfx.

v2: flatten the chain

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_gt.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index 9ac67e0534b7..35ff68ada4f1 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -4,6 +4,8 @@
  */
 
 #include "debugfs_gt.h"
+
+#include "gem/i915_gem_lmem.h"
 #include "i915_drv.h"
 #include "intel_context.h"
 #include "intel_gt.h"
@@ -378,11 +380,13 @@ static int intel_gt_init_scratch(struct intel_gt *gt, unsigned int size)
 	struct i915_vma *vma;
 	int ret;
 
-	obj = i915_gem_object_create_stolen(i915, size);
+	obj = i915_gem_object_create_lmem(i915, size, I915_BO_ALLOC_VOLATILE);
+	if (IS_ERR(obj))
+		obj = i915_gem_object_create_stolen(i915, size);
 	if (IS_ERR(obj))
 		obj = i915_gem_object_create_internal(i915, size);
 	if (IS_ERR(obj)) {
-		DRM_ERROR("Failed to allocate scratch page\n");
+		drm_err(&i915->drm, "Failed to allocate scratch page\n");
 		return PTR_ERR(obj);
 	}
 
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
