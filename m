Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AD596E2A8A
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Apr 2023 21:15:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86DC210EE7C;
	Fri, 14 Apr 2023 19:15:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61AFF10EE7B;
 Fri, 14 Apr 2023 19:15:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681499737; x=1713035737;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=iofbL+OWmq4gCu1KpnnhvRhU90UmKTD2EhFTfyr/ur8=;
 b=VBX8qw94aoenzAIK33h9lNmByHBRIGcorN+aRkNiEBKrsCOT9UTlzWJN
 cEDdzgnrkbC/JRENsFSs16nTVJeGrcVCEwGAgz3VWPyhZyNMxfsEhgkzf
 3vziDb0GeYujm76TwL6l7XJ7A9WE4pRFQMYCukvGOqcB5PGcszgAxGLWl
 TDruMHE9q920iPZFOuB07j9/8oYeZ4TFVUK4tdcp0PIq49M0JdaPcojVf
 zo71qUv8zANTHKmNA7gCs8GHdSlmyKHv8g4uvpA8SfexznMbu5vuIbVMU
 Q9yRKBDYXcY+PF3aPZrrdfAaYbyiYkcsMfsO3Przu7lyO2ZkIdK7sq8vA g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10680"; a="430841965"
X-IronPort-AV: E=Sophos;i="5.99,197,1677571200"; d="scan'208";a="430841965"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2023 12:15:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10680"; a="667304500"
X-IronPort-AV: E=Sophos;i="5.99,197,1677571200"; d="scan'208";a="667304500"
Received: from vbelgaum-ubuntu.fm.intel.com ([10.1.27.27])
 by orsmga006.jf.intel.com with ESMTP; 14 Apr 2023 12:15:37 -0700
From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	igt-dev@lists.freedesktop.org
Date: Fri, 14 Apr 2023 12:16:37 -0700
Message-Id: <20230414191639.2565389-3-vinay.belgaumkar@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20230414191639.2565389-1-vinay.belgaumkar@intel.com>
References: <20230414191639.2565389-1-vinay.belgaumkar@intel.com>
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

v2: Add a helper for GT 0 (Ashutosh)

Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
---
 lib/igt_pm.c | 36 ++++++++++++++++++++++++++----------
 lib/igt_pm.h |  3 ++-
 2 files changed, 28 insertions(+), 11 deletions(-)

diff --git a/lib/igt_pm.c b/lib/igt_pm.c
index 704acf7d..8a30bb3b 100644
--- a/lib/igt_pm.c
+++ b/lib/igt_pm.c
@@ -1329,21 +1329,37 @@ void igt_pm_print_pci_card_runtime_status(void)
 	}
 }
 
-bool i915_is_slpc_enabled(int fd)
+/**
+ * i915_is_slpc_enabled_gt:
+ * @drm_fd: DRM file descriptor
+ * @gt: GT id
+ * Check if SLPC is enabled on a GT
+ */
+bool i915_is_slpc_enabled_gt(int drm_fd, int gt)
 {
-	int debugfs_fd = igt_debugfs_dir(fd);
-	char buf[4096] = {};
-	int len;
+	int debugfs_fd;
+	char buf[256] = {};
 
-	igt_require(debugfs_fd != -1);
+	debugfs_fd = igt_debugfs_gt_open(drm_fd, gt, "uc/guc_slpc_info", O_RDONLY);
+
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
+}
+
+/**
+ * i915_is_slpc_enabled:
+ * @drm_fd: DRM file descriptor
+ * Check if SLPC is enabled on GT 0
+ */
+bool i915_is_slpc_enabled(int drm_fd)
+{
+	return i915_is_slpc_enabled_gt(drm_fd, 0);
 }
 
 int igt_pm_get_runtime_suspended_time(struct pci_device *pci_dev)
diff --git a/lib/igt_pm.h b/lib/igt_pm.h
index d0d6d673..448cf42d 100644
--- a/lib/igt_pm.h
+++ b/lib/igt_pm.h
@@ -84,7 +84,8 @@ void igt_pm_set_d3cold_allowed(struct igt_device_card *card, const char *val);
 void igt_pm_setup_pci_card_runtime_pm(struct pci_device *pci_dev);
 void igt_pm_restore_pci_card_runtime_pm(void);
 void igt_pm_print_pci_card_runtime_status(void);
-bool i915_is_slpc_enabled(int fd);
+bool i915_is_slpc_enabled_gt(int drm_fd, int gt);
+bool i915_is_slpc_enabled(int drm_fd);
 int igt_pm_get_runtime_suspended_time(struct pci_device *pci_dev);
 int igt_pm_get_runtime_usage(struct pci_device *pci_dev);
 
-- 
2.38.1

