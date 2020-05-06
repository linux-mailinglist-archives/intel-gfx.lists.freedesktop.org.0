Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A4AB1C7CF5
	for <lists+intel-gfx@lfdr.de>; Thu,  7 May 2020 00:02:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C0606E8F7;
	Wed,  6 May 2020 22:02:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4D8156E8F2;
 Wed,  6 May 2020 22:02:40 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4B8DBA0BCB;
 Wed,  6 May 2020 22:02:40 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 06 May 2020 22:02:40 -0000
Message-ID: <158880256030.11898.4538223656784423425@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200506205920.24233-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200506205920.24233-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B01/15=5D_drm/i915=3A_Mark_concurren?=
 =?utf-8?q?t_submissions_with_a_weak-dependency?=
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

Series: series starting with [01/15] drm/i915: Mark concurrent submissions with a weak-dependency
URL   : https://patchwork.freedesktop.org/series/77008/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
e532b66dff06 drm/i915: Mark concurrent submissions with a weak-dependency
7f4c2d9c8b7f drm/i915/gt: Suppress internal I915_PRIORITY_WAIT for timeslicing
35107d053a86 drm/i915: Ignore submit-fences on the same timeline
671848e2a77e drm/i915: Pull waiting on an external dma-fence into its routine
64e092f0d4cc drm/i915: Prevent using semaphores to chain up to external fences
85414af39de2 drm/i915: Tidy awaiting on dma-fences
801bf6c793e9 dma-buf: Proxy fence, an unsignaled fence placeholder
-:45: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#45: 
new file mode 100644

-:380: CHECK:UNCOMMENTED_DEFINITION: spinlock_t definition without comment
#380: FILE: drivers/dma-buf/st-dma-fence-proxy.c:20:
+	spinlock_t lock;

-:540: WARNING:MEMORY_BARRIER: memory barrier without comment
#540: FILE: drivers/dma-buf/st-dma-fence-proxy.c:180:
+	smp_store_mb(container_of(cb, struct simple_cb, cb)->seen, true);

total: 0 errors, 2 warnings, 1 checks, 1043 lines checked
b11795efb1d4 drm/syncobj: Allow use of dma-fence-proxy
f990eeccd3d6 drm/i915/gem: Teach execbuf how to wait on future syncobj
b4a7c0a0af97 drm/i915/gem: Allow combining submit-fences with syncobj
4033c2787147 drm/i915/gt: Declare when we enabled timeslicing
1ff0bbcd9c06 drm/i915: Replace the hardcoded I915_FENCE_TIMEOUT
-:111: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#111: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 125 lines checked
46923cb2289b drm/i915: Drop I915_RESET_TIMEOUT and friends
f6a254c43951 drm/i915: Drop I915_IDLE_ENGINES_TIMEOUT
910c4873269e drm/i915/selftests: Always call the provided engine->emit_init_breadcrumb

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
