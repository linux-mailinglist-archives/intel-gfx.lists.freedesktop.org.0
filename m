Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2758887F5F6
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Mar 2024 04:13:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 868ED10E9AC;
	Tue, 19 Mar 2024 03:13:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mKRJoHne";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6519610E855;
 Tue, 19 Mar 2024 03:13:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710818024; x=1742354024;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=awCCORVC/7TUDeC8Q8/kW632vozFVZ4zL689/rsgskE=;
 b=mKRJoHnesQB2vOl236oO7jlZT1/7xoWjvGuKfmVSpD90vEttqXFEAeuK
 vXrRcZ1MjqTP5dawcZyuErKmF+dXCJhj5UaYF2moFCATLPl7Kk1SK7iCK
 GJbyPjTI6ASr3pR0b4nSnUHVVQC1eWHrAT2gxgBT/G+WEt8n9A+LyZjuv
 SiAcllg6uILlxtU8kZogLA12ODky42VmuR/t0N3TVk/YOH91fkQGNc20T
 hrn/4d5J97S/N64DekaB/b7/t369AZP9rMA/+vxjA8WGNoouRIPKdhf/F
 9K3jlBASMTyqR16jI2RH+OeB0ppESAwbtCNsX02GsMHMg0K75ba3q/yRI g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11017"; a="5878059"
X-IronPort-AV: E=Sophos;i="6.07,135,1708416000"; 
   d="scan'208";a="5878059"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2024 20:13:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,135,1708416000"; d="scan'208";a="14324597"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by orviesa008.jf.intel.com with ESMTP; 18 Mar 2024 20:13:41 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Arun R Murthy <arun.r.murthy@intel.com>
Subject: [PATCH] drm/xe/display: check for error on drmm_mutex_init
Date: Tue, 19 Mar 2024 08:33:41 +0530
Message-Id: <20240319030341.3907617-1-arun.r.murthy@intel.com>
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
 drivers/gpu/drm/xe/display/xe_display.c | 24 ++++++++++++++++++------
 1 file changed, 18 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index e4db069f0db3..c59fa832758d 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -107,12 +107,24 @@ int xe_display_create(struct xe_device *xe)
 
 	xe->display.hotplug.dp_wq = alloc_ordered_workqueue("xe-dp", 0);
 
-	drmm_mutex_init(&xe->drm, &xe->sb_lock);
-	drmm_mutex_init(&xe->drm, &xe->display.backlight.lock);
-	drmm_mutex_init(&xe->drm, &xe->display.audio.mutex);
-	drmm_mutex_init(&xe->drm, &xe->display.wm.wm_mutex);
-	drmm_mutex_init(&xe->drm, &xe->display.pps.mutex);
-	drmm_mutex_init(&xe->drm, &xe->display.hdcp.hdcp_mutex);
+	err = drmm_mutex_init(&xe->drm, &xe->sb_lock);
+	if (err)
+		return err;
+	err = drmm_mutex_init(&xe->drm, &xe->display.backlight.lock);
+	if (err)
+		return err;
+	err = drmm_mutex_init(&xe->drm, &xe->display.audio.mutex);
+	if (err)
+		return err;
+	err = drmm_mutex_init(&xe->drm, &xe->display.wm.wm_mutex);
+	if (err)
+		return err;
+	err = drmm_mutex_init(&xe->drm, &xe->display.pps.mutex);
+	if (err)
+		return err;
+	err = drmm_mutex_init(&xe->drm, &xe->display.hdcp.hdcp_mutex);
+	if (err)
+		return err;
 	xe->enabled_irq_mask = ~0;
 
 	err = drmm_add_action_or_reset(&xe->drm, display_destroy, NULL);
-- 
2.25.1

