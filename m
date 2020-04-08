Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1132F1A246C
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Apr 2020 16:59:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D64A4897F5;
	Wed,  8 Apr 2020 14:59:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D16E8897F5
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Apr 2020 14:59:12 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20840644-1500050 
 for multiple; Wed, 08 Apr 2020 15:59:04 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 Apr 2020 15:59:02 +0100
Message-Id: <20200408145902.21641-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] agp/intel: Disable use of WC for GMM updates
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

It appears that Ironlake is very sensitive to having its GGTT PTE
updates flushed in a timely manner and requires UC rather than WC for
all, and not just under VT'd.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/char/agp/intel-gtt.c | 25 +------------------------
 1 file changed, 1 insertion(+), 24 deletions(-)

diff --git a/drivers/char/agp/intel-gtt.c b/drivers/char/agp/intel-gtt.c
index 66a62d17a3f5..afe5e81bafac 100644
--- a/drivers/char/agp/intel-gtt.c
+++ b/drivers/char/agp/intel-gtt.c
@@ -565,35 +565,12 @@ static void intel_gtt_cleanup(void)
 	intel_gtt_teardown_scratch_page();
 }
 
-/* Certain Gen5 chipsets require require idling the GPU before
- * unmapping anything from the GTT when VT-d is enabled.
- */
-static inline int needs_ilk_vtd_wa(void)
-{
-#ifdef CONFIG_INTEL_IOMMU
-	const unsigned short gpu_devid = intel_private.pcidev->device;
-
-	/* Query intel_iommu to see if we need the workaround. Presumably that
-	 * was loaded first.
-	 */
-	if ((gpu_devid == PCI_DEVICE_ID_INTEL_IRONLAKE_D_IG ||
-	     gpu_devid == PCI_DEVICE_ID_INTEL_IRONLAKE_M_IG) &&
-	     intel_iommu_gfx_mapped)
-		return 1;
-#endif
-	return 0;
-}
-
 static bool intel_gtt_can_wc(void)
 {
 	if (INTEL_GTT_GEN <= 2)
 		return false;
 
-	if (INTEL_GTT_GEN >= 6)
-		return false;
-
-	/* Reports of major corruption with ILK vt'd enabled */
-	if (needs_ilk_vtd_wa())
+	if (INTEL_GTT_GEN >= 5)
 		return false;
 
 	return true;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
