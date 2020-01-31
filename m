Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8544114E6E7
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2020 02:55:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A33FF6FA57;
	Fri, 31 Jan 2020 01:55:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7FE516E0EE;
 Fri, 31 Jan 2020 01:55:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 76A0DA0087;
 Fri, 31 Jan 2020 01:55:32 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 31 Jan 2020 01:55:32 -0000
Message-ID: <158043573246.13123.15546366705438755596@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200130181710.2030251-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200130181710.2030251-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/3=5D_drm/i915/gt=3A_Skip_global_serialis?=
 =?utf-8?q?ation_of_clear=5Frange_for_bxt_vtd?=
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

Series: series starting with [1/3] drm/i915/gt: Skip global serialisation of clear_range for bxt vtd
URL   : https://patchwork.freedesktop.org/series/72787/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7847 -> Patchwork_16345
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16345 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16345, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16345/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16345:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-bsw-nick:        NOTRUN -> [TIMEOUT][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16345/fi-bsw-nick/igt@gem_exec_suspend@basic-s0.html
    - fi-bsw-kefka:       NOTRUN -> [TIMEOUT][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16345/fi-bsw-kefka/igt@gem_exec_suspend@basic-s0.html
    - fi-bsw-n3050:       NOTRUN -> [TIMEOUT][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16345/fi-bsw-n3050/igt@gem_exec_suspend@basic-s0.html

  * igt@i915_selftest@live_workarounds:
    - fi-apl-guc:         NOTRUN -> [DMESG-FAIL][4]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16345/fi-apl-guc/igt@i915_selftest@live_workarounds.html

  
Known issues
------------

  Here are the changes found in Patchwork_16345 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live_gtt:
    - fi-icl-u3:          [PASS][5] -> [TIMEOUT][6] ([fdo#112271])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7847/fi-icl-u3/igt@i915_selftest@live_gtt.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16345/fi-icl-u3/igt@i915_selftest@live_gtt.html

  
#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-n2820:       [TIMEOUT][7] ([fdo#112271] / [i915#1084] / [i915#816]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7847/fi-byt-n2820/igt@gem_close_race@basic-threads.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16345/fi-byt-n2820/igt@gem_close_race@basic-threads.html

  * igt@i915_pm_rpm@module-reload:
    - fi-skl-6770hq:      [FAIL][9] ([i915#178]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7847/fi-skl-6770hq/igt@i915_pm_rpm@module-reload.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16345/fi-skl-6770hq/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [DMESG-FAIL][11] ([i915#725]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7847/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16345/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_execlists:
    - fi-icl-y:           [DMESG-FAIL][13] ([fdo#108569]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7847/fi-icl-y/igt@i915_selftest@live_execlists.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16345/fi-icl-y/igt@i915_selftest@live_execlists.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-cfl-guc:         [INCOMPLETE][15] ([fdo#106070] / [i915#424]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7847/fi-cfl-guc/igt@i915_selftest@live_gem_contexts.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16345/fi-cfl-guc/igt@i915_selftest@live_gem_contexts.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-bsw-kefka:       [FAIL][17] ([i915#1077]) -> [FAIL][18] ([fdo#110446])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7847/fi-bsw-kefka/igt@runner@aborted.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16345/fi-bsw-kefka/igt@runner@aborted.html
    - fi-bsw-nick:        [FAIL][19] ([i915#1077]) -> [FAIL][20] ([fdo#110446])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7847/fi-bsw-nick/igt@runner@aborted.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16345/fi-bsw-nick/igt@runner@aborted.html
    - fi-apl-guc:         [FAIL][21] ([i915#211]) -> [FAIL][22] ([fdo#110943])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7847/fi-apl-guc/igt@runner@aborted.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16345/fi-apl-guc/igt@runner@aborted.html
    - fi-byt-n2820:       [FAIL][23] ([i915#816]) -> [FAIL][24] ([i915#999])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7847/fi-byt-n2820/igt@runner@aborted.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16345/fi-byt-n2820/igt@runner@aborted.html
    - fi-bsw-n3050:       [FAIL][25] ([i915#1077]) -> [FAIL][26] ([fdo#110446])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7847/fi-bsw-n3050/igt@runner@aborted.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16345/fi-bsw-n3050/igt@runner@aborted.html

  
  [fdo#106070]: https://bugs.freedesktop.org/show_bug.cgi?id=106070
  [fdo#108569]: https://bugs.freedesktop.org/show_bug.cgi?id=108569
  [fdo#110446]: https://bugs.freedesktop.org/show_bug.cgi?id=110446
  [fdo#110943]: https://bugs.freedesktop.org/show_bug.cgi?id=110943
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1077]: https://gitlab.freedesktop.org/drm/intel/issues/1077
  [i915#1084]: https://gitlab.freedesktop.org/drm/intel/issues/1084
  [i915#178]: https://gitlab.freedesktop.org/drm/intel/issues/178
  [i915#211]: https://gitlab.freedesktop.org/drm/intel/issues/211
  [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816
  [i915#999]: https://gitlab.freedesktop.org/drm/intel/issues/999


Participating hosts (47 -> 39)
------------------------------

  Additional (4): fi-hsw-peppy fi-bdw-gvtdvm fi-elk-e7500 fi-kbl-7500u 
  Missing    (12): fi-icl-1065g7 fi-bdw-samus fi-hsw-4200u fi-byt-j1900 fi-bsw-cyan fi-bwr-2160 fi-ivb-3770 fi-skl-lmem fi-kbl-7560u fi-kbl-r fi-skl-6600u fi-snb-2600 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7847 -> Patchwork_16345

  CI-20190529: 20190529
  CI_DRM_7847: 2515f8cc5d56f8791232dc6b077a370658d4cecf @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5407: a9d69f51dadbcbc53527671f87572d05c3370cba @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16345: 612b7bfbb917038f1155474bf3e3f277b8e9750e @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

612b7bfbb917 drm/i915: Use the async worker to avoid reclaim tainting the ggtt->mutex
ef82b06b330f drm/i915/gt: Rename i915_gem_restore_ggtt_mappings() for its new placement

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16345/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
