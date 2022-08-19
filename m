Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 22E585993E9
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Aug 2022 06:15:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC2DB10E51F;
	Fri, 19 Aug 2022 04:15:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4F0A10E511;
 Fri, 19 Aug 2022 04:15:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660882543; x=1692418543;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=HGEK4I4G5U2uP6dOvYWWs6QhSArCE7G8am+nUKLaTSo=;
 b=Ck2NoCyvNa+4MaLpmQv+pMjxFSDhj1f0RSQVtMdLWy/DJ78l3M/aHX55
 DeKs8YPVycbN7Cgb7uB1tQql07qGTH6Ng7JCDTwUYMA5J3VdQJRiUOhHB
 RoSWLjCgfZN07MNXoHsOjNm8MLBV4Sns0D6vZ3p3vZXNmJWa3K9hOZfCo
 djCJTlTa3tNHBu5EBYRiyX3fdkNCxfTXn5XEt1VkfnO/gOTMD6QAmhG0/
 QtjfkNzXWbBC3OeXr8DEjgO3jAvmgLDsbIo1/f7N0OIk0cgBwTIVhUgb+
 yyd8U/xXteJGVVFQrrrutUwTOp6G9FMGtI9emZZ/EoB6l7nxO1vxYEtf0 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10443"; a="379226439"
X-IronPort-AV: E=Sophos;i="5.93,247,1654585200"; d="scan'208";a="379226439"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2022 21:15:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,247,1654585200"; d="scan'208";a="711200920"
Received: from vbelgaum-ubuntu.fm.intel.com ([10.1.27.27])
 by fmsmga002.fm.intel.com with ESMTP; 18 Aug 2022 21:15:43 -0700
From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	igt-dev@lists.freedesktop.org
Date: Thu, 18 Aug 2022 21:15:24 -0700
Message-Id: <20220819041524.33170-1-vinay.belgaumkar@intel.com>
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
v3: Don't modify reset params before deciding to skip. There is
no end fixture for this test, which needs to be fixed separately.

Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
---
 lib/igt_pm.c             | 17 +++++++++++++++++
 lib/igt_pm.h             |  1 +
 tests/i915/i915_pm_rps.c | 32 ++++++++++++++++++++++++++------
 3 files changed, 44 insertions(+), 6 deletions(-)

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
index d06ade27..db39ec69 100644
--- a/tests/i915/i915_pm_rps.c
+++ b/tests/i915/i915_pm_rps.c
@@ -914,35 +914,55 @@ igt_main
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
-		igt_hang_t hang = igt_allow_hang(drm_fd, 0, 0);
+		igt_hang_t hang;
+		igt_skip_on_f(i915_is_slpc_enabled(drm_fd),
+			      "This subtest is not supported when SLPC is enabled\n");
+		hang = igt_allow_hang(drm_fd, 0, 0);
 		waitboost(drm_fd, true);
 		igt_disallow_hang(drm_fd, hang);
 	}
-- 
2.35.1

