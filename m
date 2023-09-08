Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B131D798720
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Sep 2023 14:34:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 139EF10E8CD;
	Fri,  8 Sep 2023 12:34:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2D8510E8C9;
 Fri,  8 Sep 2023 12:34:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694176489; x=1725712489;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cuxGT5L9HIwfX7ksAPrwS3YQqAmFkJTbMxKp8BGjoT0=;
 b=gPV4LlZklA9FO3Mq0tACfIwiBiZdykTX7kPpAo1dE5OymNmVjo9S/IC0
 ybaZPNA3j4AzJnIYEOj4uI+fLy9B2Xny3CJE6KDxSh1zusPZb4zOZZt1z
 +oSGMwkFEQBNP4VWSUsj24hGr1cZxWONESH/zDa6z+gZEnhDmByCoLVKD
 wcBGkLR12JwaNLoMlzg1mZDueYUt7HLKo40EdCE7x9tPjBJoV6gYn6i+G
 jFug8OIH4IeEVMgI6eth+SUxWWGoRWShkiEyPfuyvPstxw8QZ3XshYKWu
 L1xIcFvMnXu0p2tp509opslXb0VlJOq97rk8J9wDILlFUlwCxcyY+zagh Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10827"; a="375015033"
X-IronPort-AV: E=Sophos;i="6.02,237,1688454000"; d="scan'208";a="375015033"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2023 05:34:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10827"; a="857382045"
X-IronPort-AV: E=Sophos;i="6.02,237,1688454000"; d="scan'208";a="857382045"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.213.28.201])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2023 05:34:45 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri,  8 Sep 2023 14:32:47 +0200
Message-ID: <20230908123233.137134-32-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230908123233.137134-19-janusz.krzysztofik@linux.intel.com>
References: <20230908123233.137134-19-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t v2 13/17] lib/ktap: Reimplement KTAP parser
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
Cc: intel-gfx@lists.freedesktop.org,
 =?UTF-8?q?Dominik=20Karol=20Pi=C4=85tkowski?=
 <dominik.karol.piatkowski@intel.com>, Isabella Basso <isabbasso@riseup.net>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Current implementation of KTAP parser suffers from several issues:
- in most cases, kernel messages that are not part of KTAP output but
  happen to appear in between break the parser,
- results from parametrized test cases, not preceded with a "1..N" test
  plan, break the parser,
- skips are not supported, reported as success,
- IGT results from all 3 kunit test nesting levels, i.e., from
  parametrized subtests (should those were fixed to work correctly), test
  cases and test suites, are reported individually as if all those items
  were executed sequentially, all at the same level of nesting, which can
  be confusing to igt_runner,
- the parser is not only parsing the data, but also handles data input
  from a /dev/kmsg like source, which is integrated into it, making it
  hard if not impossible to feed KTAP data from different sources,
  including mock sources,
- since the parser has been designed for running it in a separate thread,
  it's not possible to use igt_skip() nor igt_fail() and friends
  immediately when a result is available, only pass it to the main thread
  over a buffer.  As a consequence, it is virtually impossible to
  synchronize IGT output with KTAP output.

Fixing the existing parser occurred more complicated than re-implementing
it from scratch.  This patch provides a new implementation.

Only results from kunit test cases are reported as results of IGT dynamic
sub-subtests.  Results from individual parametrized subtests have been
considered problematic since many of them provide multi-word descriptions
in place of single-word subtest names.  If a parametrized test case fails
then full KTAP output from its subtests, potentially mixed with
accompanying kernel messages, is available in dmesg for analysis so users
can still find out which individual subtests succeeded and which failed.

Results from test suites level are also omitted in faith that IGT can
handle aggregation of results from individual kunit test cases reported as
IGT dynamic sub-subtests and report those aggregated results correctly as
results from an IGT dynamic subtest.  That 1:1 mapping of kunit test
suites to IGT dynamic subtests now works perfectly for modules that
provide only one test suite, which is the case for all kunit test modules
now existing under drivers/gpu/drm, and the most common case among all
kunit test modules in the whole kernel tree.

New igt_ktap functions can be called directly from igt_kunit subtest body,
but for this patch, the old igt_ktap_parser() function that runs in a
separate thread has been preserved, only modified to use the new
implementation and translate results from those new functions to legacy
format.  Unlike the former implementation, translation of kunit names to
IGT names is handled outside the parser itself, though for now it is still
performed inside the legacy igt_ktap_parser() function.

For better readability of the patch, no longer used functions have been
left untouched, only tagged with __maybe_unused to shut up compiler
warnings / errors.  Kunit library functions will be modified to use the
new igt_ktap interface, and those old ktap functions removed by follow-
up patches.

A test with example subtests that feed igt_ktap_parse() function with some
example data and verifies correctness of their parsing is also provided.

v2: Fix incorrect and missing includes in the test source file,
  - add license and copyright clauses to the test source file.

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 lib/igt_ktap.c              | 422 ++++++++++++++++++++++++++++++++----
 lib/igt_ktap.h              |  15 ++
 lib/tests/igt_ktap_parser.c | 246 +++++++++++++++++++++
 lib/tests/meson.build       |   1 +
 4 files changed, 645 insertions(+), 39 deletions(-)
 create mode 100644 lib/tests/igt_ktap_parser.c

diff --git a/lib/igt_ktap.c b/lib/igt_ktap.c
index 5e9967f980..d46a2433e5 100644
--- a/lib/igt_ktap.c
+++ b/lib/igt_ktap.c
@@ -1,6 +1,7 @@
 // SPDX-License-Identifier: MIT
 /*
  * Copyright © 2023 Isabella Basso do Amaral <isabbasso@riseup.net>
+ * Copyright © 2023 Intel Corporation
  */
 
 #include <ctype.h>
@@ -8,12 +9,310 @@
 #include <libkmod.h>
 #include <pthread.h>
 #include <errno.h>
+#include <stdio.h>
+#include <stdlib.h>
+#include <string.h>
+#include <unistd.h>
 
 #include "igt_aux.h"
 #include "igt_core.h"
 #include "igt_ktap.h"
 #include "igt_list.h"
 
+enum ktap_phase {
+	KTAP_START,
+	SUITE_COUNT,
+	SUITE_START,
+	SUITE_NAME,
+	CASE_COUNT,
+	CASE_NAME,
+	SUB_RESULT,
+	CASE_RESULT,
+	SUITE_RESULT,
+};
+
+struct igt_ktap_results {
+	enum ktap_phase expect;
+	unsigned int suite_count;
+	unsigned int suite_last;
+	char *suite_name;
+	unsigned int case_count;
+	unsigned int case_last;
+	char *case_name;
+	unsigned int sub_last;
+	struct igt_list_head *results;
+};
+
+/**
+ * igt_ktap_parse:
+ *
+ * This function parses a line of text for KTAP report data
+ * and passes results back to IGT kunit layer.
+ */
+int igt_ktap_parse(const char *buf, struct igt_ktap_results *ktap)
+{
+	char *suite_name = NULL, *case_name = NULL, *msg = NULL;
+	struct igt_ktap_result *result;
+	int code = IGT_EXIT_INVALID;
+	unsigned int n, len;
+	char s[2];
+
+	/* KTAP report header */
+	if (igt_debug_on(sscanf(buf, "KTAP%*[ ]version%*[ ]%u %n",
+				&n, &len) == 1 && len == strlen(buf))) {
+		if (igt_debug_on(ktap->expect != KTAP_START))
+			return -EPROTO;
+
+		ktap->suite_count = 0;
+		ktap->expect = SUITE_COUNT;
+
+	/* malformed TAP test plan? */
+	} else if (len = 0,
+		   igt_debug_on(sscanf(buf, " 1..%1[ ]", s) == 1)) {
+		return -EINPROGRESS;
+
+	/* valid test plan of a KTAP report */
+	} else if (igt_debug_on(sscanf(buf, "1..%u %n", &n, &len) == 1 &&
+				len == strlen(buf))) {
+		if (igt_debug_on(ktap->expect != SUITE_COUNT))
+			return -EPROTO;
+
+		if (!n)
+			return 0;
+
+		ktap->suite_count = n;
+		ktap->suite_last = 0;
+		ktap->suite_name = NULL;
+		ktap->expect = SUITE_START;
+
+	/* KTAP test suite header */
+	} else if (len = 0,
+		   igt_debug_on(sscanf(buf,
+				       "%*1[ ]%*1[ ]%*1[ ]%*1[ ]KTAP%*[ ]version%*[ ]%u %n",
+				       &n, &len) == 1 && len == strlen(buf))) {
+		/*
+		 * TODO: drop the following workaround as soon as
+		 * kernel side issue of missing lines with top level
+		 * KTAP version and test suite plan is fixed.
+		 */
+		if (ktap->expect == KTAP_START) {
+			ktap->suite_count = 1;
+			ktap->suite_last = 0;
+			ktap->suite_name = NULL;
+			ktap->expect = SUITE_START;
+		}
+
+		if (igt_debug_on(ktap->expect != SUITE_START))
+			return -EPROTO;
+
+		ktap->expect = SUITE_NAME;
+
+	/* KTAP test suite name */
+	} else if (len = 0,
+		   igt_debug_on(sscanf(buf,
+				       "%*1[ ]%*1[ ]%*1[ ]%*1[ ]#%*[ ]Subtest:%*[ ]%ms %n",
+				       &suite_name, &len) == 1 && len == strlen(buf))) {
+		if (igt_debug_on(ktap->expect != SUITE_NAME))
+			return -EPROTO;
+
+		ktap->suite_name = suite_name;
+		suite_name = NULL;
+		ktap->case_count = 0;
+		ktap->expect = CASE_COUNT;
+
+	/* valid test plan of a KTAP test suite */
+	} else if (len = 0, free(suite_name), suite_name = NULL,
+		   igt_debug_on(sscanf(buf,
+				       "%*1[ ]%*1[ ]%*1[ ]%*1[ ]1..%u %n",
+				       &n, &len) == 1 && len == strlen(buf))) {
+		if (igt_debug_on(ktap->expect != CASE_COUNT))
+			return -EPROTO;
+
+		if (n) {
+			ktap->case_count = n;
+			ktap->case_last = 0;
+			ktap->case_name = NULL;
+			ktap->expect = CASE_RESULT;
+		} else {
+			ktap->expect = SUITE_RESULT;
+		}
+
+	/* KTAP parametrized test case header */
+	} else if (len = 0,
+		   igt_debug_on(sscanf(buf,
+				       "%*1[ ]%*1[ ]%*1[ ]%*1[ ]%*1[ ]%*1[ ]%*1[ ]%*1[ ]KTAP%*[ ]version%*[ ]%u %n",
+				       &n, &len) == 1 && len == strlen(buf))) {
+		if (igt_debug_on(ktap->expect != CASE_RESULT))
+			return -EPROTO;
+
+		ktap->sub_last = 0;
+		ktap->expect = CASE_NAME;
+
+	/* KTAP parametrized test case name */
+	} else if (len = 0,
+		   igt_debug_on(sscanf(buf,
+				       "%*1[ ]%*1[ ]%*1[ ]%*1[ ]%*1[ ]%*1[ ]%*1[ ]%*1[ ]#%*[ ]Subtest:%*[ ]%ms %n",
+				       &case_name, &len) == 1 && len == strlen(buf))) {
+		if (igt_debug_on(ktap->expect != CASE_NAME))
+			return -EPROTO;
+
+		n = ktap->case_last + 1;
+		ktap->expect = SUB_RESULT;
+
+	/* KTAP parametrized subtest result */
+	} else if (len = 0, free(case_name), case_name = NULL,
+		   igt_debug_on(sscanf(buf,
+				       "%*1[ ]%*1[ ]%*1[ ]%*1[ ]%*1[ ]%*1[ ]%*1[ ]%*1[ ]ok%*[ ]%u%*[ ]%*[^#\n]%1[#\n]",
+				       &n, s) == 2) ||
+		   igt_debug_on(sscanf(buf,
+				       "%*1[ ]%*1[ ]%*1[ ]%*1[ ]%*1[ ]%*1[ ]%*1[ ]%*1[ ]not%*1[ ]ok%*[ ]%u%*[ ]%*[^#\n]%1[#\n]",
+				       &n, s) == 2)) {
+		/* at lease one result of a parametrised subtest expected */
+		if (igt_debug_on(ktap->expect == SUB_RESULT &&
+				 ktap->sub_last == 0))
+			ktap->expect = CASE_RESULT;
+
+		if (igt_debug_on(ktap->expect != CASE_RESULT) ||
+		    igt_debug_on(n != ++ktap->sub_last))
+			return -EPROTO;
+
+	/* KTAP test case skip result */
+	} else if ((igt_debug_on(sscanf(buf,
+					"%*1[ ]%*1[ ]%*1[ ]%*1[ ]ok%*[ ]%u%*[ ]%ms%*[ ]#%*[ ]SKIP %n",
+					&n, &case_name, &len) == 2 &&
+				 len == strlen(buf))) ||
+		   (len = 0, free(case_name), case_name = NULL,
+		    igt_debug_on(sscanf(buf,
+					"%*1[ ]%*1[ ]%*1[ ]%*1[ ]ok%*[ ]%u%*[ ]%ms%*[ ]#%*[ ]SKIP%*[ ]%m[^\n]",
+					&n, &case_name, &msg) == 3))) {
+		code = IGT_EXIT_SKIP;
+
+	/* KTAP test case pass result */
+	} else if ((free(case_name), case_name = NULL, free(msg), msg = NULL,
+		    igt_debug_on(sscanf(buf,
+					"%*1[ ]%*1[ ]%*1[ ]%*1[ ]ok%*[ ]%u%*[ ]%ms %n",
+					&n, &case_name, &len) == 2 &&
+				 len == strlen(buf))) ||
+		   (len = 0, free(case_name), case_name = NULL,
+		    igt_debug_on(sscanf(buf,
+					"%*1[ ]%*1[ ]%*1[ ]%*1[ ]ok%*[ ]%u%*[ ]%ms%*[ ]#%*[ ]%m[^\n]",
+					&n, &case_name, &msg) == 3))) {
+		code = IGT_EXIT_SUCCESS;
+
+	/* KTAP test case fail result */
+	} else if ((free(case_name), case_name = NULL, free(msg), msg = NULL,
+		    igt_debug_on(sscanf(buf,
+					"%*1[ ]%*1[ ]%*1[ ]%*1[ ]not%*1[ ]ok%*[ ]%u%*[ ]%ms %n",
+					&n, &case_name, &len) == 2 &&
+				 len == strlen(buf))) ||
+		   (len = 0, free(case_name), case_name = NULL,
+		    igt_debug_on(sscanf(buf,
+					"%*1[ ]%*1[ ]%*1[ ]%*1[ ]not%*1[ ]ok%*[ ]%u%*[ ]%ms%*[ ]#%*[ ]%m[^\n]",
+					&n, &case_name, &msg) == 3))) {
+		code = IGT_EXIT_FAILURE;
+
+	/* KTAP test suite result */
+	} else if ((free(case_name), free(msg),
+		    igt_debug_on(sscanf(buf, "ok%*[ ]%u%*[ ]%ms %n",
+					&n, &suite_name, &len) == 2 &&
+				 len == strlen(buf))) ||
+		   (len = 0, free(suite_name), suite_name = NULL,
+		    igt_debug_on(sscanf(buf, "ok%*[ ]%u%*[ ]%ms%*[ ]%1[#]",
+					&n, &suite_name, s) == 3)) ||
+		   (free(suite_name), suite_name = NULL,
+		    igt_debug_on(sscanf(buf,
+					"not%*[ ]ok%*[ ]%u%*[ ]%ms %n",
+					&n, &suite_name, &len) == 2 &&
+				 len == strlen(buf))) ||
+		   (len = 0, free(suite_name), suite_name = NULL,
+		    igt_debug_on(sscanf(buf,
+					"not%*[ ]ok%*[ ]%u%*[ ]%ms%*[ ]%1[#]",
+					&n, &suite_name, s) == 3))) {
+		if (igt_debug_on(ktap->expect != SUITE_RESULT) ||
+		    igt_debug_on(strcmp(suite_name, ktap->suite_name)) ||
+		    igt_debug_on(n != ++ktap->suite_last) ||
+		    igt_debug_on(n > ktap->suite_count)) {
+			free(suite_name);
+			return -EPROTO;
+		}
+		free(suite_name);
+
+		/* last test suite? */
+		if (igt_debug_on(n == ktap->suite_count))
+			return 0;
+
+		ktap->suite_name = NULL;
+		ktap->expect = SUITE_START;
+
+	} else {
+		return -EINPROGRESS;
+	}
+
+	/* neither a test case name nor result */
+	if (ktap->expect != SUB_RESULT && code == IGT_EXIT_INVALID)
+		return -EINPROGRESS;
+
+	if (igt_debug_on(ktap->expect == SUB_RESULT &&
+			 code != IGT_EXIT_INVALID) ||
+	    igt_debug_on(code != IGT_EXIT_INVALID &&
+			 ktap->expect != CASE_RESULT) ||
+	    igt_debug_on(!ktap->suite_name) || igt_debug_on(!case_name) ||
+	    igt_debug_on(ktap->expect == CASE_RESULT && ktap->case_name &&
+			 strcmp(case_name, ktap->case_name)) ||
+	    igt_debug_on(n > ktap->case_count) ||
+	    igt_debug_on(n != (ktap->expect == SUB_RESULT ?
+			       ktap->case_last + 1: ++ktap->case_last))) {
+		free(case_name);
+		free(msg);
+		return -EPROTO;
+	}
+
+	if (ktap->expect == SUB_RESULT) {
+		/* KTAP parametrized test case name */
+		ktap->case_name = case_name;
+
+	} else {
+		/* KTAP test case result */
+		ktap->case_name = NULL;
+
+		/* last test case in a suite */
+		if (n == ktap->case_count)
+			ktap->expect = SUITE_RESULT;
+	}
+
+	if (igt_debug_on((result = calloc(1, sizeof(*result)), !result))) {
+		free(case_name);
+		free(msg);
+		return -ENOMEM;
+	}
+
+	result->suite_name = ktap->suite_name;
+	result->case_name = case_name;
+	result->code = code;
+	result->msg = msg;
+	igt_list_add_tail(&result->link, ktap->results);
+
+	return -EINPROGRESS;
+}
+
+struct igt_ktap_results *igt_ktap_alloc(struct igt_list_head *results)
+{
+	struct igt_ktap_results *ktap = calloc(1, sizeof(*ktap));
+
+	if (!ktap)
+		return NULL;
+
+	ktap->expect = KTAP_START;
+	ktap->results = results;
+
+	return ktap;
+}
+
+void igt_ktap_free(struct igt_ktap_results *ktap)
+{
+	free(ktap);
+}
+
 #define DELIMITER "-"
 
 struct ktap_parser_args {
@@ -332,6 +631,7 @@ static int parse_kmsg_for_tap(int fd, char *record, char *test_name)
  * 0 if succeded
  * -1 if error occurred
  */
+__maybe_unused
 static int parse_tap_level(int fd, char *base_test_name, int test_count, bool *failed_tests,
 			   bool *found_tests, bool is_builtin)
 {
@@ -445,62 +745,106 @@ static int parse_tap_level(int fd, char *base_test_name, int test_count, bool *f
  */
 void *igt_ktap_parser(void *unused)
 {
+	char record[BUF_LEN + 1], *buf, *suite_name = NULL, *case_name = NULL;
+	struct igt_ktap_results *ktap = NULL;
 	int fd = ktap_args.fd;
-	char record[BUF_LEN + 1];
-	bool is_builtin = ktap_args.is_builtin;
-	char test_name[BUF_LEN + 1];
-	bool failed_tests, found_tests;
-	int test_count;
+	IGT_LIST_HEAD(list);
+	int err;
 
-	failed_tests = false;
-	found_tests = false;
+	ktap = igt_ktap_alloc(&list);
+	if (igt_debug_on(!ktap))
+		goto igt_ktap_parser_end;
 
-igt_ktap_parser_start:
-	test_name[0] = '\0';
-	test_name[BUF_LEN] = '\0';
+	while (err = read(fd, record, BUF_LEN), err > 0) {
+		struct igt_ktap_result *r, *rn;
 
-	if (read(fd, record, BUF_LEN) < 0) {
-		if (errno == EPIPE)
-			igt_warn("kmsg truncated: too many messages. You may want to increase log_buf_len in kmcdline\n");
-		else if (errno != EINTR)
-			igt_warn("error reading kmsg (%m)\n");
+		/* skip kmsg continuation lines */
+		if (igt_debug_on(*record == ' '))
+			continue;
 
-		goto igt_ktap_parser_end;
-	}
+		/* NULL-terminate the record */
+		record[err] = '\0';
 
-	test_count = find_next_tap_subtest(fd, record, test_name, is_builtin);
+		/* detect start of log message, continue if not found */
+		buf = strchrnul(record, ';');
+		if (igt_debug_on(*buf == '\0'))
+			continue;
+		buf++;
 
-	switch (test_count) {
-	case -2:
-		/* Problems while reading the file */
-		goto igt_ktap_parser_end;
-	case -1:
-		/* No test found */
-		goto igt_ktap_parser_start;
-	case 0:
-		/* Tests found, but they're missing info */
-		found_tests = true;
-		goto igt_ktap_parser_end;
-	default:
-		found_tests = true;
+		err = igt_ktap_parse(buf, ktap);
 
-		if (parse_tap_level(fd, test_name, test_count, &failed_tests, &found_tests,
-				    is_builtin) == -1)
+		/* parsing error */
+		if (err && err != -EINPROGRESS)
 			goto igt_ktap_parser_end;
 
-		break;
+		igt_list_for_each_entry_safe(r, rn, &list, link) {
+			struct ktap_test_results_element *result = NULL;
+			int code = r->code;
+
+			if (code != IGT_EXIT_INVALID)
+				result = calloc(1, sizeof(*result));
+
+			if (result) {
+				snprintf(result->test_name, sizeof(result->test_name),
+					 "%s-%s", r->suite_name, r->case_name);
+
+				if (code == IGT_EXIT_SUCCESS)
+					result->passed = true;
+			}
+
+			igt_list_del(&r->link);
+			if (r->suite_name != suite_name) {
+				free(suite_name);
+				suite_name = r->suite_name;
+			}
+			if (r->case_name != case_name) {
+				free(case_name);
+				case_name = r->case_name;
+			}
+			free(r->msg);
+			free(r);
+
+			/*
+			 * no extra result record expected on start
+			 * of parametrized test case -- skip it
+			 */
+			if (code == IGT_EXIT_INVALID)
+				continue;
+
+			if (!result) {
+				err = -ENOMEM;
+				goto igt_ktap_parser_end;
+			}
+
+			pthread_mutex_lock(&results.mutex);
+			igt_list_add_tail(&result->link, &results.list);
+			pthread_mutex_unlock(&results.mutex);
+		}
+
+		/* end of KTAP report */
+		if (!err)
+			goto igt_ktap_parser_end;
 	}
 
-	/* Parse topmost level */
-	test_name[0] = '\0';
-	parse_tap_level(fd, test_name, test_count, &failed_tests, &found_tests, is_builtin);
+	if (err < 0) {
+		if (errno == EPIPE)
+			igt_warn("kmsg truncated: too many messages. You may want to increase log_buf_len in kmcdline\n");
+		else if (errno != EINTR)
+			igt_warn("error reading kmsg (%m)\n");
+	}
 
 igt_ktap_parser_end:
-	results.still_running = false;
+	free(suite_name);
+	free(case_name);
 
-	if (found_tests && !failed_tests)
+	if (!err)
 		ktap_args.ret = IGT_EXIT_SUCCESS;
 
+	results.still_running = false;
+
+	if (ktap)
+		igt_ktap_free(ktap);
+
 	return NULL;
 }
 
diff --git a/lib/igt_ktap.h b/lib/igt_ktap.h
index b4d7a6dbc7..6f8da3eab6 100644
--- a/lib/igt_ktap.h
+++ b/lib/igt_ktap.h
@@ -1,5 +1,6 @@
 /*
  * Copyright © 2022 Isabella Basso do Amaral <isabbasso@riseup.net>
+ * Copyright © 2023 Intel Corporation
  *
  * Permission is hereby granted, free of charge, to any person obtaining a
  * copy of this software and associated documentation files (the "Software"),
@@ -30,6 +31,20 @@
 
 #include "igt_list.h"
 
+struct igt_ktap_result {
+	struct igt_list_head link;
+	char *suite_name;
+	char *case_name;
+	char *msg;
+	int code;
+};
+
+struct igt_ktap_results;
+
+struct igt_ktap_results *igt_ktap_alloc(struct igt_list_head *results);
+int igt_ktap_parse(const char *buf, struct igt_ktap_results *ktap);
+void igt_ktap_free(struct igt_ktap_results *ktap);
+
 void *igt_ktap_parser(void *unused);
 
 typedef struct ktap_test_results_element {
diff --git a/lib/tests/igt_ktap_parser.c b/lib/tests/igt_ktap_parser.c
new file mode 100644
index 0000000000..6357bdf6a5
--- /dev/null
+++ b/lib/tests/igt_ktap_parser.c
@@ -0,0 +1,246 @@
+// SPDX-License-Identifier: MIT
+/*
+* Copyright © 2023 Intel Corporation
+*/
+
+#include <errno.h>
+#include <stdio.h>
+#include <stdlib.h>
+#include <string.h>
+
+#include "igt_core.h"
+#include "igt_ktap.h"
+#include "igt_list.h"
+
+static void ktap_list(void)
+{
+	struct igt_ktap_result *result, *rn;
+	struct igt_ktap_results *ktap;
+	int suite = 1, test = 1;
+	IGT_LIST_HEAD(results);
+
+	ktap = igt_ktap_alloc(&results);
+	igt_require(ktap);
+
+	igt_assert_eq(igt_ktap_parse("KTAP version 1\n", ktap), -EINPROGRESS);
+	igt_assert_eq(igt_ktap_parse("1..3\n", ktap), -EINPROGRESS);
+	igt_assert_eq(igt_ktap_parse("    KTAP version 1\n", ktap), -EINPROGRESS);
+	igt_assert_eq(igt_ktap_parse("    # Subtest: test_suite_1\n", ktap), -EINPROGRESS);
+	igt_assert_eq(igt_ktap_parse("    1..3\n", ktap), -EINPROGRESS);
+	igt_assert_eq(igt_ktap_parse("    ok 1 test_case_1 # SKIP\n", ktap), -EINPROGRESS);
+	igt_assert_eq(igt_ktap_parse("    ok 2 test_case_2 # SKIP\n", ktap), -EINPROGRESS);
+	igt_assert_eq(igt_ktap_parse("    ok 3 test_case_3 # SKIP\n", ktap), -EINPROGRESS);
+	igt_assert_eq(igt_ktap_parse("ok 1 test_suite_1\n", ktap), -EINPROGRESS);
+	igt_assert_eq(igt_ktap_parse("    KTAP version 1\n", ktap), -EINPROGRESS);
+	igt_assert_eq(igt_ktap_parse("    # Subtest: test_suite_2\n", ktap), -EINPROGRESS);
+	igt_assert_eq(igt_ktap_parse("    1..1\n", ktap), -EINPROGRESS);
+	igt_assert_eq(igt_ktap_parse("    ok 1 test_case_1 # SKIP\n", ktap), -EINPROGRESS);
+	igt_assert_eq(igt_ktap_parse("ok 2 test_suite_2\n", ktap), -EINPROGRESS);
+	igt_assert_eq(igt_ktap_parse("    KTAP version 1\n", ktap), -EINPROGRESS);
+	igt_assert_eq(igt_ktap_parse("    # Subtest: test_suite_3\n", ktap), -EINPROGRESS);
+	igt_assert_eq(igt_ktap_parse("    1..4\n", ktap), -EINPROGRESS);
+	igt_assert_eq(igt_ktap_parse("    ok 1 test_case_1 # SKIP\n", ktap), -EINPROGRESS);
+	igt_assert_eq(igt_ktap_parse("    ok 2 test_case_2 # SKIP\n", ktap), -EINPROGRESS);
+	igt_assert_eq(igt_ktap_parse("    ok 3 test_case_3 # SKIP\n", ktap), -EINPROGRESS);
+	igt_assert_eq(igt_ktap_parse("    ok 4 test_case_4 # SKIP\n", ktap), -EINPROGRESS);
+	igt_assert_eq(igt_ktap_parse("ok 3 test_suite_3\n", ktap), 0);
+
+	igt_ktap_free(ktap);
+
+	igt_assert_eq(igt_list_length(&results), 8);
+
+	igt_list_for_each_entry_safe(result, rn, &results, link) {
+		char *case_name, *suite_name;
+
+		igt_list_del(&result->link);
+
+		igt_assert_lt(0, asprintf(&case_name, "test_case_%u", test));
+		igt_assert_lt(0, asprintf(&suite_name, "test_suite_%u", suite));
+
+		igt_assert(result->case_name);
+		igt_assert_eq(strcmp(result->case_name, case_name), 0);
+		free(result->case_name);
+		free(case_name);
+
+		igt_assert(result->suite_name);
+		igt_assert_eq(strcmp(result->suite_name, suite_name), 0);
+		free(suite_name);
+
+		igt_assert(!result->msg);
+		igt_assert_eq(result->code, IGT_EXIT_SKIP);
+
+		if ((suite == 1 && test < 3) || (suite == 3 && test < 4)) {
+			test++;
+		} else {
+			free(result->suite_name);
+			suite++;
+			test = 1;
+		}
+
+		free(result);
+	}
+}
+
+static void ktap_results(void)
+{
+	struct igt_ktap_result *result;
+	struct igt_ktap_results *ktap;
+	char *suite_name, *case_name;
+	IGT_LIST_HEAD(results);
+
+	ktap = igt_ktap_alloc(&results);
+	igt_require(ktap);
+
+	igt_assert_eq(igt_ktap_parse("KTAP version 1\n", ktap), -EINPROGRESS);
+	igt_assert_eq(igt_ktap_parse("1..1\n", ktap), -EINPROGRESS);
+	igt_assert_eq(igt_ktap_parse("    KTAP version 1\n", ktap), -EINPROGRESS);
+	igt_assert_eq(igt_ktap_parse("    # Subtest: test_suite\n", ktap), -EINPROGRESS);
+	igt_assert_eq(igt_ktap_parse("    1..1\n", ktap), -EINPROGRESS);
+	igt_assert_eq(igt_ktap_parse("        KTAP version 1\n", ktap), -EINPROGRESS);
+	igt_assert_eq(igt_ktap_parse("        # Subtest: test_case\n", ktap), -EINPROGRESS);
+	igt_assert_eq(igt_ktap_parse("        ok 1 parameter 1\n", ktap), -EINPROGRESS);
+	igt_assert_eq(igt_ktap_parse("        ok 2 parameter 2 # a comment\n", ktap), -EINPROGRESS);
+	igt_assert_eq(igt_ktap_parse("        ok 3 parameter 3 # SKIP\n", ktap), -EINPROGRESS);
+	igt_assert_eq(igt_ktap_parse("        ok 4 parameter 4 # SKIP with a message\n", ktap), -EINPROGRESS);
+	igt_assert_eq(igt_ktap_parse("        not ok 5 parameter 5\n", ktap), -EINPROGRESS);
+	igt_assert_eq(igt_ktap_parse("        not ok 6 parameter 6 # failure message\n", ktap), -EINPROGRESS);
+	igt_assert_eq(igt_ktap_parse("    ok 1 test_case\n", ktap), -EINPROGRESS);
+	igt_assert_eq(igt_ktap_parse("not ok 1 test_suite\n", ktap), 0);
+
+	igt_ktap_free(ktap);
+
+	igt_assert_eq(igt_list_length(&results), 2);
+
+	result = igt_list_first_entry(&results, result, link);
+	igt_list_del(&result->link);
+	igt_assert_eq(strcmp(result->suite_name, "test_suite"), 0);
+	igt_assert_eq(strcmp(result->case_name, "test_case"), 0);
+	igt_assert_eq(result->code, IGT_EXIT_INVALID);
+	igt_assert(!result->msg);
+	free(result->msg);
+	suite_name = result->suite_name;
+	case_name = result->case_name;
+	free(result);
+
+	result = igt_list_first_entry(&results, result, link);
+	igt_list_del(&result->link);
+	igt_assert_eq(strcmp(result->suite_name, suite_name), 0);
+	igt_assert_eq(strcmp(result->case_name, case_name), 0);
+	igt_assert_neq(result->code, IGT_EXIT_INVALID);
+	free(result->msg);
+	free(suite_name);
+	free(case_name);
+	free(result);
+}
+
+static void ktap_success(void)
+{
+	struct igt_ktap_result *result;
+	struct igt_ktap_results *ktap;
+	IGT_LIST_HEAD(results);
+
+	ktap = igt_ktap_alloc(&results);
+	igt_require(ktap);
+
+	igt_assert_eq(igt_ktap_parse("KTAP version 1\n", ktap), -EINPROGRESS);
+	igt_assert_eq(igt_ktap_parse("1..1\n", ktap), -EINPROGRESS);
+	igt_assert_eq(igt_ktap_parse("    KTAP version 1\n", ktap), -EINPROGRESS);
+	igt_assert_eq(igt_ktap_parse("    # Subtest: test_suite\n", ktap), -EINPROGRESS);
+	igt_assert_eq(igt_ktap_parse("    1..1\n", ktap), -EINPROGRESS);
+	igt_assert_eq(igt_ktap_parse("        KTAP version 1\n", ktap), -EINPROGRESS);
+	igt_assert(igt_list_empty(&results));
+
+	igt_assert_eq(igt_ktap_parse("        # Subtest: test_case\n", ktap), -EINPROGRESS);
+	igt_assert_eq(igt_list_length(&results), 1);
+
+	igt_assert_eq(igt_ktap_parse("        ok 1 parameter # SKIP\n", ktap), -EINPROGRESS);
+	igt_assert_eq(igt_list_length(&results), 1);
+
+	igt_assert_eq(igt_ktap_parse("    ok 1 test_case\n", ktap), -EINPROGRESS);
+	igt_assert_eq(igt_list_length(&results), 2);
+
+	igt_assert_eq(igt_ktap_parse("not ok 1 test_suite\n", ktap), 0);
+	igt_assert_eq(igt_list_length(&results), 2);
+
+	igt_ktap_free(ktap);
+
+	result = igt_list_last_entry(&results, result, link);
+	igt_list_del(&result->link);
+	igt_assert_eq(result->code, IGT_EXIT_SUCCESS);
+	free(result->msg);
+	free(result);
+
+	result = igt_list_last_entry(&results, result, link);
+	igt_list_del(&result->link);
+	free(result->suite_name);
+	free(result->case_name);
+	free(result->msg);
+	free(result);
+}
+
+static void ktap_top_version(void)
+{
+	struct igt_ktap_results *ktap;
+	IGT_LIST_HEAD(results);
+
+	ktap = igt_ktap_alloc(&results);
+	igt_require(ktap);
+	igt_assert_eq(igt_ktap_parse("1..1\n", ktap), -EPROTO);
+	igt_ktap_free(ktap);
+
+	ktap = igt_ktap_alloc(&results);
+	igt_require(ktap);
+	/* TODO: change to -EPROTO as soon as related workaround is dropped */
+	igt_assert_eq(igt_ktap_parse("    KTAP version 1\n", ktap), -EINPROGRESS);
+	igt_ktap_free(ktap);
+
+	ktap = igt_ktap_alloc(&results);
+	igt_require(ktap);
+	igt_assert_eq(igt_ktap_parse("    # Subtest: test_suite\n", ktap), -EPROTO);
+	igt_ktap_free(ktap);
+
+	ktap = igt_ktap_alloc(&results);
+	igt_require(ktap);
+	igt_assert_eq(igt_ktap_parse("    1..1\n", ktap), -EPROTO);
+	igt_ktap_free(ktap);
+
+	ktap = igt_ktap_alloc(&results);
+	igt_require(ktap);
+	igt_assert_eq(igt_ktap_parse("        KTAP version 1\n", ktap), -EPROTO);
+	igt_ktap_free(ktap);
+
+	ktap = igt_ktap_alloc(&results);
+	igt_require(ktap);
+	igt_assert_eq(igt_ktap_parse("        # Subtest: test_case\n", ktap), -EPROTO);
+	igt_ktap_free(ktap);
+
+	ktap = igt_ktap_alloc(&results);
+	igt_require(ktap);
+	igt_assert_eq(igt_ktap_parse("        ok 1 parameter 1\n", ktap), -EPROTO);
+	igt_ktap_free(ktap);
+
+	ktap = igt_ktap_alloc(&results);
+	igt_require(ktap);
+	igt_assert_eq(igt_ktap_parse("    ok 1 test_case\n", ktap), -EPROTO);
+	igt_ktap_free(ktap);
+
+	ktap = igt_ktap_alloc(&results);
+	igt_require(ktap);
+	igt_assert_eq(igt_ktap_parse("ok 1 test_suite\n", ktap), -EPROTO);
+	igt_ktap_free(ktap);
+}
+
+igt_main
+{
+	igt_subtest("list")
+		ktap_list();
+
+	igt_subtest("results")
+		ktap_results();
+
+	igt_subtest("success")
+		ktap_success();
+
+	igt_subtest("top-ktap-version")
+		ktap_top_version();
+}
diff --git a/lib/tests/meson.build b/lib/tests/meson.build
index 7a52a7876e..fa3d81de6c 100644
--- a/lib/tests/meson.build
+++ b/lib/tests/meson.build
@@ -10,6 +10,7 @@ lib_tests = [
 	'igt_exit_handler',
 	'igt_fork',
 	'igt_fork_helper',
+        'igt_ktap_parser',
 	'igt_list_only',
 	'igt_invalid_subtest_name',
 	'igt_nesting',
-- 
2.41.0

