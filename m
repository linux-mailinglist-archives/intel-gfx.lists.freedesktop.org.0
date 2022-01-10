Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 745EE489C83
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jan 2022 16:46:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E53E113F4C;
	Mon, 10 Jan 2022 15:46:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99C30113F4C
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jan 2022 15:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641829585; x=1673365585;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZK8Bhhi5wuTTA+zK0ZJddGq/mf6Z4bS9xnDOPpkVm0o=;
 b=lwb3/4uLAYEzwObP0xODhUAfBk6000ZqPnu8345j5wuuglStKUTguj7l
 LwISQXHS0wjZTS4DuIt6t1fRsPt33aXF+J/IsQ3h5jQo/XOg9Rtmphf/P
 QdBQHk54veLBguasC8x/9nvM4FCgPJR14fK3GMW2A6hDvIgakC3nXGJ4W
 zGJWKk81o91SPQl1WQbVVrvNsKWpfT3vasL4qxid5db/bFR+thLHOa4DT
 kW8TKs91NI0mwmWrP465XBiOyoCNnJDJgDUPHXiNfxO8/b6XHJTgafiZ5
 BUkAx6Hl8O5UBOA35l25g3AtWPTWZxJvMeQ0L0tMY34kSQ1sM0/OhMkju Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10222"; a="223946035"
X-IronPort-AV: E=Sophos;i="5.88,277,1635231600"; d="scan'208";a="223946035"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2022 07:46:25 -0800
X-IronPort-AV: E=Sophos;i="5.88,277,1635231600"; d="scan'208";a="474166551"
Received: from bdoyle2-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.26.184])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2022 07:46:18 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 10 Jan 2022 17:45:42 +0200
Message-Id: <b8413e9769f6e4bbb3c81f50ded8cb6b0374674c.1641829429.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1641829428.git.jani.nikula@intel.com>
References: <cover.1641829428.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 6/6] drm/i915: split out gem/i915_gem_domain.h
 from i915_drv.h
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

We already have the gem/i915_gem_domain.c file.

Acked-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpt.c    |  4 +++-
 drivers/gpu/drm/i915/display/intel_fb_pin.c |  1 +
 drivers/gpu/drm/i915/gem/i915_gem_domain.c  |  5 +++--
 drivers/gpu/drm/i915/gem/i915_gem_domain.h  | 15 +++++++++++++++
 drivers/gpu/drm/i915/i915_drv.h             |  3 ---
 5 files changed, 22 insertions(+), 6 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/gem/i915_gem_domain.h

diff --git a/drivers/gpu/drm/i915/display/intel_dpt.c b/drivers/gpu/drm/i915/display/intel_dpt.c
index 8f674745e7e0..2b8e89477f48 100644
--- a/drivers/gpu/drm/i915/display/intel_dpt.c
+++ b/drivers/gpu/drm/i915/display/intel_dpt.c
@@ -3,11 +3,13 @@
  * Copyright © 2021 Intel Corporation
  */
 
+#include "gem/i915_gem_domain.h"
+#include "gt/gen8_ppgtt.h"
+
 #include "i915_drv.h"
 #include "intel_display_types.h"
 #include "intel_dpt.h"
 #include "intel_fb.h"
-#include "gt/gen8_ppgtt.h"
 
 struct i915_dpt {
 	struct i915_address_space vm;
diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.c b/drivers/gpu/drm/i915/display/intel_fb_pin.c
index 31c15e5fca95..e60046d90124 100644
--- a/drivers/gpu/drm/i915/display/intel_fb_pin.c
+++ b/drivers/gpu/drm/i915/display/intel_fb_pin.c
@@ -7,6 +7,7 @@
  * DOC: display pinning helpers
  */
 
+#include "gem/i915_gem_domain.h"
 #include "gem/i915_gem_object.h"
 
 #include "i915_drv.h"
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_domain.c b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
index 26532c07d467..3e5d6057b3ef 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_domain.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
@@ -9,12 +9,13 @@
 
 #include "i915_drv.h"
 #include "i915_gem_clflush.h"
+#include "i915_gem_domain.h"
 #include "i915_gem_gtt.h"
 #include "i915_gem_ioctls.h"
-#include "i915_gem_object.h"
-#include "i915_vma.h"
 #include "i915_gem_lmem.h"
 #include "i915_gem_mman.h"
+#include "i915_gem_object.h"
+#include "i915_vma.h"
 
 static bool gpu_write_needs_clflush(struct drm_i915_gem_object *obj)
 {
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_domain.h b/drivers/gpu/drm/i915/gem/i915_gem_domain.h
new file mode 100644
index 000000000000..9622df962bfc
--- /dev/null
+++ b/drivers/gpu/drm/i915/gem/i915_gem_domain.h
@@ -0,0 +1,15 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2022 Intel Corporation
+ */
+
+#ifndef __I915_GEM_DOMAIN_H__
+#define __I915_GEM_DOMAIN_H__
+
+struct drm_i915_gem_object;
+enum i915_cache_level;
+
+int i915_gem_object_set_cache_level(struct drm_i915_gem_object *obj,
+				    enum i915_cache_level cache_level);
+
+#endif /* __I915_GEM_DOMAIN_H__ */
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index ba536cbb3ad1..affe0997cd27 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1652,9 +1652,6 @@ static inline u32 i915_reset_engine_count(struct i915_gpu_error *error,
 	return atomic_read(&error->reset_engine_count[engine->uabi_class]);
 }
 
-int i915_gem_object_set_cache_level(struct drm_i915_gem_object *obj,
-				    enum i915_cache_level cache_level);
-
 static inline struct i915_address_space *
 i915_gem_vm_lookup(struct drm_i915_file_private *file_priv, u32 id)
 {
-- 
2.30.2

