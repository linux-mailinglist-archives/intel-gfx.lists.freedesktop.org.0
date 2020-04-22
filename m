Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AC1C41B47A7
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Apr 2020 16:47:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13E436EA0C;
	Wed, 22 Apr 2020 14:47:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 13B166EA0B;
 Wed, 22 Apr 2020 14:47:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0CE87A432F;
 Wed, 22 Apr 2020 14:47:24 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 22 Apr 2020 14:47:24 -0000
Message-ID: <158756684404.5177.10436559521804581580@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200422133916.26945-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200422133916.26945-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/selftests=3A_Verify_context_isolation?=
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

Series: drm/i915/selftests: Verify context isolation
URL   : https://patchwork.freedesktop.org/series/76339/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8348 -> Patchwork_17422
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17422 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17422, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17422/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17422:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gem_contexts:
    - fi-tgl-y:           [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/fi-tgl-y/igt@i915_selftest@live@gem_contexts.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17422/fi-tgl-y/igt@i915_selftest@live@gem_contexts.html
    - fi-icl-u2:          [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/fi-icl-u2/igt@i915_selftest@live@gem_contexts.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17422/fi-icl-u2/igt@i915_selftest@live@gem_contexts.html
    - fi-icl-y:           [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/fi-icl-y/igt@i915_selftest@live@gem_contexts.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17422/fi-icl-y/igt@i915_selftest@live@gem_contexts.html
    - fi-icl-guc:         [PASS][7] -> [INCOMPLETE][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/fi-icl-guc/igt@i915_selftest@live@gem_contexts.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17422/fi-icl-guc/igt@i915_selftest@live@gem_contexts.html
    - fi-bdw-5557u:       [PASS][9] -> [INCOMPLETE][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/fi-bdw-5557u/igt@i915_selftest@live@gem_contexts.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17422/fi-bdw-5557u/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_selftest@live@late_gt_pm:
    - fi-bwr-2160:        [PASS][11] -> [DMESG-WARN][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/fi-bwr-2160/igt@i915_selftest@live@late_gt_pm.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17422/fi-bwr-2160/igt@i915_selftest@live@late_gt_pm.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@gem_contexts:
    - {fi-tgl-dsi}:       [PASS][13] -> [INCOMPLETE][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/fi-tgl-dsi/igt@i915_selftest@live@gem_contexts.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17422/fi-tgl-dsi/igt@i915_selftest@live@gem_contexts.html
    - {fi-tgl-u}:         [PASS][15] -> [INCOMPLETE][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/fi-tgl-u/igt@i915_selftest@live@gem_contexts.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17422/fi-tgl-u/igt@i915_selftest@live@gem_contexts.html
    - {fi-ehl-1}:         [PASS][17] -> [INCOMPLETE][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/fi-ehl-1/igt@i915_selftest@live@gem_contexts.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17422/fi-ehl-1/igt@i915_selftest@live@gem_contexts.html

  
Known issues
------------

  Here are the changes found in Patchwork_17422 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gem_contexts:
    - fi-skl-6600u:       [PASS][19] -> [INCOMPLETE][20] ([i915#1591])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/fi-skl-6600u/igt@i915_selftest@live@gem_contexts.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17422/fi-skl-6600u/igt@i915_selftest@live@gem_contexts.html
    - fi-bsw-kefka:       [PASS][21] -> [INCOMPLETE][22] ([i915#392])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/fi-bsw-kefka/igt@i915_selftest@live@gem_contexts.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17422/fi-bsw-kefka/igt@i915_selftest@live@gem_contexts.html
    - fi-apl-guc:         [PASS][23] -> [INCOMPLETE][24] ([i915#1591])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/fi-apl-guc/igt@i915_selftest@live@gem_contexts.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17422/fi-apl-guc/igt@i915_selftest@live@gem_contexts.html
    - fi-glk-dsi:         [PASS][25] -> [INCOMPLETE][26] ([i915#1591] / [i915#58] / [k.org#198133])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/fi-glk-dsi/igt@i915_selftest@live@gem_contexts.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17422/fi-glk-dsi/igt@i915_selftest@live@gem_contexts.html
    - fi-skl-6700k2:      [PASS][27] -> [INCOMPLETE][28] ([i915#1591])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/fi-skl-6700k2/igt@i915_selftest@live@gem_contexts.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17422/fi-skl-6700k2/igt@i915_selftest@live@gem_contexts.html
    - fi-cfl-8700k:       [PASS][29] -> [INCOMPLETE][30] ([i915#1591])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/fi-cfl-8700k/igt@i915_selftest@live@gem_contexts.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17422/fi-cfl-8700k/igt@i915_selftest@live@gem_contexts.html
    - fi-bsw-n3050:       [PASS][31] -> [INCOMPLETE][32] ([i915#392])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/fi-bsw-n3050/igt@i915_selftest@live@gem_contexts.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17422/fi-bsw-n3050/igt@i915_selftest@live@gem_contexts.html
    - fi-whl-u:           [PASS][33] -> [INCOMPLETE][34] ([i915#1591])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/fi-whl-u/igt@i915_selftest@live@gem_contexts.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17422/fi-whl-u/igt@i915_selftest@live@gem_contexts.html
    - fi-cml-s:           [PASS][35] -> [INCOMPLETE][36] ([i915#1591])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/fi-cml-s/igt@i915_selftest@live@gem_contexts.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17422/fi-cml-s/igt@i915_selftest@live@gem_contexts.html
    - fi-skl-guc:         [PASS][37] -> [INCOMPLETE][38] ([i915#1591])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/fi-skl-guc/igt@i915_selftest@live@gem_contexts.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17422/fi-skl-guc/igt@i915_selftest@live@gem_contexts.html
    - fi-cfl-guc:         [PASS][39] -> [INCOMPLETE][40] ([fdo#106070] / [i915#1591])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/fi-cfl-guc/igt@i915_selftest@live@gem_contexts.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17422/fi-cfl-guc/igt@i915_selftest@live@gem_contexts.html
    - fi-bxt-dsi:         [PASS][41] -> [INCOMPLETE][42] ([i915#1591])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/fi-bxt-dsi/igt@i915_selftest@live@gem_contexts.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17422/fi-bxt-dsi/igt@i915_selftest@live@gem_contexts.html
    - fi-kbl-8809g:       [PASS][43] -> [INCOMPLETE][44] ([i915#1591] / [i915#794])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/fi-kbl-8809g/igt@i915_selftest@live@gem_contexts.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17422/fi-kbl-8809g/igt@i915_selftest@live@gem_contexts.html
    - fi-kbl-r:           [PASS][45] -> [INCOMPLETE][46] ([i915#1591] / [i915#794])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/fi-kbl-r/igt@i915_selftest@live@gem_contexts.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17422/fi-kbl-r/igt@i915_selftest@live@gem_contexts.html
    - fi-cfl-8109u:       [PASS][47] -> [INCOMPLETE][48] ([i915#1591])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/fi-cfl-8109u/igt@i915_selftest@live@gem_contexts.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17422/fi-cfl-8109u/igt@i915_selftest@live@gem_contexts.html
    - fi-skl-lmem:        [PASS][49] -> [INCOMPLETE][50] ([i915#1591])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/fi-skl-lmem/igt@i915_selftest@live@gem_contexts.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17422/fi-skl-lmem/igt@i915_selftest@live@gem_contexts.html
    - fi-kbl-soraka:      [PASS][51] -> [INCOMPLETE][52] ([i915#1591] / [i915#794])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/fi-kbl-soraka/igt@i915_selftest@live@gem_contexts.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17422/fi-kbl-soraka/igt@i915_selftest@live@gem_contexts.html
    - fi-kbl-guc:         [PASS][53] -> [INCOMPLETE][54] ([i915#1591] / [i915#794])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/fi-kbl-guc/igt@i915_selftest@live@gem_contexts.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17422/fi-kbl-guc/igt@i915_selftest@live@gem_contexts.html
    - fi-bsw-nick:        [PASS][55] -> [INCOMPLETE][56] ([i915#392])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/fi-bsw-nick/igt@i915_selftest@live@gem_contexts.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17422/fi-bsw-nick/igt@i915_selftest@live@gem_contexts.html
    - fi-kbl-x1275:       [PASS][57] -> [INCOMPLETE][58] ([i915#1591] / [i915#794])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/fi-kbl-x1275/igt@i915_selftest@live@gem_contexts.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17422/fi-kbl-x1275/igt@i915_selftest@live@gem_contexts.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@hugepages:
    - fi-snb-2600:        [FAIL][59] ([i915#1763]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/fi-snb-2600/igt@i915_selftest@live@hugepages.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17422/fi-snb-2600/igt@i915_selftest@live@hugepages.html

  
#### Warnings ####

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-x1275:       [SKIP][61] ([fdo#109271]) -> [FAIL][62] ([i915#62])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17422/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#106070]: https://bugs.freedesktop.org/show_bug.cgi?id=106070
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1591]: https://gitlab.freedesktop.org/drm/intel/issues/1591
  [i915#1763]: https://gitlab.freedesktop.org/drm/intel/issues/1763
  [i915#392]: https://gitlab.freedesktop.org/drm/intel/issues/392
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#794]: https://gitlab.freedesktop.org/drm/intel/issues/794
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (48 -> 41)
------------------------------

  Missing    (7): fi-cml-u2 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-kbl-7500u fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8348 -> Patchwork_17422

  CI-20190529: 20190529
  CI_DRM_8348: 71482e0c1b4ce12ad43e790a0c03d671caf1eb54 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5604: 18cc19ece602ba552a8386222b49e7e82820f9aa @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17422: e6764a40a77ba645efb8d8540c42b984d59b1e61 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

e6764a40a77b drm/i915/selftests: Verify context isolation

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17422/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
