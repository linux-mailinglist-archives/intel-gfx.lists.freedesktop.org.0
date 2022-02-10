Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CD874B1200
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Feb 2022 16:47:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 353AD10E89C;
	Thu, 10 Feb 2022 15:47:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3385010E89D
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Feb 2022 15:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644508028; x=1676044028;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fGWAtqjeys3FGEXrSMHVCiMnwKbASLMwLW0RFGMDHfw=;
 b=eOpQ52mTA2IYsQzElpa2x5PWoIBr8h4434xLwSRoXTe6mhUD0bJuvIpN
 Y8ZaKKPMy+qlfZKFPTfhnbn79cvW+ZukLOMg2i5ULBVodek/f11R0nppi
 gpgU2ggAyji/snJfYjvClsf/kmRuJgOf/yGf1iVg7sEarszg/ydqKPjxx
 BbbdXImoO252tcYjbimNS0TeVCUEC/ITeE14vDGoEosXdlp3P1K0e4Uty
 NBfOW/baSZNgH69BqomALePqGdzqdd5lO5ytZDO7O4njDuUTunVvphaou
 cDYFqyiQ5VbIiG/vZSIRE/8xq5VkEg0tUhxk1LNMXeuYm5VyXLNaKM+Ge Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10254"; a="335935882"
X-IronPort-AV: E=Sophos;i="5.88,359,1635231600"; d="scan'208";a="335935882"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 07:47:07 -0800
X-IronPort-AV: E=Sophos;i="5.88,359,1635231600"; d="scan'208";a="585993013"
Received: from dhogarty-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.10.221])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 07:47:05 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Feb 2022 17:45:51 +0200
Message-Id: <bc2bbcd46b66e44e98e1ef76980dfabcfac700d5.1644507885.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1644507885.git.jani.nikula@intel.com>
References: <cover.1644507885.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 13/14] drm/i915: axe lots of unnecessary
 includes from i915_drv.h
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

It's fairly difficult to ensure these are actually not needed due to
indirect includes via other files. However, it's easier to add them back
as needed and, most importantly, where needed instead of exhaustively
proving they're unnecessary.

Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h | 18 ------------------
 1 file changed, 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 6d28f16f71e6..3bb2c48018a0 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -34,25 +34,12 @@
 
 #include <asm/hypervisor.h>
 
-#include <linux/io-mapping.h>
 #include <linux/i2c.h>
 #include <linux/i2c-algo-bit.h>
-#include <linux/backlight.h>
-#include <linux/hash.h>
 #include <linux/intel-iommu.h>
-#include <linux/kref.h>
-#include <linux/mm_types.h>
-#include <linux/perf_event.h>
 #include <linux/pm_qos.h>
-#include <linux/dma-resv.h>
-#include <linux/stackdepot.h>
 
-#include <drm/drm_gem.h>
-#include <drm/drm_auth.h>
-#include <drm/drm_util.h>
-#include <drm/drm_dsc.h>
 #include <drm/drm_connector.h>
-#include <drm/i915_mei_hdcp_interface.h>
 #include <drm/ttm/ttm_device.h>
 
 #include "i915_params.h"
@@ -89,17 +76,12 @@
 #include "intel_runtime_pm.h"
 #include "intel_step.h"
 #include "intel_uncore.h"
-#include "intel_wakeref.h"
 #include "intel_wopcm.h"
 
 #include "i915_gem.h"
-#include "i915_gem_gtt.h"
 #include "i915_gpu_error.h"
 #include "i915_perf_types.h"
-#include "i915_request.h"
 #include "i915_scheduler.h"
-#include "gt/intel_timeline.h"
-#include "i915_vma.h"
 
 struct dpll;
 struct drm_i915_clock_gating_funcs;
-- 
2.30.2

