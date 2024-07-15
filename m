Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1617B931A4C
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jul 2024 20:30:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8EBBD10E4C1;
	Mon, 15 Jul 2024 18:30:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gkL1CInV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4188A10E4C1;
 Mon, 15 Jul 2024 18:30:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721068221; x=1752604221;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=x0E0QpQTHEJR6BJ2LN/1b87/ikOoXSIndPs3lSzuY34=;
 b=gkL1CInVWODWSvpJrDmKN6X9NUl5vaOmVWCSYDkMzsZfWzfQv11doNbk
 w65OHDnZu5UynBnVxx9HXwpdOG3oTND1u8lMW55NOEu1k8pqYcR13jAEA
 9Xs4wqscmEOxPS3dC2qEOMcjFLuP44tG07F9SxZcn6efOkRKCJqlnsrXK
 upNccWEM4oVblRfTHxwR9NH8DjPmNoguKWwqJfNZtlS/CbZknYR+UjDfT
 RmMqsb2NrTtxytS4ADkK3WYIYY8mDgJEntCmqxuVLFwiCzYfaE0jlhbRN
 2Pq5Z4EPixG2/rT84ao9Dr/aFGaoUrCNqZ7SeXrZkdTvbUeWmXCccIbmL A==;
X-CSE-ConnectionGUID: H/gobggFRsiFlALf1KlHOA==
X-CSE-MsgGUID: 04EnvhEWR5GOy5+dZ0MQ7Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11134"; a="18618853"
X-IronPort-AV: E=Sophos;i="6.09,210,1716274800"; d="scan'208";a="18618853"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2024 11:30:21 -0700
X-CSE-ConnectionGUID: K9XT2jNQTFegF/kAcvhCmA==
X-CSE-MsgGUID: m+LLvLM+S8qddGNpBrqOcQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,210,1716274800"; d="scan'208";a="54886880"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO
 jkrzyszt-mobl2.intranet) ([10.213.26.74])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2024 11:30:19 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Subject: [PATCH i-g-t v2 2/5] lib: Add more debug messages to error paths
Date: Mon, 15 Jul 2024 20:27:30 +0200
Message-ID: <20240715183000.2828719-9-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240715183000.2828719-7-janusz.krzysztofik@linux.intel.com>
References: <20240715183000.2828719-7-janusz.krzysztofik@linux.intel.com>
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

Link: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6268
Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 lib/i915/gem_engine_topology.c | 10 +++++-----
 lib/igt_sysfs.c                |  4 ++--
 2 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/lib/i915/gem_engine_topology.c b/lib/i915/gem_engine_topology.c
index afb576afb2..ac9e8e9b1b 100644
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
@@ -517,7 +517,7 @@ static FILE *__open_attr(int dir, const char *mode, ...)
 		dir = reopen(dir, O_RDWR);
 
 	file = fdopen(dir, mode);
-	if (!file) {
+	if (igt_debug_on(!file)) {
 		close(dir);
 		return NULL;
 	}
@@ -554,7 +554,7 @@ int gem_engine_property_printf(int i915, const char *engine, const char *attr,
 
 	file = __open_attr(igt_sysfs_open(i915), "w",
 			   "engine", engine, attr, NULL);
-	if (!file)
+	if (igt_debug_on(!file))
 		return -1;
 
 	va_start(ap, fmt);
diff --git a/lib/igt_sysfs.c b/lib/igt_sysfs.c
index ffeec1ca21..7826d00efc 100644
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

