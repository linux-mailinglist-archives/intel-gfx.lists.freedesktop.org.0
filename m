Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D9E1216272B
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Feb 2020 14:33:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DBF576EA00;
	Tue, 18 Feb 2020 13:33:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8372F6E9FF;
 Tue, 18 Feb 2020 13:33:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7AC16A011A;
 Tue, 18 Feb 2020 13:33:18 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 18 Feb 2020 13:33:18 -0000
Message-ID: <158203279849.31432.11387556716784800327@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200218111624.1198504-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200218111624.1198504-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/6=5D_drm/i915/gt=3A_Show_the_cumulative_?=
 =?utf-8?q?context_runtime_in_engine_debug_=28rev2=29?=
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

Series: series starting with [1/6] drm/i915/gt: Show the cumulative context runtime in engine debug (rev2)
URL   : https://patchwork.freedesktop.org/series/73567/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7958 -> Patchwork_16597
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16597 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16597, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16597/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16597:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live_gem_contexts:
    - fi-icl-u2:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-icl-u2/igt@i915_selftest@live_gem_contexts.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16597/fi-icl-u2/igt@i915_selftest@live_gem_contexts.html
    - fi-icl-dsi:         [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-icl-dsi/igt@i915_selftest@live_gem_contexts.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16597/fi-icl-dsi/igt@i915_selftest@live_gem_contexts.html
    - fi-bdw-5557u:       [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-bdw-5557u/igt@i915_selftest@live_gem_contexts.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16597/fi-bdw-5557u/igt@i915_selftest@live_gem_contexts.html
    - fi-icl-y:           [PASS][7] -> [INCOMPLETE][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-icl-y/igt@i915_selftest@live_gem_contexts.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16597/fi-icl-y/igt@i915_selftest@live_gem_contexts.html
    - fi-icl-u3:          [PASS][9] -> [INCOMPLETE][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-icl-u3/igt@i915_selftest@live_gem_contexts.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16597/fi-icl-u3/igt@i915_selftest@live_gem_contexts.html
    - fi-icl-guc:         [PASS][11] -> [INCOMPLETE][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-icl-guc/igt@i915_selftest@live_gem_contexts.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16597/fi-icl-guc/igt@i915_selftest@live_gem_contexts.html

  * igt@runner@aborted:
    - fi-apl-guc:         NOTRUN -> [FAIL][13]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16597/fi-apl-guc/igt@runner@aborted.html
    - fi-bxt-dsi:         NOTRUN -> [FAIL][14]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16597/fi-bxt-dsi/igt@runner@aborted.html

  
#### Warnings ####

  * igt@amdgpu/amd_prime@i915-to-amd:
    - fi-kbl-8809g:       [DMESG-WARN][15] ([i915#1209]) -> [INCOMPLETE][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-kbl-8809g/igt@amdgpu/amd_prime@i915-to-amd.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16597/fi-kbl-8809g/igt@amdgpu/amd_prime@i915-to-amd.html

  
Known issues
------------

  Here are the changes found in Patchwork_16597 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_parallel@contexts:
    - fi-apl-guc:         [PASS][17] -> [INCOMPLETE][18] ([fdo#103927])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-apl-guc/igt@gem_exec_parallel@contexts.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16597/fi-apl-guc/igt@gem_exec_parallel@contexts.html
    - fi-bxt-dsi:         [PASS][19] -> [INCOMPLETE][20] ([fdo#103927])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-bxt-dsi/igt@gem_exec_parallel@contexts.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16597/fi-bxt-dsi/igt@gem_exec_parallel@contexts.html

  * igt@gem_exec_parallel@fds:
    - fi-byt-n2820:       [PASS][21] -> [FAIL][22] ([i915#694])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-byt-n2820/igt@gem_exec_parallel@fds.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16597/fi-byt-n2820/igt@gem_exec_parallel@fds.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-skl-6600u:       [PASS][23] -> [INCOMPLETE][24] ([i915#424])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-skl-6600u/igt@i915_selftest@live_gem_contexts.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16597/fi-skl-6600u/igt@i915_selftest@live_gem_contexts.html
    - fi-cml-u2:          [PASS][25] -> [INCOMPLETE][26] ([i915#283])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-cml-u2/igt@i915_selftest@live_gem_contexts.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16597/fi-cml-u2/igt@i915_selftest@live_gem_contexts.html
    - fi-cfl-8700k:       [PASS][27] -> [INCOMPLETE][28] ([i915#424])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16597/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html
    - fi-kbl-guc:         [PASS][29] -> [INCOMPLETE][30] ([i915#504])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-kbl-guc/igt@i915_selftest@live_gem_contexts.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16597/fi-kbl-guc/igt@i915_selftest@live_gem_contexts.html
    - fi-kbl-7500u:       [PASS][31] -> [INCOMPLETE][32] ([i915#504])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-kbl-7500u/igt@i915_selftest@live_gem_contexts.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16597/fi-kbl-7500u/igt@i915_selftest@live_gem_contexts.html
    - fi-skl-guc:         [PASS][33] -> [INCOMPLETE][34] ([i915#424])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-skl-guc/igt@i915_selftest@live_gem_contexts.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16597/fi-skl-guc/igt@i915_selftest@live_gem_contexts.html
    - fi-kbl-r:           [PASS][35] -> [INCOMPLETE][36] ([i915#504])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-kbl-r/igt@i915_selftest@live_gem_contexts.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16597/fi-kbl-r/igt@i915_selftest@live_gem_contexts.html
    - fi-kbl-x1275:       [PASS][37] -> [INCOMPLETE][38] ([i915#504])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-kbl-x1275/igt@i915_selftest@live_gem_contexts.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16597/fi-kbl-x1275/igt@i915_selftest@live_gem_contexts.html
    - fi-skl-6700k2:      [PASS][39] -> [INCOMPLETE][40] ([i915#424])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-skl-6700k2/igt@i915_selftest@live_gem_contexts.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16597/fi-skl-6700k2/igt@i915_selftest@live_gem_contexts.html
    - fi-cfl-guc:         [PASS][41] -> [INCOMPLETE][42] ([fdo#106070] / [i915#424])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-cfl-guc/igt@i915_selftest@live_gem_contexts.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16597/fi-cfl-guc/igt@i915_selftest@live_gem_contexts.html
    - fi-cml-s:           [PASS][43] -> [INCOMPLETE][44] ([i915#283])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-cml-s/igt@i915_selftest@live_gem_contexts.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16597/fi-cml-s/igt@i915_selftest@live_gem_contexts.html

  * igt@i915_selftest@live_gtt:
    - fi-skl-6600u:       [PASS][45] -> [TIMEOUT][46] ([fdo#111732] / [fdo#112271])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-skl-6600u/igt@i915_selftest@live_gtt.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16597/fi-skl-6600u/igt@i915_selftest@live_gtt.html

  
#### Possible fixes ####

  * igt@gem_exec_parallel@contexts:
    - fi-byt-n2820:       [FAIL][47] ([i915#694]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-byt-n2820/igt@gem_exec_parallel@contexts.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16597/fi-byt-n2820/igt@gem_exec_parallel@contexts.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-skl-6770hq:      [INCOMPLETE][49] ([i915#151]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-skl-6770hq/igt@i915_pm_rpm@basic-pci-d3-state.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16597/fi-skl-6770hq/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@i915_selftest@live_active:
    - fi-icl-y:           [DMESG-FAIL][51] ([i915#765]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-icl-y/igt@i915_selftest@live_active.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16597/fi-icl-y/igt@i915_selftest@live_active.html

  * igt@i915_selftest@live_gtt:
    - fi-icl-guc:         [TIMEOUT][53] ([fdo#112271]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-icl-guc/igt@i915_selftest@live_gtt.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16597/fi-icl-guc/igt@i915_selftest@live_gtt.html

  * igt@kms_chamelium@dp-edid-read:
    - fi-cml-u2:          [FAIL][55] ([i915#217] / [i915#976]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-cml-u2/igt@kms_chamelium@dp-edid-read.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16597/fi-cml-u2/igt@kms_chamelium@dp-edid-read.html

  
#### Warnings ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-j1900:       [TIMEOUT][57] ([fdo#112271] / [i915#1084] / [i915#816]) -> [INCOMPLETE][58] ([i915#45])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-byt-j1900/igt@gem_close_race@basic-threads.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16597/fi-byt-j1900/igt@gem_close_race@basic-threads.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-byt-n2820:       [DMESG-FAIL][59] ([i915#1052]) -> [INCOMPLETE][60] ([i915#45])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7958/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16597/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#106070]: https://bugs.freedesktop.org/show_bug.cgi?id=106070
  [fdo#111732]: https://bugs.freedesktop.org/show_bug.cgi?id=111732
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1052]: https://gitlab.freedesktop.org/drm/intel/issues/1052
  [i915#1084]: https://gitlab.freedesktop.org/drm/intel/issues/1084
  [i915#1209]: https://gitlab.freedesktop.org/drm/intel/issues/1209
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#283]: https://gitlab.freedesktop.org/drm/intel/issues/283
  [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#504]: https://gitlab.freedesktop.org/drm/intel/issues/504
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#765]: https://gitlab.freedesktop.org/drm/intel/issues/765
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816
  [i915#937]: https://gitlab.freedesktop.org/drm/intel/issues/937
  [i915#976]: https://gitlab.freedesktop.org/drm/intel/issues/976


Participating hosts (51 -> 40)
------------------------------

  Additional (1): fi-hsw-peppy 
  Missing    (12): fi-bsw-n3050 fi-hsw-4200u fi-glk-dsi fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-ivb-3770 fi-cfl-8109u fi-elk-e7500 fi-skl-lmem fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7958 -> Patchwork_16597

  CI-20190529: 20190529
  CI_DRM_7958: af30970548f72cf8a37886f009e0cfe02b23c8a4 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5445: 21e523814d692978d6d04ba85eadd67fcbd88b7e @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16597: 7d1de8fda493e156deff2ec551d70fcb0ab83cd6 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

7d1de8fda493 drm/i915/gem: Consolidate ctx->engines[] release
e16c771779a1 drm/i915/gem: Check that the context wasn't closed during setup
394aeed8e20e drm/i915/gt: Prevent allocation on a banned context
8c5ed860c271 drm/i915/gt: Fix up missing error propagation for heartbeat pulses
74c461f64d41 drm/i915/execlists: Check the sentinel is alone in the ELSP
db917091f9b4 drm/i915/gt: Show the cumulative context runtime in engine debug

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16597/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
