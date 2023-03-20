Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B1786C1388
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Mar 2023 14:36:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA82710E047;
	Mon, 20 Mar 2023 13:36:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 813E810E047
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Mar 2023 13:36:25 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id C8C75B80E8B;
 Mon, 20 Mar 2023 13:36:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 33B3FC433D2;
 Mon, 20 Mar 2023 13:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1679319382;
 bh=rGkETXjQ63OvJmytexGAwD6rdbMt1dkxriNwitLGvss=;
 h=Subject:To:Cc:From:Date:From;
 b=eGOUhj4GN0EPxp6BFEotM5eTRgV8LR+vlVsHnLEfODb2HkHeVZeJE3N7Lv9ySoK9D
 AwDwgvtY4e+x2Rw5y7dKtU2AuMsdAbVOkJitXnNab3J2F+WOFdnz4WgTAH/U1MsBuV
 wkCc+qkzpBM5l9rULMkrw93yRHchHKYRvmDzsDGk=
To: John.C.Harrison@Intel.com, chris@chris-wilson.co.uk,
 daniele.ceraolospurio@intel.com, gregkh@linuxfoundation.org,
 intel-gfx@lists.freedesktop.org, jani.nikula@intel.com,
 jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 jouni.hogander@intel.com, rodrigo.vivi@intel.com,
 tvrtko.ursulin@linux.intel.com
From: <gregkh@linuxfoundation.org>
Date: Mon, 20 Mar 2023 14:36:19 +0100
Message-ID: <1679319379170123@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-stable: commit
X-Patchwork-Hint: ignore 
Subject: [Intel-gfx] Patch "drm/i915: Don't use stolen memory for ring
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

    drm/i915: Don't use stolen memory for ring buffers with LLC

to the 4.14-stable tree which can be found at:
    http://www.kernel.org/git/?p=linux/kernel/git/stable/stable-queue.git;a=summary

The filename of the patch is:
     drm-i915-don-t-use-stolen-memory-for-ring-buffers-with-llc.patch
and it can be found in the queue-4.14 subdirectory.

If you, or anyone else, feels it should not be added to the stable tree,
please let <stable@vger.kernel.org> know about it.


From 690e0ec8e63da9a29b39fedc6ed5da09c7c82651 Mon Sep 17 00:00:00 2001
From: John Harrison <John.C.Harrison@Intel.com>
Date: Wed, 15 Feb 2023 17:11:00 -0800
Subject: drm/i915: Don't use stolen memory for ring buffers with LLC
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: John Harrison <John.C.Harrison@Intel.com>

commit 690e0ec8e63da9a29b39fedc6ed5da09c7c82651 upstream.

Direction from hardware is that stolen memory should never be used for
ring buffer allocations on platforms with LLC. There are too many
caching pitfalls due to the way stolen memory accesses are routed. So
it is safest to just not use it.

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
Fixes: c58b735fc762 ("drm/i915: Allocate rings from stolen")
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Cc: <stable@vger.kernel.org> # v4.9+
Tested-by: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Link: https://patchwork.freedesktop.org/patch/msgid/20230216011101.1909009-2-John.C.Harrison@Intel.com
(cherry picked from commit f54c1f6c697c4297f7ed94283c184acc338a5cf8)
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 drivers/gpu/drm/i915/intel_ringbuffer.c |    5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

--- a/drivers/gpu/drm/i915/intel_ringbuffer.c
+++ b/drivers/gpu/drm/i915/intel_ringbuffer.c
@@ -1359,10 +1359,11 @@ static struct i915_vma *
 intel_ring_create_vma(struct drm_i915_private *dev_priv, int size)
 {
 	struct i915_address_space *vm = &dev_priv->ggtt.base;
-	struct drm_i915_gem_object *obj;
+	struct drm_i915_gem_object *obj = NULL;
 	struct i915_vma *vma;
 
-	obj = i915_gem_object_create_stolen(dev_priv, size);
+	if (!HAS_LLC(dev_priv))
+		obj = i915_gem_object_create_stolen(dev_priv, size);
 	if (!obj)
 		obj = i915_gem_object_create_internal(dev_priv, size);
 	if (IS_ERR(obj))


Patches currently in stable-queue which might be from John.C.Harrison@Intel.com are

queue-4.14/drm-i915-don-t-use-stolen-memory-for-ring-buffers-with-llc.patch
