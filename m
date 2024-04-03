Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F437897204
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Apr 2024 16:11:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB5F3112B54;
	Wed,  3 Apr 2024 14:11:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KOSEIjnA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B2F1112B52;
 Wed,  3 Apr 2024 14:11:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712153465; x=1743689465;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=pEb+Aaz3yeOrNrw75m9m01qQJwfWExoVuPJvxrOi9Ho=;
 b=KOSEIjnA4ubjIGncEXKuc1+caoWcDN5fbDIDW9v6NBUzKZ3wljR+ObZ7
 PA12TDL4C2kBJPl6ce9P6JqBLHg9OGwJehh1XZB+jRyzpeiposOocG9t7
 mZl+HhULM+tCrgzfX3lO3QdteQqxvTsRdN0A2aK+P3MuCMAvr+TczFZY/
 qD2OeGJcR6s4IGGaX9iKYQ7PIxgI+TANVEsbWzE97ihas8R68gnivuXg0
 myG+bi/O5pcvEMgtEt0nwYHuMCWH6+fUmNwzkpRj0w++Cq/UYc9kStwkL
 Pys2JBl0PgWQhbpAep/XI9Wh1uMPn2e+JHU3n5+JYoSgalcQPCiYigylT Q==;
X-CSE-ConnectionGUID: jzS7Qm15SmCTaVsDhFjvig==
X-CSE-MsgGUID: jljB8nrWQ36a55/6fklRgw==
X-IronPort-AV: E=McAfee;i="6600,9927,11033"; a="11212618"
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="11212618"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 07:11:04 -0700
X-CSE-ConnectionGUID: 0fjSJ7mPQtqs58uPayw0Cw==
X-CSE-MsgGUID: zao9/75ZTCuXecisFyit4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="49686579"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by fmviesa001.fm.intel.com with ESMTP; 03 Apr 2024 07:11:03 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Arun R Murthy <arun.r.murthy@intel.com>
Subject: [PATCHv3] drm/xe/display: check for error on drmm_mutex_init
Date: Wed,  3 Apr 2024 19:31:05 +0530
Message-Id: <20240403140105.1306622-1-arun.r.murthy@intel.com>
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

v2: Removed nested if (Lucas)
v3: Revert back to nested if (Andi)

Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/xe/display/xe_display.c | 30 ++++++++++++++++++++-----
 1 file changed, 24 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index e4db069f0db3..04b83ca5168c 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -107,12 +107,30 @@ int xe_display_create(struct xe_device *xe)
 
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
+
+	err = drmm_mutex_init(&xe->drm, &xe->display.backlight.lock);
+	if (err)
+		return err;
+
+	err = drmm_mutex_init(&xe->drm, &xe->display.audio.mutex);
+	if (err)
+		return err;
+
+	err = drmm_mutex_init(&xe->drm, &xe->display.wm.wm_mutex);
+	if (err)
+		return err;
+
+	err = drmm_mutex_init(&xe->drm, &xe->display.pps.mutex);
+	if (err)
+		return err;
+
+	err = drmm_mutex_init(&xe->drm, &xe->display.hdcp.hdcp_mutex);
+	if (err)
+		return err;
+
 	xe->enabled_irq_mask = ~0;
 
 	err = drmm_add_action_or_reset(&xe->drm, display_destroy, NULL);
-- 
2.25.1

