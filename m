Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 664AC150A74
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2020 17:02:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B215C6EC74;
	Mon,  3 Feb 2020 16:02:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3BAD66EC72;
 Mon,  3 Feb 2020 16:02:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3395BA011C;
 Mon,  3 Feb 2020 16:02:44 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gwan-gyeong Mun" <gwan-gyeong.mun@intel.com>
Date: Mon, 03 Feb 2020 16:02:44 -0000
Message-ID: <158074576418.3015.3365942334368492478@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200203120421.113744-1-gwan-gyeong.mun@intel.com>
In-Reply-To: <20200203120421.113744-1-gwan-gyeong.mun@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm=3A_Add_a_detailed_DP_HDMI_branc?=
 =?utf-8?q?h_info_on_debugfs?=
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

Series: series starting with [1/2] drm: Add a detailed DP HDMI branch info on debugfs
URL   : https://patchwork.freedesktop.org/series/72914/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7859 -> Patchwork_16392
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16392/index.html

Known issues
------------

  Here are the changes found in Patchwork_16392 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [PASS][1] -> [DMESG-FAIL][2] ([i915#725])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7859/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16392/fi-hsw-4770r/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_execlists:
    - fi-icl-y:           [PASS][3] -> [DMESG-FAIL][4] ([fdo#108569])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7859/fi-icl-y/igt@i915_selftest@live_execlists.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16392/fi-icl-y/igt@i915_selftest@live_execlists.html

  * igt@i915_selftest@live_gtt:
    - fi-bdw-5557u:       [PASS][5] -> [TIMEOUT][6] ([fdo#112271])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7859/fi-bdw-5557u/igt@i915_selftest@live_gtt.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16392/fi-bdw-5557u/igt@i915_selftest@live_gtt.html

  * igt@i915_selftest@live_hangcheck:
    - fi-icl-dsi:         [PASS][7] -> [INCOMPLETE][8] ([fdo#108569])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7859/fi-icl-dsi/igt@i915_selftest@live_hangcheck.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16392/fi-icl-dsi/igt@i915_selftest@live_hangcheck.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - fi-gdg-551:         [PASS][9] -> [INCOMPLETE][10] ([i915#172])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7859/fi-gdg-551/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16392/fi-gdg-551/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  
#### Possible fixes ####

  * igt@i915_module_load@reload-no-display:
    - fi-icl-u2:          [INCOMPLETE][11] -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7859/fi-icl-u2/igt@i915_module_load@reload-no-display.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16392/fi-icl-u2/igt@i915_module_load@reload-no-display.html

  * igt@i915_pm_rpm@module-reload:
    - fi-skl-6770hq:      [FAIL][13] ([i915#178]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7859/fi-skl-6770hq/igt@i915_pm_rpm@module-reload.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16392/fi-skl-6770hq/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [DMESG-FAIL][15] ([i915#563]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7859/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16392/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-byt-n2820:       [DMESG-FAIL][17] ([i915#1052]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7859/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16392/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html
    - fi-cfl-guc:         [DMESG-FAIL][19] ([i915#623]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7859/fi-cfl-guc/igt@i915_selftest@live_gem_contexts.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16392/fi-cfl-guc/igt@i915_selftest@live_gem_contexts.html

  * igt@kms_chamelium@hdmi-edid-read:
    - fi-icl-u2:          [FAIL][21] ([i915#217]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7859/fi-icl-u2/igt@kms_chamelium@hdmi-edid-read.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16392/fi-icl-u2/igt@kms_chamelium@hdmi-edid-read.html

  
#### Warnings ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-j1900:       [TIMEOUT][23] ([fdo#112271] / [i915#1084] / [i915#816]) -> [INCOMPLETE][24] ([i915#45])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7859/fi-byt-j1900/igt@gem_close_race@basic-threads.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16392/fi-byt-j1900/igt@gem_close_race@basic-threads.html

  * igt@gem_exec_parallel@contexts:
    - fi-byt-n2820:       [FAIL][25] ([i915#694]) -> [TIMEOUT][26] ([fdo#112271] / [i915#1084])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7859/fi-byt-n2820/igt@gem_exec_parallel@contexts.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16392/fi-byt-n2820/igt@gem_exec_parallel@contexts.html

  * igt@gem_exec_parallel@fds:
    - fi-byt-n2820:       [TIMEOUT][27] ([fdo#112271] / [i915#1084]) -> [FAIL][28] ([i915#694])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7859/fi-byt-n2820/igt@gem_exec_parallel@fds.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16392/fi-byt-n2820/igt@gem_exec_parallel@fds.html

  * igt@runner@aborted:
    - fi-byt-j1900:       [FAIL][29] ([i915#999]) -> [FAIL][30] ([i915#816])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7859/fi-byt-j1900/igt@runner@aborted.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16392/fi-byt-j1900/igt@runner@aborted.html

  
  [fdo#108569]: https://bugs.freedesktop.org/show_bug.cgi?id=108569
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1052]: https://gitlab.freedesktop.org/drm/intel/issues/1052
  [i915#1084]: https://gitlab.freedesktop.org/drm/intel/issues/1084
  [i915#172]: https://gitlab.freedesktop.org/drm/intel/issues/172
  [i915#178]: https://gitlab.freedesktop.org/drm/intel/issues/178
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#563]: https://gitlab.freedesktop.org/drm/intel/issues/563
  [i915#623]: https://gitlab.freedesktop.org/drm/intel/issues/623
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816
  [i915#999]: https://gitlab.freedesktop.org/drm/intel/issues/999


Participating hosts (54 -> 36)
------------------------------

  Missing    (18): fi-ilk-m540 fi-bdw-samus fi-hsw-4200u fi-hsw-peppy fi-byt-squawks fi-bsw-cyan fi-snb-2520m fi-kbl-7500u fi-ivb-3770 fi-cfl-8109u fi-elk-e7500 fi-skl-lmem fi-kbl-7560u fi-tgl-y fi-byt-clapper fi-kbl-r fi-skl-6600u fi-snb-2600 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7859 -> Patchwork_16392

  CI-20190529: 20190529
  CI_DRM_7859: b7b84e9f2d009d833774aa851d2dd3f78ba6a8c5 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5413: 84d12b77184a143f501c2f347df8ba3210c4cf3c @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16392: 71723f1dbd03cd5d2559b3523d9ce2c11ce52c93 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

71723f1dbd03 drm/i915/dp: Add checking of YCBCR420 Pass-through to YCBCR420 outputs.
908e5a982123 drm: Add a detailed DP HDMI branch info on debugfs

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16392/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
