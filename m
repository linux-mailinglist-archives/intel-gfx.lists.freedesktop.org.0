Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F4194697E39
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Feb 2023 15:19:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74B0010E25C;
	Wed, 15 Feb 2023 14:19:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B8A710E27B
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Feb 2023 14:19:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676470768; x=1708006768;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FiMQJmd8CEQwLmhrXalW7iKb/XQXuP7pFDibTsOQ+us=;
 b=DkUS3UFZwlzxwNo6xaukKp57SdxQyuCRivZwQJ6djhzbaV0Wq6xtihIY
 wguUQD6insVAk761BezUcTHWNLNtkiRbUjs2aLjnAlTGEx8OjBVb0J7r6
 sGxxCFzijR9V16GjnSMSEPiViaoaG7Ur4ySaBq7hFoD+wH60EH/G9HdVA
 /cxH1z6C7ylBFmBtAc+6lsJLdIStkBWAMY+BAwAHDTZ2+P4foxO9nh7JX
 XLMfNvhUTOyn6ya79gtWzzfQhxUYWI+Cu5Jv4pyheX22dfvuVRmxY1d/w
 oensg0QVwktnct9k1LKUGbKgdeVmzpdBYDVNt3JRFMMR0voWuiJqbY5b7 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="329156574"
X-IronPort-AV: E=Sophos;i="5.97,299,1669104000"; d="scan'208";a="329156574"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2023 06:19:27 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="662955822"
X-IronPort-AV: E=Sophos;i="5.97,299,1669104000"; d="scan'208";a="662955822"
Received: from gchung-mobl.gar.corp.intel.com (HELO localhost)
 ([10.252.51.244])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2023 06:19:26 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Feb 2023 16:19:09 +0200
Message-Id: <20230215141910.433043-4-jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230215141910.433043-1-jani.nikula@intel.com>
References: <20230215141910.433043-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 4/5] drm/i915: rename intel_pm_types.h ->
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
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
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

