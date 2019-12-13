Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6A4111EA4F
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2019 19:29:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D2336EC04;
	Fri, 13 Dec 2019 18:29:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id F29206EC04;
 Fri, 13 Dec 2019 18:29:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EAB42A0BA8;
 Fri, 13 Dec 2019 18:29:42 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Date: Fri, 13 Dec 2019 18:29:42 -0000
Message-ID: <157626178295.23798.12351045244925166581@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191213141231.7330-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20191213141231.7330-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgUmVm?=
 =?utf-8?q?actor_Gen11+_SAGV_support_=28rev14=29?=
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

Series: Refactor Gen11+ SAGV support (rev14)
URL   : https://patchwork.freedesktop.org/series/68028/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7560 -> Patchwork_15747
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15747/index.html

Known issues
------------

  Here are the changes found in Patchwork_15747 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_sync@basic-each:
    - fi-tgl-y:           [PASS][1] -> [INCOMPLETE][2] ([i915#707])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7560/fi-tgl-y/igt@gem_sync@basic-each.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15747/fi-tgl-y/igt@gem_sync@basic-each.html

  * igt@i915_selftest@live_blt:
    - fi-ivb-3770:        [PASS][3] -> [DMESG-FAIL][4] ([i915#563])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7560/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15747/fi-ivb-3770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-byt-j1900:       [PASS][5] -> [DMESG-FAIL][6] ([i915#722])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7560/fi-byt-j1900/igt@i915_selftest@live_gem_contexts.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15747/fi-byt-j1900/igt@i915_selftest@live_gem_contexts.html
    - fi-cfl-8700k:       [PASS][7] -> [DMESG-FAIL][8] ([i915#730])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7560/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15747/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html
    - fi-hsw-peppy:       [PASS][9] -> [INCOMPLETE][10] ([i915#694])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7560/fi-hsw-peppy/igt@i915_selftest@live_gem_contexts.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15747/fi-hsw-peppy/igt@i915_selftest@live_gem_contexts.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-skl-6700k2:      [PASS][11] -> [INCOMPLETE][12] ([i915#69])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7560/fi-skl-6700k2/igt@kms_chamelium@common-hpd-after-suspend.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15747/fi-skl-6700k2/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [PASS][13] -> [FAIL][14] ([fdo#111096] / [i915#323])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7560/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15747/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-n2820:       [TIMEOUT][15] ([i915#816]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7560/fi-byt-n2820/igt@gem_close_race@basic-threads.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15747/fi-byt-n2820/igt@gem_close_race@basic-threads.html

  * igt@i915_selftest@live_blt:
    - fi-bsw-n3050:       [DMESG-FAIL][17] ([i915#723]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7560/fi-bsw-n3050/igt@i915_selftest@live_blt.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15747/fi-bsw-n3050/igt@i915_selftest@live_blt.html
    - fi-hsw-4770r:       [DMESG-FAIL][19] -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7560/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15747/fi-hsw-4770r/igt@i915_selftest@live_blt.html

  
#### Warnings ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-kbl-x1275:       [DMESG-WARN][21] ([i915#62] / [i915#92]) -> [DMESG-WARN][22] ([i915#62] / [i915#92] / [i915#95]) +6 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7560/fi-kbl-x1275/igt@gem_exec_suspend@basic-s0.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15747/fi-kbl-x1275/igt@gem_exec_suspend@basic-s0.html

  * igt@kms_flip@basic-flip-vs-modeset:
    - fi-kbl-x1275:       [DMESG-WARN][23] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][24] ([i915#62] / [i915#92]) +5 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7560/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15747/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#563]: https://gitlab.freedesktop.org/drm/intel/issues/563
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#722]: https://gitlab.freedesktop.org/drm/intel/issues/722
  [i915#723]: https://gitlab.freedesktop.org/drm/intel/issues/723
  [i915#730]: https://gitlab.freedesktop.org/drm/intel/issues/730
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (55 -> 47)
------------------------------

  Missing    (8): fi-icl-1065g7 fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7560 -> Patchwork_15747

  CI-20190529: 20190529
  CI_DRM_7560: c093691eb61cb4680e44a339660e9443e728ef67 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5349: 048f58513d8b8ec6bb307a939f0ac959bc0f0e10 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15747: 8a5a4b77d79a39af6fa4dd0d60b4bcb05f46d242 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

8a5a4b77d79a drm/i915: Enable SAGV support for Gen12
0da0e3056a02 drm/i915: Restrict qgv points which don't have enough bandwidth.
455914397efd drm/i915: Refactor intel_can_enable_sagv

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15747/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
