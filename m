Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B4B5C14F582
	for <lists+intel-gfx@lfdr.de>; Sat,  1 Feb 2020 01:53:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3EC36FC5D;
	Sat,  1 Feb 2020 00:53:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id F2C636E28A;
 Sat,  1 Feb 2020 00:53:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E9716A0118;
 Sat,  1 Feb 2020 00:53:50 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sat, 01 Feb 2020 00:53:50 -0000
Message-ID: <158051843092.32691.251957170017917907@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200131204829.3476668-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200131204829.3476668-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/4=5D_drm/i915/display=3A_Wake_the_power_?=
 =?utf-8?q?well_during_resume?=
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

Series: series starting with [1/4] drm/i915/display: Wake the power well during resume
URL   : https://patchwork.freedesktop.org/series/72849/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7853 -> Patchwork_16366
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16366 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16366, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16366/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16366:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_module_load@reload:
    - fi-bsw-nick:        NOTRUN -> [TIMEOUT][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16366/fi-bsw-nick/igt@i915_module_load@reload.html

  * igt@i915_selftest@live_gt_timelines:
    - fi-snb-2520m:       [PASS][2] -> [TIMEOUT][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7853/fi-snb-2520m/igt@i915_selftest@live_gt_timelines.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16366/fi-snb-2520m/igt@i915_selftest@live_gt_timelines.html
    - fi-hsw-4770:        [PASS][4] -> [TIMEOUT][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7853/fi-hsw-4770/igt@i915_selftest@live_gt_timelines.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16366/fi-hsw-4770/igt@i915_selftest@live_gt_timelines.html
    - fi-blb-e6850:       [PASS][6] -> [TIMEOUT][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7853/fi-blb-e6850/igt@i915_selftest@live_gt_timelines.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16366/fi-blb-e6850/igt@i915_selftest@live_gt_timelines.html
    - fi-gdg-551:         NOTRUN -> [TIMEOUT][8]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16366/fi-gdg-551/igt@i915_selftest@live_gt_timelines.html
    - fi-bwr-2160:        [PASS][9] -> [TIMEOUT][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7853/fi-bwr-2160/igt@i915_selftest@live_gt_timelines.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16366/fi-bwr-2160/igt@i915_selftest@live_gt_timelines.html
    - fi-snb-2600:        NOTRUN -> [TIMEOUT][11]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16366/fi-snb-2600/igt@i915_selftest@live_gt_timelines.html
    - fi-hsw-4770r:       [PASS][12] -> [TIMEOUT][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7853/fi-hsw-4770r/igt@i915_selftest@live_gt_timelines.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16366/fi-hsw-4770r/igt@i915_selftest@live_gt_timelines.html
    - fi-elk-e7500:       [PASS][14] -> [TIMEOUT][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7853/fi-elk-e7500/igt@i915_selftest@live_gt_timelines.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16366/fi-elk-e7500/igt@i915_selftest@live_gt_timelines.html
    - fi-ivb-3770:        [PASS][16] -> [TIMEOUT][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7853/fi-ivb-3770/igt@i915_selftest@live_gt_timelines.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16366/fi-ivb-3770/igt@i915_selftest@live_gt_timelines.html

  * igt@runner@aborted:
    - fi-hsw-4770r:       NOTRUN -> [FAIL][18]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16366/fi-hsw-4770r/igt@runner@aborted.html
    - fi-gdg-551:         NOTRUN -> [FAIL][19]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16366/fi-gdg-551/igt@runner@aborted.html
    - fi-snb-2520m:       NOTRUN -> [FAIL][20]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16366/fi-snb-2520m/igt@runner@aborted.html
    - fi-hsw-4770:        NOTRUN -> [FAIL][21]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16366/fi-hsw-4770/igt@runner@aborted.html
    - fi-whl-u:           NOTRUN -> [FAIL][22]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16366/fi-whl-u/igt@runner@aborted.html
    - fi-ivb-3770:        NOTRUN -> [FAIL][23]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16366/fi-ivb-3770/igt@runner@aborted.html
    - fi-bxt-dsi:         NOTRUN -> [FAIL][24]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16366/fi-bxt-dsi/igt@runner@aborted.html
    - fi-elk-e7500:       NOTRUN -> [FAIL][25]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16366/fi-elk-e7500/igt@runner@aborted.html
    - fi-blb-e6850:       NOTRUN -> [FAIL][26]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16366/fi-blb-e6850/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@runner@aborted:
    - {fi-ehl-1}:         NOTRUN -> [FAIL][27]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16366/fi-ehl-1/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_16366 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-bsw-nick:        [TIMEOUT][28] ([i915#1089]) -> [PASS][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7853/fi-bsw-nick/igt@gem_exec_suspend@basic-s0.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16366/fi-bsw-nick/igt@gem_exec_suspend@basic-s0.html

  
#### Warnings ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-n2820:       [TIMEOUT][30] ([fdo#112271] / [i915#1084] / [i915#816]) -> [TIMEOUT][31] ([fdo#112271] / [i915#816])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7853/fi-byt-n2820/igt@gem_close_race@basic-threads.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16366/fi-byt-n2820/igt@gem_close_race@basic-threads.html

  * igt@runner@aborted:
    - fi-bsw-nick:        [FAIL][32] ([fdo#110446]) -> [FAIL][33] ([fdo#110446] / [k.org#204565])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7853/fi-bsw-nick/igt@runner@aborted.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16366/fi-bsw-nick/igt@runner@aborted.html
    - fi-kbl-soraka:      [FAIL][34] ([fdo#109383] / [fdo#111012]) -> [FAIL][35] ([i915#192] / [i915#193] / [i915#194])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7853/fi-kbl-soraka/igt@runner@aborted.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16366/fi-kbl-soraka/igt@runner@aborted.html
    - fi-cml-s:           [FAIL][36] ([fdo#111012] / [fdo#111764] / [i915#577]) -> [FAIL][37] ([i915#577])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7853/fi-cml-s/igt@runner@aborted.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16366/fi-cml-s/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109383]: https://bugs.freedesktop.org/show_bug.cgi?id=109383
  [fdo#110446]: https://bugs.freedesktop.org/show_bug.cgi?id=110446
  [fdo#111012]: https://bugs.freedesktop.org/show_bug.cgi?id=111012
  [fdo#111764]: https://bugs.freedesktop.org/show_bug.cgi?id=111764
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1084]: https://gitlab.freedesktop.org/drm/intel/issues/1084
  [i915#1089]: https://gitlab.freedesktop.org/drm/intel/issues/1089
  [i915#192]: https://gitlab.freedesktop.org/drm/intel/issues/192
  [i915#193]: https://gitlab.freedesktop.org/drm/intel/issues/193
  [i915#194]: https://gitlab.freedesktop.org/drm/intel/issues/194
  [i915#577]: https://gitlab.freedesktop.org/drm/intel/issues/577
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816
  [k.org#204565]: https://bugzilla.kernel.org/show_bug.cgi?id=204565


Participating hosts (47 -> 40)
------------------------------

  Additional (6): fi-gdg-551 fi-cfl-8109u fi-skl-6600u fi-kbl-7560u fi-skl-6700k2 fi-snb-2600 
  Missing    (13): fi-ilk-m540 fi-bdw-5557u fi-bsw-n3050 fi-hsw-4200u fi-hsw-peppy fi-byt-squawks fi-icl-u2 fi-bsw-cyan fi-ilk-650 fi-pnv-d510 fi-bsw-kefka fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7853 -> Patchwork_16366

  CI-20190529: 20190529
  CI_DRM_7853: 1df04205c16923e525efe9c26d6e98612d38c9b3 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5409: 93aefe6baa3fabf8c0cabe83e185f7b8f8d8753d @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16366: edce88fb05d2c4acd24a6a43b4c86e762ef874c8 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

edce88fb05d2 drm/i915/selftests: Add a simple rollover for the kernel context
8af8c775d115 drm/i915/gt: Warn about the hidden i915_vma_pin in timeline_get_seqno
c6ba1e64e9ab drm/i915: Initialise basic fence before acquiring seqno
ced9ffb2a020 drm/i915/display: Wake the power well during resume

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16366/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
