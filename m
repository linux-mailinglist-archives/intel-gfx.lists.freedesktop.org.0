Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C1BB253F5B
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Aug 2020 09:38:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC9D16EB1A;
	Thu, 27 Aug 2020 07:38:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6CFC6EB1A
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Aug 2020 07:38:09 +0000 (UTC)
IronPort-SDR: opC+y2hYyZzixNFxxNomf7lqcRXxwqUF0Q+qe7wwGitpPB0KEh2ui0Sas+MKY/43ARrieYl3To
 H2v2wwRsTIXQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9725"; a="155695218"
X-IronPort-AV: E=Sophos;i="5.76,359,1592895600"; d="scan'208";a="155695218"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2020 00:38:09 -0700
IronPort-SDR: 8BDWvjYGyj5fJL0VdCBzWDa70RfyqpdrwO6+Uwn/Vt4KKFxZhflS+QaSoNRVEWuy/87WhJ5NsP
 GOzOvoQPYKqg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,359,1592895600"; d="scan'208";a="332090361"
Received: from gtax-ubuntu-2004.igk.intel.com ([10.102.46.77])
 by fmsmga002.fm.intel.com with ESMTP; 27 Aug 2020 00:38:08 -0700
From: Sowmya Kaparthi <sowmyax.kaparthi@intel.com>
To: intel-gfx@lists.freedesktop.org, sowmyax.kaparthi@intel.com,
 umesh.nerlige.ramappa@intel.com, lionel.g.landwerlin@intel.com
Date: Thu, 27 Aug 2020 07:38:07 +0000
Message-Id: <20200827073807.2965-1-sowmyax.kaparthi@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-gfx] [i-g-t] Fixing the latency of hrtimer
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

Cc: Landwerlin, Lionel G <lionel.g.landwerlin@intel.com>
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
