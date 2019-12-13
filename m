Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5087311DBC6
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2019 02:43:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C79F6E243;
	Fri, 13 Dec 2019 01:43:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id DF32F6E10C;
 Fri, 13 Dec 2019 01:43:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D6DD0A0087;
 Fri, 13 Dec 2019 01:43:03 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Fri, 13 Dec 2019 01:43:03 -0000
Message-ID: <157620138385.23797.15999748532441306042@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191213001511.678070-1-matthew.d.roper@intel.com>
In-Reply-To: <20191213001511.678070-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgQVVY?=
 =?utf-8?q?_power_well_fixes_=28rev3=29?=
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

Series: AUX power well fixes (rev3)
URL   : https://patchwork.freedesktop.org/series/70857/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7554 -> Patchwork_15736
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15736 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15736, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15736/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15736:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-j1900:       [PASS][1] -> [TIMEOUT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/fi-byt-j1900/igt@gem_close_race@basic-threads.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15736/fi-byt-j1900/igt@gem_close_race@basic-threads.html

  * igt@gem_ctx_create@basic-files:
    - fi-ivb-3770:        [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/fi-ivb-3770/igt@gem_ctx_create@basic-files.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15736/fi-ivb-3770/igt@gem_ctx_create@basic-files.html

  * igt@runner@aborted:
    - fi-byt-j1900:       NOTRUN -> [FAIL][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15736/fi-byt-j1900/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_15736 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-kbl-x1275:       [PASS][6] -> [DMESG-WARN][7] ([i915#62] / [i915#92] / [i915#95])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/fi-kbl-x1275/igt@i915_pm_rpm@basic-pci-d3-state.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15736/fi-kbl-x1275/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [PASS][8] -> [DMESG-FAIL][9] ([i915#725])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15736/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-byt-n2820:       [PASS][10] -> [INCOMPLETE][11] ([i915#45])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15736/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [PASS][12] -> [FAIL][13] ([fdo#111096] / [i915#323])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15736/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Possible fixes ####

  * igt@gem_exec_parallel@basic:
    - {fi-tgl-u}:         [INCOMPLETE][14] ([i915#476]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/fi-tgl-u/igt@gem_exec_parallel@basic.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15736/fi-tgl-u/igt@gem_exec_parallel@basic.html

  
#### Warnings ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-kbl-x1275:       [DMESG-WARN][16] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][17] ([i915#62] / [i915#92]) +8 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/fi-kbl-x1275/igt@gem_exec_suspend@basic-s3.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15736/fi-kbl-x1275/igt@gem_exec_suspend@basic-s3.html

  * igt@kms_flip@basic-flip-vs-modeset:
    - fi-kbl-x1275:       [DMESG-WARN][18] ([i915#62] / [i915#92]) -> [DMESG-WARN][19] ([i915#62] / [i915#92] / [i915#95]) +5 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15736/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#476]: https://gitlab.freedesktop.org/drm/intel/issues/476
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (52 -> 46)
------------------------------

  Additional (1): fi-hsw-4770r 
  Missing    (7): fi-icl-1065g7 fi-ilk-m540 fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7554 -> Patchwork_15736

  CI-20190529: 20190529
  CI_DRM_7554: b8870a9cb78bb11f21414804940fadc47ac848dd @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5346: 466b0e6cbcbaccff012b484d1fd7676364b37b93 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15736: 3813cd0a770cacc6aeaaf5acdaf1d532e2748267 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

3813cd0a770c drm/i915/icl: Cleanup combo PHY aux power well handlers
16b9c12cd4e9 drm/i915/tgl: Drop Wa#1178
6786ae145b22 drm/i915/ehl: Define EHL powerwells independently of ICL

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15736/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
