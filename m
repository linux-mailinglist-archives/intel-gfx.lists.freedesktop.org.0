Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DD4F6E17A2
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Apr 2023 00:41:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D303F10E357;
	Thu, 13 Apr 2023 22:41:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 24C2910E357;
 Thu, 13 Apr 2023 22:41:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681425703; x=1712961703;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=w5pxOuRGSTsaNSFiK7P8JuGRt3ZGpoJL7RP3T+HlY+w=;
 b=kF+Rs2qQtJMIBs253uo4wEAtXX1QFGEN18VkQMgse3QlnWftWLJS3iNT
 pstRpHZvN8ZH7O15qxyAsRqX/ZUDfZD+viljxuUsEMbMu5qxYzcZUz7p+
 3ypMKoEov8tTxKpF+8VgXeHJjSLeNkwke9tRILEKBn2POyWSoKz4uZOki
 8YjWHRuHOCbSmrBCUJxj+sYbxqBKZ0mnZM+Utv86dGClGReDevEQIV9q0
 PmwepuylkgLHJAUPufg+XFczy5h0Eg3sR4EsQMwFBP+oXBj0Pi3VgefXm
 d4S+daTr7U6POGGK6OL/vONLRGA0n3Dlg4jp8I3HaH5FO/RO1s3c2p/ne w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="344322280"
X-IronPort-AV: E=Sophos;i="5.99,195,1677571200"; d="scan'208";a="344322280"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2023 15:41:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="863960795"
X-IronPort-AV: E=Sophos;i="5.99,195,1677571200"; d="scan'208";a="863960795"
Received: from vbelgaum-ubuntu.fm.intel.com ([10.1.27.27])
 by orsmga005.jf.intel.com with ESMTP; 13 Apr 2023 15:41:42 -0700
From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	igt-dev@lists.freedesktop.org
Date: Thu, 13 Apr 2023 15:44:12 -0700
Message-Id: <20230413224414.2313507-3-vinay.belgaumkar@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20230413224414.2313507-1-vinay.belgaumkar@intel.com>
References: <20230413224414.2313507-1-vinay.belgaumkar@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 2/4] lib: Make SLPC helper function per GT
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

Use default of 0 where GT id is not being used.

Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
---
 lib/igt_pm.c             | 20 ++++++++++----------
 lib/igt_pm.h             |  2 +-
 tests/i915/i915_pm_rps.c |  6 +++---
 3 files changed, 14 insertions(+), 14 deletions(-)

diff --git a/lib/igt_pm.c b/lib/igt_pm.c
index 704acf7d..8ca7c181 100644
--- a/lib/igt_pm.c
+++ b/lib/igt_pm.c
@@ -1329,21 +1329,21 @@ void igt_pm_print_pci_card_runtime_status(void)
 	}
 }
 
-bool i915_is_slpc_enabled(int fd)
+bool i915_is_slpc_enabled(int drm_fd, int gt)
 {
-	int debugfs_fd = igt_debugfs_dir(fd);
-	char buf[4096] = {};
-	int len;
+	int debugfs_fd;
+	char buf[256] = {};
+
+	debugfs_fd = igt_debugfs_gt_open(drm_fd, gt, "uc/guc_slpc_info", O_RDONLY);
 
-	igt_require(debugfs_fd != -1);
+	/* if guc_slpc_info not present then return false */
+	if (debugfs_fd < 0)
+		return false;
+	read(debugfs_fd, buf, sizeof(buf)-1);
 
-	len = igt_debugfs_simple_read(debugfs_fd, "gt/uc/guc_slpc_info", buf, sizeof(buf));
 	close(debugfs_fd);
 
-	if (len < 0)
-		return false;
-	else
-		return strstr(buf, "SLPC state: running");
+	return strstr(buf, "SLPC state: running");
 }
 
 int igt_pm_get_runtime_suspended_time(struct pci_device *pci_dev)
diff --git a/lib/igt_pm.h b/lib/igt_pm.h
index d0d6d673..1b054dce 100644
--- a/lib/igt_pm.h
+++ b/lib/igt_pm.h
@@ -84,7 +84,7 @@ void igt_pm_set_d3cold_allowed(struct igt_device_card *card, const char *val);
 void igt_pm_setup_pci_card_runtime_pm(struct pci_device *pci_dev);
 void igt_pm_restore_pci_card_runtime_pm(void);
 void igt_pm_print_pci_card_runtime_status(void);
-bool i915_is_slpc_enabled(int fd);
+bool i915_is_slpc_enabled(int fd, int gt);
 int igt_pm_get_runtime_suspended_time(struct pci_device *pci_dev);
 int igt_pm_get_runtime_usage(struct pci_device *pci_dev);
 
diff --git a/tests/i915/i915_pm_rps.c b/tests/i915/i915_pm_rps.c
index d4ee2d58..85dae449 100644
--- a/tests/i915/i915_pm_rps.c
+++ b/tests/i915/i915_pm_rps.c
@@ -916,21 +916,21 @@ igt_main
 	}
 
 	igt_subtest("basic-api") {
-		igt_skip_on_f(i915_is_slpc_enabled(drm_fd),
+		igt_skip_on_f(i915_is_slpc_enabled(drm_fd, 0),
 			      "This subtest is not supported when SLPC is enabled\n");
 		min_max_config(basic_check, false);
 	}
 
 	/* Verify the constraints, check if we can reach idle */
 	igt_subtest("min-max-config-idle") {
-		igt_skip_on_f(i915_is_slpc_enabled(drm_fd),
+		igt_skip_on_f(i915_is_slpc_enabled(drm_fd, 0),
 			      "This subtest is not supported when SLPC is enabled\n");
 		min_max_config(idle_check, true);
 	}
 
 	/* Verify the constraints with high load, check if we can reach max */
 	igt_subtest("min-max-config-loaded") {
-		igt_skip_on_f(i915_is_slpc_enabled(drm_fd),
+		igt_skip_on_f(i915_is_slpc_enabled(drm_fd, 0),
 			      "This subtest is not supported when SLPC is enabled\n");
 		load_helper_run(HIGH);
 		min_max_config(loaded_check, false);
-- 
2.38.1

