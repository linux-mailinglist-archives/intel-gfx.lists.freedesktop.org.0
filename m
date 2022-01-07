Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 23BE9487822
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jan 2022 14:21:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41C5810FC5C;
	Fri,  7 Jan 2022 13:21:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5061610FC5C
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Jan 2022 13:21:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641561693; x=1673097693;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GvWtQSQVN66/4eDIaW+vE+ATLBpsM7+p+cA7wPTVBHY=;
 b=DXJ6ekWLpOmz1eKp9E8RX3EjLxHOyhy4nbS5LS9JeXSJN2mTL9bFtpU7
 bv/37ePvHXiZ4nKgyAP1X8z+YuPtQgq0l19R0gcXLJtYxJd7RzNWyIuyF
 hHdMhiuVELsgQ2bFV/PxLTyhXOo1drOvJbXTFsteEzeDIqdVEXnf2d8vc
 zWg7F/v5CeZOdjMoVUGDX+QjeYEM6C8neaLAVXzWAPzlhh4xtR+Megqrj
 fwKubcKg11PMzEzLGftBAduxy3dq2BNcrmzPHAtBKIln86aXh/CzInZBL
 RsURorEFKiJgqUTULvOUMpj9pXrJ1T1ZJsWy/7qLNoOIDPbcUoniOu0nF w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10219"; a="240416236"
X-IronPort-AV: E=Sophos;i="5.88,270,1635231600"; d="scan'208";a="240416236"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2022 05:21:32 -0800
X-IronPort-AV: E=Sophos;i="5.88,270,1635231600"; d="scan'208";a="527283583"
Received: from dgreerx-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.24.206])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2022 05:21:30 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  7 Jan 2022 15:20:48 +0200
Message-Id: <20220107132126.133801-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1641561552.git.jani.nikula@intel.com>
References: <cover.1641561552.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/5] drm/i915: split out i915_getparam.h from
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We already have the i915_getparam.c file.

Acked-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c   |  1 +
 drivers/gpu/drm/i915/i915_drv.h      |  4 ----
 drivers/gpu/drm/i915/i915_getparam.c |  1 +
 drivers/gpu/drm/i915/i915_getparam.h | 15 +++++++++++++++
 drivers/gpu/drm/i915/i915_ioc32.c    |  1 +
 5 files changed, 18 insertions(+), 4 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/i915_getparam.h

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 5f2343389b5e..3572e4c5a1b8 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -74,6 +74,7 @@
 #include "i915_debugfs.h"
 #include "i915_driver.h"
 #include "i915_drv.h"
+#include "i915_getparam.h"
 #include "i915_ioc32.h"
 #include "i915_irq.h"
 #include "i915_memcpy.h"
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 2f9336302e6c..74658f088fcc 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1602,10 +1602,6 @@ intel_vm_no_concurrent_access_wa(struct drm_i915_private *i915)
 	return IS_CHERRYVIEW(i915) || intel_ggtt_update_needs_vtd_wa(i915);
 }
 
-/* i915_getparam.c */
-int i915_getparam_ioctl(struct drm_device *dev, void *data,
-			struct drm_file *file_priv);
-
 /* i915_gem.c */
 int i915_gem_init_userptr(struct drm_i915_private *dev_priv);
 void i915_gem_cleanup_userptr(struct drm_i915_private *dev_priv);
diff --git a/drivers/gpu/drm/i915/i915_getparam.c b/drivers/gpu/drm/i915/i915_getparam.c
index 5b8a2157d797..6cf10d20a83e 100644
--- a/drivers/gpu/drm/i915/i915_getparam.c
+++ b/drivers/gpu/drm/i915/i915_getparam.c
@@ -6,6 +6,7 @@
 #include "gt/intel_engine_user.h"
 
 #include "i915_drv.h"
+#include "i915_getparam.h"
 #include "i915_perf.h"
 
 int i915_getparam_ioctl(struct drm_device *dev, void *data,
diff --git a/drivers/gpu/drm/i915/i915_getparam.h b/drivers/gpu/drm/i915/i915_getparam.h
new file mode 100644
index 000000000000..18e4752e8f70
--- /dev/null
+++ b/drivers/gpu/drm/i915/i915_getparam.h
@@ -0,0 +1,15 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2021 Intel Corporation
+ */
+
+#ifndef __I915_GETPARAM_H__
+#define __I915_GETPARAM_H__
+
+struct drm_device;
+struct drm_file;
+
+int i915_getparam_ioctl(struct drm_device *dev, void *data,
+			struct drm_file *file_priv);
+
+#endif /* __I915_GETPARAM_H__ */
diff --git a/drivers/gpu/drm/i915/i915_ioc32.c b/drivers/gpu/drm/i915/i915_ioc32.c
index 55b97c3a3dde..33348960f623 100644
--- a/drivers/gpu/drm/i915/i915_ioc32.c
+++ b/drivers/gpu/drm/i915/i915_ioc32.c
@@ -31,6 +31,7 @@
 #include <drm/drm_ioctl.h>
 
 #include "i915_drv.h"
+#include "i915_getparam.h"
 #include "i915_ioc32.h"
 
 struct drm_i915_getparam32 {
-- 
2.30.2

