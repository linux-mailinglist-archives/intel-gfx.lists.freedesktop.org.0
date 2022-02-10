Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2120E4B1201
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Feb 2022 16:47:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33A6F10E89D;
	Thu, 10 Feb 2022 15:47:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB8D010E89D
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Feb 2022 15:47:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644508033; x=1676044033;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CYXX76In8ODUyZ/l4gcjtOTiifEPJ5h7If5B+H0ZrOY=;
 b=YslnnOQoqUGSwGsTrvNNFPbH3y41KZycprk6dq6DWu8hs5FnHoaCANNN
 tIrvz7xb5Dlt6VSXWCDQ13UW33QssOcPANUiU9iZrt/eGv0HCvVK7jgQL
 8XpAPRSVGO+u7KhAZOvn3qF4f3QD1lvsOmJwlOEvNUqzglmnFLfkapSpD
 8yBRm9ilRtuQCYLz9NwY+Xo6NiYj67dQHT9ljztmDFj3eDxbBXjtsLxwk
 5uqoVAEVSKHrS1XFwjR2hej7wsjQtvQLuz0gf6n3XM1E1tdNYHa+Ykyv+
 be3SS8jfOZpNSIigc4t11QRBCYliLQcoFhHToxGYVXMNEsI7myIvMJ5wZ A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10254"; a="249269929"
X-IronPort-AV: E=Sophos;i="5.88,359,1635231600"; d="scan'208";a="249269929"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 07:47:13 -0800
X-IronPort-AV: E=Sophos;i="5.88,359,1635231600"; d="scan'208";a="537340905"
Received: from dhogarty-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.10.221])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 07:47:10 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Feb 2022 17:45:52 +0200
Message-Id: <679923380d4757fed4e3a4c4bed80e40b9fdaeec.1644507885.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1644507885.git.jani.nikula@intel.com>
References: <cover.1644507885.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 14/14] drm/i915: fix drm_i915.h include
 grouping and sorting
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
Cc: jani.nikula@intel.com, Daniel Vetter <daniel.vetter@ffwll.ch>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Group and sort includes in i915_drv.h similar to other places.

Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h | 16 +++++++---------
 1 file changed, 7 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 3bb2c48018a0..418091484e02 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -42,9 +42,6 @@
 #include <drm/drm_connector.h>
 #include <drm/ttm/ttm_device.h>
 
-#include "i915_params.h"
-#include "i915_utils.h"
-
 #include "display/intel_bios.h"
 #include "display/intel_cdclk.h"
 #include "display/intel_display.h"
@@ -59,9 +56,9 @@
 #include "display/intel_opregion.h"
 
 #include "gem/i915_gem_context_types.h"
+#include "gem/i915_gem_lmem.h"
 #include "gem/i915_gem_shrinker.h"
 #include "gem/i915_gem_stolen.h"
-#include "gem/i915_gem_lmem.h"
 
 #include "gt/intel_engine.h"
 #include "gt/intel_gt_types.h"
@@ -69,6 +66,12 @@
 #include "gt/intel_workarounds.h"
 #include "gt/uc/intel_uc.h"
 
+#include "i915_gem.h"
+#include "i915_gpu_error.h"
+#include "i915_params.h"
+#include "i915_perf_types.h"
+#include "i915_scheduler.h"
+#include "i915_utils.h"
 #include "intel_device_info.h"
 #include "intel_memory_region.h"
 #include "intel_pch.h"
@@ -78,11 +81,6 @@
 #include "intel_uncore.h"
 #include "intel_wopcm.h"
 
-#include "i915_gem.h"
-#include "i915_gpu_error.h"
-#include "i915_perf_types.h"
-#include "i915_scheduler.h"
-
 struct dpll;
 struct drm_i915_clock_gating_funcs;
 struct drm_i915_gem_object;
-- 
2.30.2

