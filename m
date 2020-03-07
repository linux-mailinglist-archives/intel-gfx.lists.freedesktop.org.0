Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E75117CB76
	for <lists+intel-gfx@lfdr.de>; Sat,  7 Mar 2020 04:15:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B6966EDDB;
	Sat,  7 Mar 2020 03:15:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A77F86EDDB;
 Sat,  7 Mar 2020 03:15:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9EE41A47DA;
 Sat,  7 Mar 2020 03:15:33 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Sat, 07 Mar 2020 03:15:33 -0000
Message-ID: <158355093362.20976.15925453128945118242@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200225115024.2386811-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20200225115024.2386811-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?=3A_avoid_spurious_EBUSY_due_to_nonblocking_atomic_modesets_=28?=
 =?utf-8?q?rev5=29?=
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

Series: drm: avoid spurious EBUSY due to nonblocking atomic modesets (rev5)
URL   : https://patchwork.freedesktop.org/series/45968/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8088 -> Patchwork_16870
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16870 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16870, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16870/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16870:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_busy@basic@modeset:
    - fi-apl-guc:         [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/fi-apl-guc/igt@kms_busy@basic@modeset.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16870/fi-apl-guc/igt@kms_busy@basic@modeset.html
    - fi-icl-dsi:         [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/fi-icl-dsi/igt@kms_busy@basic@modeset.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16870/fi-icl-dsi/igt@kms_busy@basic@modeset.html
    - fi-bxt-dsi:         [PASS][5] -> [FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/fi-bxt-dsi/igt@kms_busy@basic@modeset.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16870/fi-bxt-dsi/igt@kms_busy@basic@modeset.html
    - fi-cfl-guc:         [PASS][7] -> [FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/fi-cfl-guc/igt@kms_busy@basic@modeset.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16870/fi-cfl-guc/igt@kms_busy@basic@modeset.html
    - fi-skl-6770hq:      [PASS][9] -> [FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/fi-skl-6770hq/igt@kms_busy@basic@modeset.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16870/fi-skl-6770hq/igt@kms_busy@basic@modeset.html
    - fi-cml-s:           [PASS][11] -> [FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/fi-cml-s/igt@kms_busy@basic@modeset.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16870/fi-cml-s/igt@kms_busy@basic@modeset.html
    - fi-kbl-soraka:      [PASS][13] -> [FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/fi-kbl-soraka/igt@kms_busy@basic@modeset.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16870/fi-kbl-soraka/igt@kms_busy@basic@modeset.html
    - fi-icl-guc:         [PASS][15] -> [FAIL][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/fi-icl-guc/igt@kms_busy@basic@modeset.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16870/fi-icl-guc/igt@kms_busy@basic@modeset.html
    - fi-skl-6700k2:      [PASS][17] -> [FAIL][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/fi-skl-6700k2/igt@kms_busy@basic@modeset.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16870/fi-skl-6700k2/igt@kms_busy@basic@modeset.html
    - fi-glk-dsi:         [PASS][19] -> [FAIL][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/fi-glk-dsi/igt@kms_busy@basic@modeset.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16870/fi-glk-dsi/igt@kms_busy@basic@modeset.html
    - fi-bsw-kefka:       [PASS][21] -> [FAIL][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/fi-bsw-kefka/igt@kms_busy@basic@modeset.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16870/fi-bsw-kefka/igt@kms_busy@basic@modeset.html
    - fi-skl-guc:         [PASS][23] -> [FAIL][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/fi-skl-guc/igt@kms_busy@basic@modeset.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16870/fi-skl-guc/igt@kms_busy@basic@modeset.html
    - fi-kbl-x1275:       [PASS][25] -> [FAIL][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/fi-kbl-x1275/igt@kms_busy@basic@modeset.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16870/fi-kbl-x1275/igt@kms_busy@basic@modeset.html
    - fi-kbl-7500u:       [PASS][27] -> [FAIL][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/fi-kbl-7500u/igt@kms_busy@basic@modeset.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16870/fi-kbl-7500u/igt@kms_busy@basic@modeset.html
    - fi-icl-y:           [PASS][29] -> [FAIL][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/fi-icl-y/igt@kms_busy@basic@modeset.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16870/fi-icl-y/igt@kms_busy@basic@modeset.html
    - fi-cfl-8700k:       [PASS][31] -> [FAIL][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/fi-cfl-8700k/igt@kms_busy@basic@modeset.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16870/fi-cfl-8700k/igt@kms_busy@basic@modeset.html
    - fi-kbl-r:           [PASS][33] -> [FAIL][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/fi-kbl-r/igt@kms_busy@basic@modeset.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16870/fi-kbl-r/igt@kms_busy@basic@modeset.html
    - fi-icl-u2:          [PASS][35] -> [FAIL][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/fi-icl-u2/igt@kms_busy@basic@modeset.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16870/fi-icl-u2/igt@kms_busy@basic@modeset.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_busy@basic@modeset:
    - {fi-tgl-u}:         [PASS][37] -> [FAIL][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/fi-tgl-u/igt@kms_busy@basic@modeset.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16870/fi-tgl-u/igt@kms_busy@basic@modeset.html
    - {fi-tgl-dsi}:       NOTRUN -> [FAIL][39]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16870/fi-tgl-dsi/igt@kms_busy@basic@modeset.html
    - {fi-ehl-1}:         [PASS][40] -> [FAIL][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/fi-ehl-1/igt@kms_busy@basic@modeset.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16870/fi-ehl-1/igt@kms_busy@basic@modeset.html

  
Known issues
------------

  Here are the changes found in Patchwork_16870 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_mmap_gtt@basic:
    - fi-tgl-y:           [PASS][42] -> [DMESG-WARN][43] ([CI#94] / [i915#402]) +1 similar issue
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/fi-tgl-y/igt@gem_mmap_gtt@basic.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16870/fi-tgl-y/igt@gem_mmap_gtt@basic.html

  * igt@i915_selftest@live@gem_contexts:
    - fi-cml-s:           [PASS][44] -> [DMESG-FAIL][45] ([i915#877])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/fi-cml-s/igt@i915_selftest@live@gem_contexts.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16870/fi-cml-s/igt@i915_selftest@live@gem_contexts.html
    - fi-cfl-guc:         [PASS][46] -> [INCOMPLETE][47] ([fdo#106070] / [i915#424])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/fi-cfl-guc/igt@i915_selftest@live@gem_contexts.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16870/fi-cfl-guc/igt@i915_selftest@live@gem_contexts.html

  * igt@kms_busy@basic@modeset:
    - fi-tgl-y:           [PASS][48] -> [FAIL][49] ([CI#94])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/fi-tgl-y/igt@kms_busy@basic@modeset.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16870/fi-tgl-y/igt@kms_busy@basic@modeset.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@execlists:
    - fi-bsw-kefka:       [DMESG-FAIL][50] ([i915#1314]) -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/fi-bsw-kefka/igt@i915_selftest@live@execlists.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16870/fi-bsw-kefka/igt@i915_selftest@live@execlists.html

  * igt@kms_addfb_basic@bo-too-small-due-to-tiling:
    - fi-tgl-y:           [DMESG-WARN][52] ([CI#94] / [i915#402]) -> [PASS][53] +1 similar issue
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/fi-tgl-y/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16870/fi-tgl-y/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-kbl-7500u:       [FAIL][54] ([fdo#109635] / [i915#217]) -> [PASS][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16870/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][56] ([fdo#111096] / [i915#323]) -> [PASS][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16870/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#106070]: https://bugs.freedesktop.org/show_bug.cgi?id=106070
  [fdo#109635]: https://bugs.freedesktop.org/show_bug.cgi?id=109635
  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [i915#1314]: https://gitlab.freedesktop.org/drm/intel/issues/1314
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424
  [i915#877]: https://gitlab.freedesktop.org/drm/intel/issues/877


Participating hosts (46 -> 36)
------------------------------

  Additional (2): fi-bwr-2160 fi-tgl-dsi 
  Missing    (12): fi-hsw-4770r fi-cml-u2 fi-bsw-n3050 fi-byt-j1900 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-gdg-551 fi-cfl-8109u fi-skl-lmem fi-skl-6600u fi-snb-2600 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8088 -> Patchwork_16870

  CI-20190529: 20190529
  CI_DRM_8088: 91dc8b179da374160a6bbdbd6987a512a10fbc02 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5498: 1bb7a25a09fe3e653d310e8bdfbdde4a1934b326 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16870: bca7a2e764c5f6afa4908e1d85d88a2d29538f96 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

bca7a2e764c5 drm: avoid spurious EBUSY due to nonblocking atomic modesets

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16870/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
