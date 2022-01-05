Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF251485997
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jan 2022 20:56:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E487810E397;
	Wed,  5 Jan 2022 19:56:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AAFC010E397
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jan 2022 19:56:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641412609; x=1672948609;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=a6Jh3oOo7d4EXX0msASJQj1Zij7+fwhPpBFYr2AGB5M=;
 b=WbP/NFwuM0bYvWJnhpRYkMhQIYuZZWmkeGB5s7lgOmLT37r+CYjVmhz7
 cab7dlPs9HBxfXkbBhAgBNFzE6OMYYzkgXni0F9JFHl1+H6FinWLiNsdi
 OWdUwuymczJle5/Q8NaLDMIBE00F0vb5oTuFvKPktG9O9x0MVWbRqF0KU
 hunWLKSC4Trx2zxSSjP1kdKWDC/SG+p7Kh3QrxInFxHy3vq74n7G6s5IQ
 +rcRqI6H7N5gHtmzn+gvdcGB/ws2vNAU463qENNFs+OzcvkpnK/Nmq0Hb
 PJej/g/S3oJwdZfv1DVQzQTSAvcn/CAJKRq1/uAjLMdl1x7ZUqBLrpAhy A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10217"; a="266808327"
X-IronPort-AV: E=Sophos;i="5.88,264,1635231600"; d="scan'208";a="266808327"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2022 11:56:49 -0800
X-IronPort-AV: E=Sophos;i="5.88,264,1635231600"; d="scan'208";a="689121793"
Received: from menright-mobl1.amr.corp.intel.com (HELO localhost)
 ([10.252.25.244])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2022 11:56:46 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 Jan 2022 21:56:17 +0200
Message-Id: <8238e0c143190a6f97738c56131f74e345925e84.1641411696.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1641411696.git.jani.nikula@intel.com>
References: <cover.1641411696.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 01/21] drm/i915: split out i915_getparam.h from
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
index 95174938b160..68017a945b3e 100644
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
index 3967748ba347..c6a24c6d07b7 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1604,10 +1604,6 @@ intel_vm_no_concurrent_access_wa(struct drm_i915_private *i915)
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
index 7f80ad247bc8..70e634106295 100644
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

