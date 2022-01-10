Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C41D4489C82
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jan 2022 16:46:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2F75113E12;
	Mon, 10 Jan 2022 15:46:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FF5F113E12
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jan 2022 15:46:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641829576; x=1673365576;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gg7FgujfQ8XhlBSi+D2ebPdN8APrsgOzzWcOwEmY5Vo=;
 b=Tvj+EKEOg/l2IXJSbKmo5gcDBNRWSJ1SsP2kjb7yicxpT7GyXwKVoR4x
 VDpXUW2LpHwbCiBUcsEVMGHilnITTXRxRDOeSFa/kcTy1pctZ4UONd2Lk
 gigrU/oIeACmNjdrmUDTdR0sQpcOlUyzTOCT7saMDVgqlFuEIwU6pMeSy
 Sybyknez6/f/7z3aB7/E8ojruNs/eabQ6ZCxPYvXsHVea+nLBIHu4vmq7
 rGGBMgHfmdLo6m/DjnJ+Do1ENVohTVujQdmlCjg3qIJsvqL8cvmldgHmT
 gnL75X/WnzPFGz6OBTrJ4V9/69RIL9csgjxQdF6fcrsVcUd4yZWR1REiJ A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10222"; a="267580205"
X-IronPort-AV: E=Sophos;i="5.88,277,1635231600"; d="scan'208";a="267580205"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2022 07:46:15 -0800
X-IronPort-AV: E=Sophos;i="5.88,277,1635231600"; d="scan'208";a="514712142"
Received: from bdoyle2-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.26.184])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2022 07:46:13 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 10 Jan 2022 17:45:41 +0200
Message-Id: <9f4967b351f0f11599b03bb33c9e1bfc4d279ed8.1641829429.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1641829428.git.jani.nikula@intel.com>
References: <cover.1641829428.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5/6] drm/i915: split out gem/i915_gem_create.h
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

We already have the gem/i915_gem_create.c file.

Acked-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_create.c |  1 +
 drivers/gpu/drm/i915/gem/i915_gem_create.h | 17 +++++++++++++++++
 drivers/gpu/drm/i915/i915_driver.c         |  1 +
 drivers/gpu/drm/i915/i915_drv.h            |  4 ----
 4 files changed, 19 insertions(+), 4 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/gem/i915_gem_create.h

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_create.c b/drivers/gpu/drm/i915/gem/i915_gem_create.c
index 9402d4bf4ffc..0deff550d324 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_create.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_create.c
@@ -9,6 +9,7 @@
 #include "pxp/intel_pxp.h"
 
 #include "i915_drv.h"
+#include "i915_gem_create.h"
 #include "i915_trace.h"
 #include "i915_user_extensions.h"
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_create.h b/drivers/gpu/drm/i915/gem/i915_gem_create.h
new file mode 100644
index 000000000000..9536aa906001
--- /dev/null
+++ b/drivers/gpu/drm/i915/gem/i915_gem_create.h
@@ -0,0 +1,17 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2021 Intel Corporation
+ */
+
+#ifndef __I915_GEM_CREATE_H__
+#define __I915_GEM_CREATE_H__
+
+struct drm_file;
+struct drm_device;
+struct drm_mode_create_dumb;
+
+int i915_gem_dumb_create(struct drm_file *file_priv,
+			 struct drm_device *dev,
+			 struct drm_mode_create_dumb *args);
+
+#endif /* __I915_GEM_CREATE_H__ */
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 80665d3d321d..2cf26ea31c37 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -62,6 +62,7 @@
 #include "display/intel_vga.h"
 
 #include "gem/i915_gem_context.h"
+#include "gem/i915_gem_create.h"
 #include "gem/i915_gem_dmabuf.h"
 #include "gem/i915_gem_ioctls.h"
 #include "gem/i915_gem_mman.h"
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 0c626181edea..ba536cbb3ad1 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1641,10 +1641,6 @@ static inline void i915_gem_drain_workqueue(struct drm_i915_private *i915)
 	drain_workqueue(i915->wq);
 }
 
-int i915_gem_dumb_create(struct drm_file *file_priv,
-			 struct drm_device *dev,
-			 struct drm_mode_create_dumb *args);
-
 static inline u32 i915_reset_count(struct i915_gpu_error *error)
 {
 	return atomic_read(&error->reset_count);
-- 
2.30.2

