Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D3F69128DF1
	for <lists+intel-gfx@lfdr.de>; Sun, 22 Dec 2019 13:45:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE1B06E525;
	Sun, 22 Dec 2019 12:45:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1CABB6E0C2;
 Sun, 22 Dec 2019 12:45:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 091B2A00E6;
 Sun, 22 Dec 2019 12:45:53 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sun, 22 Dec 2019 12:45:53 -0000
Message-ID: <157701875301.8699.2258551125447474329@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191222120752.1368352-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191222120752.1368352-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Pull_GT_initialisation_under_intel=5Fgt=5Finit=28?=
 =?utf-8?q?=29?=
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

Series: drm/i915/gt: Pull GT initialisation under intel_gt_init()
URL   : https://patchwork.freedesktop.org/series/71262/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7621 -> Patchwork_15879
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15879 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15879, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15879/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15879:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live_execlists:
    - fi-kbl-soraka:      [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7621/fi-kbl-soraka/igt@i915_selftest@live_execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15879/fi-kbl-soraka/igt@i915_selftest@live_execlists.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_busy@busy-all:
    - {fi-tgl-guc}:       [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7621/fi-tgl-guc/igt@gem_busy@busy-all.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15879/fi-tgl-guc/igt@gem_busy@busy-all.html

  
Known issues
------------

  Here are the changes found in Patchwork_15879 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-cfl-8700k:       [PASS][5] -> [INCOMPLETE][6] ([i915#505])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7621/fi-cfl-8700k/igt@i915_module_load@reload-with-fault-injection.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15879/fi-cfl-8700k/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [PASS][7] -> [DMESG-FAIL][8] ([i915#563])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7621/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15879/fi-hsw-4770r/igt@i915_selftest@live_blt.html
    - fi-hsw-4770:        [PASS][9] -> [DMESG-FAIL][10] ([i915#725])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7621/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15879/fi-hsw-4770/igt@i915_selftest@live_blt.html

  
#### Possible fixes ####

  * igt@gem_exec_parallel@basic:
    - {fi-tgl-u}:         [INCOMPLETE][11] ([i915#476]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7621/fi-tgl-u/igt@gem_exec_parallel@basic.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15879/fi-tgl-u/igt@gem_exec_parallel@basic.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-peppy:       [DMESG-FAIL][13] ([i915#553]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7621/fi-hsw-peppy/igt@i915_selftest@live_blt.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15879/fi-hsw-peppy/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-byt-j1900:       [INCOMPLETE][15] ([i915#45]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7621/fi-byt-j1900/igt@i915_selftest@live_gem_contexts.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15879/fi-byt-j1900/igt@i915_selftest@live_gem_contexts.html

  
#### Warnings ####

  * igt@i915_selftest@live_blt:
    - fi-ivb-3770:        [DMESG-FAIL][17] ([i915#563]) -> [DMESG-FAIL][18] ([i915#725])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7621/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15879/fi-ivb-3770/igt@i915_selftest@live_blt.html

  * igt@kms_flip@basic-flip-vs-dpms:
    - fi-kbl-x1275:       [DMESG-WARN][19] ([i915#62] / [i915#92]) -> [DMESG-WARN][20] ([i915#62] / [i915#92] / [i915#95]) +2 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7621/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-dpms.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15879/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-dpms.html

  * igt@kms_flip@basic-flip-vs-modeset:
    - fi-kbl-x1275:       [DMESG-WARN][21] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][22] ([i915#62] / [i915#92]) +5 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7621/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15879/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#476]: https://gitlab.freedesktop.org/drm/intel/issues/476
  [i915#505]: https://gitlab.freedesktop.org/drm/intel/issues/505
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#563]: https://gitlab.freedesktop.org/drm/intel/issues/563
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (48 -> 40)
------------------------------

  Additional (1): fi-snb-2520m 
  Missing    (9): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ilk-650 fi-kbl-7500u fi-ctg-p8600 fi-byt-clapper fi-skl-6600u 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7621 -> Patchwork_15879

  CI-20190529: 20190529
  CI_DRM_7621: 7c8a691ee8ec302f3b19a690f86db7664ec5b5d0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5352: 0586d205f651674e575351c2d5a7d0760716c9f1 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15879: 8f8f92b9a5d583e88d0834351c880c504b996342 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

8f8f92b9a5d5 drm/i915/gt: Pull GT initialisation under intel_gt_init()

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15879/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
