Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0456214EC13
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2020 12:53:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A4396FB1B;
	Fri, 31 Jan 2020 11:53:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5D696FB1B
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jan 2020 11:53:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Jan 2020 03:53:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,385,1574150400"; d="scan'208";a="230233376"
Received: from amanna.iind.intel.com ([10.223.74.53])
 by orsmga003.jf.intel.com with ESMTP; 31 Jan 2020 03:53:46 -0800
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 31 Jan 2020 17:12:58 +0530
Message-Id: <20200131114258.22306-1-animesh.manna@intel.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/dsb: Enable lmem for dsb
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

If lmem is supported DSB should use local memeory instead
of system memory. Using local memory surely bring performance
improvement as local memory is close to gpu. Also want to avoid
multiple gpu using system memory.

Used LMEM api to create gem object needed for DSB command buffer.

v1: Initial patch.

Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Matthew Auld <matthew.auld@intel.com>
Cc: Ramalingam C <ramalingam.c@intel.com>
Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index 9dd18144a664..d67b6a764ba0 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -6,6 +6,7 @@
 
 #include "i915_drv.h"
 #include "intel_display_types.h"
+#include "gem/i915_gem_lmem.h"
 
 #define DSB_BUF_SIZE    (2 * PAGE_SIZE)
 
@@ -113,7 +114,11 @@ intel_dsb_get(struct intel_crtc *crtc)
 
 	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
 
-	obj = i915_gem_object_create_internal(i915, DSB_BUF_SIZE);
+	if (HAS_LMEM(i915))
+		obj = i915_gem_object_create_lmem(i915, DSB_BUF_SIZE, 0);
+	else
+		obj = i915_gem_object_create_internal(i915, DSB_BUF_SIZE);
+
 	if (IS_ERR(obj)) {
 		DRM_ERROR("Gem object creation failed\n");
 		goto out;
-- 
2.24.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
