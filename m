Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 405664867E2
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jan 2022 17:49:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CCF310F569;
	Thu,  6 Jan 2022 16:49:22 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B69410F2CF;
 Thu,  6 Jan 2022 16:49:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641487761; x=1673023761;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Myh5615gEDi5F4MEu1OKsaA3+7B9EBA3kSZdeEhjx1g=;
 b=EE30nnaIfogxEwyb2/gtTOd1ih63Vt1lubu3xX/wnIZ340yKiVRD63SZ
 nDYioZNp3trVv1qao1kCFZPAuDYbYExX5SqUi9ikD9AzH/MRHMaxTx1f2
 zh95qDZ5WXLXf1k5MCE8kHC8JtzbPH5JnegKXpQC9RzRqhwGd7C4KuuKC
 E66L3DcoPWJgTyXSRWU2NpS04XrHD60QE6bSLoNla1i1Fi/kiUaHiTM1h
 Wl4lL9d+YOCHFSsFLVc8S+J4+QULB7zrR4mLziptB7kmovX+tXMF0ABGn
 TnT/kqx8N59B4txeKDcjFOpcDr44ezXzRQekVfeQ//uKicOR53Cf2MgQI A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10217"; a="229502238"
X-IronPort-AV: E=Sophos;i="5.88,267,1635231600"; d="scan'208";a="229502238"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2022 08:49:20 -0800
X-IronPort-AV: E=Sophos;i="5.88,267,1635231600"; d="scan'208";a="513468437"
Received: from leitchrx-mobl.ger.corp.intel.com (HELO tursulin-mobl2.home)
 ([10.213.202.197])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2022 08:49:19 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Thu,  6 Jan 2022 16:49:13 +0000
Message-Id: <20220106164915.56855-2-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220106164915.56855-1-tvrtko.ursulin@linux.intel.com>
References: <20220106164915.56855-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 1/3] lib: Helper library for parsing i915
 fdinfo output
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
Cc: Intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Tests and intel_gpu_top will share common code for parsing this file.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 lib/igt_drm_fdinfo.c | 161 +++++++++++++++++++++++++++++++++++++++++++
 lib/igt_drm_fdinfo.h |  47 +++++++++++++
 lib/meson.build      |   7 ++
 3 files changed, 215 insertions(+)
 create mode 100644 lib/igt_drm_fdinfo.c
 create mode 100644 lib/igt_drm_fdinfo.h

diff --git a/lib/igt_drm_fdinfo.c b/lib/igt_drm_fdinfo.c
new file mode 100644
index 000000000000..86cc64da8c68
--- /dev/null
+++ b/lib/igt_drm_fdinfo.c
@@ -0,0 +1,161 @@
+/*
+ * Copyright © 2022 Intel Corporation
+ *
+ * Permission is hereby granted, free of charge, to any person obtaining a
+ * copy of this software and associated documentation files (the "Software"),
+ * to deal in the Software without restriction, including without limitation
+ * the rights to use, copy, modify, merge, publish, distribute, sublicense,
+ * and/or sell copies of the Software, and to permit persons to whom the
+ * Software is furnished to do so, subject to the following conditions:
+ *
+ * The above copyright notice and this permission notice (including the next
+ * paragraph) shall be included in all copies or substantial portions of the
+ * Software.
+ *
+ * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
+ * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
+ * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL
+ * THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
+ * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
+ * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
+ * IN THE SOFTWARE.
+ *
+ */
+
+#include <ctype.h>
+#include <sys/types.h>
+#include <sys/stat.h>
+#include <fcntl.h>
+#include <stdio.h>
+#include <string.h>
+#include <stdlib.h>
+#include <unistd.h>
+
+#include "drmtest.h"
+
+#include "igt_drm_fdinfo.h"
+
+static FILE *fropenat(DIR *at, const char *name)
+{
+	FILE *f;
+	int fd;
+
+	fd = openat(dirfd(at), name, O_RDONLY);
+	if (fd < 0)
+		return NULL;
+
+	f = fdopen(fd, "r");
+	if (!f)
+		close(fd);
+
+	return f;
+}
+
+static size_t read_fdinfo(char *buf, const size_t sz, DIR *at, const char *name)
+{
+	size_t count;
+	FILE *f;
+
+	f = fropenat(at, name);
+	if (!f)
+		return 0;
+
+	memset(buf, 0, sz);
+	count = fread(buf, 1, sz, f);
+	fclose(f);
+
+	return count;
+}
+
+static bool parse_engine(char *line, struct drm_client_fdinfo *info)
+{
+	static const char *e2class[] = {
+		"render",
+		"copy",
+		"video",
+		"video-enhance",
+	};
+	bool found = false;
+	char name[256];
+	unsigned int i;
+	uint64_t val;
+	char *t;
+
+	t = line;
+	while (!isdigit(*t))
+		t++;
+	val = strtoull(t, NULL, 10);
+
+	t = line;
+	while (*t != ':')
+		t++;
+	*t = 0;
+
+	if (sscanf(line, "drm-engine-%s", name) != 1)
+		return false;
+
+	for (i = 0; i < ARRAY_SIZE(e2class); i++) {
+		if (!strcmp(name, e2class[i])) {
+			info->busy[i] = val;
+			found = true;
+			break;
+		}
+	}
+
+	return found;
+}
+
+bool
+__igt_parse_drm_fdinfo(DIR *dir, const char *fd, struct drm_client_fdinfo *info)
+{
+	char buf[4096], *_buf = buf;
+	char *l, *ctx = NULL;
+	unsigned int good = 0;
+	size_t count;
+
+	count = read_fdinfo(buf, sizeof(buf), dir, fd);
+	if (!count)
+		return false;
+
+	while ((l = strtok_r(_buf, "\n", &ctx))) {
+		_buf = NULL;
+
+		if (sscanf(l, "drm-driver:\t%s", info->driver)) {
+			good++;
+		} else if (sscanf(l, "drm-pdev:\t%s", info->pdev)) {
+			good++;
+		}  else if (sscanf(l, "drm-client-id:\t%lu", &info->id) == 1) {
+			good++;
+		} else if (!strncmp(l, "drm-engine-", 11)) {
+			if (parse_engine(l, info))
+				info->num_engines++;
+		}
+	}
+
+	if (good < 3 || !info->num_engines)
+		return false; /* fdinfo format not as expected */
+
+	return true;
+}
+
+bool igt_parse_drm_fdinfo(int drm_fd, struct drm_client_fdinfo *info)
+{
+	char fd[64];
+	DIR *dir;
+	bool res;
+	int ret;
+
+	ret = snprintf(fd, sizeof(fd), "%u", drm_fd);
+	if (ret < 0 || ret == sizeof(fd))
+		return false;
+
+	dir = opendir("/proc/self/fdinfo");
+	if (!dir)
+		return false;
+
+	res = __igt_parse_drm_fdinfo(dir, fd, info);
+
+	closedir(dir);
+
+	return res;
+}
diff --git a/lib/igt_drm_fdinfo.h b/lib/igt_drm_fdinfo.h
new file mode 100644
index 000000000000..103cf5562cbe
--- /dev/null
+++ b/lib/igt_drm_fdinfo.h
@@ -0,0 +1,47 @@
+/*
+ * Copyright © 2022 Intel Corporation
+ *
+ * Permission is hereby granted, free of charge, to any person obtaining a
+ * copy of this software and associated documentation files (the "Software"),
+ * to deal in the Software without restriction, including without limitation
+ * the rights to use, copy, modify, merge, publish, distribute, sublicense,
+ * and/or sell copies of the Software, and to permit persons to whom the
+ * Software is furnished to do so, subject to the following conditions:
+ *
+ * The above copyright notice and this permission notice (including the next
+ * paragraph) shall be included in all copies or substantial portions of the
+ * Software.
+ *
+ * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
+ * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
+ * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL
+ * THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
+ * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
+ * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
+ * IN THE SOFTWARE.
+ *
+ */
+
+#ifndef IGT_DRM_FDINFO_H
+#define IGT_DRM_FDINFO_H
+
+#include <sys/types.h>
+#include <dirent.h>
+#include <stdint.h>
+#include <stdbool.h>
+
+struct drm_client_fdinfo {
+	char driver[128];
+	char pdev[128];
+	unsigned long id;
+
+	unsigned int num_engines;
+	uint64_t busy[16];
+};
+
+bool igt_parse_drm_fdinfo(int drm_fd, struct drm_client_fdinfo *info);
+
+bool __igt_parse_drm_fdinfo(DIR *dir, const char *fd,
+			    struct drm_client_fdinfo *info);
+
+#endif /* IGT_DRM_FDINFO_H */
diff --git a/lib/meson.build b/lib/meson.build
index b9568a71bf46..b456db809e98 100644
--- a/lib/meson.build
+++ b/lib/meson.build
@@ -16,6 +16,7 @@ lib_sources = [
 	'igt_debugfs.c',
 	'igt_device.c',
 	'igt_device_scan.c',
+	'igt_drm_fdinfo.c',
 	'igt_aux.c',
 	'igt_gt.c',
 	'igt_halffloat.c',
@@ -215,6 +216,12 @@ lib_igt_device_scan_build = static_library('igt_device_scan',
 lib_igt_device_scan = declare_dependency(link_with : lib_igt_device_scan_build,
 				  include_directories : inc)
 
+lib_igt_drm_fdinfo_build = static_library('igt_drm_fdinfo',
+	['igt_drm_fdinfo.c'],
+	include_directories : inc)
+
+lib_igt_drm_fdinfo = declare_dependency(link_with : lib_igt_drm_fdinfo_build,
+				  include_directories : inc)
 i915_perf_files = [
   'igt_list.c',
   'i915/perf.c',
-- 
2.32.0

