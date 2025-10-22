Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52502BFCCFA
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Oct 2025 17:17:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CFE7310E7EB;
	Wed, 22 Oct 2025 15:17:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="byqutjfE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE3AB10E7EB;
 Wed, 22 Oct 2025 15:17:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761146244; x=1792682244;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=V18r6pzNZnCP6rdphc/ptRNWKXNOty7GVSsQ73hE6cA=;
 b=byqutjfEk32EIBi35Xars6gDv4XCsjWDtTlKuKQ9Sri+yTOLsTVb1ym9
 47q/Ixp28RYteVhk8930arR/1ifgVKUxbfxJ2a3ok87Ntmp3hsiBH2Xmt
 oej7dQ5G4E1MmYlUsnnYVp8wh8ovHSh5Xbq9HrM3RLPnk1hkzURR6MSxx
 cXkKlglreWPaGFzqdFogQg/uYvnq1F569siGnAkmMhjF5T/2dXTSVLRoA
 6+uAO9satrwJYynrpA08mwyqUeZfX8EjlU5FscrADU+uf2utSzrHh+4hM
 JCao1BTE03k7uGW5vnnq8ygS0MvSeZ8iq+DIgyzBmYEZNniT6PklpF4MB g==;
X-CSE-ConnectionGUID: rYLb0o30Tser5Vvegn/B0Q==
X-CSE-MsgGUID: +y+AsUbHTZWFpK4Qlud+LA==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="63338279"
X-IronPort-AV: E=Sophos;i="6.19,247,1754982000"; d="scan'208";a="63338279"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 08:17:24 -0700
X-CSE-ConnectionGUID: fWMZM1lOSamF5jnrq+/YBA==
X-CSE-MsgGUID: qI1DYkajQJKOQZkbsfTy5Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,247,1754982000"; d="scan'208";a="183838216"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.104])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 08:17:22 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 1/6] drm/i915: split out separate files for jiffies timeout
 and wait helpers
Date: Wed, 22 Oct 2025 18:17:09 +0300
Message-ID: <d8bc62b3a81afa05c849dde9b0f633572eaf5611.1761146196.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1761146196.git.jani.nikula@intel.com>
References: <cover.1761146196.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
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

Add i915_jiffies.h and intel_display_jiffies.h for jiffies timeout and
wait helpers, and use them separately from i915 and display. This helps
reduce the display dependency on i915_utils.h.

Long term, both msecs_to_jiffies_timeout() and
wait_remaining_ms_from_jiffies() really belong in core kernel headers,
but for now unblock display refactoring.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_jiffies.h  | 43 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dp.c       |  1 +
 .../drm/i915/display/intel_dp_link_training.c |  1 +
 drivers/gpu/drm/i915/display/intel_hdcp.c     |  1 +
 drivers/gpu/drm/i915/display/intel_pmdemand.c |  1 +
 drivers/gpu/drm/i915/display/intel_pps.c      |  1 +
 drivers/gpu/drm/i915/display/intel_vblank.c   |  1 +
 drivers/gpu/drm/i915/gem/i915_gem_mman.c      |  5 ++-
 drivers/gpu/drm/i915/gem/i915_gem_ttm.c       |  1 +
 .../gpu/drm/i915/gt/intel_engine_heartbeat.c  |  1 +
 drivers/gpu/drm/i915/gt/selftest_execlists.c  |  1 +
 drivers/gpu/drm/i915/i915_config.c            |  2 +-
 drivers/gpu/drm/i915/i915_jiffies.h           | 16 +++++++
 drivers/gpu/drm/i915/i915_utils.h             | 34 ---------------
 .../gpu/drm/i915/selftests/i915_selftest.c    |  1 +
 15 files changed, 73 insertions(+), 37 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_jiffies.h
 create mode 100644 drivers/gpu/drm/i915/i915_jiffies.h

diff --git a/drivers/gpu/drm/i915/display/intel_display_jiffies.h b/drivers/gpu/drm/i915/display/intel_display_jiffies.h
new file mode 100644
index 000000000000..c060c567e262
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_display_jiffies.h
@@ -0,0 +1,43 @@
+/* SPDX-License-Identifier: MIT */
+/* Copyright © 2025 Intel Corporation */
+
+#ifndef __INTEL_DISPLAY_JIFFIES_H__
+#define __INTEL_DISPLAY_JIFFIES_H__
+
+#include <linux/jiffies.h>
+
+static inline unsigned long msecs_to_jiffies_timeout(const unsigned int m)
+{
+	unsigned long j = msecs_to_jiffies(m);
+
+	return min_t(unsigned long, MAX_JIFFY_OFFSET, j + 1);
+}
+
+/*
+ * If you need to wait X milliseconds between events A and B, but event B
+ * doesn't happen exactly after event A, you record the timestamp (jiffies) of
+ * when event A happened, then just before event B you call this function and
+ * pass the timestamp as the first argument, and X as the second argument.
+ */
+static inline void
+wait_remaining_ms_from_jiffies(unsigned long timestamp_jiffies, int to_wait_ms)
+{
+	unsigned long target_jiffies, tmp_jiffies, remaining_jiffies;
+
+	/*
+	 * Don't re-read the value of "jiffies" every time since it may change
+	 * behind our back and break the math.
+	 */
+	tmp_jiffies = jiffies;
+	target_jiffies = timestamp_jiffies +
+			 msecs_to_jiffies_timeout(to_wait_ms);
+
+	if (time_after(target_jiffies, tmp_jiffies)) {
+		remaining_jiffies = target_jiffies - tmp_jiffies;
+		while (remaining_jiffies)
+			remaining_jiffies =
+			    schedule_timeout_uninterruptible(remaining_jiffies);
+	}
+}
+
+#endif /* __INTEL_DISPLAY_JIFFIES_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index b0aeb6c2de86..78e21bfd29bd 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -64,6 +64,7 @@
 #include "intel_ddi.h"
 #include "intel_de.h"
 #include "intel_display_driver.h"
+#include "intel_display_jiffies.h"
 #include "intel_display_regs.h"
 #include "intel_display_rpm.h"
 #include "intel_display_types.h"
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 27f3716bdc1f..316b42b5a946 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -29,6 +29,7 @@
 
 #include "i915_utils.h"
 #include "intel_display_core.h"
+#include "intel_display_jiffies.h"
 #include "intel_display_types.h"
 #include "intel_dp.h"
 #include "intel_dp_link_training.h"
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 531ee122bf82..0f624004104f 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -22,6 +22,7 @@
 #include "i915_utils.h"
 #include "intel_connector.h"
 #include "intel_de.h"
+#include "intel_display_jiffies.h"
 #include "intel_display_power.h"
 #include "intel_display_power_well.h"
 #include "intel_display_regs.h"
diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.c b/drivers/gpu/drm/i915/display/intel_pmdemand.c
index d806c15db7ce..7ade35e05eb5 100644
--- a/drivers/gpu/drm/i915/display/intel_pmdemand.c
+++ b/drivers/gpu/drm/i915/display/intel_pmdemand.c
@@ -12,6 +12,7 @@
 #include "intel_bw.h"
 #include "intel_cdclk.h"
 #include "intel_de.h"
+#include "intel_display_jiffies.h"
 #include "intel_display_regs.h"
 #include "intel_display_trace.h"
 #include "intel_pmdemand.h"
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 327e0de86f1e..0c2f48626d0c 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -12,6 +12,7 @@
 #include "i915_reg.h"
 #include "i915_utils.h"
 #include "intel_de.h"
+#include "intel_display_jiffies.h"
 #include "intel_display_power_well.h"
 #include "intel_display_regs.h"
 #include "intel_display_types.h"
diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
index 2fc0c1c0bb87..0e534be375ca 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.c
+++ b/drivers/gpu/drm/i915/display/intel_vblank.c
@@ -12,6 +12,7 @@
 #include "intel_color.h"
 #include "intel_crtc.h"
 #include "intel_de.h"
+#include "intel_display_jiffies.h"
 #include "intel_display_regs.h"
 #include "intel_display_types.h"
 #include "intel_vblank.h"
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
index 75f5b0e871ef..4542135b20d5 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
@@ -16,12 +16,13 @@
 #include "i915_gem_evict.h"
 #include "i915_gem_gtt.h"
 #include "i915_gem_ioctls.h"
-#include "i915_gem_object.h"
 #include "i915_gem_mman.h"
+#include "i915_gem_object.h"
+#include "i915_gem_ttm.h"
+#include "i915_jiffies.h"
 #include "i915_mm.h"
 #include "i915_trace.h"
 #include "i915_user_extensions.h"
-#include "i915_gem_ttm.h"
 #include "i915_vma.h"
 
 static inline bool
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
index 57bb111d65da..d119e54e5be1 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
@@ -10,6 +10,7 @@
 #include <drm/drm_buddy.h>
 
 #include "i915_drv.h"
+#include "i915_jiffies.h"
 #include "i915_ttm_buddy_manager.h"
 #include "intel_memory_region.h"
 #include "intel_region_ttm.h"
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c b/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
index 8d4bb95f8424..dcd3a3047aa4 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
@@ -4,6 +4,7 @@
  */
 
 #include "i915_drv.h"
+#include "i915_jiffies.h"
 #include "i915_request.h"
 
 #include "intel_context.h"
diff --git a/drivers/gpu/drm/i915/gt/selftest_execlists.c b/drivers/gpu/drm/i915/gt/selftest_execlists.c
index 0454eb1814bb..376f201a7650 100644
--- a/drivers/gpu/drm/i915/gt/selftest_execlists.c
+++ b/drivers/gpu/drm/i915/gt/selftest_execlists.c
@@ -11,6 +11,7 @@
 #include "gt/intel_reset.h"
 #include "gt/selftest_engine_heartbeat.h"
 
+#include "i915_jiffies.h"
 #include "i915_selftest.h"
 #include "selftests/i915_random.h"
 #include "selftests/igt_flush_test.h"
diff --git a/drivers/gpu/drm/i915/i915_config.c b/drivers/gpu/drm/i915/i915_config.c
index 24e5bb8a670e..3cb615ffa96d 100644
--- a/drivers/gpu/drm/i915/i915_config.c
+++ b/drivers/gpu/drm/i915/i915_config.c
@@ -6,7 +6,7 @@
 #include <linux/kernel.h>
 
 #include "i915_config.h"
-#include "i915_utils.h"
+#include "i915_jiffies.h"
 
 unsigned long
 i915_fence_context_timeout(const struct drm_i915_private *i915, u64 context)
diff --git a/drivers/gpu/drm/i915/i915_jiffies.h b/drivers/gpu/drm/i915/i915_jiffies.h
new file mode 100644
index 000000000000..18a4eaea897a
--- /dev/null
+++ b/drivers/gpu/drm/i915/i915_jiffies.h
@@ -0,0 +1,16 @@
+/* SPDX-License-Identifier: MIT */
+/* Copyright © 2025 Intel Corporation */
+
+#ifndef __I915_JIFFIES_H__
+#define __I915_JIFFIES_H__
+
+#include <linux/jiffies.h>
+
+static inline unsigned long msecs_to_jiffies_timeout(const unsigned int m)
+{
+	unsigned long j = msecs_to_jiffies(m);
+
+	return min_t(unsigned long, MAX_JIFFY_OFFSET, j + 1);
+}
+
+#endif /* __I915_JIFFIES_H__ */
diff --git a/drivers/gpu/drm/i915/i915_utils.h b/drivers/gpu/drm/i915/i915_utils.h
index a0c892e4c40d..44de4a4aa84a 100644
--- a/drivers/gpu/drm/i915/i915_utils.h
+++ b/drivers/gpu/drm/i915/i915_utils.h
@@ -100,40 +100,6 @@ static inline bool is_power_of_2_u64(u64 n)
 	return (n != 0 && ((n & (n - 1)) == 0));
 }
 
-static inline unsigned long msecs_to_jiffies_timeout(const unsigned int m)
-{
-	unsigned long j = msecs_to_jiffies(m);
-
-	return min_t(unsigned long, MAX_JIFFY_OFFSET, j + 1);
-}
-
-/*
- * If you need to wait X milliseconds between events A and B, but event B
- * doesn't happen exactly after event A, you record the timestamp (jiffies) of
- * when event A happened, then just before event B you call this function and
- * pass the timestamp as the first argument, and X as the second argument.
- */
-static inline void
-wait_remaining_ms_from_jiffies(unsigned long timestamp_jiffies, int to_wait_ms)
-{
-	unsigned long target_jiffies, tmp_jiffies, remaining_jiffies;
-
-	/*
-	 * Don't re-read the value of "jiffies" every time since it may change
-	 * behind our back and break the math.
-	 */
-	tmp_jiffies = jiffies;
-	target_jiffies = timestamp_jiffies +
-			 msecs_to_jiffies_timeout(to_wait_ms);
-
-	if (time_after(target_jiffies, tmp_jiffies)) {
-		remaining_jiffies = target_jiffies - tmp_jiffies;
-		while (remaining_jiffies)
-			remaining_jiffies =
-			    schedule_timeout_uninterruptible(remaining_jiffies);
-	}
-}
-
 #define KHz(x) (1000 * (x))
 #define MHz(x) KHz(1000 * (x))
 
diff --git a/drivers/gpu/drm/i915/selftests/i915_selftest.c b/drivers/gpu/drm/i915/selftests/i915_selftest.c
index 9c276c9d0a75..8460f0a70d04 100644
--- a/drivers/gpu/drm/i915/selftests/i915_selftest.c
+++ b/drivers/gpu/drm/i915/selftests/i915_selftest.c
@@ -30,6 +30,7 @@
 
 #include "i915_driver.h"
 #include "i915_drv.h"
+#include "i915_jiffies.h"
 #include "i915_selftest.h"
 #include "i915_wait_util.h"
 #include "igt_flush_test.h"
-- 
2.47.3

