Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C8A879861A
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Sep 2023 12:47:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9F1D10E8B0;
	Fri,  8 Sep 2023 10:46:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2553410E8A8;
 Fri,  8 Sep 2023 10:46:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694170016; x=1725706016;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HhDqo32MszZssHLTSAT2xyQFfOK8Zqcmn9pBpLwuOmc=;
 b=lceYuIlc6siChVdOh4rz/ChA0GmAyPgqLDwq3hYKbO4ZtR2SxC4qjRaP
 B7MDzo+PJU6h1aHq4sCtwTlu+PnSkssFEpQPwFnA6ml5+X1zhhXTmFLVi
 p8B25jbf4gQdxMMxddMM0qUz5uG0XY8eDqD3QdwMeoepjhzK5B1Jb1wAR
 G1cnvUipWqIp+yVRCJwJ8Gqm6YiEWojkRu2wSIxoKAcorj6KM1ABfarfy
 cbP8OZcseTDWm0MLv1ewj5eVQ6PsTlZHjndSmc6uP9X6DVg3+hCYth/MZ
 mR92MLwcgVuFTc4xNWytMUHGmu5DsD+/YtnwAC5K6l0O2am5q0jttCumS w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="357922665"
X-IronPort-AV: E=Sophos;i="6.02,236,1688454000"; d="scan'208";a="357922665"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2023 03:46:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="812531617"
X-IronPort-AV: E=Sophos;i="6.02,236,1688454000"; d="scan'208";a="812531617"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.213.28.201])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2023 03:46:53 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri,  8 Sep 2023 12:44:51 +0200
Message-ID: <20230908104438.125454-31-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230908104438.125454-19-janusz.krzysztofik@linux.intel.com>
References: <20230908104438.125454-19-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 12/17] lib/ktap: Use IGT linked lists for
 storing KTAP results
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

For code simplicity and clarity, use existing IGT linked lists library
instead of open coding a custom implementation of a list of KTAP results.

While being at it, flatten the code by inverting a check for pending
results.

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 lib/igt_kmod.c | 28 ++++++++++++++++------------
 lib/igt_ktap.c | 25 +++++--------------------
 lib/igt_ktap.h |  6 ++++--
 3 files changed, 25 insertions(+), 34 deletions(-)

diff --git a/lib/igt_kmod.c b/lib/igt_kmod.c
index 988ac164cb..c692954911 100644
--- a/lib/igt_kmod.c
+++ b/lib/igt_kmod.c
@@ -760,7 +760,6 @@ static void __igt_kunit(struct igt_ktest *tst, const char *opts)
 	struct kmod_module *kunit_kmod;
 	bool is_builtin;
 	struct ktap_test_results *results;
-	struct ktap_test_results_element *temp;
 	unsigned long taints;
 	int flags, ret;
 
@@ -784,28 +783,33 @@ static void __igt_kunit(struct igt_ktest *tst, const char *opts)
 		igt_skip("Unable to load %s module\n", tst->module_name);
 	}
 
-	while (READ_ONCE(results->still_running) || READ_ONCE(results->head) != NULL)
+	while (READ_ONCE(results->still_running) || !igt_list_empty(&results->list))
 	{
+		struct ktap_test_results_element *result;
+
 		if (igt_kernel_tainted(&taints)) {
 			ktap_parser_cancel();
 			break;
 		}
 
-		if (READ_ONCE(results->head) != NULL) {
-			pthread_mutex_lock(&results->mutex);
+		pthread_mutex_lock(&results->mutex);
+		if (igt_list_empty(&results->list)) {
+			pthread_mutex_unlock(&results->mutex);
+			continue;
+		}
 
-			igt_dynamic(results->head->test_name) {
-				igt_assert(READ_ONCE(results->head->passed));
+		result = igt_list_first_entry(&results->list, result, link);
 
-				igt_fail_on(igt_kernel_tainted(&taints));
-			}
+		igt_list_del(&result->link);
+		pthread_mutex_unlock(&results->mutex);
 
-			temp = results->head;
-			results->head = results->head->next;
-			free(temp);
+		igt_dynamic(result->test_name) {
+			igt_assert(READ_ONCE(result->passed));
 
-			pthread_mutex_unlock(&results->mutex);
+			igt_fail_on(igt_kernel_tainted(&taints));
 		}
+
+		free(result);
 	}
 
 	ret = ktap_parser_stop();
diff --git a/lib/igt_ktap.c b/lib/igt_ktap.c
index 165f6b2cce..5e9967f980 100644
--- a/lib/igt_ktap.c
+++ b/lib/igt_ktap.c
@@ -12,6 +12,7 @@
 #include "igt_aux.h"
 #include "igt_core.h"
 #include "igt_ktap.h"
+#include "igt_list.h"
 
 #define DELIMITER "-"
 
@@ -335,7 +336,7 @@ static int parse_tap_level(int fd, char *base_test_name, int test_count, bool *f
 			   bool *found_tests, bool is_builtin)
 {
 	char record[BUF_LEN + 1];
-	struct ktap_test_results_element *r, *temp;
+	struct ktap_test_results_element *r;
 	int internal_test_count;
 	char test_name[BUF_LEN + 1];
 	char base_test_name_for_next_level[BUF_LEN + 1];
@@ -403,17 +404,9 @@ static int parse_tap_level(int fd, char *base_test_name, int test_count, bool *f
 			r->test_name[BUF_LEN] = '\0';
 
 			r->passed = false;
-			r->next = NULL;
 
 			pthread_mutex_lock(&results.mutex);
-			if (results.head == NULL) {
-				results.head = r;
-			} else {
-				temp = results.head;
-				while (temp->next != NULL)
-					temp = temp->next;
-				temp->next = r;
-			}
+			igt_list_add_tail(&r->link, &results.list);
 			pthread_mutex_unlock(&results.mutex);
 
 			test_name[0] = '\0';
@@ -431,17 +424,9 @@ static int parse_tap_level(int fd, char *base_test_name, int test_count, bool *f
 			r->test_name[BUF_LEN] = '\0';
 
 			r->passed = true;
-			r->next = NULL;
 
 			pthread_mutex_lock(&results.mutex);
-			if (results.head == NULL) {
-				results.head = r;
-			} else {
-				temp = results.head;
-				while (temp->next != NULL)
-					temp = temp->next;
-				temp->next = r;
-			}
+			igt_list_add_tail(&r->link, &results.list);
 			pthread_mutex_unlock(&results.mutex);
 
 			test_name[0] = '\0';
@@ -523,7 +508,7 @@ static pthread_t ktap_parser_thread;
 
 struct ktap_test_results *ktap_parser_start(int fd, bool is_builtin)
 {
-	results.head = NULL;
+	IGT_INIT_LIST_HEAD(&results.list);
 	pthread_mutex_init(&results.mutex, NULL);
 	results.still_running = true;
 
diff --git a/lib/igt_ktap.h b/lib/igt_ktap.h
index 991800e912..b4d7a6dbc7 100644
--- a/lib/igt_ktap.h
+++ b/lib/igt_ktap.h
@@ -28,16 +28,18 @@
 
 #include <pthread.h>
 
+#include "igt_list.h"
+
 void *igt_ktap_parser(void *unused);
 
 typedef struct ktap_test_results_element {
 	char test_name[BUF_LEN + 1];
 	bool passed;
-	struct ktap_test_results_element *next;
+	struct igt_list_head link;
 } ktap_test_results_element;
 
 struct ktap_test_results {
-	ktap_test_results_element *head;
+	struct igt_list_head list;
 	pthread_mutex_t mutex;
 	bool still_running;
 };
-- 
2.41.0

