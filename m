Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E6DF154893
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Feb 2020 16:54:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7AFEF6FA95;
	Thu,  6 Feb 2020 15:54:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B77E26FA92;
 Thu,  6 Feb 2020 15:54:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AEC50A0078;
 Thu,  6 Feb 2020 15:54:49 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi@etezian.org>
Date: Thu, 06 Feb 2020 15:54:49 -0000
Message-ID: <158100448968.15032.5772412867090202742@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200206140402.11790-1-andi@etezian.org>
In-Reply-To: <20200206140402.11790-1-andi@etezian.org>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgQWRk?=
 =?utf-8?q?_basic_selftests_for_rc6?=
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

Series: Add basic selftests for rc6
URL   : https://patchwork.freedesktop.org/series/73095/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7876 -> Patchwork_16459
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16459 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16459, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16459/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16459:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live_gt_pm:
    - fi-cfl-8700k:       [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/fi-cfl-8700k/igt@i915_selftest@live_gt_pm.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16459/fi-cfl-8700k/igt@i915_selftest@live_gt_pm.html
    - fi-icl-u2:          [PASS][3] -> [DMESG-FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/fi-icl-u2/igt@i915_selftest@live_gt_pm.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16459/fi-icl-u2/igt@i915_selftest@live_gt_pm.html
    - fi-cfl-8109u:       [PASS][5] -> [DMESG-FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/fi-cfl-8109u/igt@i915_selftest@live_gt_pm.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16459/fi-cfl-8109u/igt@i915_selftest@live_gt_pm.html
    - fi-bsw-nick:        [PASS][7] -> [DMESG-FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/fi-bsw-nick/igt@i915_selftest@live_gt_pm.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16459/fi-bsw-nick/igt@i915_selftest@live_gt_pm.html
    - fi-kbl-x1275:       [PASS][9] -> [DMESG-FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/fi-kbl-x1275/igt@i915_selftest@live_gt_pm.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16459/fi-kbl-x1275/igt@i915_selftest@live_gt_pm.html
    - fi-kbl-guc:         [PASS][11] -> [DMESG-FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/fi-kbl-guc/igt@i915_selftest@live_gt_pm.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16459/fi-kbl-guc/igt@i915_selftest@live_gt_pm.html
    - fi-skl-guc:         [PASS][13] -> [DMESG-FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/fi-skl-guc/igt@i915_selftest@live_gt_pm.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16459/fi-skl-guc/igt@i915_selftest@live_gt_pm.html
    - fi-bdw-5557u:       [PASS][15] -> [DMESG-FAIL][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/fi-bdw-5557u/igt@i915_selftest@live_gt_pm.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16459/fi-bdw-5557u/igt@i915_selftest@live_gt_pm.html
    - fi-snb-2600:        NOTRUN -> [DMESG-FAIL][17]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16459/fi-snb-2600/igt@i915_selftest@live_gt_pm.html
    - fi-byt-n2820:       [PASS][18] -> [DMESG-FAIL][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/fi-byt-n2820/igt@i915_selftest@live_gt_pm.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16459/fi-byt-n2820/igt@i915_selftest@live_gt_pm.html
    - fi-skl-6700k2:      NOTRUN -> [DMESG-FAIL][20]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16459/fi-skl-6700k2/igt@i915_selftest@live_gt_pm.html
    - fi-skl-lmem:        NOTRUN -> [DMESG-FAIL][21]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16459/fi-skl-lmem/igt@i915_selftest@live_gt_pm.html
    - fi-whl-u:           [PASS][22] -> [DMESG-FAIL][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/fi-whl-u/igt@i915_selftest@live_gt_pm.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16459/fi-whl-u/igt@i915_selftest@live_gt_pm.html
    - fi-skl-6770hq:      [PASS][24] -> [DMESG-FAIL][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/fi-skl-6770hq/igt@i915_selftest@live_gt_pm.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16459/fi-skl-6770hq/igt@i915_selftest@live_gt_pm.html
    - fi-cfl-guc:         [PASS][26] -> [DMESG-FAIL][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/fi-cfl-guc/igt@i915_selftest@live_gt_pm.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16459/fi-cfl-guc/igt@i915_selftest@live_gt_pm.html
    - fi-bxt-dsi:         [PASS][28] -> [DMESG-FAIL][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/fi-bxt-dsi/igt@i915_selftest@live_gt_pm.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16459/fi-bxt-dsi/igt@i915_selftest@live_gt_pm.html
    - fi-skl-6600u:       NOTRUN -> [DMESG-FAIL][30]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16459/fi-skl-6600u/igt@i915_selftest@live_gt_pm.html
    - fi-cml-u2:          [PASS][31] -> [DMESG-FAIL][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/fi-cml-u2/igt@i915_selftest@live_gt_pm.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16459/fi-cml-u2/igt@i915_selftest@live_gt_pm.html
    - fi-apl-guc:         [PASS][33] -> [DMESG-FAIL][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/fi-apl-guc/igt@i915_selftest@live_gt_pm.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16459/fi-apl-guc/igt@i915_selftest@live_gt_pm.html
    - fi-kbl-8809g:       [PASS][35] -> [DMESG-FAIL][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/fi-kbl-8809g/igt@i915_selftest@live_gt_pm.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16459/fi-kbl-8809g/igt@i915_selftest@live_gt_pm.html
    - fi-snb-2520m:       NOTRUN -> [DMESG-FAIL][37]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16459/fi-snb-2520m/igt@i915_selftest@live_gt_pm.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live_gt_pm:
    - {fi-ehl-1}:         [DMESG-FAIL][38] ([i915#801]) -> [DMESG-FAIL][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/fi-ehl-1/igt@i915_selftest@live_gt_pm.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16459/fi-ehl-1/igt@i915_selftest@live_gt_pm.html

  
Known issues
------------

  Here are the changes found in Patchwork_16459 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-j1900:       [PASS][40] -> [INCOMPLETE][41] ([i915#45])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/fi-byt-j1900/igt@gem_close_race@basic-threads.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16459/fi-byt-j1900/igt@gem_close_race@basic-threads.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-byt-n2820:       [PASS][42] -> [DMESG-FAIL][43] ([i915#1052])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16459/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html

  
#### Possible fixes ####

  * igt@i915_selftest@live_blt:
    - fi-bsw-nick:        [INCOMPLETE][44] ([i915#392]) -> [PASS][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/fi-bsw-nick/igt@i915_selftest@live_blt.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16459/fi-bsw-nick/igt@i915_selftest@live_blt.html

  
#### Warnings ####

  * igt@gem_exec_parallel@contexts:
    - fi-byt-n2820:       [FAIL][46] ([i915#694]) -> [TIMEOUT][47] ([fdo#112271])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/fi-byt-n2820/igt@gem_exec_parallel@contexts.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16459/fi-byt-n2820/igt@gem_exec_parallel@contexts.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1052]: https://gitlab.freedesktop.org/drm/intel/issues/1052
  [i915#392]: https://gitlab.freedesktop.org/drm/intel/issues/392
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#801]: https://gitlab.freedesktop.org/drm/intel/issues/801


Participating hosts (41 -> 40)
------------------------------

  Additional (8): fi-snb-2520m fi-gdg-551 fi-ivb-3770 fi-skl-6700k2 fi-skl-lmem fi-blb-e6850 fi-skl-6600u fi-snb-2600 
  Missing    (9): fi-bsw-n3050 fi-hsw-peppy fi-glk-dsi fi-byt-squawks fi-kbl-7500u fi-bsw-kefka fi-byt-clapper fi-bdw-samus fi-kbl-r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7876 -> Patchwork_16459

  CI-20190529: 20190529
  CI_DRM_7876: 6ac39d9964f464065511d439afcf4da065ff96db @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5421: 40946e61f9c47e23fdf1fff8090fadee8a4d7d3b @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16459: 195fefa771276e3c80b3281a2a584dba77439042 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

195fefa77127 drm/i915/selftests: add basic on/off selftests for rc6
d1e55e82a439 drm/i915/selftests: add threshold selftests for rc6
d608976339e3 drm/i915/selftests: add busy selftests for rc6

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16459/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
