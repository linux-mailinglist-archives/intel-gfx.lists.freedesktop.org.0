Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4623C6EB68B
	for <lists+intel-gfx@lfdr.de>; Sat, 22 Apr 2023 03:01:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5526B10E3B9;
	Sat, 22 Apr 2023 01:01:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 704CD10E3B9;
 Sat, 22 Apr 2023 01:01:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682125290; x=1713661290;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=vApr1TTck/ylQ1GrOLsEUrf01etgAhPiUXc4Iz8cVzA=;
 b=dPz+c7vMB2pSZiiPFUNAsOgbPLDxFDsIY8JWylFXrQsvolMRi5uHgtit
 ZmZhjSr3U3bGfJWq0SbB6WXBg1DYNrE7HU7mo5rEckANN0MDUwf7rDZz+
 tzpY8AVJAU5beazfI8SwLyRnobU2Fw8x59a8JcoLYPFlqfZht1s5Fb/qx
 hLmuDPKJnhyPl4mM5psp9eWApwi/u2uvo6jA+//nACLT6IKYxEspwNKoe
 qNtM2CX+JWV01iXOPeuR03nUwogT9EuNnitUs1wT3D1LLo0TzY4AnAj2p
 9xAD0a2pO2TQpOsonS+RS5IpYc2HUnzyiumd4SIyddpBlh1bDFYoeMRZf g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10687"; a="411385215"
X-IronPort-AV: E=Sophos;i="5.99,216,1677571200"; d="scan'208";a="411385215"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2023 18:01:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10687"; a="938678667"
X-IronPort-AV: E=Sophos;i="5.99,216,1677571200"; d="scan'208";a="938678667"
Received: from vbelgaum-ubuntu.fm.intel.com ([10.1.27.27])
 by fmsmga006.fm.intel.com with ESMTP; 21 Apr 2023 18:01:30 -0700
From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	igt-dev@lists.freedesktop.org
Date: Fri, 21 Apr 2023 18:01:01 -0700
Message-Id: <20230422010103.1028886-3-vinay.belgaumkar@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20230422010103.1028886-1-vinay.belgaumkar@intel.com>
References: <20230422010103.1028886-1-vinay.belgaumkar@intel.com>
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

Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
---
 lib/igt_pm.c | 34 +++++++++++++++++++++++++---------
 lib/igt_pm.h |  3 ++-
 2 files changed, 27 insertions(+), 10 deletions(-)

diff --git a/lib/igt_pm.c b/lib/igt_pm.c
index 704acf7d..15a9cf81 100644
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
+	int debugfs_fd;
 	char buf[4096] = {};
-	int len;
 
-	igt_require(debugfs_fd != -1);
+	debugfs_fd = igt_debugfs_gt_open(drm_fd, gt, "uc/guc_slpc_info", O_RDONLY);
+
+	/* if guc_slpc_info not present then return false */
+	igt_require(debugfs_fd >= 0);
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

