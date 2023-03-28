Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB8C86CBFE2
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Mar 2023 14:54:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFA4C10E8A7;
	Tue, 28 Mar 2023 12:54:43 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 258AE10E457;
 Tue, 28 Mar 2023 12:54:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680008079; x=1711544079;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PCCVVzOikmN0cBVKLHzSm5Ol/IHSBXuKgoy1FFbk9nk=;
 b=ahKdHkCfR62obeTC2/ZbGPRp3VlLZRCXdf6on/XouQ7pJ6k3BygpmGaA
 INBCSRi1hXbP2Y4d00rDC4xu18SshD8e9C/m40Z3Grvic0ak4KhiMOYyL
 ItymuSffub4YYNKFNAwwPPQiVZHufGaSNwnfvoCVCqzQOHvkm+vZr+g2u
 h6cDyO6GHIZNYjIPWLnp9bbJZcpK6KJEeMU0DC4WU34+wiNd/mR1Z9ZAc
 yn4xDpkTjKKo99SSugdhKErmKN2ZuJFgygPXUzn09/n8k/061dphZ08D/
 V/msWYRGGgKOF/zLpYJpMer6NDmIPGIzk7x4SS2nlSj2tmWTQLbzegp97 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="342141788"
X-IronPort-AV: E=Sophos;i="5.98,297,1673942400"; d="scan'208";a="342141788"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2023 05:54:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="794793268"
X-IronPort-AV: E=Sophos;i="5.98,297,1673942400"; d="scan'208";a="794793268"
Received: from wheelerj-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.213.242])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2023 05:54:38 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
	Intel-gfx@lists.freedesktop.org
Date: Tue, 28 Mar 2023 13:54:27 +0100
Message-Id: <20230328125429.1970202-2-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230328125429.1970202-1-tvrtko.ursulin@linux.intel.com>
References: <20230328125429.1970202-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 1/3] intel_gpu_top: Display large pids
 nicely in interactive mode
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

So far the width of the PID column was hardcoded to six characters which
is not enough on systems with high uptime, where PID numbers can grow
large, and results in broken line formatting.

Fix it by tracking the largest width for both the pid and name fields and
use them dynamically.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 tools/intel_gpu_top.c | 66 +++++++++++++++++++++++++++++++++++++------
 1 file changed, 58 insertions(+), 8 deletions(-)

diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
index a4302aa389b4..39be916297e4 100644
--- a/tools/intel_gpu_top.c
+++ b/tools/intel_gpu_top.c
@@ -1,5 +1,5 @@
 /*
- * Copyright © 2007-2021 Intel Corporation
+ * Copyright © 2007-2023 Intel Corporation
  *
  * Permission is hereby granted, free of charge, to any person obtaining a
  * copy of this software and associated documentation files (the "Software"),
@@ -693,6 +693,7 @@ struct client {
 	enum client_status status;
 	unsigned int id;
 	unsigned int pid;
+	char pid_str[10];
 	char name[24];
 	char print_name[24];
 	unsigned int samples;
@@ -709,6 +710,9 @@ struct clients {
 	unsigned int num_classes;
 	struct engine_class *class;
 
+	int max_pid_len;
+	int max_name_len;
+
 	char pci_slot[64];
 
 	struct client *client;
@@ -758,9 +762,14 @@ update_client(struct client *c, unsigned int pid, char *name,
 	      const struct drm_client_fdinfo *info)
 {
 	unsigned int i;
+	int len;
 
-	if (c->pid != pid)
+	if (c->pid != pid) {
 		c->pid = pid;
+		len = snprintf(c->pid_str, sizeof(c->pid_str) - 1, "%u", pid);
+		if (len > c->clients->max_pid_len)
+			c->clients->max_pid_len = len;
+	}
 
 	if (strcmp(c->name, name)) {
 		char *p;
@@ -774,6 +783,10 @@ update_client(struct client *c, unsigned int pid, char *name,
 				*p = '*';
 			p++;
 		}
+
+		len = strlen(c->print_name);
+		if (len > c->clients->max_name_len)
+			c->clients->max_name_len = len;
 	}
 
 	c->last_runtime = 0;
@@ -990,6 +1003,7 @@ static struct clients *display_clients(struct clients *clients)
 			ac->id = -c->pid;
 			ac->pid = c->pid;
 			strcpy(ac->name, c->name);
+			strcpy(ac->pid_str, c->pid_str);
 			strcpy(ac->print_name, c->print_name);
 			ac->val = calloc(clients->num_classes,
 					 sizeof(ac->val[0]));
@@ -1013,6 +1027,9 @@ static struct clients *display_clients(struct clients *clients)
 	aggregated->num_clients = num;
 	aggregated->active_clients = num;
 
+	aggregated->max_pid_len = clients->max_pid_len;
+	aggregated->max_name_len = clients->max_name_len;
+
 	clients = aggregated;
 
 out:
@@ -1104,9 +1121,34 @@ static size_t readat2buf(int at, const char *name, char *buf, const size_t sz)
 	}
 }
 
+static void clients_update_max_lengths(struct clients *clients)
+{
+	struct client *c;
+	int tmp;
+
+	clients->max_name_len = 0;
+	clients->max_pid_len = 0;
+
+	for_each_client(clients, c, tmp) {
+		int len;
+
+		if (c->status != ALIVE)
+			continue; /* Array not yet sorted by the caller. */
+
+		len = strlen(c->print_name);
+		if (len > clients->max_name_len)
+			clients->max_name_len = len;
+
+		len = strlen(c->pid_str);
+		if (len > clients->max_pid_len)
+			clients->max_pid_len = len;
+	}
+}
+
 static struct clients *scan_clients(struct clients *clients, bool display)
 {
 	struct dirent *proc_dent;
+	bool freed = false;
 	struct client *c;
 	DIR *proc_dir;
 	int tmp;
@@ -1208,12 +1250,17 @@ next:
 	closedir(proc_dir);
 
 	for_each_client(clients, c, tmp) {
-		if (c->status == PROBE)
+		if (c->status == PROBE) {
 			free_client(c);
-		else if (c->status == FREE)
+			freed = true;
+		} else if (c->status == FREE) {
 			break;
+		}
 	}
 
+	if (freed)
+		clients_update_max_lengths(clients);
+
 	return display ? display_clients(clients) : clients;
 }
 
@@ -2172,15 +2219,16 @@ print_clients_header(struct clients *clients, int lines,
 		     int con_w, int con_h, int *class_w)
 {
 	if (output_mode == INTERACTIVE) {
-		const char *pidname = "   PID              NAME ";
 		unsigned int num_active = 0;
-		int len = strlen(pidname);
+		int len;
 
 		if (lines++ >= con_h)
 			return lines;
 
 		printf("\033[7m");
-		printf("%s", pidname);
+		len = printf("%*s %*s ",
+			     clients->max_pid_len, "PID",
+			     clients->max_name_len, "NAME");
 
 		if (lines++ >= con_h || len >= con_w)
 			return lines;
@@ -2241,7 +2289,9 @@ print_client(struct client *c, struct engines *engines, double t, int lines,
 
 		lines++;
 
-		printf("%6u %17s ", c->pid, c->print_name);
+		printf("%*s %*s ",
+		       clients->max_pid_len, c->pid_str,
+		       clients->max_name_len, c->print_name);
 
 		for (i = 0; c->samples > 1 && i < clients->num_classes; i++) {
 			double pct;
-- 
2.37.2

