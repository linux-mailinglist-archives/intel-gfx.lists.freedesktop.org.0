Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 51D0E158471
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Feb 2020 21:55:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C3966E239;
	Mon, 10 Feb 2020 20:55:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 576576E239;
 Mon, 10 Feb 2020 20:55:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4FA6EA0096;
 Mon, 10 Feb 2020 20:55:42 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Mon, 10 Feb 2020 20:55:42 -0000
Message-ID: <158136814229.3098.14942046544300931690@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200210184057.296698-1-jose.souza@intel.com>
In-Reply-To: <20200210184057.296698-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/mst=3A_Set_intel=5Fdp=5Fset=5Fm=5Fn=28=29_for_MST_slaves?=
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

Series: drm/i915/mst: Set intel_dp_set_m_n() for MST slaves
URL   : https://patchwork.freedesktop.org/series/73252/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7903 -> Patchwork_16507
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16507 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16507, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16507/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16507:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live_gt_mocs:
    - fi-bwr-2160:        [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7903/fi-bwr-2160/igt@i915_selftest@live_gt_mocs.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16507/fi-bwr-2160/igt@i915_selftest@live_gt_mocs.html

  
Known issues
------------

  Here are the changes found in Patchwork_16507 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_parallel@fds:
    - fi-hsw-4770r:       [PASS][3] -> [INCOMPLETE][4] ([i915#694])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7903/fi-hsw-4770r/igt@gem_exec_parallel@fds.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16507/fi-hsw-4770r/igt@gem_exec_parallel@fds.html

  * igt@i915_selftest@live_execlists:
    - fi-icl-y:           [PASS][5] -> [DMESG-FAIL][6] ([fdo#108569])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7903/fi-icl-y/igt@i915_selftest@live_execlists.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16507/fi-icl-y/igt@i915_selftest@live_execlists.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [PASS][7] -> [FAIL][8] ([fdo#111096] / [i915#323])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7903/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16507/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Possible fixes ####

  * igt@gem_exec_parallel@contexts:
    - fi-byt-n2820:       [FAIL][9] ([i915#694]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7903/fi-byt-n2820/igt@gem_exec_parallel@contexts.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16507/fi-byt-n2820/igt@gem_exec_parallel@contexts.html

  * igt@i915_selftest@live_blt:
    - fi-bsw-n3050:       [INCOMPLETE][11] ([i915#392]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7903/fi-bsw-n3050/igt@i915_selftest@live_blt.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16507/fi-bsw-n3050/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-cfl-8700k:       [DMESG-FAIL][13] ([i915#623]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7903/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16507/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html
    - fi-byt-n2820:       [DMESG-FAIL][15] ([i915#1052]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7903/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16507/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html
    - fi-cfl-guc:         [INCOMPLETE][17] ([CI#80] / [fdo#106070] / [i915#424]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7903/fi-cfl-guc/igt@i915_selftest@live_gem_contexts.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16507/fi-cfl-guc/igt@i915_selftest@live_gem_contexts.html

  * igt@i915_selftest@live_gtt:
    - fi-bdw-5557u:       [TIMEOUT][19] ([fdo#112271]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7903/fi-bdw-5557u/igt@i915_selftest@live_gtt.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16507/fi-bdw-5557u/igt@i915_selftest@live_gtt.html

  
#### Warnings ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-j1900:       [INCOMPLETE][21] ([i915#45]) -> [TIMEOUT][22] ([fdo#112271] / [i915#1084] / [i915#816])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7903/fi-byt-j1900/igt@gem_close_race@basic-threads.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16507/fi-byt-j1900/igt@gem_close_race@basic-threads.html

  
  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [fdo#106070]: https://bugs.freedesktop.org/show_bug.cgi?id=106070
  [fdo#108569]: https://bugs.freedesktop.org/show_bug.cgi?id=108569
  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1052]: https://gitlab.freedesktop.org/drm/intel/issues/1052
  [i915#1084]: https://gitlab.freedesktop.org/drm/intel/issues/1084
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#392]: https://gitlab.freedesktop.org/drm/intel/issues/392
  [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#623]: https://gitlab.freedesktop.org/drm/intel/issues/623
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816


Participating hosts (47 -> 42)
------------------------------

  Additional (2): fi-skl-lmem fi-snb-2600 
  Missing    (7): fi-ilk-m540 fi-tgl-dsi fi-hsw-4200u fi-byt-squawks fi-ivb-3770 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7903 -> Patchwork_16507

  CI-20190529: 20190529
  CI_DRM_7903: 47b768c475f4a11a48bc43e6228660f8b26a542b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5433: 6a96c17f3a1b4e1f90b1a0b0ce42a7219875d1a4 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16507: 28b1ef037676f760ea5ab65df8cf5ad2b8af7983 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

28b1ef037676 drm/i915/mst: Set intel_dp_set_m_n() for MST slaves

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16507/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
