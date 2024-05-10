Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 312508C213A
	for <lists+intel-gfx@lfdr.de>; Fri, 10 May 2024 11:43:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C6E810E46D;
	Fri, 10 May 2024 09:43:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="X/Kwgelq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 143C610E46D;
 Fri, 10 May 2024 09:43:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715334199; x=1746870199;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Pg+VLSV5LwG/F484HkWJ43sfpg8QgH0S403zB1yjD8Q=;
 b=X/KwgelqWPEsoYidpnoma+aLT/P/vs0XeHdtW4CrN7abJaFYeq1/FEJh
 PoZkIWbPT9w/SwGIMuwT2M5aYZAojjAcJk40LiGWIy1twXcZstAp8xxDC
 PaX/i6fm/yPmkf4WJYiI1b77jJe0NKwR9iPtJ+IDu/ixNt+TOlS+WMo6H
 q2IW1PUElN7EC5acDLDKmEGPh/P2lPqFgVfzAcrQtvmapGJZm0NpfpNb3
 g/YKhIqQDOjo+I/8ismqI56dHDexaYNWzcoprj6sOHMiGBlz4n/bq5iP3
 9a7xBCaUGQd1P50JBEHPC3N1PP6Jo3Gm9/WKGYnpf+Nf9nkIS2k+sgEHK Q==;
X-CSE-ConnectionGUID: bX+OK9XPRIWTlrruFCMMNw==
X-CSE-MsgGUID: t7SsQIxMQGGQQ8yQN19LlQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11068"; a="15141221"
X-IronPort-AV: E=Sophos;i="6.08,150,1712646000"; d="scan'208";a="15141221"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2024 02:43:19 -0700
X-CSE-ConnectionGUID: eVc5MbQOSdCJ1BXZTz6ofw==
X-CSE-MsgGUID: 31y3fOsmR/iSdMXAUpyp7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,150,1712646000"; d="scan'208";a="34213574"
Received: from ettammin-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.180])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2024 02:43:17 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 1/2] drm/xe/display: remove unused xe->enabled_irq_mask
Date: Fri, 10 May 2024 12:43:12 +0300
Message-Id: <20240510094313.3422982-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

The xe->enabled_irq_mask member has never been used for anything.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/xe/display/xe_display.c | 1 -
 drivers/gpu/drm/xe/xe_device_types.h    | 2 --
 2 files changed, 3 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index 0de0566e5b39..fbe2c2eddea9 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -97,7 +97,6 @@ int xe_display_create(struct xe_device *xe)
 	xe->display.hotplug.dp_wq = alloc_ordered_workqueue("xe-dp", 0);
 
 	drmm_mutex_init(&xe->drm, &xe->sb_lock);
-	xe->enabled_irq_mask = ~0;
 
 	return drmm_add_action_or_reset(&xe->drm, display_destroy, NULL);
 }
diff --git a/drivers/gpu/drm/xe/xe_device_types.h b/drivers/gpu/drm/xe/xe_device_types.h
index 906b98fb973b..b78223e3baab 100644
--- a/drivers/gpu/drm/xe/xe_device_types.h
+++ b/drivers/gpu/drm/xe/xe_device_types.h
@@ -517,8 +517,6 @@ struct xe_device {
 	/* only to allow build, not used functionally */
 	u32 irq_mask;
 
-	u32 enabled_irq_mask;
-
 	struct intel_uncore {
 		spinlock_t lock;
 	} uncore;
-- 
2.39.2

