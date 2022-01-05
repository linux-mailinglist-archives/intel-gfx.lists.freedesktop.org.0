Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B17CE4859AE
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jan 2022 20:58:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5F6A10E31F;
	Wed,  5 Jan 2022 19:58:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C63CC10E31F
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jan 2022 19:58:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641412710; x=1672948710;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=I838Q6qLsFCic1o1T5KauYnMDGjmivMyZkOwtUk0ysQ=;
 b=ai1RljVbqCYn8kWIornOapnxgFJ49R9KdtIZnju4Z1oRFwo9mFi+DZzi
 0z/IsIXeEjRFTFplYVxlCeG7qj1YY1bOrisZ7bnAUVjZ+OTZVXH2sEjqx
 ZovYYdPPHppQsZarQkL6/uwK39Yrim9B09iVjqgrITGVTTDU7fNEl4zcb
 +JRNeJgxJj7LAS0tIxTBrCsV0ARVZcBpJ7NMB2YazsSgtAzApc0APPr2I
 zARJr6BwQFrUmBfHd7TGKrQ2YU4JHVlmmPsCcqKtfkX16RRevCenNElHl
 cOU5O9gJbu/LUPPASpiy1+d7B4iRLoGHXDfuHI//hhZFnF9EIUgIjrZlH g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10217"; a="223210748"
X-IronPort-AV: E=Sophos;i="5.88,264,1635231600"; d="scan'208";a="223210748"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2022 11:58:30 -0800
X-IronPort-AV: E=Sophos;i="5.88,264,1635231600"; d="scan'208";a="618082684"
Received: from menright-mobl1.amr.corp.intel.com (HELO localhost)
 ([10.252.25.244])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2022 11:58:27 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 Jan 2022 21:56:36 +0200
Message-Id: <9406998fac24df642719f6f3d74f7dc64848cd52.1641411696.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1641411696.git.jani.nikula@intel.com>
References: <cover.1641411696.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 20/21] drm/i915: fix drm_i915.h include grouping
 and sorting
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

Group and sort includes in i915_drv.h similar to other places.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h | 19 ++++++++-----------
 1 file changed, 8 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 7ceb4b596c1c..ddd06b6f5f41 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -42,10 +42,6 @@
 #include <drm/drm_connector.h>
 #include <drm/ttm/ttm_device.h>
 
-#include "i915_params.h"
-#include "i915_reg.h"
-#include "i915_utils.h"
-
 #include "display/intel_bios.h"
 #include "display/intel_cdclk.h"
 #include "display/intel_display.h"
@@ -60,9 +56,9 @@
 #include "display/intel_opregion.h"
 
 #include "gem/i915_gem_context_types.h"
+#include "gem/i915_gem_lmem.h"
 #include "gem/i915_gem_shrinker.h"
 #include "gem/i915_gem_stolen.h"
-#include "gem/i915_gem_lmem.h"
 
 #include "gt/intel_engine.h"
 #include "gt/intel_gt_types.h"
@@ -70,6 +66,13 @@
 #include "gt/intel_workarounds.h"
 #include "gt/uc/intel_uc.h"
 
+#include "i915_gem.h"
+#include "i915_gpu_error.h"
+#include "i915_params.h"
+#include "i915_perf_types.h"
+#include "i915_reg.h"
+#include "i915_scheduler.h"
+#include "i915_utils.h"
 #include "intel_device_info.h"
 #include "intel_memory_region.h"
 #include "intel_pch.h"
@@ -79,12 +82,6 @@
 #include "intel_uncore.h"
 #include "intel_wopcm.h"
 
-#include "i915_gem.h"
-#include "i915_gpu_error.h"
-#include "i915_perf_types.h"
-#include "i915_scheduler.h"
-
-
 /* General customization:
  */
 
-- 
2.30.2

