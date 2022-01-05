Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C9FB485111
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jan 2022 11:21:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92AB110E20B;
	Wed,  5 Jan 2022 10:21:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA8A310E20B
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jan 2022 10:21:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641378097; x=1672914097;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=UWaXGb4qeHmsP4e8lN3MWWXoyIhx9o/clVizCmYSQ7E=;
 b=JVw5j3cpM8QBC03KyTDT1/+AxzwvtV8CXNpY5Ha4/PwQSW5a4zAsjUGk
 t/4CArxIfiDlitSZyrpauobNT/XG0zM/4zdBooNCAoo5cvaKiU/U/sql/
 jsJRo9f1uIU2MMNCdTXjgkZCFZYwwepzwhiFdXX4tYD5dGsOxAA4pBi35
 V2ZUEhNOhQLUayiXjUDSYHXVUw2OVuP+fNV8Humv+N+ecaIS2wWUAqbPN
 /8vN1BbEjqvvfRnwFF0EiuAZ9+dzpgK87UndX69XeTe7f7dqiiMutQOh+
 KnCwKzYcMeyuoTVqMUGAY7WFTfWdCzERNpSk/AJudTwZnxiIKK2K1nmAF Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10217"; a="241232600"
X-IronPort-AV: E=Sophos;i="5.88,263,1635231600"; d="scan'208";a="241232600"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2022 02:21:37 -0800
X-IronPort-AV: E=Sophos;i="5.88,263,1635231600"; d="scan'208";a="526463544"
Received: from menright-mobl1.amr.corp.intel.com (HELO localhost)
 ([10.252.25.244])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2022 02:21:35 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 Jan 2022 12:21:31 +0200
Message-Id: <20220105102131.988791-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: stop including i915_irq.h from
 i915_drv.h
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Only include i915_irq.h where actually needed.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc.c          | 1 +
 drivers/gpu/drm/i915/display/intel_display_trace.h | 1 +
 drivers/gpu/drm/i915/gt/intel_rps.c                | 1 +
 drivers/gpu/drm/i915/gt/uc/intel_guc.c             | 1 +
 drivers/gpu/drm/i915/gt/uc/intel_guc_log.c         | 1 +
 drivers/gpu/drm/i915/i915_drv.h                    | 1 -
 6 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index 16c3ca66d9f0..08ee3e17ee5c 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -12,6 +12,7 @@
 #include <drm/drm_plane_helper.h>
 #include <drm/drm_vblank_work.h>
 
+#include "i915_irq.h"
 #include "i915_vgpu.h"
 #include "i9xx_plane.h"
 #include "icl_dsi.h"
diff --git a/drivers/gpu/drm/i915/display/intel_display_trace.h b/drivers/gpu/drm/i915/display/intel_display_trace.h
index 4043e1276383..f05f0f9b5103 100644
--- a/drivers/gpu/drm/i915/display/intel_display_trace.h
+++ b/drivers/gpu/drm/i915/display/intel_display_trace.h
@@ -13,6 +13,7 @@
 #include <linux/tracepoint.h>
 
 #include "i915_drv.h"
+#include "i915_irq.h"
 #include "intel_crtc.h"
 #include "intel_display_types.h"
 
diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index 54e7df788dbf..bd35e45d3aaa 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -6,6 +6,7 @@
 #include <drm/i915_drm.h>
 
 #include "i915_drv.h"
+#include "i915_irq.h"
 #include "intel_breadcrumbs.h"
 #include "intel_gt.h"
 #include "intel_gt_clock_utils.h"
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
index 6e228343e8cb..0c52d1652e8b 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
@@ -12,6 +12,7 @@
 #include "intel_guc_ads.h"
 #include "intel_guc_submission.h"
 #include "i915_drv.h"
+#include "i915_irq.h"
 
 /**
  * DOC: GuC
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
index ac0931f0374b..7b0b43e87244 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
@@ -7,6 +7,7 @@
 
 #include "gt/intel_gt.h"
 #include "i915_drv.h"
+#include "i915_irq.h"
 #include "i915_memcpy.h"
 #include "intel_guc_log.h"
 
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index beeb42a14aae..3967748ba347 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -106,7 +106,6 @@
 #include "i915_scheduler.h"
 #include "gt/intel_timeline.h"
 #include "i915_vma.h"
-#include "i915_irq.h"
 
 
 /* General customization:
-- 
2.30.2

