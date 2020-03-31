Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C3851997ED
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2020 15:54:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70DFE6E834;
	Tue, 31 Mar 2020 13:54:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 088756E834
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Mar 2020 13:54:20 +0000 (UTC)
IronPort-SDR: 5tAvcF4/mW9hJAmW4WQNm/ld3vkwoVI+AI6/4VGze8pxeSrWM8fgnZi6HQdoOaTNHDrnb7onBr
 c5WPRI3hxhPA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2020 06:54:20 -0700
IronPort-SDR: K5dN08ym8wPsEA6e2rYpNfGTMNo0YAwBuQkdVJyibQTVmENtCDopN3mccLu1Pa/C0ZaqejFDPb
 14eUHataOLYA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,327,1580803200"; d="scan'208";a="272762039"
Received: from rosetta.fi.intel.com ([10.237.72.194])
 by fmsmga004.fm.intel.com with ESMTP; 31 Mar 2020 06:54:19 -0700
Received: by rosetta.fi.intel.com (Postfix, from userid 1000)
 id 2D8488442B9; Tue, 31 Mar 2020 16:54:05 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 31 Mar 2020 16:54:03 +0300
Message-Id: <20200331135403.16906-1-mika.kuoppala@linux.intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH] drm/i915: Report all failed registers for ctx
 isolation
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

For CI it is enough to point out a single failure
in isolation. However it is beneficial to gather
info in logs for transients further down
the line.

Do not stop into first comparison failure but
continue probing forward.

v2: for all engines and poisons (Chris)

Cc: Chris Wilson <chris@chris-wilson.co.uk>
Signed-off-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/selftest_lrc.c | 25 +++++++++++++------------
 1 file changed, 13 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index d3e163c93e22..d5b170adff1c 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -5170,7 +5170,6 @@ static int compare_isolation(struct intel_engine_cs *engine,
 					       A[0][x], B[0][x], B[1][x],
 					       poison, lrc[dw + 1]);
 					err = -EINVAL;
-					break;
 				}
 			}
 			dw += 2;
@@ -5309,6 +5308,7 @@ static int live_lrc_isolation(void *arg)
 		0xffffffff,
 		0xffff0000,
 	};
+	int err = 0;
 
 	/*
 	 * Our goal is try and verify that per-context state cannot be
@@ -5319,7 +5319,6 @@ static int live_lrc_isolation(void *arg)
 	 */
 
 	for_each_engine(engine, gt, id) {
-		int err = 0;
 		int i;
 
 		/* Just don't even ask */
@@ -5330,23 +5329,25 @@ static int live_lrc_isolation(void *arg)
 		intel_engine_pm_get(engine);
 		if (engine->pinned_default_state) {
 			for (i = 0; i < ARRAY_SIZE(poison); i++) {
-				err = __lrc_isolation(engine, poison[i]);
-				if (err)
-					break;
+				int result;
 
-				err = __lrc_isolation(engine, ~poison[i]);
-				if (err)
-					break;
+				result = __lrc_isolation(engine, poison[i]);
+				if (result && !err)
+					err = result;
+
+				result = __lrc_isolation(engine, ~poison[i]);
+				if (result && !err)
+					err = result;
 			}
 		}
 		intel_engine_pm_put(engine);
-		if (igt_flush_test(gt->i915))
+		if (igt_flush_test(gt->i915)) {
 			err = -EIO;
-		if (err)
-			return err;
+			break;
+		}
 	}
 
-	return 0;
+	return err;
 }
 
 static void garbage_reset(struct intel_engine_cs *engine,
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
