Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A55FB06999
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Jul 2025 01:00:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1DE010E716;
	Tue, 15 Jul 2025 23:00:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GrD1G/5g";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5850610E716
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Jul 2025 23:00:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752620419; x=1784156419;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Dl34biyg62QjOODmX1jJ+GYCa1EPV6f8KfRmNiF15xw=;
 b=GrD1G/5g+FeUMmRrYkSwRoxWPM5Tkd/2uXahfe3OOpcaNkWZcNAdm7s2
 lEb04NKYzRD/4vh1T5XrExUGxk6bA1vBRghnE3MX/ptpYJhfqkypWriZ8
 IWIAd0Di4vjLP4wsBYKa5pAI7duh3tT/0Boy45PdlZNfMSCAKABZVmxYG
 jQtkj3Mpt8BIzGDNBtQ9lcifrssZxZayIrEwsVqWXYNdnWGjCOw2E+j1l
 hvM9gUtTrUN3GvV250MqVXn6XhS5P5UADvid80QSsGU4xrrZl3PqNod3t
 IvteHGWuzWthfvWCc0UJ8lkbQ7H2oioMtijLkNIH47B+XQoAe6W8uTDFS A==;
X-CSE-ConnectionGUID: PxjnOiKDQj6LcpIvG1uWJQ==
X-CSE-MsgGUID: Y2xMB1NeSa2b+6bE+HdAAQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11493"; a="57462175"
X-IronPort-AV: E=Sophos;i="6.16,314,1744095600"; d="scan'208";a="57462175"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2025 16:00:19 -0700
X-CSE-ConnectionGUID: XiybzWHBQsCHZpEDW2FQ5A==
X-CSE-MsgGUID: 13Jwu30BSt2aFDPiQ7MVJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,314,1744095600"; d="scan'208";a="157150196"
Received: from valcore-skull-1.fm.intel.com ([10.1.39.17])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2025 16:00:19 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 Valentine Burley <valentine.burley@collabora.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Alexander Usyskin <alexander.usyskin@intel.com>,
 Alan Previn <alan.previn.teres.alexis@intel.com>
Subject: [PATCH 2/2] drm/i915/pxp: Do not support PXP if CSME is not available
Date: Tue, 15 Jul 2025 16:00:02 -0700
Message-ID: <20250715225959.488109-6-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250715225959.488109-4-daniele.ceraolospurio@intel.com>
References: <20250715225959.488109-4-daniele.ceraolospurio@intel.com>
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

Reported-by: Valentine Burley <valentine.burley@collabora.com>
Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14516
Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Alexander Usyskin <alexander.usyskin@intel.com>
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
---
 drivers/gpu/drm/i915/i915_module.c   | 1 +
 drivers/gpu/drm/i915/pxp/intel_pxp.c | 5 +++++
 2 files changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_module.c b/drivers/gpu/drm/i915/i915_module.c
index 5862754c662c..07118a1ea14d 100644
--- a/drivers/gpu/drm/i915/i915_module.c
+++ b/drivers/gpu/drm/i915/i915_module.c
@@ -126,3 +126,4 @@ MODULE_AUTHOR("Intel Corporation");
 
 MODULE_DESCRIPTION(DRIVER_DESC);
 MODULE_LICENSE("GPL and additional rights");
+
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
index c077a1c464cf..e476c1d82c2f 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -2,6 +2,7 @@
 /*
  * Copyright(c) 2020 Intel Corporation.
  */
+#include <linux/mei_me.h>
 #include <linux/workqueue.h>
 
 #include "gem/i915_gem_context.h"
@@ -203,6 +204,10 @@ int intel_pxp_init(struct drm_i915_private *i915)
 	if (intel_gt_is_wedged(to_gt(i915)))
 		return -ENOTCONN;
 
+	/* iGPUs require CSME to be available to use PXP */
+	if (!IS_DGFX(i915) && !mei_me_device_present())
+		return -ENODEV;
+
 	/*
 	 * NOTE: Get the ctrl_gt before checking intel_pxp_is_supported since
 	 * we still need it if PXP's backend tee transport is needed.
-- 
2.43.0

