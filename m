Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F974146116
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2020 05:07:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E97A36F97F;
	Thu, 23 Jan 2020 04:07:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9E0A16F97F;
 Thu, 23 Jan 2020 04:07:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8DABFA0134;
 Thu, 23 Jan 2020 04:07:01 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Thu, 23 Jan 2020 04:07:01 -0000
Message-ID: <157975242155.1145.15483401088570277461@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200122182617.18597-1-jose.souza@intel.com>
In-Reply-To: <20200122182617.18597-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/2=5D_drm/i915/dc3co=3A_Do_the_full_?=
 =?utf-8?q?calculation_of_DC3CO_exit_only_once_=28rev2=29?=
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

Series: series starting with [CI,1/2] drm/i915/dc3co: Do the full calculation of DC3CO exit only once (rev2)
URL   : https://patchwork.freedesktop.org/series/72416/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7799 -> Patchwork_16222
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16222/index.html

Known issues
------------

  Here are the changes found in Patchwork_16222 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_parallel@fds:
    - fi-byt-n2820:       [PASS][1] -> [TIMEOUT][2] ([fdo#112271])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/fi-byt-n2820/igt@gem_exec_parallel@fds.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16222/fi-byt-n2820/igt@gem_exec_parallel@fds.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-skl-lmem:        [PASS][3] -> [INCOMPLETE][4] ([i915#671] / [i915#971])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/fi-skl-lmem/igt@i915_module_load@reload-with-fault-injection.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16222/fi-skl-lmem/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rpm@module-reload:
    - fi-skl-6600u:       [PASS][5] -> [DMESG-WARN][6] ([i915#889]) +23 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/fi-skl-6600u/igt@i915_pm_rpm@module-reload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16222/fi-skl-6600u/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live_blt:
    - fi-ivb-3770:        [PASS][7] -> [DMESG-FAIL][8] ([i915#725])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16222/fi-ivb-3770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gt_engines:
    - fi-cfl-8700k:       [PASS][9] -> [DMESG-FAIL][10] ([i915#889]) +7 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/fi-cfl-8700k/igt@i915_selftest@live_gt_engines.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16222/fi-cfl-8700k/igt@i915_selftest@live_gt_engines.html

  * igt@i915_selftest@live_gt_lrc:
    - fi-skl-6600u:       [PASS][11] -> [DMESG-FAIL][12] ([i915#889]) +7 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/fi-skl-6600u/igt@i915_selftest@live_gt_lrc.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16222/fi-skl-6600u/igt@i915_selftest@live_gt_lrc.html

  * igt@i915_selftest@live_gt_pm:
    - fi-cfl-8700k:       [PASS][13] -> [DMESG-WARN][14] ([i915#889]) +23 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/fi-cfl-8700k/igt@i915_selftest@live_gt_pm.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16222/fi-cfl-8700k/igt@i915_selftest@live_gt_pm.html

  * igt@kms_chamelium@dp-edid-read:
    - fi-cml-u2:          [PASS][15] -> [FAIL][16] ([i915#217])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/fi-cml-u2/igt@kms_chamelium@dp-edid-read.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16222/fi-cml-u2/igt@kms_chamelium@dp-edid-read.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [PASS][17] -> [FAIL][18] ([fdo#111096] / [i915#323])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16222/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-a:
    - fi-icl-dsi:         [PASS][19] -> [DMESG-WARN][20] ([i915#109])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/fi-icl-dsi/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16222/fi-icl-dsi/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html

  
#### Possible fixes ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-cfl-guc:         [INCOMPLETE][21] ([i915#505] / [i915#671]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/fi-cfl-guc/igt@i915_module_load@reload-with-fault-injection.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16222/fi-cfl-guc/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [DMESG-FAIL][23] ([i915#553] / [i915#725]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16222/fi-hsw-4770r/igt@i915_selftest@live_blt.html

  
  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#505]: https://gitlab.freedesktop.org/drm/intel/issues/505
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#671]: https://gitlab.freedesktop.org/drm/intel/issues/671
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#889]: https://gitlab.freedesktop.org/drm/intel/issues/889
  [i915#971]: https://gitlab.freedesktop.org/drm/intel/issues/971


Participating hosts (50 -> 43)
------------------------------

  Additional (2): fi-glk-dsi fi-ilk-650 
  Missing    (9): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-pnv-d510 fi-tgl-y fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7799 -> Patchwork_16222

  CI-20190529: 20190529
  CI_DRM_7799: 0f8a46a25a7781ef6ede604c9cb50f82cfb5e960 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5377: 1e6cb3e75925cf623df04f78430ae9299632ec3f @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16222: 864c975779cb95badf454b2f8931dd1868d7c932 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

864c975779cb drm/i915/dc3co: Avoid full modeset when EXITLINE needs to be changed
7845a3b2360b drm/i915/dc3co: Do the full calculation of DC3CO exit only once

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16222/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
