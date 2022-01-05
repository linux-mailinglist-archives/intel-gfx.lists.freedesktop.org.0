Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B4F04859A4
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jan 2022 20:57:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95F5410E397;
	Wed,  5 Jan 2022 19:57:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71A3A10E397
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jan 2022 19:57:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641412657; x=1672948657;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SYVl301aIuItF+VM8enMdLBbYP8SR5fbkPR6z8SAY1I=;
 b=NKBBLiH+NRbjOpKN9eXcar5mZAdZpUp9wqaetmp6ZuXheClE71/5gPKA
 e7cqKOspvNEoOqw8TiapNaoaIeyk8FrpHjfsacHcYYHI65Hn1aEw+OzY3
 pilmTlvfO+zsGyrDQ9nHULFrbn8F8lejHlhPITpWG5y1KWtvHaITRVLZm
 InmmefNK7+U9gh2p9NUHBk+eebKv72GnGB1JSMvdCtUktlwxnNI+cDJgu
 84Ewfuf5iu8e5Co4CXeVaeQqjf3n8khOWTjgOk8dcr5c/rveJYTxV8HLw
 vuE60KLkQcYfdNiGQjmVS0TVszM+ehe3MWJHpvyyiPtXOIR8jtyFV3l23 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10217"; a="223210623"
X-IronPort-AV: E=Sophos;i="5.88,264,1635231600"; d="scan'208";a="223210623"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2022 11:57:36 -0800
X-IronPort-AV: E=Sophos;i="5.88,264,1635231600"; d="scan'208";a="556658646"
Received: from menright-mobl1.amr.corp.intel.com (HELO localhost)
 ([10.252.25.244])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2022 11:57:34 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 Jan 2022 21:56:26 +0200
Message-Id: <86b15941cd149ab0537b8f960501933aa1ed2c49.1641411696.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1641411696.git.jani.nikula@intel.com>
References: <cover.1641411696.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 10/21] drm/i915: split out gem/i915_gem_create.h
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
index 5b9355a73f53..a1b5cf212e74 100644
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
index 50d1fa6c8938..cd74fe21d3c6 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1643,10 +1643,6 @@ static inline void i915_gem_drain_workqueue(struct drm_i915_private *i915)
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

