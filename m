Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A74021FD17E
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2020 18:02:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 923906E92B;
	Wed, 17 Jun 2020 16:02:09 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3234D6E12E
 for <Intel-gfx@lists.freedesktop.org>; Wed, 17 Jun 2020 16:02:07 +0000 (UTC)
IronPort-SDR: 9DtSjhru5eKwqSdACXrBGhOhIUG1H916c7B+Sz4Mi+1x+72AkakG+fOHBS+A6SZQ86WE8DJLNX
 rqyHTof0c0Aw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2020 09:01:45 -0700
IronPort-SDR: aepUN7ppwlPSGhlJdfCBAB9BvWUah4Zu6wzPzmlaaZP9R4toxlhxHuEO2Gi4i3Wl3otIwpTRSs
 WtLSiPZtSsXw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,523,1583222400"; d="scan'208";a="421186234"
Received: from aabdelhi-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.255.197.210])
 by orsmga004.jf.intel.com with ESMTP; 17 Jun 2020 09:01:44 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Wed, 17 Jun 2020 17:01:20 +0100
Message-Id: <20200617160120.16555-11-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200617160120.16555-1-tvrtko.ursulin@linux.intel.com>
References: <20200617160120.16555-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 10/10] gem_wsim: Fix calibration handling
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
index ca07b670bd42..3bbb8fcbe17c 100644
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
@@ -2840,22 +2840,6 @@ int main(int argc, char **argv)
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
