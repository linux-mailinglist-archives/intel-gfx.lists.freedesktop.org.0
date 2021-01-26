Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 029C430394D
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Jan 2021 10:46:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2576898C4;
	Tue, 26 Jan 2021 09:46:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4753A88FA8
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Jan 2021 09:46:44 +0000 (UTC)
IronPort-SDR: Jh1EIEQLGt37ObWr4nuIJXruBDgMZQFwLVBGRpKdmw1r1BxpEx1zco9X3HQbmOnH2ovpw8CuSP
 GOpnGSgnU7KA==
X-IronPort-AV: E=McAfee;i="6000,8403,9875"; a="159651575"
X-IronPort-AV: E=Sophos;i="5.79,375,1602572400"; d="scan'208";a="159651575"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2021 01:46:44 -0800
IronPort-SDR: Tw5GUNDcdYqYM3IclIqw69GWWkc3IkYl5upx1JjCJ/Z5RtkGMDuCodBYsU80s0cLEJh4KPa31x
 bfgoRbtI/xhg==
X-IronPort-AV: E=Sophos;i="5.79,375,1602572400"; d="scan'208";a="387766452"
Received: from shogg-mobl.ger.corp.intel.com (HELO
 mwauld-desk1.ger.corp.intel.com) ([10.252.19.250])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2021 01:46:43 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 26 Jan 2021 09:46:11 +0000
Message-Id: <20210126094612.163290-6-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210126094612.163290-1-matthew.auld@intel.com>
References: <20210126094612.163290-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 6/7] drm/i915: move engine scratch to LMEM
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
index d8e1ab412634..2e46709e04c7 100644
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
@@ -344,11 +346,13 @@ static int intel_gt_init_scratch(struct intel_gt *gt, unsigned int size)
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
