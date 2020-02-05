Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E077C1524A9
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2020 03:05:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52B7A6F43F;
	Wed,  5 Feb 2020 02:05:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 92B236F43F;
 Wed,  5 Feb 2020 02:05:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8A210A0096;
 Wed,  5 Feb 2020 02:05:16 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Wed, 05 Feb 2020 02:05:16 -0000
Message-ID: <158086831653.17320.12532023301181478938@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1580823606.git.jani.nikula@intel.com>
In-Reply-To: <cover.1580823606.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_modeset_probe/remove_cleanup=2C_again?=
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

Series: drm/i915: modeset probe/remove cleanup, again
URL   : https://patchwork.freedesktop.org/series/72967/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7867 -> Patchwork_16415
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16415 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16415, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16415/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16415:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-hsw-4770:        [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/fi-hsw-4770/igt@i915_module_load@reload-with-fault-injection.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16415/fi-hsw-4770/igt@i915_module_load@reload-with-fault-injection.html
    - fi-whl-u:           [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/fi-whl-u/igt@i915_module_load@reload-with-fault-injection.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16415/fi-whl-u/igt@i915_module_load@reload-with-fault-injection.html
    - fi-ilk-650:         [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/fi-ilk-650/igt@i915_module_load@reload-with-fault-injection.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16415/fi-ilk-650/igt@i915_module_load@reload-with-fault-injection.html
    - fi-ivb-3770:        NOTRUN -> [INCOMPLETE][7]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16415/fi-ivb-3770/igt@i915_module_load@reload-with-fault-injection.html
    - fi-blb-e6850:       [PASS][8] -> [INCOMPLETE][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/fi-blb-e6850/igt@i915_module_load@reload-with-fault-injection.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16415/fi-blb-e6850/igt@i915_module_load@reload-with-fault-injection.html
    - fi-hsw-4770r:       [PASS][10] -> [INCOMPLETE][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/fi-hsw-4770r/igt@i915_module_load@reload-with-fault-injection.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16415/fi-hsw-4770r/igt@i915_module_load@reload-with-fault-injection.html
    - fi-bwr-2160:        [PASS][12] -> [INCOMPLETE][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/fi-bwr-2160/igt@i915_module_load@reload-with-fault-injection.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16415/fi-bwr-2160/igt@i915_module_load@reload-with-fault-injection.html
    - fi-bdw-5557u:       NOTRUN -> [INCOMPLETE][14]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16415/fi-bdw-5557u/igt@i915_module_load@reload-with-fault-injection.html

  * igt@runner@aborted:
    - fi-ilk-650:         NOTRUN -> [FAIL][15]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16415/fi-ilk-650/igt@runner@aborted.html
    - fi-cfl-8700k:       NOTRUN -> [FAIL][16]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16415/fi-cfl-8700k/igt@runner@aborted.html
    - fi-snb-2520m:       NOTRUN -> [FAIL][17]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16415/fi-snb-2520m/igt@runner@aborted.html
    - fi-bdw-5557u:       NOTRUN -> [FAIL][18]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16415/fi-bdw-5557u/igt@runner@aborted.html
    - fi-byt-n2820:       NOTRUN -> [FAIL][19]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16415/fi-byt-n2820/igt@runner@aborted.html
    - fi-whl-u:           NOTRUN -> [FAIL][20]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16415/fi-whl-u/igt@runner@aborted.html
    - fi-ivb-3770:        NOTRUN -> [FAIL][21]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16415/fi-ivb-3770/igt@runner@aborted.html
    - fi-cfl-guc:         NOTRUN -> [FAIL][22]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16415/fi-cfl-guc/igt@runner@aborted.html
    - fi-blb-e6850:       NOTRUN -> [FAIL][23]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16415/fi-blb-e6850/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@runner@aborted:
    - {fi-ehl-1}:         NOTRUN -> [FAIL][24]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16415/fi-ehl-1/igt@runner@aborted.html
    - {fi-tgl-u}:         NOTRUN -> [FAIL][25]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16415/fi-tgl-u/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_16415 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-cml-s:           [PASS][26] -> [FAIL][27] ([fdo#103375])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/fi-cml-s/igt@gem_exec_suspend@basic-s0.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16415/fi-cml-s/igt@gem_exec_suspend@basic-s0.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-kbl-8809g:       [PASS][28] -> [INCOMPLETE][29] ([fdo#103665] / [i915#879])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/fi-kbl-8809g/igt@i915_module_load@reload-with-fault-injection.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16415/fi-kbl-8809g/igt@i915_module_load@reload-with-fault-injection.html
    - fi-icl-guc:         [PASS][30] -> [INCOMPLETE][31] ([i915#140] / [i915#671])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/fi-icl-guc/igt@i915_module_load@reload-with-fault-injection.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16415/fi-icl-guc/igt@i915_module_load@reload-with-fault-injection.html
    - fi-cml-u2:          [PASS][32] -> [INCOMPLETE][33] ([i915#283])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/fi-cml-u2/igt@i915_module_load@reload-with-fault-injection.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16415/fi-cml-u2/igt@i915_module_load@reload-with-fault-injection.html
    - fi-bxt-dsi:         [PASS][34] -> [INCOMPLETE][35] ([fdo#103927])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/fi-bxt-dsi/igt@i915_module_load@reload-with-fault-injection.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16415/fi-bxt-dsi/igt@i915_module_load@reload-with-fault-injection.html
    - fi-cfl-guc:         [PASS][36] -> [INCOMPLETE][37] ([i915#505] / [i915#671])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/fi-cfl-guc/igt@i915_module_load@reload-with-fault-injection.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16415/fi-cfl-guc/igt@i915_module_load@reload-with-fault-injection.html
    - fi-skl-guc:         [PASS][38] -> [INCOMPLETE][39] ([i915#671])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/fi-skl-guc/igt@i915_module_load@reload-with-fault-injection.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16415/fi-skl-guc/igt@i915_module_load@reload-with-fault-injection.html
    - fi-icl-u3:          [PASS][40] -> [INCOMPLETE][41] ([i915#140])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/fi-icl-u3/igt@i915_module_load@reload-with-fault-injection.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16415/fi-icl-u3/igt@i915_module_load@reload-with-fault-injection.html
    - fi-cfl-8700k:       [PASS][42] -> [INCOMPLETE][43] ([i915#505])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/fi-cfl-8700k/igt@i915_module_load@reload-with-fault-injection.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16415/fi-cfl-8700k/igt@i915_module_load@reload-with-fault-injection.html
    - fi-icl-y:           [PASS][44] -> [INCOMPLETE][45] ([i915#140])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/fi-icl-y/igt@i915_module_load@reload-with-fault-injection.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16415/fi-icl-y/igt@i915_module_load@reload-with-fault-injection.html
    - fi-skl-6700k2:      [PASS][46] -> [INCOMPLETE][47] ([i915#671])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/fi-skl-6700k2/igt@i915_module_load@reload-with-fault-injection.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16415/fi-skl-6700k2/igt@i915_module_load@reload-with-fault-injection.html
    - fi-elk-e7500:       [PASS][48] -> [INCOMPLETE][49] ([i915#66])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/fi-elk-e7500/igt@i915_module_load@reload-with-fault-injection.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16415/fi-elk-e7500/igt@i915_module_load@reload-with-fault-injection.html
    - fi-glk-dsi:         [PASS][50] -> [INCOMPLETE][51] ([i915#58] / [k.org#198133])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/fi-glk-dsi/igt@i915_module_load@reload-with-fault-injection.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16415/fi-glk-dsi/igt@i915_module_load@reload-with-fault-injection.html
    - fi-snb-2520m:       [PASS][52] -> [INCOMPLETE][53] ([i915#82])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/fi-snb-2520m/igt@i915_module_load@reload-with-fault-injection.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16415/fi-snb-2520m/igt@i915_module_load@reload-with-fault-injection.html
    - fi-apl-guc:         [PASS][54] -> [INCOMPLETE][55] ([fdo#103927] / [i915#671])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/fi-apl-guc/igt@i915_module_load@reload-with-fault-injection.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16415/fi-apl-guc/igt@i915_module_load@reload-with-fault-injection.html
    - fi-bsw-kefka:       [PASS][56] -> [INCOMPLETE][57] ([fdo#105876])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/fi-bsw-kefka/igt@i915_module_load@reload-with-fault-injection.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16415/fi-bsw-kefka/igt@i915_module_load@reload-with-fault-injection.html
    - fi-icl-dsi:         [PASS][58] -> [INCOMPLETE][59] ([i915#140])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/fi-icl-dsi/igt@i915_module_load@reload-with-fault-injection.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16415/fi-icl-dsi/igt@i915_module_load@reload-with-fault-injection.html
    - fi-skl-6770hq:      [PASS][60] -> [INCOMPLETE][61] ([i915#671])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/fi-skl-6770hq/igt@i915_module_load@reload-with-fault-injection.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16415/fi-skl-6770hq/igt@i915_module_load@reload-with-fault-injection.html
    - fi-pnv-d510:        [PASS][62] -> [INCOMPLETE][63] ([i915#299])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/fi-pnv-d510/igt@i915_module_load@reload-with-fault-injection.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16415/fi-pnv-d510/igt@i915_module_load@reload-with-fault-injection.html
    - fi-kbl-x1275:       [PASS][64] -> [INCOMPLETE][65] ([i915#879])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/fi-kbl-x1275/igt@i915_module_load@reload-with-fault-injection.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16415/fi-kbl-x1275/igt@i915_module_load@reload-with-fault-injection.html
    - fi-kbl-guc:         [PASS][66] -> [INCOMPLETE][67] ([i915#671] / [i915#879])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/fi-kbl-guc/igt@i915_module_load@reload-with-fault-injection.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16415/fi-kbl-guc/igt@i915_module_load@reload-with-fault-injection.html
    - fi-bsw-nick:        [PASS][68] -> [INCOMPLETE][69] ([fdo#105876])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/fi-bsw-nick/igt@i915_module_load@reload-with-fault-injection.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16415/fi-bsw-nick/igt@i915_module_load@reload-with-fault-injection.html
    - fi-skl-lmem:        [PASS][70] -> [INCOMPLETE][71] ([i915#671])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/fi-skl-lmem/igt@i915_module_load@reload-with-fault-injection.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16415/fi-skl-lmem/igt@i915_module_load@reload-with-fault-injection.html
    - fi-byt-n2820:       [PASS][72] -> [INCOMPLETE][73] ([i915#45])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/fi-byt-n2820/igt@i915_module_load@reload-with-fault-injection.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16415/fi-byt-n2820/igt@i915_module_load@reload-with-fault-injection.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-icl-u2:          [PASS][74] -> [FAIL][75] ([i915#217])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16415/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Warnings ####

  * igt@gem_exec_parallel@contexts:
    - fi-byt-n2820:       [TIMEOUT][76] ([fdo#112271] / [i915#1084]) -> [FAIL][77] ([i915#694])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/fi-byt-n2820/igt@gem_exec_parallel@contexts.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16415/fi-byt-n2820/igt@gem_exec_parallel@contexts.html

  * igt@gem_exec_parallel@fds:
    - fi-byt-n2820:       [TIMEOUT][78] ([fdo#112271]) -> [FAIL][79] ([i915#694])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/fi-byt-n2820/igt@gem_exec_parallel@fds.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16415/fi-byt-n2820/igt@gem_exec_parallel@fds.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-cml-s:           [INCOMPLETE][80] ([i915#1078] / [i915#283]) -> [FAIL][81] ([fdo#103375])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/fi-cml-s/igt@gem_exec_suspend@basic-s3.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16415/fi-cml-s/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-icl-u2:          [DMESG-WARN][82] ([i915#289]) -> [INCOMPLETE][83] ([i915#140])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/fi-icl-u2/igt@i915_module_load@reload-with-fault-injection.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16415/fi-icl-u2/igt@i915_module_load@reload-with-fault-injection.html

  * igt@runner@aborted:
    - fi-cml-s:           [FAIL][84] ([fdo#111012] / [fdo#111764] / [i915#577]) -> [FAIL][85] ([i915#577])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/fi-cml-s/igt@runner@aborted.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16415/fi-cml-s/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#105876]: https://bugs.freedesktop.org/show_bug.cgi?id=105876
  [fdo#111012]: https://bugs.freedesktop.org/show_bug.cgi?id=111012
  [fdo#111764]: https://bugs.freedesktop.org/show_bug.cgi?id=111764
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1078]: https://gitlab.freedesktop.org/drm/intel/issues/1078
  [i915#1084]: https://gitlab.freedesktop.org/drm/intel/issues/1084
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#283]: https://gitlab.freedesktop.org/drm/intel/issues/283
  [i915#289]: https://gitlab.freedesktop.org/drm/intel/issues/289
  [i915#299]: https://gitlab.freedesktop.org/drm/intel/issues/299
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#505]: https://gitlab.freedesktop.org/drm/intel/issues/505
  [i915#577]: https://gitlab.freedesktop.org/drm/intel/issues/577
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#66]: https://gitlab.freedesktop.org/drm/intel/issues/66
  [i915#671]: https://gitlab.freedesktop.org/drm/intel/issues/671
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#879]: https://gitlab.freedesktop.org/drm/intel/issues/879
  [i915#937]: https://gitlab.freedesktop.org/drm/intel/issues/937
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (42 -> 44)
------------------------------

  Additional (9): fi-bdw-5557u fi-bsw-n3050 fi-hsw-peppy fi-kbl-7500u fi-gdg-551 fi-ivb-3770 fi-kbl-r fi-skl-6600u fi-snb-2600 
  Missing    (7): fi-kbl-soraka fi-hsw-4200u fi-byt-squawks fi-ctg-p8600 fi-cfl-8109u fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7867 -> Patchwork_16415

  CI-20190529: 20190529
  CI_DRM_7867: a4c409e48c6281538b1e375545dfb5989fa02063 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5418: 4028bd390b41925f6e26f6f11b31e05054652527 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16415: 3d71c701f713e45918833205ac0e8d5d41b9cab9 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

3d71c701f713 drm/i915: remove the now redundant i915_driver_modeset_* call layer
746a03a7f5f5 drm/i915: move more display related probe/remove stuff to display
51b9df678a38 drm/i915: split intel_modeset_init() pre/post gem init
195344732323 drm/i915: split intel_modeset_init() to pre/post irq install
99a2a2e57bc4 drm/i915: split i915_driver_modeset_probe() to pre/post irq install
897afb1a1a69 drm/i915: split i915_driver_modeset_remove() to pre/post irq uninstall
ec3d44fffd64 drm/i915: split intel_modeset_driver_remove() to pre/post irq uninstall
f9cd0e2c9313 drm/i915: switch i915_driver_probe() to use i915 local variable
bfd1d4acd77e drm/i915: register vga switcheroo later, unregister earlier

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16415/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
