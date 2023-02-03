Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BBB3A689793
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Feb 2023 12:16:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1788E10E76A;
	Fri,  3 Feb 2023 11:16:50 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99D9610E76A;
 Fri,  3 Feb 2023 11:16:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675423007; x=1706959007;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=L+5jAttLtUyThM3zKuHeqfl56HJxXiZWKMJ4GdOLkeY=;
 b=naRwjdCcbhLjhnR/1v0DcQtO0C5gtRVKutY8LR4n0HmYqGA1B9LQzxYn
 BjmVE5pyf26Wgh/E+SCZby1p1F+48e5csJ+ntiNEyY2Z3RItt+h3fv2NH
 Z6GfRvt0pSxLz4mtsAe3J15OBO8DFAoinPH5uYIkbhquN0+hwuvBPx4IN
 4zpq73VbJyVtEDydJwS/336Z0LD7a18wvsPEuCKxdrPfbMxU3HbIP7bOQ
 N+3v6lrN8ypcf+Xjuind25PfaQaawjWx3s35jcLzQi2Er/k9D/G+yxm+h
 6PDtPN11AOyrwLeqseufiGUzCq8RxdUBBv9T992kjUUCZRruDuwp5o5f+ Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="308363121"
X-IronPort-AV: E=Sophos;i="5.97,270,1669104000"; d="scan'208";a="308363121"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2023 03:16:47 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="698036042"
X-IronPort-AV: E=Sophos;i="5.97,270,1669104000"; d="scan'208";a="698036042"
Received: from lhime-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.220.100])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2023 03:16:45 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
	Intel-gfx@lists.freedesktop.org
Date: Fri,  3 Feb 2023 11:16:35 +0000
Message-Id: <20230203111636.4138202-3-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230203111636.4138202-1-tvrtko.ursulin@linux.intel.com>
References: <20230203111636.4138202-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 2/3] intel_gpu_top: Rename STDOUT to TEXT
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
Cc: Caleb Callaway <caleb.callaway@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Internal cleanup only - the name text is more accurate given the output
can also go to a file.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Caleb Callaway <caleb.callaway@intel.com>
---
 tools/intel_gpu_top.c | 54 +++++++++++++++++++++----------------------
 1 file changed, 26 insertions(+), 28 deletions(-)

diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
index e2a7f4753099..a980cc7043dc 100644
--- a/tools/intel_gpu_top.c
+++ b/tools/intel_gpu_top.c
@@ -1282,7 +1282,7 @@ usage(const char *appname)
 
 static enum {
 	INTERACTIVE,
-	STDOUT,
+	TEXT,
 	JSON
 } output_mode;
 
@@ -1387,33 +1387,31 @@ json_add_member(const struct cnt_group *parent, struct cnt_item *item,
 	return 1;
 }
 
-static unsigned int stdout_level;
+static unsigned int text_level;
 
-#define STDOUT_HEADER_REPEAT 20
-static unsigned int stdout_lines = STDOUT_HEADER_REPEAT;
-static bool stdout_header_repeat;
+#define TEXT_HEADER_REPEAT 20
+static unsigned int text_lines = TEXT_HEADER_REPEAT;
+static bool text_header_repeat;
 
-static void
-stdout_open_struct(const char *name)
+static void text_open_struct(const char *name)
 {
-	stdout_level++;
-	assert(stdout_level > 0);
+	text_level++;
+	assert(text_level > 0);
 }
 
-static void
-stdout_close_struct(void)
+static void text_close_struct(void)
 {
-	assert(stdout_level > 0);
-	if (--stdout_level == 0) {
-		stdout_lines++;
+	assert(text_level > 0);
+	if (--text_level == 0) {
+		text_lines++;
 		fputs("\n", out);
 		fflush(out);
 	}
 }
 
 static unsigned int
-stdout_add_member(const struct cnt_group *parent, struct cnt_item *item,
-		  unsigned int headers)
+text_add_member(const struct cnt_group *parent, struct cnt_item *item,
+		unsigned int headers)
 {
 	unsigned int fmt_tot = item->fmt_width + (item->fmt_precision ? 1 : 0);
 	char buf[fmt_tot + 1];
@@ -1565,10 +1563,10 @@ static const struct print_operations json_pops = {
 	.print_group = print_group,
 };
 
-static const struct print_operations stdout_pops = {
-	.open_struct = stdout_open_struct,
-	.close_struct = stdout_close_struct,
-	.add_member = stdout_add_member,
+static const struct print_operations text_pops = {
+	.open_struct = text_open_struct,
+	.close_struct = text_close_struct,
+	.add_member = text_add_member,
 	.print_group = print_group,
 };
 
@@ -1584,9 +1582,9 @@ static bool print_groups(struct cnt_group **groups)
 	static bool headers_printed = false;
 	bool print_data = true;
 
-	if (output_mode == STDOUT &&
-	    (stdout_header_repeat || !headers_printed)) {
-		unsigned int headers = stdout_lines % STDOUT_HEADER_REPEAT + 1;
+	if (output_mode == TEXT &&
+	    (text_header_repeat || !headers_printed)) {
+		unsigned int headers = text_lines % TEXT_HEADER_REPEAT + 1;
 
 		if (headers == 1 || headers == 2)
 			for (struct cnt_group **grp = groups; *grp; grp++)
@@ -2492,7 +2490,7 @@ int main(int argc, char **argv)
 			list_device = true;
 			break;
 		case 'l':
-			output_mode = STDOUT;
+			output_mode = TEXT;
 			break;
 		case 'h':
 			usage(argv[0]);
@@ -2505,7 +2503,7 @@ int main(int argc, char **argv)
 	}
 
 	if (output_mode == INTERACTIVE && (output_path || isatty(1) != 1))
-		output_mode = STDOUT;
+		output_mode = TEXT;
 
 	if (output_path && strcmp(output_path, "-")) {
 		out = fopen(output_path, "w");
@@ -2519,7 +2517,7 @@ int main(int argc, char **argv)
 		out = stdout;
 	}
 
-	stdout_header_repeat = output_mode == STDOUT && isatty(fileno(out));
+	text_header_repeat = output_mode == TEXT && isatty(fileno(out));
 
 	if (signal(SIGINT, sigint_handler) == SIG_ERR)
 		fprintf(stderr, "Failed to install signal handler!\n");
@@ -2531,8 +2529,8 @@ int main(int argc, char **argv)
 		pops = &term_pops;
 		interactive_stdin();
 		break;
-	case STDOUT:
-		pops = &stdout_pops;
+	case TEXT:
+		pops = &text_pops;
 		break;
 	case JSON:
 		pops = &json_pops;
-- 
2.34.1

