Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C05BA6B6579
	for <lists+intel-gfx@lfdr.de>; Sun, 12 Mar 2023 12:30:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE23910E10C;
	Sun, 12 Mar 2023 11:30:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F9D410E10C
 for <intel-gfx@lists.freedesktop.org>; Sun, 12 Mar 2023 11:30:23 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id A0D1D60EA0;
 Sun, 12 Mar 2023 11:30:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AC847C4339B;
 Sun, 12 Mar 2023 11:30:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1678620622;
 bh=gsmyAcIo4GUjIeJj3Ht1Ht/RjRHuFAVKR+wjfo9+seE=;
 h=Subject:To:Cc:From:Date:From;
 b=ngQOZk2PB6v1tJHX2v9LLXSz3sPBYXZCi9NjYabAscloZZM4lPX/A0sX98FtSzMR6
 hOBxtF8JcMaB+/6nGZaYhS1bXhLZE+mH5RjTUVyBJvb5cX+eJFH7QW2IhdTvEFM8iS
 bT7VsLYXsbev2Qb5BV9LcX6mKKN7mGeX1pUlW9wk=
To: John.C.Harrison@Intel.com, apjo@tuta.io, chris@chris-wilson.co.uk,
 daniele.ceraolospurio@intel.com, gregkh@linuxfoundation.org,
 intel-gfx@lists.freedesktop.org, jani.nikula@intel.com,
 jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 jouni.hogander@intel.com, philm@manjaro.org, rodrigo.vivi@intel.com,
 tvrtko.ursulin@linux.intel.com
From: <gregkh@linuxfoundation.org>
Date: Sun, 12 Mar 2023 12:30:19 +0100
Message-ID: <167862061961225@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-stable: commit
X-Patchwork-Hint: ignore 
Subject: [Intel-gfx] Patch "Revert "drm/i915: Don't use BAR mappings for
 ring buffers with LLC"" has been added to the 5.15-stable tree
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

    Revert "drm/i915: Don't use BAR mappings for ring buffers with LLC"

to the 5.15-stable tree which can be found at:
    http://www.kernel.org/git/?p=linux/kernel/git/stable/stable-queue.git;a=summary

The filename of the patch is:
     revert-drm-i915-don-t-use-bar-mappings-for-ring-buffers-with-llc.patch
and it can be found in the queue-5.15 subdirectory.

If you, or anyone else, feels it should not be added to the stable tree,
please let <stable@vger.kernel.org> know about it.


From b83855e90c4411bd06b4c201ea91ecec22f887ca Mon Sep 17 00:00:00 2001
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Date: Sun, 12 Mar 2023 12:26:56 +0100
Subject: Revert "drm/i915: Don't use BAR mappings for ring buffers with LLC"

From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

This reverts commit 4eb6789f9177a5fdb90e1b7cdd4b069d1fb9ce45 which is
commit 85636167e3206c3fbd52254fc432991cc4e90194 upstream.

It has been reported to cause problems on Alpine Linux and Manjaro Linux
5.15-based releases, so revert it for now until it can be sorted out.

Reported-by: "A.P. Jo." <apjo@tuta.io>
Link: https://lore.kernel.org/r/NQJqG8n--3-9@tuta.io
Link: https://gitlab.alpinelinux.org/alpine/aports/-/issues/14704
Reported-by: Philip Müller <philm@manjaro.org>
Link: https://lore.kernel.org/r/d955327b-cb1c-4646-76b9-b0499c0c64c6@manjaro.org
Link: https://gitlab.freedesktop.org/drm/intel/-/issues/8284
Cc: John Harrison <John.C.Harrison@Intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Cc: <stable@vger.kernel.org> # v4.9+
Cc: Jouni Högander <jouni.hogander@intel.com>
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 drivers/gpu/drm/i915/gt/intel_ring.c |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

--- a/drivers/gpu/drm/i915/gt/intel_ring.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring.c
@@ -51,7 +51,7 @@ int intel_ring_pin(struct intel_ring *ri
 	if (unlikely(ret))
 		goto err_unpin;
 
-	if (i915_vma_is_map_and_fenceable(vma) && !HAS_LLC(vma->vm->i915)) {
+	if (i915_vma_is_map_and_fenceable(vma)) {
 		addr = (void __force *)i915_vma_pin_iomap(vma);
 	} else {
 		int type = i915_coherent_map_type(vma->vm->i915, vma->obj, false);
@@ -96,7 +96,7 @@ void intel_ring_unpin(struct intel_ring
 		return;
 
 	i915_vma_unset_ggtt_write(vma);
-	if (i915_vma_is_map_and_fenceable(vma) && !HAS_LLC(vma->vm->i915))
+	if (i915_vma_is_map_and_fenceable(vma))
 		i915_vma_unpin_iomap(vma);
 	else
 		i915_gem_object_unpin_map(vma->obj);


Patches currently in stable-queue which might be from gregkh@linuxfoundation.org are

queue-5.15/revert-drm-i915-don-t-use-bar-mappings-for-ring-buffers-with-llc.patch
