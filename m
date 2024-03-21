Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ADBA2881C61
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Mar 2024 07:11:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A4EC10F012;
	Thu, 21 Mar 2024 06:11:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XU5HBJc+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1173D10F012;
 Thu, 21 Mar 2024 06:11:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711001485; x=1742537485;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=TJwXCOOw84+MEdLWr+yI62WPzIpALHdoXbpxiZoB0rE=;
 b=XU5HBJc+5nzVLCozsucC7niCLp7mgbNb4/hePg1aNKEqlTxbuhXnouah
 0dWezVisfPA908L2yD+d0uQzCEXwlZNuOepg5o+oEnj4gMlRgtJ1QM/FZ
 J4p6nHjtX9mbUWXE2g15/7lUztiSzKwuHK8cBUwSPBS1JhizIV7lqbttB
 sCxLAvuqmd5XDWZNWxTi4g8uNvBgLtIKJJiukMB8z75Rp/hv1OL+Dyao6
 6EzshbnOKUyiJKA2qRTbl1FrkiwAVE+4yrXO7UYwoFvKRhgawDlII9smr
 eo/WCBREOro2LYjOlun80QV0zyyF6milhXQkq+06rOwpWvKc/aGEe406z w==;
X-IronPort-AV: E=McAfee;i="6600,9927,11019"; a="9778561"
X-IronPort-AV: E=Sophos;i="6.07,142,1708416000"; 
   d="scan'208";a="9778561"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2024 23:11:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,142,1708416000"; d="scan'208";a="14294149"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by orviesa010.jf.intel.com with ESMTP; 20 Mar 2024 23:11:24 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Arun R Murthy <arun.r.murthy@intel.com>
Subject: [PATCH] drm/xe/display: check for error on drmm_mutex_init
Date: Thu, 21 Mar 2024 11:31:24 +0530
Message-Id: <20240321060124.4074773-1-arun.r.murthy@intel.com>
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
index e4db069f0db3..ac2e58d1fa82 100644
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
+	if ((drmm_mutex_init(&xe->drm, &xe->sb_lock)) ||
+	    (drmm_mutex_init(&xe->drm, &xe->display.backlight.lock)) ||
+	    (drmm_mutex_init(&xe->drm, &xe->display.audio.mutex)) ||
+	    (drmm_mutex_init(&xe->drm, &xe->display.wm.wm_mutex)) ||
+	    (drmm_mutex_init(&xe->drm, &xe->display.pps.mutex)) ||
+	    (drmm_mutex_init(&xe->drm, &xe->display.hdcp.hdcp_mutex)))
+		return -ENOMEM;
+
 	xe->enabled_irq_mask = ~0;
 
 	err = drmm_add_action_or_reset(&xe->drm, display_destroy, NULL);
-- 
2.25.1

