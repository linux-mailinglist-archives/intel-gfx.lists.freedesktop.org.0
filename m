Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 88CF73F77FB
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Aug 2021 17:06:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8E038987A;
	Wed, 25 Aug 2021 15:06:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EFC428987A
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Aug 2021 15:06:30 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10086"; a="217259810"
X-IronPort-AV: E=Sophos;i="5.84,351,1620716400"; d="scan'208";a="217259810"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2021 08:06:29 -0700
X-IronPort-AV: E=Sophos;i="5.84,350,1620716400"; d="scan'208";a="527361153"
Received: from mburkard-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.251.213.64])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2021 08:06:28 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Wed, 25 Aug 2021 18:06:23 +0300
Message-Id: <20210825150623.28980-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/pci: rename functions to have i915_pci
 prefix
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

Follow the usual naming conventions. While at it, fix i915_pci.h SPDX
license comment format and add header include guards.

Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_module.c |  4 ++--
 drivers/gpu/drm/i915/i915_pci.c    |  4 ++--
 drivers/gpu/drm/i915/i915_pci.h    | 12 ++++++++----
 3 files changed, 12 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_module.c b/drivers/gpu/drm/i915/i915_module.c
index d8b4482c69d0..ab2295dd4500 100644
--- a/drivers/gpu/drm/i915/i915_module.c
+++ b/drivers/gpu/drm/i915/i915_module.c
@@ -67,8 +67,8 @@ static const struct {
 	{ .init = i915_mock_selftests },
 	{ .init = i915_pmu_init,
 	  .exit = i915_pmu_exit },
-	{ .init = i915_register_pci_driver,
-	  .exit = i915_unregister_pci_driver },
+	{ .init = i915_pci_register_driver,
+	  .exit = i915_pci_unregister_driver },
 	{ .init = i915_perf_sysctl_register,
 	  .exit = i915_perf_sysctl_unregister },
 };
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 96cfd6427cec..146f7e39182a 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -1235,12 +1235,12 @@ static struct pci_driver i915_pci_driver = {
 	.driver.pm = &i915_pm_ops,
 };
 
-int i915_register_pci_driver(void)
+int i915_pci_register_driver(void)
 {
 	return pci_register_driver(&i915_pci_driver);
 }
 
-void i915_unregister_pci_driver(void)
+void i915_pci_unregister_driver(void)
 {
 	pci_unregister_driver(&i915_pci_driver);
 }
diff --git a/drivers/gpu/drm/i915/i915_pci.h b/drivers/gpu/drm/i915/i915_pci.h
index b386f319f52e..ee048c238174 100644
--- a/drivers/gpu/drm/i915/i915_pci.h
+++ b/drivers/gpu/drm/i915/i915_pci.h
@@ -1,8 +1,12 @@
+/* SPDX-License-Identifier: MIT */
 /*
- * SPDX-License-Identifier: MIT
- *
  * Copyright © 2021 Intel Corporation
  */
 
-int i915_register_pci_driver(void);
-void i915_unregister_pci_driver(void);
+#ifndef __I915_PCI_H__
+#define __I915_PCI_H__
+
+int i915_pci_register_driver(void);
+void i915_pci_unregister_driver(void);
+
+#endif /* __I915_PCI_H__ */
-- 
2.20.1

