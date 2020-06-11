Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D0D9C1F6585
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2020 12:21:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3EC4D6E8E6;
	Thu, 11 Jun 2020 10:21:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 19AB26E8E3;
 Thu, 11 Jun 2020 10:21:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1331AA0BD0;
 Thu, 11 Jun 2020 10:21:28 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 11 Jun 2020 10:21:28 -0000
Message-ID: <159187088804.22713.17597018796328773559@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200611080140.30228-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200611080140.30228-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_drm/i915/gt=3A_Move_hsw_GT_workarounds_from_i?=
 =?utf-8?q?nit=5Fclock=5Fgating_to_workarounds_=28rev2=29?=
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

Series: series starting with drm/i915/gt: Move hsw GT workarounds from init_clock_gating to workarounds (rev2)
URL   : https://patchwork.freedesktop.org/series/78214/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8614 -> Patchwork_17926
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17926/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17926:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@runner@aborted:
    - {fi-kbl-7560u}:     NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17926/fi-kbl-7560u/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_17926 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-tgl-u2:          [PASS][2] -> [FAIL][3] ([i915#1888])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8614/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17926/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-bsw-kefka:       [PASS][4] -> [DMESG-WARN][5] ([i915#1982])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8614/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17926/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@i915_selftest@live@gem_contexts:
    - fi-tgl-u2:          [PASS][6] -> [INCOMPLETE][7] ([i915#1932])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8614/fi-tgl-u2/igt@i915_selftest@live@gem_contexts.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17926/fi-tgl-u2/igt@i915_selftest@live@gem_contexts.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-icl-guc:         [PASS][8] -> [DMESG-WARN][9] ([i915#1982])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8614/fi-icl-guc/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17926/fi-icl-guc/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  
#### Possible fixes ####

  * igt@i915_module_load@reload:
    - fi-apl-guc:         [DMESG-WARN][10] ([i915#1982]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8614/fi-apl-guc/igt@i915_module_load@reload.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17926/fi-apl-guc/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - {fi-tgl-dsi}:       [DMESG-WARN][12] ([i915#1982]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8614/fi-tgl-dsi/igt@i915_pm_rpm@basic-pci-d3-state.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17926/fi-tgl-dsi/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@i915_pm_rpm@module-reload:
    - fi-byt-j1900:       [DMESG-WARN][14] ([i915#1982]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8614/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17926/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@gt_lrc:
    - fi-tgl-u2:          [DMESG-FAIL][16] ([i915#1233]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8614/fi-tgl-u2/igt@i915_selftest@live@gt_lrc.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17926/fi-tgl-u2/igt@i915_selftest@live@gt_lrc.html

  * igt@kms_busy@basic@flip:
    - fi-kbl-x1275:       [DMESG-WARN][18] ([i915#62] / [i915#92] / [i915#95]) -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8614/fi-kbl-x1275/igt@kms_busy@basic@flip.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17926/fi-kbl-x1275/igt@kms_busy@basic@flip.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-bsw-n3050:       [DMESG-WARN][20] ([i915#1982]) -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8614/fi-bsw-n3050/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17926/fi-bsw-n3050/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
    - fi-bsw-kefka:       [DMESG-WARN][22] ([i915#1982]) -> [PASS][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8614/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17926/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1:
    - fi-icl-u2:          [DMESG-WARN][24] ([i915#1982]) -> [PASS][25] +1 similar issue
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8614/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17926/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1.html

  
#### Warnings ####

  * igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size:
    - fi-kbl-x1275:       [DMESG-WARN][26] ([i915#62] / [i915#92]) -> [DMESG-WARN][27] ([i915#62] / [i915#92] / [i915#95]) +2 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8614/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17926/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html

  * igt@kms_flip@basic-flip-vs-modeset@a-dp1:
    - fi-kbl-x1275:       [DMESG-WARN][28] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][29] ([i915#62] / [i915#92]) +5 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8614/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset@a-dp1.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17926/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset@a-dp1.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1233]: https://gitlab.freedesktop.org/drm/intel/issues/1233
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#1932]: https://gitlab.freedesktop.org/drm/intel/issues/1932
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (49 -> 43)
------------------------------

  Additional (1): fi-kbl-7560u 
  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8614 -> Patchwork_17926

  CI-20190529: 20190529
  CI_DRM_8614: 207862f18909166ffcf9e288ff796b756ae82d1c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5702: d16ad07e7f2a028e14d61f570931c87fa5ce404c @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17926: 66c89c81b8144175aa4d9682e650323658fddcce @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

66c89c81b814 drm/i915/gt: Move gen4 GT workarounds from init_clock_gating to workarounds
3dde510c6178 drm/i915/gt: Move ilk GT workarounds from init_clock_gating to workarounds
79f6193f4ff2 drm/i915/gt: Move snb GT workarounds from init_clock_gating to workarounds
68e40d9f98c3 drm/i915/gt: Move vlv GT workarounds from init_clock_gating to workarounds
961e1996e0a8 drm/i915/gt: Move ivb GT workarounds from init_clock_gating to workarounds
a9a19ef20e69 drm/i915/gt: Move hsw GT workarounds from init_clock_gating to workarounds

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17926/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
