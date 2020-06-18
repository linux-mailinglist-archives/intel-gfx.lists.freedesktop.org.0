Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 82FB21FEFE3
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jun 2020 12:48:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC91A6EA86;
	Thu, 18 Jun 2020 10:48:08 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D1C36EA86;
 Thu, 18 Jun 2020 10:48:07 +0000 (UTC)
IronPort-SDR: AZQjCuuicRkI+yE3aEs0ACJO1Gfoldh5VTq+G3U/5vz2LjAEiOcJn2JmxceoKTk2PWojToWxbv
 9x/Ryq8G73dQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9655"; a="122269054"
X-IronPort-AV: E=Sophos;i="5.73,526,1583222400"; d="scan'208";a="122269054"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2020 03:48:04 -0700
IronPort-SDR: sq/pZAG7bpr1irc5W3JdZJcV6lI7wrLd4ZZCVah0dPyVaDUtCquWv3Lq5Mhby6YlmEcMgAvbMn
 ZzPk1LKlinrQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,526,1583222400"; d="scan'208";a="352378631"
Received: from ttulbure-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.33.49])
 by orsmga001.jf.intel.com with ESMTP; 18 Jun 2020 03:48:03 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Thu, 18 Jun 2020 11:47:46 +0100
Message-Id: <20200618104747.24005-10-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200618104747.24005-1-tvrtko.ursulin@linux.intel.com>
References: <20200618104747.24005-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 10/11] gem_wsim: Fix calibration handling
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

Intended use case was that run without arguments prints out the
calibrations which can be simply copied and pasted to the -n argument and
things should just work.

Two problems we need to solve: If the print out loops shows zero
calibrations (engine not present) they are later rejected and also if some
calibration is not given it is only an error if it needs to be used
(engine present).

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 benchmarks/gem_wsim.c | 20 ++------------------
 1 file changed, 2 insertions(+), 18 deletions(-)

diff --git a/benchmarks/gem_wsim.c b/benchmarks/gem_wsim.c
index 59ddc798a3ea..811a4b1b7161 100644
--- a/benchmarks/gem_wsim.c
+++ b/benchmarks/gem_wsim.c
@@ -296,8 +296,8 @@ print_engine_calibrations(void)
 
 	printf("Nop calibration for %uus delay is: ", nop_calibration_us);
 	for (int i = 0; i < NUM_ENGINES; i++) {
-		/* skip DEFAULT and VCS engines */
-		if (i != DEFAULT && i != VCS) {
+		/* skip engines not present and DEFAULT and VCS */
+		if (i != DEFAULT && i != VCS && engine_calib_map[i]) {
 			if (first_entry) {
 				printf("%s=%lu", ring_str_map[i], engine_calib_map[i]);
 				first_entry = false;
@@ -2862,22 +2862,6 @@ int main(int argc, char **argv)
 		if (verbose)
 			print_engine_calibrations();
 		goto out;
-	} else {
-		bool missing = false;
-
-		for (i = 0; i < NUM_ENGINES; i++) {
-			if (i == VCS)
-				continue;
-
-			if (!engine_calib_map[i]) {
-				wsim_err("Missing calibration for '%s'!\n",
-					 ring_str_map[i]);
-				missing = true;
-			}
-		}
-
-		if (missing)
-			goto err;
 	}
 
 	if (!nr_w_args) {
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
