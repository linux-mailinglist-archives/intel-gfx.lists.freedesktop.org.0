Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B5F66305AB6
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Jan 2021 13:03:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2CD096E7D9;
	Wed, 27 Jan 2021 12:03:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B73666E7D1
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Jan 2021 12:03:42 +0000 (UTC)
IronPort-SDR: j7ApC7lig0mmzbapJSv12585KxCiX4QuZmuKeui45pmtMIaQ+S8ahVVEpwvbXFtlfFBMXzVxYl
 hC+I46/RcZUQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9876"; a="180136900"
X-IronPort-AV: E=Sophos;i="5.79,379,1602572400"; d="scan'208";a="180136900"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 04:03:42 -0800
IronPort-SDR: yS6Bj722Prj3Ba1GhzhgdQtTV/ufDdSKTvA/FldS0Wbq1PJCHDih0QirJTe33UxpUq0u3YaF5B
 Cm5DjQkfMRVA==
X-IronPort-AV: E=Sophos;i="5.79,379,1602572400"; d="scan'208";a="362410307"
Received: from gladkina-mobl.ger.corp.intel.com (HELO
 mwauld-desk1.ger.corp.intel.com) ([10.252.19.195])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 04:03:41 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Jan 2021 12:03:15 +0000
Message-Id: <20210127120316.370305-7-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210127120316.370305-1-matthew.auld@intel.com>
References: <20210127120316.370305-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 7/8] drm/i915: move engine scratch to LMEM
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
