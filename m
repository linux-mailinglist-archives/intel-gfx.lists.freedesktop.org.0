Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ACC8A14E748
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2020 03:53:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCB566FA5F;
	Fri, 31 Jan 2020 02:53:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id CF0976FA5E;
 Fri, 31 Jan 2020 02:53:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C7054A010F;
 Fri, 31 Jan 2020 02:53:01 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 31 Jan 2020 02:53:01 -0000
Message-ID: <158043918178.13120.16345391693306732904@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200130142109.1896498-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200130142109.1896498-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Skip_rmw_for_masked_registers_=28rev3=29?=
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

Series: drm/i915/gt: Skip rmw for masked registers (rev3)
URL   : https://patchwork.freedesktop.org/series/72776/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7847 -> Patchwork_16346
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16346 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16346, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16346/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16346:

### IGT changes ###

#### Possible regressions ####

  * igt@runner@aborted:
    - fi-hsw-peppy:       NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16346/fi-hsw-peppy/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_16346 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-cml-s:           [PASS][2] -> [FAIL][3] ([fdo#103375])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7847/fi-cml-s/igt@gem_exec_suspend@basic-s0.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16346/fi-cml-s/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-tgl-y:           [PASS][4] -> [FAIL][5] ([CI#94])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7847/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16346/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@i915_selftest@live_blt:
    - fi-ivb-3770:        [PASS][6] -> [DMESG-FAIL][7] ([i915#770])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7847/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16346/fi-ivb-3770/igt@i915_selftest@live_blt.html

  * igt@kms_addfb_basic@bad-pitch-0:
    - fi-tgl-y:           [PASS][8] -> [DMESG-WARN][9] ([CI#94] / [i915#402])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7847/fi-tgl-y/igt@kms_addfb_basic@bad-pitch-0.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16346/fi-tgl-y/igt@kms_addfb_basic@bad-pitch-0.html

  
#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-j1900:       [TIMEOUT][10] ([fdo#112271] / [i915#1084] / [i915#816]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7847/fi-byt-j1900/igt@gem_close_race@basic-threads.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16346/fi-byt-j1900/igt@gem_close_race@basic-threads.html
    - fi-byt-n2820:       [TIMEOUT][12] ([fdo#112271] / [i915#1084] / [i915#816]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7847/fi-byt-n2820/igt@gem_close_race@basic-threads.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16346/fi-byt-n2820/igt@gem_close_race@basic-threads.html

  * igt@gem_flink_basic@bad-flink:
    - fi-tgl-y:           [DMESG-WARN][14] ([CI#94] / [i915#402]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7847/fi-tgl-y/igt@gem_flink_basic@bad-flink.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16346/fi-tgl-y/igt@gem_flink_basic@bad-flink.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [DMESG-FAIL][16] ([i915#725]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7847/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16346/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-cfl-guc:         [INCOMPLETE][18] ([fdo#106070] / [i915#424]) -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7847/fi-cfl-guc/igt@i915_selftest@live_gem_contexts.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16346/fi-cfl-guc/igt@i915_selftest@live_gem_contexts.html

  * igt@kms_flip@basic-flip-vs-wf_vblank:
    - fi-bwr-2160:        [FAIL][20] ([i915#34]) -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7847/fi-bwr-2160/igt@kms_flip@basic-flip-vs-wf_vblank.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16346/fi-bwr-2160/igt@kms_flip@basic-flip-vs-wf_vblank.html

  
#### Warnings ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-cml-s:           [TIMEOUT][22] ([i915#1078]) -> [FAIL][23] ([fdo#103375])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7847/fi-cml-s/igt@gem_exec_suspend@basic-s3.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16346/fi-cml-s/igt@gem_exec_suspend@basic-s3.html

  
  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#106070]: https://bugs.freedesktop.org/show_bug.cgi?id=106070
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1078]: https://gitlab.freedesktop.org/drm/intel/issues/1078
  [i915#1084]: https://gitlab.freedesktop.org/drm/intel/issues/1084
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#770]: https://gitlab.freedesktop.org/drm/intel/issues/770
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816


Participating hosts (47 -> 44)
------------------------------

  Additional (4): fi-hsw-peppy fi-bdw-gvtdvm fi-gdg-551 fi-elk-e7500 
  Missing    (7): fi-icl-1065g7 fi-hsw-4200u fi-skl-6770hq fi-bsw-cyan fi-snb-2520m fi-cfl-8109u fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7847 -> Patchwork_16346

  CI-20190529: 20190529
  CI_DRM_7847: 2515f8cc5d56f8791232dc6b077a370658d4cecf @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5407: a9d69f51dadbcbc53527671f87572d05c3370cba @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16346: 992b285ee81027fb18c34342e765c76adb4017d2 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

992b285ee810 drm/i915/gt: Skip rmw for masked registers

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16346/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
