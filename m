Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B9B56487825
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jan 2022 14:21:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3B76112258;
	Fri,  7 Jan 2022 13:21:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49C6A10FF6F
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Jan 2022 13:21:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641561709; x=1673097709;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XIqXxlOT0xPJN7J45Dbl5NAgs0tZF3mc+eko5wEP6GI=;
 b=lr62l2aeDx7PU/RFm5yiEzY6cpKgtreJ3ijyh9NlJTYDEFzsJGVk1HIb
 /+msHuULFXWp2zFDnRzYI6UBo8C9WooYRJhnOi8Uriv9PiqxpYzevI/FJ
 FMPT3FGtehUhKM+s8rykqHMS8vt/Tdp4t9zDghJaopb3zBPPg2/8XK9lA
 w9PGicO1BnHhQ8Q/IWgbOE3pyCmXf9iihioodAioQTpuzbhNNgyBXnDzH
 rYHr1cqDO5QEI9qPKLyepMOHMRgsO200qWTWeSp9dja1hFVBiyP0zC86t
 Me4JlNoRsxYE4SKHOpm9bTOx6Gp/4lhA4WNDak4ts/p19mLYnOFr0jtMx g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10219"; a="223560968"
X-IronPort-AV: E=Sophos;i="5.88,270,1635231600"; d="scan'208";a="223560968"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2022 05:21:48 -0800
X-IronPort-AV: E=Sophos;i="5.88,270,1635231600"; d="scan'208";a="763843199"
Received: from dgreerx-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.24.206])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2022 05:21:47 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  7 Jan 2022 15:20:51 +0200
Message-Id: <20220107132126.133801-4-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1641561552.git.jani.nikula@intel.com>
References: <cover.1641561552.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/5] drm/i915: split out gem/i915_gem_userptr.h
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

We already have the gem/i915_gem_userptr.c file.

Acked-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
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
index 606027a24fc3..83f656e116f0 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1603,8 +1603,6 @@ intel_vm_no_concurrent_access_wa(struct drm_i915_private *i915)
 }
 
 /* i915_gem.c */
-int i915_gem_init_userptr(struct drm_i915_private *dev_priv);
-void i915_gem_cleanup_userptr(struct drm_i915_private *dev_priv);
 void i915_gem_init_early(struct drm_i915_private *dev_priv);
 void i915_gem_cleanup_early(struct drm_i915_private *dev_priv);
 
diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index e3730096abd9..3729ec01b5bc 100644
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

