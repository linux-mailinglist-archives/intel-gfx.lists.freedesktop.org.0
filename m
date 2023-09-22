Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 608DA7AB2EC
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Sep 2023 15:46:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECD9010E675;
	Fri, 22 Sep 2023 13:46:06 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A445110E66E;
 Fri, 22 Sep 2023 13:45:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695390350; x=1726926350;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oM5KgvS3/rVcQWKHqWRfHGdi4keXyO+LXS7MrBqu9z4=;
 b=hatpE4OR5i8nbWVYX8n/9g1ZWgF95zzQGeKRSQwe6lJmbMYjWozjbNP0
 +yEGeD/XPT2e8B8Msov9mvgXeR826oaufYhRdUl0t7ppYY4QtZEHy3mAt
 g6j1iEmhxW1nqjSLTX9OeEv4pdah6JnNdXDmWONhYj/XkBxYfZ0agal00
 cwUWxY8DJK7QgrJdARjsKb3eqUg29K+LP6dgoO5RS04ap0NZOCmJY8T7x
 aDJkr4zTMgBLhgk32zCVXNqDh/mj6e78L8fv+TJltQu4EfGjjv17HpWUf
 j5dwBpnZKF+X1cH5rXhGD6nQqGTB9oUwHpg6FOsKE8AximgjxM/96qWWF g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10841"; a="378117179"
X-IronPort-AV: E=Sophos;i="6.03,167,1694761200"; d="scan'208";a="378117179"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2023 06:45:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10841"; a="871243646"
X-IronPort-AV: E=Sophos;i="6.03,167,1694761200"; d="scan'208";a="871243646"
Received: from placki-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.200.149])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2023 06:44:59 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
	Intel-gfx@lists.freedesktop.org
Date: Fri, 22 Sep 2023 14:44:37 +0100
Message-Id: <20230922134437.234888-13-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230922134437.234888-1-tvrtko.ursulin@linux.intel.com>
References: <20230922134437.234888-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 12/12] tools/intel_gpu_top: Add ability to
 show memory region breakdown
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

Similar as we can toggle between aggregated engines and clients, add the
capability to toggle between aggregated and per memory region stats.

It starts in aggregated mode by default and interactive command 'm' and
command line switch '-m' can be used to toggle that.

Both only affect the interactive view, while JSON output always contains
separate memory regions.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 man/intel_gpu_top.rst |  4 ++++
 tools/intel_gpu_top.c | 56 +++++++++++++++++++++++++++++++++----------
 2 files changed, 48 insertions(+), 12 deletions(-)

diff --git a/man/intel_gpu_top.rst b/man/intel_gpu_top.rst
index 9499f87f1b4d..44a54a5f219d 100644
--- a/man/intel_gpu_top.rst
+++ b/man/intel_gpu_top.rst
@@ -55,6 +55,9 @@ OPTIONS
 -p
    Default to showing physical engines instead of aggregated classes.
 
+-m
+   Default to showing all memory regions separately.
+
 RUNTIME CONTROL
 ===============
 
@@ -68,6 +71,7 @@ Supported keys:
 |    's'    Toggle between sort modes (runtime, total runtime, pid, client id).
 |    'i'    Toggle display of clients which used no GPU time.
 |    'H'    Toggle between per PID aggregation and individual clients.
+|    'm'    Toggle between aggregated memory regions and full breakdown.
 
 DEVICE SELECTION
 ================
diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
index c239a0d4f350..3b45fcc21331 100644
--- a/tools/intel_gpu_top.c
+++ b/tools/intel_gpu_top.c
@@ -138,6 +138,7 @@ struct intel_clients {
 
 static struct termios termios_orig;
 static bool class_view;
+static bool aggregate_regions;
 
 /* Maps i915 fdinfo names to indices */
 static const char *memory_region_map[] = {
@@ -1049,6 +1050,7 @@ usage(const char *appname)
 		"\t[-L]            List all cards.\n"
 		"\t[-d <device>]   Device filter, please check manual page for more details.\n"
 		"\t[-p]            Default to showing physical engines instead of classes.\n"
+		"\t[-m]            Default to showing all memory regions.\n"
 		"\n",
 		appname, DEFAULT_PERIOD_MS);
 	igt_device_print_filter_types();
@@ -2030,7 +2032,7 @@ print_clients_header(struct igt_drm_clients *clients, int lines,
 				 4 : clients->max_name_len; /* At least "NAME" */
 
 	if (output_mode == INTERACTIVE) {
-		unsigned int num_active = 0;
+		unsigned int num_active = 0, i;
 		int len;
 
 		if (lines++ >= con_h)
@@ -2042,11 +2044,17 @@ print_clients_header(struct igt_drm_clients *clients, int lines,
 		if (lines++ >= con_h || len >= con_w)
 			return lines;
 
-		if (iclients->regions)
-			len += printf("     MEM      RSS ");
+		if (iclients->regions) {
+			if (aggregate_regions) {
+				len += printf("     MEM      RSS ");
+			} else {
+				len += printf("     RAM      RSS ");
+				if (iclients->regions->num_regions > 1)
+					len += printf("    VRAM     VRSS ");
+			}
+		}
 
 		if (iclients->classes.num_engines) {
-			unsigned int i;
 			int width;
 
 			for (i = 0; i <= iclients->classes.max_engine_id; i++) {
@@ -2120,15 +2128,26 @@ print_client(struct igt_drm_client *c, struct engines *engines, double t, int li
 		len = printf("%*s ", clients->max_pid_len, c->pid_str);
 
 		if (iclients->regions) {
-			uint64_t sz;
+			if (aggregate_regions) {
+				uint64_t sz;
 
-			for (sz = 0, i = 0; i <= c->regions->max_region_id; i++)
-				sz += c->memory[i].total;
-			len += print_size(sz);
+				for (sz = 0, i = 0;
+				     i <= c->regions->max_region_id; i++)
+					sz += c->memory[i].total;
+				len += print_size(sz);
 
-			for (sz = 0, i = 0; i <= c->regions->max_region_id; i++)
-				sz += c->memory[i].resident;
-			len += print_size(sz);
+				for (sz = 0, i = 0;
+				     i <= c->regions->max_region_id; i++)
+					sz += c->memory[i].resident;
+				len += print_size(sz);
+			} else {
+				len += print_size(c->memory[0].total);
+				len += print_size(c->memory[0].resident);
+				if (c->regions->num_regions > 1) {
+					len += print_size(c->memory[1].total);
+					len += print_size(c->memory[1].resident);
+				}
+			}
 		}
 
 		for (i = 0; i <= iclients->classes.max_engine_id; i++) {
@@ -2405,6 +2424,13 @@ static void process_normal_stdin(void)
 			else
 				header_msg = "Showing individual clients.";
 			break;
+		case 'm':
+			aggregate_regions ^= true;
+			if (aggregate_regions)
+				header_msg = "Aggregating memory regions.";
+			else
+				header_msg = "Showing memory regions.";
+			break;
 		};
 	}
 }
@@ -2453,6 +2479,7 @@ static void show_help_screen(void)
 "    's'    Toggle between sort modes (runtime, total runtime, pid, client id).\n"
 "    'i'    Toggle display of clients which used no GPU time.\n"
 "    'H'    Toggle between per PID aggregation and individual clients.\n"
+"    'm'    Toggle between aggregated memory regions and full breakdown.\n"
 "\n"
 "    'h' or 'q'    Exit interactive help.\n"
 "\n");
@@ -2580,6 +2607,7 @@ int main(int argc, char **argv)
 {
 	unsigned int period_us = DEFAULT_PERIOD_MS * 1000;
 	bool physical_engines = false;
+	bool separate_regions = false;
 	struct intel_clients iclients;
 	int con_w = -1, con_h = -1;
 	char *output_path = NULL;
@@ -2592,7 +2620,7 @@ int main(int argc, char **argv)
 	struct timespec ts;
 
 	/* Parse options */
-	while ((ch = getopt(argc, argv, "o:s:d:pcJLlh")) != -1) {
+	while ((ch = getopt(argc, argv, "o:s:d:mpcJLlh")) != -1) {
 		switch (ch) {
 		case 'o':
 			output_path = optarg;
@@ -2606,6 +2634,9 @@ int main(int argc, char **argv)
 		case 'p':
 			physical_engines = true;
 			break;
+		case 'm':
+			separate_regions = true;
+			break;
 		case 'c':
 			output_mode = CSV;
 			break;
@@ -2649,6 +2680,7 @@ int main(int argc, char **argv)
 		fprintf(stderr, "Failed to install signal handler!\n");
 
 	class_view = !physical_engines;
+	aggregate_regions = !separate_regions;
 
 	switch (output_mode) {
 	case INTERACTIVE:
-- 
2.39.2

