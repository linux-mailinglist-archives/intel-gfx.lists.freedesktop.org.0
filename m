Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A77F1AA097B
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Apr 2025 13:25:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2391810E428;
	Tue, 29 Apr 2025 11:25:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SMqOOCgy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F19510E428;
 Tue, 29 Apr 2025 11:25:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745925941; x=1777461941;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=PHeGZRg1zCQrfczxlpdtZgOIMWH6uq0EnrbZIjSqAMI=;
 b=SMqOOCgyW0cSuDgZUOY/Jnn5THe1gBX3t5RahtLOQN9vEgtrwg0ehUW0
 7enh5wRVj1io0i+8k/T9OrtxLTic6UI9wW6CR2Q7EoL8VXHe0sbzH8RyY
 QmLMvytibv8phRLF4U8dl/aOHlwqZyPLyS/mUs73QlXq8GObIw/Mf2RfI
 ZNAkOeN9eOE1mlcBdF2qLs0Lyrsdz2+uDtuNT9iwpTAjckoKB8b0+9Nbh
 wQz7O+/cFMpJIr0sbP62mEGNA4/+lgTfl4BIuEiW5mI0btRplxd2pARFS
 Ehy7+4fUYp6ZcnnEFqz7Eamexwq3r1wcFAGqtvY3BmhNcmGxR/9qVjAzI w==;
X-CSE-ConnectionGUID: pPY74VdKQ4+z+x5p0U/17w==
X-CSE-MsgGUID: HPdPkO/gT4i7vLg79fmWoA==
X-IronPort-AV: E=McAfee;i="6700,10204,11417"; a="72916208"
X-IronPort-AV: E=Sophos;i="6.15,249,1739865600"; d="scan'208";a="72916208"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2025 04:25:41 -0700
X-CSE-ConnectionGUID: NRTBlVo/RnuQpN0p3BvFGg==
X-CSE-MsgGUID: JbcCOxZARea6HG0GWizmjQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,249,1739865600"; d="scan'208";a="133697541"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.9])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2025 04:25:39 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH] drm/i915/backlight: drop dmesg suggestion to file bugs
Date: Tue, 29 Apr 2025 14:25:34 +0300
Message-Id: <20250429112534.2121656-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
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

Drop the FDO_BUG_URL from the source, and stop suggesting to file bugs
on DPCD backlight issues. We don't do this anywhere else in display,
this isn't a special snowflake.

As a consequence, also drop the dependency on i915_utils.h from
intel_dp_aux_backlight.c.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c | 3 +--
 drivers/gpu/drm/i915/i915_utils.h                     | 2 --
 2 files changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
index 20ab90acb351..271b27c9de51 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
@@ -36,7 +36,6 @@
 
 #include <drm/drm_print.h>
 
-#include "i915_utils.h"
 #include "intel_backlight.h"
 #include "intel_display_core.h"
 #include "intel_display_types.h"
@@ -149,7 +148,7 @@ intel_dp_aux_supports_hdr_backlight(struct intel_connector *connector)
 	    !(connector->base.hdr_sink_metadata.hdmi_type1.metadata_type &
 	      BIT(HDMI_STATIC_METADATA_TYPE1))) {
 		drm_info(display->drm,
-			 "[CONNECTOR:%d:%s] Panel is missing HDR static metadata. Possible support for Intel HDR backlight interface is not used. If your backlight controls don't work try booting with i915.enable_dpcd_backlight=%d. needs this, please file a _new_ bug report on drm/i915, see " FDO_BUG_URL " for details.\n",
+			 "[CONNECTOR:%d:%s] Panel is missing HDR static metadata. Possible support for Intel HDR backlight interface is not used. If your backlight controls don't work try booting with i915.enable_dpcd_backlight=%d.\n",
 			 connector->base.base.id, connector->base.name,
 			 INTEL_DP_AUX_BACKLIGHT_FORCE_INTEL);
 		return false;
diff --git a/drivers/gpu/drm/i915/i915_utils.h b/drivers/gpu/drm/i915/i915_utils.h
index 609214231ffc..f7fb40cfdb70 100644
--- a/drivers/gpu/drm/i915/i915_utils.h
+++ b/drivers/gpu/drm/i915/i915_utils.h
@@ -40,8 +40,6 @@
 struct drm_i915_private;
 struct timer_list;
 
-#define FDO_BUG_URL "https://drm.pages.freedesktop.org/intel-docs/how-to-file-i915-bugs.html"
-
 #define MISSING_CASE(x) WARN(1, "Missing case (%s == %ld)\n", \
 			     __stringify(x), (long)(x))
 
-- 
2.39.5

