Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6728321B254
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2020 11:32:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20BEB6EBBE;
	Fri, 10 Jul 2020 09:32:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0EA76E0A2;
 Fri, 10 Jul 2020 09:32:43 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21774854-1500050 
 for multiple; Fri, 10 Jul 2020 10:32:37 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Jul 2020 10:32:29 +0100
Message-Id: <20200710093234.1438712-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 1/6] lib/i915: Report unknown device as
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
index 21f7a9570..dfa43f490 100644
--- a/lib/intel_device_info.c
+++ b/lib/intel_device_info.c
@@ -447,11 +447,11 @@ out:
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
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
