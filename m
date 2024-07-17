Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ADAB3933CF8
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jul 2024 14:30:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72B8F10EAC4;
	Wed, 17 Jul 2024 12:30:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QkMnvIJR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 031A410EAAF;
 Wed, 17 Jul 2024 12:30:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721219440; x=1752755440;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/9upTfZBfyCVWxddwTR8T4JQoguG6E4SYitnEoZEecc=;
 b=QkMnvIJRQadpewpkEsuJj5QJ+ExccVVHh26uybyZs0jCHQU0sqo0i7hm
 zbZsI4RvavkOmo220l3sOHtsT0OCTQT7GZIzbeqWVJ70PrqBGk5HefqkK
 taLZ0DEDepNz9cYLYBAH4C7JwifpX2XzvB1B/OsTG9IJ932xrLXpBo2Ci
 6QuUFBGMOC76Zhib+8s+xWn04G/5UO8LXVazts+fP9/lNRUqNL/VYbQmL
 JiUtQDxziKl/MpRZ0fKvSlf9hqnFTcsQ305aP2llsYpHo3WypdoMzkgEk
 tH7rABhrW0c71OrA4CsZ7hOhag9x1SCca6QZ6RMEqEM8GUM//BPR4HbLZ Q==;
X-CSE-ConnectionGUID: C7t7nu8bTFOoDjk07NNsEA==
X-CSE-MsgGUID: TIv3y9otTT67sMonB5B/fg==
X-IronPort-AV: E=McAfee;i="6700,10204,11135"; a="18856396"
X-IronPort-AV: E=Sophos;i="6.09,214,1716274800"; d="scan'208";a="18856396"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2024 05:30:39 -0700
X-CSE-ConnectionGUID: FmueBjvcSUGGbuYEPIc8FQ==
X-CSE-MsgGUID: ZZ4TeipmRMGEkn6WzH0YtA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,214,1716274800"; d="scan'208";a="50165233"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO
 jkrzyszt-mobl2.intranet) ([10.213.26.163])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2024 05:29:01 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Subject: [PATCH i-g-t v3 2/5] lib: Add more debug messages to error paths
Date: Wed, 17 Jul 2024 14:26:13 +0200
Message-ID: <20240717122836.3481656-9-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240717122836.3481656-7-janusz.krzysztofik@linux.intel.com>
References: <20240717122836.3481656-7-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

On an attempt to resolve the issue of mysteriously failing updates of
sysfs entries representing engine preempt timeout values, add debug
messages to error paths of involved library functions.

v2: No changes.
v3: Add still more debug messages.

Link: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6268
Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 lib/i915/gem_engine_topology.c | 19 +++++++++++--------
 lib/igt_sysfs.c                |  4 ++--
 2 files changed, 13 insertions(+), 10 deletions(-)

diff --git a/lib/i915/gem_engine_topology.c b/lib/i915/gem_engine_topology.c
index afb576afb2..3e9bdf2e0a 100644
--- a/lib/i915/gem_engine_topology.c
+++ b/lib/i915/gem_engine_topology.c
@@ -454,12 +454,12 @@ static int __open_primary(int dir)
 	int len;
 
 	fd = openat(dir, "dev", O_RDONLY);
-	if (fd < 0)
+	if (igt_debug_on(fd < 0))
 		return dir;
 
 	len = read(fd, buf, sizeof(buf) - 1);
 	close(fd);
-	if (len <= 0)
+	if (igt_debug_on(len <= 0))
 		return dir;
 	buf[len] = '\0';
 
@@ -467,7 +467,7 @@ static int __open_primary(int dir)
 	if (minor < 64)
 		return dir;
 
-	if (readlinkat(dir, "device", target, sizeof(target)) < 0)
+	if (igt_debug_on(readlinkat(dir, "device", target, sizeof(target)) < 0))
 		return dir;
 
 	fd = openat(dir, "..", O_RDONLY);
@@ -500,24 +500,27 @@ static FILE *__open_attr(int dir, const char *mode, ...)
 	va_list ap;
 
 	/* The attributes are not to be found on render nodes */
-	dir = __open_primary(dir);
+	igt_debug_on((dir = __open_primary(dir)) < 0);
 
 	va_start(ap, mode);
 	while (dir >= 0 && (path = va_arg(ap, const char *))) {
 		int fd;
 
-		fd = openat(dir, path, O_RDONLY);
+		igt_debug_on_f((fd = openat(dir, path, O_RDONLY)) < 0,
+			       "failed component: %s", path);
 		close(dir);
 
 		dir = fd;
 	}
 	va_end(ap);
+	if (dir < 0)
+		return NULL;
 
 	if (*mode != 'r') /* clumsy, but fun */
-		dir = reopen(dir, O_RDWR);
+		igt_debug_on((dir = reopen(dir, O_RDWR)) < 0);
 
 	file = fdopen(dir, mode);
-	if (!file) {
+	if (igt_debug_on(!file)) {
 		close(dir);
 		return NULL;
 	}
@@ -554,7 +557,7 @@ int gem_engine_property_printf(int i915, const char *engine, const char *attr,
 
 	file = __open_attr(igt_sysfs_open(i915), "w",
 			   "engine", engine, attr, NULL);
-	if (!file)
+	if (igt_debug_on(!file))
 		return -1;
 
 	va_start(ap, fmt);
diff --git a/lib/igt_sysfs.c b/lib/igt_sysfs.c
index 42b2af41ab..550472d819 100644
--- a/lib/igt_sysfs.c
+++ b/lib/igt_sysfs.c
@@ -186,7 +186,7 @@ char *igt_sysfs_path(int device, char *path, int pathlen)
 	snprintf(path, pathlen, "/sys/dev/char/%d:%d",
 		 major(st.st_rdev), minor(st.st_rdev));
 
-	if (access(path, F_OK))
+	if (igt_debug_on(access(path, F_OK)))
 		return NULL;
 
 	return path;
@@ -206,7 +206,7 @@ int igt_sysfs_open(int device)
 {
 	char path[80];
 
-	if (!igt_sysfs_path(device, path, sizeof(path)))
+	if (igt_debug_on(!igt_sysfs_path(device, path, sizeof(path))))
 		return -1;
 
 	return open(path, O_RDONLY);
-- 
2.45.2

