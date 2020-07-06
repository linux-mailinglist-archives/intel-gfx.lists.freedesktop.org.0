Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B9512152CB
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jul 2020 08:51:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8138B89EB1;
	Mon,  6 Jul 2020 06:51:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id BECB389E19;
 Mon,  6 Jul 2020 06:51:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B745EA47E6;
 Mon,  6 Jul 2020 06:51:29 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 06 Jul 2020 06:51:29 -0000
Message-ID: <159401828971.17682.7170805975334495115@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200706061926.6687-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200706061926.6687-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/20=5D_drm/i915=3A_Preallocate_stashes_f?=
 =?utf-8?q?or_vma_page-directories?=
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

Series: series starting with [01/20] drm/i915: Preallocate stashes for vma page-directories
URL   : https://patchwork.freedesktop.org/series/79129/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8708 -> Patchwork_18082
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18082/index.html

Known issues
------------

  Here are the changes found in Patchwork_18082 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-ilk-650:         [PASS][1] -> [DMESG-WARN][2] ([i915#164])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/fi-ilk-650/igt@gem_exec_suspend@basic-s0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18082/fi-ilk-650/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_flink_basic@double-flink:
    - fi-tgl-y:           [PASS][3] -> [DMESG-WARN][4] ([i915#402]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/fi-tgl-y/igt@gem_flink_basic@double-flink.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18082/fi-tgl-y/igt@gem_flink_basic@double-flink.html

  * igt@kms_busy@basic@flip:
    - fi-kbl-x1275:       [PASS][5] -> [DMESG-WARN][6] ([i915#62] / [i915#92] / [i915#95])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/fi-kbl-x1275/igt@kms_busy@basic@flip.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18082/fi-kbl-x1275/igt@kms_busy@basic@flip.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-tgl-u2:          [FAIL][7] ([i915#1888]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18082/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html

  * igt@i915_pm_backlight@basic-brightness:
    - fi-whl-u:           [DMESG-WARN][9] ([i915#95]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/fi-whl-u/igt@i915_pm_backlight@basic-brightness.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18082/fi-whl-u/igt@i915_pm_backlight@basic-brightness.html

  * igt@vgem_basic@setversion:
    - fi-tgl-y:           [DMESG-WARN][11] ([i915#402]) -> [PASS][12] +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/fi-tgl-y/igt@vgem_basic@setversion.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18082/fi-tgl-y/igt@vgem_basic@setversion.html

  
#### Warnings ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-kbl-x1275:       [DMESG-WARN][13] ([i915#62] / [i915#92]) -> [DMESG-WARN][14] ([i915#62] / [i915#92] / [i915#95]) +3 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/fi-kbl-x1275/igt@gem_exec_suspend@basic-s0.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18082/fi-kbl-x1275/igt@gem_exec_suspend@basic-s0.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size:
    - fi-kbl-x1275:       [DMESG-WARN][15] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][16] ([i915#62] / [i915#92]) +2 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18082/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html

  
  [i915#164]: https://gitlab.freedesktop.org/drm/intel/issues/164
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (43 -> 37)
------------------------------

  Additional (1): fi-skl-guc 
  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8708 -> Patchwork_18082

  CI-20190529: 20190529
  CI_DRM_8708: 170e94a1430fd0a4f0841ad0f7366904d52e49be @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5722: 9985cf23e9db9557bc7d714f5b72602e427497d3 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18082: 33bcfafbc4ab5abd3e686c0e7b58aa7f7b61da4a @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

33bcfafbc4ab drm/i915: Track i915_vma with its own reference counter
f3622825131d drm/i915/gem: Replace i915_gem_object.mm.mutex with reservation_ww_class
0c763806ba4f drm/i915/gem: Pull execbuf dma resv under a single critical section
2036c3ef6f3e drm/i915: Add an implementation for i915_gem_ww_ctx locking, v2.
3a96506f63d3 drm/i915/gem: Reintroduce multiple passes for reloc processing
8b519af3185f drm/i915/gem: Include secure batch in common execbuf pinning
6002974eb6ce drm/i915/gem: Include cmdparser in common execbuf pinning
92aa37aeda01 drm/i915/gem: Bind the fence async for execbuf
a1fb11db685d drm/i915/gem: Asynchronous GTT unbinding
8669de2e382e drm/i915/gem: Separate the ww_mutex walker into its own list
fe694efd1728 drm/i915: Export a preallocate variant of i915_active_acquire()
03e637530b30 drm/i915/gem: Assign context id for async work
ed90e5840625 drm/i915: Always defer fenced work to the worker
acb85ac92a2f drm/i915: Add list_for_each_entry_safe_continue_reverse
c3cc3ce10691 drm/i915/gem: Remove the call for no-evict i915_vma_pin
6779fcaed114 drm/i915/gem: Break apart the early i915_vma_pin from execbuf object lookup
a8aa1e74f47e drm/i915/gem: Rename execbuf.bind_link to unbound_link
1da308be5b55 drm/i915/gem: Don't drop the timeline lock during execbuf
5ff5ae1fb079 drm/i915: Switch to object allocations for page directories
b5c5d0ce6d3d drm/i915: Preallocate stashes for vma page-directories

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18082/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
