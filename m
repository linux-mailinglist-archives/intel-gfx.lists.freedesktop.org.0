Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46257948BF5
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Aug 2024 11:06:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0337E10E346;
	Tue,  6 Aug 2024 09:06:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="curG8W/k";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21ABE10E350;
 Tue,  6 Aug 2024 09:06:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722935197; x=1754471197;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=T8IzNXUCYsVgUgyU0qxyNhM5+wbwEOnbB/RrHs/3Rpw=;
 b=curG8W/kHmImSVGIXag2Vah9eOeomwaydYRhQlRPuvJVgGVTa3o+JvOo
 AhFJHJmnR2dxSGIRi2HIlxquNbEowjb5+6ilCqEs1xOIBbZZ1nOsgNhJS
 vDF5M3oBZWHSVPWDjnzvDGREwslCtR/kj0++jh8OWLHg2HvXzSAgDCrKS
 ExqgmkxbXIQXPjGyFIUIDH/OTQD+/eDJ1Cs85kNbO2uQvH6XIm2VjUuxa
 qC9/yzGy/rEf8dVuL7gyY/mfyuCbomEsP2/P37NP5Zi/gLVxqWkCZLj28
 VBeAALoWSVXXSRMMiCYdJKHZyIDA4IVbICd/FllY2UemDwpJ40ZLm6/R5 Q==;
X-CSE-ConnectionGUID: 7K6gKFvZSdqXRcEYngfXtQ==
X-CSE-MsgGUID: MqzHbbPUQyyanX88pLSSmA==
X-IronPort-AV: E=McAfee;i="6700,10204,11155"; a="20789320"
X-IronPort-AV: E=Sophos;i="6.09,267,1716274800"; d="scan'208";a="20789320"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2024 02:06:37 -0700
X-CSE-ConnectionGUID: GUM4KrbsSpeAQGTQ0eyDYg==
X-CSE-MsgGUID: mTLK20sGSmWzWfdaVlcqvw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,267,1716274800"; d="scan'208";a="56139597"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by fmviesa007.fm.intel.com with ESMTP; 06 Aug 2024 02:06:28 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Arun R Murthy <arun.r.murthy@intel.com>
Subject: [PATCH] drm/xe/pm: Change HPD to polling on runtime suspend
Date: Tue,  6 Aug 2024 14:25:13 +0530
Message-Id: <20240806085513.3051107-1-arun.r.murthy@intel.com>
X-Mailer: git-send-email 2.25.1
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

HPD is interrupt based and on runtime suspend change it to polling as
HPD is not a wakeup event. A worker thread is scheduled for doing this
polling and it keeps polling for HPD live status on an internval of 10s.
On runtime resume disable polling and fallback to interrupt mechanism.

Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/xe/xe_pm.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/xe/xe_pm.c b/drivers/gpu/drm/xe/xe_pm.c
index 9f3c14fd9f33..d952b06ebfb4 100644
--- a/drivers/gpu/drm/xe/xe_pm.c
+++ b/drivers/gpu/drm/xe/xe_pm.c
@@ -22,6 +22,7 @@
 #include "xe_pcode.h"
 #include "xe_trace.h"
 #include "xe_wa.h"
+#include "intel_hotplug.h"
 
 /**
  * DOC: Xe Power Management
@@ -378,6 +379,8 @@ int xe_pm_runtime_suspend(struct xe_device *xe)
 		if (err)
 			goto out;
 	}
+	/* Enable hpd polling on runtime suspend */
+	intel_hpd_poll_enable(xe);
 
 	xe_irq_suspend(xe);
 
@@ -427,6 +430,9 @@ int xe_pm_runtime_resume(struct xe_device *xe)
 
 	xe_irq_resume(xe);
 
+	/* Disable hpd polling on runtime resume */
+	intel_hpd_poll_disable(xe);
+
 	for_each_gt(gt, xe, id)
 		xe_gt_resume(gt);
 
-- 
2.25.1

