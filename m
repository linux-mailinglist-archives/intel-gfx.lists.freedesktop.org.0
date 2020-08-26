Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D2D6253745
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Aug 2020 20:36:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C85076E85E;
	Wed, 26 Aug 2020 18:36:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF8346E85E
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Aug 2020 18:36:36 +0000 (UTC)
IronPort-SDR: XaE6o5Nlz1FYdo8B/xTEyK9lvS3RiB1EEil+592FsQKRM9L4ccqidOG/3WkVFvLBbcuzt3GLmK
 n4G3pRaUO/nA==
X-IronPort-AV: E=McAfee;i="6000,8403,9725"; a="220621222"
X-IronPort-AV: E=Sophos;i="5.76,356,1592895600"; d="scan'208";a="220621222"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2020 11:36:36 -0700
IronPort-SDR: TlUkMNgagVPrJ0f7QB6UuryQb4mRdgUUozkSghXFeWYOVMkTOt9YMW0POsTmVSvZVcf1A4F0TF
 iSPIhjtZ/TFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,356,1592895600"; d="scan'208";a="295464415"
Received: from gtax-ubuntu-2004.igk.intel.com ([10.102.46.77])
 by orsmga003.jf.intel.com with ESMTP; 26 Aug 2020 11:36:35 -0700
From: Sowmya Kaparthi <sowmyax.kaparthi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Aug 2020 18:36:35 +0000
Message-Id: <20200826183635.1569-1-sowmyax.kaparthi@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-gfx] [igt-gpu-tools] Fixing the latency of hrtimer
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

The blocking/polling parameterized tests were introduced to test
different hrtimer configurations.These tests check how many times the
process wakes up to read the reports with different hrtimer values (=
duration of test / hrtimer value). A user is more likely to choose a
larger hrtimer value than the default 5ms to avoid wake up too frequently.

Signed-off-by: Sowmya Kaparthi <sowmyax.kaparthi@intel.com>
---
 tests/i915/perf.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/tests/i915/perf.c b/tests/i915/perf.c
index a894fd38..5fd1193f 100644
--- a/tests/i915/perf.c
+++ b/tests/i915/perf.c
@@ -4995,7 +4995,7 @@ igt_main
 			      40 * 1000 * 1000 /* default 40ms hrtimer */);
 		test_blocking(500 * 1000 /* 500us oa period */,
 			      true /* set_kernel_hrtimer */,
-			      2 * 1000 * 1000 /* default 2ms hrtimer */);
+			      10 * 1000 * 1000 /* default 10ms hrtimer */);
 	}
 
 	igt_describe("Test polled read with default hrtimer frequency");
@@ -5014,7 +5014,7 @@ igt_main
 			     40 * 1000 * 1000 /* default 40ms hrtimer */);
 		test_polling(500 * 1000 /* 500us oa period */,
 			     true /* set_kernel_hrtimer */,
-			     2 * 1000 * 1000 /* default 2ms hrtimer */);
+			     10 * 1000 * 1000 /* default 10ms hrtimer */);
 	}
 
 	igt_describe("Test polled read with buffer size smaller than available data");
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
