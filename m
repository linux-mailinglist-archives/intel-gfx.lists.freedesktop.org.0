Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 472BD128EA1
	for <lists+intel-gfx@lfdr.de>; Sun, 22 Dec 2019 16:16:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46E3E6E566;
	Sun, 22 Dec 2019 15:16:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C92BA6E126;
 Sun, 22 Dec 2019 15:16:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C1D0CA0087;
 Sun, 22 Dec 2019 15:16:37 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sun, 22 Dec 2019 15:16:37 -0000
Message-ID: <157702779776.8699.5932672854545605739@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191222144046.1674865-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191222144046.1674865-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/3=5D_drm/i915/gt=3A_Pull_intel=5Fgt?=
 =?utf-8?b?X2luaXRfaHcoKSBpbnRvIGludGVsX2d0X3Jlc3VtZSgp?=
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

Series: series starting with [CI,1/3] drm/i915/gt: Pull intel_gt_init_hw() into intel_gt_resume()
URL   : https://patchwork.freedesktop.org/series/71265/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7622 -> Patchwork_15881
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15881/index.html

Known issues
------------

  Here are the changes found in Patchwork_15881 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live_blt:
    - fi-bsw-nick:        [PASS][1] -> [DMESG-FAIL][2] ([i915#723])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7622/fi-bsw-nick/igt@i915_selftest@live_blt.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15881/fi-bsw-nick/igt@i915_selftest@live_blt.html
    - fi-hsw-4770r:       [PASS][3] -> [DMESG-FAIL][4] ([i915#725])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7622/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15881/fi-hsw-4770r/igt@i915_selftest@live_blt.html

  
#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - {fi-tgl-guc}:       [INCOMPLETE][5] ([i915#435]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7622/fi-tgl-guc/igt@gem_close_race@basic-threads.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15881/fi-tgl-guc/igt@gem_close_race@basic-threads.html
    - fi-byt-j1900:       [TIMEOUT][7] ([i915#816]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7622/fi-byt-j1900/igt@gem_close_race@basic-threads.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15881/fi-byt-j1900/igt@gem_close_race@basic-threads.html

  * igt@gem_exec_gttfill@basic:
    - {fi-tgl-u}:         [INCOMPLETE][9] ([fdo#111593]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7622/fi-tgl-u/igt@gem_exec_gttfill@basic.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15881/fi-tgl-u/igt@gem_exec_gttfill@basic.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-cfl-guc:         [INCOMPLETE][11] ([i915#505] / [i915#671]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7622/fi-cfl-guc/igt@i915_module_load@reload-with-fault-injection.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15881/fi-cfl-guc/igt@i915_module_load@reload-with-fault-injection.html
    - fi-skl-lmem:        [INCOMPLETE][13] ([i915#671]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7622/fi-skl-lmem/igt@i915_module_load@reload-with-fault-injection.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15881/fi-skl-lmem/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-skl-6600u:       [FAIL][15] ([i915#138]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7622/fi-skl-6600u/igt@i915_pm_rpm@basic-pci-d3-state.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15881/fi-skl-6600u/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@i915_selftest@live_gt_pm:
    - fi-icl-guc:         [DMESG-FAIL][17] ([i915#571]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7622/fi-icl-guc/igt@i915_selftest@live_gt_pm.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15881/fi-icl-guc/igt@i915_selftest@live_gt_pm.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][19] ([fdo#111407]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7622/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15881/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Warnings ####

  * igt@i915_selftest@live_blt:
    - fi-ivb-3770:        [DMESG-FAIL][21] ([i915#725]) -> [DMESG-FAIL][22] ([i915#563])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7622/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15881/fi-ivb-3770/igt@i915_selftest@live_blt.html
    - fi-hsw-4770:        [DMESG-FAIL][23] ([i915#725]) -> [DMESG-FAIL][24] ([i915#553] / [i915#725])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7622/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15881/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - fi-kbl-x1275:       [DMESG-WARN][25] ([i915#62] / [i915#92]) -> [DMESG-WARN][26] ([i915#62] / [i915#92] / [i915#95]) +2 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7622/fi-kbl-x1275/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15881/fi-kbl-x1275/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_flip@basic-flip-vs-modeset:
    - fi-kbl-x1275:       [DMESG-WARN][27] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][28] ([i915#62] / [i915#92]) +7 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7622/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15881/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [i915#138]: https://gitlab.freedesktop.org/drm/intel/issues/138
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#505]: https://gitlab.freedesktop.org/drm/intel/issues/505
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#563]: https://gitlab.freedesktop.org/drm/intel/issues/563
  [i915#571]: https://gitlab.freedesktop.org/drm/intel/issues/571
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#671]: https://gitlab.freedesktop.org/drm/intel/issues/671
  [i915#723]: https://gitlab.freedesktop.org/drm/intel/issues/723
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (44 -> 40)
------------------------------

  Additional (4): fi-kbl-soraka fi-blb-e6850 fi-hsw-peppy fi-bsw-n3050 
  Missing    (8): fi-ilk-m540 fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-gdg-551 fi-bsw-kefka fi-byt-clapper fi-snb-2600 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7622 -> Patchwork_15881

  CI-20190529: 20190529
  CI_DRM_7622: f50651450e00d069b30c25508d0a3c47f7b6db35 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5352: 0586d205f651674e575351c2d5a7d0760716c9f1 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15881: 0b9f22e52d1499f8781ab562df8b277373ae6adc @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

0b9f22e52d14 drm/i915/gt: Move pm debug files into a gt aware debugfs
fcc9f73412fe drm/i915/gt: Merge engine init/setup loops
cb4e6cb28b27 drm/i915/gt: Pull intel_gt_init_hw() into intel_gt_resume()

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15881/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
