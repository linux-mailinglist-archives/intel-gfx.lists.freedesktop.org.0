Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1851E6FFD1A
	for <lists+intel-gfx@lfdr.de>; Fri, 12 May 2023 01:18:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF55310E605;
	Thu, 11 May 2023 23:17:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A93610E5FE;
 Thu, 11 May 2023 23:17:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683847074; x=1715383074;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8SFcL0erINhukxTNL7GDSlNQ2j7cyUWzmStSlrDvxB0=;
 b=n4GBmgLymfdTQ9EZRYOfdYlkkz9wzmvvnhxlRFx6m3PEFvo6f5Zgo5sM
 2AWUciI9ZS3aV+g+n+FS3IBAd9Gclv1UfScFORoCegwI5nSq6LH7bfFhc
 9cVZ2yuynswXUQ76h52KH84RH8VT0npt90X5XqjvuMy4eC7EoXlAJnEov
 sLz1AjxjdIZq6uzlEHfzIrN9CUbT2wyUQJJae6O437Fcg9MHBa4k784mo
 U2BqKB6HalHxqdTWD7v1MaiFjpdzeyF6UzWlXjr1haQSFcFtmj9Refrpt
 2aYSiVVv8HjGKT6lhbFsUYvh0daqWZ5jrPvwzFGnGvIlSXh3TPJGvHBrC g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10707"; a="378794006"
X-IronPort-AV: E=Sophos;i="5.99,268,1677571200"; d="scan'208";a="378794006"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2023 16:17:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10707"; a="874164391"
X-IronPort-AV: E=Sophos;i="5.99,268,1677571200"; d="scan'208";a="874164391"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by orsmga005.jf.intel.com with ESMTP; 11 May 2023 16:17:42 -0700
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 May 2023 16:17:37 -0700
Message-Id: <20230511231738.1077674-8-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230511231738.1077674-1-alan.previn.teres.alexis@intel.com>
References: <20230511231738.1077674-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v11 7/8] drm/i915/pxp: On MTL,
 KCR enabling doesn't wait on tee component
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
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>,
 dri-devel@lists.freedesktop.org, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On legacy platforms, KCR HW enabling is done at the time the mei
component interface is bound. It's also disabled during unbind.
However, for MTL onwards, we don't depend on a tee component
to start sending GSC-CS firmware messages.

Thus, immediately enable (or disable) KCR HW on PXP's init,
fini and resume.

Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
---
 drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.c | 15 ++++++++++++++-
 drivers/gpu/drm/i915/pxp/intel_pxp_pm.c    |  3 ++-
 2 files changed, 16 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.c b/drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.c
index 4bc276daca16..8dc41de3f6f7 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.c
@@ -10,6 +10,7 @@
 #include "gt/uc/intel_gsc_uc_heci_cmd_submit.h"
 
 #include "i915_drv.h"
+#include "intel_pxp.h"
 #include "intel_pxp_cmd_interface_42.h"
 #include "intel_pxp_cmd_interface_43.h"
 #include "intel_pxp_gsccs.h"
@@ -422,10 +423,22 @@ gsccs_allocate_execution_resource(struct intel_pxp *pxp)
 
 void intel_pxp_gsccs_fini(struct intel_pxp *pxp)
 {
+	intel_wakeref_t wakeref;
+
 	gsccs_destroy_execution_resource(pxp);
+	with_intel_runtime_pm(&pxp->ctrl_gt->i915->runtime_pm, wakeref)
+		intel_pxp_fini_hw(pxp);
 }
 
 int intel_pxp_gsccs_init(struct intel_pxp *pxp)
 {
-	return gsccs_allocate_execution_resource(pxp);
+	int ret;
+	intel_wakeref_t wakeref;
+
+	ret = gsccs_allocate_execution_resource(pxp);
+	if (!ret) {
+		with_intel_runtime_pm(&pxp->ctrl_gt->i915->runtime_pm, wakeref)
+			intel_pxp_init_hw(pxp);
+	}
+	return ret;
 }
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
index 4f836b317424..1a04067f61fc 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
@@ -43,8 +43,9 @@ void intel_pxp_resume_complete(struct intel_pxp *pxp)
 	 * The PXP component gets automatically unbound when we go into S3 and
 	 * re-bound after we come out, so in that scenario we can defer the
 	 * hw init to the bind call.
+	 * NOTE: GSC-CS backend doesn't rely on components.
 	 */
-	if (!pxp->pxp_component)
+	if (!HAS_ENGINE(pxp->ctrl_gt, GSC0) && !pxp->pxp_component)
 		return;
 
 	intel_pxp_init_hw(pxp);
-- 
2.39.0

