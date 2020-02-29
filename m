Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D88C17470D
	for <lists+intel-gfx@lfdr.de>; Sat, 29 Feb 2020 14:28:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59C9B6E334;
	Sat, 29 Feb 2020 13:28:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id DD4F06E334;
 Sat, 29 Feb 2020 13:28:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D663DA3C0D;
 Sat, 29 Feb 2020 13:28:15 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lionel Landwerlin" <lionel.g.landwerlin@intel.com>
Date: Sat, 29 Feb 2020 13:28:15 -0000
Message-ID: <158298289587.19636.13396080514572667038@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200229125022.1694679-1-lionel.g.landwerlin@intel.com>
In-Reply-To: <20200229125022.1694679-1-lionel.g.landwerlin@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/3=5D_drm/i915/perf=3A_remove_generated_c?=
 =?utf-8?q?ode?=
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

Series: series starting with [1/3] drm/i915/perf: remove generated code
URL   : https://patchwork.freedesktop.org/series/74107/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8035 -> Patchwork_16773
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16773 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16773, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16773/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16773:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@perf:
    - fi-icl-guc:         [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/fi-icl-guc/igt@i915_selftest@live@perf.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16773/fi-icl-guc/igt@i915_selftest@live@perf.html
    - fi-kbl-8809g:       [PASS][3] -> [DMESG-FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/fi-kbl-8809g/igt@i915_selftest@live@perf.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16773/fi-kbl-8809g/igt@i915_selftest@live@perf.html
    - fi-kbl-7500u:       [PASS][5] -> [DMESG-FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/fi-kbl-7500u/igt@i915_selftest@live@perf.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16773/fi-kbl-7500u/igt@i915_selftest@live@perf.html
    - fi-bdw-5557u:       [PASS][7] -> [DMESG-FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/fi-bdw-5557u/igt@i915_selftest@live@perf.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16773/fi-bdw-5557u/igt@i915_selftest@live@perf.html
    - fi-kbl-guc:         [PASS][9] -> [DMESG-FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/fi-kbl-guc/igt@i915_selftest@live@perf.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16773/fi-kbl-guc/igt@i915_selftest@live@perf.html
    - fi-hsw-4770:        [PASS][11] -> [DMESG-FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/fi-hsw-4770/igt@i915_selftest@live@perf.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16773/fi-hsw-4770/igt@i915_selftest@live@perf.html
    - fi-cml-u2:          [PASS][13] -> [DMESG-FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/fi-cml-u2/igt@i915_selftest@live@perf.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16773/fi-cml-u2/igt@i915_selftest@live@perf.html
    - fi-icl-y:           [PASS][15] -> [DMESG-FAIL][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/fi-icl-y/igt@i915_selftest@live@perf.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16773/fi-icl-y/igt@i915_selftest@live@perf.html
    - fi-bxt-dsi:         [PASS][17] -> [DMESG-FAIL][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/fi-bxt-dsi/igt@i915_selftest@live@perf.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16773/fi-bxt-dsi/igt@i915_selftest@live@perf.html
    - fi-cfl-guc:         [PASS][19] -> [DMESG-FAIL][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/fi-cfl-guc/igt@i915_selftest@live@perf.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16773/fi-cfl-guc/igt@i915_selftest@live@perf.html
    - fi-skl-6700k2:      [PASS][21] -> [DMESG-FAIL][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/fi-skl-6700k2/igt@i915_selftest@live@perf.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16773/fi-skl-6700k2/igt@i915_selftest@live@perf.html
    - fi-cml-s:           [PASS][23] -> [DMESG-FAIL][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/fi-cml-s/igt@i915_selftest@live@perf.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16773/fi-cml-s/igt@i915_selftest@live@perf.html
    - fi-skl-guc:         [PASS][25] -> [DMESG-FAIL][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/fi-skl-guc/igt@i915_selftest@live@perf.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16773/fi-skl-guc/igt@i915_selftest@live@perf.html
    - fi-icl-dsi:         [PASS][27] -> [DMESG-FAIL][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/fi-icl-dsi/igt@i915_selftest@live@perf.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16773/fi-icl-dsi/igt@i915_selftest@live@perf.html
    - fi-bsw-n3050:       [PASS][29] -> [DMESG-FAIL][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/fi-bsw-n3050/igt@i915_selftest@live@perf.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16773/fi-bsw-n3050/igt@i915_selftest@live@perf.html
    - fi-bsw-kefka:       [PASS][31] -> [DMESG-FAIL][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/fi-bsw-kefka/igt@i915_selftest@live@perf.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16773/fi-bsw-kefka/igt@i915_selftest@live@perf.html
    - fi-cfl-8700k:       NOTRUN -> [DMESG-FAIL][33]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16773/fi-cfl-8700k/igt@i915_selftest@live@perf.html
    - fi-icl-u2:          [PASS][34] -> [DMESG-FAIL][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/fi-icl-u2/igt@i915_selftest@live@perf.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16773/fi-icl-u2/igt@i915_selftest@live@perf.html
    - fi-skl-6600u:       [PASS][36] -> [DMESG-FAIL][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/fi-skl-6600u/igt@i915_selftest@live@perf.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16773/fi-skl-6600u/igt@i915_selftest@live@perf.html
    - fi-kbl-x1275:       [PASS][38] -> [DMESG-FAIL][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/fi-kbl-x1275/igt@i915_selftest@live@perf.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16773/fi-kbl-x1275/igt@i915_selftest@live@perf.html
    - fi-bsw-nick:        [PASS][40] -> [DMESG-FAIL][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/fi-bsw-nick/igt@i915_selftest@live@perf.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16773/fi-bsw-nick/igt@i915_selftest@live@perf.html
    - fi-hsw-peppy:       [PASS][42] -> [DMESG-FAIL][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/fi-hsw-peppy/igt@i915_selftest@live@perf.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16773/fi-hsw-peppy/igt@i915_selftest@live@perf.html
    - fi-skl-lmem:        [PASS][44] -> [DMESG-FAIL][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/fi-skl-lmem/igt@i915_selftest@live@perf.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16773/fi-skl-lmem/igt@i915_selftest@live@perf.html
    - fi-apl-guc:         [PASS][46] -> [DMESG-FAIL][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/fi-apl-guc/igt@i915_selftest@live@perf.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16773/fi-apl-guc/igt@i915_selftest@live@perf.html
    - fi-hsw-4770r:       [PASS][48] -> [DMESG-FAIL][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/fi-hsw-4770r/igt@i915_selftest@live@perf.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16773/fi-hsw-4770r/igt@i915_selftest@live@perf.html
    - fi-cfl-8109u:       NOTRUN -> [DMESG-FAIL][50]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16773/fi-cfl-8109u/igt@i915_selftest@live@perf.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@perf:
    - {fi-tgl-dsi}:       [PASS][51] -> [DMESG-FAIL][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/fi-tgl-dsi/igt@i915_selftest@live@perf.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16773/fi-tgl-dsi/igt@i915_selftest@live@perf.html
    - {fi-ehl-1}:         [PASS][53] -> [DMESG-FAIL][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/fi-ehl-1/igt@i915_selftest@live@perf.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16773/fi-ehl-1/igt@i915_selftest@live@perf.html
    - {fi-kbl-7560u}:     [PASS][55] -> [DMESG-FAIL][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/fi-kbl-7560u/igt@i915_selftest@live@perf.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16773/fi-kbl-7560u/igt@i915_selftest@live@perf.html
    - {fi-tgl-u}:         [PASS][57] -> [DMESG-FAIL][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/fi-tgl-u/igt@i915_selftest@live@perf.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16773/fi-tgl-u/igt@i915_selftest@live@perf.html

  
Known issues
------------

  Here are the changes found in Patchwork_16773 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_flink_basic@flink-lifetime:
    - fi-tgl-y:           [PASS][59] -> [DMESG-WARN][60] ([CI#94] / [i915#402]) +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/fi-tgl-y/igt@gem_flink_basic@flink-lifetime.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16773/fi-tgl-y/igt@gem_flink_basic@flink-lifetime.html

  * igt@i915_selftest@live@perf:
    - fi-tgl-y:           [PASS][61] -> [DMESG-FAIL][62] ([CI#94])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/fi-tgl-y/igt@i915_selftest@live@perf.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16773/fi-tgl-y/igt@i915_selftest@live@perf.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-tgl-y:           [FAIL][63] ([CI#94]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16773/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@gem_mmap_gtt@basic:
    - fi-tgl-y:           [DMESG-WARN][65] ([CI#94] / [i915#402]) -> [PASS][66] +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/fi-tgl-y/igt@gem_mmap_gtt@basic.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16773/fi-tgl-y/igt@gem_mmap_gtt@basic.html

  * igt@i915_selftest@live@gem_contexts:
    - fi-cfl-8700k:       [INCOMPLETE][67] ([i915#424]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/fi-cfl-8700k/igt@i915_selftest@live@gem_contexts.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16773/fi-cfl-8700k/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-bxt-dsi:         [DMESG-FAIL][69] ([i915#541]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/fi-bxt-dsi/igt@i915_selftest@live@gt_heartbeat.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16773/fi-bxt-dsi/igt@i915_selftest@live@gt_heartbeat.html

  
#### Warnings ####

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][71] ([fdo#111407]) -> [FAIL][72] ([fdo#111096] / [i915#323])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16773/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424
  [i915#541]: https://gitlab.freedesktop.org/drm/intel/issues/541
  [i915#998]: https://gitlab.freedesktop.org/drm/intel/issues/998


Participating hosts (48 -> 43)
------------------------------

  Additional (2): fi-cfl-8109u fi-bwr-2160 
  Missing    (7): fi-glk-dsi fi-bsw-cyan fi-byt-squawks fi-ctg-p8600 fi-byt-n2820 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8035 -> Patchwork_16773

  CI-20190529: 20190529
  CI_DRM_8035: cacad502dcd40516c6a9be38ca3ef0c1288f4cf4 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5477: 3fe5828f45fc533ba4d9ee84dbb5aea320ce61bc @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16773: f1b1e775d6d979587cc82576ce897eccc3d1b61e @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

f1b1e775d6d9 drm/i915/perf: introduce global sseu pinning
db590d909d4c drm/i915/perf: reintroduce wait on OA configuration completion
882c81c4e09c drm/i915/perf: remove generated code

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16773/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
