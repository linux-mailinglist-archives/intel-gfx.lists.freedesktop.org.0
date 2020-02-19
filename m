Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DC32164E59
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2020 20:04:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD1E76EC80;
	Wed, 19 Feb 2020 19:04:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A561E6EC80;
 Wed, 19 Feb 2020 19:04:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7BFE2A0099;
 Wed, 19 Feb 2020 19:04:19 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Micha=C5=82_Winiarski?= <michal.winiarski@intel.com>
Date: Wed, 19 Feb 2020 19:04:19 -0000
Message-ID: <158213905950.21059.13548843330394529574@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200219150804.27158-1-michal.winiarski@intel.com>
In-Reply-To: <20200219150804.27158-1-michal.winiarski@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/pmu=3A_Avoid_using_globals_for_per-device_state?=
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

Series: drm/i915/pmu: Avoid using globals for per-device state
URL   : https://patchwork.freedesktop.org/series/73658/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7966 -> Patchwork_16626
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16626 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16626, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16626/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16626:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live_hugepages:
    - fi-bwr-2160:        [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/fi-bwr-2160/igt@i915_selftest@live_hugepages.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16626/fi-bwr-2160/igt@i915_selftest@live_hugepages.html

  
Known issues
------------

  Here are the changes found in Patchwork_16626 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - fi-hsw-peppy:       [INCOMPLETE][3] ([i915#694] / [i915#816]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/fi-hsw-peppy/igt@gem_close_race@basic-threads.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16626/fi-hsw-peppy/igt@gem_close_race@basic-threads.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-cml-s:           [DMESG-FAIL][5] ([i915#877]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/fi-cml-s/igt@i915_selftest@live_gem_contexts.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16626/fi-cml-s/igt@i915_selftest@live_gem_contexts.html

  * igt@i915_selftest@live_gtt:
    - fi-glk-dsi:         [TIMEOUT][7] ([fdo#112271] / [i915#690]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/fi-glk-dsi/igt@i915_selftest@live_gtt.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16626/fi-glk-dsi/igt@i915_selftest@live_gtt.html

  
#### Warnings ####

  * igt@amdgpu/amd_prime@amd-to-i915:
    - fi-icl-u3:          [SKIP][9] ([fdo#109315] / [i915#585]) -> [SKIP][10] ([fdo#109315])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7966/fi-icl-u3/igt@amdgpu/amd_prime@amd-to-i915.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16626/fi-icl-u3/igt@amdgpu/amd_prime@amd-to-i915.html

  
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#585]: https://gitlab.freedesktop.org/drm/intel/issues/585
  [i915#690]: https://gitlab.freedesktop.org/drm/intel/issues/690
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816
  [i915#877]: https://gitlab.freedesktop.org/drm/intel/issues/877


Participating hosts (49 -> 38)
------------------------------

  Additional (1): fi-snb-2600 
  Missing    (12): fi-ilk-m540 fi-tgl-dsi fi-bsw-n3050 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-cfl-8109u fi-bsw-kefka fi-byt-n2820 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7966 -> Patchwork_16626

  CI-20190529: 20190529
  CI_DRM_7966: 014bfb094e0b4e80d7510dc5d6f45e5e73bbb419 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5451: 1c42f971d37a066da3e588783611ab08d5afbded @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16626: bf883c0099c6f41681b2a979afc71d0d746eceba @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

bf883c0099c6 drm/i915/pmu: Avoid using globals for per-device state

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16626/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
