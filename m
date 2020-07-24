Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C19B322CBA6
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jul 2020 19:07:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC1046E9D3;
	Fri, 24 Jul 2020 17:06:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E8C216E9D3;
 Fri, 24 Jul 2020 17:06:57 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21922108-1500050 
 for multiple; Fri, 24 Jul 2020 18:06:52 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Jul 2020 18:06:47 +0100
Message-Id: <20200724170649.463842-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.28.0.rc1
In-Reply-To: <20200724170649.463842-1-chris@chris-wilson.co.uk>
References: <20200724170649.463842-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 2/4] lib/i915: Report unknown device as
 the future
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
Cc: igt-dev@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Since we likely know all the old devices, an unknown device is most
likely a future device, so use -1u instead of 0 for its generation.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 lib/intel_device_info.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/lib/intel_device_info.c b/lib/intel_device_info.c
index 6c9ac388c..eee7cac94 100644
--- a/lib/intel_device_info.c
+++ b/lib/intel_device_info.c
@@ -454,11 +454,11 @@ out:
  * Computes the Intel GFX generation for the given device id.
  *
  * Returns:
- * The GFX generation on successful lookup, 0 on failure.
+ * The GFX generation on successful lookup, -1u on failure.
  */
 unsigned intel_gen(uint16_t devid)
 {
-	return ffs(intel_get_device_info(devid)->gen);
+	return ffs(intel_get_device_info(devid)->gen) ?: -1u;
 }
 
 /**
-- 
2.28.0.rc1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
