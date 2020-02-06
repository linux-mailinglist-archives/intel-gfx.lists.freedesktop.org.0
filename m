Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DB64153E66
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Feb 2020 06:54:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD23B6F9C2;
	Thu,  6 Feb 2020 05:54:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7C5EE6E3C7;
 Thu,  6 Feb 2020 05:54:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 136E4A0093;
 Thu,  6 Feb 2020 05:54:28 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Thu, 06 Feb 2020 05:54:28 -0000
Message-ID: <158096846807.14481.9209868998789789373@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200206020851.337897-1-jose.souza@intel.com>
In-Reply-To: <20200206020851.337897-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv2=2C1/3=5D_drm/i915/display/fbc=3A_Make_f?=
 =?utf-8?q?ences_a_nice-to-have_for_GEN11+?=
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

Series: series starting with [v2,1/3] drm/i915/display/fbc: Make fences a nice-to-have for GEN11+
URL   : https://patchwork.freedesktop.org/series/73070/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7874 -> Patchwork_16451
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16451/index.html

Known issues
------------

  Here are the changes found in Patchwork_16451 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-n2820:       [PASS][1] -> [INCOMPLETE][2] ([i915#45])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-byt-n2820/igt@gem_close_race@basic-threads.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16451/fi-byt-n2820/igt@gem_close_race@basic-threads.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-skl-6770hq:      [PASS][3] -> [INCOMPLETE][4] ([i915#151])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-skl-6770hq/igt@i915_pm_rpm@basic-pci-d3-state.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16451/fi-skl-6770hq/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@i915_selftest@live_execlists:
    - fi-icl-y:           [PASS][5] -> [DMESG-FAIL][6] ([fdo#108569])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-icl-y/igt@i915_selftest@live_execlists.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16451/fi-icl-y/igt@i915_selftest@live_execlists.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-byt-j1900:       [PASS][7] -> [DMESG-FAIL][8] ([i915#1052])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-byt-j1900/igt@i915_selftest@live_gem_contexts.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16451/fi-byt-j1900/igt@i915_selftest@live_gem_contexts.html
    - fi-cfl-8700k:       [PASS][9] -> [DMESG-FAIL][10] ([i915#623])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16451/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html

  * igt@i915_selftest@live_gtt:
    - fi-kbl-7500u:       [PASS][11] -> [TIMEOUT][12] ([fdo#112271])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-kbl-7500u/igt@i915_selftest@live_gtt.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16451/fi-kbl-7500u/igt@i915_selftest@live_gtt.html

  * igt@prime_self_import@basic-with_one_bo_two_files:
    - fi-tgl-y:           [PASS][13] -> [DMESG-WARN][14] ([CI#94] / [i915#402]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16451/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html

  
#### Possible fixes ####

  * igt@kms_addfb_basic@addfb25-bad-modifier:
    - fi-tgl-y:           [DMESG-WARN][15] ([CI#94] / [i915#402]) -> [PASS][16] +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-tgl-y/igt@kms_addfb_basic@addfb25-bad-modifier.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16451/fi-tgl-y/igt@kms_addfb_basic@addfb25-bad-modifier.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-icl-u2:          [DMESG-WARN][17] ([IGT#4] / [i915#263]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16451/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-icl-u2:          [FAIL][19] ([fdo#109635] / [i915#217]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-icl-u2/igt@kms_chamelium@hdmi-crc-fast.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16451/fi-icl-u2/igt@kms_chamelium@hdmi-crc-fast.html

  
#### Warnings ####

  * igt@gem_exec_parallel@contexts:
    - fi-byt-j1900:       [TIMEOUT][21] ([fdo#112271] / [i915#1084]) -> [FAIL][22] ([i915#694])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-byt-j1900/igt@gem_exec_parallel@contexts.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16451/fi-byt-j1900/igt@gem_exec_parallel@contexts.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][23] ([fdo#111096] / [i915#323]) -> [FAIL][24] ([fdo#111407])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7874/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16451/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [IGT#4]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/4
  [fdo#108569]: https://bugs.freedesktop.org/show_bug.cgi?id=108569
  [fdo#109635]: https://bugs.freedesktop.org/show_bug.cgi?id=109635
  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1052]: https://gitlab.freedesktop.org/drm/intel/issues/1052
  [i915#1084]: https://gitlab.freedesktop.org/drm/intel/issues/1084
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#263]: https://gitlab.freedesktop.org/drm/intel/issues/263
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#623]: https://gitlab.freedesktop.org/drm/intel/issues/623
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694


Participating hosts (51 -> 41)
------------------------------

  Missing    (10): fi-bdw-5557u fi-bsw-n3050 fi-hsw-peppy fi-byt-squawks fi-bsw-cyan fi-gdg-551 fi-ivb-3770 fi-bdw-samus fi-byt-clapper fi-skl-6600u 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7874 -> Patchwork_16451

  CI-20190529: 20190529
  CI_DRM_7874: 3f234d1ab91ec2321312150116c1285bcb0a260b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5420: 497e13d2b4c1053bcd01bd15739fef55e7694a03 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16451: 5f1785f24440967924c5b6aca0651f42fef3aa21 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

5f1785f24440 drm/i915/display: Do not write in removed FBC fence registers
33582ba1b9a2 drm/i915/display/fbc: Make fences a nice-to-have for GEN11+

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16451/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
