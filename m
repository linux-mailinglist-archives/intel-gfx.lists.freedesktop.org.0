Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D826B6D9956
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Apr 2023 16:15:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1672E10EBD0;
	Thu,  6 Apr 2023 14:15:50 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4892E10EBD0;
 Thu,  6 Apr 2023 14:15:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680790548; x=1712326548;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ytmRxjzL0vjQcqmegkXoFro2nBkJaOww1tgYhkuvQr0=;
 b=VQD6Bx24nG4jp/EfmWCka6lDL947v7YJq9gD9kIoruT9VwOvcRei+L4Q
 5lJcFRntD2U1YNMZnx5EAiRbMs68FjwzR27T1qxsZOEx3sqir7AMTh3rS
 ncq249OsqVH3rUU/PctZ6lTc1nFhrTmSTPxXAg2axIaNaTKvmO2hqBNV4
 qMzkUIt6S7RljguWZVF6ElUY2AOin+a17dACCpa1e/pGsETSy8/RMY0mJ
 VQfoWlSnkLPhFFbKGAxUfAnlJ0/TCYcX8c3iqTbWTplbqWbiJ6JUVdsS9
 VZ+CtXog393i9cvXkSx90Uvpp7UyJtLuH7Ygkfi3wYNtwuJnYkh7l+tok Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10672"; a="331380108"
X-IronPort-AV: E=Sophos;i="5.98,323,1673942400"; d="scan'208";a="331380108"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2023 07:15:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10672"; a="689684821"
X-IronPort-AV: E=Sophos;i="5.98,323,1673942400"; d="scan'208";a="689684821"
Received: from pjkenny-mobl2.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.218.83])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2023 07:15:45 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
	Intel-gfx@lists.freedesktop.org
Date: Thu,  6 Apr 2023 15:15:31 +0100
Message-Id: <20230406141538.3414368-2-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230406141538.3414368-1-tvrtko.ursulin@linux.intel.com>
References: <20230406141538.3414368-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 1/8] lib: Extract igt_drm_clients from
 intel_gpu_top
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

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Extract some code into a new library to prepare for further work towards
making a vendor agnostic gputop tool.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 lib/igt_drm_clients.c | 432 +++++++++++++++++++++++++++++++++++
 lib/igt_drm_clients.h |  85 +++++++
 lib/meson.build       |   8 +
 tools/intel_gpu_top.c | 519 +++++++-----------------------------------
 tools/meson.build     |   2 +-
 5 files changed, 605 insertions(+), 441 deletions(-)
 create mode 100644 lib/igt_drm_clients.c
 create mode 100644 lib/igt_drm_clients.h

diff --git a/lib/igt_drm_clients.c b/lib/igt_drm_clients.c
new file mode 100644
index 000000000000..45de2d0f1cc5
--- /dev/null
+++ b/lib/igt_drm_clients.c
@@ -0,0 +1,432 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2022 Intel Corporation
+ */
+
+#include <assert.h>
+#include <ctype.h>
+#include <dirent.h>
+#include <fcntl.h>
+#include <stdbool.h>
+#include <stdio.h>
+#include <string.h>
+#include <strings.h>
+#include <stdlib.h>
+#include <sys/stat.h>
+#include <sys/sysmacros.h>
+#include <sys/types.h>
+#include <unistd.h>
+
+#include "igt_drm_clients.h"
+#include "igt_drm_fdinfo.h"
+
+#ifndef ARRAY_SIZE
+#define ARRAY_SIZE(array) (sizeof(array) / sizeof(array[0]))
+#endif
+
+/**
+ * igt_drm_clients_init:
+ * @private_data: private data to store in the struct
+ *
+ * Allocate and initialise the clients structure to be used with further API
+ * calls.
+ */
+struct igt_drm_clients *igt_drm_clients_init(void *private_data)
+{
+	struct igt_drm_clients *clients;
+
+	clients = malloc(sizeof(*clients));
+	if (!clients)
+		return NULL;
+
+	memset(clients, 0, sizeof(*clients));
+
+	clients->private_data = private_data;
+
+	return clients;
+}
+
+static struct igt_drm_client *
+igt_drm_clients_find(struct igt_drm_clients *clients,
+		     enum igt_drm_client_status status,
+		     unsigned int id)
+{
+	unsigned int start, num;
+	struct igt_drm_client *c;
+
+	start = status == IGT_DRM_CLIENT_FREE ? clients->active_clients : 0; /* Free block at the end. */
+	num = clients->num_clients - start;
+
+	for (c = &clients->client[start]; num; c++, num--) {
+		if (status != c->status)
+			continue;
+
+		if (status == IGT_DRM_CLIENT_FREE || c->id == id)
+			return c;
+	}
+
+	return NULL;
+}
+
+static void
+igt_drm_client_update(struct igt_drm_client *c, unsigned int pid, char *name,
+		      const struct drm_client_fdinfo *info)
+{
+	unsigned int i;
+
+	/* Update client pid if it changed (fd sharing). */
+	if (c->pid != pid)
+		c->pid = pid;
+
+	/* Update client name if it changed (fd sharing). */
+	if (strcmp(c->name, name)) {
+		char *p;
+
+		strncpy(c->name, name, sizeof(c->name) - 1);
+		strncpy(c->print_name, name, sizeof(c->print_name) - 1);
+
+		p = c->print_name;
+		while (*p) {
+			if (!isprint(*p))
+				*p = '*';
+			p++;
+		}
+	}
+
+	c->last_runtime = 0;
+	c->total_runtime = 0;
+
+	for (i = 0; i < c->clients->num_classes; i++) {
+		assert(i < ARRAY_SIZE(info->busy));
+
+		if (info->busy[i] < c->last[i])
+			continue; /* It will catch up soon. */
+
+		c->total_runtime += info->busy[i];
+		c->val[i] = info->busy[i] - c->last[i];
+		c->last_runtime += c->val[i];
+		c->last[i] = info->busy[i];
+	}
+
+	c->samples++;
+	c->status = IGT_DRM_CLIENT_ALIVE;
+}
+
+static void
+igt_drm_client_add(struct igt_drm_clients *clients,
+		   const struct drm_client_fdinfo *info,
+		   unsigned int pid, char *name)
+{
+	struct igt_drm_client *c;
+
+	assert(!igt_drm_clients_find(clients, IGT_DRM_CLIENT_ALIVE, info->id));
+
+	c = igt_drm_clients_find(clients, IGT_DRM_CLIENT_FREE, 0);
+	if (!c) {
+		unsigned int idx = clients->num_clients;
+
+		/*
+		 * Grow the array a bit past the current requirement to avoid
+		 * constant reallocation when clients are dynamically appearing
+		 * and disappearing.
+		 */
+		clients->num_clients += (clients->num_clients + 2) / 2;
+		clients->client = realloc(clients->client,
+					  clients->num_clients * sizeof(*c));
+		assert(clients->client);
+
+		c = &clients->client[idx];
+		memset(c, 0, (clients->num_clients - idx) * sizeof(*c));
+	}
+
+	c->id = info->id;
+	c->clients = clients;
+	c->val = calloc(clients->num_classes, sizeof(c->val));
+	c->last = calloc(clients->num_classes, sizeof(c->last));
+	assert(c->val && c->last);
+
+	igt_drm_client_update(c, pid, name, info);
+}
+
+static
+void igt_drm_client_free(struct igt_drm_client *c, bool clear)
+{
+	free(c->val);
+	free(c->last);
+
+	if (clear)
+		memset(c, 0, sizeof(*c));
+}
+
+/**
+ * igt_drm_clients_sort:
+ * @clients: Previously initialised clients object
+ * @cmp: Client comparison callback
+ *
+ * Sort the clients array according to the passed in comparison callback which
+ * is compatible with the qsort(3) semantics.
+ *
+ * Caller has to ensure the callback is putting all active
+ * (IGT_DRM_CLIENT_ALIVE) clients in a single group at the head of the array
+ * before any other sorting criteria.
+ */
+struct igt_drm_clients *
+igt_drm_clients_sort(struct igt_drm_clients *clients,
+		     int (*cmp)(const void *, const void *))
+{
+	unsigned int active, free;
+	struct igt_drm_client *c;
+	int tmp;
+
+	if (!clients)
+		return clients;
+
+	qsort(clients->client, clients->num_clients, sizeof(*clients->client),
+	      cmp);
+
+	/* Trim excessive array space. */
+	active = 0;
+	igt_for_each_drm_client(clients, c, tmp) {
+		if (c->status != IGT_DRM_CLIENT_ALIVE)
+			break; /* Active clients are first in the array. */
+		active++;
+	}
+
+	clients->active_clients = active;
+
+	/* Trim excess free space when clients are exiting. */
+	free = clients->num_clients - active;
+	if (free > clients->num_clients / 2) {
+		active = clients->num_clients - free / 2;
+		if (active != clients->num_clients) {
+			clients->num_clients = active;
+			clients->client = realloc(clients->client,
+						  clients->num_clients *
+						  sizeof(*c));
+		}
+	}
+
+	return clients;
+}
+
+/**
+ * igt_drm_clients_free:
+ * @clients: Previously initialised clients object
+ *
+ * Free all clients and all memory associated with the clients structure.
+ */
+void igt_drm_clients_free(struct igt_drm_clients *clients)
+{
+	struct igt_drm_client *c;
+	unsigned int tmp;
+
+	igt_for_each_drm_client(clients, c, tmp)
+		igt_drm_client_free(c, false);
+
+	free(clients->client);
+	free(clients);
+}
+
+static DIR *opendirat(int at, const char *name)
+{
+	DIR *dir;
+	int fd;
+
+	fd = openat(at, name, O_DIRECTORY);
+	if (fd < 0)
+		return NULL;
+
+	dir = fdopendir(fd);
+	if (!dir)
+		close(fd);
+
+	return dir;
+}
+
+static size_t readat2buf(int at, const char *name, char *buf, const size_t sz)
+{
+	ssize_t count;
+	int fd;
+
+	fd = openat(at, name, O_RDONLY);
+	if (fd <= 0)
+		return 0;
+
+	count = read(fd, buf, sz - 1);
+	close(fd);
+
+	if (count > 0) {
+		buf[count] = 0;
+
+		return count;
+	} else {
+		buf[0] = 0;
+
+		return 0;
+	}
+}
+
+static bool get_task_name(const char *buffer, char *out, unsigned long sz)
+{
+	char *s = index(buffer, '(');
+	char *e = rindex(buffer, ')');
+	unsigned int len;
+
+	if (!s || !e)
+		return false;
+	assert(e >= s);
+
+	len = e - ++s;
+	if(!len || (len + 1) >= sz)
+		return false;
+
+	strncpy(out, s, len);
+	out[len] = 0;
+
+	return true;
+}
+
+static bool is_drm_fd(int fd_dir, const char *name)
+{
+	struct stat stat;
+	int ret;
+
+	ret = fstatat(fd_dir, name, &stat, 0);
+
+	return ret == 0 &&
+	       (stat.st_mode & S_IFMT) == S_IFCHR &&
+	       major(stat.st_rdev) == 226;
+}
+
+/**
+ * igt_drm_clients_scan:
+ * @clients: Previously initialised clients object
+ * @filter_client: Callback for client filtering
+ *
+ * Scan all open file descriptors from all processes in order to find all DRM
+ * clients and manage our internal list.
+ */
+struct igt_drm_clients *
+igt_drm_clients_scan(struct igt_drm_clients *clients,
+		     bool (*filter_client)(const struct igt_drm_clients *,
+					   const struct drm_client_fdinfo *))
+{
+	struct dirent *proc_dent;
+	struct igt_drm_client *c;
+	DIR *proc_dir;
+	int tmp;
+
+	if (!clients)
+		return clients;
+
+	/*
+	 * First mark all alive clients as 'probe' so we can figure out which
+	 * ones have existed since the previous scan.
+	 */
+	igt_for_each_drm_client(clients, c, tmp) {
+		assert(c->status != IGT_DRM_CLIENT_PROBE);
+		if (c->status == IGT_DRM_CLIENT_ALIVE)
+			c->status = IGT_DRM_CLIENT_PROBE;
+		else
+			break; /* Free block at the end of array. */
+	}
+
+	proc_dir = opendir("/proc");
+	if (!proc_dir)
+		return clients;
+
+	while ((proc_dent = readdir(proc_dir)) != NULL) {
+		int pid_dir = -1, fd_dir = -1;
+		struct dirent *fdinfo_dent;
+		char client_name[64] = { };
+		unsigned int client_pid;
+		DIR *fdinfo_dir = NULL;
+		char buf[4096];
+		size_t count;
+
+		if (proc_dent->d_type != DT_DIR)
+			continue;
+		if (!isdigit(proc_dent->d_name[0]))
+			continue;
+
+		pid_dir = openat(dirfd(proc_dir), proc_dent->d_name,
+				 O_DIRECTORY | O_RDONLY);
+		if (pid_dir < 0)
+			continue;
+
+		count = readat2buf(pid_dir, "stat", buf, sizeof(buf));
+		if (!count)
+			goto next;
+
+		client_pid = atoi(buf);
+		if (!client_pid)
+			goto next;
+
+		if (!get_task_name(buf, client_name, sizeof(client_name)))
+			goto next;
+
+		fd_dir = openat(pid_dir, "fd", O_DIRECTORY | O_RDONLY);
+		if (fd_dir < 0)
+			goto next;
+
+		fdinfo_dir = opendirat(pid_dir, "fdinfo");
+		if (!fdinfo_dir)
+			goto next;
+
+		while ((fdinfo_dent = readdir(fdinfo_dir)) != NULL) {
+			struct drm_client_fdinfo info = { };
+
+			if (fdinfo_dent->d_type != DT_REG)
+				continue;
+			if (!isdigit(fdinfo_dent->d_name[0]))
+				continue;
+
+			if (!is_drm_fd(fd_dir, fdinfo_dent->d_name))
+				continue;
+
+			if (!__igt_parse_drm_fdinfo(dirfd(fdinfo_dir),
+						    fdinfo_dent->d_name,
+						    &info))
+				continue;
+
+			if (filter_client && !filter_client(clients, &info))
+				continue;
+
+			if (igt_drm_clients_find(clients, IGT_DRM_CLIENT_ALIVE,
+						info.id))
+				continue; /* Skip duplicate fds. */
+
+			c = igt_drm_clients_find(clients, IGT_DRM_CLIENT_PROBE,
+						info.id);
+			if (!c)
+				igt_drm_client_add(clients, &info, client_pid,
+						   client_name);
+			else
+				igt_drm_client_update(c, client_pid,
+						      client_name, &info);
+		}
+
+next:
+		if (fdinfo_dir)
+			closedir(fdinfo_dir);
+		if (fd_dir >= 0)
+			close(fd_dir);
+		if (pid_dir >= 0)
+			close(pid_dir);
+	}
+
+	closedir(proc_dir);
+
+	/*
+	 * Clients still in 'probe' status after the scan have exited and need
+	 * to be freed.
+	 */
+	igt_for_each_drm_client(clients, c, tmp) {
+		if (c->status == IGT_DRM_CLIENT_PROBE)
+			igt_drm_client_free(c, true);
+		else if (c->status == IGT_DRM_CLIENT_FREE)
+			break;
+	}
+
+	return clients;
+}
diff --git a/lib/igt_drm_clients.h b/lib/igt_drm_clients.h
new file mode 100644
index 000000000000..969793d5b51e
--- /dev/null
+++ b/lib/igt_drm_clients.h
@@ -0,0 +1,85 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2022 Intel Corporation
+ */
+
+#ifndef IGT_DRM_CLIENTS_H
+#define IGT_DRM_CLIENTS_H
+
+#include <stdint.h>
+
+/**
+ * SECTION:igt_drm_clients
+ * @short_description: Parsing driver exposed fdinfo to track DRM clients
+ * @title: DRM clients parsing library
+ * @include: igt_drm_clients.h
+ *
+ * Some DRM drivers expose GPU usage statistics in DRM file descriptor fdinfo
+ * data as exposed in /proc. (As documented in kernel's
+ * Documentation/gpu/drm-usage-stats.rst.)
+ *
+ * This library enumerates all DRM clients by parsing that data and tracks them
+ * in a list of clients (struct igt_drm_clients) available for inspection
+ * after one or more calls to igt_drm_clients_scan.
+ */
+
+struct drm_client_fdinfo;
+
+enum igt_drm_client_status {
+	IGT_DRM_CLIENT_FREE = 0, /* mbz */
+	IGT_DRM_CLIENT_ALIVE,
+	IGT_DRM_CLIENT_PROBE
+};
+
+struct igt_drm_client_engine_class {
+	unsigned int engine_class;
+	const char *name;
+	unsigned int num_engines;
+};
+
+struct igt_drm_clients;
+
+struct igt_drm_client {
+	struct igt_drm_clients *clients; /* Owning list. */
+
+	enum igt_drm_client_status status;
+	unsigned int id; /* DRM client id from fdinfo. */
+	unsigned int pid; /* PID which has this DRM fd open. */
+	char name[24]; /* Process name of the owning PID. */
+	char print_name[24]; /* Name without any non-printable characters. */
+	unsigned int samples; /* Count of times scanning updated this client. */
+	unsigned long total_runtime; /* Aggregate busyness on all engines since client start. */
+	unsigned long last_runtime; /* Aggregate busyness on all engines since previous scan. */
+	unsigned long *val; /* Array of engine busyness data, relative to previous scan. */
+	uint64_t *last; /* Array of engine busyness data as parsed from fdinfo. */
+};
+
+struct igt_drm_clients {
+	unsigned int num_clients;
+	unsigned int active_clients;
+
+	unsigned int num_classes;
+	struct igt_drm_client_engine_class *engine_class;
+
+	void *private_data;
+
+	struct igt_drm_client *client; /* Must be last. */
+};
+
+#define igt_for_each_drm_client(clients, c, tmp) \
+	for ((tmp) = (clients)->num_clients, c = (clients)->client; \
+	     (tmp > 0); (tmp)--, (c)++)
+
+struct igt_drm_clients *igt_drm_clients_init(void *private_data);
+void igt_drm_clients_free(struct igt_drm_clients *clients);
+
+struct igt_drm_clients *
+igt_drm_clients_scan(struct igt_drm_clients *clients,
+		     bool (*filter_client)(const struct igt_drm_clients *,
+					   const struct drm_client_fdinfo *));
+
+struct igt_drm_clients *
+igt_drm_clients_sort(struct igt_drm_clients *clients,
+		     int (*cmp)(const void *, const void *));
+
+#endif /* IGT_DRM_CLIENTS_H */
diff --git a/lib/meson.build b/lib/meson.build
index ad68089dcf43..de49501e2bb1 100644
--- a/lib/meson.build
+++ b/lib/meson.build
@@ -23,6 +23,7 @@ lib_sources = [
 	'igt_debugfs.c',
 	'igt_device.c',
 	'igt_device_scan.c',
+	'igt_drm_clients.h',
 	'igt_drm_fdinfo.c',
 	'igt_aux.c',
 	'igt_gt.c',
@@ -255,6 +256,13 @@ lib_igt_device_scan_build = static_library('igt_device_scan',
 lib_igt_device_scan = declare_dependency(link_with : lib_igt_device_scan_build,
 				  include_directories : inc)
 
+lib_igt_drm_clients_build = static_library('igt_drm_clients',
+        ['igt_drm_clients.c'],
+        include_directories : inc)
+
+lib_igt_drm_clients = declare_dependency(link_with : lib_igt_drm_clients_build,
+				         include_directories : inc)
+
 lib_igt_drm_fdinfo_build = static_library('igt_drm_fdinfo',
 	['igt_drm_fdinfo.c'],
 	include_directories : inc)
diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
index a4302aa389b4..6e9738204206 100644
--- a/tools/intel_gpu_top.c
+++ b/tools/intel_gpu_top.c
@@ -47,6 +47,7 @@
 #include <sys/sysmacros.h>
 
 #include "igt_perf.h"
+#include "igt_drm_clients.h"
 #include "igt_drm_fdinfo.h"
 
 #define ARRAY_SIZE(arr) (sizeof(arr)/sizeof(arr[0]))
@@ -81,16 +82,10 @@ struct engine {
 	struct pmu_counter sema;
 };
 
-struct engine_class {
-	unsigned int class;
-	const char *name;
-	unsigned int num_engines;
-};
-
 struct engines {
 	unsigned int num_engines;
 	unsigned int num_classes;
-	struct engine_class *class;
+	struct igt_drm_client_engine_class *class;
 	unsigned int num_counters;
 	DIR *root;
 	int fd;
@@ -679,163 +674,10 @@ static void pmu_sample(struct engines *engines)
 	}
 }
 
-enum client_status {
-	FREE = 0, /* mbz */
-	ALIVE,
-	PROBE
-};
-
-struct clients;
-
-struct client {
-	struct clients *clients;
-
-	enum client_status status;
-	unsigned int id;
-	unsigned int pid;
-	char name[24];
-	char print_name[24];
-	unsigned int samples;
-	unsigned long total_runtime;
-	unsigned long last_runtime;
-	unsigned long *val;
-	uint64_t *last;
-};
-
-struct clients {
-	unsigned int num_clients;
-	unsigned int active_clients;
-
-	unsigned int num_classes;
-	struct engine_class *class;
-
-	char pci_slot[64];
-
-	struct client *client;
-};
-
-#define for_each_client(clients, c, tmp) \
-	for ((tmp) = (clients)->num_clients, c = (clients)->client; \
-	     (tmp > 0); (tmp)--, (c)++)
-
-static struct clients *init_clients(const char *pci_slot)
-{
-	struct clients *clients;
-
-	clients = malloc(sizeof(*clients));
-	if (!clients)
-		return NULL;
-
-	memset(clients, 0, sizeof(*clients));
-
-	strncpy(clients->pci_slot, pci_slot, sizeof(clients->pci_slot));
-
-	return clients;
-}
-
-static struct client *
-find_client(struct clients *clients, enum client_status status, unsigned int id)
-{
-	unsigned int start, num;
-	struct client *c;
-
-	start = status == FREE ? clients->active_clients : 0; /* Free block at the end. */
-	num = clients->num_clients - start;
-
-	for (c = &clients->client[start]; num; c++, num--) {
-		if (status != c->status)
-			continue;
-
-		if (status == FREE || c->id == id)
-			return c;
-	}
-
-	return NULL;
-}
-
-static void
-update_client(struct client *c, unsigned int pid, char *name,
-	      const struct drm_client_fdinfo *info)
-{
-	unsigned int i;
-
-	if (c->pid != pid)
-		c->pid = pid;
-
-	if (strcmp(c->name, name)) {
-		char *p;
-
-		strncpy(c->name, name, sizeof(c->name) - 1);
-		strncpy(c->print_name, name, sizeof(c->print_name) - 1);
-
-		p = c->print_name;
-		while (*p) {
-			if (!isprint(*p))
-				*p = '*';
-			p++;
-		}
-	}
-
-	c->last_runtime = 0;
-	c->total_runtime = 0;
-
-	for (i = 0; i < c->clients->num_classes; i++) {
-		assert(i < ARRAY_SIZE(info->busy));
-
-		if (info->busy[i] < c->last[i])
-			continue; /* It will catch up soon. */
-
-		c->total_runtime += info->busy[i];
-		c->val[i] = info->busy[i] - c->last[i];
-		c->last_runtime += c->val[i];
-		c->last[i] = info->busy[i];
-	}
-
-	c->samples++;
-	c->status = ALIVE;
-}
-
-static void
-add_client(struct clients *clients, const struct drm_client_fdinfo *info,
-	   unsigned int pid, char *name)
-{
-	struct client *c;
-
-	assert(!find_client(clients, ALIVE, info->id));
-
-	c = find_client(clients, FREE, 0);
-	if (!c) {
-		unsigned int idx = clients->num_clients;
-
-		clients->num_clients += (clients->num_clients + 2) / 2;
-		clients->client = realloc(clients->client,
-					  clients->num_clients * sizeof(*c));
-		assert(clients->client);
-
-		c = &clients->client[idx];
-		memset(c, 0, (clients->num_clients - idx) * sizeof(*c));
-	}
-
-	c->id = info->id;
-	c->clients = clients;
-	c->val = calloc(clients->num_classes, sizeof(c->val));
-	c->last = calloc(clients->num_classes, sizeof(c->last));
-	assert(c->val && c->last);
-
-	update_client(c, pid, name, info);
-}
-
-static void free_client(struct client *c)
-{
-	free(c->val);
-	free(c->last);
-	memset(c, 0, sizeof(*c));
-}
-
 static int client_last_cmp(const void *_a, const void *_b)
 {
-	const struct client *a = _a;
-	const struct client *b = _b;
+	const struct igt_drm_client *a = _a;
+	const struct igt_drm_client *b = _b;
 	long tot_a, tot_b;
 
 	/*
@@ -844,8 +686,8 @@ static int client_last_cmp(const void *_a, const void *_b)
 	 * id.
 	 */
 
-	tot_a = a->status == ALIVE ? a->last_runtime : -1;
-	tot_b = b->status == ALIVE ? b->last_runtime : -1;
+	tot_a = a->status == IGT_DRM_CLIENT_ALIVE ? a->last_runtime : -1;
+	tot_b = b->status == IGT_DRM_CLIENT_ALIVE ? b->last_runtime : -1;
 
 	tot_b -= tot_a;
 	if (tot_b > 0)
@@ -858,12 +700,12 @@ static int client_last_cmp(const void *_a, const void *_b)
 
 static int client_total_cmp(const void *_a, const void *_b)
 {
-	const struct client *a = _a;
-	const struct client *b = _b;
+	const struct igt_drm_client *a = _a;
+	const struct igt_drm_client *b = _b;
 	long tot_a, tot_b;
 
-	tot_a = a->status == ALIVE ? a->total_runtime : -1;
-	tot_b = b->status == ALIVE ? b->total_runtime : -1;
+	tot_a = a->status == IGT_DRM_CLIENT_ALIVE ? a->total_runtime : -1;
+	tot_b = b->status == IGT_DRM_CLIENT_ALIVE ? b->total_runtime : -1;
 
 	tot_b -= tot_a;
 	if (tot_b > 0)
@@ -876,12 +718,12 @@ static int client_total_cmp(const void *_a, const void *_b)
 
 static int client_id_cmp(const void *_a, const void *_b)
 {
-	const struct client *a = _a;
-	const struct client *b = _b;
+	const struct igt_drm_client *a = _a;
+	const struct igt_drm_client *b = _b;
 	int id_a, id_b;
 
-	id_a = a->status == ALIVE ? a->id : -1;
-	id_b = b->status == ALIVE ? b->id : -1;
+	id_a = a->status == IGT_DRM_CLIENT_ALIVE ? a->id : -1;
+	id_b = b->status == IGT_DRM_CLIENT_ALIVE ? b->id : -1;
 
 	id_b -= id_a;
 	if (id_b > 0)
@@ -894,12 +736,12 @@ static int client_id_cmp(const void *_a, const void *_b)
 
 static int client_pid_cmp(const void *_a, const void *_b)
 {
-	const struct client *a = _a;
-	const struct client *b = _b;
+	const struct igt_drm_client *a = _a;
+	const struct igt_drm_client *b = _b;
 	int pid_a, pid_b;
 
-	pid_a = a->status == ALIVE ? a->pid : INT_MAX;
-	pid_b = b->status == ALIVE ? b->pid : INT_MAX;
+	pid_a = a->status == IGT_DRM_CLIENT_ALIVE ? a->pid : INT_MAX;
+	pid_b = b->status == IGT_DRM_CLIENT_ALIVE ? b->pid : INT_MAX;
 
 	pid_b -= pid_a;
 	if (pid_b > 0)
@@ -912,56 +754,19 @@ static int client_pid_cmp(const void *_a, const void *_b)
 
 static int (*client_cmp)(const void *, const void *) = client_last_cmp;
 
-static struct clients *sort_clients(struct clients *clients,
-				    int (*cmp)(const void *, const void *))
-{
-	unsigned int active, free;
-	struct client *c;
-	int tmp;
-
-	if (!clients)
-		return clients;
-
-	qsort(clients->client, clients->num_clients, sizeof(*clients->client),
-	      cmp);
-
-	/* Trim excessive array space. */
-	active = 0;
-	for_each_client(clients, c, tmp) {
-		if (c->status != ALIVE)
-			break; /* Active clients are first in the array. */
-		active++;
-	}
-
-	clients->active_clients = active;
-
-	free = clients->num_clients - active;
-	if (free > clients->num_clients / 2) {
-		active = clients->num_clients - free / 2;
-		if (active != clients->num_clients) {
-			clients->num_clients = active;
-			clients->client = realloc(clients->client,
-						  clients->num_clients *
-						  sizeof(*c));
-		}
-	}
-
-	return clients;
-}
-
 static bool aggregate_pids = true;
 
-static struct clients *display_clients(struct clients *clients)
+static struct igt_drm_clients *display_clients(struct igt_drm_clients *clients)
 {
-	struct client *ac, *c, *cp = NULL;
-	struct clients *aggregated;
+	struct igt_drm_client *ac, *c, *cp = NULL;
+	struct igt_drm_clients *aggregated;
 	int tmp, num = 0;
 
 	if (!aggregate_pids)
 		goto out;
 
 	/* Sort by pid first to make it easy to aggregate while walking. */
-	sort_clients(clients, client_pid_cmp);
+	igt_drm_clients_sort(clients, client_pid_cmp);
 
 	aggregated = calloc(1, sizeof(*clients));
 	assert(aggregated);
@@ -970,23 +775,24 @@ static struct clients *display_clients(struct clients *clients)
 	assert(ac);
 
 	aggregated->num_classes = clients->num_classes;
-	aggregated->class = clients->class;
+	aggregated->engine_class = clients->engine_class;
+	aggregated->private_data = clients->private_data;
 	aggregated->client = ac;
 
-	for_each_client(clients, c, tmp) {
+	igt_for_each_drm_client(clients, c, tmp) {
 		unsigned int i;
 
-		if (c->status == FREE)
+		if (c->status == IGT_DRM_CLIENT_FREE)
 			break;
 
-		assert(c->status == ALIVE);
+		assert(c->status == IGT_DRM_CLIENT_ALIVE);
 
 		if (!cp || c->pid != cp->pid) {
 			ac = &aggregated->client[num++];
 
 			/* New pid. */
 			ac->clients = aggregated;
-			ac->status = ALIVE;
+			ac->status = IGT_DRM_CLIENT_ALIVE;
 			ac->id = -c->pid;
 			ac->pid = c->pid;
 			strcpy(ac->name, c->name);
@@ -1016,207 +822,26 @@ static struct clients *display_clients(struct clients *clients)
 	clients = aggregated;
 
 out:
-	return sort_clients(clients, client_cmp);
+	return igt_drm_clients_sort(clients, client_cmp);
 }
 
-static void free_clients(struct clients *clients)
+static void free_display_clients(struct igt_drm_clients *clients)
 {
-	struct client *c;
+	struct igt_drm_client *c;
 	unsigned int tmp;
 
-	for_each_client(clients, c, tmp) {
+	/*
+	 * Don't call igt_drm_clients_free or igt_drm_client_free since
+	 * "display" clients are not proper clients and have un-initialized
+	 * fields which we don't want the library to try and free.
+	 */
+	igt_for_each_drm_client(clients, c, tmp)
 		free(c->val);
-		free(c->last);
-	}
 
 	free(clients->client);
 	free(clients);
 }
 
-static bool is_drm_fd(int fd_dir, const char *name)
-{
-	struct stat stat;
-	int ret;
-
-	ret = fstatat(fd_dir, name, &stat, 0);
-
-	return ret == 0 &&
-	       (stat.st_mode & S_IFMT) == S_IFCHR &&
-	       major(stat.st_rdev) == 226;
-}
-
-static bool get_task_name(const char *buffer, char *out, unsigned long sz)
-{
-	char *s = index(buffer, '(');
-	char *e = rindex(buffer, ')');
-	unsigned int len;
-
-	if (!s || !e)
-		return false;
-	assert(e >= s);
-
-	len = e - ++s;
-	if(!len || (len + 1) >= sz)
-		return false;
-
-	strncpy(out, s, len);
-	out[len] = 0;
-
-	return true;
-}
-
-static DIR *opendirat(int at, const char *name)
-{
-	DIR *dir;
-	int fd;
-
-	fd = openat(at, name, O_DIRECTORY);
-	if (fd < 0)
-		return NULL;
-
-	dir = fdopendir(fd);
-	if (!dir)
-		close(fd);
-
-	return dir;
-}
-
-static size_t readat2buf(int at, const char *name, char *buf, const size_t sz)
-{
-	ssize_t count;
-	int fd;
-
-	fd = openat(at, name, O_RDONLY);
-	if (fd <= 0)
-		return 0;
-
-	count = read(fd, buf, sz - 1);
-	close(fd);
-
-	if (count > 0) {
-		buf[count] = 0;
-
-		return count;
-	} else {
-		buf[0] = 0;
-
-		return 0;
-	}
-}
-
-static struct clients *scan_clients(struct clients *clients, bool display)
-{
-	struct dirent *proc_dent;
-	struct client *c;
-	DIR *proc_dir;
-	int tmp;
-
-	if (!clients)
-		return clients;
-
-	for_each_client(clients, c, tmp) {
-		assert(c->status != PROBE);
-		if (c->status == ALIVE)
-			c->status = PROBE;
-		else
-			break; /* Free block at the end of array. */
-	}
-
-	proc_dir = opendir("/proc");
-	if (!proc_dir)
-		return clients;
-
-	while ((proc_dent = readdir(proc_dir)) != NULL) {
-		int pid_dir = -1, fd_dir = -1;
-		struct dirent *fdinfo_dent;
-		char client_name[64] = { };
-		unsigned int client_pid;
-		DIR *fdinfo_dir = NULL;
-		char buf[4096];
-		size_t count;
-
-		if (proc_dent->d_type != DT_DIR)
-			continue;
-		if (!isdigit(proc_dent->d_name[0]))
-			continue;
-
-		pid_dir = openat(dirfd(proc_dir), proc_dent->d_name,
-				 O_DIRECTORY | O_RDONLY);
-		if (pid_dir < 0)
-			continue;
-
-		count = readat2buf(pid_dir, "stat", buf, sizeof(buf));
-		if (!count)
-			goto next;
-
-		client_pid = atoi(buf);
-		if (!client_pid)
-			goto next;
-
-		if (!get_task_name(buf, client_name, sizeof(client_name)))
-			goto next;
-
-		fd_dir = openat(pid_dir, "fd", O_DIRECTORY | O_RDONLY);
-		if (fd_dir < 0)
-			goto next;
-
-		fdinfo_dir = opendirat(pid_dir, "fdinfo");
-		if (!fdinfo_dir)
-			goto next;
-
-		while ((fdinfo_dent = readdir(fdinfo_dir)) != NULL) {
-			struct drm_client_fdinfo info = { };
-
-			if (fdinfo_dent->d_type != DT_REG)
-				continue;
-			if (!isdigit(fdinfo_dent->d_name[0]))
-				continue;
-
-			if (!is_drm_fd(fd_dir, fdinfo_dent->d_name))
-				continue;
-
-			if (!__igt_parse_drm_fdinfo(dirfd(fdinfo_dir),
-						    fdinfo_dent->d_name,
-						    &info))
-				continue;
-
-			if (strcmp(info.driver, "i915"))
-				continue;
-			if (strcmp(info.pdev, clients->pci_slot))
-				continue;
-			if (find_client(clients, ALIVE, info.id))
-				continue; /* Skip duplicate fds. */
-
-			c = find_client(clients, PROBE, info.id);
-			if (!c)
-				add_client(clients, &info, client_pid,
-					   client_name);
-			else
-				update_client(c, client_pid, client_name,
-					      &info);
-		}
-
-next:
-		if (fdinfo_dir)
-			closedir(fdinfo_dir);
-		if (fd_dir >= 0)
-			close(fd_dir);
-		if (pid_dir >= 0)
-			close(pid_dir);
-	}
-
-	closedir(proc_dir);
-
-	for_each_client(clients, c, tmp) {
-		if (c->status == PROBE)
-			free_client(c);
-		else if (c->status == FREE)
-			break;
-	}
-
-	return display ? display_clients(clients) : clients;
-}
-
 static const char *bars[] = { " ", "▏", "▎", "▍", "▌", "▋", "▊", "▉", "█" };
 
 static void n_spaces(const unsigned int n)
@@ -1991,15 +1616,15 @@ print_engines_footer(struct engines *engines, double t,
 
 static int class_cmp(const void *_a, const void *_b)
 {
-	const struct engine_class *a = _a;
-	const struct engine_class *b = _b;
+	const struct igt_drm_client_engine_class *a = _a;
+	const struct igt_drm_client_engine_class *b = _b;
 
-	return a->class - b->class;
+	return a->engine_class - b->engine_class;
 }
 
 static void init_engine_classes(struct engines *engines)
 {
-	struct engine_class *classes;
+	struct igt_drm_client_engine_class *classes;
 	unsigned int i, num;
 	int max = -1;
 
@@ -2026,7 +1651,7 @@ static void init_engine_classes(struct engines *engines)
 	}
 
 	for (i = 0; i < num; i++) {
-		classes[i].class = i;
+		classes[i].engine_class = i;
 		classes[i].name = class_display_name(i);
 	}
 
@@ -2168,7 +1793,7 @@ print_engines(struct engines *engines, double t, int lines, int w, int h)
 }
 
 static int
-print_clients_header(struct clients *clients, int lines,
+print_clients_header(struct igt_drm_clients *clients, int lines,
 		     int con_w, int con_h, int *class_w)
 {
 	if (output_mode == INTERACTIVE) {
@@ -2190,19 +1815,19 @@ print_clients_header(struct clients *clients, int lines,
 			int width;
 
 			for (i = 0; i < clients->num_classes; i++) {
-				if (clients->class[i].num_engines)
+				if (clients->engine_class[i].num_engines)
 					num_active++;
 			}
 
 			*class_w = width = (con_w - len) / num_active;
 
 			for (i = 0; i < clients->num_classes; i++) {
-				const char *name = clients->class[i].name;
+				const char *name = clients->engine_class[i].name;
 				int name_len = strlen(name);
 				int pad = (width - name_len) / 2;
 				int spaces = width - pad - name_len;
 
-				if (!clients->class[i].num_engines)
+				if (!clients->engine_class[i].num_engines)
 					continue; /* Assert in the ideal world. */
 
 				if (pad < 0 || spaces < 0)
@@ -2229,10 +1854,10 @@ static bool numeric_clients;
 static bool filter_idle;
 
 static int
-print_client(struct client *c, struct engines *engines, double t, int lines,
+print_client(struct igt_drm_client *c, struct engines *engines, double t, int lines,
 	     int con_w, int con_h, unsigned int period_us, int *class_w)
 {
-	struct clients *clients = c->clients;
+	struct igt_drm_clients *clients = c->clients;
 	unsigned int i;
 
 	if (output_mode == INTERACTIVE) {
@@ -2246,11 +1871,11 @@ print_client(struct client *c, struct engines *engines, double t, int lines,
 		for (i = 0; c->samples > 1 && i < clients->num_classes; i++) {
 			double pct;
 
-			if (!clients->class[i].num_engines)
+			if (!clients->engine_class[i].num_engines)
 				continue; /* Assert in the ideal world. */
 
 			pct = (double)c->val[i] / period_us / 1e3 * 100 /
-			      clients->class[i].num_engines;
+			      clients->engine_class[i].num_engines;
 
 			/*
 			 * Guard against possible time-drift between sampling
@@ -2282,7 +1907,7 @@ print_client(struct client *c, struct engines *engines, double t, int lines,
 				double pct;
 
 				snprintf(buf, sizeof(buf), "%s",
-					clients->class[i].name);
+					clients->engine_class[i].name);
 				pops->open_struct(buf);
 
 				pct = (double)c->val[i] / period_us / 1e3 * 100;
@@ -2304,7 +1929,7 @@ print_client(struct client *c, struct engines *engines, double t, int lines,
 }
 
 static int
-print_clients_footer(struct clients *clients, double t,
+print_clients_footer(struct igt_drm_clients *clients, double t,
 		     int lines, int con_w, int con_h)
 {
 	if (output_mode == INTERACTIVE) {
@@ -2553,10 +2178,21 @@ static unsigned long elapsed_us(struct timespec *prev, unsigned int period_us)
 	return elapsed;
 }
 
+static bool client_match(const struct igt_drm_clients *clients,
+			 const struct drm_client_fdinfo *info)
+{
+	if (strcmp(info->driver, "i915"))
+		return false;
+	if (strcmp(info->pdev, clients->private_data))
+		return false;
+
+	return true;
+}
+
 int main(int argc, char **argv)
 {
 	unsigned int period_us = DEFAULT_PERIOD_MS * 1000;
-	struct clients *clients = NULL;
+	struct igt_drm_clients *clients = NULL;
 	bool physical_engines = false;
 	int con_w = -1, con_h = -1;
 	char *output_path = NULL;
@@ -2710,16 +2346,17 @@ int main(int argc, char **argv)
 	ret = EXIT_SUCCESS;
 
 	if (has_drm_fdinfo(&card))
-		clients = init_clients(card.pci_slot_name[0] ?
-				       card.pci_slot_name : IGPU_PCI);
+		clients = igt_drm_clients_init(strdup(card.pci_slot_name[0] ?
+						      card.pci_slot_name :
+						      IGPU_PCI));
 	init_engine_classes(engines);
 	if (clients) {
 		clients->num_classes = engines->num_classes;
-		clients->class = engines->class;
+		clients->engine_class = engines->class;
 	}
 
 	pmu_sample(engines);
-	scan_clients(clients, false);
+	igt_drm_clients_scan(clients, client_match);
 	gettime(&ts);
 	codename = igt_device_get_pretty_name(&card, false);
 
@@ -2727,12 +2364,12 @@ int main(int argc, char **argv)
 		printf("[\n");
 
 	while (!stop_top) {
-		struct clients *disp_clients;
+		struct igt_drm_clients *disp_clients;
+		struct igt_drm_client *c;
 		bool consumed = false;
 		unsigned int scan_us;
 		int j, lines = 0;
 		struct winsize ws;
-		struct client *c;
 		double t;
 
 		/* Update terminal size. */
@@ -2751,7 +2388,9 @@ int main(int argc, char **argv)
 		pmu_sample(engines);
 		t = (double)(engines->ts.cur - engines->ts.prev) / 1e9;
 
-		disp_clients = scan_clients(clients, true);
+		disp_clients =
+			display_clients(igt_drm_clients_scan(clients,
+							     client_match));
 		scan_us = elapsed_us(&ts, period_us);
 
 		if (stop_top)
@@ -2780,9 +2419,9 @@ int main(int argc, char **argv)
 							     con_w, con_h,
 							     &class_w);
 
-				for_each_client(disp_clients, c, j) {
-					assert(c->status != PROBE);
-					if (c->status != ALIVE)
+				igt_for_each_drm_client(disp_clients, c, j) {
+					assert(c->status != IGT_DRM_CLIENT_PROBE);
+					if (c->status != IGT_DRM_CLIENT_ALIVE)
 						break; /* Active clients are first in the array. */
 
 					if (lines >= con_h)
@@ -2803,7 +2442,7 @@ int main(int argc, char **argv)
 		}
 
 		if (disp_clients != clients)
-			free_clients(disp_clients);
+			free_display_clients(disp_clients);
 
 		if (stop_top)
 			break;
@@ -2818,7 +2457,7 @@ int main(int argc, char **argv)
 		printf("]\n");
 
 	if (clients)
-		free_clients(clients);
+		igt_drm_clients_free(clients);
 
 	free(codename);
 err_pmu:
diff --git a/tools/meson.build b/tools/meson.build
index 4c45f16b910c..2f3967393583 100644
--- a/tools/meson.build
+++ b/tools/meson.build
@@ -88,7 +88,7 @@ install_subdir('registers', install_dir : datadir)
 executable('intel_gpu_top', 'intel_gpu_top.c',
 	   install : true,
 	   install_rpath : bindir_rpathdir,
-	   dependencies : [lib_igt_perf,lib_igt_device_scan,lib_igt_drm_fdinfo,math])
+	   dependencies : [lib_igt_perf,lib_igt_device_scan,lib_igt_drm_clients,lib_igt_drm_fdinfo,math])
 
 executable('amd_hdmi_compliance', 'amd_hdmi_compliance.c',
 	   dependencies : [tool_deps],
-- 
2.37.2

