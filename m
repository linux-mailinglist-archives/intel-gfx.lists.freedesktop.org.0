Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A9607E21CE
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Nov 2023 13:35:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3146410E2E9;
	Mon,  6 Nov 2023 12:35:35 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 750F410E2EB;
 Mon,  6 Nov 2023 12:35:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699274131; x=1730810131;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=MvW69wRPENKImeWqtKwMB7Rl691414E6AiHsVBnItmo=;
 b=CjVP98LOvr82L3jG9Kip5TmYu853XMPIbgm8DYJiw/ZQeP0zljb2VJRI
 LxcVJFihTZunypwiBjjMBh489xHJnMcOBs3RkUqYMGy57l2LzSgUsVtnL
 uWnvlO8HLuqr7jfTnBFgvHk/hYa08DvY4ypONWyPdPUV6y17PQ4DK/SZh
 j8jXats5n65w5ED9P3caBrBgBNoSzBXWrXhrP6hOcYQbpIJrsqPDFRS4d
 7uNUKG4bTZQmgkN72QvqoTHOJqPYp91utae2x6C9ZpoIkGXpCemfpQTL+
 B/d4S/NqtZpOggmYvW2aE1rc+8rvxpaRH6uTtL1hDjxwx45WautptW7H4 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10885"; a="393159563"
X-IronPort-AV: E=Sophos;i="6.03,281,1694761200"; d="scan'208";a="393159563"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2023 04:35:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10885"; a="712188502"
X-IronPort-AV: E=Sophos;i="6.03,281,1694761200"; d="scan'208";a="712188502"
Received: from ajayshan-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.234.152])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2023 04:35:30 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
	Intel-gfx@lists.freedesktop.org
Date: Mon,  6 Nov 2023 12:35:15 +0000
Message-Id: <20231106123518.588528-6-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231106123518.588528-1-tvrtko.ursulin@linux.intel.com>
References: <20231106123518.588528-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 6/9] lib/igt_drm_clients: Allow passing in the
 memory region map
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

Same concept as with the engine map, allowing callers to pass in fixed
map of names to indices, simplifying their implementation and avoiding
auto-detection while parsing.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Reviewed-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>
---
 lib/igt_drm_clients.c | 5 +++--
 lib/igt_drm_clients.h | 3 ++-
 tools/gputop.c        | 4 ++--
 tools/intel_gpu_top.c | 8 +++++---
 4 files changed, 12 insertions(+), 8 deletions(-)

diff --git a/lib/igt_drm_clients.c b/lib/igt_drm_clients.c
index da51d7335b2b..025d60c51503 100644
--- a/lib/igt_drm_clients.c
+++ b/lib/igt_drm_clients.c
@@ -445,7 +445,8 @@ struct igt_drm_clients *
 igt_drm_clients_scan(struct igt_drm_clients *clients,
 		     bool (*filter_client)(const struct igt_drm_clients *,
 					   const struct drm_client_fdinfo *),
-		     const char **name_map, unsigned int map_entries)
+		     const char **name_map, unsigned int map_entries,
+		     const char **region_map, unsigned int region_entries)
 {
 	struct dirent *proc_dent;
 	struct igt_drm_client *c;
@@ -524,7 +525,7 @@ igt_drm_clients_scan(struct igt_drm_clients *clients,
 			if (!__igt_parse_drm_fdinfo(dirfd(fdinfo_dir),
 						    fdinfo_dent->d_name, &info,
 						    name_map, map_entries,
-						    NULL, 0))
+						    region_map, region_entries))
 				continue;
 
 			if (filter_client && !filter_client(clients, &info))
diff --git a/lib/igt_drm_clients.h b/lib/igt_drm_clients.h
index cd37f8508b20..52888aedc25a 100644
--- a/lib/igt_drm_clients.h
+++ b/lib/igt_drm_clients.h
@@ -93,7 +93,8 @@ struct igt_drm_clients *
 igt_drm_clients_scan(struct igt_drm_clients *clients,
 		     bool (*filter_client)(const struct igt_drm_clients *,
 					   const struct drm_client_fdinfo *),
-		     const char **name_map, unsigned int map_entries);
+		     const char **name_map, unsigned int map_entries,
+		     const char **region_map, unsigned int region_entries);
 
 struct igt_drm_clients *
 igt_drm_clients_sort(struct igt_drm_clients *clients,
diff --git a/tools/gputop.c b/tools/gputop.c
index ea95e0333dd2..71e28f43ee4c 100644
--- a/tools/gputop.c
+++ b/tools/gputop.c
@@ -253,7 +253,7 @@ int main(int argc, char **argv)
 	if (!clients)
 		exit(1);
 
-	igt_drm_clients_scan(clients, NULL, NULL, 0);
+	igt_drm_clients_scan(clients, NULL, NULL, 0, NULL, 0);
 
 	for (;;) {
 		struct igt_drm_client *c, *prevc = NULL;
@@ -270,7 +270,7 @@ int main(int argc, char **argv)
 			}
 		}
 
-		igt_drm_clients_scan(clients, NULL, NULL, 0);
+		igt_drm_clients_scan(clients, NULL, NULL, 0, NULL, 0);
 		igt_drm_clients_sort(clients, client_cmp);
 
 		printf("\033[H\033[J");
diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
index 34fa99235e11..091fe28068dc 100644
--- a/tools/intel_gpu_top.c
+++ b/tools/intel_gpu_top.c
@@ -2619,8 +2619,9 @@ int main(int argc, char **argv)
 	}
 
 	pmu_sample(engines);
-	igt_drm_clients_scan(clients, client_match, engine_map,
-			     ARRAY_SIZE(engine_map));
+	igt_drm_clients_scan(clients, client_match,
+			     engine_map, ARRAY_SIZE(engine_map),
+			     NULL, 0);
 	gettime(&ts);
 
 	if (output_mode == JSON)
@@ -2655,7 +2656,8 @@ int main(int argc, char **argv)
 			display_clients(igt_drm_clients_scan(clients,
 							     client_match,
 							     engine_map,
-							     ARRAY_SIZE(engine_map)));
+							     ARRAY_SIZE(engine_map),
+							     NULL, 0));
 		scan_us = elapsed_us(&ts, period_us);
 
 		if (stop_top)
-- 
2.39.2

