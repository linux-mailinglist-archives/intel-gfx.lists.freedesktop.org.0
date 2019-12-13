Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF31411EAD7
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2019 20:03:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD4E06EC26;
	Fri, 13 Dec 2019 19:03:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 457656EC23;
 Fri, 13 Dec 2019 19:03:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1BADDA363B;
 Fri, 13 Dec 2019 19:03:13 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 13 Dec 2019 19:03:13 -0000
Message-ID: <157626379310.23798.8067669550890104898@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191213151331.1788371-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191213151331.1788371-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/execlists=3A_Select_arb_on/off_around_batches_based_on_pr?=
 =?utf-8?q?eemption?=
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

Series: drm/i915/execlists: Select arb on/off around batches based on preemption
URL   : https://patchwork.freedesktop.org/series/70885/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7560 -> Patchwork_15748
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15748/index.html

Known issues
------------

  Here are the changes found in Patchwork_15748 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-j1900:       [PASS][1] -> [TIMEOUT][2] ([i915#816])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7560/fi-byt-j1900/igt@gem_close_race@basic-threads.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15748/fi-byt-j1900/igt@gem_close_race@basic-threads.html

  * igt@gem_exec_gttfill@basic:
    - fi-tgl-y:           [PASS][3] -> [INCOMPLETE][4] ([fdo#111593])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7560/fi-tgl-y/igt@gem_exec_gttfill@basic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15748/fi-tgl-y/igt@gem_exec_gttfill@basic.html

  * igt@i915_module_load@reload-no-display:
    - fi-skl-lmem:        [PASS][5] -> [DMESG-WARN][6] ([i915#592])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7560/fi-skl-lmem/igt@i915_module_load@reload-no-display.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15748/fi-skl-lmem/igt@i915_module_load@reload-no-display.html

  
#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-n2820:       [TIMEOUT][7] ([i915#816]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7560/fi-byt-n2820/igt@gem_close_race@basic-threads.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15748/fi-byt-n2820/igt@gem_close_race@basic-threads.html

  * igt@i915_selftest@live_blt:
    - fi-bsw-n3050:       [DMESG-FAIL][9] ([i915#723]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7560/fi-bsw-n3050/igt@i915_selftest@live_blt.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15748/fi-bsw-n3050/igt@i915_selftest@live_blt.html
    - fi-hsw-4770:        [DMESG-FAIL][11] ([i915#725]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7560/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15748/fi-hsw-4770/igt@i915_selftest@live_blt.html

  
#### Warnings ####

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [DMESG-FAIL][13] -> [DMESG-FAIL][14] ([i915#563])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7560/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15748/fi-hsw-4770r/igt@i915_selftest@live_blt.html

  * igt@kms_busy@basic-flip-pipe-b:
    - fi-kbl-x1275:       [DMESG-WARN][15] ([i915#62] / [i915#92]) -> [DMESG-WARN][16] ([i915#62] / [i915#92] / [i915#95]) +7 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7560/fi-kbl-x1275/igt@kms_busy@basic-flip-pipe-b.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15748/fi-kbl-x1275/igt@kms_busy@basic-flip-pipe-b.html

  * igt@kms_flip@basic-flip-vs-modeset:
    - fi-kbl-x1275:       [DMESG-WARN][17] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][18] ([i915#62] / [i915#92]) +3 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7560/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15748/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [i915#476]: https://gitlab.freedesktop.org/drm/intel/issues/476
  [i915#563]: https://gitlab.freedesktop.org/drm/intel/issues/563
  [i915#592]: https://gitlab.freedesktop.org/drm/intel/issues/592
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#723]: https://gitlab.freedesktop.org/drm/intel/issues/723
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (55 -> 47)
------------------------------

  Missing    (8): fi-icl-1065g7 fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7560 -> Patchwork_15748

  CI-20190529: 20190529
  CI_DRM_7560: c093691eb61cb4680e44a339660e9443e728ef67 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5349: 048f58513d8b8ec6bb307a939f0ac959bc0f0e10 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15748: efcd0ed4aa703c9f8482c41b6d9be11ee121093b @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

efcd0ed4aa70 drm/i915/execlists: Select arb on/off around batches based on preemption

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15748/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
