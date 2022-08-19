Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5096D5991D2
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Aug 2022 02:38:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C73C10E61E;
	Fri, 19 Aug 2022 00:38:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 03FE010E253;
 Fri, 19 Aug 2022 00:38:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660869491; x=1692405491;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=HhCHcufx/Uw08CbCDW6hyAnUcr7mDCChwuexzF8HS5A=;
 b=Njl0vklFu4KG3PTUUiVGxQHEr6MxoPb0NabmMTRfyCZOmbPSEOIhJHKS
 5HyBOu5+/dhHHW4nSt67Pnv/p/04cBju0GC2kot/IXCWboFFPHTotTI4v
 1ZcVJ84XYLTSHx7BykgEd2tJP4itvqnCBQl2rwFWA9o6aG8bttQVDTDUV
 YJaNq5LntiDEBJkvP7HiQ+Hhizhcp5EZPnvBBnNI+R+iKmSxnlSQZ6s9S
 V1GzFYZ+6A76sAwqimO+PnDA9zF3iLh1fZq3avDkNsZyDoOzqBNAmwZ93
 jQ/Ei7SSH5EP0sWlvo6fmk2yRfp9AccRun2orkPkbOP1kKtCXI1pegVqA A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10443"; a="279866112"
X-IronPort-AV: E=Sophos;i="5.93,247,1654585200"; d="scan'208";a="279866112"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2022 17:38:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,247,1654585200"; d="scan'208";a="734243106"
Received: from vbelgaum-ubuntu.fm.intel.com ([10.1.27.27])
 by orsmga004.jf.intel.com with ESMTP; 18 Aug 2022 17:38:10 -0700
From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	igt-dev@lists.freedesktop.org
Date: Thu, 18 Aug 2022 17:37:53 -0700
Message-Id: <20220819003753.27004-1-vinay.belgaumkar@intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t] i915/guc: Disable i915_pm_rps when SLPC
 is enabled
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

These tests were specifically designed for host Turbo. Skip
them when SLPC is enabled as they fail frequently. We will look
to keep adding to SLPC test coverage with these scenarios.

Bug: https://gitlab.freedesktop.org/drm/intel/-/issues/3963
Bug: https://gitlab.freedesktop.org/drm/intel/issues/4016
Bug: https://gitlab.freedesktop.org/drm/intel/issues/5468
Bug: https://gitlab.freedesktop.org/drm/intel/issues/5831

v2: Add \n for the skip message, and close fd in helper

Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
---
 lib/igt_pm.c             | 17 +++++++++++++++++
 lib/igt_pm.h             |  1 +
 tests/i915/i915_pm_rps.c | 29 ++++++++++++++++++++++++-----
 3 files changed, 42 insertions(+), 5 deletions(-)

diff --git a/lib/igt_pm.c b/lib/igt_pm.c
index 6ebbad33..99251b40 100644
--- a/lib/igt_pm.c
+++ b/lib/igt_pm.c
@@ -1202,3 +1202,20 @@ void igt_pm_print_pci_card_runtime_status(void)
 		igt_pm_print_pci_dev_runtime_status(__pci_dev_pwrattr[i].pci_dev);
 	}
 }
+
+bool i915_is_slpc_enabled(int fd)
+{
+	int debugfs_fd = igt_debugfs_dir(fd);
+	char buf[4096] = {};
+	int len;
+
+	igt_require(debugfs_fd != -1);
+
+	len = igt_debugfs_simple_read(debugfs_fd, "gt/uc/guc_slpc_info", buf, sizeof(buf));
+	close(debugfs_fd);
+
+	if (len < 0)
+		return false;
+	else
+		return strstr(buf, "SLPC state: running");
+}
diff --git a/lib/igt_pm.h b/lib/igt_pm.h
index f28b6ebf..cbbde12b 100644
--- a/lib/igt_pm.h
+++ b/lib/igt_pm.h
@@ -79,5 +79,6 @@ void igt_pm_enable_pci_card_runtime_pm(struct pci_device *root,
 void igt_pm_setup_pci_card_runtime_pm(struct pci_device *pci_dev);
 void igt_pm_restore_pci_card_runtime_pm(void);
 void igt_pm_print_pci_card_runtime_status(void);
+bool i915_is_slpc_enabled(int fd);
 
 #endif /* IGT_PM_H */
diff --git a/tests/i915/i915_pm_rps.c b/tests/i915/i915_pm_rps.c
index d06ade27..0f92273d 100644
--- a/tests/i915/i915_pm_rps.c
+++ b/tests/i915/i915_pm_rps.c
@@ -914,35 +914,54 @@ igt_main
 		igt_install_exit_handler(pm_rps_exit_handler);
 	}
 
-	igt_subtest("basic-api")
+	igt_subtest("basic-api") {
+		igt_skip_on_f(i915_is_slpc_enabled(drm_fd),
+			      "This subtest is not supported when SLPC is enabled\n");
 		min_max_config(basic_check, false);
+	}
 
 	/* Verify the constraints, check if we can reach idle */
-	igt_subtest("min-max-config-idle")
+	igt_subtest("min-max-config-idle") {
+		igt_skip_on_f(i915_is_slpc_enabled(drm_fd),
+			      "This subtest is not supported when SLPC is enabled\n");
 		min_max_config(idle_check, true);
+	}
 
 	/* Verify the constraints with high load, check if we can reach max */
 	igt_subtest("min-max-config-loaded") {
+		igt_skip_on_f(i915_is_slpc_enabled(drm_fd),
+			      "This subtest is not supported when SLPC is enabled\n");
 		load_helper_run(HIGH);
 		min_max_config(loaded_check, false);
 		load_helper_stop();
 	}
 
 	/* Checks if we achieve boost using gem_wait */
-	igt_subtest("waitboost")
+	igt_subtest("waitboost") {
+		igt_skip_on_f(i915_is_slpc_enabled(drm_fd),
+			      "This subtest is not supported when SLPC is enabled\n");
 		waitboost(drm_fd, false);
+	}
 
 	igt_describe("Check if the order of fences does not affect waitboosting");
-	igt_subtest("fence-order")
+	igt_subtest("fence-order") {
+		igt_skip_on_f(i915_is_slpc_enabled(drm_fd),
+			      "This subtest is not supported when SLPC is enabled\n");
 		fence_order(drm_fd);
+	}
 
 	igt_describe("Check if context reuse does not affect waitboosting");
-	igt_subtest("engine-order")
+	igt_subtest("engine-order") {
+		igt_skip_on_f(i915_is_slpc_enabled(drm_fd),
+			      "This subtest is not supported when SLPC is enabled\n");
 		engine_order(drm_fd);
+	}
 
 	/* Test boost frequency after GPU reset */
 	igt_subtest("reset") {
 		igt_hang_t hang = igt_allow_hang(drm_fd, 0, 0);
+		igt_skip_on_f(i915_is_slpc_enabled(drm_fd),
+			      "This subtest is not supported when SLPC is enabled\n");
 		waitboost(drm_fd, true);
 		igt_disallow_hang(drm_fd, hang);
 	}
-- 
2.35.1

