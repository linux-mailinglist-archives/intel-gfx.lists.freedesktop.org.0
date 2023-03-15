Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AC8536BAA5B
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Mar 2023 09:03:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 636C810E942;
	Wed, 15 Mar 2023 08:03:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 32CD110E942
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Mar 2023 08:03:29 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id D3419B81C9E;
 Wed, 15 Mar 2023 08:03:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 30138C433D2;
 Wed, 15 Mar 2023 08:03:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1678867406;
 bh=1nCqBZYt5ng2vM+rrODN6j4ZclH8rU27PvQFkuheXzw=;
 h=Subject:To:Cc:From:Date:From;
 b=lR28WraHtkc39D1cGspR3KTa5ngo4pP+OrJ4GpA6spSzxyu9vs9HlycHkDsfvKkkM
 aaBoojEs6AZ1jQTyE34BO/DMfYxt4FWW+hdp1wIYeFpWTUGqIu4TuIckI3rO9cOWga
 jFfSCdLul21plP4f8tfpTW5Ruz8/me0qdTD3OX2E=
To: John.C.Harrison@Intel.com, chris@chris-wilson.co.uk,
 daniele.ceraolospurio@intel.com, gregkh@linuxfoundation.org,
 intel-gfx@lists.freedesktop.org, jani.nikula@intel.com,
 jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 jouni.hogander@intel.com, rodrigo.vivi@intel.com,
 tvrtko.ursulin@linux.intel.com
From: <gregkh@linuxfoundation.org>
Date: Wed, 15 Mar 2023 09:03:24 +0100
Message-ID: <1678867404159167@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-stable: commit
X-Patchwork-Hint: ignore 
Subject: [Intel-gfx] Patch "drm/i915: Don't use BAR mappings for ring
 buffers with LLC" has been added to the 4.14-stable tree
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
Cc: stable-commits@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


This is a note to let you know that I've just added the patch titled

    drm/i915: Don't use BAR mappings for ring buffers with LLC

to the 4.14-stable tree which can be found at:
    http://www.kernel.org/git/?p=linux/kernel/git/stable/stable-queue.git;a=summary

The filename of the patch is:
     drm-i915-don-t-use-bar-mappings-for-ring-buffers-with-llc.patch
and it can be found in the queue-4.14 subdirectory.

If you, or anyone else, feels it should not be added to the stable tree,
please let <stable@vger.kernel.org> know about it.


From 85636167e3206c3fbd52254fc432991cc4e90194 Mon Sep 17 00:00:00 2001
From: John Harrison <John.C.Harrison@Intel.com>
Date: Wed, 15 Feb 2023 17:11:01 -0800
Subject: drm/i915: Don't use BAR mappings for ring buffers with LLC
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: John Harrison <John.C.Harrison@Intel.com>

commit 85636167e3206c3fbd52254fc432991cc4e90194 upstream.

Direction from hardware is that ring buffers should never be mapped
via the BAR on systems with LLC. There are too many caching pitfalls
due to the way BAR accesses are routed. So it is safest to just not
use it.

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
Fixes: 9d80841ea4c9 ("drm/i915: Allow ringbuffers to be bound anywhere")
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Cc: <stable@vger.kernel.org> # v4.9+
Tested-by: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Link: https://patchwork.freedesktop.org/patch/msgid/20230216011101.1909009-3-John.C.Harrison@Intel.com
(cherry picked from commit 65c08339db1ada87afd6cfe7db8e60bb4851d919)
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 drivers/gpu/drm/i915/intel_ringbuffer.c |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

--- a/drivers/gpu/drm/i915/intel_ringbuffer.c
+++ b/drivers/gpu/drm/i915/intel_ringbuffer.c
@@ -1314,7 +1314,7 @@ int intel_ring_pin(struct intel_ring *ri
 	if (unlikely(ret))
 		return ret;
 
-	if (i915_vma_is_map_and_fenceable(vma))
+	if (i915_vma_is_map_and_fenceable(vma) && !HAS_LLC(vma->vm->i915))
 		addr = (void __force *)i915_vma_pin_iomap(vma);
 	else
 		addr = i915_gem_object_pin_map(vma->obj, map);
@@ -1346,7 +1346,7 @@ void intel_ring_unpin(struct intel_ring
 	/* Discard any unused bytes beyond that submitted to hw. */
 	intel_ring_reset(ring, ring->tail);
 
-	if (i915_vma_is_map_and_fenceable(ring->vma))
+	if (i915_vma_is_map_and_fenceable(ring->vma) && !HAS_LLC(ring->vma->vm->i915))
 		i915_vma_unpin_iomap(ring->vma);
 	else
 		i915_gem_object_unpin_map(ring->vma->obj);


Patches currently in stable-queue which might be from John.C.Harrison@Intel.com are

queue-4.14/drm-i915-don-t-use-bar-mappings-for-ring-buffers-with-llc.patch
