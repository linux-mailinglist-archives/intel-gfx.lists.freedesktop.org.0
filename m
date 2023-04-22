Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AA876EB68A
	for <lists+intel-gfx@lfdr.de>; Sat, 22 Apr 2023 03:01:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BD4510E24F;
	Sat, 22 Apr 2023 01:01:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 16DAD10E1D0;
 Sat, 22 Apr 2023 01:01:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682125288; x=1713661288;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=githB5zBJCX/xHnLRmuyn/yGSw4HIadZsweFS/3RV1Y=;
 b=RKspaWreQu02dgA+qNlny2CJy3E8cG4BApfCAbBIRir6bJkiKxwMSn/o
 fMpc4KD7vKQL0WL2d87FK38AuXYlM4DUmiZnb3zavCttsMcv7jLRrfP4O
 +W7Q3qrHV9n64ngYRwybwE5A/JhNmj/g0DskH6o4Asj7WSqYmmPoqfv40
 Tk2LexQ3YTRXv+LN2ZWf6SAso72AtanLBwu9VbdgnG7qoA97fC29Ja3AI
 sZq45DICWMFXlpG6QrAdWt5QYdL07AcVWYVaZYlhrh8dp7+A48a9bH6xi
 9oEgBDhskfIjEpq1bVV75S0AAQrEshrfwsqSELxKnGlmyEQdplvSiME22 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10687"; a="411385211"
X-IronPort-AV: E=Sophos;i="5.99,216,1677571200"; d="scan'208";a="411385211"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2023 18:01:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10687"; a="938678650"
X-IronPort-AV: E=Sophos;i="5.99,216,1677571200"; d="scan'208";a="938678650"
Received: from vbelgaum-ubuntu.fm.intel.com ([10.1.27.27])
 by fmsmga006.fm.intel.com with ESMTP; 21 Apr 2023 18:01:27 -0700
From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	igt-dev@lists.freedesktop.org
Date: Fri, 21 Apr 2023 18:01:00 -0700
Message-Id: <20230422010103.1028886-2-vinay.belgaumkar@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20230422010103.1028886-1-vinay.belgaumkar@intel.com>
References: <20230422010103.1028886-1-vinay.belgaumkar@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 1/4] lib/debugfs: Add per GT debugfs
 helpers
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

These can be used to open per-gt debugfs files.

Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Signed-off-by: Vinay Belgaumkar <viay.belgaumkar@intel.com>
---
 lib/igt_debugfs.c | 60 +++++++++++++++++++++++++++++++++++++++++++++++
 lib/igt_debugfs.h |  4 ++++
 2 files changed, 64 insertions(+)

diff --git a/lib/igt_debugfs.c b/lib/igt_debugfs.c
index 05889bbe..afde2da6 100644
--- a/lib/igt_debugfs.c
+++ b/lib/igt_debugfs.c
@@ -217,6 +217,37 @@ int igt_debugfs_dir(int device)
 	return open(path, O_RDONLY);
 }
 
+/**
+ * igt_debugfs_gt_dir:
+ * @device: fd of the device
+ * @gt: GT instance number
+ *
+ * This opens the debugfs directory corresponding to device for use
+ * with igt_sysfs_get() and related functions.
+ *
+ * Returns:
+ * The directory fd, or -1 on failure.
+ */
+int igt_debugfs_gt_dir(int device, unsigned int gt)
+{
+	int debugfs_gt_dir_fd;
+	char path[PATH_MAX];
+	char gtpath[16];
+	int ret;
+
+	if (!igt_debugfs_path(device, path, sizeof(path)))
+		return -1;
+
+	ret = snprintf(gtpath, sizeof(gtpath), "/gt%u", gt);
+	igt_assert(ret < sizeof(gtpath));
+	strncat(path, gtpath, sizeof(path) - 1);
+
+	debugfs_gt_dir_fd = open(path, O_RDONLY);
+	igt_debug_on_f(debugfs_gt_dir_fd < 0, "path: %s\n", path);
+
+	return debugfs_gt_dir_fd;
+}
+
 /**
  * igt_debugfs_connector_dir:
  * @device: fd of the device
@@ -313,6 +344,35 @@ bool igt_debugfs_exists(int device, const char *filename, int mode)
 	return false;
 }
 
+/**
+ * igt_debugfs_gt_open:
+ * @device: open i915 drm fd
+ * @gt: gt instance number
+ * @filename: name of the debugfs node to open
+ * @mode: mode bits as used by open()
+ *
+ * This opens a debugfs file as a Unix file descriptor. The filename should be
+ * relative to the drm device's root, i.e. without "drm/$minor".
+ *
+ * Returns:
+ * The Unix file descriptor for the debugfs file or -1 if that didn't work out.
+ */
+int
+igt_debugfs_gt_open(int device, unsigned int gt, const char *filename, int mode)
+{
+	int dir, ret;
+
+	dir = igt_debugfs_gt_dir(device, gt);
+	if (dir < 0)
+		return dir;
+
+	ret = openat(dir, filename, mode);
+
+	close(dir);
+
+	return ret;
+}
+
 /**
  * igt_debugfs_simple_read:
  * @dir: fd of the debugfs directory
diff --git a/lib/igt_debugfs.h b/lib/igt_debugfs.h
index 4824344a..3e6194ad 100644
--- a/lib/igt_debugfs.h
+++ b/lib/igt_debugfs.h
@@ -45,6 +45,10 @@ void __igt_debugfs_write(int fd, const char *filename, const char *buf, int size
 int igt_debugfs_simple_read(int dir, const char *filename, char *buf, int size);
 bool igt_debugfs_search(int fd, const char *filename, const char *substring);
 
+int igt_debugfs_gt_dir(int device, unsigned int gt);
+int igt_debugfs_gt_open(int device, unsigned int gt, const char *filename,
+			int mode);
+
 /**
  * igt_debugfs_read:
  * @filename: name of the debugfs file
-- 
2.38.1

