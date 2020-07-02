Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0058A212029
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jul 2020 11:40:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51F556EA1C;
	Thu,  2 Jul 2020 09:40:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E65566E21C;
 Thu,  2 Jul 2020 09:40:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D9038A0BA8;
 Thu,  2 Jul 2020 09:40:21 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 02 Jul 2020 09:40:21 -0000
Message-ID: <159368282188.5655.3351679397762638311@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200702083225.20044-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200702083225.20044-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/23=5D_drm/i915=3A_Drop_vm=2Eref_for_dup?=
 =?utf-8?q?licate_vma_on_construction?=
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

Series: series starting with [01/23] drm/i915: Drop vm.ref for duplicate vma on construction
URL   : https://patchwork.freedesktop.org/series/79037/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8692 -> Patchwork_18065
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18065/index.html

Known issues
------------

  Here are the changes found in Patchwork_18065 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-u2:          [PASS][1] -> [FAIL][2] ([i915#1888]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8692/fi-tgl-u2/igt@gem_exec_suspend@basic-s3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18065/fi-tgl-u2/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_linear_blits@basic:
    - fi-tgl-u2:          [PASS][3] -> [DMESG-WARN][4] ([i915#402])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8692/fi-tgl-u2/igt@gem_linear_blits@basic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18065/fi-tgl-u2/igt@gem_linear_blits@basic.html

  * igt@i915_pm_backlight@basic-brightness:
    - fi-whl-u:           [PASS][5] -> [DMESG-WARN][6] ([i915#95])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8692/fi-whl-u/igt@i915_pm_backlight@basic-brightness.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18065/fi-whl-u/igt@i915_pm_backlight@basic-brightness.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1:
    - fi-icl-u2:          [PASS][7] -> [DMESG-WARN][8] ([i915#1982])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8692/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18065/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@module-reload:
    - fi-glk-dsi:         [DMESG-WARN][9] ([i915#1982]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8692/fi-glk-dsi/igt@i915_pm_rpm@module-reload.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18065/fi-glk-dsi/igt@i915_pm_rpm@module-reload.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - {fi-kbl-7560u}:     [DMESG-WARN][11] ([i915#1982]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8692/fi-kbl-7560u/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18065/fi-kbl-7560u/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  
#### Warnings ####

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-x1275:       [SKIP][13] ([fdo#109271]) -> [DMESG-FAIL][14] ([i915#62])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8692/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18065/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:
    - fi-kbl-x1275:       [DMESG-WARN][15] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][16] ([i915#62] / [i915#92]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8692/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18065/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (43 -> 37)
------------------------------

  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8692 -> Patchwork_18065

  CI-20190529: 20190529
  CI_DRM_8692: e30abe29fd5407631a61d48f93bad5fdeba8080d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5720: f35053d4b6d7bbcf6505ef67a8bd56acc7fb2eb2 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18065: 6f377648e7f5e352bf1600ef1f8954ec04781765 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

6f377648e7f5 drm/i915/gem: Pull execbuf dma resv under a single critical section
1375d1da0182 drm/i915: Add an implementation for i915_gem_ww_ctx locking, v2.
db49ec7ea2ce drm/i915/gem: Reintroduce multiple passes for reloc processing
c9ad9f9d60dd drm/i915/gem: Include secure batch in common execbuf pinning
67d8c52b893a drm/i915/gem: Include cmdparser in common execbuf pinning
11531ee318da drm/i915/gem: Bind the fence async for execbuf
9596fd217b0e drm/i915/gem: Asynchronous GTT unbinding
3474748efc48 drm/i915/gem: Separate the ww_mutex walker into its own list
658265850918 drm/i915: Export a preallocate variant of i915_active_acquire()
3bc8dcef47f8 drm/i915/gem: Assign context id for async work
5f2ba176cfcc drm/i915: Always defer fenced work to the worker
8041afeb3c3a drm/i915: Add list_for_each_entry_safe_continue_reverse
6095d5335d88 drm/i915/gem: Remove the call for no-evict i915_vma_pin
6ce1d70bdaa0 drm/i915/gem: Break apart the early i915_vma_pin from execbuf object lookup
84600d1a1d00 drm/i915/gem: Rename execbuf.bind_link to unbound_link
880e4a90f882 drm/i915/gem: Don't drop the timeline lock during execbuf
84369a1c6dad drm/i915: Switch to object allocations for page directories
41eb0c64c9b6 drm/i915: Preallocate stashes for vma page-directories
ceb2d68f55a0 drm/i915: Export ppgtt_bind_vma
63cac79e5aff drm/i915/gem: Only revoke mmap handlers if active
981b52482265 drm/i915/gem: Drop forced struct_mutex from shrinker_taints_mutex
02e97324e6dd drm/i915/gem: Split the context's obj:vma lut into its own mutex
2b716a4a1108 drm/i915: Drop vm.ref for duplicate vma on construction

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18065/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
