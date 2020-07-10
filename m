Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D62621B4A0
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2020 14:02:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7DA346EC2C;
	Fri, 10 Jul 2020 12:02:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 159986EC27
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jul 2020 12:02:01 +0000 (UTC)
IronPort-SDR: cvTro3SsmgTcBLI2vg/WXCLre1YinQb6F8wRq4TAXUJncOA0zqzHYYxsUdGP5AnhDKcSgCtedC
 YuzM+UuAWG8A==
X-IronPort-AV: E=McAfee;i="6000,8403,9677"; a="209716886"
X-IronPort-AV: E=Sophos;i="5.75,335,1589266800"; d="scan'208";a="209716886"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 05:01:55 -0700
IronPort-SDR: EjAtiIvHT9EQ6z8gtbDx2HjNivYk5v0OwfImdSYXUmuPxYTBe5UY3k+/C5dnG4TD+hg+857aHi
 tg00UrXG0mGg==
X-IronPort-AV: E=Sophos;i="5.75,335,1589266800"; d="scan'208";a="458258599"
Received: from nmartino-mobl1.ger.corp.intel.com (HELO
 mwahaha-bdw.ger.corp.intel.com) ([10.255.207.224])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 05:01:46 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Jul 2020 12:57:53 +0100
Message-Id: <20200710115757.290984-57-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200710115757.290984-1-matthew.auld@intel.com>
References: <20200710115757.290984-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 56/60] drm/i915/dsb: Enable lmem for dsb
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Animesh Manna <animesh.manna@intel.com>

For dgfx, DSB should use local memory instead of system memory. Using
local memory surely brings performance improvement as local memory is
close to gpu. Also want to avoid multiple gpu using system memory.

Use LMEM API to create gem object needed for DSB command buffer.

Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Ramalingam C <ramalingam.c@intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index 566fa72427b3..86f5f4b3c46b 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -6,6 +6,7 @@
 
 #include "i915_drv.h"
 #include "intel_display_types.h"
+#include "gem/i915_gem_lmem.h"
 
 #define DSB_BUF_SIZE    (2 * PAGE_SIZE)
 
@@ -278,7 +279,11 @@ void intel_dsb_prepare(struct intel_crtc_state *crtc_state)
 
 	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
 
-	obj = i915_gem_object_create_internal(i915, DSB_BUF_SIZE);
+	if (HAS_LMEM(i915))
+		obj = i915_gem_object_create_lmem(i915, DSB_BUF_SIZE, 0);
+	else
+		obj = i915_gem_object_create_internal(i915, DSB_BUF_SIZE);
+
 	if (IS_ERR(obj)) {
 		drm_err(&i915->drm, "Gem object creation failed\n");
 		kfree(dsb);
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
