Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 94B206E45D9
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Apr 2023 12:57:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED96E10E41E;
	Mon, 17 Apr 2023 10:57:56 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3699510E415;
 Mon, 17 Apr 2023 10:57:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681729072; x=1713265072;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=I8fN56hPOC93sJpZTQiV0/lZcpTgX/cKPLf4SXSb2VQ=;
 b=DGzJvI81NuDvWrt3qS0mOCOl4pYIbSs4lc2hYYlTgANh/GpUhnfhPTDJ
 6+D7qwvR2yUlKSSh+IGIdPn+wlJRPg+6sNyA9t/77nKVxJWXqHpGYDYkZ
 SWIbYR2tImaSyeOQ+/y6R9vTyWz9NyEpl5Fq62CSbGLI5F6P8OHTx4Kuo
 QJfIJgc0Km7lIy7z90fW6E6buxy4jdKqYlgj9LcCJBXA6o95HXpRNqFkx
 egYvsWvWtSjqHvjpIrKT8rmNz/Yu/7rLzQy1QdzKjK4LaAooulH4qCzaS
 eywv9qCo2PTi1bYxEv1NJaS9RLHZMqy+ufpyd1Z7nsudIsDZ0bK7w9V+h w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10682"; a="410073203"
X-IronPort-AV: E=Sophos;i="5.99,203,1677571200"; d="scan'208";a="410073203"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2023 03:57:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10682"; a="834363440"
X-IronPort-AV: E=Sophos;i="5.99,203,1677571200"; d="scan'208";a="834363440"
Received: from gtohallo-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.232.210])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2023 03:57:50 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
	Intel-gfx@lists.freedesktop.org
Date: Mon, 17 Apr 2023 11:57:33 +0100
Message-Id: <20230417105734.3945840-8-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230417105734.3945840-1-tvrtko.ursulin@linux.intel.com>
References: <20230417105734.3945840-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 7/8] lib/igt_drm_clients: Enforce client
 status sort order in the library
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

Some libdrmclient operations require that inactive clients are last in the
list. Rather than relying on callers of the library sort routine to
implement their comparison callbacks correctly, enforce this order
directly in the library and let callers comparison callbacks concern
themselves only with ordering they are interested in.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 lib/igt_drm_clients.c | 37 +++++++++++++++-----
 lib/igt_drm_clients.h |  2 +-
 tools/intel_gpu_top.c | 81 +++++++++++++++++++------------------------
 3 files changed, 65 insertions(+), 55 deletions(-)

diff --git a/lib/igt_drm_clients.c b/lib/igt_drm_clients.c
index 5d06337db70e..f0294ba81c42 100644
--- a/lib/igt_drm_clients.c
+++ b/lib/igt_drm_clients.c
@@ -200,22 +200,38 @@ void igt_drm_client_free(struct igt_drm_client *c, bool clear)
 		memset(c, 0, sizeof(*c));
 }
 
+struct sort_context
+{
+	int (*user_cmp)(const void *, const void *, void *);
+};
+
+static int sort_cmp(const void *_a, const void *_b, void *_ctx)
+{
+	const struct sort_context *ctx = _ctx;
+	const struct igt_drm_client *a = _a;
+	const struct igt_drm_client *b = _b;
+	int cmp = b->status - a->status;
+
+	if (cmp == 0)
+		return ctx->user_cmp(_a, _b, _ctx);
+	else
+		return cmp;
+}
+
 /**
  * igt_drm_clients_sort:
  * @clients: Previously initialised clients object
  * @cmp: Client comparison callback
  *
  * Sort the clients array according to the passed in comparison callback which
- * is compatible with the qsort(3) semantics.
- *
- * Caller has to ensure the callback is putting all active
- * (IGT_DRM_CLIENT_ALIVE) clients in a single group at the head of the array
- * before any other sorting criteria.
+ * is compatible with the qsort(3) semantics, with the third void * argument
+ * being unused.
  */
 struct igt_drm_clients *
 igt_drm_clients_sort(struct igt_drm_clients *clients,
-		     int (*cmp)(const void *, const void *))
+		     int (*cmp)(const void *, const void *, void *))
 {
+	struct sort_context ctx = { .user_cmp = cmp };
 	unsigned int active, free;
 	struct igt_drm_client *c;
 	int tmp;
@@ -223,8 +239,13 @@ igt_drm_clients_sort(struct igt_drm_clients *clients,
 	if (!clients)
 		return clients;
 
-	qsort(clients->client, clients->num_clients, sizeof(*clients->client),
-	      cmp);
+	/*
+	 * Enforce client->status ordering (active followed by free) by running
+	 * the user provided comparison callback wrapped in the one internal
+	 * to the library.
+	 */
+	qsort_r(clients->client, clients->num_clients, sizeof(*clients->client),
+	      sort_cmp, &ctx);
 
 	/* Trim excessive array space. */
 	active = 0;
diff --git a/lib/igt_drm_clients.h b/lib/igt_drm_clients.h
index 36a1547a37e5..ed795c193986 100644
--- a/lib/igt_drm_clients.h
+++ b/lib/igt_drm_clients.h
@@ -86,6 +86,6 @@ igt_drm_clients_scan(struct igt_drm_clients *clients,
 
 struct igt_drm_clients *
 igt_drm_clients_sort(struct igt_drm_clients *clients,
-		     int (*cmp)(const void *, const void *));
+		     int (*cmp)(const void *, const void *, void *));
 
 #endif /* IGT_DRM_CLIENTS_H */
diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
index a095f8a682fa..453090c298bc 100644
--- a/tools/intel_gpu_top.c
+++ b/tools/intel_gpu_top.c
@@ -685,85 +685,74 @@ static void pmu_sample(struct engines *engines)
 	}
 }
 
-static int client_last_cmp(const void *_a, const void *_b)
+static int
+__client_id_cmp(const struct igt_drm_client *a,
+		const struct igt_drm_client *b)
+{
+	if (a->id > b->id)
+		return 1;
+	else if (a->id < b->id)
+		return -1;
+	else
+		return 0;
+}
+
+static int client_last_cmp(const void *_a, const void *_b, void *unused)
 {
 	const struct igt_drm_client *a = _a;
 	const struct igt_drm_client *b = _b;
-	long tot_a, tot_b;
+	long val_a = a->last_runtime, val_b = b->last_runtime;
 
 	/*
 	 * Sort clients in descending order of runtime in the previous sampling
-	 * period for active ones, followed by inactive. Tie-breaker is client
-	 * id.
+	 * period. Tie-breaker is client id.
 	 */
 
-	tot_a = a->status == IGT_DRM_CLIENT_ALIVE ? a->last_runtime : -1;
-	tot_b = b->status == IGT_DRM_CLIENT_ALIVE ? b->last_runtime : -1;
-
-	tot_b -= tot_a;
-	if (tot_b > 0)
+	if (val_a == val_b)
+		return __client_id_cmp(a, b);
+	else if (val_b > val_a)
 		return 1;
-	if (tot_b < 0)
+	else
 		return -1;
-
-	return (int)b->id - a->id;
 }
 
-static int client_total_cmp(const void *_a, const void *_b)
+static int client_total_cmp(const void *_a, const void *_b, void *unused)
 {
 	const struct igt_drm_client *a = _a;
 	const struct igt_drm_client *b = _b;
-	long tot_a, tot_b;
+	long val_a = a->total_runtime, val_b = b->total_runtime;
 
-	tot_a = a->status == IGT_DRM_CLIENT_ALIVE ? a->total_runtime : -1;
-	tot_b = b->status == IGT_DRM_CLIENT_ALIVE ? b->total_runtime : -1;
-
-	tot_b -= tot_a;
-	if (tot_b > 0)
+	if (val_a == val_b)
+		return __client_id_cmp(a, b);
+	else if (val_b > val_a)
 		return 1;
-	if (tot_b < 0)
+	else
 		return -1;
-
-	return (int)b->id - a->id;
 }
 
-static int client_id_cmp(const void *_a, const void *_b)
+static int client_id_cmp(const void *_a, const void *_b, void *unused)
 {
 	const struct igt_drm_client *a = _a;
 	const struct igt_drm_client *b = _b;
-	int id_a, id_b;
-
-	id_a = a->status == IGT_DRM_CLIENT_ALIVE ? a->id : -1;
-	id_b = b->status == IGT_DRM_CLIENT_ALIVE ? b->id : -1;
-
-	id_b -= id_a;
-	if (id_b > 0)
-		return 1;
-	if (id_b < 0)
-		return -1;
 
-	return (int)b->id - a->id;
+	return __client_id_cmp(a, b);
 }
 
-static int client_pid_cmp(const void *_a, const void *_b)
+static int client_pid_cmp(const void *_a, const void *_b, void *unused)
 {
 	const struct igt_drm_client *a = _a;
 	const struct igt_drm_client *b = _b;
-	int pid_a, pid_b;
-
-	pid_a = a->status == IGT_DRM_CLIENT_ALIVE ? a->pid : INT_MAX;
-	pid_b = b->status == IGT_DRM_CLIENT_ALIVE ? b->pid : INT_MAX;
+	int val_a = a->pid, val_b = b->pid;
 
-	pid_b -= pid_a;
-	if (pid_b > 0)
+	if (val_a == val_b)
+		return __client_id_cmp(a, b);
+	else if (val_b > val_a)
 		return -1;
-	if (pid_b < 0)
+	else
 		return 1;
-
-	return (int)a->id - b->id;
 }
 
-static int (*client_cmp)(const void *, const void *) = client_last_cmp;
+static int (*client_cmp)(const void *, const void *, void *) = client_last_cmp;
 
 static bool aggregate_pids = true;
 
@@ -2035,7 +2024,7 @@ static void interactive_stdin(void)
 static void select_client_sort(void)
 {
 	struct {
-		int (*cmp)(const void *, const void *);
+		int (*cmp)(const void *, const void *, void *);
 		const char *msg;
 	} cmp[] = {
 		{ client_last_cmp, "Sorting clients by current GPU usage." },
-- 
2.37.2

