Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ECD38151F97
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2020 18:39:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 039376E89B;
	Tue,  4 Feb 2020 17:39:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id DEC196E89B;
 Tue,  4 Feb 2020 17:39:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D7443A0096;
 Tue,  4 Feb 2020 17:39:13 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Tue, 04 Feb 2020 17:39:13 -0000
Message-ID: <158083795384.25090.2353264999289980963@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200203140747.22771-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20200203140747.22771-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgUmVm?=
 =?utf-8?q?actor_Gen11+_SAGV_support_=28rev2=29?=
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

Series: Refactor Gen11+ SAGV support (rev2)
URL   : https://patchwork.freedesktop.org/series/72923/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7864 -> Patchwork_16397
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16397 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16397, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16397/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16397:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_module_load@reload-no-display:
    - fi-blb-e6850:       [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/fi-blb-e6850/igt@i915_module_load@reload-no-display.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16397/fi-blb-e6850/igt@i915_module_load@reload-no-display.html

  * igt@kms_busy@basic-flip-pipe-a:
    - fi-ivb-3770:        [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/fi-ivb-3770/igt@kms_busy@basic-flip-pipe-a.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16397/fi-ivb-3770/igt@kms_busy@basic-flip-pipe-a.html
    - fi-ilk-650:         [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/fi-ilk-650/igt@kms_busy@basic-flip-pipe-a.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16397/fi-ilk-650/igt@kms_busy@basic-flip-pipe-a.html
    - fi-icl-u3:          [PASS][7] -> [INCOMPLETE][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/fi-icl-u3/igt@kms_busy@basic-flip-pipe-a.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16397/fi-icl-u3/igt@kms_busy@basic-flip-pipe-a.html
    - fi-bsw-kefka:       [PASS][9] -> [INCOMPLETE][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/fi-bsw-kefka/igt@kms_busy@basic-flip-pipe-a.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16397/fi-bsw-kefka/igt@kms_busy@basic-flip-pipe-a.html
    - fi-hsw-peppy:       [PASS][11] -> [INCOMPLETE][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/fi-hsw-peppy/igt@kms_busy@basic-flip-pipe-a.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16397/fi-hsw-peppy/igt@kms_busy@basic-flip-pipe-a.html
    - fi-hsw-4770r:       [PASS][13] -> [INCOMPLETE][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/fi-hsw-4770r/igt@kms_busy@basic-flip-pipe-a.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16397/fi-hsw-4770r/igt@kms_busy@basic-flip-pipe-a.html
    - fi-icl-y:           [PASS][15] -> [INCOMPLETE][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/fi-icl-y/igt@kms_busy@basic-flip-pipe-a.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16397/fi-icl-y/igt@kms_busy@basic-flip-pipe-a.html
    - fi-bdw-5557u:       [PASS][17] -> [INCOMPLETE][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/fi-bdw-5557u/igt@kms_busy@basic-flip-pipe-a.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16397/fi-bdw-5557u/igt@kms_busy@basic-flip-pipe-a.html
    - fi-icl-dsi:         [PASS][19] -> [INCOMPLETE][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/fi-icl-dsi/igt@kms_busy@basic-flip-pipe-a.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16397/fi-icl-dsi/igt@kms_busy@basic-flip-pipe-a.html
    - fi-hsw-4770:        [PASS][21] -> [INCOMPLETE][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/fi-hsw-4770/igt@kms_busy@basic-flip-pipe-a.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16397/fi-hsw-4770/igt@kms_busy@basic-flip-pipe-a.html
    - fi-icl-guc:         [PASS][23] -> [INCOMPLETE][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/fi-icl-guc/igt@kms_busy@basic-flip-pipe-a.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16397/fi-icl-guc/igt@kms_busy@basic-flip-pipe-a.html
    - fi-icl-u2:          [PASS][25] -> [INCOMPLETE][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/fi-icl-u2/igt@kms_busy@basic-flip-pipe-a.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16397/fi-icl-u2/igt@kms_busy@basic-flip-pipe-a.html

  * igt@kms_busy@basic-flip-pipe-c:
    - fi-bsw-n3050:       [PASS][27] -> [INCOMPLETE][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/fi-bsw-n3050/igt@kms_busy@basic-flip-pipe-c.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16397/fi-bsw-n3050/igt@kms_busy@basic-flip-pipe-c.html

  * igt@kms_force_connector_basic@force-connector-state:
    - fi-bsw-nick:        [PASS][29] -> [INCOMPLETE][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/fi-bsw-nick/igt@kms_force_connector_basic@force-connector-state.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16397/fi-bsw-nick/igt@kms_force_connector_basic@force-connector-state.html

  * igt@runner@aborted:
    - fi-pnv-d510:        NOTRUN -> [FAIL][31]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16397/fi-pnv-d510/igt@runner@aborted.html
    - fi-hsw-4770r:       NOTRUN -> [FAIL][32]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16397/fi-hsw-4770r/igt@runner@aborted.html
    - fi-hsw-peppy:       NOTRUN -> [FAIL][33]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16397/fi-hsw-peppy/igt@runner@aborted.html
    - fi-gdg-551:         NOTRUN -> [FAIL][34]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16397/fi-gdg-551/igt@runner@aborted.html
    - fi-snb-2520m:       NOTRUN -> [FAIL][35]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16397/fi-snb-2520m/igt@runner@aborted.html
    - fi-hsw-4770:        NOTRUN -> [FAIL][36]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16397/fi-hsw-4770/igt@runner@aborted.html
    - fi-snb-2600:        NOTRUN -> [FAIL][37]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16397/fi-snb-2600/igt@runner@aborted.html
    - fi-ivb-3770:        NOTRUN -> [FAIL][38]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16397/fi-ivb-3770/igt@runner@aborted.html
    - fi-blb-e6850:       NOTRUN -> [FAIL][39]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16397/fi-blb-e6850/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@runner@aborted:
    - {fi-ehl-1}:         NOTRUN -> [FAIL][40]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16397/fi-ehl-1/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_16397 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-j1900:       [PASS][41] -> [INCOMPLETE][42] ([i915#45])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/fi-byt-j1900/igt@gem_close_race@basic-threads.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16397/fi-byt-j1900/igt@gem_close_race@basic-threads.html

  * igt@gem_exec_parallel@fds:
    - fi-byt-n2820:       [PASS][43] -> [INCOMPLETE][44] ([i915#45])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/fi-byt-n2820/igt@gem_exec_parallel@fds.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16397/fi-byt-n2820/igt@gem_exec_parallel@fds.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-tgl-y:           [PASS][45] -> [FAIL][46] ([CI#94])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16397/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@gem_flink_basic@flink-lifetime:
    - fi-tgl-y:           [PASS][47] -> [DMESG-WARN][48] ([CI#94] / [i915#402])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/fi-tgl-y/igt@gem_flink_basic@flink-lifetime.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16397/fi-tgl-y/igt@gem_flink_basic@flink-lifetime.html

  * igt@i915_module_load@reload-no-display:
    - fi-pnv-d510:        [PASS][49] -> [INCOMPLETE][50] ([i915#299])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/fi-pnv-d510/igt@i915_module_load@reload-no-display.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16397/fi-pnv-d510/igt@i915_module_load@reload-no-display.html
    - fi-kbl-8809g:       [PASS][51] -> [INCOMPLETE][52] ([fdo#103665])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/fi-kbl-8809g/igt@i915_module_load@reload-no-display.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16397/fi-kbl-8809g/igt@i915_module_load@reload-no-display.html
    - fi-gdg-551:         [PASS][53] -> [INCOMPLETE][54] ([i915#172])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/fi-gdg-551/igt@i915_module_load@reload-no-display.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16397/fi-gdg-551/igt@i915_module_load@reload-no-display.html

  * igt@kms_busy@basic-flip-pipe-a:
    - fi-snb-2600:        [PASS][55] -> [INCOMPLETE][56] ([i915#696] / [i915#82])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/fi-snb-2600/igt@kms_busy@basic-flip-pipe-a.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16397/fi-snb-2600/igt@kms_busy@basic-flip-pipe-a.html
    - fi-tgl-y:           [PASS][57] -> [INCOMPLETE][58] ([CI#94] / [i915#472])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/fi-tgl-y/igt@kms_busy@basic-flip-pipe-a.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16397/fi-tgl-y/igt@kms_busy@basic-flip-pipe-a.html
    - fi-skl-guc:         [PASS][59] -> [INCOMPLETE][60] ([i915#198])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/fi-skl-guc/igt@kms_busy@basic-flip-pipe-a.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16397/fi-skl-guc/igt@kms_busy@basic-flip-pipe-a.html
    - fi-skl-6700k2:      [PASS][61] -> [INCOMPLETE][62] ([i915#198])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/fi-skl-6700k2/igt@kms_busy@basic-flip-pipe-a.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16397/fi-skl-6700k2/igt@kms_busy@basic-flip-pipe-a.html
    - fi-elk-e7500:       [PASS][63] -> [INCOMPLETE][64] ([i915#66])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/fi-elk-e7500/igt@kms_busy@basic-flip-pipe-a.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16397/fi-elk-e7500/igt@kms_busy@basic-flip-pipe-a.html
    - fi-cml-u2:          [PASS][65] -> [INCOMPLETE][66] ([i915#283])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/fi-cml-u2/igt@kms_busy@basic-flip-pipe-a.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16397/fi-cml-u2/igt@kms_busy@basic-flip-pipe-a.html

  * igt@kms_force_connector_basic@force-connector-state:
    - fi-kbl-guc:         [PASS][67] -> [INCOMPLETE][68] ([i915#938])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/fi-kbl-guc/igt@kms_force_connector_basic@force-connector-state.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16397/fi-kbl-guc/igt@kms_force_connector_basic@force-connector-state.html

  
#### Possible fixes ####

  * igt@kms_addfb_basic@bad-pitch-0:
    - fi-tgl-y:           [DMESG-WARN][69] ([CI#94] / [i915#402]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/fi-tgl-y/igt@kms_addfb_basic@bad-pitch-0.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16397/fi-tgl-y/igt@kms_addfb_basic@bad-pitch-0.html

  
#### Warnings ####

  * igt@gem_exec_parallel@contexts:
    - fi-byt-n2820:       [TIMEOUT][71] ([fdo#112271]) -> [TIMEOUT][72] ([fdo#112271] / [i915#1084])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/fi-byt-n2820/igt@gem_exec_parallel@contexts.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16397/fi-byt-n2820/igt@gem_exec_parallel@contexts.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1084]: https://gitlab.freedesktop.org/drm/intel/issues/1084
  [i915#172]: https://gitlab.freedesktop.org/drm/intel/issues/172
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#283]: https://gitlab.freedesktop.org/drm/intel/issues/283
  [i915#299]: https://gitlab.freedesktop.org/drm/intel/issues/299
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#66]: https://gitlab.freedesktop.org/drm/intel/issues/66
  [i915#696]: https://gitlab.freedesktop.org/drm/intel/issues/696
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#937]: https://gitlab.freedesktop.org/drm/intel/issues/937
  [i915#938]: https://gitlab.freedesktop.org/drm/intel/issues/938


Participating hosts (50 -> 32)
------------------------------

  Additional (1): fi-snb-2520m 
  Missing    (19): fi-kbl-soraka fi-ilk-m540 fi-bxt-dsi fi-hsw-4200u fi-skl-6770hq fi-byt-squawks fi-bwr-2160 fi-apl-guc fi-kbl-7500u fi-ctg-p8600 fi-cfl-8700k fi-cfl-guc fi-whl-u fi-kbl-x1275 fi-cfl-8109u fi-bdw-samus fi-byt-clapper fi-skl-6600u fi-kbl-r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7864 -> Patchwork_16397

  CI-20190529: 20190529
  CI_DRM_7864: 5a140e2fc771e4c8b10d14e2db7bfb4996ee9d8a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5417: 33cc93c8ba5daa0b7498f297a4f626844d895d06 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16397: 4b30ba5d0b6434315497d7ecc97ec530e8827cc5 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

4b30ba5d0b64 drm/i915: Enable SAGV support for Gen12
5527e670a257 drm/i915: Restrict qgv points which don't have enough bandwidth.
5f8d124e82f6 drm/i915: Added required new PCode commands
05c12cc8f8d9 drm/i915: Refactor intel_can_enable_sagv
18e583700e52 drm/i915: Init obj state in intel_atomic_get_old/new_global_obj_state
bbfa09f48831 drm/i915: Introduce skl_plane_wm_level accessor.
37ec63f7b6aa drm/i915: Start passing latency as parameter

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16397/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
