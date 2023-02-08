Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A444368EC19
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Feb 2023 10:49:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22A7510E741;
	Wed,  8 Feb 2023 09:49:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 425B310E73E
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Feb 2023 09:49:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675849777; x=1707385777;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=AMQ/SSR803tkU0Bwt0lwrqfEtJ1i1v7/zAnvmxrTyaI=;
 b=TmITuzVut77RV5VHO3sBr2FgLvaWSnoPIH8a9QfdSGS8THj8CVnDbvCL
 mv1sEmGBG/45+6kg/LuNofpiWbcaWUx3rZ1mVKIb1PjK6PgdlySx3CsLK
 9nywHwb/63UDQ6XxuZ90LFV+67VzOqxHWjNvGomUE2x/DXt2uDD3CBTz9
 nyR33PQaUNffLgK05E1f5W9ZHV22oBgRMXOMhZK0nlAwXGnl1TSM10siN
 wfuibr9NcodydXM4sFpActAgz2n1d9IWQDM1Ob8n+gjG26NGkt9nRBe6m
 ONgUsGmGr4wK52+z/LuOlexoKGQgMrRoovdqLFyW3zPp/4Bb3W99+BtRt A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="394348247"
X-IronPort-AV: E=Sophos;i="5.97,280,1669104000"; d="scan'208";a="394348247"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2023 01:49:37 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="697619099"
X-IronPort-AV: E=Sophos;i="5.97,280,1669104000"; d="scan'208";a="697619099"
Received: from joergber-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.48.82])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2023 01:49:35 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 Feb 2023 11:48:48 +0200
Message-Id: <311b2064f2a573a716b736ac8a435599441e9fa9.1675849634.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1675849634.git.jani.nikula@intel.com>
References: <cover.1675849634.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 10/10] drm/i915: rename intel_pm_types.h ->
 display/intel_wm_types.h
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The file was never really about pm types, and now it's even more
obvious. Move under display as intel_wm_types.h.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_core.h           | 2 +-
 drivers/gpu/drm/i915/display/intel_display_types.h          | 2 +-
 .../drm/i915/{intel_pm_types.h => display/intel_wm_types.h} | 6 +++---
 drivers/gpu/drm/i915/display/skl_watermark.h                | 2 +-
 4 files changed, 6 insertions(+), 6 deletions(-)
 rename drivers/gpu/drm/i915/{intel_pm_types.h => display/intel_wm_types.h} (93%)

diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 176dbe52025b..93087ad78bda 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -25,7 +25,7 @@
 #include "intel_global_state.h"
 #include "intel_gmbus.h"
 #include "intel_opregion.h"
-#include "intel_pm_types.h"
+#include "intel_wm_types.h"
 
 struct drm_i915_private;
 struct drm_property;
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 6e94be7c3e7f..748b0cd411fa 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -53,7 +53,7 @@
 #include "intel_display_limits.h"
 #include "intel_display_power.h"
 #include "intel_dpll_mgr.h"
-#include "intel_pm_types.h"
+#include "intel_wm_types.h"
 
 struct drm_printer;
 struct __intel_global_objs_state;
diff --git a/drivers/gpu/drm/i915/intel_pm_types.h b/drivers/gpu/drm/i915/display/intel_wm_types.h
similarity index 93%
rename from drivers/gpu/drm/i915/intel_pm_types.h
rename to drivers/gpu/drm/i915/display/intel_wm_types.h
index 93152537b420..bac2b6fdc5d0 100644
--- a/drivers/gpu/drm/i915/intel_pm_types.h
+++ b/drivers/gpu/drm/i915/display/intel_wm_types.h
@@ -3,8 +3,8 @@
  * Copyright © 2021 Intel Corporation
  */
 
-#ifndef __INTEL_PM_TYPES_H__
-#define __INTEL_PM_TYPES_H__
+#ifndef __INTEL_WM_TYPES_H__
+#define __INTEL_WM_TYPES_H__
 
 #include <linux/types.h>
 
@@ -73,4 +73,4 @@ static inline bool skl_ddb_entry_equal(const struct skl_ddb_entry *e1,
 	return false;
 }
 
-#endif /* __INTEL_PM_TYPES_H__ */
+#endif /* __INTEL_WM_TYPES_H__ */
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.h b/drivers/gpu/drm/i915/display/skl_watermark.h
index 22002782aee5..9e527c3d41b6 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.h
+++ b/drivers/gpu/drm/i915/display/skl_watermark.h
@@ -10,7 +10,7 @@
 
 #include "intel_display_limits.h"
 #include "intel_global_state.h"
-#include "intel_pm_types.h"
+#include "intel_wm_types.h"
 
 struct drm_i915_private;
 struct intel_atomic_state;
-- 
2.34.1

