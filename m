Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C5996897C2
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Feb 2023 12:31:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 446D510E76A;
	Fri,  3 Feb 2023 11:31:31 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D946810E763;
 Fri,  3 Feb 2023 11:31:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675423889; x=1706959889;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=eeIBk3Ibs1Xg6u1Owpqsh8psPC8henZ6ul55lHyVxFA=;
 b=lp++3mLuFh+Bm4K6LsZQmn/O7w7KHySNitAoTXrmKqrNZpi/FE/2KaU8
 j/Go+TS3VfauTmZsSKOmvZaXuo3/VpqtoqerBzGW97mYYPcyTZlxnnOes
 yuXV/LjSfeYv9uA6gqY54pvbzbJzG6QXeHXgX2GoDumDv+TbhxMQ2uaul
 cUt/n+/6D0C/NoEuc2mVuqLFhdE2dAIv2+Epcv56En4vyZRrbTu2TsNGs
 VJbl2XlcDdNw3AKVW4ZonuIuCCgU/w8ahJX+2fRFhTC4pnJBnUeb53S4Y
 aBVx8OkTukxwWk+IjZ8tRkmvNmA4cBHsFWwxMds9VpUvLARHPjurUgSA6 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="330856553"
X-IronPort-AV: E=Sophos;i="5.97,270,1669104000"; d="scan'208";a="330856553"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2023 03:31:25 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="665689840"
X-IronPort-AV: E=Sophos;i="5.97,270,1669104000"; d="scan'208";a="665689840"
Received: from lhime-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.220.100])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2023 03:31:24 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
	Intel-gfx@lists.freedesktop.org
Date: Fri,  3 Feb 2023 11:31:19 +0000
Message-Id: <20230203113119.4139041-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230203111636.4138202-4-tvrtko.ursulin@linux.intel.com>
References: <20230203111636.4138202-4-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 3/3] intel_gpu_top: Add CSV output format
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

Add CSV output mode.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Caleb Callaway <caleb.callaway@intel.com>
---
 man/intel_gpu_top.rst |  3 ++
 tools/intel_gpu_top.c | 78 +++++++++++++++++++++++++++++++++++++++++--
 2 files changed, 78 insertions(+), 3 deletions(-)

diff --git a/man/intel_gpu_top.rst b/man/intel_gpu_top.rst
index 69834756b81e..2d041457a95e 100644
--- a/man/intel_gpu_top.rst
+++ b/man/intel_gpu_top.rst
@@ -31,6 +31,9 @@ OPTIONS
 -h
     Show help text.
 
+-c
+    Output CSV formatted data.
+
 -J
     Output JSON formatted data.
 
diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
index a980cc7043dc..2e1365959d8b 100644
--- a/tools/intel_gpu_top.c
+++ b/tools/intel_gpu_top.c
@@ -1268,6 +1268,7 @@ usage(const char *appname)
 		"\n"
 		"\tThe following parameters are optional:\n\n"
 		"\t[-h]            Show this help text.\n"
+		"\t[-c]            Output CSV formatted data.\n"
 		"\t[-J]            Output JSON formatted data.\n"
 		"\t[-l]            List plain text data.\n"
 		"\t[-o <file|->]   Output to specified file or '-' for standard out.\n"
@@ -1283,6 +1284,7 @@ usage(const char *appname)
 static enum {
 	INTERACTIVE,
 	TEXT,
+	CSV,
 	JSON
 } output_mode;
 
@@ -1457,6 +1459,22 @@ text_add_member(const struct cnt_group *parent, struct cnt_item *item,
 	return len > 0 ? len : 0;
 }
 
+static unsigned int
+csv_add_member(const struct cnt_group *parent, struct cnt_item *item,
+	       unsigned int headers)
+{
+	int len = 0;
+
+	if (headers)
+		fprintf(out, "%s %s", parent->display_name, item->unit);
+	else
+		len = fprintf(out, "%f",
+			      pmu_calc(&item->pmu->val, item->d, item->t,
+				       item->s));
+
+	return len > 0 ? len : 0;
+}
+
 static void
 term_open_struct(const char *name)
 {
@@ -1540,6 +1558,46 @@ print_group(struct cnt_group *grp, unsigned int headers)
 	return consumed;
 }
 
+static unsigned int csv_count, prev_csv_count;
+
+static void csv_close_struct(void)
+{
+	assert(text_level > 0);
+	if (--text_level == 0) {
+		csv_count = prev_csv_count = 0;
+		text_lines++;
+		fputs("\n", out);
+		fflush(out);
+	}
+}
+
+static bool
+csv_print_group(struct cnt_group *grp, unsigned int headers)
+{
+	unsigned int consumed = 0;
+	struct cnt_item *item;
+
+	if (!present_in_group(grp))
+		return false;
+
+	text_open_struct(grp->name);
+
+	for (item = grp->items; item->name; item++) {
+		if (!item->pmu || !item->pmu->present)
+			continue;
+
+		if (csv_count != prev_csv_count)
+			fprintf(out, ",");
+		prev_csv_count = csv_count++;
+
+		consumed += csv_add_member(grp, item, headers);
+	}
+
+	csv_close_struct();
+
+	return consumed;
+}
+
 static bool
 term_print_group(struct cnt_group *grp, unsigned int headers)
 {
@@ -1570,6 +1628,13 @@ static const struct print_operations text_pops = {
 	.print_group = print_group,
 };
 
+static const struct print_operations csv_pops = {
+	.open_struct = text_open_struct,
+	.close_struct = csv_close_struct,
+	.add_member = csv_add_member,
+	.print_group = csv_print_group,
+};
+
 static const struct print_operations term_pops = {
 	.open_struct = term_open_struct,
 	.close_struct = term_close_struct,
@@ -1582,11 +1647,12 @@ static bool print_groups(struct cnt_group **groups)
 	static bool headers_printed = false;
 	bool print_data = true;
 
-	if (output_mode == TEXT &&
+	if ((output_mode == TEXT || output_mode == CSV) &&
 	    (text_header_repeat || !headers_printed)) {
+		const unsigned int header_lines = output_mode == TEXT ? 2 : 1;
 		unsigned int headers = text_lines % TEXT_HEADER_REPEAT + 1;
 
-		if (headers == 1 || headers == 2)
+		if (headers > 0 && headers <= header_lines)
 			for (struct cnt_group **grp = groups; *grp; grp++)
 				print_data = pops->print_group(*grp, headers);
 
@@ -2469,7 +2535,7 @@ int main(int argc, char **argv)
 	char *codename = NULL;
 
 	/* Parse options */
-	while ((ch = getopt(argc, argv, "o:s:d:pJLlh")) != -1) {
+	while ((ch = getopt(argc, argv, "o:s:d:pcJLlh")) != -1) {
 		switch (ch) {
 		case 'o':
 			output_path = optarg;
@@ -2483,6 +2549,9 @@ int main(int argc, char **argv)
 		case 'p':
 			physical_engines = true;
 			break;
+		case 'c':
+			output_mode = CSV;
+			break;
 		case 'J':
 			output_mode = JSON;
 			break;
@@ -2532,6 +2601,9 @@ int main(int argc, char **argv)
 	case TEXT:
 		pops = &text_pops;
 		break;
+	case CSV:
+		pops = &csv_pops;
+		break;
 	case JSON:
 		pops = &json_pops;
 		break;
-- 
2.34.1

