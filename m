Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B02F7B53AB9
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Sep 2025 19:50:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E371510EB7A;
	Thu, 11 Sep 2025 17:50:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JD3aqxst";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 542A810EB77
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Sep 2025 17:50:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757613055; x=1789149055;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4axgG7i9MdrDU5DhMwnbFgX8hjvQ3uiodb9oDP5+4lE=;
 b=JD3aqxstOx23Ikrp+lYmG/ZndR7msBuS5vWXjVD7nmaoYUiHmzBQyM2u
 Fq1iJpCzCIGYJNJhOXosLQL3Z6NIy774IC0yK41Cdk0tIJTJtG+evrjEv
 dhPeAnmUC2ji8z+wrQq/SdoCIrEX/bMxKy6G8gfBJrqztjFHeN1HlOmsd
 qTL/cDtsS3j7MvO6Y6lof/x71dJ4GfzHo7t62gp8IRPI/M/fT/hQWLzDJ
 mNr4cjVxasixghsC3lcjWtjELtG70AK3AUIB8EWo8uo+dUQ7qjyRh0410
 ssFppyANSUMQ5UH4VcsyI9vbkPqZa97ZZw/IOwqAkL+u/WPdPxNmY4L1F Q==;
X-CSE-ConnectionGUID: t/aY6bmiQziEZcr4+Xba7A==
X-CSE-MsgGUID: GoRR00g0STuFcYICN1P1jA==
X-IronPort-AV: E=McAfee;i="6800,10657,11549"; a="60027594"
X-IronPort-AV: E=Sophos;i="6.18,257,1751266800"; d="scan'208";a="60027594"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2025 10:50:55 -0700
X-CSE-ConnectionGUID: erJXBt2cSFCXgEwm3b/c4g==
X-CSE-MsgGUID: Y7NAeWwnTqaHrKVqkEa7Jw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,257,1751266800"; d="scan'208";a="174194263"
Received: from valcore-skull-1.fm.intel.com ([10.1.39.17])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2025 10:50:55 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 Valentine Burley <valentine.burley@collabora.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Alexander Usyskin <alexander.usyskin@intel.com>,
 Alan Previn <alan.previn.teres.alexis@intel.com>
Subject: [PATCH v2 2/2] drm/i915/pxp: Do not support PXP if CSME is not
 available
Date: Thu, 11 Sep 2025 10:50:24 -0700
Message-ID: <20250911175021.19513-6-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250911175021.19513-4-daniele.ceraolospurio@intel.com>
References: <20250911175021.19513-4-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The PXP flow requires us to communicate with CSME, which we do via a
mei component. Since the mei component binding is async and can take
a bit to complete, we don't wait for it during i915 load. If userspace
queries the state before the async binding is complete, we return an
"init in progress" state, with the expectation that it will eventually
transition to "init complete" if the CSME device is functional.

Mesa CI is flashing a custom coreboot on their Chromebooks that hides
the CSME device, which means that we never transition to the "init
complete" state. While from an interface POV it is not incorrect to not
end up in "init complete" if the CSME is missing, we can mitigate the
impact of this by simply checking if the CSME device is available at
all before attempting to initialize PXP.

v2: rebase on updated mei patch.

Reported-by: Valentine Burley <valentine.burley@collabora.com>
Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14516
Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Alexander Usyskin <alexander.usyskin@intel.com>
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
---
 drivers/gpu/drm/i915/pxp/intel_pxp.c | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
index c077a1c464cf..29825bff854a 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -2,6 +2,7 @@
 /*
  * Copyright(c) 2020 Intel Corporation.
  */
+#include <linux/mei_me.h>
 #include <linux/workqueue.h>
 
 #include "gem/i915_gem_context.h"
@@ -195,6 +196,13 @@ static struct intel_gt *find_gt_for_required_protected_content(struct drm_i915_p
 	return NULL;
 }
 
+static bool mei_device_available(void)
+{
+	const struct pci_device_id *csme_ids = mei_me_get_device_id_table();
+
+	return csme_ids && pci_dev_present(csme_ids);
+}
+
 int intel_pxp_init(struct drm_i915_private *i915)
 {
 	struct intel_gt *gt;
@@ -203,6 +211,21 @@ int intel_pxp_init(struct drm_i915_private *i915)
 	if (intel_gt_is_wedged(to_gt(i915)))
 		return -ENOTCONN;
 
+	/*
+	 * iGPUs require CSME to be available to use PXP. Note that the
+	 * availability of CSME might change after we check, but we only support
+	 * PXP in the case where the CSME device is available from boot and
+	 * stays that way. If CSME was not initially available and appears later
+	 * we'll just continue without PXP, while if it was available and is
+	 * then removed we'll catch it via the component unbind callback and
+	 * handle it gracefully. Therefore, we don't require any locking around
+	 * the state checking.
+	 */
+	if (!IS_DGFX(i915) && !mei_device_available()) {
+		drm_dbg(&i915->drm, "skipping PXP init due to missing ME device\n");
+		return -ENODEV;
+	}
+
 	/*
 	 * NOTE: Get the ctrl_gt before checking intel_pxp_is_supported since
 	 * we still need it if PXP's backend tee transport is needed.
-- 
2.43.0

