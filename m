Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2349348C058
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jan 2022 09:52:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14BB0112E72;
	Wed, 12 Jan 2022 08:51:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD8E4112E72
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Jan 2022 08:51:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641977516; x=1673513516;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=w42W+JzUYEdxIWZeSF8UCrwZijbYRATc38EhG3d9G34=;
 b=ThmWJr3BCE7+2MJVvweuxyAsjlUg9tZQapeUahuPlfv+lgymskvCQBFE
 ROsyBTy0ES/8uUZyCv40LWgWBTagDK5YXhJzmlo8MdZp+IiUUFD1n+igz
 9GrEjJly51Fs+aVMSuRgsdNJV7COK65DaVSLuyhhNTw7497oJSrxy5MHj
 jRfDn3GAVqsInj0JqU2+stUzs6KTaVL57/NC5Nbq9fO4FUzVMRjju51F0
 kJS8TWfPd1nyZwnV5hk3YximJnF+dnh3ZyzoXQKXEnaxXq5Zt2Bhqifw0
 2Q0fuEX7ABosUvxJ45L7gSicsWh6CKT7COCbQuNhLb6g9DK+pkZvJQHho Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10224"; a="223673014"
X-IronPort-AV: E=Sophos;i="5.88,282,1635231600"; d="scan'208";a="223673014"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2022 00:51:55 -0800
X-IronPort-AV: E=Sophos;i="5.88,282,1635231600"; d="scan'208";a="623370758"
Received: from pmasonx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.13.224])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2022 00:51:54 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 12 Jan 2022 10:51:28 +0200
Message-Id: <7c018d4a741ecb98dc1a19a7fdb6b35943790ff9.1641977369.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1641977368.git.jani.nikula@intel.com>
References: <cover.1641977368.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5/5] drm/i915: split out gem/i915_gem_domain.h
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
index 63a83d5f85a1..16b273e19d17 100644
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
index 95899661d567..32cd07e144dc 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1686,9 +1686,6 @@ void i915_gem_driver_release(struct drm_i915_private *dev_priv);
 
 int i915_gem_open(struct drm_i915_private *i915, struct drm_file *file);
 
-int i915_gem_object_set_cache_level(struct drm_i915_gem_object *obj,
-				    enum i915_cache_level cache_level);
-
 static inline struct i915_address_space *
 i915_gem_vm_lookup(struct drm_i915_file_private *file_priv, u32 id)
 {
-- 
2.30.2

