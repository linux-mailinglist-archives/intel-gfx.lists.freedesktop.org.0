Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 737DF1F64BA
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2020 11:28:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD7256E8C3;
	Thu, 11 Jun 2020 09:28:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6AD3F6E8C1;
 Thu, 11 Jun 2020 09:28:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6441DA00E7;
 Thu, 11 Jun 2020 09:28:53 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 11 Jun 2020 09:28:53 -0000
Message-ID: <159186773340.22713.3308931494480360805@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200611080140.30228-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200611080140.30228-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/6=5D_drm/i915/gt=3A_Move_hsw_GT_workarou?=
 =?utf-8?q?nds_from_init=5Fclock=5Fgating_to_workarounds?=
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

Series: series starting with [1/6] drm/i915/gt: Move hsw GT workarounds from init_clock_gating to workarounds
URL   : https://patchwork.freedesktop.org/series/78214/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8614 -> Patchwork_17925
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17925/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17925:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@runner@aborted:
    - {fi-kbl-7560u}:     NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17925/fi-kbl-7560u/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_17925 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-tgl-u2:          [PASS][2] -> [FAIL][3] ([i915#1888])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8614/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17925/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html

  * igt@i915_module_load@reload:
    - fi-byt-j1900:       [PASS][4] -> [DMESG-WARN][5] ([i915#1982]) +1 similar issue
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8614/fi-byt-j1900/igt@i915_module_load@reload.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17925/fi-byt-j1900/igt@i915_module_load@reload.html
    - fi-icl-guc:         [PASS][6] -> [DMESG-WARN][7] ([i915#1982])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8614/fi-icl-guc/igt@i915_module_load@reload.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17925/fi-icl-guc/igt@i915_module_load@reload.html
    - fi-icl-y:           [PASS][8] -> [DMESG-WARN][9] ([i915#1982])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8614/fi-icl-y/igt@i915_module_load@reload.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17925/fi-icl-y/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-bsw-kefka:       [PASS][10] -> [DMESG-WARN][11] ([i915#1982])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8614/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17925/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@i915_pm_rpm@module-reload:
    - fi-glk-dsi:         [PASS][12] -> [DMESG-WARN][13] ([i915#1982])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8614/fi-glk-dsi/igt@i915_pm_rpm@module-reload.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17925/fi-glk-dsi/igt@i915_pm_rpm@module-reload.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence:
    - fi-tgl-u2:          [PASS][14] -> [DMESG-WARN][15] ([i915#402])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8614/fi-tgl-u2/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17925/fi-tgl-u2/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html

  
#### Possible fixes ####

  * igt@i915_module_load@reload:
    - fi-apl-guc:         [DMESG-WARN][16] ([i915#1982]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8614/fi-apl-guc/igt@i915_module_load@reload.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17925/fi-apl-guc/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@module-reload:
    - fi-byt-j1900:       [DMESG-WARN][18] ([i915#1982]) -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8614/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17925/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html

  * igt@kms_busy@basic@flip:
    - fi-kbl-x1275:       [DMESG-WARN][20] ([i915#62] / [i915#92] / [i915#95]) -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8614/fi-kbl-x1275/igt@kms_busy@basic@flip.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17925/fi-kbl-x1275/igt@kms_busy@basic@flip.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:
    - fi-icl-u2:          [DMESG-WARN][22] ([i915#1982]) -> [PASS][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8614/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17925/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html

  
#### Warnings ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-kbl-x1275:       [DMESG-WARN][24] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][25] ([i915#62] / [i915#92]) +4 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8614/fi-kbl-x1275/igt@gem_exec_suspend@basic-s0.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17925/fi-kbl-x1275/igt@gem_exec_suspend@basic-s0.html

  * igt@kms_flip@basic-flip-vs-dpms@a-dp1:
    - fi-kbl-x1275:       [DMESG-WARN][26] ([i915#62] / [i915#92]) -> [DMESG-WARN][27] ([i915#62] / [i915#92] / [i915#95]) +3 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8614/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-dpms@a-dp1.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17925/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-dpms@a-dp1.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (49 -> 43)
------------------------------

  Additional (1): fi-kbl-7560u 
  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8614 -> Patchwork_17925

  CI-20190529: 20190529
  CI_DRM_8614: 207862f18909166ffcf9e288ff796b756ae82d1c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5702: d16ad07e7f2a028e14d61f570931c87fa5ce404c @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17925: bb704549ca1937377b3595b79d74f18f875942c9 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

bb704549ca19 drm/i915/gt: Move gen4 GT workarounds from init_clock_gating to workarounds
04d5cd5657aa drm/i915/gt: Move ilk GT workarounds from init_clock_gating to workarounds
2bb63f1a6887 drm/i915/gt: Move snb GT workarounds from init_clock_gating to workarounds
a5568a200839 drm/i915/gt: Move vlv GT workarounds from init_clock_gating to workarounds
e66a89d1b959 drm/i915/gt: Move ivb GT workarounds from init_clock_gating to workarounds
d733ff00e147 drm/i915/gt: Move hsw GT workarounds from init_clock_gating to workarounds

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17925/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
