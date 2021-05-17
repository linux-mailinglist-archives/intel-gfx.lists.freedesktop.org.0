Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 303AE382C9F
	for <lists+intel-gfx@lfdr.de>; Mon, 17 May 2021 14:56:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C4636E954;
	Mon, 17 May 2021 12:56:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 91C5B6E951;
 Mon, 17 May 2021 12:56:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8AA7DA47E1;
 Mon, 17 May 2021 12:56:44 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Mon, 17 May 2021 12:56:44 -0000
Message-ID: <162125620453.27268.10342240397160515111@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210517084640.18862-1-matthew.auld@intel.com>
In-Reply-To: <20210517084640.18862-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_Pin_the_L-shape_quirked_object_as_unshrinkable_=28?=
 =?utf-8?q?rev3=29?=
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
Content-Type: multipart/mixed; boundary="===============1343921619=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1343921619==
Content-Type: multipart/alternative;
 boundary="===============6829890382036755460=="

--===============6829890382036755460==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gem: Pin the L-shape quirked object as unshrinkable (rev3)
URL   : https://patchwork.freedesktop.org/series/90065/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10090 -> Patchwork_20136
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/index.html

Known issues
------------

  Here are the changes found in Patchwork_20136 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_fence@basic-await@vcs0:
    - fi-bsw-n3050:       [PASS][1] -> [FAIL][2] ([i915#3457]) +2 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-bsw-n3050/igt@gem_exec_fence@basic-await@vcs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/fi-bsw-n3050/igt@gem_exec_fence@basic-await@vcs0.html
    - fi-bsw-kefka:       [PASS][3] -> [FAIL][4] ([i915#3457])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-bsw-kefka/igt@gem_exec_fence@basic-await@vcs0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/fi-bsw-kefka/igt@gem_exec_fence@basic-await@vcs0.html

  * igt@gem_exec_fence@nb-await@vecs0:
    - fi-glk-dsi:         [PASS][5] -> [FAIL][6] ([i915#3457]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-glk-dsi/igt@gem_exec_fence@nb-await@vecs0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/fi-glk-dsi/igt@gem_exec_fence@nb-await@vecs0.html

  * igt@gem_wait@busy@all:
    - fi-bsw-kefka:       [PASS][7] -> [FAIL][8] ([i915#3177] / [i915#3457])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-bsw-kefka/igt@gem_wait@busy@all.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/fi-bsw-kefka/igt@gem_wait@busy@all.html
    - fi-elk-e7500:       [PASS][9] -> [FAIL][10] ([i915#3457])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-elk-e7500/igt@gem_wait@busy@all.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/fi-elk-e7500/igt@gem_wait@busy@all.html

  * igt@gem_wait@wait@all:
    - fi-bsw-nick:        [PASS][11] -> [FAIL][12] ([i915#3457]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-bsw-nick/igt@gem_wait@wait@all.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/fi-bsw-nick/igt@gem_wait@wait@all.html

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2600:        [PASS][13] -> [INCOMPLETE][14] ([i915#2782])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  * igt@kms_busy@basic@flip:
    - fi-ilk-650:         [PASS][15] -> [INCOMPLETE][16] ([i915#3457])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-ilk-650/igt@kms_busy@basic@flip.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/fi-ilk-650/igt@kms_busy@basic@flip.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-kbl-7500u:       NOTRUN -> [FAIL][17] ([i915#1161])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/fi-kbl-7500u/igt@kms_chamelium@hdmi-crc-fast.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - fi-bwr-2160:        [PASS][18] -> [FAIL][19] ([i915#53])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-bwr-2160/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/fi-bwr-2160/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
    - fi-elk-e7500:       [PASS][20] -> [FAIL][21] ([i915#53])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-elk-e7500/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/fi-elk-e7500/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@runner@aborted:
    - fi-ilk-650:         NOTRUN -> [FAIL][22] ([i915#3475])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/fi-ilk-650/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_exec_fence@basic-await@vecs0:
    - fi-bsw-kefka:       [FAIL][23] ([i915#3457]) -> [PASS][24] +2 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-bsw-kefka/igt@gem_exec_fence@basic-await@vecs0.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/fi-bsw-kefka/igt@gem_exec_fence@basic-await@vecs0.html
    - fi-bsw-nick:        [FAIL][25] ([i915#3457]) -> [PASS][26] +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-bsw-nick/igt@gem_exec_fence@basic-await@vecs0.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/fi-bsw-nick/igt@gem_exec_fence@basic-await@vecs0.html

  * igt@gem_exec_fence@nb-await@bcs0:
    - fi-bsw-n3050:       [FAIL][27] ([i915#3457]) -> [PASS][28] +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-bsw-n3050/igt@gem_exec_fence@nb-await@bcs0.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/fi-bsw-n3050/igt@gem_exec_fence@nb-await@bcs0.html

  * igt@gem_exec_fence@nb-await@rcs0:
    - fi-elk-e7500:       [FAIL][29] ([i915#3457]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-elk-e7500/igt@gem_exec_fence@nb-await@rcs0.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/fi-elk-e7500/igt@gem_exec_fence@nb-await@rcs0.html

  * igt@gem_wait@busy@all:
    - fi-bsw-nick:        [FAIL][31] ([i915#3177] / [i915#3457]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-bsw-nick/igt@gem_wait@busy@all.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/fi-bsw-nick/igt@gem_wait@busy@all.html

  * igt@gem_wait@wait@all:
    - fi-bwr-2160:        [FAIL][33] ([i915#3457]) -> [PASS][34] +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-bwr-2160/igt@gem_wait@wait@all.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/fi-bwr-2160/igt@gem_wait@wait@all.html
    - fi-pnv-d510:        [FAIL][35] ([i915#3457]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-pnv-d510/igt@gem_wait@wait@all.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/fi-pnv-d510/igt@gem_wait@wait@all.html

  * igt@kms_addfb_basic@addfb25-bad-modifier:
    - fi-kbl-7500u:       [{ABORT}][37] ([i915#1814]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-kbl-7500u/igt@kms_addfb_basic@addfb25-bad-modifier.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/fi-kbl-7500u/igt@kms_addfb_basic@addfb25-bad-modifier.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-a:
    - fi-bwr-2160:        [FAIL][39] ([i915#53]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-bwr-2160/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-a.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/fi-bwr-2160/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-a.html

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-a:
    - fi-pnv-d510:        [FAIL][41] ([i915#53]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-pnv-d510/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/fi-pnv-d510/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-a:
    - fi-elk-e7500:       [FAIL][43] ([i915#53]) -> [PASS][44] +2 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-elk-e7500/igt@kms_pipe_crc_basic@read-crc-pipe-a.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/fi-elk-e7500/igt@kms_pipe_crc_basic@read-crc-pipe-a.html

  
#### Warnings ####

  * igt@gem_exec_gttfill@basic:
    - fi-pnv-d510:        [FAIL][45] ([i915#3472]) -> [FAIL][46] ([i915#3457] / [i915#3472])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-pnv-d510/igt@gem_exec_gttfill@basic.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/fi-pnv-d510/igt@gem_exec_gttfill@basic.html

  * igt@i915_module_load@reload:
    - fi-bsw-kefka:       [DMESG-WARN][47] ([i915#1982] / [i915#3457]) -> [DMESG-FAIL][48] ([i915#1982] / [i915#3457])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-bsw-kefka/igt@i915_module_load@reload.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/fi-bsw-kefka/igt@i915_module_load@reload.html
    - fi-glk-dsi:         [DMESG-FAIL][49] ([i915#3457]) -> [DMESG-WARN][50] ([i915#3457])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-glk-dsi/igt@i915_module_load@reload.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/fi-glk-dsi/igt@i915_module_load@reload.html

  * igt@i915_selftest@live@execlists:
    - fi-bsw-nick:        [DMESG-FAIL][51] -> [INCOMPLETE][52] ([i915#2782] / [i915#2940])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-bsw-nick/igt@i915_selftest@live@execlists.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/fi-bsw-nick/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@mman:
    - fi-bwr-2160:        [DMESG-FAIL][53] ([i915#3457]) -> [DMESG-WARN][54] ([i915#3457])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-bwr-2160/igt@i915_selftest@live@mman.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/fi-bwr-2160/igt@i915_selftest@live@mman.html
    - fi-pnv-d510:        [DMESG-FAIL][55] ([i915#3457]) -> [DMESG-WARN][56] ([i915#3457])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-pnv-d510/igt@i915_selftest@live@mman.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/fi-pnv-d510/igt@i915_selftest@live@mman.html

  * igt@runner@aborted:
    - fi-cfl-8700k:       [FAIL][57] ([i915#2426] / [i915#3363]) -> [FAIL][58] ([i915#3363])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-cfl-8700k/igt@runner@aborted.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/fi-cfl-8700k/igt@runner@aborted.html
    - fi-glk-dsi:         [FAIL][59] ([i915#3363] / [k.org#202321]) -> [FAIL][60] ([i915#2426] / [i915#3363] / [k.org#202321])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-glk-dsi/igt@runner@aborted.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/fi-glk-dsi/igt@runner@aborted.html
    - fi-kbl-r:           [FAIL][61] ([i915#1436] / [i915#3363]) -> [FAIL][62] ([i915#1436] / [i915#2426] / [i915#3363])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-kbl-r/igt@runner@aborted.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/fi-kbl-r/igt@runner@aborted.html
    - fi-kbl-7500u:       [FAIL][63] ([i915#3363]) -> [FAIL][64] ([i915#1814] / [i915#3363])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-kbl-7500u/igt@runner@aborted.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/fi-kbl-7500u/igt@runner@aborted.html
    - fi-cfl-guc:         [FAIL][65] ([i915#2426] / [i915#3363]) -> [FAIL][66] ([i915#3363])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-cfl-guc/igt@runner@aborted.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/fi-cfl-guc/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1161]: https://gitlab.freedesktop.org/drm/intel/issues/1161
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2782]: https://gitlab.freedesktop.org/drm/intel/issues/2782
  [i915#2940]: https://gitlab.freedesktop.org/drm/intel/issues/2940
  [i915#3177]: https://gitlab.freedesktop.org/drm/intel/issues/3177
  [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
  [i915#3457]: https://gitlab.freedesktop.org/drm/intel/issues/3457
  [i915#3472]: https://gitlab.freedesktop.org/drm/intel/issues/3472
  [i915#3475]: https://gitlab.freedesktop.org/drm/intel/issues/3475
  [i915#53]: https://gitlab.freedesktop.org/drm/intel/issues/53
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321


Participating hosts (43 -> 37)
------------------------------

  Missing    (6): fi-kbl-soraka fi-rkl-11500t fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10090 -> Patchwork_20136

  CI-20190529: 20190529
  CI_DRM_10090: e28f8dd2a3f0981ebaad3056674553da7718da81 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6084: 5c5734d8ee1afac871b69c4554ff14e9b56100e4 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_20136: 1ff01b9a442e4c4e02da993a2c979b860f87a0e6 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

1ff01b9a442e drm/i915/gem: Pin the L-shape quirked object as unshrinkable

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/index.html

--===============6829890382036755460==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <title>Project List - Patchwork</title>
  <style id="css-table-select" type="text/css">
   td { padding: 2pt; }
  </style>
</head>
<body>


<b>Patch Details</b>
<table>
<tr><td><b>Series:</b></td><td>drm/i915/gem: Pin the L-shape quirked object as unshrinkable (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/90065/">https://patchwork.freedesktop.org/series/90065/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10090 -&gt; Patchwork_20136</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20136 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_fence@basic-await@vcs0:</p>
<ul>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-bsw-n3050/igt@gem_exec_fence@basic-await@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/fi-bsw-n3050/igt@gem_exec_fence@basic-await@vcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) +2 similar issues</p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-bsw-kefka/igt@gem_exec_fence@basic-await@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/fi-bsw-kefka/igt@gem_exec_fence@basic-await@vcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@nb-await@vecs0:</p>
<ul>
<li>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-glk-dsi/igt@gem_exec_fence@nb-await@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/fi-glk-dsi/igt@gem_exec_fence@nb-await@vecs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_wait@busy@all:</p>
<ul>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-bsw-kefka/igt@gem_wait@busy@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/fi-bsw-kefka/igt@gem_wait@busy@all.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3177">i915#3177</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>)</p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-elk-e7500/igt@gem_wait@busy@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/fi-elk-e7500/igt@gem_wait@busy@all.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_wait@wait@all:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-bsw-nick/igt@gem_wait@wait@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/fi-bsw-nick/igt@gem_wait@wait@all.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-ilk-650/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/fi-ilk-650/igt@kms_busy@basic@flip.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-fast:</p>
<ul>
<li>fi-kbl-7500u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/fi-kbl-7500u/igt@kms_chamelium@hdmi-crc-fast.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1161">i915#1161</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:</p>
<ul>
<li>
<p>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-bwr-2160/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/fi-bwr-2160/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/53">i915#53</a>)</p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-elk-e7500/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/fi-elk-e7500/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/53">i915#53</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-ilk-650:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/fi-ilk-650/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3475">i915#3475</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_fence@basic-await@vecs0:</p>
<ul>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-bsw-kefka/igt@gem_exec_fence@basic-await@vecs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/fi-bsw-kefka/igt@gem_exec_fence@basic-await@vecs0.html">PASS</a> +2 similar issues</p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-bsw-nick/igt@gem_exec_fence@basic-await@vecs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/fi-bsw-nick/igt@gem_exec_fence@basic-await@vecs0.html">PASS</a> +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@nb-await@bcs0:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-bsw-n3050/igt@gem_exec_fence@nb-await@bcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/fi-bsw-n3050/igt@gem_exec_fence@nb-await@bcs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@nb-await@rcs0:</p>
<ul>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-elk-e7500/igt@gem_exec_fence@nb-await@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/fi-elk-e7500/igt@gem_exec_fence@nb-await@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_wait@busy@all:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-bsw-nick/igt@gem_wait@busy@all.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3177">i915#3177</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/fi-bsw-nick/igt@gem_wait@busy@all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_wait@wait@all:</p>
<ul>
<li>
<p>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-bwr-2160/igt@gem_wait@wait@all.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/fi-bwr-2160/igt@gem_wait@wait@all.html">PASS</a> +1 similar issue</p>
</li>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-pnv-d510/igt@gem_wait@wait@all.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/fi-pnv-d510/igt@gem_wait@wait@all.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-bad-modifier:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-kbl-7500u/igt@kms_addfb_basic@addfb25-bad-modifier.html">{ABORT}</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/fi-kbl-7500u/igt@kms_addfb_basic@addfb25-bad-modifier.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-a:</p>
<ul>
<li>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-bwr-2160/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-a.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/53">i915#53</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/fi-bwr-2160/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-a.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc-pipe-a:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-pnv-d510/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/53">i915#53</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/fi-pnv-d510/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-a:</p>
<ul>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-elk-e7500/igt@kms_pipe_crc_basic@read-crc-pipe-a.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/53">i915#53</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/fi-elk-e7500/igt@kms_pipe_crc_basic@read-crc-pipe-a.html">PASS</a> +2 similar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-pnv-d510/igt@gem_exec_gttfill@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3472">i915#3472</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/fi-pnv-d510/igt@gem_exec_gttfill@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3472">i915#3472</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-bsw-kefka/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/fi-bsw-kefka/igt@i915_module_load@reload.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>)</p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-glk-dsi/igt@i915_module_load@reload.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/fi-glk-dsi/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-bsw-nick/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/fi-bsw-nick/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@mman:</p>
<ul>
<li>
<p>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-bwr-2160/igt@i915_selftest@live@mman.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/fi-bwr-2160/igt@i915_selftest@live@mman.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>)</p>
</li>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-pnv-d510/igt@i915_selftest@live@mman.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/fi-pnv-d510/igt@i915_selftest@live@mman.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-cfl-8700k/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/fi-cfl-8700k/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-glk-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202321">k.org#202321</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/fi-glk-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202321">k.org#202321</a>)</p>
</li>
<li>
<p>fi-kbl-r:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-kbl-r/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/fi-kbl-r/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-kbl-7500u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/fi-kbl-7500u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-cfl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/fi-cfl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (43 -&gt; 37)</h2>
<p>Missing    (6): fi-kbl-soraka fi-rkl-11500t fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10090 -&gt; Patchwork_20136</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10090: e28f8dd2a3f0981ebaad3056674553da7718da81 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6084: 5c5734d8ee1afac871b69c4554ff14e9b56100e4 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_20136: 1ff01b9a442e4c4e02da993a2c979b860f87a0e6 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>1ff01b9a442e drm/i915/gem: Pin the L-shape quirked object as unshrinkable</p>

</body>
</html>

--===============6829890382036755460==--

--===============1343921619==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1343921619==--
