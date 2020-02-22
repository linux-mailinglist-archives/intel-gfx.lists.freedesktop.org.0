Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CDDB6168C45
	for <lists+intel-gfx@lfdr.de>; Sat, 22 Feb 2020 05:03:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E6DD6E486;
	Sat, 22 Feb 2020 04:03:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A1CE06E43D;
 Sat, 22 Feb 2020 04:03:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 98F2BA0003;
 Sat, 22 Feb 2020 04:03:02 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sat, 22 Feb 2020 04:03:02 -0000
Message-ID: <158234418259.32576.11347037721895773067@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200221225451.2861978-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200221225451.2861978-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Push_the_GPU_cancellation_to_the_backend_=28rev2=29?=
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

Series: drm/i915/gt: Push the GPU cancellation to the backend (rev2)
URL   : https://patchwork.freedesktop.org/series/73800/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7984 -> Patchwork_16673
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16673 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16673, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16673/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16673:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live_late_gt_pm:
    - fi-bsw-nick:        NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16673/fi-bsw-nick/igt@i915_selftest@live_late_gt_pm.html

  
Known issues
------------

  Here are the changes found in Patchwork_16673 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_parallel@fds:
    - fi-byt-n2820:       [PASS][2] -> [FAIL][3] ([i915#694])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/fi-byt-n2820/igt@gem_exec_parallel@fds.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16673/fi-byt-n2820/igt@gem_exec_parallel@fds.html

  * igt@gem_flink_basic@double-flink:
    - fi-tgl-y:           [PASS][4] -> [DMESG-WARN][5] ([CI#94] / [i915#402]) +2 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/fi-tgl-y/igt@gem_flink_basic@double-flink.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16673/fi-tgl-y/igt@gem_flink_basic@double-flink.html

  * igt@i915_selftest@live_sanitycheck:
    - fi-icl-u3:          [PASS][6] -> [DMESG-WARN][7] ([i915#585])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/fi-icl-u3/igt@i915_selftest@live_sanitycheck.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16673/fi-icl-u3/igt@i915_selftest@live_sanitycheck.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-tgl-y:           [FAIL][8] ([CI#94]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16673/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@gem_mmap_gtt@basic:
    - fi-tgl-y:           [DMESG-WARN][10] ([CI#94] / [i915#402]) -> [PASS][11] +1 similar issue
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/fi-tgl-y/igt@gem_mmap_gtt@basic.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16673/fi-tgl-y/igt@gem_mmap_gtt@basic.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-cfl-guc:         [DMESG-FAIL][12] ([i915#623]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/fi-cfl-guc/igt@i915_selftest@live_gem_contexts.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16673/fi-cfl-guc/igt@i915_selftest@live_gem_contexts.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-hsw-peppy:       [DMESG-WARN][14] ([i915#44]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/fi-hsw-peppy/igt@kms_frontbuffer_tracking@basic.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16673/fi-hsw-peppy/igt@kms_frontbuffer_tracking@basic.html

  
#### Warnings ####

  * igt@amdgpu/amd_prime@amd-to-i915:
    - fi-icl-u3:          [SKIP][16] ([fdo#109315] / [i915#585]) -> [SKIP][17] ([fdo#109315])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/fi-icl-u3/igt@amdgpu/amd_prime@amd-to-i915.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16673/fi-icl-u3/igt@amdgpu/amd_prime@amd-to-i915.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][18] ([fdo#111407]) -> [FAIL][19] ([fdo#111096] / [i915#323])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16673/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#44]: https://gitlab.freedesktop.org/drm/intel/issues/44
  [i915#585]: https://gitlab.freedesktop.org/drm/intel/issues/585
  [i915#623]: https://gitlab.freedesktop.org/drm/intel/issues/623
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694


Participating hosts (48 -> 45)
------------------------------

  Additional (4): fi-byt-j1900 fi-skl-lmem fi-gdg-551 fi-bsw-nick 
  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7984 -> Patchwork_16673

  CI-20190529: 20190529
  CI_DRM_7984: ab1d770e389d9407be633b5afbe6859e0072ca9d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5458: 5f7e4ae6a91ed2c104593b8abd5b71a6cc96fc10 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16673: 79ff44652ca46ee1c8fbfa0b6a881b847159eba2 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

79ff44652ca4 drm/i915/gt: Push the GPU cancellation to the backend

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16673/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
