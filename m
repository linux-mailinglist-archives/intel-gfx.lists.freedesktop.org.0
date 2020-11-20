Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CF17C2BA045
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Nov 2020 03:22:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38A136E866;
	Fri, 20 Nov 2020 02:22:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3BAD36E866
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Nov 2020 02:21:59 +0000 (UTC)
IronPort-SDR: UFQ2osEjpKptNBjuUwZMUYfaODDVpksw2nLxV7r8zOjAVJEraBhsAaVuYca3rQnkTzH1RjlFdt
 mXulatZmZ4ig==
X-IronPort-AV: E=McAfee;i="6000,8403,9810"; a="171569169"
X-IronPort-AV: E=Sophos;i="5.78,354,1599548400"; d="scan'208";a="171569169"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2020 18:21:57 -0800
IronPort-SDR: Zyv6tMxIYypGGkfEF7hHGv5sGYOqz0W4IQYoKzwHGJVep7W/tGRF470EW1+fIhqzTUGNOXU/f5
 340HtXIMedhQ==
X-IronPort-AV: E=Sophos;i="5.78,354,1599548400"; d="scan'208";a="533400293"
Received: from gfox.jf.intel.com ([10.165.21.193])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2020 18:21:57 -0800
From: Steve Hampson <steven.t.hampson@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 19 Nov 2020 18:21:57 -0800
Message-Id: <20201120022157.23880-1-steven.t.hampson@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] i915/gem_flink_race.c: Use statistics over list
 of numbers
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Print median and range instead of a list of numbers in function test_flink_name.

Signed-off-by: Steve Hampson <steven.t.hampson@intel.com>
---
 tests/i915/gem_flink_race.c | 18 +++++++-----------
 1 file changed, 7 insertions(+), 11 deletions(-)

diff --git a/tests/i915/gem_flink_race.c b/tests/i915/gem_flink_race.c
index cf07aedf1..04b7bd42c 100644
--- a/tests/i915/gem_flink_race.c
+++ b/tests/i915/gem_flink_race.c
@@ -83,14 +83,14 @@ static void test_flink_name(int timeout)
 	struct flink_name *threads;
 	int r, i, num_threads;
 	unsigned long count;
-	char buf[512];
 	void *status;
-	int len;
+	igt_stats_t s;
 
 	num_threads = sysconf(_SC_NPROCESSORS_ONLN) - 1;
 	if (!num_threads)
 		num_threads = 1;
 
+	igt_stats_init_with_size(&s, num_threads);
 	threads = calloc(num_threads, sizeof(*threads));
 
 	fd = drm_open_driver(DRIVER_INTEL);
@@ -114,19 +114,15 @@ static void test_flink_name(int timeout)
 
 	pls_die = 1;
 
-	len = snprintf(buf, sizeof(buf), "Completed %lu cycles with [", count);
+	igt_info("Completed %lu cycles\n", count);
 	for (i = 0;  i < num_threads; i++) {
 		pthread_join(threads[i].thread, &status);
 		igt_assert(status == 0);
-		/* Below, constant 11 is 8 digit number, comma, space and null byte */
-		if ((len + 11 + 1) < sizeof(buf))
-			len += snprintf(buf + len, sizeof(buf) - len, "%8lu, ", threads[i].count);
+		igt_stats_push(&s, threads[i].count);
 	}
-	/* Below, constant 9 is 7 bytes for terminating string plus \n and null byte */
-	if (len + 9 < sizeof(buf))
-		snprintf(buf + len - 2, sizeof(buf) - len + 2, "] races");
-	igt_info("%s\n", buf);
-
+	igt_info("Threads %d\n", num_threads);
+	igt_info("Range   %ld\n", igt_stats_get_range(&s));
+	igt_info("Median  %g\n", igt_stats_get_median(&s));
 	close(fd);
 }
 
-- 
2.21.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
