Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63632199DD9
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2020 20:13:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A76A46E200;
	Tue, 31 Mar 2020 18:13:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 39D136E200;
 Tue, 31 Mar 2020 18:13:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3379CA00E6;
 Tue, 31 Mar 2020 18:13:31 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Tue, 31 Mar 2020 18:13:31 -0000
Message-ID: <158567841118.5565.6953821109060955886@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200331104209.432176-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20200331104209.432176-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/23=5D_Revert_=22drm/i915/gem=3A_Drop_re?=
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

Series: series starting with [01/23] Revert "drm/i915/gem: Drop relocation slowpath"
URL   : https://patchwork.freedesktop.org/series/75303/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8228 -> Patchwork_17153
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17153 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17153, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17153/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17153:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_close_race@basic-process:
    - fi-ivb-3770:        [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/fi-ivb-3770/igt@gem_close_race@basic-process.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17153/fi-ivb-3770/igt@gem_close_race@basic-process.html
    - fi-hsw-4770:        [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/fi-hsw-4770/igt@gem_close_race@basic-process.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17153/fi-hsw-4770/igt@gem_close_race@basic-process.html

  * igt@gem_exec_fence@basic-await@rcs0:
    - fi-blb-e6850:       [PASS][5] -> [DMESG-WARN][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/fi-blb-e6850/igt@gem_exec_fence@basic-await@rcs0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17153/fi-blb-e6850/igt@gem_exec_fence@basic-await@rcs0.html
    - fi-elk-e7500:       [PASS][7] -> [DMESG-WARN][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/fi-elk-e7500/igt@gem_exec_fence@basic-await@rcs0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17153/fi-elk-e7500/igt@gem_exec_fence@basic-await@rcs0.html
    - fi-pnv-d510:        [PASS][9] -> [DMESG-WARN][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/fi-pnv-d510/igt@gem_exec_fence@basic-await@rcs0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17153/fi-pnv-d510/igt@gem_exec_fence@basic-await@rcs0.html
    - fi-ilk-650:         [PASS][11] -> [DMESG-WARN][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/fi-ilk-650/igt@gem_exec_fence@basic-await@rcs0.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17153/fi-ilk-650/igt@gem_exec_fence@basic-await@rcs0.html

  * igt@gem_exec_fence@basic-await@vcs0:
    - fi-ilk-650:         [PASS][13] -> [INCOMPLETE][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/fi-ilk-650/igt@gem_exec_fence@basic-await@vcs0.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17153/fi-ilk-650/igt@gem_exec_fence@basic-await@vcs0.html

  * igt@gem_render_tiled_blits@basic:
    - fi-gdg-551:         [PASS][15] -> [DMESG-WARN][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/fi-gdg-551/igt@gem_render_tiled_blits@basic.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17153/fi-gdg-551/igt@gem_render_tiled_blits@basic.html

  * igt@i915_selftest@live@gem_contexts:
    - fi-cfl-8109u:       [PASS][17] -> [DMESG-WARN][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/fi-cfl-8109u/igt@i915_selftest@live@gem_contexts.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17153/fi-cfl-8109u/igt@i915_selftest@live@gem_contexts.html
    - fi-skl-lmem:        [PASS][19] -> [DMESG-WARN][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/fi-skl-lmem/igt@i915_selftest@live@gem_contexts.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17153/fi-skl-lmem/igt@i915_selftest@live@gem_contexts.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@gem_contexts:
    - {fi-kbl-7560u}:     [PASS][21] -> [DMESG-WARN][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/fi-kbl-7560u/igt@i915_selftest@live@gem_contexts.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17153/fi-kbl-7560u/igt@i915_selftest@live@gem_contexts.html

  
Known issues
------------

  Here are the changes found in Patchwork_17153 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-process:
    - fi-byt-j1900:       [PASS][23] -> [INCOMPLETE][24] ([i915#45])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/fi-byt-j1900/igt@gem_close_race@basic-process.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17153/fi-byt-j1900/igt@gem_close_race@basic-process.html
    - fi-byt-n2820:       [PASS][25] -> [INCOMPLETE][26] ([i915#45])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/fi-byt-n2820/igt@gem_close_race@basic-process.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17153/fi-byt-n2820/igt@gem_close_race@basic-process.html

  * igt@gem_exec_fence@basic-await@vcs0:
    - fi-elk-e7500:       [PASS][27] -> [INCOMPLETE][28] ([i915#66])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/fi-elk-e7500/igt@gem_exec_fence@basic-await@vcs0.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17153/fi-elk-e7500/igt@gem_exec_fence@basic-await@vcs0.html

  * igt@i915_module_load@reload:
    - fi-cfl-guc:         [PASS][29] -> [INCOMPLETE][30] ([i915#1390])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/fi-cfl-guc/igt@i915_module_load@reload.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17153/fi-cfl-guc/igt@i915_module_load@reload.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1390]: https://gitlab.freedesktop.org/drm/intel/issues/1390
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#66]: https://gitlab.freedesktop.org/drm/intel/issues/66


Participating hosts (48 -> 40)
------------------------------

  Additional (1): fi-kbl-soraka 
  Missing    (9): fi-hsw-4200u fi-hsw-peppy fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus fi-byt-clapper fi-skl-6600u fi-snb-2600 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8228 -> Patchwork_17153

  CI-20190529: 20190529
  CI_DRM_8228: 1f33fcd4f840355af75a61ce7204f39bafc52018 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5548: d9e70dc1b35633b7d5c81cbfa165e331189eb260 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17153: 783376875259ac31360f42c83a606c2762400071 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

783376875259 drm/i915: Ensure we hold the pin mutex
46887931504c drm/i915: Add ww locking to pin_to_display_plane
837267b4880f drm/i915: Add ww locking to vm_fault_gtt
9b4f1c5ce49e drm/i915: Move i915_vma_lock in the selftests to avoid lock inversion, v2.
2b05d002a697 drm/i915: Use ww pinning for intel_context_create_request()
46a71cab08bb drm/i915/selftests: Fix locking inversion in lrc selftest.
e18d1f7e2329 drm/i915: Dirty hack to fix selftests locking inversion
e20a2878f608 drm/i915: Convert i915_perf to ww locking as well
c986782b8ae9 drm/i915: Kill last user of intel_context_create_request outside of selftests
b2ff840394a8 drm/i915: Convert i915_gem_object/client_blt.c to use ww locking as well, v2.
147622f95cc6 drm/i915: Make sure execbuffer always passes ww state to i915_vma_pin.
d48be0119197 drm/i915: Rework intel_context pinning to do everything outside of pin_mutex
854e2ee83997 drm/i915: Pin engine before pinning all objects, v3.
5146c267604d drm/i915: Nuke arguments to eb_pin_engine
c1e7cee727f1 drm/i915: Add ww context handling to context_barrier_task
3df3f15a61a1 drm/i915: Use ww locking in intel_renderstate.
56ce33f78717 drm/i915: Use per object locking in execbuf, v7.
4541b2c7c495 Revert "drm/i915/gem: Split eb_vma into its own allocation"
916faf76594a drm/i915: Parse command buffer earlier in eb_relocate(slow)
d25a2e312d46 drm/i915: Remove locking from i915_gem_object_prepare_read/write
bf82242e9adb drm/i915: Add an implementation for i915_gem_ww_ctx locking, v2.
9a40fc4e0126 perf/core: Only copy-to-user after completely unlocking all locks.
eeef100fe92e Revert "drm/i915/gem: Drop relocation slowpath"

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17153/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
