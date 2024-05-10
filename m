Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 258128C213B
	for <lists+intel-gfx@lfdr.de>; Fri, 10 May 2024 11:43:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5C6510E883;
	Fri, 10 May 2024 09:43:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mhbKFhAy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBECA10E883;
 Fri, 10 May 2024 09:43:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715334204; x=1746870204;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=y1sjIA94UXnMUkOM4htrzOYPfIFieDc3SifgNCcLZmw=;
 b=mhbKFhAy8VQlvkzaDwSSegmsDbsqRetLcqcNBPGnXMk1ndNmWRtWjcvb
 j1O1KFhq/k4WnxjayIuCthcclhbcUm3UYd12JSNRSouZ+ujjLxCsG/q2e
 mot8dyXDIeNnB+Plx+Z2+D7y6n7ty+2fJVbzIco3JnxArTppAPyR6+fgt
 KzfsktDkukSJxnhboua9aR8NdRq511MhqSK3Z+B8pupJAMD3xwFN1QWnT
 9gX0Srsc5lXQoGz8e1E3P5+tC0ow63vIBFxo9tqunES0e4zTnHwNBz29v
 o0Xn1SAtueu6Q5XoYtZwU0yBWxNSJ7tyRzUgsaJ+Xf/6hy+Pep1zRUPBL Q==;
X-CSE-ConnectionGUID: Pt3tfiM3SPiIjyYfmlHYWQ==
X-CSE-MsgGUID: 4FXjKWSxT/qvMlp6WLlwUg==
X-IronPort-AV: E=McAfee;i="6600,9927,11068"; a="15141224"
X-IronPort-AV: E=Sophos;i="6.08,150,1712646000"; d="scan'208";a="15141224"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2024 02:43:24 -0700
X-CSE-ConnectionGUID: d3QAaFFrTzS+98qFyTluzA==
X-CSE-MsgGUID: ybnCy3kQSFioOIssNn9uSg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,150,1712646000"; d="scan'208";a="34213661"
Received: from ettammin-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.180])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2024 02:43:22 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 2/2] drm/xe/display: remove unused xe->sb_lock
Date: Fri, 10 May 2024 12:43:13 +0300
Message-Id: <20240510094313.3422982-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240510094313.3422982-1-jani.nikula@intel.com>
References: <20240510094313.3422982-1-jani.nikula@intel.com>
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

Nothing in xe needs xe->sb_lock. None of the i915 display code using
->sb_lock gets built with xe, and in any case that would be wrong as xe
uses gt->pcode.lock for this.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/xe/display/xe_display.c | 2 --
 drivers/gpu/drm/xe/xe_device_types.h    | 3 ---
 2 files changed, 5 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index fbe2c2eddea9..a2c39bcc7677 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -96,8 +96,6 @@ int xe_display_create(struct xe_device *xe)
 
 	xe->display.hotplug.dp_wq = alloc_ordered_workqueue("xe-dp", 0);
 
-	drmm_mutex_init(&xe->drm, &xe->sb_lock);
-
 	return drmm_add_action_or_reset(&xe->drm, display_destroy, NULL);
 }
 
diff --git a/drivers/gpu/drm/xe/xe_device_types.h b/drivers/gpu/drm/xe/xe_device_types.h
index b78223e3baab..5c5e36de452a 100644
--- a/drivers/gpu/drm/xe/xe_device_types.h
+++ b/drivers/gpu/drm/xe/xe_device_types.h
@@ -511,9 +511,6 @@ struct xe_device {
 	/* To shut up runtime pm macros.. */
 	struct xe_runtime_pm {} runtime_pm;
 
-	/* For pcode */
-	struct mutex sb_lock;
-
 	/* only to allow build, not used functionally */
 	u32 irq_mask;
 
-- 
2.39.2

