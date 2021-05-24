Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E0EB038E8D8
	for <lists+intel-gfx@lfdr.de>; Mon, 24 May 2021 16:38:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C20936E588;
	Mon, 24 May 2021 14:38:09 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0CA9E6E1CE;
 Mon, 24 May 2021 14:38:07 +0000 (UTC)
IronPort-SDR: iSSyH4Bysgk6C9ZIRnwBY8ytKvLBc+rInaqBBlAsp/D+Pr2jU31UUSHnipHB2b/Pt7EPAi02jc
 7No77GkYI8IQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9993"; a="201691323"
X-IronPort-AV: E=Sophos;i="5.82,325,1613462400"; d="scan'208";a="201691323"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2021 07:38:07 -0700
IronPort-SDR: Y+S5CxjZB14djpvd9/LrHVQlGTdqIs2G5b7FfnydwPA337zkMu9VB13FxTKPZ4/gdIkR7EBrzM
 lrC6vjoDFNzw==
X-IronPort-AV: E=Sophos;i="5.82,325,1613462400"; d="scan'208";a="442849012"
Received: from gtenuto-mobl1.ger.corp.intel.com (HELO tursulin-mobl2.home)
 ([10.213.210.116])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2021 07:38:06 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Mon, 24 May 2021 15:38:01 +0100
Message-Id: <20210524143801.1787579-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <YKu12MnURTmD1eHg@platvala-desk.ger.corp.intel.com>
References: <YKu12MnURTmD1eHg@platvala-desk.ger.corp.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t v2] gem_watchdog: Skip test if default
 request expiry is not compiled in
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Test incorrectly assumes no modparam means default expiry, while in
reality no modparam means old kernel / de-selected feature in which
case test should skip.

v2:
 * New line. (Petri)

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 tests/i915/gem_watchdog.c | 16 +++++++---------
 1 file changed, 7 insertions(+), 9 deletions(-)

diff --git a/tests/i915/gem_watchdog.c b/tests/i915/gem_watchdog.c
index 8f9fb17750fb..67fddac74bc1 100644
--- a/tests/i915/gem_watchdog.c
+++ b/tests/i915/gem_watchdog.c
@@ -630,6 +630,7 @@ igt_main
 
 	igt_fixture {
 		struct drm_i915_query_item item;
+		const unsigned int timeout = 1;
 		char *tmp;
 
 		i915 = drm_open_driver_master(DRIVER_INTEL);
@@ -639,16 +640,13 @@ igt_main
 		igt_require_gem(i915);
 
 		tmp = __igt_params_get(i915, "request_timeout_ms");
-		if (tmp) {
-			const unsigned int timeout = 1;
+		igt_skip_on_f(!tmp || !atoi(tmp),
+			      "Request expiry not supported!\n");
+		free(tmp);
 
-			igt_params_save_and_set(i915, "request_timeout_ms",
-						"%u", timeout * 1000);
-			default_timeout_wait_s = timeout * 5;
-			free(tmp);
-		} else {
-			default_timeout_wait_s = 12;
-		}
+		igt_params_save_and_set(i915, "request_timeout_ms", "%u",
+					timeout * 1000);
+		default_timeout_wait_s = timeout * 5;
 
 		i915 = gem_reopen_driver(i915); /* Apply modparam. */
 
-- 
2.30.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
