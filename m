Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 224044B11FD
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Feb 2022 16:46:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6705B10E89B;
	Thu, 10 Feb 2022 15:46:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 090B210E89B
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Feb 2022 15:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644508012; x=1676044012;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8fq2BaGiukuNmzjCKMaDZ4moLGKkWCw7OQVkxwf9jeA=;
 b=glFuoVdc6yWhDxcJuU14MNu2iPQD+pnhiHxBKfap4ZGGFGdOfDqwR30Y
 kQMwY29//jGWR20v7N5u4ImFLfn7S6N7GBFAx14fb0XJ2+ygJCF6QWpNO
 I5xjb3YMj3u6XmgHxve0AcL7bmGq+jzX9Xs1yA/TJNRTBva1Nq8d2vyEr
 T0n3gsQgmx9mdr58bh6uYMWghFJULK3lFKQVDUz6imCnMo30Dg7fqzCG6
 lESMfDTnY1BCyMvgw9CqMuHoKo1+XJsp9RZbteiREUeOV6ScHI5/EnrC9
 VR71VX4mrT3JmfoUCUSucjO7iNshJERuaw3nbd0sYyWiu7NpzgTF+p6sF Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10254"; a="248349876"
X-IronPort-AV: E=Sophos;i="5.88,359,1635231600"; d="scan'208";a="248349876"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 07:46:51 -0800
X-IronPort-AV: E=Sophos;i="5.88,359,1635231600"; d="scan'208";a="622716116"
Received: from dhogarty-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.10.221])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 07:46:49 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Feb 2022 17:45:48 +0200
Message-Id: <14edab4a193ea3f73f387a88e3836c8555401871.1644507885.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1644507885.git.jani.nikula@intel.com>
References: <cover.1644507885.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 10/14] drm/i915: don't include drm_cache.h in
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
Cc: jani.nikula@intel.com, Daniel Vetter <daniel.vetter@ffwll.ch>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Include it only in files that use it.

Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
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
index 30507fe86b4c..efe69d6b86f4 100644
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
index fb90c35543f2..2d593d573ef1 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
@@ -24,6 +24,8 @@
 
 #include <linux/sched/mm.h>
 
+#include <drm/drm_cache.h>
+
 #include "display/intel_frontbuffer.h"
 #include "pxp/intel_pxp.h"
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pages.c b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
index 060fe29f5929..183b861620b8 100644
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
index 6c57b0a79c8a..333a76b60112 100644
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
index b128ccd2fb98..6d7ec3bf1f32 100644
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
index ddbea939b1dc..733465658e0f 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
@@ -3,6 +3,8 @@
  * Copyright © 2021 Intel Corporation
  */
 
+#include <drm/drm_cache.h>
+
 #include "i915_drv.h"
 #include "i915_reg.h"
 #include "intel_guc_slpc.h"
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
index ba4f0970749b..c88113044494 100644
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
index aea4c30645ff..5f6e41636655 100644
--- a/drivers/gpu/drm/i915/i915_cmd_parser.c
+++ b/drivers/gpu/drm/i915/i915_cmd_parser.c
@@ -25,6 +25,8 @@
  *
  */
 
+#include <drm/drm_cache.h>
+
 #include "gt/intel_engine.h"
 #include "gt/intel_engine_regs.h"
 #include "gt/intel_gpu_commands.h"
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 39bc632289c1..75784873a9a8 100644
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
index b75355f25d07..2e10187cd0a0 100644
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
index 54b2360dfd99..1d042551619e 100644
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

