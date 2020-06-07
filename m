Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91B861F1058
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jun 2020 01:12:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26BFB6E209;
	Sun,  7 Jun 2020 23:12:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3C2506E151;
 Sun,  7 Jun 2020 23:12:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 33F5BA363D;
 Sun,  7 Jun 2020 23:12:07 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sun, 07 Jun 2020 23:12:07 -0000
Message-ID: <159157152718.15987.7294706311004882491@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200607222108.14401-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200607222108.14401-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/28=5D_drm/i915=3A_Adjust_the_sentinel_a?=
 =?utf-8?q?ssert_to_match_implementation?=
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

Series: series starting with [01/28] drm/i915: Adjust the sentinel assert to match implementation
URL   : https://patchwork.freedesktop.org/series/78103/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8597 -> Patchwork_17902
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17902/index.html

New tests
---------

  New tests have been introduced between CI_DRM_8597 and Patchwork_17902:

### New IGT tests (1) ###

  * igt@dmabuf@all@dma_fence_proxy:
    - Statuses : 40 pass(s)
    - Exec time: [0.03, 0.11] s

  

Known issues
------------

  Here are the changes found in Patchwork_17902 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_busy@basic@flip:
    - fi-kbl-x1275:       [PASS][1] -> [DMESG-WARN][2] ([i915#62] / [i915#92] / [i915#95])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/fi-kbl-x1275/igt@kms_busy@basic@flip.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17902/fi-kbl-x1275/igt@kms_busy@basic@flip.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-bsw-n3050:       [PASS][3] -> [DMESG-WARN][4] ([i915#1982])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/fi-bsw-n3050/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17902/fi-bsw-n3050/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:
    - fi-icl-u2:          [PASS][5] -> [DMESG-WARN][6] ([i915#1982])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17902/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html

  
#### Possible fixes ####

  * igt@i915_module_load@reload:
    - {fi-tgl-dsi}:       [DMESG-WARN][7] ([i915#1982]) -> [PASS][8] +2 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/fi-tgl-dsi/igt@i915_module_load@reload.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17902/fi-tgl-dsi/igt@i915_module_load@reload.html
    - fi-icl-y:           [DMESG-WARN][9] ([i915#1982]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/fi-icl-y/igt@i915_module_load@reload.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17902/fi-icl-y/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@module-reload:
    - fi-icl-guc:         [DMESG-WARN][11] ([i915#1982]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/fi-icl-guc/igt@i915_pm_rpm@module-reload.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17902/fi-icl-guc/igt@i915_pm_rpm@module-reload.html

  
#### Warnings ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-kbl-x1275:       [DMESG-WARN][13] ([i915#62] / [i915#92]) -> [DMESG-WARN][14] ([i915#62] / [i915#92] / [i915#95]) +2 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/fi-kbl-x1275/igt@gem_exec_suspend@basic-s0.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17902/fi-kbl-x1275/igt@gem_exec_suspend@basic-s0.html

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-x1275:       [SKIP][15] ([fdo#109271]) -> [DMESG-FAIL][16] ([i915#62])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17902/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html

  * igt@kms_force_connector_basic@prune-stale-modes:
    - fi-kbl-x1275:       [DMESG-WARN][17] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][18] ([i915#62] / [i915#92]) +6 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8597/fi-kbl-x1275/igt@kms_force_connector_basic@prune-stale-modes.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17902/fi-kbl-x1275/igt@kms_force_connector_basic@prune-stale-modes.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (48 -> 42)
------------------------------

  Missing    (6): fi-ilk-m540 fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8597 -> Patchwork_17902

  CI-20190529: 20190529
  CI_DRM_8597: aadd3cf12a7c515bca8752da797ded56a003617b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5696: 8d1744239f4300eb12d5bab14a30b79d9c8dd364 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17902: 1dad2fcca4f707aa870be1a45bb28bfb4c2b0f73 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

1dad2fcca4f7 drm/i915: Replace the priority boosting for the display with a deadline
29754bd08fd1 drm/i915/gt: Specify a deadline for the heartbeat
62d3790caaf1 drm/i915: Fair low-latency scheduling
956673f1ee95 drm/i915/gt: Check for a completed last request once
36de84a8bd2b ipi-dag
2084c4ff504b drm/i915: Restructure priority inheritance
f9a12aff6156 drm/i915: Teach the i915_dependency to use a double-lock
95ddc88b38ef drm/i915/gt: Do not suspend bonded requests if one hangs
e82c48f763c2 drm/i915: Replace engine->schedule() with a known request operation
40a48b3a4cd5 drm/i915: Remove I915_USER_PRIORITY_SHIFT
50d452bcc3eb drm/i915: Strip out internal priorities
097cde1f158a drm/i915/gem: Make relocations atomic within execbuf
54c54ac54e10 drm/i915: Unpeel awaits on a proxy fence
0cf43f808ad7 drm/i915: Lift waiter/signaler iterators
78cb8746679e dma-buf: Proxy fence, an unsignaled fence placeholder
b03d9c429a48 drm/i915/gem: Add all GPU reloc awaits/signals en masse
06166bdaf5a2 drm/i915/gem: Build the reloc request first
6e281d4c956c drm/i915/gem: Lift GPU relocation allocation
3fa210c03e00 drm/i915/gem: Separate reloc validation into an earlier step
85be36e07c69 drm/i915: Add list_for_each_entry_safe_continue_reverse
7e90a16cc7ce drm/i915/gt: Resubmit the virtual engine on schedule-out
61f3b28c89b9 drm/i915/gt: Decouple inflight virtual engines
7253a1d1220b drm/i915/gt: Use virtual_engine during execlists_dequeue
a4fea0425495 drm/i915/selftests: Trim execlists runtime
f2f769eafd3d drm/i915/selftests: Remove live_suppress_wait_preempt
854873908649 drm/i915/selftests: Teach hang-self to target only itself
b94a954251d4 drm/i915/selftests: Make the hanging request non-preemptible
f23f25433228 drm/i915: Adjust the sentinel assert to match implementation

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17902/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
