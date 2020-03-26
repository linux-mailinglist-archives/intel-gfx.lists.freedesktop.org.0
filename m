Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F5A119457A
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2020 18:32:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DF206E8F4;
	Thu, 26 Mar 2020 17:32:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D8F826E8F4;
 Thu, 26 Mar 2020 17:32:35 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D16D3A432F;
 Thu, 26 Mar 2020 17:32:35 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Thu, 26 Mar 2020 17:32:35 -0000
Message-ID: <158524395582.23002.6433640431605664642@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200326114922.1820274-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20200326114922.1820274-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/21=5D_Revert_=22drm/i915/gem=3A_Drop_re?=
 =?utf-8?q?location_slowpath=22?=
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

Series: series starting with [01/21] Revert "drm/i915/gem: Drop relocation slowpath"
URL   : https://patchwork.freedesktop.org/series/75115/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8194 -> Patchwork_17096
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17096 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17096, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17096/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17096:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_close_race@basic-process:
    - fi-ivb-3770:        [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8194/fi-ivb-3770/igt@gem_close_race@basic-process.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17096/fi-ivb-3770/igt@gem_close_race@basic-process.html
    - fi-hsw-4770:        [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8194/fi-hsw-4770/igt@gem_close_race@basic-process.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17096/fi-hsw-4770/igt@gem_close_race@basic-process.html
    - fi-hsw-4770r:       [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8194/fi-hsw-4770r/igt@gem_close_race@basic-process.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17096/fi-hsw-4770r/igt@gem_close_race@basic-process.html

  * igt@gem_exec_fence@basic-await@rcs0:
    - fi-blb-e6850:       [PASS][7] -> [DMESG-WARN][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8194/fi-blb-e6850/igt@gem_exec_fence@basic-await@rcs0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17096/fi-blb-e6850/igt@gem_exec_fence@basic-await@rcs0.html
    - fi-elk-e7500:       [PASS][9] -> [DMESG-WARN][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8194/fi-elk-e7500/igt@gem_exec_fence@basic-await@rcs0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17096/fi-elk-e7500/igt@gem_exec_fence@basic-await@rcs0.html
    - fi-pnv-d510:        [PASS][11] -> [DMESG-WARN][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8194/fi-pnv-d510/igt@gem_exec_fence@basic-await@rcs0.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17096/fi-pnv-d510/igt@gem_exec_fence@basic-await@rcs0.html
    - fi-ilk-650:         [PASS][13] -> [DMESG-WARN][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8194/fi-ilk-650/igt@gem_exec_fence@basic-await@rcs0.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17096/fi-ilk-650/igt@gem_exec_fence@basic-await@rcs0.html

  * igt@gem_exec_fence@basic-await@vcs0:
    - fi-ilk-650:         [PASS][15] -> [INCOMPLETE][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8194/fi-ilk-650/igt@gem_exec_fence@basic-await@vcs0.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17096/fi-ilk-650/igt@gem_exec_fence@basic-await@vcs0.html

  * igt@gem_render_tiled_blits@basic:
    - fi-gdg-551:         [PASS][17] -> [DMESG-WARN][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8194/fi-gdg-551/igt@gem_render_tiled_blits@basic.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17096/fi-gdg-551/igt@gem_render_tiled_blits@basic.html

  * igt@i915_selftest@live@gem_contexts:
    - fi-skl-lmem:        [PASS][19] -> [DMESG-WARN][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8194/fi-skl-lmem/igt@i915_selftest@live@gem_contexts.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17096/fi-skl-lmem/igt@i915_selftest@live@gem_contexts.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@gem_contexts:
    - {fi-kbl-7560u}:     NOTRUN -> [DMESG-WARN][21]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17096/fi-kbl-7560u/igt@i915_selftest@live@gem_contexts.html

  
Known issues
------------

  Here are the changes found in Patchwork_17096 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_fence@basic-await@vcs0:
    - fi-elk-e7500:       [PASS][22] -> [INCOMPLETE][23] ([i915#66])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8194/fi-elk-e7500/igt@gem_exec_fence@basic-await@vcs0.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17096/fi-elk-e7500/igt@gem_exec_fence@basic-await@vcs0.html

  * igt@i915_selftest@live@execlists:
    - fi-icl-y:           [PASS][24] -> [DMESG-FAIL][25] ([fdo#108569])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8194/fi-icl-y/igt@i915_selftest@live@execlists.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17096/fi-icl-y/igt@i915_selftest@live@execlists.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@hangcheck:
    - fi-icl-guc:         [INCOMPLETE][26] ([fdo#108569]) -> [PASS][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8194/fi-icl-guc/igt@i915_selftest@live@hangcheck.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17096/fi-icl-guc/igt@i915_selftest@live@hangcheck.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108569]: https://bugs.freedesktop.org/show_bug.cgi?id=108569
  [i915#66]: https://gitlab.freedesktop.org/drm/intel/issues/66


Participating hosts (43 -> 35)
------------------------------

  Additional (3): fi-kbl-7560u fi-byt-n2820 fi-bwr-2160 
  Missing    (11): fi-ilk-m540 fi-bsw-n3050 fi-byt-j1900 fi-hsw-4200u fi-hsw-peppy fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-bsw-kefka fi-bdw-samus fi-skl-6600u 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8194 -> Patchwork_17096

  CI-20190529: 20190529
  CI_DRM_8194: 0045c2479d9746be67d0b485ef0d92e238e4f2bd @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5539: e7aae12e37771a8b7796ba252574eb832a5839c3 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17096: 1551e4c71efc6dee3621d5001be97ff8056ba1e1 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

1551e4c71efc drm/i915: Ensure we hold the pin mutex
1e09059f0103 drm/i915: Add ww locking to pin_to_display_plane
e91160d4fd13 drm/i915: Add ww locking to vm_fault_gtt
5f66150eaf57 drm/i915: Move i915_vma_lock in the selftests to avoid lock inversion, v2.
75eb93acc311 drm/i915: Use ww pinning for intel_context_create_request()
b03c1aeda1ed drm/i915/selftests: Fix locking inversion in lrc selftest.
26070db64fbd drm/i915: Dirty hack to fix selftests locking inversion
f90980b43cf5 drm/i915: Convert i915_perf to ww locking as well
cb74e29ea87a drm/i915: Kill last user of intel_context_create_request outside of selftests
85863b6646f5 drm/i915: Convert i915_gem_object/client_blt.c to use ww locking as well, v2.
cfef16270648 drm/i915: Make sure execbuffer always passes ww state to i915_vma_pin.
9f9b3ccbfee0 drm/i915: Rework intel_context pinning to do everything outside of pin_mutex
757c8e3383b2 drm/i915: Pin engine before pinning all objects, v3.
6d83bbf7ff96 drm/i915: Nuke arguments to eb_pin_engine
0200da0a1df9 drm/i915: Add ww context handling to context_barrier_task
bfe136b956c4 drm/i915: Use ww locking in intel_renderstate.
4f72eac68d80 drm/i915: Use per object locking in execbuf, v6.
41b0db48a24c drm/i915: Parse command buffer earlier in eb_relocate(slow)
74e05c05e4b8 drm/i915: Remove locking from i915_gem_object_prepare_read/write
936cc0098d93 drm/i915: Add an implementation for i915_gem_ww_ctx locking, v2.
d083289b34df Revert "drm/i915/gem: Drop relocation slowpath"

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17096/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
