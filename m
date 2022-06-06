Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E76053E4BB
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jun 2022 15:27:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C95AB11B3B9;
	Mon,  6 Jun 2022 13:27:34 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C144711B3B9;
 Mon,  6 Jun 2022 13:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654522053; x=1686058053;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Uj9NO6Uf8dh0FEcphNoLSlApVWMR7majkL0W7TpkbqI=;
 b=UFSHcinE14RIiFrh0KENGO8nlDAHbT8uaVG03M8YW6NOcwhLo1mmIrUo
 QXD69nYZfz1YUHHqF5rzZSXRC7LRhUrZuvPJJMXzpzaGajakHSlSylSC+
 6EaR9oe2f8KYnzGJqyu3G2yCLcJUEZ7KDdKboRDUUFPWgLcCTZws+Fs18
 4LFpRXF1Mxl1XJa1HmZuYmNsOvPquIws/0BOBZRazIRsXPd6gUNiTukv+
 NLFRp6aQSx+xpyyRN/ddISeud+duAEuP4uQtVgUG1YzJLqRZ9TLTH+TJt
 AbuXrFUXPT4s3/czxUiKtaVlcQk5XYWXKuNgUNSSmF+jXYqgvQWwAE6Nj g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10369"; a="302016607"
X-IronPort-AV: E=Sophos;i="5.91,280,1647327600"; d="scan'208";a="302016607"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2022 06:27:33 -0700
X-IronPort-AV: E=Sophos;i="5.91,280,1647327600"; d="scan'208";a="647537353"
Received: from emerobri-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.235.100])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2022 06:27:26 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Mon,  6 Jun 2022 14:27:19 +0100
Message-Id: <20220606132719.17992-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t] intel-gpu-top: Optimise the scanning loop
 a bit
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

Opendir(3) and fdopendir(3) are quite expensive system calls when ran in
a loop which iterates all processes in a system times all open files in
each.

Replace some of them (easy ones) with simpler open(2)/read(2) combo to
avoid hammering on the malloc/free.

This brings the default CPU usage of the tool on my desktop from ~3% to
~2%.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 tools/intel_gpu_top.c | 66 +++++++++++++++++++------------------------
 1 file changed, 29 insertions(+), 37 deletions(-)

diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
index 997aff582ff7..6de8a164fcff 100644
--- a/tools/intel_gpu_top.c
+++ b/tools/intel_gpu_top.c
@@ -1022,12 +1022,12 @@ static void free_clients(struct clients *clients)
 	free(clients);
 }
 
-static bool is_drm_fd(DIR *fd_dir, const char *name)
+static bool is_drm_fd(int fd_dir, const char *name)
 {
 	struct stat stat;
 	int ret;
 
-	ret = fstatat(dirfd(fd_dir), name, &stat, 0);
+	ret = fstatat(fd_dir, name, &stat, 0);
 
 	return ret == 0 &&
 	       (stat.st_mode & S_IFMT) == S_IFCHR &&
@@ -1054,12 +1054,12 @@ static bool get_task_name(const char *buffer, char *out, unsigned long sz)
 	return true;
 }
 
-static DIR *opendirat(DIR *at, const char *name)
+static DIR *opendirat(int at, const char *name)
 {
 	DIR *dir;
 	int fd;
 
-	fd = openat(dirfd(at), name, O_DIRECTORY);
+	fd = openat(at, name, O_DIRECTORY);
 	if (fd < 0)
 		return NULL;
 
@@ -1070,37 +1070,27 @@ static DIR *opendirat(DIR *at, const char *name)
 	return dir;
 }
 
-static FILE *fropenat(DIR *at, const char *name)
+static size_t readat2buf(int at, const char *name, char *buf, const size_t sz)
 {
-	FILE *f;
+	ssize_t count;
 	int fd;
 
-	fd = openat(dirfd(at), name, O_RDONLY);
-	if (fd < 0)
-		return NULL;
+	fd = openat(at, name, O_RDONLY);
+	if (fd <= 0)
+		return 0;
 
-	f = fdopen(fd, "r");
-	if (!f)
-		close(fd);
+	count = read(fd, buf, sz - 1);
+	close(fd);
 
-	return f;
-}
+	if (count > 0) {
+		buf[count] = 0;
 
-static size_t freadat2buf(char *buf, const size_t sz, DIR *at, const char *name)
-{
-	size_t count;
-	FILE *f;
+		return count;
+	} else {
+		buf[0] = 0;
 
-	f = fropenat(at, name);
-	if (!f)
 		return 0;
-
-	buf[sz - 1] = 0;
-	count = fread(buf, 1, sz, f);
-	buf[count - 1] = 0;
-	fclose(f);
-
-	return count;
+	}
 }
 
 static struct clients *scan_clients(struct clients *clients, bool display)
@@ -1126,10 +1116,11 @@ static struct clients *scan_clients(struct clients *clients, bool display)
 		return clients;
 
 	while ((proc_dent = readdir(proc_dir)) != NULL) {
-		DIR *pid_dir = NULL, *fd_dir = NULL, *fdinfo_dir = NULL;
+		int pid_dir = -1, fd_dir = -1;
 		struct dirent *fdinfo_dent;
 		char client_name[64] = { };
 		unsigned int client_pid;
+		DIR *fdinfo_dir = NULL;
 		char buf[4096];
 		size_t count;
 
@@ -1138,11 +1129,12 @@ static struct clients *scan_clients(struct clients *clients, bool display)
 		if (!isdigit(proc_dent->d_name[0]))
 			continue;
 
-		pid_dir = opendirat(proc_dir, proc_dent->d_name);
-		if (!pid_dir)
+		pid_dir = openat(dirfd(proc_dir), proc_dent->d_name,
+				 O_DIRECTORY | O_RDONLY);
+		if (pid_dir < 0)
 			continue;
 
-		count = freadat2buf(buf, sizeof(buf), pid_dir, "stat");
+		count = readat2buf(pid_dir, "stat", buf, sizeof(buf));
 		if (!count)
 			goto next;
 
@@ -1153,8 +1145,8 @@ static struct clients *scan_clients(struct clients *clients, bool display)
 		if (!get_task_name(buf, client_name, sizeof(client_name)))
 			goto next;
 
-		fd_dir = opendirat(pid_dir, "fd");
-		if (!fd_dir)
+		fd_dir = openat(pid_dir, "fd", O_DIRECTORY | O_RDONLY);
+		if (fd_dir < 0)
 			goto next;
 
 		fdinfo_dir = opendirat(pid_dir, "fdinfo");
@@ -1196,10 +1188,10 @@ static struct clients *scan_clients(struct clients *clients, bool display)
 next:
 		if (fdinfo_dir)
 			closedir(fdinfo_dir);
-		if (fd_dir)
-			closedir(fd_dir);
-		if (pid_dir)
-			closedir(pid_dir);
+		if (fd_dir >= 0)
+			close(fd_dir);
+		if (pid_dir >= 0)
+			close(pid_dir);
 	}
 
 	closedir(proc_dir);
-- 
2.34.1

