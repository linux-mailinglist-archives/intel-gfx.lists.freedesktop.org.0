Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2F147E21D0
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Nov 2023 13:35:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1FA610E2F0;
	Mon,  6 Nov 2023 12:35:37 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A1EC710E2F4;
 Mon,  6 Nov 2023 12:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699274133; x=1730810133;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=rSIsAlKptfMKeFCIhsNPBO3tLd2pzxOFIIWUhW665fo=;
 b=mncIMf+p5N6xfaPbUroWtkPJeu9w6G0tkSMY7sXbJ+OtqCjdMZSyedsZ
 NI6Pv8TTW6kTF9YMbfLvdz+7PIuzwPQJ3wBMp1sqJUMci3AoOF9syV8f+
 M0mw2qPG/nj4c0wAtabe9fqBiV0MkFGuWw7zt+Yu0PZCyox9KpOFU0/tf
 YpOUGGH0x8LZweBZ18TtVD/+WdodtJQiYRlMxhqftI27ZcItsF93Dpntt
 r9Xvxj6NCwQ1ch46VHrNSLE0CbkTS/aGEodVUX3GFT8gTsDOvKnOqASJL
 rqy02VXXbA+y5Ie5LkStbigR8zHWX7C/X30Af5DZvYkZANreMP/zubQlI Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10885"; a="393159568"
X-IronPort-AV: E=Sophos;i="6.03,281,1694761200"; d="scan'208";a="393159568"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2023 04:35:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10885"; a="712188531"
X-IronPort-AV: E=Sophos;i="6.03,281,1694761200"; d="scan'208";a="712188531"
Received: from ajayshan-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.234.152])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2023 04:35:32 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
	Intel-gfx@lists.freedesktop.org
Date: Mon,  6 Nov 2023 12:35:17 +0000
Message-Id: <20231106123518.588528-8-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231106123518.588528-1-tvrtko.ursulin@linux.intel.com>
References: <20231106123518.588528-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 8/9] tools/intel_gpu_top: Add per client memory info
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

JSON output has the full breakdown but for now the interactive mode only
shows total and resident aggregated for all memory regions.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Reviewed-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>
---
 tools/intel_gpu_top.c | 114 +++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 112 insertions(+), 2 deletions(-)

diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
index b2e81d5f9ffb..2c09895c79dd 100644
--- a/tools/intel_gpu_top.c
+++ b/tools/intel_gpu_top.c
@@ -133,11 +133,24 @@ struct intel_clients {
 	const char *pci_slot;
 	struct igt_drm_client_engines classes;
 	struct igt_drm_clients *clients;
+	struct igt_drm_client_regions *regions; /* Borrowed from first client */
 };
 
 static struct termios termios_orig;
 static bool class_view;
 
+/* Maps i915 fdinfo names to indices */
+static const char *memory_region_map[] = {
+	"system0",
+	"local0",
+};
+
+/* For JSON, 1:1 with indices above. */
+static const char *json_memory_region_names[] = {
+	"system",
+	"local",
+};
+
 __attribute__((format(scanf,3,4)))
 static int igt_sysfs_scanf(int dir, const char *attr, const char *fmt, ...)
 {
@@ -882,6 +895,9 @@ static struct igt_drm_clients *display_clients(struct igt_drm_clients *clients)
 			ac->val = calloc(c->engines->max_engine_id + 1,
 					 sizeof(ac->val[0]));
 			assert(ac->val);
+			ac->regions = c->regions;
+			ac->memory = calloc(c->regions->max_region_id + 1,
+					    sizeof(ac->memory[0]));
 			ac->samples = 1;
 		}
 
@@ -896,6 +912,14 @@ static struct igt_drm_clients *display_clients(struct igt_drm_clients *clients)
 
 		for (i = 0; i <= c->engines->max_engine_id; i++)
 			ac->val[i] += c->val[i];
+
+		for (i = 0; i <= c->regions->max_region_id; i++) {
+			ac->memory[i].total += c->memory[i].total;
+			ac->memory[i].shared += c->memory[i].shared;
+			ac->memory[i].resident += c->memory[i].resident;
+			ac->memory[i].purgeable += c->memory[i].purgeable;
+			ac->memory[i].active += c->memory[i].active;
+		}
 	}
 
 	aggregated->num_clients = num;
@@ -920,8 +944,10 @@ static void free_display_clients(struct igt_drm_clients *clients)
 	 * "display" clients are not proper clients and have un-initialized
 	 * or borrowed fields which we don't want the library to try and free.
 	 */
-	igt_for_each_drm_client(clients, c, tmp)
+	igt_for_each_drm_client(clients, c, tmp) {
 		free(c->val);
+		free(c->memory);
+	}
 
 	free(clients->client);
 	free(clients);
@@ -2016,6 +2042,9 @@ print_clients_header(struct igt_drm_clients *clients, int lines,
 		if (lines++ >= con_h || len >= con_w)
 			return lines;
 
+		if (iclients->regions)
+			len += printf("     MEM      RSS ");
+
 		if (iclients->classes.num_engines) {
 			unsigned int i;
 			int width;
@@ -2059,6 +2088,20 @@ print_clients_header(struct igt_drm_clients *clients, int lines,
 static bool numeric_clients;
 static bool filter_idle;
 
+static int print_size(uint64_t sz)
+{
+	char units[] = { ' ', 'K', 'M', 'G' };
+	unsigned int u;
+
+	for (u = 0; u < ARRAY_SIZE(units) - 1; u++) {
+		if (sz & 1023 || sz < 1024)
+			break;
+		sz /= 1024;
+	}
+
+	return printf("%7"PRIu64"%c ", sz, units[u]);
+}
+
 static int
 print_client(struct igt_drm_client *c, struct engines *engines, double t, int lines,
 	     int con_w, int con_h, unsigned int period_us, int *class_w)
@@ -2076,6 +2119,18 @@ print_client(struct igt_drm_client *c, struct engines *engines, double t, int li
 
 		len = printf("%*s ", clients->max_pid_len, c->pid_str);
 
+		if (iclients->regions) {
+			uint64_t sz;
+
+			for (sz = 0, i = 0; i <= c->regions->max_region_id; i++)
+				sz += c->memory[i].total;
+			len += print_size(sz);
+
+			for (sz = 0, i = 0; i <= c->regions->max_region_id; i++)
+				sz += c->memory[i].resident;
+			len += print_size(sz);
+		}
+
 		for (i = 0; i <= iclients->classes.max_engine_id; i++) {
 			double pct, max;
 
@@ -2115,6 +2170,42 @@ print_client(struct igt_drm_client *c, struct engines *engines, double t, int li
 		snprintf(buf, sizeof(buf), "%u", c->pid);
 		__json_add_member("pid", buf);
 
+		if (iclients->regions) {
+			pops->open_struct("memory");
+
+			for (i = 0; i < ARRAY_SIZE(json_memory_region_names);
+			     i++) {
+				if (i > c->regions->max_region_id)
+					break;
+
+				pops->open_struct(json_memory_region_names[i]);
+
+				snprintf(buf, sizeof(buf), "%" PRIu64,
+					 c->memory[i].total);
+				__json_add_member("total", buf);
+
+				snprintf(buf, sizeof(buf), "%" PRIu64,
+					 c->memory[i].shared);
+				__json_add_member("shared", buf);
+
+				snprintf(buf, sizeof(buf), "%" PRIu64,
+					 c->memory[i].resident);
+				__json_add_member("resident", buf);
+
+				snprintf(buf, sizeof(buf), "%" PRIu64,
+					 c->memory[i].purgeable);
+				__json_add_member("purgeable", buf);
+
+				snprintf(buf, sizeof(buf), "%" PRIu64,
+					 c->memory[i].active);
+				__json_add_member("active", buf);
+
+				pops->close_struct();
+			}
+
+			pops->close_struct();
+		}
+
 		if (c->samples > 1) {
 			pops->open_struct("engine-classes");
 
@@ -2460,10 +2551,29 @@ static void intel_scan_clients(struct intel_clients *iclients)
 		"video-enhance",
 		"compute",
 	};
+	struct igt_drm_client *c;
+	unsigned int i;
 
 	igt_drm_clients_scan(iclients->clients, client_match,
 			     engine_map, ARRAY_SIZE(engine_map),
-			     NULL, 0);
+			     memory_region_map, ARRAY_SIZE(memory_region_map));
+
+	iclients->regions = NULL;
+
+	if (!iclients->clients)
+		return;
+
+	/*
+	 * Borrow memory region data from first client so we can use it
+	 * when displaying stuff. All regions are the same due our client_match.
+	 */
+	igt_for_each_drm_client(iclients->clients, c, i) {
+		if (c->status == IGT_DRM_CLIENT_ALIVE) {
+			if (c->regions->num_regions)
+				iclients->regions = c->regions;
+			break;
+		}
+	}
 }
 
 int main(int argc, char **argv)
-- 
2.39.2

