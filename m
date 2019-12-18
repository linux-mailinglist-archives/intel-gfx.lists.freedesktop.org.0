Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 79D61123D07
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Dec 2019 03:22:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CACD36E221;
	Wed, 18 Dec 2019 02:22:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5325D6E220;
 Wed, 18 Dec 2019 02:22:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4BC99A0091;
 Wed, 18 Dec 2019 02:22:13 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 18 Dec 2019 02:22:13 -0000
Message-ID: <157663573330.8355.423170513763521939@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191218000756.3475668-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191218000756.3475668-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/pmu=3A_Skip_sampling_engines_if_gt_is_asleep?=
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

Series: drm/i915/pmu: Skip sampling engines if gt is asleep
URL   : https://patchwork.freedesktop.org/series/71075/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7591 -> Patchwork_15821
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15821/index.html

Known issues
------------

  Here are the changes found in Patchwork_15821 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_sync@basic-store-all:
    - fi-tgl-y:           [PASS][1] -> [INCOMPLETE][2] ([i915#472])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/fi-tgl-y/igt@gem_sync@basic-store-all.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15821/fi-tgl-y/igt@gem_sync@basic-store-all.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [PASS][3] -> [DMESG-FAIL][4] ([i915#553] / [i915#725])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15821/fi-hsw-4770r/igt@i915_selftest@live_blt.html
    - fi-bsw-n3050:       [PASS][5] -> [DMESG-FAIL][6] ([i915#723])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/fi-bsw-n3050/igt@i915_selftest@live_blt.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15821/fi-bsw-n3050/igt@i915_selftest@live_blt.html
    - fi-ivb-3770:        [PASS][7] -> [DMESG-FAIL][8] ([i915#770])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15821/fi-ivb-3770/igt@i915_selftest@live_blt.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-kbl-7500u:       [PASS][9] -> [FAIL][10] ([fdo#109635] / [i915#262])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15821/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html

  
#### Possible fixes ####

  * igt@gem_ctx_create@basic-files:
    - {fi-tgl-u}:         [INCOMPLETE][11] ([fdo#111735]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/fi-tgl-u/igt@gem_ctx_create@basic-files.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15821/fi-tgl-u/igt@gem_ctx_create@basic-files.html

  * igt@gem_exec_gttfill@basic:
    - {fi-tgl-guc}:       [INCOMPLETE][13] ([fdo#111593]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/fi-tgl-guc/igt@gem_exec_gttfill@basic.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15821/fi-tgl-guc/igt@gem_exec_gttfill@basic.html

  * igt@i915_pm_rpm@module-reload:
    - fi-skl-6770hq:      [FAIL][15] ([i915#178]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/fi-skl-6770hq/igt@i915_pm_rpm@module-reload.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15821/fi-skl-6770hq/igt@i915_pm_rpm@module-reload.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109635]: https://bugs.freedesktop.org/show_bug.cgi?id=109635
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [i915#178]: https://gitlab.freedesktop.org/drm/intel/issues/178
  [i915#262]: https://gitlab.freedesktop.org/drm/intel/issues/262
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#723]: https://gitlab.freedesktop.org/drm/intel/issues/723
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#770]: https://gitlab.freedesktop.org/drm/intel/issues/770


Participating hosts (51 -> 26)
------------------------------

  Missing    (25): fi-snb-2520m fi-icl-y fi-skl-lmem fi-icl-guc fi-cml-u2 fi-bxt-dsi fi-bdw-5557u fi-byt-j1900 fi-glk-dsi fi-bwr-2160 fi-ilk-650 fi-ctg-p8600 fi-hsw-4770 fi-elk-e7500 fi-ilk-m540 fi-cfl-8700k fi-hsw-4200u fi-hsw-peppy fi-byt-squawks fi-bsw-cyan fi-cfl-guc fi-kbl-guc fi-kbl-x1275 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7591 -> Patchwork_15821

  CI-20190529: 20190529
  CI_DRM_7591: 977eb2b7ca4efceca4baf88a612e751f5f819999 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5350: 36431c5923099582e87379aec8e16d43090d06a7 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15821: ad4f0efd3a62d72117cbc2b0fa31c01ad929ef5f @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

ad4f0efd3a62 drm/i915/pmu: Skip sampling engines if gt is asleep

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15821/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
