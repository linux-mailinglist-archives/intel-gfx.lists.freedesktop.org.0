Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E7FE7DF6B6
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Nov 2023 16:43:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58EBF10E908;
	Thu,  2 Nov 2023 15:43:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E90A10E908
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Nov 2023 15:43:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698939797; x=1730475797;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nVFwtu38FQTbD24Fs2ihRCjqLhYAAHOc6CAiFLNvtuo=;
 b=UeMX9Z7KZf1i0LM5ygqQPdg7N9JLAi/YWAubWrwMcciQY7bFO0mZrUJG
 buWsu1Y8l9vzkQ03v1q4j0IE3Or8xQPWgNIDlbjIjIjEeXhrDEjueAU6z
 hcck5T5v+dwNgb3yzcwBXJp1zveKZ8SR7Xfeff+e97E6J1Pmq9QKgHl5T
 W/WYS15LJpQEewWEKVQrWqbrLIMJzyltRaAvZs6zApeg7ILtCRPozS+1x
 dn7stDWSXEhmFOZeeQHTTi28woEZ7QUgmYf0hFfeNeGlTuv2rG+f64B7Z
 3pEsIShFqhKFNLrN2yIBNaoivcNbrsknnx/IYaDmkYFZ6r3nvmtughDLD A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="368087445"
X-IronPort-AV: E=Sophos;i="6.03,271,1694761200"; d="scan'208";a="368087445"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2023 08:43:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="878294753"
X-IronPort-AV: E=Sophos;i="6.03,271,1694761200"; d="scan'208";a="878294753"
Received: from unknown (HELO localhost) ([10.237.66.162])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2023 08:42:59 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 Nov 2023 17:42:30 +0200
Message-Id: <eb0a86f8b2c435c3d097d2c5aaa7185b0b3d8058.1698939671.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1698939671.git.jani.nikula@intel.com>
References: <cover.1698939671.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5/5] drm/i915: add a number of explicit includes
 to avoid implicit ones
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

There are a number of places that depend on including <linux/file.h> and
<linux/kthread.h> implicitly and indirectly via includes in
i915_pmu.h. Make them explicit so we can remove includes from
i915_pmu.h.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c        | 1 +
 drivers/gpu/drm/i915/gem/i915_gem_mman.c              | 1 +
 drivers/gpu/drm/i915/gem/selftests/huge_pages.c       | 1 +
 drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c | 2 ++
 drivers/gpu/drm/i915/gt/intel_engine_cs.c             | 1 +
 drivers/gpu/drm/i915/gt/selftest_execlists.c          | 1 +
 drivers/gpu/drm/i915/gt/selftest_migrate.c            | 1 +
 drivers/gpu/drm/i915/gt/selftest_slpc.c               | 2 ++
 drivers/gpu/drm/i915/i915_pmu.h                       | 3 ---
 drivers/gpu/drm/i915/selftests/i915_gem_gtt.c         | 1 +
 drivers/gpu/drm/i915/selftests/i915_request.c         | 4 +++-
 drivers/gpu/drm/i915/selftests/igt_mmap.c             | 2 ++
 drivers/gpu/drm/i915/selftests/intel_memory_region.c  | 1 +
 13 files changed, 17 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 683fd8d3151c..34618e3ae926 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -5,6 +5,7 @@
  */
 
 #include <linux/dma-resv.h>
+#include <linux/file.h>
 #include <linux/highmem.h>
 #include <linux/sync_file.h>
 #include <linux/uaccess.h>
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
index 310654542b42..2a1416cd9d95 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
@@ -5,6 +5,7 @@
  */
 
 #include <linux/anon_inodes.h>
+#include <linux/file.h>
 #include <linux/mman.h>
 #include <linux/pfn_t.h>
 #include <linux/sizes.h>
diff --git a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
index 6b9f6cf50bf6..3dd29f6e3446 100644
--- a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
+++ b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
@@ -4,6 +4,7 @@
  * Copyright © 2017 Intel Corporation
  */
 
+#include <linux/file.h>
 #include <linux/prime_numbers.h>
 #include <linux/string_helpers.h>
 #include <linux/swap.h>
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
index 7021b6e9b219..45935ef5b59d 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
@@ -4,6 +4,8 @@
  * Copyright © 2017 Intel Corporation
  */
 
+#include <linux/file.h>
+#include <linux/kthread.h>
 #include <linux/prime_numbers.h>
 #include <linux/string_helpers.h>
 
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 4a11219e560e..7b66814eb00e 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -3,6 +3,7 @@
  * Copyright © 2016 Intel Corporation
  */
 
+#include <linux/file.h>
 #include <linux/string_helpers.h>
 
 #include <drm/drm_print.h>
diff --git a/drivers/gpu/drm/i915/gt/selftest_execlists.c b/drivers/gpu/drm/i915/gt/selftest_execlists.c
index 4202df5b8c12..e938dcab2f40 100644
--- a/drivers/gpu/drm/i915/gt/selftest_execlists.c
+++ b/drivers/gpu/drm/i915/gt/selftest_execlists.c
@@ -3,6 +3,7 @@
  * Copyright © 2018 Intel Corporation
  */
 
+#include <linux/kthread.h>
 #include <linux/prime_numbers.h>
 
 #include "gem/i915_gem_internal.h"
diff --git a/drivers/gpu/drm/i915/gt/selftest_migrate.c b/drivers/gpu/drm/i915/gt/selftest_migrate.c
index 1a34cbe04fb6..f03e3c1d43ab 100644
--- a/drivers/gpu/drm/i915/gt/selftest_migrate.c
+++ b/drivers/gpu/drm/i915/gt/selftest_migrate.c
@@ -3,6 +3,7 @@
  * Copyright © 2020 Intel Corporation
  */
 
+#include <linux/kthread.h>
 #include <linux/sort.h>
 
 #include "gem/i915_gem_internal.h"
diff --git a/drivers/gpu/drm/i915/gt/selftest_slpc.c b/drivers/gpu/drm/i915/gt/selftest_slpc.c
index 952c8d52d68a..a8b48fbfd833 100644
--- a/drivers/gpu/drm/i915/gt/selftest_slpc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_slpc.c
@@ -3,6 +3,8 @@
  * Copyright © 2021 Intel Corporation
  */
 
+#include <linux/kthread.h>
+
 #define NUM_STEPS 5
 #define H2G_DELAY 50000
 #define delay_for_h2g() usleep_range(H2G_DELAY, H2G_DELAY + 10000)
diff --git a/drivers/gpu/drm/i915/i915_pmu.h b/drivers/gpu/drm/i915/i915_pmu.h
index bd2f9a62413e..5655104846da 100644
--- a/drivers/gpu/drm/i915/i915_pmu.h
+++ b/drivers/gpu/drm/i915/i915_pmu.h
@@ -7,9 +7,6 @@
 #ifndef __I915_PMU_H__
 #define __I915_PMU_H__
 
-#include <linux/hrtimer.h>
-#include <linux/perf_event.h>
-#include <linux/spinlock_types.h>
 #include <uapi/drm/i915_drm.h>
 
 struct drm_i915_private;
diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
index 5c397a2df70e..5e9fea5784bf 100644
--- a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
+++ b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
@@ -22,6 +22,7 @@
  *
  */
 
+#include <linux/file.h>
 #include <linux/list_sort.h>
 #include <linux/prime_numbers.h>
 
diff --git a/drivers/gpu/drm/i915/selftests/i915_request.c b/drivers/gpu/drm/i915/selftests/i915_request.c
index acae30a04a94..e9dff93a6b54 100644
--- a/drivers/gpu/drm/i915/selftests/i915_request.c
+++ b/drivers/gpu/drm/i915/selftests/i915_request.c
@@ -22,8 +22,10 @@
  *
  */
 
-#include <linux/prime_numbers.h>
+#include <linux/file.h>
+#include <linux/kthread.h>
 #include <linux/pm_qos.h>
+#include <linux/prime_numbers.h>
 #include <linux/sort.h>
 
 #include "gem/i915_gem_internal.h"
diff --git a/drivers/gpu/drm/i915/selftests/igt_mmap.c b/drivers/gpu/drm/i915/selftests/igt_mmap.c
index e920a461bd36..2f8f927f71df 100644
--- a/drivers/gpu/drm/i915/selftests/igt_mmap.c
+++ b/drivers/gpu/drm/i915/selftests/igt_mmap.c
@@ -4,6 +4,8 @@
  * Copyright © 2019 Intel Corporation
  */
 
+#include <linux/file.h>
+
 #include <drm/drm_file.h>
 
 #include "i915_drv.h"
diff --git a/drivers/gpu/drm/i915/selftests/intel_memory_region.c b/drivers/gpu/drm/i915/selftests/intel_memory_region.c
index d985d9bae2e8..355d4af1f884 100644
--- a/drivers/gpu/drm/i915/selftests/intel_memory_region.c
+++ b/drivers/gpu/drm/i915/selftests/intel_memory_region.c
@@ -3,6 +3,7 @@
  * Copyright © 2019 Intel Corporation
  */
 
+#include <linux/file.h>
 #include <linux/prime_numbers.h>
 #include <linux/sort.h>
 
-- 
2.39.2

