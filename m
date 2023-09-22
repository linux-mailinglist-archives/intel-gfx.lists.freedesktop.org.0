Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 546177AB2E8
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Sep 2023 15:46:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B106A10E66B;
	Fri, 22 Sep 2023 13:46:01 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 187CC10E669;
 Fri, 22 Sep 2023 13:45:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695390341; x=1726926341;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ypMid9qz8w3EISgLqRrSIozWij9gpQmaY7umHfWSeKo=;
 b=gRobfyjlwf9Fh6GNUuupGrRODB9TyqloSkPamZouGjTKQM0eJZVCEYbj
 mPXuJjjCcA1g9+InIKFwnVrkqtcGjdj82AMGmosHHZgmE8cD66eupgTUz
 BzkUgH1/DodXauvJxc5xahAl2vUeLstWZawf2ttB/aR6idOGseTc2szvF
 Kl0WONHRDRObwNVgdDJFBc80X3RsVY9Fh7yE3dsLddH+7szgV1WtgMRqa
 Bokvb/TAwoHBrZg5lgTBXAmiQbOzfVmsn9k/ubt0T3lcL/KpAJMtR3Amp
 cKpXftJUSQgJ3i4Au00MX5Mhh6NZmAD5H1Rx2fIOiyDc43RRAfCtBrITH A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10841"; a="378117156"
X-IronPort-AV: E=Sophos;i="6.03,167,1694761200"; d="scan'208";a="378117156"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2023 06:44:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10841"; a="871243614"
X-IronPort-AV: E=Sophos;i="6.03,167,1694761200"; d="scan'208";a="871243614"
Received: from placki-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.200.149])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2023 06:44:55 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
	Intel-gfx@lists.freedesktop.org
Date: Fri, 22 Sep 2023 14:44:34 +0100
Message-Id: <20230922134437.234888-10-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230922134437.234888-1-tvrtko.ursulin@linux.intel.com>
References: <20230922134437.234888-1-tvrtko.ursulin@linux.intel.com>
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
index e18ec25e8036..eb0ef00abeaf 100644
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

