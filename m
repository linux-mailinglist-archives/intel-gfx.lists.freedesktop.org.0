Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6FF06EE5BF
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Apr 2023 18:30:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7557310E6D4;
	Tue, 25 Apr 2023 16:30:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E24810E09E;
 Tue, 25 Apr 2023 16:30:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682440221; x=1713976221;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=1CrwKXG3x8Z+fmP2fcPOrIcGRl+4xyHFdXUjnn6UrJw=;
 b=TVL5d8OzLvSyYk1pBaz4W9wf8oAvQBWqx1TWV7lZclVCxMPzUAKsZd34
 bjhWDcK/24mBEUwImDQlxQvy1YfDIqmdKtbo6CsxcCWubCxphc+M7E56w
 +5V+I2EG5JUK0ySkaGCsun3KHRkom7tiHw/qOTlL7ZoVOWyZZU7Yc3IBv
 qu/PjLAN2y6uS2XuOQp6L4R3foWqBbOV7AYEQ1qXiR3Un2fei9wLYVVHl
 aS6cUnQGGQoi2+7yYVkceuiK+0WDjojfH1xI/zw+HzEjrruFa/6eD+hng
 F8nk6eO04sYwfd3k8Xn2Di/yh4RY0gQGP5iNKvW03kYTxFM9ogehNImAB Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10691"; a="348744597"
X-IronPort-AV: E=Sophos;i="5.99,225,1677571200"; d="scan'208";a="348744597"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2023 09:30:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10691"; a="670965255"
X-IronPort-AV: E=Sophos;i="5.99,225,1677571200"; d="scan'208";a="670965255"
Received: from vbelgaum-ubuntu.fm.intel.com ([10.1.27.27])
 by orsmga006.jf.intel.com with ESMTP; 25 Apr 2023 09:30:03 -0700
From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	igt-dev@lists.freedesktop.org
Date: Tue, 25 Apr 2023 09:24:03 -0700
Message-Id: <20230425162405.1730513-3-vinay.belgaumkar@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20230425162405.1730513-1-vinay.belgaumkar@intel.com>
References: <20230425162405.1730513-1-vinay.belgaumkar@intel.com>
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

Fixes: https://gitlab.freedesktop.org/drm/intel/-/issues/8308

v2: Add a helper for GT 0 (Ashutosh)
v3: Additional review comments (Ashutosh)
v4: Return false if slpc debugfs is not found

Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
---
 lib/igt_pm.c | 37 ++++++++++++++++++++++++++++---------
 lib/igt_pm.h |  3 ++-
 2 files changed, 30 insertions(+), 10 deletions(-)

diff --git a/lib/igt_pm.c b/lib/igt_pm.c
index 704acf7d..e60b09a7 100644
--- a/lib/igt_pm.c
+++ b/lib/igt_pm.c
@@ -1329,21 +1329,40 @@ void igt_pm_print_pci_card_runtime_status(void)
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
+	int dir, debugfs_fd;
 	char buf[4096] = {};
-	int len;
 
-	igt_require(debugfs_fd != -1);
+	dir = igt_debugfs_gt_dir(drm_fd, gt);
+	igt_require(dir);
+
+	debugfs_fd = openat(dir, "uc/guc_slpc_info", O_RDONLY);
+	/* if guc_slpc_info not present then return false */
+	if (debugfs_fd < 0)
+		return false;
+
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
+ * Check if SLPC is enabled for the device
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

