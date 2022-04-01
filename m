Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 743214EF284
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Apr 2022 17:14:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60FBF10E40C;
	Fri,  1 Apr 2022 15:14:17 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA7B510E40C;
 Fri,  1 Apr 2022 15:14:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648826055; x=1680362055;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=dX0S/wIcv92sOVUbwU1IHtBqyyBGvhIlNFkdz9xxBfw=;
 b=QIchIX7h3Yz8gg6/cMANJmbk8sIaGmB+AsTuQ2Bp2zbHoluzlZNrWpTW
 Imn0osvgWHvSjlXZcZCDqGNQfbenPJdwMYxUhm+5/ptcy+2vf4klAcyLF
 GoM161ZrzTeD3ShlVSrDnFSysrJQJhhznAe3q7WZfRvxTB6Pb2lH/BmSu
 heR336Jrsfnpemijpxh6aUFasPjjG+LG04jLIodGBfeCJ1GsIMNLSSjXp
 VgG0L83Ax4FRfM4I0jq/lSTPGyH2Sn+odusXRng1ZSoPLlz9Qa/UToGLN
 ED3s2YnKByBqK4saaqKzt+ETCrFo4u5g6ZutMZuq/rI5cuRAaCIyRxWRA g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10304"; a="259861275"
X-IronPort-AV: E=Sophos;i="5.90,228,1643702400"; d="scan'208";a="259861275"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2022 08:14:15 -0700
X-IronPort-AV: E=Sophos;i="5.90,228,1643702400"; d="scan'208";a="640564633"
Received: from orsosgc001.jf.intel.com (HELO unerlige-ril-10.165.21.154)
 ([10.165.21.154])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2022 08:14:14 -0700
Date: Fri, 1 Apr 2022 08:14:14 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <20220401151414.GG59408@unerlige-ril-10.165.21.154>
References: <20220401141155.3122817-1-tvrtko.ursulin@linux.intel.com>
 <20220401141155.3122817-2-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220401141155.3122817-2-tvrtko.ursulin@linux.intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH i-g-t 1/3] lib: Helper library for parsing
 i915 fdinfo output
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
Cc: igt-dev@lists.freedesktop.org, Intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

lgtm, thanks for clarifications on the other patch.

Reviewed-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>

Umesh

On Fri, Apr 01, 2022 at 03:11:53PM +0100, Tvrtko Ursulin wrote:
>From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>
>Tests and intel_gpu_top will share common code for parsing this file.
>
>v2:
> * Fix key-value parsing if valid key line ends with ':'.
> * Return number of drm keys found.
> * Add DRM_CLIENT_FDINFO_MAX_ENGINES. (Umesh)
> * Always zero terminate read buffer. (Umesh)
>
>Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>---
> lib/igt_drm_fdinfo.c | 188 +++++++++++++++++++++++++++++++++++++++++++
> lib/igt_drm_fdinfo.h |  69 ++++++++++++++++
> lib/meson.build      |   7 ++
> 3 files changed, 264 insertions(+)
> create mode 100644 lib/igt_drm_fdinfo.c
> create mode 100644 lib/igt_drm_fdinfo.h
>
>diff --git a/lib/igt_drm_fdinfo.c b/lib/igt_drm_fdinfo.c
>new file mode 100644
>index 000000000000..b422f67a4ace
>--- /dev/null
>+++ b/lib/igt_drm_fdinfo.c
>@@ -0,0 +1,188 @@
>+/*
>+ * Copyright © 2022 Intel Corporation
>+ *
>+ * Permission is hereby granted, free of charge, to any person obtaining a
>+ * copy of this software and associated documentation files (the "Software"),
>+ * to deal in the Software without restriction, including without limitation
>+ * the rights to use, copy, modify, merge, publish, distribute, sublicense,
>+ * and/or sell copies of the Software, and to permit persons to whom the
>+ * Software is furnished to do so, subject to the following conditions:
>+ *
>+ * The above copyright notice and this permission notice (including the next
>+ * paragraph) shall be included in all copies or substantial portions of the
>+ * Software.
>+ *
>+ * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
>+ * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
>+ * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL
>+ * THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
>+ * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
>+ * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
>+ * IN THE SOFTWARE.
>+ *
>+ */
>+
>+#include <ctype.h>
>+#include <sys/types.h>
>+#include <sys/stat.h>
>+#include <fcntl.h>
>+#include <stdio.h>
>+#include <string.h>
>+#include <stdlib.h>
>+#include <unistd.h>
>+
>+#include "drmtest.h"
>+
>+#include "igt_drm_fdinfo.h"
>+
>+static size_t read_fdinfo(char *buf, const size_t sz, int at, const char *name)
>+{
>+	size_t count;
>+	int fd;
>+
>+	fd = openat(at, name, O_RDONLY);
>+	if (fd < 0)
>+		return 0;
>+
>+	buf[sz - 1] = 0;
>+	count = read(fd, buf, sz);
>+	buf[sz - 1] = 0;
>+	close(fd);
>+
>+	return count;
>+}
>+
>+static int parse_engine(char *line, struct drm_client_fdinfo *info,
>+			size_t prefix_len, uint64_t *val)
>+{
>+	static const char *e2class[] = {
>+		"render",
>+		"copy",
>+		"video",
>+		"video-enhance",
>+	};
>+	ssize_t name_len;
>+	char *name, *p;
>+	int found = -1;
>+	unsigned int i;
>+
>+	p = index(line, ':');
>+	if (!p || p == line)
>+		return -1;
>+
>+	name_len = p - line - prefix_len;
>+	if (name_len < 1)
>+		return -1;
>+
>+	name = line + prefix_len;
>+
>+	for (i = 0; i < ARRAY_SIZE(e2class); i++) {
>+		if (!strncmp(name, e2class[i], name_len)) {
>+			found = i;
>+			break;
>+		}
>+	}
>+
>+	if (found >= 0) {
>+		while (*++p && isspace(*p));
>+		*val = strtoull(p, NULL, 10);
>+	}
>+
>+	return found;
>+}
>+
>+static const char *find_kv(const char *buf, const char *key, size_t keylen)
>+{
>+	const char *p = buf;
>+
>+	if (strncmp(buf, key, keylen))
>+		return NULL;
>+
>+	p = index(buf, ':');
>+	if (!p || p == buf)
>+		return NULL;
>+	if ((p - buf) != keylen)
>+		return NULL;
>+
>+	p++;
>+	while (*p && isspace(*p))
>+		p++;
>+
>+	return *p ? p : NULL;
>+}
>+
>+unsigned int
>+__igt_parse_drm_fdinfo(int dir, const char *fd, struct drm_client_fdinfo *info)
>+{
>+	char buf[4096], *_buf = buf;
>+	char *l, *ctx = NULL;
>+	unsigned int good = 0, num_capacity = 0;
>+	size_t count;
>+
>+	count = read_fdinfo(buf, sizeof(buf), dir, fd);
>+	if (!count)
>+		return 0;
>+
>+	while ((l = strtok_r(_buf, "\n", &ctx))) {
>+		uint64_t val = 0;
>+		const char *v;
>+		int idx;
>+
>+		_buf = NULL;
>+
>+		if ((v = find_kv(l, "drm-driver", strlen("drm-driver")))) {
>+			strncpy(info->driver, v, sizeof(info->driver) - 1);
>+			good++;
>+		} else if ((v = find_kv(l, "drm-pdev", strlen("drm-pdev")))) {
>+			strncpy(info->pdev, v, sizeof(info->pdev) - 1);
>+		}  else if ((v = find_kv(l, "drm-client-id",
>+					 strlen("drm-client-id")))) {
>+			info->id = atol(v);
>+			good++;
>+		} else if (!strncmp(l, "drm-engine-", 11) &&
>+			   strncmp(l, "drm-engine-capacity-", 20)) {
>+			idx = parse_engine(l, info, strlen("drm-engine-"),
>+					   &val);
>+			if (idx >= 0) {
>+				if (!info->capacity[idx])
>+					info->capacity[idx] = 1;
>+				info->busy[idx] = val;
>+				info->num_engines++;
>+			}
>+		} else if (!strncmp(l, "drm-engine-capacity-", 20)) {
>+			idx = parse_engine(l, info,
>+					   strlen("drm-engine-capacity-"),
>+					   &val);
>+			if (idx >= 0) {
>+				info->capacity[idx] = val;
>+				num_capacity++;
>+			}
>+		}
>+	}
>+
>+	if (good < 2 || !info->num_engines)
>+		return 0; /* fdinfo format not as expected */
>+
>+	return good + info->num_engines + num_capacity;
>+}
>+
>+unsigned int igt_parse_drm_fdinfo(int drm_fd, struct drm_client_fdinfo *info)
>+{
>+	unsigned int res;
>+	char fd[64];
>+	int dir, ret;
>+
>+	ret = snprintf(fd, sizeof(fd), "%u", drm_fd);
>+	if (ret < 0 || ret == sizeof(fd))
>+		return false;
>+
>+	dir = open("/proc/self/fdinfo", O_DIRECTORY | O_RDONLY);
>+	if (dir < 0)
>+		return false;
>+
>+	res = __igt_parse_drm_fdinfo(dir, fd, info);
>+
>+	close(dir);
>+
>+	return res;
>+}
>diff --git a/lib/igt_drm_fdinfo.h b/lib/igt_drm_fdinfo.h
>new file mode 100644
>index 000000000000..5db63e28b07e
>--- /dev/null
>+++ b/lib/igt_drm_fdinfo.h
>@@ -0,0 +1,69 @@
>+/*
>+ * Copyright © 2022 Intel Corporation
>+ *
>+ * Permission is hereby granted, free of charge, to any person obtaining a
>+ * copy of this software and associated documentation files (the "Software"),
>+ * to deal in the Software without restriction, including without limitation
>+ * the rights to use, copy, modify, merge, publish, distribute, sublicense,
>+ * and/or sell copies of the Software, and to permit persons to whom the
>+ * Software is furnished to do so, subject to the following conditions:
>+ *
>+ * The above copyright notice and this permission notice (including the next
>+ * paragraph) shall be included in all copies or substantial portions of the
>+ * Software.
>+ *
>+ * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
>+ * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
>+ * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL
>+ * THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
>+ * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
>+ * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
>+ * IN THE SOFTWARE.
>+ *
>+ */
>+
>+#ifndef IGT_DRM_FDINFO_H
>+#define IGT_DRM_FDINFO_H
>+
>+#include <sys/types.h>
>+#include <dirent.h>
>+#include <stdint.h>
>+#include <stdbool.h>
>+
>+#define DRM_CLIENT_FDINFO_MAX_ENGINES 16
>+
>+struct drm_client_fdinfo {
>+	char driver[128];
>+	char pdev[128];
>+	unsigned long id;
>+
>+	unsigned int num_engines;
>+	unsigned int capacity[DRM_CLIENT_FDINFO_MAX_ENGINES];
>+	uint64_t busy[DRM_CLIENT_FDINFO_MAX_ENGINES];
>+};
>+
>+/**
>+ * igt_parse_drm_fdinfo: Parses the drm fdinfo file
>+ *
>+ * @drm_fd: DRM file descriptor
>+ * @info: Structure to populate with read data
>+ *
>+ * Returns the number of valid drm fdinfo keys found or zero if not all
>+ * mandatory keys were present or no engines found.
>+ */
>+unsigned int igt_parse_drm_fdinfo(int drm_fd, struct drm_client_fdinfo *info);
>+
>+/**
>+ * __igt_parse_drm_fdinfo: Parses the drm fdinfo file
>+ *
>+ * @dir: File descriptor pointing to /proc/pid/fdinfo directory
>+ * @fd: String representation of the file descriptor number to parse.
>+ * @info: Structure to populate with read data
>+ *
>+ * Returns the number of valid drm fdinfo keys found or zero if not all
>+ * mandatory keys were present or no engines found.
>+ */
>+unsigned int __igt_parse_drm_fdinfo(int dir, const char *fd,
>+				    struct drm_client_fdinfo *info);
>+
>+#endif /* IGT_DRM_FDINFO_H */
>diff --git a/lib/meson.build b/lib/meson.build
>index 6fc1958604b3..ccee7a596561 100644
>--- a/lib/meson.build
>+++ b/lib/meson.build
>@@ -18,6 +18,7 @@ lib_sources = [
> 	'igt_debugfs.c',
> 	'igt_device.c',
> 	'igt_device_scan.c',
>+	'igt_drm_fdinfo.c',
> 	'igt_aux.c',
> 	'igt_gt.c',
> 	'igt_halffloat.c',
>@@ -218,6 +219,12 @@ lib_igt_device_scan_build = static_library('igt_device_scan',
> lib_igt_device_scan = declare_dependency(link_with : lib_igt_device_scan_build,
> 				  include_directories : inc)
>
>+lib_igt_drm_fdinfo_build = static_library('igt_drm_fdinfo',
>+	['igt_drm_fdinfo.c'],
>+	include_directories : inc)
>+
>+lib_igt_drm_fdinfo = declare_dependency(link_with : lib_igt_drm_fdinfo_build,
>+				  include_directories : inc)
> i915_perf_files = [
>   'igt_list.c',
>   'i915/perf.c',
>-- 
>2.32.0
>
