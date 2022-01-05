Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EDC224859AA
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jan 2022 20:58:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1902710E401;
	Wed,  5 Jan 2022 19:58:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15D5910E416
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jan 2022 19:58:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641412691; x=1672948691;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=11etm9/Lzcxwt1NyaAE63mVgC+wMFPBcGPLio5kTYoA=;
 b=hGoxC52W47QV8PZpvTlw1CTbRYS50yT+v+OKrdjKkouBa9u0Rp2MDZ+8
 3RsKlzuK4sgyX8cZYdBf4rzr8/LDUnmvqPNWIHrJXFZQt9LUw7iis5Tal
 0BOzKZHL8LXCG4Ng7pg1N/lrTiTPvxcoixwQf1GbktI0sGmZIWjv3tRaX
 vDU4p+wvHZavB94frneyu0TfoUuWaZamEDd5kbZMbwD4QZOpaugSbvT/5
 COiyJ12T9OTDzolrs8cGxGBGp2N2yuV5k9BkpoZfxFHZzGsz+E9Xgff8D
 KUnwYd1OtL1pvmytFugsZuLNIiR3uVr8NWMy4wCvAtz/HUw0cS3AwG+1T w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10217"; a="242482964"
X-IronPort-AV: E=Sophos;i="5.88,264,1635231600"; d="scan'208";a="242482964"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2022 11:58:10 -0800
X-IronPort-AV: E=Sophos;i="5.88,264,1635231600"; d="scan'208";a="574501492"
Received: from menright-mobl1.amr.corp.intel.com (HELO localhost)
 ([10.252.25.244])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2022 11:58:07 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 Jan 2022 21:56:32 +0200
Message-Id: <515962c0ce16e5c46cda4c97a9051666c27dc720.1641411696.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1641411696.git.jani.nikula@intel.com>
References: <cover.1641411696.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 16/21] drm/i915: don't include drm_cache.h in
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Include it only in files that use it.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_clflush.c     | 2 ++
 drivers/gpu/drm/i915/gem/i915_gem_context.c     | 1 +
 drivers/gpu/drm/i915/gem/i915_gem_mman.c        | 2 ++
 drivers/gpu/drm/i915/gem/i915_gem_object.c      | 2 ++
 drivers/gpu/drm/i915/gem/i915_gem_pages.c       | 2 ++
 drivers/gpu/drm/i915/gem/i915_gem_shmem.c       | 2 ++
 drivers/gpu/drm/i915/gt/intel_ring_submission.c | 2 ++
 drivers/gpu/drm/i915/gt/intel_timeline.c        | 2 ++
 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c     | 2 ++
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c        | 2 ++
 drivers/gpu/drm/i915/i915_cmd_parser.c          | 2 ++
 drivers/gpu/drm/i915/i915_drv.h                 | 1 -
 drivers/gpu/drm/i915/i915_gem.c                 | 4 +++-
 drivers/gpu/drm/i915/i915_gpu_error.c           | 1 +
 14 files changed, 25 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_clflush.c b/drivers/gpu/drm/i915/gem/i915_gem_clflush.c
index 8a248003dfae..ce91b23385cf 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_clflush.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_clflush.c
@@ -4,6 +4,8 @@
  * Copyright © 2016 Intel Corporation
  */
 
+#include <drm/drm_cache.h>
+
 #include "display/intel_frontbuffer.h"
 
 #include "i915_drv.h"
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index 77bebaa4fe2e..238c3d7da9a7 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -67,6 +67,7 @@
 #include <linux/log2.h>
 #include <linux/nospec.h>
 
+#include <drm/drm_cache.h>
 #include <drm/drm_syncobj.h>
 
 #include "gt/gen6_ppgtt.h"
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
index aaf970c37aa2..b0e22d3d5b34 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
@@ -9,6 +9,8 @@
 #include <linux/pfn_t.h>
 #include <linux/sizes.h>
 
+#include <drm/drm_cache.h>
+
 #include "gt/intel_gt.h"
 #include "gt/intel_gt_requests.h"
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.c b/drivers/gpu/drm/i915/gem/i915_gem_object.c
index 160431b41fa7..9a478c19c477 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
@@ -24,6 +24,8 @@
 
 #include <linux/sched/mm.h>
 
+#include <drm/drm_cache.h>
+
 #include "display/intel_frontbuffer.h"
 #include "pxp/intel_pxp.h"
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pages.c b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
index 89b70f5cde7a..7d4ccde8cf1c 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_pages.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
@@ -4,6 +4,8 @@
  * Copyright © 2014-2016 Intel Corporation
  */
 
+#include <drm/drm_cache.h>
+
 #include "i915_drv.h"
 #include "i915_gem_object.h"
 #include "i915_scatterlist.h"
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
index cc9fe258fba7..3414122245f0 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
@@ -7,6 +7,8 @@
 #include <linux/pagevec.h>
 #include <linux/swap.h>
 
+#include <drm/drm_cache.h>
+
 #include "gem/i915_gem_region.h"
 #include "i915_drv.h"
 #include "i915_gemfs.h"
diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
index 40a008d71795..41aacb58d15b 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
@@ -3,6 +3,8 @@
  * Copyright © 2008-2021 Intel Corporation
  */
 
+#include <drm/drm_cache.h>
+
 #include "gem/i915_gem_internal.h"
 
 #include "gen2_engine_cs.h"
diff --git a/drivers/gpu/drm/i915/gt/intel_timeline.c b/drivers/gpu/drm/i915/gt/intel_timeline.c
index 2962be6d4d00..b9640212d659 100644
--- a/drivers/gpu/drm/i915/gt/intel_timeline.c
+++ b/drivers/gpu/drm/i915/gt/intel_timeline.c
@@ -3,6 +3,8 @@
  * Copyright © 2016-2018 Intel Corporation
  */
 
+#include <drm/drm_cache.h>
+
 #include "gem/i915_gem_internal.h"
 
 #include "i915_active.h"
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
index 13b27b8ff74e..3d046d690c7b 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
@@ -3,6 +3,8 @@
  * Copyright © 2021 Intel Corporation
  */
 
+#include <drm/drm_cache.h>
+
 #include "i915_drv.h"
 #include "intel_guc_slpc.h"
 #include "gt/intel_gt.h"
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
index a5af05bde6f2..c4aee2b2c86a 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
@@ -5,6 +5,8 @@
 
 #include <linux/bitfield.h>
 #include <linux/firmware.h>
+
+#include <drm/drm_cache.h>
 #include <drm/drm_print.h>
 
 #include "gem/i915_gem_lmem.h"
diff --git a/drivers/gpu/drm/i915/i915_cmd_parser.c b/drivers/gpu/drm/i915/i915_cmd_parser.c
index 9c90740520a9..797cfc30827d 100644
--- a/drivers/gpu/drm/i915/i915_cmd_parser.c
+++ b/drivers/gpu/drm/i915/i915_cmd_parser.c
@@ -25,6 +25,8 @@
  *
  */
 
+#include <drm/drm_cache.h>
+
 #include "gt/intel_engine.h"
 #include "gt/intel_gpu_commands.h"
 
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index ced8bdde88db..f287abb94df2 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -51,7 +51,6 @@
 
 #include <drm/drm_gem.h>
 #include <drm/drm_auth.h>
-#include <drm/drm_cache.h>
 #include <drm/drm_util.h>
 #include <drm/drm_dsc.h>
 #include <drm/drm_atomic.h>
diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index 6eb568925080..db897fb11f9b 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -25,7 +25,6 @@
  *
  */
 
-#include <drm/drm_vma_manager.h>
 #include <linux/dma-fence-array.h>
 #include <linux/kthread.h>
 #include <linux/dma-resv.h>
@@ -37,6 +36,9 @@
 #include <linux/dma-buf.h>
 #include <linux/mman.h>
 
+#include <drm/drm_cache.h>
+#include <drm/drm_vma_manager.h>
+
 #include "display/intel_display.h"
 #include "display/intel_frontbuffer.h"
 
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index 5ae812d60abe..abcc0ea35b0c 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -34,6 +34,7 @@
 #include <linux/utsname.h>
 #include <linux/zlib.h>
 
+#include <drm/drm_cache.h>
 #include <drm/drm_print.h>
 
 #include "display/intel_dmc.h"
-- 
2.30.2

