Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 65C285B8D2E
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Sep 2022 18:35:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5EEA410E988;
	Wed, 14 Sep 2022 16:35:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2A8110E988
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Sep 2022 16:35:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663173331; x=1694709331;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=c/fd3NmIGbLH0xWsIwINY0juqj2ZsCYct5cIOpX0W/c=;
 b=iTVSfJXQkxqlCFyqJ4d6db5qXMIn8AF+E2i3u4evnLyuj+tRC1NY2rjU
 bZKydNMMsA1yXae4+SRQTgFdoDq2HM6kYJojp6H73Eusc8IFWNqp0FyA+
 S1r6P9RUM7PiMPSHyOU73m/e2DJTR+itPZKNGTTE8JKQu/1rDUeOKVJav
 wfuCxZ8fVaYxs2Q5MZa3LzPZVgaZRO018CVto5IHtSrlD7vlo78WzIGtN
 GMG0/qJEsnUJ6ClqLoZmjoW6TllvUJMJPXJB9ggNoLwjzJYxPwTBFrlAL
 Y9QK54Q9zvA6jV1uLcBwupF58oNbC54Og9bhzDNxex2t6eNzE6fDBM7X2 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10470"; a="299836308"
X-IronPort-AV: E=Sophos;i="5.93,315,1654585200"; d="scan'208";a="299836308"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2022 09:35:22 -0700
X-IronPort-AV: E=Sophos;i="5.93,315,1654585200"; d="scan'208";a="647454977"
Received: from dbrayfor-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.32.164])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2022 09:35:20 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 14 Sep 2022 19:35:14 +0300
Message-Id: <20220914163514.1837467-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: move i915_coherent_map_type() to
 i915_gem_pages.c and un-inline
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
Cc: jani.nikula@intel.com, Matthew Auld <matthew.auld@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The inline function has no place in i915_drv.h. Move it away, un-inline,
and untangle some header dependencies while at it.

Cc: Matthew Auld <matthew.auld@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>

---

I don't know where this belongs, I just know it doesn't belong in
i915_drv.h.

I first tried moving it as inline, but it's really annoying as an inline
because it needs to pull in i915_drv.h, i915_gem_lmem.h, and
i915_gem_object_types.h.
---
 drivers/gpu/drm/i915/display/intel_dpt.c           |  1 +
 drivers/gpu/drm/i915/gem/i915_gem_object.h         |  4 ++++
 drivers/gpu/drm/i915/gem/i915_gem_pages.c          | 12 ++++++++++++
 drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c |  1 +
 drivers/gpu/drm/i915/gt/intel_gsc.c                |  1 +
 drivers/gpu/drm/i915/gt/intel_migrate.c            |  1 +
 drivers/gpu/drm/i915/gt/selftest_migrate.c         |  1 +
 drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c         |  1 +
 drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c  |  1 +
 drivers/gpu/drm/i915/i915_drv.h                    | 13 -------------
 drivers/gpu/drm/i915/selftests/i915_gem_gtt.c      |  1 +
 11 files changed, 24 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpt.c b/drivers/gpu/drm/i915/display/intel_dpt.c
index ac587647e1f5..ad1a37b515fb 100644
--- a/drivers/gpu/drm/i915/display/intel_dpt.c
+++ b/drivers/gpu/drm/i915/display/intel_dpt.c
@@ -5,6 +5,7 @@
 
 #include "gem/i915_gem_domain.h"
 #include "gem/i915_gem_internal.h"
+#include "gem/i915_gem_lmem.h"
 #include "gt/gen8_ppgtt.h"
 
 #include "i915_drv.h"
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
index 7317d4102955..a3b7551a57fc 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
@@ -482,6 +482,10 @@ void *__must_check i915_gem_object_pin_map(struct drm_i915_gem_object *obj,
 void *__must_check i915_gem_object_pin_map_unlocked(struct drm_i915_gem_object *obj,
 						    enum i915_map_type type);
 
+enum i915_map_type i915_coherent_map_type(struct drm_i915_private *i915,
+					  struct drm_i915_gem_object *obj,
+					  bool always_coherent);
+
 void __i915_gem_object_flush_map(struct drm_i915_gem_object *obj,
 				 unsigned long offset,
 				 unsigned long size);
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pages.c b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
index 4df50b049cea..16f845663ff2 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_pages.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
@@ -466,6 +466,18 @@ void *i915_gem_object_pin_map_unlocked(struct drm_i915_gem_object *obj,
 	return ret;
 }
 
+enum i915_map_type i915_coherent_map_type(struct drm_i915_private *i915,
+					  struct drm_i915_gem_object *obj,
+					  bool always_coherent)
+{
+	if (i915_gem_object_is_lmem(obj))
+		return I915_MAP_WC;
+	if (HAS_LLC(i915) || always_coherent)
+		return I915_MAP_WB;
+	else
+		return I915_MAP_WC;
+}
+
 void __i915_gem_object_flush_map(struct drm_i915_gem_object *obj,
 				 unsigned long offset,
 				 unsigned long size)
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
index b73c91aa5450..1cae24349a96 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
@@ -8,6 +8,7 @@
 #include <linux/prime_numbers.h>
 
 #include "gem/i915_gem_internal.h"
+#include "gem/i915_gem_lmem.h"
 #include "gem/i915_gem_region.h"
 #include "gem/i915_gem_ttm.h"
 #include "gem/i915_gem_ttm_move.h"
diff --git a/drivers/gpu/drm/i915/gt/intel_gsc.c b/drivers/gpu/drm/i915/gt/intel_gsc.c
index 7af6db3194dd..d56f75b605d8 100644
--- a/drivers/gpu/drm/i915/gt/intel_gsc.c
+++ b/drivers/gpu/drm/i915/gt/intel_gsc.c
@@ -7,6 +7,7 @@
 #include <linux/mei_aux.h>
 #include "i915_drv.h"
 #include "i915_reg.h"
+#include "gem/i915_gem_lmem.h"
 #include "gem/i915_gem_region.h"
 #include "gt/intel_gsc.h"
 #include "gt/intel_gt.h"
diff --git a/drivers/gpu/drm/i915/gt/intel_migrate.c b/drivers/gpu/drm/i915/gt/intel_migrate.c
index aaaf1906026c..b405a04135ca 100644
--- a/drivers/gpu/drm/i915/gt/intel_migrate.c
+++ b/drivers/gpu/drm/i915/gt/intel_migrate.c
@@ -10,6 +10,7 @@
 #include "intel_gtt.h"
 #include "intel_migrate.h"
 #include "intel_ring.h"
+#include "gem/i915_gem_lmem.h"
 
 struct insert_pte_data {
 	u64 offset;
diff --git a/drivers/gpu/drm/i915/gt/selftest_migrate.c b/drivers/gpu/drm/i915/gt/selftest_migrate.c
index 2b0c87999949..0dc5309c90a4 100644
--- a/drivers/gpu/drm/i915/gt/selftest_migrate.c
+++ b/drivers/gpu/drm/i915/gt/selftest_migrate.c
@@ -6,6 +6,7 @@
 #include <linux/sort.h>
 
 #include "gem/i915_gem_internal.h"
+#include "gem/i915_gem_lmem.h"
 
 #include "selftests/i915_random.h"
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
index 74cbe8eaf531..657f0beb8e06 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
@@ -5,6 +5,7 @@
 
 #include <linux/bsearch.h>
 
+#include "gem/i915_gem_lmem.h"
 #include "gt/intel_engine_regs.h"
 #include "gt/intel_gt.h"
 #include "gt/intel_gt_mcr.h"
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 22ba66e48a9b..ca6f47496869 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -6,6 +6,7 @@
 #include <linux/circ_buf.h>
 
 #include "gem/i915_gem_context.h"
+#include "gem/i915_gem_lmem.h"
 #include "gt/gen8_engine_cs.h"
 #include "gt/intel_breadcrumbs.h"
 #include "gt/intel_context.h"
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 9f9372931fd2..524b5ee495be 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -40,7 +40,6 @@
 #include "display/intel_display_core.h"
 
 #include "gem/i915_gem_context_types.h"
-#include "gem/i915_gem_lmem.h"
 #include "gem/i915_gem_shrinker.h"
 #include "gem/i915_gem_stolen.h"
 
@@ -985,16 +984,4 @@ mkwrite_device_info(struct drm_i915_private *dev_priv)
 	return (struct intel_device_info *)INTEL_INFO(dev_priv);
 }
 
-static inline enum i915_map_type
-i915_coherent_map_type(struct drm_i915_private *i915,
-		       struct drm_i915_gem_object *obj, bool always_coherent)
-{
-	if (i915_gem_object_is_lmem(obj))
-		return I915_MAP_WC;
-	if (HAS_LLC(i915) || always_coherent)
-		return I915_MAP_WB;
-	else
-		return I915_MAP_WC;
-}
-
 #endif
diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
index e050a2de5fd1..ea2cf1080979 100644
--- a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
+++ b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
@@ -27,6 +27,7 @@
 
 #include "gem/i915_gem_context.h"
 #include "gem/i915_gem_internal.h"
+#include "gem/i915_gem_lmem.h"
 #include "gem/i915_gem_region.h"
 #include "gem/selftests/mock_context.h"
 #include "gt/intel_context.h"
-- 
2.34.1

