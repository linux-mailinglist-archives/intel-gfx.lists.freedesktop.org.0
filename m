Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AD3879871C
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Sep 2023 14:34:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FB0E10E8A7;
	Fri,  8 Sep 2023 12:34:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C15710E8A7;
 Fri,  8 Sep 2023 12:34:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694176479; x=1725712479;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Iy4Wkm7BIqZQeR2Ce2G1c7URzd6FFKkhSvdr4zNM74I=;
 b=guAR9v3J1tfikmFhM0WrMYmY2MO2dToSTF6aASIUcDt4JLixnatUiT6a
 nmE03yV0162GUWk99tGlPlHJ8tt09HBOP5FrIDbsg0Fi2Y3/evSpQStdE
 MQUTQ/CL3IIAnUqMCejqTIiqF+zqVoHvG9qm3RFUXuOxkkM8LLEEmY1yk
 0jYvWTqzOcKnuTjDwqSb1blU+lBwNUo7cLkCFkk4DproQ+n7TmQOqmV/c
 OL+uEbK/yCMlCSv2f4PKRFYXPiVaTkRQ1JnpWhgbZRsf9HEWS+uIMbGOO
 5y7Pw3l1oCpC1uwjNPQPNO06D5OP7ggbE/Hc3/S/XRkrjXGk+KxQpq2DU A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10827"; a="375014999"
X-IronPort-AV: E=Sophos;i="6.02,237,1688454000"; d="scan'208";a="375014999"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2023 05:34:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10827"; a="857381999"
X-IronPort-AV: E=Sophos;i="6.02,237,1688454000"; d="scan'208";a="857381999"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.213.28.201])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2023 05:34:36 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri,  8 Sep 2023 14:32:43 +0200
Message-ID: <20230908123233.137134-28-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230908123233.137134-19-janusz.krzysztofik@linux.intel.com>
References: <20230908123233.137134-19-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t v2 09/17] lib/ktap: Drop is_running flag
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

Since we now call pthread_cancel() when we want to stop KTAP parser before
it completes, and we take care of returning failure in that case as a
result of KTAP parsing, we no longer need to check a flag that indicates
whether we should continue parsing or return a failure.  Drop that flag.

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 lib/igt_ktap.c | 32 --------------------------------
 1 file changed, 32 deletions(-)

diff --git a/lib/igt_ktap.c b/lib/igt_ktap.c
index 1e75b2ec23..fe77b62680 100644
--- a/lib/igt_ktap.c
+++ b/lib/igt_ktap.c
@@ -18,7 +18,6 @@
 struct ktap_parser_args {
 	int fd;
 	bool is_builtin;
-	volatile bool is_running;
 	int ret;
 } ktap_args;
 
@@ -61,11 +60,6 @@ static int log_to_end(enum igt_log_level level, int fd,
 		igt_log(IGT_LOG_DOMAIN, level, "%s", record);
 
 		while (read(fd, record, BUF_LEN) < 0) {
-			if (!READ_ONCE(ktap_args.is_running)) {
-				igt_warn("ktap parser stopped\n");
-				return -2;
-			}
-
 			if (errno == EINTR)
 				return -2;
 
@@ -183,11 +177,6 @@ static int find_next_tap_subtest(int fd, char *record, char *test_name, bool is_
 
 	if (is_builtin) {
 		while (read(fd, record, BUF_LEN) < 0) {
-			if (!READ_ONCE(ktap_args.is_running)) {
-				igt_warn("ktap parser stopped\n");
-				return -2;
-			}
-
 			if (errno == EINTR)
 				return -2;
 
@@ -227,11 +216,6 @@ static int find_next_tap_subtest(int fd, char *record, char *test_name, bool is_
 			cutoff[0] = '\0';
 
 		while (read(fd, record, BUF_LEN) < 0) {
-			if (!READ_ONCE(ktap_args.is_running)) {
-				igt_warn("ktap parser stopped\n");
-				return -2;
-			}
-
 			if (errno == EINTR)
 				return -2;
 
@@ -382,11 +366,6 @@ static int parse_tap_level(int fd, char *base_test_name, int test_count, bool *f
 
 	for (int i = 0; i < test_count; i++) {
 		while (read(fd, record, BUF_LEN) < 0) {
-			if (!READ_ONCE(ktap_args.is_running)) {
-				igt_warn("ktap parser stopped\n");
-				return -1;
-			}
-
 			if (errno == EINTR)
 				return -1;
 
@@ -523,19 +502,11 @@ void *igt_ktap_parser(void *unused)
 	failed_tests = false;
 	found_tests = false;
 
-	if (!READ_ONCE(ktap_args.is_running))
-		goto igt_ktap_parser_end;
-
 igt_ktap_parser_start:
 	test_name[0] = '\0';
 	test_name[BUF_LEN] = '\0';
 
 	while (read(fd, record, BUF_LEN) < 0) {
-		if (!READ_ONCE(ktap_args.is_running)) {
-			igt_warn("ktap parser stopped\n");
-			goto igt_ktap_parser_end;
-		}
-
 		if (errno == EAGAIN)
 			/* No records available */
 			continue;
@@ -595,7 +566,6 @@ struct ktap_test_results *ktap_parser_start(int fd, bool is_builtin)
 
 	ktap_args.fd = fd;
 	ktap_args.is_builtin = is_builtin;
-	ktap_args.is_running = true;
 	ktap_args.ret = IGT_EXIT_FAILURE;
 	pthread_create(&ktap_parser_thread, NULL, igt_ktap_parser, NULL);
 
@@ -604,13 +574,11 @@ struct ktap_test_results *ktap_parser_start(int fd, bool is_builtin)
 
 void ktap_parser_cancel(void)
 {
-	ktap_args.is_running = false;
 	pthread_cancel(ktap_parser_thread);
 }
 
 int ktap_parser_stop(void)
 {
-	ktap_args.is_running = false;
 	pthread_join(ktap_parser_thread, NULL);
 	return ktap_args.ret;
 }
-- 
2.41.0

