Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF6B84859AC
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jan 2022 20:58:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 268EE10E397;
	Wed,  5 Jan 2022 19:58:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 119C910E442
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jan 2022 19:58:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641412706; x=1672948706;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=krq1Rfb+nyYxfHi7kuFJ0R1WHPL/mFq5Ov1cBO/+awQ=;
 b=m56Z1tZcpKV6y8hZ1G3RydSiTsXqAvg6Iv02/snPyAjEjgqVCbPEVlnS
 Vask1qxgl7dxCHV2QpBw1nGhP7p7XPDjgiaLa/PR7LxBO+qQthnuTxc75
 7qqgvV8aFu0STNnAUCVvZKalITUiDX6g1AasNsOq3tE6jeyiPFHdHWeNi
 kuG2zJMjQ9tmoXTm6Ar75pkSluG9+31HjmEdHxITqu3h5MFg+lKDoGpXD
 vKpH/jVTXYLN3xK/8BN0Au1+oEf9T/0HUdoF0z2w75c6q5aKsPCwxh+je
 Y2z4ohVe1TLNJ1RvdF8ICm8qm8Upmw+uGXCnLnoF4YFm9wN+zuEJ26laK w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10217"; a="242482995"
X-IronPort-AV: E=Sophos;i="5.88,264,1635231600"; d="scan'208";a="242482995"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2022 11:58:25 -0800
X-IronPort-AV: E=Sophos;i="5.88,264,1635231600"; d="scan'208";a="760929174"
Received: from menright-mobl1.amr.corp.intel.com (HELO localhost)
 ([10.252.25.244])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2022 11:58:22 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 Jan 2022 21:56:35 +0200
Message-Id: <c22172f880630f96573ecafd0cf26aa725b28d8b.1641411696.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1641411696.git.jani.nikula@intel.com>
References: <cover.1641411696.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 19/21] drm/i915: axe lots of unnecessary
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

It's fairly difficult to ensure these are actually not needed due to
indirect includes via other files. However, it's easier to add them back
as needed and, most importantly, where needed instead of exhaustively
proving they're unnecessary.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h | 18 ------------------
 1 file changed, 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 4421bfd3fe2f..7ceb4b596c1c 100644
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
@@ -90,17 +77,12 @@
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
 
 
 /* General customization:
-- 
2.30.2

