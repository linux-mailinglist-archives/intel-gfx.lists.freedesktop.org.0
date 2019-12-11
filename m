Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BEE7511A38D
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2019 05:47:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7C4E6E178;
	Wed, 11 Dec 2019 04:47:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 616F36E130;
 Wed, 11 Dec 2019 04:47:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 59C2EA0118;
 Wed, 11 Dec 2019 04:47:32 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 11 Dec 2019 04:47:32 -0000
Message-ID: <157603965234.30690.17530933103635022983@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191210180111.3958558-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191210180111.3958558-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Disable_manual_rc6_for_Braswell/Baytrail?=
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

Series: drm/i915/gt: Disable manual rc6 for Braswell/Baytrail
URL   : https://patchwork.freedesktop.org/series/70706/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7534 -> Patchwork_15678
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15678 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15678, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15678/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15678:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live_gt_pm:
    - fi-kbl-7500u:       [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/fi-kbl-7500u/igt@i915_selftest@live_gt_pm.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15678/fi-kbl-7500u/igt@i915_selftest@live_gt_pm.html
    - fi-glk-dsi:         [PASS][3] -> [DMESG-FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/fi-glk-dsi/igt@i915_selftest@live_gt_pm.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15678/fi-glk-dsi/igt@i915_selftest@live_gt_pm.html
    - fi-skl-6700k2:      [PASS][5] -> [DMESG-FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/fi-skl-6700k2/igt@i915_selftest@live_gt_pm.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15678/fi-skl-6700k2/igt@i915_selftest@live_gt_pm.html
    - fi-kbl-soraka:      [PASS][7] -> [DMESG-FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/fi-kbl-soraka/igt@i915_selftest@live_gt_pm.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15678/fi-kbl-soraka/igt@i915_selftest@live_gt_pm.html
    - fi-whl-u:           [PASS][9] -> [DMESG-FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/fi-whl-u/igt@i915_selftest@live_gt_pm.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15678/fi-whl-u/igt@i915_selftest@live_gt_pm.html
    - fi-cfl-guc:         [PASS][11] -> [DMESG-FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/fi-cfl-guc/igt@i915_selftest@live_gt_pm.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15678/fi-cfl-guc/igt@i915_selftest@live_gt_pm.html
    - fi-bxt-dsi:         [PASS][13] -> [DMESG-FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/fi-bxt-dsi/igt@i915_selftest@live_gt_pm.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15678/fi-bxt-dsi/igt@i915_selftest@live_gt_pm.html
    - fi-skl-6600u:       [PASS][15] -> [DMESG-FAIL][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/fi-skl-6600u/igt@i915_selftest@live_gt_pm.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15678/fi-skl-6600u/igt@i915_selftest@live_gt_pm.html
    - fi-cml-u2:          [PASS][17] -> [DMESG-FAIL][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/fi-cml-u2/igt@i915_selftest@live_gt_pm.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15678/fi-cml-u2/igt@i915_selftest@live_gt_pm.html
    - fi-apl-guc:         [PASS][19] -> [DMESG-FAIL][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/fi-apl-guc/igt@i915_selftest@live_gt_pm.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15678/fi-apl-guc/igt@i915_selftest@live_gt_pm.html
    - fi-cfl-8700k:       [PASS][21] -> [DMESG-FAIL][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/fi-cfl-8700k/igt@i915_selftest@live_gt_pm.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15678/fi-cfl-8700k/igt@i915_selftest@live_gt_pm.html
    - fi-kbl-r:           [PASS][23] -> [DMESG-FAIL][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/fi-kbl-r/igt@i915_selftest@live_gt_pm.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15678/fi-kbl-r/igt@i915_selftest@live_gt_pm.html
    - fi-kbl-x1275:       NOTRUN -> [DMESG-FAIL][25]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15678/fi-kbl-x1275/igt@i915_selftest@live_gt_pm.html
    - fi-kbl-guc:         [PASS][26] -> [DMESG-FAIL][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/fi-kbl-guc/igt@i915_selftest@live_gt_pm.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15678/fi-kbl-guc/igt@i915_selftest@live_gt_pm.html
    - fi-skl-guc:         [PASS][28] -> [DMESG-FAIL][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/fi-skl-guc/igt@i915_selftest@live_gt_pm.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15678/fi-skl-guc/igt@i915_selftest@live_gt_pm.html
    - fi-bdw-5557u:       [PASS][30] -> [DMESG-FAIL][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/fi-bdw-5557u/igt@i915_selftest@live_gt_pm.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15678/fi-bdw-5557u/igt@i915_selftest@live_gt_pm.html
    - fi-skl-lmem:        [PASS][32] -> [DMESG-FAIL][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/fi-skl-lmem/igt@i915_selftest@live_gt_pm.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15678/fi-skl-lmem/igt@i915_selftest@live_gt_pm.html
    - fi-skl-6770hq:      [PASS][34] -> [DMESG-FAIL][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/fi-skl-6770hq/igt@i915_selftest@live_gt_pm.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15678/fi-skl-6770hq/igt@i915_selftest@live_gt_pm.html

  
Known issues
------------

  Here are the changes found in Patchwork_15678 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live_requests:
    - fi-hsw-4770:        [PASS][36] -> [INCOMPLETE][37] ([i915#773])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/fi-hsw-4770/igt@i915_selftest@live_requests.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15678/fi-hsw-4770/igt@i915_selftest@live_requests.html

  
#### Possible fixes ####

  * igt@gem_ctx_create@basic-files:
    - {fi-tgl-u}:         [INCOMPLETE][38] ([fdo#111735]) -> [PASS][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/fi-tgl-u/igt@gem_ctx_create@basic-files.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15678/fi-tgl-u/igt@gem_ctx_create@basic-files.html

  * igt@gem_sync@basic-each:
    - fi-tgl-y:           [INCOMPLETE][40] ([i915#707]) -> [PASS][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/fi-tgl-y/igt@gem_sync@basic-each.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15678/fi-tgl-y/igt@gem_sync@basic-each.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][42] ([fdo#111407]) -> [PASS][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15678/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Warnings ####

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-kbl-x1275:       [DMESG-WARN][44] ([fdo#107139] / [i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][45] ([fdo#107139] / [i915#62] / [i915#92])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/fi-kbl-x1275/igt@gem_exec_suspend@basic-s4-devices.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15678/fi-kbl-x1275/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-hsw-peppy:       [INCOMPLETE][46] ([i915#694]) -> [DMESG-FAIL][47] ([i915#722])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/fi-hsw-peppy/igt@i915_selftest@live_gem_contexts.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15678/fi-hsw-peppy/igt@i915_selftest@live_gem_contexts.html

  * igt@kms_busy@basic-flip-pipe-b:
    - fi-kbl-x1275:       [DMESG-WARN][48] ([i915#62] / [i915#92]) -> [DMESG-WARN][49] ([i915#62] / [i915#92] / [i915#95]) +4 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/fi-kbl-x1275/igt@kms_busy@basic-flip-pipe-b.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15678/fi-kbl-x1275/igt@kms_busy@basic-flip-pipe-b.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - fi-kbl-x1275:       [DMESG-WARN][50] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][51] ([i915#62] / [i915#92]) +4 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/fi-kbl-x1275/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15678/fi-kbl-x1275/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#107139]: https://bugs.freedesktop.org/show_bug.cgi?id=107139
  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#722]: https://gitlab.freedesktop.org/drm/intel/issues/722
  [i915#773]: https://gitlab.freedesktop.org/drm/intel/issues/773
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (53 -> 47)
------------------------------

  Additional (1): fi-hsw-4770r 
  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7534 -> Patchwork_15678

  CI-20190529: 20190529
  CI_DRM_7534: 66a6222c16abb82d6a4480b0a7ff8e375cc6a3a6 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5342: 3e43fb3fa97ce25819444d63848439acf6e397b5 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15678: 58917a3421cc18a151887fb985c595f751849c8c @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

58917a3421cc drm/i915/gt: Disable manual rc6 for Braswell/Baytrail

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15678/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
