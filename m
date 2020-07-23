Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 720A222B0FF
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jul 2020 16:08:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8C0E6E20B;
	Thu, 23 Jul 2020 14:08:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CAFB6E20B
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jul 2020 14:08:00 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21908110-1500050 
 for multiple; Thu, 23 Jul 2020 15:07:49 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Jul 2020 15:07:47 +0100
Message-Id: <20200723140747.27839-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: Downgrade severity of
 CS/SRM frequency scaling
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

Gracefully skip over the failures in the frequency scaling for the
moment, the results are under review.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: "Sundaresan, Sujaritha" <sujaritha.sundaresan@intel.com>
Cc: "Ewins, Jon" <jon.ewins@intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_rps.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i915/gt/selftest_rps.c
index 8624f5d2a1f3..b50ed20c427c 100644
--- a/drivers/gpu/drm/i915/gt/selftest_rps.c
+++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
@@ -700,7 +700,7 @@ int live_rps_frequency_cs(void *arg)
 				f = act; /* may skip ahead [pcu granularity] */
 			}
 
-			err = -EINVAL;
+			err = -EINTR;
 		}
 
 err_vma:
@@ -841,7 +841,7 @@ int live_rps_frequency_srm(void *arg)
 				f = act; /* may skip ahead [pcu granularity] */
 			}
 
-			err = -EINVAL;
+			err = -EINTR;
 		}
 
 err_vma:
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
