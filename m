Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 492AB1E5A8E
	for <lists+intel-gfx@lfdr.de>; Thu, 28 May 2020 10:16:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1CF76E1D6;
	Thu, 28 May 2020 08:16:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3A8486E123;
 Thu, 28 May 2020 08:16:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 35241A0BA8;
 Thu, 28 May 2020 08:16:32 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 28 May 2020 08:16:32 -0000
Message-ID: <159065379219.685.1377284884423656907@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200528074109.28235-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200528074109.28235-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/11=5D_drm/i915/gt=3A_Prevent_timeslicin?=
 =?utf-8?q?g_into_unpreemptable_requests?=
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

Series: series starting with [01/11] drm/i915/gt: Prevent timeslicing into unpreemptable requests
URL   : https://patchwork.freedesktop.org/series/77729/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8545 -> Patchwork_17800
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17800/index.html

New tests
---------

  New tests have been introduced between CI_DRM_8545 and Patchwork_17800:

### New IGT tests (1) ###

  * igt@dmabuf@all@dma_fence_proxy:
    - Statuses : 41 pass(s)
    - Exec time: [0.03, 0.10] s

  

Known issues
------------

  Here are the changes found in Patchwork_17800 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@active:
    - fi-skl-6600u:       [PASS][1] -> [DMESG-FAIL][2] ([i915#666])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8545/fi-skl-6600u/igt@i915_selftest@live@active.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17800/fi-skl-6600u/igt@i915_selftest@live@active.html

  
#### Warnings ####

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-x1275:       [SKIP][3] ([fdo#109271]) -> [FAIL][4] ([i915#62] / [i915#95])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8545/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17800/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#666]: https://gitlab.freedesktop.org/drm/intel/issues/666
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (49 -> 44)
------------------------------

  Additional (2): fi-bdw-gvtdvm fi-cfl-8700k 
  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8545 -> Patchwork_17800

  CI-20190529: 20190529
  CI_DRM_8545: 76540f7be4ff04851e47d0865c2bb07a15106bcb @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5681: 2991a5d60b1bbf2b2b6004669cd0f9471bd687a2 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17800: 6571dd270ea5be73c0e958eebdaaa16b8b022899 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

6571dd270ea5 drm/i915/gem: Make relocations atomic within execbuf
eb43b54bec13 drm/i915: Unpeel awaits on a proxy fence
53c8e6601d79 dma-buf: Proxy fence, an unsignaled fence placeholder
167c2cf62a5f drm/i915/gem: Build the reloc request first
cf93e1fda67c drm/i915/gem: Add all GPU reloc awaits/signals en masse
75206988e02e drm/i915/gem: Lift GPU relocation allocation
9c0586c970ee drm/i915/gem: Separate reloc validation into an earlier step
f0df73f7c503 drm/i915: Add list_for_each_entry_safe_continue_reverse
1fbd041e4db7 drm/i915/gem: Async GPU relocations only
afdac8049573 drm/i915/gt: Don't declare hangs if engine is stalled
55a37e373e5e drm/i915/gt: Prevent timeslicing into unpreemptable requests

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17800/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
