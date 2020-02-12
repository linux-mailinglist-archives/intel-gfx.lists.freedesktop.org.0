Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F8BE15A40A
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2020 09:55:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 935E86EA9D;
	Wed, 12 Feb 2020 08:55:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85F136EA9D
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Feb 2020 08:55:32 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20195734-1500050 
 for multiple; Wed, 12 Feb 2020 08:54:57 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 12 Feb 2020 08:54:32 +0000
Message-Id: <20200212085432.1250807-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: Avoid choosing zero for
 phys_sz
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Make sure we avoid ending up with a phys_sz of 0, or for phys_sz to be
larger than the actual size.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/i915/gem/selftests/i915_gem_object_blt.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_object_blt.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_object_blt.c
index f29da4560dc0..31549ad83fa6 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_object_blt.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_object_blt.c
@@ -247,10 +247,11 @@ static int igt_fill_blt_thread(void *arg)
 
 		total = min(total, max);
 		sz = i915_prandom_u32_max_state(total, prng) + 1;
-		phys_sz = sz % max_phys_size;
+		phys_sz = sz % max_phys_size + 1;
 
 		sz = round_up(sz, PAGE_SIZE);
 		phys_sz = round_up(phys_sz, PAGE_SIZE);
+		phys_sz = min(phys_sz, sz);
 
 		pr_debug("%s with phys_sz= %x, sz=%x, val=%x\n", __func__,
 			 phys_sz, sz, val);
@@ -364,10 +365,11 @@ static int igt_copy_blt_thread(void *arg)
 
 		total = min(total, max);
 		sz = i915_prandom_u32_max_state(total, prng) + 1;
-		phys_sz = sz % max_phys_size;
+		phys_sz = sz % max_phys_size + 1;
 
 		sz = round_up(sz, PAGE_SIZE);
 		phys_sz = round_up(phys_sz, PAGE_SIZE);
+		phys_sz = min(phys_sz, sz);
 
 		pr_debug("%s with phys_sz= %x, sz=%x, val=%x\n", __func__,
 			 phys_sz, sz, val);
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
