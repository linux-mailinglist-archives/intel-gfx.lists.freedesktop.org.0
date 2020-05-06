Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 832601C7D4F
	for <lists+intel-gfx@lfdr.de>; Thu,  7 May 2020 00:27:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D744E6E8F9;
	Wed,  6 May 2020 22:27:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 491B36E072;
 Wed,  6 May 2020 22:27:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 41ADAA00FD;
 Wed,  6 May 2020 22:27:02 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 06 May 2020 22:27:02 -0000
Message-ID: <158880402224.11895.18347423582400279651@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200506205920.24233-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200506205920.24233-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/15=5D_drm/i915=3A_Mark_concurrent_submi?=
 =?utf-8?q?ssions_with_a_weak-dependency?=
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
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8438 -> Patchwork_17594
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17594/index.html

New tests
---------

  New tests have been introduced between CI_DRM_8438 and Patchwork_17594:

### New IGT tests (1) ###

  * igt@dmabuf@all@dma_fence_proxy:
    - Statuses : 41 pass(s)
    - Exec time: [0.03, 0.11] s

  


Changes
-------

  No changes found


Participating hosts (51 -> 44)
------------------------------

  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8438 -> Patchwork_17594

  CI-20190529: 20190529
  CI_DRM_8438: 9463611ee93f4b254044b8b2467a1e81f942ad01 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5635: e83abfca61d407d12eee4d25bb0e8686337a7791 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17594: 910c4873269efb99a9f1acb0b0973ef8e1f99b55 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

910c4873269e drm/i915/selftests: Always call the provided engine->emit_init_breadcrumb
f6a254c43951 drm/i915: Drop I915_IDLE_ENGINES_TIMEOUT
46923cb2289b drm/i915: Drop I915_RESET_TIMEOUT and friends
1ff0bbcd9c06 drm/i915: Replace the hardcoded I915_FENCE_TIMEOUT
4033c2787147 drm/i915/gt: Declare when we enabled timeslicing
b4a7c0a0af97 drm/i915/gem: Allow combining submit-fences with syncobj
f990eeccd3d6 drm/i915/gem: Teach execbuf how to wait on future syncobj
b11795efb1d4 drm/syncobj: Allow use of dma-fence-proxy
801bf6c793e9 dma-buf: Proxy fence, an unsignaled fence placeholder
85414af39de2 drm/i915: Tidy awaiting on dma-fences
64e092f0d4cc drm/i915: Prevent using semaphores to chain up to external fences
671848e2a77e drm/i915: Pull waiting on an external dma-fence into its routine
35107d053a86 drm/i915: Ignore submit-fences on the same timeline
7f4c2d9c8b7f drm/i915/gt: Suppress internal I915_PRIORITY_WAIT for timeslicing
e532b66dff06 drm/i915: Mark concurrent submissions with a weak-dependency

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17594/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
