Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BAE2B695140
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Feb 2023 21:00:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11CA810E701;
	Mon, 13 Feb 2023 20:00:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E1B2910E703
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Feb 2023 20:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676318452; x=1707854452;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=v2XqkNYYfipKB8RNDwWLPs/8KSwZG5eB0CKfVTjWBjM=;
 b=OC1sgYqJgD/7uS5JFfIXEUQHP0ar8uZBg2y6KVR+LYnPwi3qvBnkil51
 omuLiTGyV6jKTPKVLGX186tb/9b0nD311JfW9+PQkTF6X2B5YMuJWJJYi
 338pPmJrwrXxKIq11TuXSi68yVgJPnobXfjqhXx7rnEkjqShc5YnkhWHY
 vHzcdkGxWGWKUDAy3g45pxdA9+QHK+PLq4Ket8/lncjlQF7z7QT0b39Tg
 Ce2aHT6SozGlpE2COq3WpvfBV7F63mrlrskrjbJm9FrbeKUjMNH0O6p7C
 +Uzr6kAm9N8WLIJK3vGVG/4PQOPthDoW5MrvGaOJfq90IVo6XveMe7GH1 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="332298820"
X-IronPort-AV: E=Sophos;i="5.97,294,1669104000"; d="scan'208";a="332298820"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2023 12:00:50 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="792844824"
X-IronPort-AV: E=Sophos;i="5.97,294,1669104000"; d="scan'208";a="792844824"
Received: from tkatila-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.50.147])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2023 12:00:48 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 13 Feb 2023 22:00:02 +0200
Message-Id: <bf599011039d7b2fb6f0522b44113d2d2ed0b44e.1676317696.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1676317696.git.jani.nikula@intel.com>
References: <cover.1676317696.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 7/7] drm/i915: rename intel_pm_types.h ->
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
index 52614fff0d76..b870f7f47f2b 100644
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
index f03fd991b189..f91a3d4ddc07 100644
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

