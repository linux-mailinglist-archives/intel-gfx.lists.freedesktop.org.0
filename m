Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 26E7B156AA4
	for <lists+intel-gfx@lfdr.de>; Sun,  9 Feb 2020 14:35:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37E916E81F;
	Sun,  9 Feb 2020 13:35:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id DD5FB6E804;
 Sun,  9 Feb 2020 13:35:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CB867A011C;
 Sun,  9 Feb 2020 13:35:08 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sun, 09 Feb 2020 13:35:08 -0000
Message-ID: <158125530880.18127.15676497447840876433@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200209131922.180287-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200209131922.180287-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/8=5D_drm/i915/execlists=3A_Fix_ho?=
 =?utf-8?q?ld/unhold_recursion?=
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
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: series starting with [1/8] drm/i915/execlists: Fix hold/unhold recursion
URL   : https://patchwork.freedesktop.org/series/73213/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
f109a5e034a5 drm/i915/execlists: Fix hold/unhold recursion
ea73f5349664 drm/i915/execlists: Ignore tracek for nop process_csb
b64ee83d5fb8 drm/i915/selftests: Exercise timeslice rewinding
-:13: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#13: 
References: 5ba32c7be81e ("drm/i915/execlists: Always force a context reload when rewinding RING_TAIL")

-:13: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 5ba32c7be81e ("drm/i915/execlists: Always force a context reload when rewinding RING_TAIL")'
#13: 
References: 5ba32c7be81e ("drm/i915/execlists: Always force a context reload when rewinding RING_TAIL")

-:188: WARNING:MEMORY_BARRIER: memory barrier without comment
#188: FILE: drivers/gpu/drm/i915/gt/selftest_lrc.c:928:
+		wmb();

-:218: WARNING:MEMORY_BARRIER: memory barrier without comment
#218: FILE: drivers/gpu/drm/i915/gt/selftest_lrc.c:958:
+		wmb();

total: 1 errors, 3 warnings, 0 checks, 220 lines checked
7d37baa5d994 drm/i915/selftests: Remove erroneous intel_engine_pm_put
e1d68a2e4980 drm/i915/selftests: Relax timeout for error-interrupt reset processing
b9a3a68f8194 drm/i915/gem: Don't leak non-persistent requests on changing engines
-:249: WARNING:USE_SPINLOCK_T: struct spinlock should be spinlock_t
#249: FILE: drivers/gpu/drm/i915/gem/i915_gem_context_types.h:184:
+		struct spinlock lock;

total: 0 errors, 1 warnings, 0 checks, 242 lines checked
821d98111deb drm/i915: Disable use of hwsp_cacheline for kernel_context
148f14e2d25f drm/i915/gt: Yield the timeslice if caught waiting on a user semaphore

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
