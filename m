Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 731B739311F
	for <lists+intel-gfx@lfdr.de>; Thu, 27 May 2021 16:41:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CEB7D6EC0A;
	Thu, 27 May 2021 14:41:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD4906E8DC;
 Thu, 27 May 2021 14:41:21 +0000 (UTC)
IronPort-SDR: bq4Jrg0avFc8rW088q7uGTerD86+G9u7i5QQdzyHmE//oz6dmwO8mPtVmojdIxQ0t380OV2jpl
 eqSVbAT+w5gA==
X-IronPort-AV: E=McAfee;i="6200,9189,9996"; a="202785536"
X-IronPort-AV: E=Sophos;i="5.82,334,1613462400"; d="scan'208";a="202785536"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2021 07:41:20 -0700
IronPort-SDR: o+AVGPYnq91lJRDf4GAWI/g9zuK6upqWRVLjbjEwyd6XtKW0QJPF9+O/K4hQmBQZJ3xyzE44SP
 2oA/B72XElEQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,334,1613462400"; d="scan'208";a="436572163"
Received: from vsrini4-xps-8920.iind.intel.com (HELO localhost.localdomain)
 ([10.223.163.28])
 by orsmga007.jf.intel.com with ESMTP; 27 May 2021 07:41:18 -0700
From: Vidya Srinivas <vidya.srinivas@intel.com>
To: intel-gfx@lists.freedesktop.org,
	igt-dev@lists.freedesktop.org
Date: Thu, 27 May 2021 20:02:26 +0530
Message-Id: <20210527143226.25548-1-vidya.srinivas@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/4] [RFC] tests/kms_prime: Aligned pitch to 64
 byte for Intel platforms
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
Cc: markyacoub@chromium.org, charlton.lin@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

For Intel platforms, pitch needs to be 64 byte aligned.
Kernel code vgem_gem_dumb_create which is platform generic code
doesnt do the alignment. This causes frame buffer creation to fail
on Intel platforms where the pitch is not 64 byte aligned.

tests: test run on Intel platforms with panel resolution 1366x768

Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>
Change-Id: Ie8f938b9672127537f433a5674b60e88275cc2c7
---
 tests/kms_prime.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/tests/kms_prime.c b/tests/kms_prime.c
index 8cb2ca2a9dc3..fdc941fe8100 100644
--- a/tests/kms_prime.c
+++ b/tests/kms_prime.c
@@ -51,6 +51,8 @@ static struct {
 	{ .r = 1.0, .g = 0.0, .b = 0.0, .color = 0xffff0000 },
 };
 
+bool check_platform;
+
 IGT_TEST_DESCRIPTION("Prime tests, focusing on KMS side");
 
 static bool has_prime_import(int fd)
@@ -101,7 +103,7 @@ static void prepare_scratch(int exporter_fd, struct dumb_bo *scratch,
 	scratch->bpp = 32;
 
 	scratch->handle = kmstest_dumb_create(exporter_fd,
-			scratch->width,
+			check_platform? ALIGN(scratch->width, 64): scratch->width,
 			scratch->height,
 			scratch->bpp,
 			&scratch->pitch,
@@ -262,6 +264,7 @@ igt_main
 
 		/* ANY = anything that is not VGEM */
 		first_fd = __drm_open_driver_another(0, DRIVER_ANY | DRIVER_VGEM);
+		check_platform = is_i915_device(first_fd);
 		igt_require(first_fd >= 0);
 
 		second_fd = __drm_open_driver_another(1, DRIVER_ANY | DRIVER_VGEM);
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
