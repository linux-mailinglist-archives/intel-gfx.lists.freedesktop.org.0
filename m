Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F21E393C7E
	for <lists+intel-gfx@lfdr.de>; Fri, 28 May 2021 06:43:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7964C6EA09;
	Fri, 28 May 2021 04:43:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B67C6E832;
 Fri, 28 May 2021 04:43:00 +0000 (UTC)
IronPort-SDR: BS2/UBF8iniRSoHUxkwbTwG7i9aar9qxmFWJ0EMVzozl7/8LlDI4pRxSY/UYpGtoJaUmjX9XgL
 cs3VCddXr9UQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9997"; a="202928669"
X-IronPort-AV: E=Sophos;i="5.83,228,1616482800"; d="scan'208";a="202928669"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2021 21:42:58 -0700
IronPort-SDR: ay0KW6VX9m9HczkGWuimm97lCwQwOA0wl68rWGX3MiWIHHUQzKeiQF6tOYQP1zqfn+X+mB7eKe
 6L9gp9wYaPRw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,228,1616482800"; d="scan'208";a="398455807"
Received: from vsrini4-xps-8920.iind.intel.com (HELO localhost.localdomain)
 ([10.223.163.28])
 by orsmga006.jf.intel.com with ESMTP; 27 May 2021 21:42:56 -0700
From: Vidya Srinivas <vidya.srinivas@intel.com>
To: intel-gfx@lists.freedesktop.org,
	igt-dev@lists.freedesktop.org
Date: Fri, 28 May 2021 10:04:03 +0530
Message-Id: <1622176443-12682-1-git-send-email-vidya.srinivas@intel.com>
X-Mailer: git-send-email 2.7.4
Subject: [Intel-gfx] [PATCH i-g-t] [RFC] tests/kms_prime: Aligned pitch to
 64 byte for Intel platforms
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
MIME-Version: 1.0
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
2.7.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
