Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EA0A8798618
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Sep 2023 12:47:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFA4810E8A8;
	Fri,  8 Sep 2023 10:46:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB54B10E0A6;
 Fri,  8 Sep 2023 10:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694170012; x=1725706012;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Iy4Wkm7BIqZQeR2Ce2G1c7URzd6FFKkhSvdr4zNM74I=;
 b=bVr9dKWES/+6Ipzw4Pp0K/eyk0AqMfBPXRBISxsFmjk+zH3wtQjf2vo0
 SIMNP9a+oZKE9WjQ/MUNmUOw/dv4yEm0ksnIlbfKpy0YSKJ8f35vo6XNn
 tFT/sJU2rcdFYvk4gc++wp4Y/1pJI+wxyK/Zjy7VQAmbxubH8X74I79If
 HjynmPFVWTpCBWLy2i4pUK67VGBJfp1PGhb9VG6/uB5amgkY4cHpgj9f2
 9J6MtbdhwqGnZtjQTwfeny8J9w8/lONKIGxWRCc1nsAbyJRh4prprW5EK
 Bo/7dkhLGh5SDl2xUbW96bSkHoySmUHZFsLS2ysZoURsKQEVNhE3ByWWK g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="357922643"
X-IronPort-AV: E=Sophos;i="6.02,236,1688454000"; d="scan'208";a="357922643"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2023 03:46:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="812531604"
X-IronPort-AV: E=Sophos;i="6.02,236,1688454000"; d="scan'208";a="812531604"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.213.28.201])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2023 03:46:47 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri,  8 Sep 2023 12:44:48 +0200
Message-ID: <20230908104438.125454-28-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230908104438.125454-19-janusz.krzysztofik@linux.intel.com>
References: <20230908104438.125454-19-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 09/17] lib/ktap: Drop is_running flag
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

