Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D292F16AFEF
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2020 20:04:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10901898C8;
	Mon, 24 Feb 2020 19:04:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C5D83898C8;
 Mon, 24 Feb 2020 19:04:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9DA93A0088;
 Mon, 24 Feb 2020 19:04:42 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Mon, 24 Feb 2020 19:04:42 -0000
Message-ID: <158257108261.28361.2183202789249521618@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200224153240.9047-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20200224153240.9047-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgUmVm?=
 =?utf-8?q?actor_Gen11+_SAGV_support?=
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

Series: Refactor Gen11+ SAGV support
URL   : https://patchwork.freedesktop.org/series/73856/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7998 -> Patchwork_16691
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16691 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16691, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16691/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16691:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_force_connector_basic@force-connector-state:
    - fi-kbl-guc:         [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7998/fi-kbl-guc/igt@kms_force_connector_basic@force-connector-state.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16691/fi-kbl-guc/igt@kms_force_connector_basic@force-connector-state.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@kms_busy@basic@flip}:
    - fi-skl-guc:         [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7998/fi-skl-guc/igt@kms_busy@basic@flip.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16691/fi-skl-guc/igt@kms_busy@basic@flip.html
    - fi-skl-6700k2:      [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7998/fi-skl-6700k2/igt@kms_busy@basic@flip.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16691/fi-skl-6700k2/igt@kms_busy@basic@flip.html

  
Known issues
------------

  Here are the changes found in Patchwork_16691 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-j1900:       [PASS][7] -> [INCOMPLETE][8] ([i915#45])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7998/fi-byt-j1900/igt@gem_close_race@basic-threads.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16691/fi-byt-j1900/igt@gem_close_race@basic-threads.html
    - fi-byt-n2820:       [PASS][9] -> [INCOMPLETE][10] ([i915#45])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7998/fi-byt-n2820/igt@gem_close_race@basic-threads.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16691/fi-byt-n2820/igt@gem_close_race@basic-threads.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-tgl-y:           [PASS][11] -> [FAIL][12] ([CI#94])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7998/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16691/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-icl-u2:          [PASS][13] -> [FAIL][14] ([fdo#109635] / [i915#217])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7998/fi-icl-u2/igt@kms_chamelium@hdmi-crc-fast.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16691/fi-icl-u2/igt@kms_chamelium@hdmi-crc-fast.html

  * igt@prime_vgem@basic-fence-wait-default:
    - fi-tgl-y:           [PASS][15] -> [DMESG-WARN][16] ([CI#94] / [i915#402]) +2 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7998/fi-tgl-y/igt@prime_vgem@basic-fence-wait-default.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16691/fi-tgl-y/igt@prime_vgem@basic-fence-wait-default.html

  
#### Possible fixes ####

  * igt@gem_flink_basic@basic:
    - fi-tgl-y:           [DMESG-WARN][17] ([CI#94] / [i915#402]) -> [PASS][18] +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7998/fi-tgl-y/igt@gem_flink_basic@basic.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16691/fi-tgl-y/igt@gem_flink_basic@basic.html

  
#### Warnings ####

  * igt@gem_close_race@basic-threads:
    - fi-hsw-peppy:       [INCOMPLETE][19] ([i915#694] / [i915#816]) -> [TIMEOUT][20] ([fdo#112271] / [i915#1084])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7998/fi-hsw-peppy/igt@gem_close_race@basic-threads.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16691/fi-hsw-peppy/igt@gem_close_race@basic-threads.html

  * igt@runner@aborted:
    - fi-byt-j1900:       [FAIL][21] ([i915#999]) -> [FAIL][22] ([i915#816])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7998/fi-byt-j1900/igt@runner@aborted.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16691/fi-byt-j1900/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#109635]: https://bugs.freedesktop.org/show_bug.cgi?id=109635
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1084]: https://gitlab.freedesktop.org/drm/intel/issues/1084
  [i915#1233]: https://gitlab.freedesktop.org/drm/intel/issues/1233
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#283]: https://gitlab.freedesktop.org/drm/intel/issues/283
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816
  [i915#999]: https://gitlab.freedesktop.org/drm/intel/issues/999


Participating hosts (51 -> 31)
------------------------------

  Missing    (20): fi-kbl-soraka fi-ilk-m540 fi-bxt-dsi fi-hsw-4200u fi-glk-dsi fi-byt-squawks fi-cfl-8700k fi-apl-guc fi-kbl-7500u fi-ctg-p8600 fi-bsw-cyan fi-cfl-guc fi-kbl-x1275 fi-cfl-8109u fi-elk-e7500 fi-bsw-kefka fi-skl-lmem fi-byt-clapper fi-skl-6600u fi-kbl-r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7998 -> Patchwork_16691

  CI-20190529: 20190529
  CI_DRM_7998: 7b1bb0188905d180ee11694d9c26c5dd656dc1d1 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5463: d519c80219ebe558cd2fa378f26f9d73f9e35310 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16691: a8667395977a27778af8d856121fa030866e3028 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

a8667395977a drm/i915: Enable SAGV support for Gen12
d9e474c18262 drm/i915: Restrict qgv points which don't have enough bandwidth.
95a34afc3826 drm/i915: Added required new PCode commands
1a4b8e91ea4b drm/i915: Refactor intel_can_enable_sagv
4d3ce9ab4bc3 drm/i915: Introduce more *_state_changed indicators
b339bbdf676c drm/i915: Add intel_bw_get_*_state helpers
ba654cc920d4 drm/i915: Introduce skl_plane_wm_level accessor.
658365e95a33 drm/i915: Start passing latency as parameter

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16691/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
