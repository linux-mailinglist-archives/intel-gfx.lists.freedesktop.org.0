Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A784128658
	for <lists+intel-gfx@lfdr.de>; Sat, 21 Dec 2019 02:22:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E4DA6E3F0;
	Sat, 21 Dec 2019 01:21:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 522D76E185;
 Sat, 21 Dec 2019 01:21:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4AC98A0134;
 Sat, 21 Dec 2019 01:21:56 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sat, 21 Dec 2019 01:21:56 -0000
Message-ID: <157689131628.32688.17214766149210686994@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191220232421.686442-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191220232421.686442-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Remove_i915-=3Ekernel=5Fcontext_=28rev2=29?=
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

Series: drm/i915: Remove i915->kernel_context (rev2)
URL   : https://patchwork.freedesktop.org/series/71209/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7616 -> Patchwork_15867
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15867 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15867, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15867/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15867:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_pm_rpm@module-reload:
    - fi-icl-y:           [PASS][1] -> [SKIP][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/fi-icl-y/igt@i915_pm_rpm@module-reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15867/fi-icl-y/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live_blt:
    - fi-ivb-3770:        [PASS][3] -> [DMESG-FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15867/fi-ivb-3770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gt_contexts:
    - fi-icl-dsi:         [PASS][5] -> [FAIL][6] +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/fi-icl-dsi/igt@i915_selftest@live_gt_contexts.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15867/fi-icl-dsi/igt@i915_selftest@live_gt_contexts.html

  * igt@i915_selftest@live_gt_mocs:
    - fi-icl-guc:         [PASS][7] -> [FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/fi-icl-guc/igt@i915_selftest@live_gt_mocs.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15867/fi-icl-guc/igt@i915_selftest@live_gt_mocs.html

  * igt@i915_selftest@live_gt_timelines:
    - fi-icl-y:           [PASS][9] -> [FAIL][10] +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/fi-icl-y/igt@i915_selftest@live_gt_timelines.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15867/fi-icl-y/igt@i915_selftest@live_gt_timelines.html

  * igt@i915_selftest@live_hangcheck:
    - fi-cml-u2:          [PASS][11] -> [DMESG-FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/fi-cml-u2/igt@i915_selftest@live_hangcheck.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15867/fi-cml-u2/igt@i915_selftest@live_hangcheck.html
    - fi-icl-u2:          [PASS][13] -> [FAIL][14] +4 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/fi-icl-u2/igt@i915_selftest@live_hangcheck.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15867/fi-icl-u2/igt@i915_selftest@live_hangcheck.html

  * igt@i915_selftest@live_uncore:
    - fi-icl-u3:          [PASS][15] -> [FAIL][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/fi-icl-u3/igt@i915_selftest@live_uncore.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15867/fi-icl-u3/igt@i915_selftest@live_uncore.html

  
#### Warnings ####

  * igt@amdgpu/amd_prime@amd-to-i915:
    - fi-icl-y:           [SKIP][17] ([fdo#109315]) -> [SKIP][18] +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/fi-icl-y/igt@amdgpu/amd_prime@amd-to-i915.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15867/fi-icl-y/igt@amdgpu/amd_prime@amd-to-i915.html

  
Known issues
------------

  Here are the changes found in Patchwork_15867 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live_blt:
    - fi-byt-n2820:       [PASS][19] -> [DMESG-FAIL][20] ([i915#725])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/fi-byt-n2820/igt@i915_selftest@live_blt.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15867/fi-byt-n2820/igt@i915_selftest@live_blt.html
    - fi-hsw-4770r:       [PASS][21] -> [DMESG-FAIL][22] ([i915#553] / [i915#725])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15867/fi-hsw-4770r/igt@i915_selftest@live_blt.html
    - fi-hsw-4770:        [PASS][23] -> [DMESG-FAIL][24] ([i915#553] / [i915#725])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15867/fi-hsw-4770/igt@i915_selftest@live_blt.html

  
#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-j1900:       [TIMEOUT][25] ([i915#816]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/fi-byt-j1900/igt@gem_close_race@basic-threads.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15867/fi-byt-j1900/igt@gem_close_race@basic-threads.html

  
#### Warnings ####

  * igt@kms_flip@basic-flip-vs-wf_vblank:
    - fi-kbl-x1275:       [DMESG-WARN][27] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][28] ([i915#62] / [i915#92]) +6 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-wf_vblank.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15867/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-wf_vblank.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - fi-kbl-x1275:       [DMESG-WARN][29] ([i915#62] / [i915#92]) -> [DMESG-WARN][30] ([i915#62] / [i915#92] / [i915#95]) +4 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/fi-kbl-x1275/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15867/fi-kbl-x1275/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (46 -> 37)
------------------------------

  Additional (4): fi-hsw-peppy fi-tgl-y fi-elk-e7500 fi-bsw-n3050 
  Missing    (13): fi-tgl-u fi-hsw-4200u fi-skl-guc fi-byt-squawks fi-bsw-cyan fi-cfl-guc fi-ctg-p8600 fi-byt-clapper fi-whl-u fi-bdw-samus fi-snb-2600 fi-skl-6600u fi-kbl-r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7616 -> Patchwork_15867

  CI-20190529: 20190529
  CI_DRM_7616: 81105b549355270c1d15073dc7f7b137cdc3d5c4 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5351: e7fdcef72d1d6b3bb9f3003bbc37571959e6e8bb @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15867: 555a722a9f529d79db7ce1748d18def19d7777b5 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

555a722a9f52 drm/i915: Remove i915->kernel_context

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15867/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
