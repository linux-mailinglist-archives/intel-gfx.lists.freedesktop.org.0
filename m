Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E949E1684F2
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Feb 2020 18:29:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 986976F4ED;
	Fri, 21 Feb 2020 17:29:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id CF7816F4E8;
 Fri, 21 Feb 2020 17:29:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C6347A47E7;
 Fri, 21 Feb 2020 17:29:42 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 21 Feb 2020 17:29:42 -0000
Message-ID: <158230618280.7919.2793629266759291535@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200221101724.2602426-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200221101724.2602426-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/3=5D_drm/i915=3A_Drop_inspection_of_exec?=
 =?utf-8?q?buf_flags_during_evict?=
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

Series: series starting with [1/3] drm/i915: Drop inspection of execbuf flags during evict
URL   : https://patchwork.freedesktop.org/series/73753/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7982 -> Patchwork_16656
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16656 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16656, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16656/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16656:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live_gt_lrc:
    - fi-cml-u2:          [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7982/fi-cml-u2/igt@i915_selftest@live_gt_lrc.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16656/fi-cml-u2/igt@i915_selftest@live_gt_lrc.html

  
Known issues
------------

  Here are the changes found in Patchwork_16656 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_getparams_basic@basic-subslice-total:
    - fi-tgl-y:           [PASS][3] -> [DMESG-WARN][4] ([CI#94] / [i915#402]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7982/fi-tgl-y/igt@i915_getparams_basic@basic-subslice-total.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16656/fi-tgl-y/igt@i915_getparams_basic@basic-subslice-total.html

  * igt@i915_selftest@live_execlists:
    - fi-icl-y:           [PASS][5] -> [DMESG-FAIL][6] ([fdo#108569])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7982/fi-icl-y/igt@i915_selftest@live_execlists.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16656/fi-icl-y/igt@i915_selftest@live_execlists.html

  * igt@i915_selftest@live_gtt:
    - fi-bdw-5557u:       [PASS][7] -> [TIMEOUT][8] ([fdo#112271])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7982/fi-bdw-5557u/igt@i915_selftest@live_gtt.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16656/fi-bdw-5557u/igt@i915_selftest@live_gtt.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-skl-6600u:       [INCOMPLETE][9] ([i915#146] / [i915#69]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7982/fi-skl-6600u/igt@gem_exec_suspend@basic-s3.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16656/fi-skl-6600u/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_selftest@live_sanitycheck:
    - fi-icl-u3:          [DMESG-WARN][11] ([i915#585]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7982/fi-icl-u3/igt@i915_selftest@live_sanitycheck.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16656/fi-icl-u3/igt@i915_selftest@live_sanitycheck.html

  * igt@kms_addfb_basic@addfb25-modifier-no-flag:
    - fi-tgl-y:           [DMESG-WARN][13] ([CI#94] / [i915#402]) -> [PASS][14] +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7982/fi-tgl-y/igt@kms_addfb_basic@addfb25-modifier-no-flag.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16656/fi-tgl-y/igt@kms_addfb_basic@addfb25-modifier-no-flag.html

  
#### Warnings ####

  * igt@amdgpu/amd_prime@amd-to-i915:
    - fi-icl-u3:          [SKIP][15] ([fdo#109315]) -> [SKIP][16] ([fdo#109315] / [i915#585])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7982/fi-icl-u3/igt@amdgpu/amd_prime@amd-to-i915.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16656/fi-icl-u3/igt@amdgpu/amd_prime@amd-to-i915.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#108569]: https://bugs.freedesktop.org/show_bug.cgi?id=108569
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1233]: https://gitlab.freedesktop.org/drm/intel/issues/1233
  [i915#146]: https://gitlab.freedesktop.org/drm/intel/issues/146
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#585]: https://gitlab.freedesktop.org/drm/intel/issues/585
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69


Participating hosts (51 -> 45)
------------------------------

  Additional (3): fi-hsw-peppy fi-kbl-7560u fi-snb-2520m 
  Missing    (9): fi-ilk-m540 fi-hsw-4200u fi-skl-6770hq fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-blb-e6850 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7982 -> Patchwork_16656

  CI-20190529: 20190529
  CI_DRM_7982: f02659605b48dcabb562bbb96db2996b334e57fd @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5457: 3e686098d928aa928f668e00fa01e92234e173ff @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16656: abe672fec509e25bac2749186527b4cbde6c1a75 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

abe672fec509 drm/i915/gem: Only call eb_lookup_vma once during execbuf ioctl
442831af9f67 drm/i915/gem: Extract transient execbuf flags from i915_vma
8c048a656876 drm/i915: Drop inspection of execbuf flags during evict

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16656/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
