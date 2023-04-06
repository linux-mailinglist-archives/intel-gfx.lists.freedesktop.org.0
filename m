Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6054C6D9958
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Apr 2023 16:15:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99C3810EBE0;
	Thu,  6 Apr 2023 14:15:53 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BAA2110EBE8;
 Thu,  6 Apr 2023 14:15:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680790550; x=1712326550;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Oo4sKRXpVkF50b12xdxKrL5JBgcKKgdVwtPIQ6efXao=;
 b=WdEeJ6Lt8zZbtxepjCssrtDwWk/fJT7SZcZqhgG3FKjF8nOIgOj1VwrM
 FQTC1wpVI4ytyPO1EMYRud8gnpfuM4hOmcRJ2qus6qHeZRavLT/uxRdRo
 ySgf+O7cLNwL4l4Zwt960pSwuYK/r9k4CaW3HGddSBKhGB/ad3p9IwtwO
 mavjLuj8iXClUnYXJuh7f0wsoDeFkyKAgYOdv4lFsoODL95y/5q0VCvC6
 SVjc9IZN+sLtPqxYD82uDfLl3cabj5/QYu0wuc6S0HJcsmFq5eq4T9f+z
 0bTqIXjgYnvzkcGthB5cWQU3/SqnYdeUT0y2dlG52pL76Tz1Cw8SlSKop A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10672"; a="331380124"
X-IronPort-AV: E=Sophos;i="5.98,323,1673942400"; d="scan'208";a="331380124"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2023 07:15:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10672"; a="689684857"
X-IronPort-AV: E=Sophos;i="5.98,323,1673942400"; d="scan'208";a="689684857"
Received: from pjkenny-mobl2.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.218.83])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2023 07:15:48 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
	Intel-gfx@lists.freedesktop.org
Date: Thu,  6 Apr 2023 15:15:33 +0100
Message-Id: <20230406141538.3414368-4-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230406141538.3414368-1-tvrtko.ursulin@linux.intel.com>
References: <20230406141538.3414368-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 3/8] lib/igt_drm_clients: Record client
 drm minor
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

Prepare for supporting clients belonging to multiple DRM cards by storing
the DRM minor in the client record.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 lib/igt_drm_clients.c | 22 ++++++++++++++--------
 lib/igt_drm_clients.h |  1 +
 2 files changed, 15 insertions(+), 8 deletions(-)

diff --git a/lib/igt_drm_clients.c b/lib/igt_drm_clients.c
index eabd43773f2d..c23a3fae9793 100644
--- a/lib/igt_drm_clients.c
+++ b/lib/igt_drm_clients.c
@@ -115,7 +115,7 @@ igt_drm_client_update(struct igt_drm_client *c, unsigned int pid, char *name,
 static void
 igt_drm_client_add(struct igt_drm_clients *clients,
 		   const struct drm_client_fdinfo *info,
-		   unsigned int pid, char *name)
+		   unsigned int pid, char *name, unsigned int drm_minor)
 {
 	struct igt_drm_client *c;
 
@@ -140,6 +140,7 @@ igt_drm_client_add(struct igt_drm_clients *clients,
 	}
 
 	c->id = info->id;
+	c->drm_minor = drm_minor;
 	c->clients = clients;
 	c->val = calloc(clients->num_classes, sizeof(c->val));
 	c->last = calloc(clients->num_classes, sizeof(c->last));
@@ -286,16 +287,21 @@ static bool get_task_name(const char *buffer, char *out, unsigned long sz)
 	return true;
 }
 
-static bool is_drm_fd(int fd_dir, const char *name)
+static bool is_drm_fd(int fd_dir, const char *name, unsigned int *minor)
 {
 	struct stat stat;
 	int ret;
 
 	ret = fstatat(fd_dir, name, &stat, 0);
 
-	return ret == 0 &&
-	       (stat.st_mode & S_IFMT) == S_IFCHR &&
-	       major(stat.st_rdev) == 226;
+	if (ret == 0 &&
+	    (stat.st_mode & S_IFMT) == S_IFCHR &&
+	    major(stat.st_rdev) == 226) {
+		*minor = minor(stat.st_rdev);
+		return true;
+	}
+
+	return false;
 }
 
 /**
@@ -348,10 +354,10 @@ igt_drm_clients_scan(struct igt_drm_clients *clients,
 		return clients;
 
 	while ((proc_dent = readdir(proc_dir)) != NULL) {
+		unsigned int client_pid, minor = 0;
 		int pid_dir = -1, fd_dir = -1;
 		struct dirent *fdinfo_dent;
 		char client_name[64] = { };
-		unsigned int client_pid;
 		DIR *fdinfo_dir = NULL;
 		char buf[4096];
 		size_t count;
@@ -393,7 +399,7 @@ igt_drm_clients_scan(struct igt_drm_clients *clients,
 			if (!isdigit(fdinfo_dent->d_name[0]))
 				continue;
 
-			if (!is_drm_fd(fd_dir, fdinfo_dent->d_name))
+			if (!is_drm_fd(fd_dir, fdinfo_dent->d_name, &minor))
 				continue;
 
 			if (!__igt_parse_drm_fdinfo(dirfd(fdinfo_dir),
@@ -412,7 +418,7 @@ igt_drm_clients_scan(struct igt_drm_clients *clients,
 						info.id);
 			if (!c)
 				igt_drm_client_add(clients, &info, client_pid,
-						   client_name);
+						   client_name, minor);
 			else
 				igt_drm_client_update(c, client_pid,
 						      client_name, &info);
diff --git a/lib/igt_drm_clients.h b/lib/igt_drm_clients.h
index bced19adb055..ffa219c9c9fd 100644
--- a/lib/igt_drm_clients.h
+++ b/lib/igt_drm_clients.h
@@ -44,6 +44,7 @@ struct igt_drm_client {
 
 	enum igt_drm_client_status status;
 	unsigned int id; /* DRM client id from fdinfo. */
+	unsigned int drm_minor; /* DRM minor of this client. */
 	unsigned int pid; /* PID which has this DRM fd open. */
 	char name[24]; /* Process name of the owning PID. */
 	char print_name[24]; /* Name without any non-printable characters. */
-- 
2.37.2

