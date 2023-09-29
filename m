Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B71B7B3280
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Sep 2023 14:26:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0750110E71D;
	Fri, 29 Sep 2023 12:25:55 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9CF7010E70E;
 Fri, 29 Sep 2023 12:25:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695990340; x=1727526340;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jktdmJcrS+xP6X5qLzjKHJJ+ekIvcY263WUPIhVG4Ls=;
 b=A51b9Vm52NEBvzwjz6yLQCyeLGCZUkWafyezTUNg9mVP5Dtz120iQMb/
 dBRknjiq5tCv7USSD3nAadS+PsIwOVXu4cnYVEXQws+5NKVV1qFDxbXtP
 oE3Wrdr9/l60RaVdqG9apsP3MnU/T7MLlFxEL0Rl7VYsgGtCJ0pYNcbwb
 iHYGfAgz8E3SaXWjOZ43v0FMQmX5vYErkQekAF6Zlw3Rrn2eSd3MP11Xp
 OUZLCw7hTDz0w+7J8MlBEfs5T77++K3XdyhuAenpock0e0g8uT/94I7Xg
 kGSg0cQKue0ZpZKqfsAETzIbN/jWRAaQsh1hFeIPKhU6hROvAPT9pFKya g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="446443788"
X-IronPort-AV: E=Sophos;i="6.03,187,1694761200"; d="scan'208";a="446443788"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2023 05:25:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="726577196"
X-IronPort-AV: E=Sophos;i="6.03,187,1694761200"; d="scan'208";a="726577196"
Received: from pbrady4x-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.203.84])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2023 05:25:39 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
	Intel-gfx@lists.freedesktop.org
Date: Fri, 29 Sep 2023 13:25:17 +0100
Message-Id: <20230929122517.349348-13-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230929122517.349348-1-tvrtko.ursulin@linux.intel.com>
References: <20230929122517.349348-1-tvrtko.ursulin@linux.intel.com>
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
index 958df42e8c20..3f376e233fe2 100644
--- a/tools/intel_gpu_top.c
+++ b/tools/intel_gpu_top.c
@@ -138,6 +138,7 @@ struct intel_clients {
 
 static struct termios termios_orig;
 static bool class_view;
+static bool aggregate_regions;
 
 /* Maps i915 fdinfo names to indices */
 static const char *memory_region_map[] = {
@@ -1045,6 +1046,7 @@ usage(const char *appname)
 		"\t[-L]            List all cards.\n"
 		"\t[-d <device>]   Device filter, please check manual page for more details.\n"
 		"\t[-p]            Default to showing physical engines instead of classes.\n"
+		"\t[-m]            Default to showing all memory regions.\n"
 		"\n",
 		appname, DEFAULT_PERIOD_MS);
 	igt_device_print_filter_types();
@@ -2026,7 +2028,7 @@ print_clients_header(struct igt_drm_clients *clients, int lines,
 				 4 : clients->max_name_len; /* At least "NAME" */
 
 	if (output_mode == INTERACTIVE) {
-		unsigned int num_active = 0;
+		unsigned int num_active = 0, i;
 		int len;
 
 		if (lines++ >= con_h)
@@ -2038,11 +2040,17 @@ print_clients_header(struct igt_drm_clients *clients, int lines,
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
@@ -2116,15 +2124,26 @@ print_client(struct igt_drm_client *c, struct engines *engines, double t, int li
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
@@ -2401,6 +2420,13 @@ static void process_normal_stdin(void)
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
@@ -2449,6 +2475,7 @@ static void show_help_screen(void)
 "    's'    Toggle between sort modes (runtime, total runtime, pid, client id).\n"
 "    'i'    Toggle display of clients which used no GPU time.\n"
 "    'H'    Toggle between per PID aggregation and individual clients.\n"
+"    'm'    Toggle between aggregated memory regions and full breakdown.\n"
 "\n"
 "    'h' or 'q'    Exit interactive help.\n"
 "\n");
@@ -2576,6 +2603,7 @@ int main(int argc, char **argv)
 {
 	unsigned int period_us = DEFAULT_PERIOD_MS * 1000;
 	bool physical_engines = false;
+	bool separate_regions = false;
 	struct intel_clients iclients;
 	int con_w = -1, con_h = -1;
 	char *output_path = NULL;
@@ -2588,7 +2616,7 @@ int main(int argc, char **argv)
 	struct timespec ts;
 
 	/* Parse options */
-	while ((ch = getopt(argc, argv, "o:s:d:pcJLlh")) != -1) {
+	while ((ch = getopt(argc, argv, "o:s:d:mpcJLlh")) != -1) {
 		switch (ch) {
 		case 'o':
 			output_path = optarg;
@@ -2602,6 +2630,9 @@ int main(int argc, char **argv)
 		case 'p':
 			physical_engines = true;
 			break;
+		case 'm':
+			separate_regions = true;
+			break;
 		case 'c':
 			output_mode = CSV;
 			break;
@@ -2645,6 +2676,7 @@ int main(int argc, char **argv)
 		fprintf(stderr, "Failed to install signal handler!\n");
 
 	class_view = !physical_engines;
+	aggregate_regions = !separate_regions;
 
 	switch (output_mode) {
 	case INTERACTIVE:
-- 
2.39.2

