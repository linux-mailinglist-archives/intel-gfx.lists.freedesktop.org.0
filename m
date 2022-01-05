Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA8D248599C
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jan 2022 20:57:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1205910E3F4;
	Wed,  5 Jan 2022 19:57:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBE3D10E3F4
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jan 2022 19:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641412625; x=1672948625;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=uP6GRYluPzXMzGuGN2SyTxpbYEHwD/0EKvcdrU6sULo=;
 b=HY9DztKFo1IikI+vUOL44PVJSDeUl90rjAnUEBbLMRtvFnlJsoiQ/5eE
 j2RipHvD8KYW1d7F76xjUQ6JYlT+tuwPIJ5gCmzBEIfTdgyr4S6EhOZ+W
 TswA4JpY+RGE7iA4zBGpmooDV74y+gJuM75TjcpfZCCPNm9nxH8O3g46b
 Ks60Vy44ZAZSReA1dcmsxeKM3V0F6dH9kjbg1ix/wUypauaLjxCDkT7L0
 l50l/kTCr5iOxf6qSyiKed1FC+ywkKSf9ediU+kDH9VjQL4lP83ohmuL2
 8XZvYqR90SMqYowRSxcJR9w/wN0x95mPxju+OmprQNQNlY4y1DpZtDr53 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10217"; a="242732969"
X-IronPort-AV: E=Sophos;i="5.88,264,1635231600"; d="scan'208";a="242732969"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2022 11:57:05 -0800
X-IronPort-AV: E=Sophos;i="5.88,264,1635231600"; d="scan'208";a="621260119"
Received: from menright-mobl1.amr.corp.intel.com (HELO localhost)
 ([10.252.25.244])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2022 11:57:02 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 Jan 2022 21:56:20 +0200
Message-Id: <b5f51efaccbb2c6b7ca36316fc8691d8f44c8312.1641411696.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1641411696.git.jani.nikula@intel.com>
References: <cover.1641411696.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 04/21] drm/i915: split out
 gem/i915_gem_userptr.h from i915_drv.h
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

We already have the gem/i915_gem_userptr.c file.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_userptr.c |  1 +
 drivers/gpu/drm/i915/gem/i915_gem_userptr.h | 14 ++++++++++++++
 drivers/gpu/drm/i915/i915_drv.h             |  2 --
 drivers/gpu/drm/i915/i915_gem.c             |  1 +
 4 files changed, 16 insertions(+), 2 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/gem/i915_gem_userptr.h

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
index 3cc01c30dd62..6d1a71d6404c 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
@@ -42,6 +42,7 @@
 #include "i915_drv.h"
 #include "i915_gem_ioctls.h"
 #include "i915_gem_object.h"
+#include "i915_gem_userptr.h"
 #include "i915_scatterlist.h"
 
 #ifdef CONFIG_MMU_NOTIFIER
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_userptr.h b/drivers/gpu/drm/i915/gem/i915_gem_userptr.h
new file mode 100644
index 000000000000..8dadb2f8436d
--- /dev/null
+++ b/drivers/gpu/drm/i915/gem/i915_gem_userptr.h
@@ -0,0 +1,14 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2021 Intel Corporation
+ */
+
+#ifndef __I915_GEM_USERPTR_H__
+#define __I915_GEM_USERPTR_H__
+
+struct drm_i915_private;
+
+int i915_gem_init_userptr(struct drm_i915_private *dev_priv);
+void i915_gem_cleanup_userptr(struct drm_i915_private *dev_priv);
+
+#endif /* __I915_GEM_USERPTR_H__ */
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index ceecccfd9ccd..9cc3b5b9ec39 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1605,8 +1605,6 @@ intel_vm_no_concurrent_access_wa(struct drm_i915_private *i915)
 }
 
 /* i915_gem.c */
-int i915_gem_init_userptr(struct drm_i915_private *dev_priv);
-void i915_gem_cleanup_userptr(struct drm_i915_private *dev_priv);
 void i915_gem_init_early(struct drm_i915_private *dev_priv);
 void i915_gem_cleanup_early(struct drm_i915_private *dev_priv);
 
diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index 915bf431f320..5ef959a9f594 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -45,6 +45,7 @@
 #include "gem/i915_gem_ioctls.h"
 #include "gem/i915_gem_mman.h"
 #include "gem/i915_gem_region.h"
+#include "gem/i915_gem_userptr.h"
 #include "gt/intel_engine_user.h"
 #include "gt/intel_gt.h"
 #include "gt/intel_gt_pm.h"
-- 
2.30.2

