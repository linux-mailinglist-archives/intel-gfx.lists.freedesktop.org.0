Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E0B211B9486
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2020 00:29:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB8C56E077;
	Sun, 26 Apr 2020 22:29:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 667E06E077
 for <intel-gfx@lists.freedesktop.org>; Sun, 26 Apr 2020 22:29:27 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21029445-1500050 
 for multiple; Sun, 26 Apr 2020 23:29:20 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 26 Apr 2020 23:29:18 +0100
Message-Id: <20200426222918.14892-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Fix up clock frequency
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The bspec lists both the clock frequency and the effective interval. The
interval corresponds to observed behaviour, so adjust the frequency to
match.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c b/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c
index 852a7d731b3b..999079686846 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c
@@ -7,9 +7,9 @@
 #include "intel_gt.h"
 #include "intel_gt_clock_utils.h"
 
+#define MHZ_12   12000000 /* 12MHz (24MHz/2), 83.333ns */
+#define MHZ_12_5 12500000 /* 12.5MHz (25MHz/2), 80ns */
 #define MHZ_19_2 19200000 /* 19.2MHz, 52.083ns */
-#define MHZ_24 24000000 /* 24MHz, 83.333ns */
-#define MHZ_25 25000000 /* 25MHz, 80ns */
 
 static u32 read_clock_frequency(const struct intel_gt *gt)
 {
@@ -21,19 +21,19 @@ static u32 read_clock_frequency(const struct intel_gt *gt)
 		config >>= GEN11_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_SHIFT;
 
 		switch (config) {
-		case 0: return MHZ_24;
+		case 0: return MHZ_12;
 		case 1:
 		case 2: return MHZ_19_2;
 		default:
-		case 3: return MHZ_25;
+		case 3: return MHZ_12_5;
 		}
 	} else if (INTEL_GEN(gt->i915) >= 9) {
 		if (IS_GEN9_LP(gt->i915))
 			return MHZ_19_2;
 		else
-			return MHZ_24;
+			return MHZ_12;
 	} else {
-		return MHZ_25;
+		return MHZ_12_5;
 	}
 }
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
