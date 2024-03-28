Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F209788F9C1
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Mar 2024 09:10:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F009D10F9A7;
	Thu, 28 Mar 2024 08:10:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cRu0AVr4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7CACA11211F;
 Thu, 28 Mar 2024 08:10:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711613409; x=1743149409;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=SBEjmPwj7wlGSMrGweKqKK5ZCDYpJfOGXamSi1LMuZA=;
 b=cRu0AVr4YWfRuV85JS09qlv0NZmwskWQyxlJCp+SLXlWCpVnTJ3bPNZe
 7yuLdOAAz3fs9IQin/tGd8Yb3YqgJibZZcNvmSkPc3vcTs87gY1yl8nks
 dhSO+1wHmp0TTPxqHBM6WWwywJ4BqTvpVjhnL9PGhrcWBbim3WB8/ECl0
 NmkDgQk5XabQvaZ8d4owRCYjJcKhUoL+XtS1mMYwG1YY5iIfyS22Cf7jZ
 azPSIt663ViMQYFPr2F25n1AMH+szeslF2MizWVjjMm/ShX93K6axk4aB
 WrPLs/gf3s5BYs/eoaNeOBzzOYHTjSIj47aJG+DlwPsyPCqdHwLajdYN3 g==;
X-CSE-ConnectionGUID: WT9ciqsOThCLmmrJZG970Q==
X-CSE-MsgGUID: rKef3qhYQEGLQQ3LPFzgQw==
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="6971531"
X-IronPort-AV: E=Sophos;i="6.07,161,1708416000"; 
   d="scan'208";a="6971531"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 01:10:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,161,1708416000"; d="scan'208";a="47771220"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by fmviesa001.fm.intel.com with ESMTP; 28 Mar 2024 01:10:07 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Arun R Murthy <arun.r.murthy@intel.com>
Subject: [PATCHv2] drm/xe/display: check for error on drmm_mutex_init
Date: Thu, 28 Mar 2024 13:30:05 +0530
Message-Id: <20240328080005.410961-1-arun.r.murthy@intel.com>
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

Check return value for drmm_mutex_init as it can fail and return on
failure.

Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/xe/display/xe_display.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index e4db069f0db3..b2f58b3afabe 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -107,12 +107,14 @@ int xe_display_create(struct xe_device *xe)
 
 	xe->display.hotplug.dp_wq = alloc_ordered_workqueue("xe-dp", 0);
 
-	drmm_mutex_init(&xe->drm, &xe->sb_lock);
-	drmm_mutex_init(&xe->drm, &xe->display.backlight.lock);
-	drmm_mutex_init(&xe->drm, &xe->display.audio.mutex);
-	drmm_mutex_init(&xe->drm, &xe->display.wm.wm_mutex);
-	drmm_mutex_init(&xe->drm, &xe->display.pps.mutex);
-	drmm_mutex_init(&xe->drm, &xe->display.hdcp.hdcp_mutex);
+	if (drmm_mutex_init(&xe->drm, &xe->sb_lock) ||
+	    drmm_mutex_init(&xe->drm, &xe->display.backlight.lock) ||
+	    drmm_mutex_init(&xe->drm, &xe->display.audio.mutex) ||
+	    drmm_mutex_init(&xe->drm, &xe->display.wm.wm_mutex) ||
+	    drmm_mutex_init(&xe->drm, &xe->display.pps.mutex) ||
+	    drmm_mutex_init(&xe->drm, &xe->display.hdcp.hdcp_mutex))
+		return -ENOMEM;
+
 	xe->enabled_irq_mask = ~0;
 
 	err = drmm_add_action_or_reset(&xe->drm, display_destroy, NULL);
-- 
2.25.1

