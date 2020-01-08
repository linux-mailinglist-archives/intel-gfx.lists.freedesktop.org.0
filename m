Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FF2213465C
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2020 16:36:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 867856E8B1;
	Wed,  8 Jan 2020 15:36:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C2566E8B0
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jan 2020 15:36:43 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19810612-1500050 
 for multiple; Wed, 08 Jan 2020 15:35:51 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 Jan 2020 15:35:50 +0000
Message-Id: <20200108153550.3803446-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0.rc1
In-Reply-To: <20200108153550.3803446-1-chris@chris-wilson.co.uk>
References: <20200108153550.3803446-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Reduce warning for
 i915_vma_pin_iomap() without runtime-pm
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

Access through the GGTT (iomap) into the vma does require the device to
be awake. However, we often take the i915_vma_pin_iomap() as an early
preparatory step that is long before we use the iomap. Asserting that
the device is awake at pin time does not protect us, and is merely a
nuisance.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_vma.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index cbd783c31adb..43d5c270bdb0 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -423,8 +423,6 @@ void __iomem *i915_vma_pin_iomap(struct i915_vma *vma)
 	void __iomem *ptr;
 	int err;
 
-	/* Access through the GTT requires the device to be awake. */
-	assert_rpm_wakelock_held(vma->vm->gt->uncore->rpm);
 	if (GEM_WARN_ON(!i915_vma_is_map_and_fenceable(vma))) {
 		err = -ENODEV;
 		goto err;
@@ -456,6 +454,8 @@ void __iomem *i915_vma_pin_iomap(struct i915_vma *vma)
 		goto err_unpin;
 
 	i915_vma_set_ggtt_write(vma);
+
+	/* NB Access through the GTT requires the device to be awake. */
 	return ptr;
 
 err_unpin:
-- 
2.25.0.rc1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
