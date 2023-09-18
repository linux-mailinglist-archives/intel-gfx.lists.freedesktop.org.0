Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 37C6C7A4AD3
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Sep 2023 15:52:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DFB710E2C2;
	Mon, 18 Sep 2023 13:52:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4145B10E2A8;
 Mon, 18 Sep 2023 13:52:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695045165; x=1726581165;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wVtUGzS/C/rlpHDTOGmg6+f8L2dKaVPMHK1N123GdfI=;
 b=VmvS/Gz/AAbyCvs9PkmjM79sntOEnGuaObf7Wiey9bqLs5yiaon7tBb/
 z68lHqvcUgIiXqTDPIphe5Y1SphP6EwdjHLgL7jQJs85sLxD+A8rafwJy
 MZhoOMZm4z6feyJ8uoRsSO7uR+8D/BkJOVs1BIuBcghlq/vWXpkHphD5a
 GGINKSea9JvKzH8mITAwJQcxcFovfVpHnx7zdnTnXU8Kc32vwFqPYRLCi
 6bDYwlOjX8SMZvPRuPAqCTnEWH0MAsP+Z5kNDIa2CpudQUpxY/FJSQDE4
 026i5Mhx9x5cz11nvsiaYF0OIHNZekg9BddXyyPvHvF0F26lD21ovxzM5 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10837"; a="376969644"
X-IronPort-AV: E=Sophos;i="6.02,156,1688454000"; d="scan'208";a="376969644"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2023 06:52:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10837"; a="749030536"
X-IronPort-AV: E=Sophos;i="6.02,156,1688454000"; d="scan'208";a="749030536"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.213.18.199])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2023 06:52:42 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Mon, 18 Sep 2023 15:42:59 +0200
Message-ID: <20230918134249.31645-28-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230918134249.31645-19-janusz.krzysztofik@linux.intel.com>
References: <20230918134249.31645-19-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t v3 09/17] lib/ktap: Drop is_running flag
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
Reviewed-by: Mauro Carvalho Chehab <mchehab@kernel.org>
---
 lib/igt_ktap.c | 32 --------------------------------
 1 file changed, 32 deletions(-)

diff --git a/lib/igt_ktap.c b/lib/igt_ktap.c
index 0db42d1243..5bc5e003d7 100644
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
 			if (errno == EPIPE) {
 				igt_warn("kmsg truncated: too many messages. You may want to increase log_buf_len in kmcdline\n");
 				return -2;
@@ -180,11 +174,6 @@ static int find_next_tap_subtest(int fd, char *record, char *test_name, bool is_
 
 	if (is_builtin) {
 		while (read(fd, record, BUF_LEN) < 0) {
-			if (!READ_ONCE(ktap_args.is_running)) {
-				igt_warn("ktap parser stopped\n");
-				return -2;
-			}
-
 			if (errno == EPIPE) {
 				igt_warn("kmsg truncated: too many messages. You may want to increase log_buf_len in kmcdline\n");
 				return -2;
@@ -221,11 +210,6 @@ static int find_next_tap_subtest(int fd, char *record, char *test_name, bool is_
 			cutoff[0] = '\0';
 
 		while (read(fd, record, BUF_LEN) < 0) {
-			if (!READ_ONCE(ktap_args.is_running)) {
-				igt_warn("ktap parser stopped\n");
-				return -2;
-			}
-
 			if (errno == EPIPE) {
 				igt_warn("kmsg truncated: too many messages. You may want to increase log_buf_len in kmcdline\n");
 				return -2;
@@ -373,11 +357,6 @@ static int parse_tap_level(int fd, char *base_test_name, int test_count, bool *f
 
 	for (int i = 0; i < test_count; i++) {
 		while (read(fd, record, BUF_LEN) < 0) {
-			if (!READ_ONCE(ktap_args.is_running)) {
-				igt_warn("ktap parser stopped\n");
-				return -1;
-			}
-
 			if (errno == EAGAIN)
 				/* No records available */
 				continue;
@@ -511,19 +490,11 @@ void *igt_ktap_parser(void *unused)
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
@@ -580,7 +551,6 @@ struct ktap_test_results *ktap_parser_start(int fd, bool is_builtin)
 
 	ktap_args.fd = fd;
 	ktap_args.is_builtin = is_builtin;
-	ktap_args.is_running = true;
 	ktap_args.ret = IGT_EXIT_FAILURE;
 	pthread_create(&ktap_parser_thread, NULL, igt_ktap_parser, NULL);
 
@@ -589,13 +559,11 @@ struct ktap_test_results *ktap_parser_start(int fd, bool is_builtin)
 
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

