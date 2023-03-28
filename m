Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F02CF6CBFAA
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Mar 2023 14:49:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C58C10E30A;
	Tue, 28 Mar 2023 12:49:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3BF8610E30A
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Mar 2023 12:49:03 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id B9FF5B81CA7;
 Tue, 28 Mar 2023 12:49:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0CFF5C433EF;
 Tue, 28 Mar 2023 12:48:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1680007740;
 bh=fMJtgmyFjvOc/0gc+D1uyAqmfZVeIGtNlQkIpe4Bo+o=;
 h=Subject:To:Cc:From:Date:From;
 b=b7Kb6k17Irta2I7SzHRrYn8IlDJXXtdb11TZNnlmPVY9lmLxCCkDlo1MqhZEnQ9bN
 2ITCb1zt6JWDTkWb+3o2jSTyckikIBFPS2Y34m8tT2ra7pfoDCXkMvXCkb3Qd45sUD
 eoXpmZy41nPcqj44PI37fbOh+i1lyAm0vBqsNxOQ=
To: andi.shyti@linux.intel.com, andrzej.hajda@intel.com,
 chris@chris-wilson.co.uk, gregkh@linuxfoundation.org,
 intel-gfx@lists.freedesktop.org, jani.nikula@intel.com,
 janusz.krzysztofik@linux.intel.com, nirmoy.das@intel.com,
 thomas.hellstrom@intel.com, tvrtko.ursulin@intel.com
From: <gregkh@linuxfoundation.org>
Date: Tue, 28 Mar 2023 14:47:28 +0200
Message-ID: <168000764822222@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-stable: commit
X-Patchwork-Hint: ignore 
Subject: [Intel-gfx] Patch "drm/i915/active: Fix missing debug object
 activation" has been added to the 6.1-stable tree
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

    drm/i915/active: Fix missing debug object activation

to the 6.1-stable tree which can be found at:
    http://www.kernel.org/git/?p=linux/kernel/git/stable/stable-queue.git;a=summary

The filename of the patch is:
     drm-i915-active-fix-missing-debug-object-activation.patch
and it can be found in the queue-6.1 subdirectory.

If you, or anyone else, feels it should not be added to the stable tree,
please let <stable@vger.kernel.org> know about it.


From e92eb246feb9019b0b137706c934b8891cdfe3c2 Mon Sep 17 00:00:00 2001
From: Nirmoy Das <nirmoy.das@intel.com>
Date: Tue, 14 Mar 2023 15:29:14 +0100
Subject: drm/i915/active: Fix missing debug object activation
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Nirmoy Das <nirmoy.das@intel.com>

commit e92eb246feb9019b0b137706c934b8891cdfe3c2 upstream.

debug_active_activate() expected ref->count to be zero
which is not true anymore as __i915_active_activate() calls
debug_active_activate() after incrementing the count.

v2: No need to check for "ref->count == 1" as __i915_active_activate()
already make sure of that(Janusz).

References: https://gitlab.freedesktop.org/drm/intel/-/issues/6733
Fixes: 04240e30ed06 ("drm/i915: Skip taking acquire mutex for no ref->active callback")
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@intel.com>
Cc: Andi Shyti <andi.shyti@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Cc: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Cc: <stable@vger.kernel.org> # v5.10+
Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
Reviewed-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>
Link: https://patchwork.freedesktop.org/patch/msgid/20230313114613.9874-1-nirmoy.das@intel.com
(cherry picked from commit bfad380c542438a9b642f8190b7fd37bc77e2723)
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 drivers/gpu/drm/i915/i915_active.c |    3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

--- a/drivers/gpu/drm/i915/i915_active.c
+++ b/drivers/gpu/drm/i915/i915_active.c
@@ -92,8 +92,7 @@ static void debug_active_init(struct i91
 static void debug_active_activate(struct i915_active *ref)
 {
 	lockdep_assert_held(&ref->tree_lock);
-	if (!atomic_read(&ref->count)) /* before the first inc */
-		debug_object_activate(ref, &active_debug_desc);
+	debug_object_activate(ref, &active_debug_desc);
 }
 
 static void debug_active_deactivate(struct i915_active *ref)


Patches currently in stable-queue which might be from nirmoy.das@intel.com are

queue-6.1/drm-i915-gt-perform-uc-late-init-after-probe-error-i.patch
queue-6.1/drm-i915-print-return-value-on-error.patch
queue-6.1/drm-i915-active-fix-missing-debug-object-activation.patch
