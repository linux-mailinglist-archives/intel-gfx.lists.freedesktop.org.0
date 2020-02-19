Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D544216441C
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2020 13:22:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 301FF6E5C8;
	Wed, 19 Feb 2020 12:22:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id CC5726E0C1;
 Wed, 19 Feb 2020 12:22:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BA663A00C7;
 Wed, 19 Feb 2020 12:22:28 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 19 Feb 2020 12:22:28 -0000
Message-ID: <158211494873.21061.5794846859228535347@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200219112004.1412791-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200219112004.1412791-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915/selftest=3A_Analyse_timest?=
 =?utf-8?q?amp_behaviour_across_context_switches?=
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

Series: series starting with [1/2] drm/i915/selftest: Analyse timestamp behaviour across context switches
URL   : https://patchwork.freedesktop.org/series/73637/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7963 -> Patchwork_16619
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16619/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16619:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live_gt_lrc:
    - {fi-tgl-u}:         [INCOMPLETE][1] ([i915#1233]) -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/fi-tgl-u/igt@i915_selftest@live_gt_lrc.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16619/fi-tgl-u/igt@i915_selftest@live_gt_lrc.html
    - {fi-tgl-dsi}:       [INCOMPLETE][3] ([i915#1233]) -> [DMESG-FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/fi-tgl-dsi/igt@i915_selftest@live_gt_lrc.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16619/fi-tgl-dsi/igt@i915_selftest@live_gt_lrc.html

  
Known issues
------------

  Here are the changes found in Patchwork_16619 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live_gem_contexts:
    - fi-cfl-guc:         [PASS][5] -> [DMESG-FAIL][6] ([i915#623])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/fi-cfl-guc/igt@i915_selftest@live_gem_contexts.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16619/fi-cfl-guc/igt@i915_selftest@live_gem_contexts.html

  * igt@i915_selftest@live_gtt:
    - fi-cfl-guc:         [PASS][7] -> [TIMEOUT][8] ([fdo#112271])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/fi-cfl-guc/igt@i915_selftest@live_gtt.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16619/fi-cfl-guc/igt@i915_selftest@live_gtt.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-icl-u3:          [PASS][9] -> [DMESG-WARN][10] ([i915#585]) +37 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/fi-icl-u3/igt@kms_frontbuffer_tracking@basic.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16619/fi-icl-u3/igt@kms_frontbuffer_tracking@basic.html

  
#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-j1900:       [INCOMPLETE][11] ([i915#45]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/fi-byt-j1900/igt@gem_close_race@basic-threads.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16619/fi-byt-j1900/igt@gem_close_race@basic-threads.html
    - fi-byt-n2820:       [INCOMPLETE][13] ([i915#45]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/fi-byt-n2820/igt@gem_close_race@basic-threads.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16619/fi-byt-n2820/igt@gem_close_race@basic-threads.html

  * igt@gem_exec_parallel@contexts:
    - {fi-ehl-1}:         [INCOMPLETE][15] ([i915#937]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/fi-ehl-1/igt@gem_exec_parallel@contexts.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16619/fi-ehl-1/igt@gem_exec_parallel@contexts.html

  * igt@i915_selftest@live_active:
    - fi-icl-dsi:         [DMESG-FAIL][17] ([i915#765]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/fi-icl-dsi/igt@i915_selftest@live_active.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16619/fi-icl-dsi/igt@i915_selftest@live_active.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-cfl-8700k:       [INCOMPLETE][19] ([i915#424]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16619/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html
    - fi-cml-s:           [DMESG-FAIL][21] ([i915#877]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/fi-cml-s/igt@i915_selftest@live_gem_contexts.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16619/fi-cml-s/igt@i915_selftest@live_gem_contexts.html

  * igt@i915_selftest@live_gt_heartbeat:
    - fi-kbl-7500u:       [DMESG-FAIL][23] ([fdo#112406]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/fi-kbl-7500u/igt@i915_selftest@live_gt_heartbeat.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16619/fi-kbl-7500u/igt@i915_selftest@live_gt_heartbeat.html

  * igt@kms_flip@basic-flip-vs-wf_vblank:
    - fi-bsw-n3050:       [FAIL][25] ([i915#34]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/fi-bsw-n3050/igt@kms_flip@basic-flip-vs-wf_vblank.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16619/fi-bsw-n3050/igt@kms_flip@basic-flip-vs-wf_vblank.html

  
#### Warnings ####

  * igt@amdgpu/amd_prime@amd-to-i915:
    - fi-icl-u3:          [SKIP][27] ([fdo#109315]) -> [SKIP][28] ([fdo#109315] / [i915#585])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/fi-icl-u3/igt@amdgpu/amd_prime@amd-to-i915.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16619/fi-icl-u3/igt@amdgpu/amd_prime@amd-to-i915.html

  * igt@i915_pm_rpm@basic-rte:
    - fi-kbl-guc:         [FAIL][29] ([i915#579]) -> [SKIP][30] ([fdo#109271])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16619/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html

  * igt@kms_chamelium@dp-hpd-fast:
    - fi-icl-u3:          [SKIP][31] ([fdo#109284] / [fdo#111827]) -> [SKIP][32] ([fdo#109284] / [fdo#111827] / [i915#585])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/fi-icl-u3/igt@kms_chamelium@dp-hpd-fast.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16619/fi-icl-u3/igt@kms_chamelium@dp-hpd-fast.html

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-icl-u3:          [SKIP][33] ([fdo#109285]) -> [SKIP][34] ([fdo#109285] / [i915#585])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/fi-icl-u3/igt@kms_force_connector_basic@force-load-detect.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16619/fi-icl-u3/igt@kms_force_connector_basic@force-load-detect.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [fdo#112406]: https://bugs.freedesktop.org/show_bug.cgi?id=112406
  [i915#1233]: https://gitlab.freedesktop.org/drm/intel/issues/1233
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#579]: https://gitlab.freedesktop.org/drm/intel/issues/579
  [i915#585]: https://gitlab.freedesktop.org/drm/intel/issues/585
  [i915#623]: https://gitlab.freedesktop.org/drm/intel/issues/623
  [i915#765]: https://gitlab.freedesktop.org/drm/intel/issues/765
  [i915#877]: https://gitlab.freedesktop.org/drm/intel/issues/877
  [i915#937]: https://gitlab.freedesktop.org/drm/intel/issues/937


Participating hosts (50 -> 45)
------------------------------

  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7963 -> Patchwork_16619

  CI-20190529: 20190529
  CI_DRM_7963: e0d737598eb749378a5dc4ed3dfafc6f79d512cb @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5448: 116020b1f83c1b3994c76882df7f77b6731d78ba @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16619: e9529105736741b37acc174ea5ae7247e26757bb @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

e95291057367 drm/i915/selftests: Mark GPR checking more hostile
e360e7c59c3d drm/i915/selftest: Analyse timestamp behaviour across context switches

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16619/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
