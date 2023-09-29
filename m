Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E63F7B327E
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Sep 2023 14:25:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CC1410E719;
	Fri, 29 Sep 2023 12:25:54 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E6D7F10E70C;
 Fri, 29 Sep 2023 12:25:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695990337; x=1727526337;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7tAx0labasHjnhMtKedAE3s87O/HYmVjGaZSj3x+WiM=;
 b=d58V532t8E5PrrHHJ197b7jq62UBRQbaHSrSN5Wde47W8X8YfGSxEoJa
 p8KZM9h7Eh1cpRtEWPFjrPaneafoX1HZkI0z1QBT4XL2Pb9mQGYKgZrg3
 wbThi36d9yoI3kAvFyC/ENaPlNfcT1LdiBy5WQQ9j7v2FZgp63ZHOVxpz
 rYRMNPwHkjAV57KsH47R32aG3ePutWt7WdKAQfGiXI3cNAQtoMIgjGb3t
 uzf9gbq+265oiHMbcYozLNihAFGi+NYgh77piVcGLinobQ4fWzQ820HAf
 AAsAeHysCHxJgWIrQ+H7u7RrZxUow7LJPxkuHXEXq25sOy/EzXwSmrs40 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="446443780"
X-IronPort-AV: E=Sophos;i="6.03,187,1694761200"; d="scan'208";a="446443780"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2023 05:25:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="726577177"
X-IronPort-AV: E=Sophos;i="6.03,187,1694761200"; d="scan'208";a="726577177"
Received: from pbrady4x-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.203.84])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2023 05:25:35 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
	Intel-gfx@lists.freedesktop.org
Date: Fri, 29 Sep 2023 13:25:14 +0100
Message-Id: <20230929122517.349348-10-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230929122517.349348-1-tvrtko.ursulin@linux.intel.com>
References: <20230929122517.349348-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 09/12] lib/igt_drm_clients: Allow passing
 in the memory region map
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
index 35c125f22c48..5d44ba45335e 100644
--- a/tools/intel_gpu_top.c
+++ b/tools/intel_gpu_top.c
@@ -2615,8 +2615,9 @@ int main(int argc, char **argv)
 	}
 
 	pmu_sample(engines);
-	igt_drm_clients_scan(clients, client_match, engine_map,
-			     ARRAY_SIZE(engine_map));
+	igt_drm_clients_scan(clients, client_match,
+			     engine_map, ARRAY_SIZE(engine_map),
+			     NULL, 0);
 	gettime(&ts);
 
 	if (output_mode == JSON)
@@ -2651,7 +2652,8 @@ int main(int argc, char **argv)
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

