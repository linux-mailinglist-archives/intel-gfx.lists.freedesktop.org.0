Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC56E16A476
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2020 11:59:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D1396E430;
	Mon, 24 Feb 2020 10:59:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 853C76E42F;
 Mon, 24 Feb 2020 10:59:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7D5CCA0099;
 Mon, 24 Feb 2020 10:59:02 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 24 Feb 2020 10:59:02 -0000
Message-ID: <158254194250.28361.9284764157523651596@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200224100007.4024184-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200224100007.4024184-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B01/14=5D_drm/i915/selftests=3A_Veri?=
 =?utf-8?q?fy_LRC_isolation?=
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

Series: series starting with [01/14] drm/i915/selftests: Verify LRC isolation
URL   : https://patchwork.freedesktop.org/series/73840/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
748167061786 drm/i915/selftests: Verify LRC isolation
-:451: WARNING:MEMORY_BARRIER: memory barrier without comment
#451: FILE: drivers/gpu/drm/i915/gt/selftest_lrc.c:5181:
+	wmb();

total: 0 errors, 1 warnings, 0 checks, 559 lines checked
43180ee37d91 drm/i915/selftests: Check recovery from corrupted LRC
91df47ab4b46 drm/i915: Flush idle barriers when waiting
9b9b9e729e66 drm/i915: Allow userspace to specify ringsize on construction
-:228: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#228: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 305 lines checked
78811038e2dc drm/i915/gem: Honour O_NONBLOCK before throttling execbuf submissions
f8a4a1a69d1e drm/i915/selftests: Be a little more lenient for reset workers
78e115ce3f07 drm/i915: Protect i915_request_await_start from early waits
0a2f475520dc drm/i915/gem: Consolidate ctx->engines[] release
7cb395eb4a69 drm/i915/gt: Prevent allocation on a banned context
cc42d7921f1b drm/i915/gem: Check that the context wasn't closed during setup
69ce6bbda208 drm/i915/gt: Declare when we enabled timeslicing
01288567a278 drm/i915/gt: Yield the timeslice if caught waiting on a user semaphore
b77c79afbfe7 drm/i915/execlists: Check the sentinel is alone in the ELSP
d3bd4cdb8f90 drm/i915/execlists: Reduce preempt-to-busy roundtrip delay

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
