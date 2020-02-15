Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6811015FDDA
	for <lists+intel-gfx@lfdr.de>; Sat, 15 Feb 2020 10:29:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE7896E8B3;
	Sat, 15 Feb 2020 09:29:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5EB296E8B3
 for <intel-gfx@lists.freedesktop.org>; Sat, 15 Feb 2020 09:29:12 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20234585-1500050 
 for multiple; Sat, 15 Feb 2020 09:29:06 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 15 Feb 2020 09:29:02 +0000
Message-Id: <20200215092902.4131132-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: Mark the mock ring->vma as
 being in the GGTT
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

The ringbuffer's vma is expected to be in the GGTT and that is now being
checked, so make sure the mocked ring declares it so.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/mock_engine.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/gt/mock_engine.c b/drivers/gpu/drm/i915/gt/mock_engine.c
index f2806381733f..f35923a29ce6 100644
--- a/drivers/gpu/drm/i915/gt/mock_engine.c
+++ b/drivers/gpu/drm/i915/gt/mock_engine.c
@@ -65,6 +65,7 @@ static struct intel_ring *mock_ring(struct intel_engine_cs *engine)
 		return NULL;
 	}
 	i915_active_init(&ring->vma->active, NULL, NULL);
+	__set_bit(I915_VMA_GGTT_BIT, __i915_vma_flags(&ring->vma));
 
 	intel_ring_update_space(ring);
 
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
