Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D19CB7C677B
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Oct 2023 10:16:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7C2E10E45D;
	Thu, 12 Oct 2023 08:16:11 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5C3210E459;
 Thu, 12 Oct 2023 08:16:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697098564; x=1728634564;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nvwxwG4c/KiRwfpYmE9F7CnpOmiMqL79bbJPHVrUYWk=;
 b=HIrC5cv6dc2SEJENnghdKUKaYsm6VBmmEUkAJlsxPDZymLlTG/86ClCI
 5jrmxW/rhgL2aiMvnwOhs32kfanWpbsVxfvI8PhgxGTFotsxxetD3PBfz
 GJgd5F8RCB96sdgmHEF6EPTh0oOlbImNC99Zk0PAlstGVrDQ+L8w1zXy5
 MYP+/FRqjuZt+NY2dK0AF62tgzi687wODX7yj8KImsAP4KE20txtPLj1z
 WrBxSYXMSiNriY9gAbsiPrsaW7PmD+njg0fPWIWwbFCDx2uq7OlIjq5ry
 R8ZDfHcOzf2yS3K2hCh3HlOFX3q5Q3Z4j5Sj3U05ouKW79KoGAUYCAW2h g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="3454689"
X-IronPort-AV: E=Sophos;i="6.03,218,1694761200"; 
   d="scan'208";a="3454689"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2023 01:16:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="783599342"
X-IronPort-AV: E=Sophos;i="6.03,218,1694761200"; d="scan'208";a="783599342"
Received: from maloneyj-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.239.225])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2023 01:16:02 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
	Intel-gfx@lists.freedesktop.org
Date: Thu, 12 Oct 2023 09:15:44 +0100
Message-Id: <20231012081547.852052-7-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231012081547.852052-1-tvrtko.ursulin@linux.intel.com>
References: <20231012081547.852052-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 6/9] lib/igt_drm_clients: Allow passing in
 the memory region map
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
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
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

