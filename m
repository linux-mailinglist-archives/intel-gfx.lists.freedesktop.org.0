Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 24EB724D0D6
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Aug 2020 10:50:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E5346E16F;
	Fri, 21 Aug 2020 08:50:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 989266E348
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Aug 2020 08:50:43 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 22195098-1500050 
 for multiple; Fri, 21 Aug 2020 09:50:15 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: linux-kernel@vger.kernel.org,
	intel-gfx@lists.freedesktop.org
Date: Fri, 21 Aug 2020 09:50:09 +0100
Message-Id: <20200821085011.28878-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200821085011.28878-1-chris@chris-wilson.co.uk>
References: <20200821085011.28878-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/4] drm/i915/gem: Sync the vmap PTEs upon
 construction
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
Cc: Joerg Roedel <jroedel@suse.de>, stable@vger.kernel.org,
 Chris Wilson <chris@chris-wilson.co.uk>, linux-mm@kvack.org,
 Pavel Machek <pavel@ucw.cz>, Dave Airlie <airlied@redhat.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Since synchronising the PTE after assignment is a manual step, use the
newly exported interface to flush the PTE after assigning via
alloc_vm_area().

Reported-by: Pavel Machek <pavel@ucw.cz>
References: 2ba3e6947aed ("mm/vmalloc: track which page-table levels were modified")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: Joerg Roedel <jroedel@suse.de>
Cc: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Dave Airlie <airlied@redhat.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Pavel Machek <pavel@ucw.cz>
Cc: <stable@vger.kernel.org> # v5.8+
---
 drivers/gpu/drm/i915/gem/i915_gem_pages.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pages.c b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
index 7050519c87a4..0fee67f34d74 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_pages.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
@@ -304,6 +304,7 @@ static void *i915_gem_object_map(struct drm_i915_gem_object *obj,
 		for_each_sgt_daddr(addr, iter, sgt)
 			**ptes++ = iomap_pte(iomap, addr, pgprot);
 	}
+	flush_vm_area(area);
 
 	if (mem != stack)
 		kvfree(mem);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
