Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EF43611EB2
	for <lists+intel-gfx@lfdr.de>; Sat, 29 Oct 2022 02:24:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 315ED10E206;
	Sat, 29 Oct 2022 00:24:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 75D8710E206;
 Sat, 29 Oct 2022 00:24:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5E9A6AADDD;
 Sat, 29 Oct 2022 00:24:11 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1469973021915590268=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Brian Norris" <briannorris@chromium.org>
Date: Sat, 29 Oct 2022 00:24:11 -0000
Message-ID: <166700305133.24147.5489949087173137559@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221028145319.1.I87b119c576d486ad139faf1b7278d97e158aabe4@changeid>
In-Reply-To: <20221028145319.1.I87b119c576d486ad139faf1b7278d97e158aabe4@changeid>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Set_PROBE=5FPREFER=5FASYNCHRONOUS?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1469973021915590268==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Set PROBE_PREFER_ASYNCHRONOUS
URL   : https://patchwork.freedesktop.org/series/110277/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12317 -> Patchwork_110277v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_110277v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_110277v1, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/index.html

Participating hosts (40 -> 41)
------------------------------

  Additional (3): fi-kbl-soraka fi-tgl-dsi fi-pnv-d510 
  Missing    (2): fi-ctg-p8600 fi-cfl-8700k 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_110277v1:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gt_engines:
    - fi-apl-guc:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12317/fi-apl-guc/igt@i915_selftest@live@gt_engines.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-apl-guc/igt@i915_selftest@live@gt_engines.html

  * igt@i915_selftest@live@gt_timelines:
    - fi-bdw-gvtdvm:      [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12317/fi-bdw-gvtdvm/igt@i915_selftest@live@gt_timelines.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-bdw-gvtdvm/igt@i915_selftest@live@gt_timelines.html

  * igt@i915_selftest@live@sanitycheck:
    - fi-bsw-nick:        [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12317/fi-bsw-nick/igt@i915_selftest@live@sanitycheck.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-bsw-nick/igt@i915_selftest@live@sanitycheck.html
    - fi-hsw-g3258:       [PASS][7] -> [INCOMPLETE][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12317/fi-hsw-g3258/igt@i915_selftest@live@sanitycheck.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-hsw-g3258/igt@i915_selftest@live@sanitycheck.html
    - fi-bsw-kefka:       [PASS][9] -> [INCOMPLETE][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12317/fi-bsw-kefka/igt@i915_selftest@live@sanitycheck.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-bsw-kefka/igt@i915_selftest@live@sanitycheck.html
    - fi-elk-e7500:       [PASS][11] -> [INCOMPLETE][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12317/fi-elk-e7500/igt@i915_selftest@live@sanitycheck.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-elk-e7500/igt@i915_selftest@live@sanitycheck.html
    - fi-glk-j4005:       [PASS][13] -> [INCOMPLETE][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12317/fi-glk-j4005/igt@i915_selftest@live@sanitycheck.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-glk-j4005/igt@i915_selftest@live@sanitycheck.html

  * igt@i915_selftest@live@uncore:
    - fi-rkl-guc:         [PASS][15] -> [INCOMPLETE][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12317/fi-rkl-guc/igt@i915_selftest@live@uncore.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-rkl-guc/igt@i915_selftest@live@uncore.html
    - fi-skl-guc:         [PASS][17] -> [INCOMPLETE][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12317/fi-skl-guc/igt@i915_selftest@live@uncore.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-skl-guc/igt@i915_selftest@live@uncore.html
    - fi-rkl-11600:       [PASS][19] -> [INCOMPLETE][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12317/fi-rkl-11600/igt@i915_selftest@live@uncore.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-rkl-11600/igt@i915_selftest@live@uncore.html
    - fi-adl-ddr5:        [PASS][21] -> [INCOMPLETE][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12317/fi-adl-ddr5/igt@i915_selftest@live@uncore.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-adl-ddr5/igt@i915_selftest@live@uncore.html
    - fi-cfl-guc:         [PASS][23] -> [INCOMPLETE][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12317/fi-cfl-guc/igt@i915_selftest@live@uncore.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-cfl-guc/igt@i915_selftest@live@uncore.html
    - fi-skl-6700k2:      [PASS][25] -> [INCOMPLETE][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12317/fi-skl-6700k2/igt@i915_selftest@live@uncore.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-skl-6700k2/igt@i915_selftest@live@uncore.html
    - fi-cfl-8109u:       [PASS][27] -> [INCOMPLETE][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12317/fi-cfl-8109u/igt@i915_selftest@live@uncore.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-cfl-8109u/igt@i915_selftest@live@uncore.html
    - bat-adlp-4:         [PASS][29] -> [INCOMPLETE][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12317/bat-adlp-4/igt@i915_selftest@live@uncore.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/bat-adlp-4/igt@i915_selftest@live@uncore.html
    - fi-ivb-3770:        [PASS][31] -> [INCOMPLETE][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12317/fi-ivb-3770/igt@i915_selftest@live@uncore.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-ivb-3770/igt@i915_selftest@live@uncore.html
    - fi-pnv-d510:        NOTRUN -> [INCOMPLETE][33]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-pnv-d510/igt@i915_selftest@live@uncore.html
    - fi-bdw-5557u:       [PASS][34] -> [INCOMPLETE][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12317/fi-bdw-5557u/igt@i915_selftest@live@uncore.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-bdw-5557u/igt@i915_selftest@live@uncore.html

  * igt@i915_selftest@live@workarounds:
    - fi-blb-e6850:       [PASS][36] -> [INCOMPLETE][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12317/fi-blb-e6850/igt@i915_selftest@live@workarounds.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-blb-e6850/igt@i915_selftest@live@workarounds.html
    - fi-skl-6600u:       [PASS][38] -> [INCOMPLETE][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12317/fi-skl-6600u/igt@i915_selftest@live@workarounds.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-skl-6600u/igt@i915_selftest@live@workarounds.html
    - fi-snb-2520m:       [PASS][40] -> [INCOMPLETE][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12317/fi-snb-2520m/igt@i915_selftest@live@workarounds.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-snb-2520m/igt@i915_selftest@live@workarounds.html
    - fi-kbl-7567u:       [PASS][42] -> [INCOMPLETE][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12317/fi-kbl-7567u/igt@i915_selftest@live@workarounds.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-kbl-7567u/igt@i915_selftest@live@workarounds.html
    - fi-hsw-4770:        [PASS][44] -> [INCOMPLETE][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12317/fi-hsw-4770/igt@i915_selftest@live@workarounds.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-hsw-4770/igt@i915_selftest@live@workarounds.html
    - fi-ilk-650:         NOTRUN -> [INCOMPLETE][46]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-ilk-650/igt@i915_selftest@live@workarounds.html
    - fi-bxt-dsi:         [PASS][47] -> [INCOMPLETE][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12317/fi-bxt-dsi/igt@i915_selftest@live@workarounds.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-bxt-dsi/igt@i915_selftest@live@workarounds.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@sanitycheck:
    - {fi-tgl-dsi}:       NOTRUN -> [INCOMPLETE][49]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-tgl-dsi/igt@i915_selftest@live@sanitycheck.html
    - {bat-rpls-2}:       [PASS][50] -> [INCOMPLETE][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12317/bat-rpls-2/igt@i915_selftest@live@sanitycheck.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/bat-rpls-2/igt@i915_selftest@live@sanitycheck.html
    - {bat-dg2-8}:        [PASS][52] -> [INCOMPLETE][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12317/bat-dg2-8/igt@i915_selftest@live@sanitycheck.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/bat-dg2-8/igt@i915_selftest@live@sanitycheck.html
    - {bat-rpls-1}:       [PASS][54] -> [INCOMPLETE][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12317/bat-rpls-1/igt@i915_selftest@live@sanitycheck.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/bat-rpls-1/igt@i915_selftest@live@sanitycheck.html

  * igt@i915_selftest@live@uncore:
    - {bat-dg2-11}:       [PASS][56] -> [INCOMPLETE][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12317/bat-dg2-11/igt@i915_selftest@live@uncore.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/bat-dg2-11/igt@i915_selftest@live@uncore.html
    - {bat-rplp-1}:       [PASS][58] -> [INCOMPLETE][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12317/bat-rplp-1/igt@i915_selftest@live@uncore.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/bat-rplp-1/igt@i915_selftest@live@uncore.html
    - {bat-adln-1}:       [PASS][60] -> [INCOMPLETE][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12317/bat-adln-1/igt@i915_selftest@live@uncore.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/bat-adln-1/igt@i915_selftest@live@uncore.html
    - {bat-adlm-1}:       [PASS][62] -> [INCOMPLETE][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12317/bat-adlm-1/igt@i915_selftest@live@uncore.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/bat-adlm-1/igt@i915_selftest@live@uncore.html
    - {fi-jsl-1}:         [PASS][64] -> [INCOMPLETE][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12317/fi-jsl-1/igt@i915_selftest@live@uncore.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-jsl-1/igt@i915_selftest@live@uncore.html
    - {bat-adlp-6}:       [PASS][66] -> [INCOMPLETE][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12317/bat-adlp-6/igt@i915_selftest@live@uncore.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/bat-adlp-6/igt@i915_selftest@live@uncore.html
    - {fi-ehl-2}:         [PASS][68] -> [INCOMPLETE][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12317/fi-ehl-2/igt@i915_selftest@live@uncore.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-ehl-2/igt@i915_selftest@live@uncore.html

  * igt@i915_selftest@live@workarounds:
    - {bat-dg2-9}:        [PASS][70] -> [INCOMPLETE][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12317/bat-dg2-9/igt@i915_selftest@live@workarounds.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/bat-dg2-9/igt@i915_selftest@live@workarounds.html
    - {bat-jsl-1}:        [PASS][72] -> [INCOMPLETE][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12317/bat-jsl-1/igt@i915_selftest@live@workarounds.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/bat-jsl-1/igt@i915_selftest@live@workarounds.html

  
Known issues
------------

  Here are the changes found in Patchwork_110277v1 that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - fi-ilk-650:         [FAIL][74] ([i915#7350]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12317/fi-ilk-650/boot.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-ilk-650/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_gttfill@basic:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][76] ([fdo#109271]) +9 similar issues
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-kbl-soraka/igt@gem_exec_gttfill@basic.html
    - fi-pnv-d510:        NOTRUN -> [FAIL][77] ([i915#7229])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-pnv-d510/igt@gem_exec_gttfill@basic.html

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][78] ([fdo#109271] / [i915#2190])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][79] ([fdo#109271] / [i915#4613]) +3 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-ilk-650:         NOTRUN -> [SKIP][80] ([fdo#109271]) +19 similar issues
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-ilk-650/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@i915_selftest@live@sanitycheck:
    - fi-kbl-soraka:      NOTRUN -> [INCOMPLETE][81] ([i915#7262])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-kbl-soraka/igt@i915_selftest@live@sanitycheck.html

  * igt@i915_selftest@live@workarounds:
    - fi-icl-u2:          [PASS][82] -> [INCOMPLETE][83] ([i915#4890])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12317/fi-icl-u2/igt@i915_selftest@live@workarounds.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-icl-u2/igt@i915_selftest@live@workarounds.html

  * igt@kms_chamelium@hdmi-edid-read:
    - fi-ilk-650:         NOTRUN -> [SKIP][84] ([fdo#109271] / [fdo#111827]) +7 similar issues
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-ilk-650/igt@kms_chamelium@hdmi-edid-read.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][85] ([fdo#109271] / [fdo#111827]) +7 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-kbl-soraka/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@kms_psr@primary_page_flip:
    - fi-pnv-d510:        NOTRUN -> [SKIP][86] ([fdo#109271]) +42 similar issues
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-pnv-d510/igt@kms_psr@primary_page_flip.html

  * igt@runner@aborted:
    - fi-hsw-4770:        NOTRUN -> [FAIL][87] ([fdo#109271] / [i915#4312] / [i915#5594])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-hsw-4770/igt@runner@aborted.html
    - fi-skl-6700k2:      NOTRUN -> [FAIL][88] ([i915#4312])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-skl-6700k2/igt@runner@aborted.html
    - fi-cfl-8109u:       NOTRUN -> [FAIL][89] ([i915#4312])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-cfl-8109u/igt@runner@aborted.html
    - bat-adlp-4:         NOTRUN -> [FAIL][90] ([i915#4312])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/bat-adlp-4/igt@runner@aborted.html
    - fi-ivb-3770:        NOTRUN -> [FAIL][91] ([fdo#109271] / [i915#4312])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-ivb-3770/igt@runner@aborted.html
    - fi-elk-e7500:       NOTRUN -> [FAIL][92] ([fdo#109271] / [i915#4312])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-elk-e7500/igt@runner@aborted.html
    - fi-ilk-650:         NOTRUN -> [FAIL][93] ([fdo#109271] / [i915#4312])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-ilk-650/igt@runner@aborted.html
    - fi-bxt-dsi:         NOTRUN -> [FAIL][94] ([i915#4312])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-bxt-dsi/igt@runner@aborted.html
    - fi-blb-e6850:       NOTRUN -> [FAIL][95] ([fdo#109271] / [i915#4312])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-blb-e6850/igt@runner@aborted.html
    - fi-skl-6600u:       NOTRUN -> [FAIL][96] ([i915#4312])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-skl-6600u/igt@runner@aborted.html
    - fi-apl-guc:         NOTRUN -> [FAIL][97] ([fdo#109271] / [i915#4312])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-apl-guc/igt@runner@aborted.html
    - fi-pnv-d510:        NOTRUN -> [FAIL][98] ([fdo#109271] / [i915#4312])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-pnv-d510/igt@runner@aborted.html
    - fi-bdw-5557u:       NOTRUN -> [FAIL][99] ([i915#4312])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-bdw-5557u/igt@runner@aborted.html
    - fi-snb-2520m:       NOTRUN -> [FAIL][100] ([i915#4312])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-snb-2520m/igt@runner@aborted.html
    - fi-glk-j4005:       NOTRUN -> [FAIL][101] ([i915#4312])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-glk-j4005/igt@runner@aborted.html
    - fi-rkl-guc:         NOTRUN -> [FAIL][102] ([i915#4312])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-rkl-guc/igt@runner@aborted.html
    - fi-skl-guc:         NOTRUN -> [FAIL][103] ([i915#4312])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-skl-guc/igt@runner@aborted.html
    - fi-kbl-soraka:      NOTRUN -> [FAIL][104] ([i915#4312] / [i915#4991])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-kbl-soraka/igt@runner@aborted.html
    - fi-kbl-7567u:       NOTRUN -> [FAIL][105] ([i915#4312])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-kbl-7567u/igt@runner@aborted.html
    - fi-bsw-nick:        NOTRUN -> [FAIL][106] ([fdo#109271] / [i915#4312])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-bsw-nick/igt@runner@aborted.html
    - fi-rkl-11600:       NOTRUN -> [FAIL][107] ([i915#4312])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-rkl-11600/igt@runner@aborted.html
    - fi-hsw-g3258:       NOTRUN -> [FAIL][108] ([fdo#109271] / [i915#4312] / [i915#4991])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-hsw-g3258/igt@runner@aborted.html
    - fi-bdw-gvtdvm:      NOTRUN -> [FAIL][109] ([i915#4312])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-bdw-gvtdvm/igt@runner@aborted.html
    - fi-bsw-kefka:       NOTRUN -> [FAIL][110] ([fdo#109271] / [i915#4312])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-bsw-kefka/igt@runner@aborted.html
    - fi-adl-ddr5:        NOTRUN -> [FAIL][111] ([i915#4312])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-adl-ddr5/igt@runner@aborted.html
    - fi-cfl-guc:         NOTRUN -> [FAIL][112] ([i915#4312])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-cfl-guc/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4890]: https://gitlab.freedesktop.org/drm/intel/issues/4890
  [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
  [i915#5537]: https://gitlab.freedesktop.org/drm/intel/issues/5537
  [i915#5594]: https://gitlab.freedesktop.org/drm/intel/issues/5594
  [i915#7029]: https://gitlab.freedesktop.org/drm/intel/issues/7029
  [i915#7229]: https://gitlab.freedesktop.org/drm/intel/issues/7229
  [i915#7262]: https://gitlab.freedesktop.org/drm/intel/issues/7262
  [i915#7346]: https://gitlab.freedesktop.org/drm/intel/issues/7346
  [i915#7350]: https://gitlab.freedesktop.org/drm/intel/issues/7350


Build changes
-------------

  * Linux: CI_DRM_12317 -> Patchwork_110277v1

  CI-20190529: 20190529
  CI_DRM_12317: 0f9cbc285f7d3d1860f7f903663933f33ff9ae25 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7029: c32cb1e614017f14274d335ac571383799e6c786 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_110277v1: 0f9cbc285f7d3d1860f7f903663933f33ff9ae25 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

e2554db0bcc4 drm/i915: Set PROBE_PREFER_ASYNCHRONOUS

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/index.html

--===============1469973021915590268==
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
<tr><td><b>Series:</b></td><td>drm/i915: Set PROBE_PREFER_ASYNCHRONOUS</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/110277/">https://patchwork.freedesktop.org/series/110277/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12317 -&gt; Patchwork_110277v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_110277v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_110277v1, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/index.html</p>
<h2>Participating hosts (40 -&gt; 41)</h2>
<p>Additional (3): fi-kbl-soraka fi-tgl-dsi fi-pnv-d510 <br />
  Missing    (2): fi-ctg-p8600 fi-cfl-8700k </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_110277v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_engines:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12317/fi-apl-guc/igt@i915_selftest@live@gt_engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-apl-guc/igt@i915_selftest@live@gt_engines.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_timelines:</p>
<ul>
<li>fi-bdw-gvtdvm:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12317/fi-bdw-gvtdvm/igt@i915_selftest@live@gt_timelines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-bdw-gvtdvm/igt@i915_selftest@live@gt_timelines.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@sanitycheck:</p>
<ul>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12317/fi-bsw-nick/igt@i915_selftest@live@sanitycheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-bsw-nick/igt@i915_selftest@live@sanitycheck.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-hsw-g3258:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12317/fi-hsw-g3258/igt@i915_selftest@live@sanitycheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-hsw-g3258/igt@i915_selftest@live@sanitycheck.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12317/fi-bsw-kefka/igt@i915_selftest@live@sanitycheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-bsw-kefka/igt@i915_selftest@live@sanitycheck.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12317/fi-elk-e7500/igt@i915_selftest@live@sanitycheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-elk-e7500/igt@i915_selftest@live@sanitycheck.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12317/fi-glk-j4005/igt@i915_selftest@live@sanitycheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-glk-j4005/igt@i915_selftest@live@sanitycheck.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@uncore:</p>
<ul>
<li>
<p>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12317/fi-rkl-guc/igt@i915_selftest@live@uncore.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-rkl-guc/igt@i915_selftest@live@uncore.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12317/fi-skl-guc/igt@i915_selftest@live@uncore.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-skl-guc/igt@i915_selftest@live@uncore.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12317/fi-rkl-11600/igt@i915_selftest@live@uncore.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-rkl-11600/igt@i915_selftest@live@uncore.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-adl-ddr5:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12317/fi-adl-ddr5/igt@i915_selftest@live@uncore.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-adl-ddr5/igt@i915_selftest@live@uncore.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12317/fi-cfl-guc/igt@i915_selftest@live@uncore.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-cfl-guc/igt@i915_selftest@live@uncore.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12317/fi-skl-6700k2/igt@i915_selftest@live@uncore.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-skl-6700k2/igt@i915_selftest@live@uncore.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12317/fi-cfl-8109u/igt@i915_selftest@live@uncore.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-cfl-8109u/igt@i915_selftest@live@uncore.html">INCOMPLETE</a></p>
</li>
<li>
<p>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12317/bat-adlp-4/igt@i915_selftest@live@uncore.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/bat-adlp-4/igt@i915_selftest@live@uncore.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12317/fi-ivb-3770/igt@i915_selftest@live@uncore.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-ivb-3770/igt@i915_selftest@live@uncore.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-pnv-d510/igt@i915_selftest@live@uncore.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12317/fi-bdw-5557u/igt@i915_selftest@live@uncore.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-bdw-5557u/igt@i915_selftest@live@uncore.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>
<p>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12317/fi-blb-e6850/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-blb-e6850/igt@i915_selftest@live@workarounds.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12317/fi-skl-6600u/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-skl-6600u/igt@i915_selftest@live@workarounds.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12317/fi-snb-2520m/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-snb-2520m/igt@i915_selftest@live@workarounds.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12317/fi-kbl-7567u/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-kbl-7567u/igt@i915_selftest@live@workarounds.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12317/fi-hsw-4770/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-hsw-4770/igt@i915_selftest@live@workarounds.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-ilk-650:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-ilk-650/igt@i915_selftest@live@workarounds.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12317/fi-bxt-dsi/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-bxt-dsi/igt@i915_selftest@live@workarounds.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@i915_selftest@live@sanitycheck:</p>
<ul>
<li>
<p>{fi-tgl-dsi}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-tgl-dsi/igt@i915_selftest@live@sanitycheck.html">INCOMPLETE</a></p>
</li>
<li>
<p>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12317/bat-rpls-2/igt@i915_selftest@live@sanitycheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/bat-rpls-2/igt@i915_selftest@live@sanitycheck.html">INCOMPLETE</a></p>
</li>
<li>
<p>{bat-dg2-8}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12317/bat-dg2-8/igt@i915_selftest@live@sanitycheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/bat-dg2-8/igt@i915_selftest@live@sanitycheck.html">INCOMPLETE</a></p>
</li>
<li>
<p>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12317/bat-rpls-1/igt@i915_selftest@live@sanitycheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/bat-rpls-1/igt@i915_selftest@live@sanitycheck.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@uncore:</p>
<ul>
<li>
<p>{bat-dg2-11}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12317/bat-dg2-11/igt@i915_selftest@live@uncore.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/bat-dg2-11/igt@i915_selftest@live@uncore.html">INCOMPLETE</a></p>
</li>
<li>
<p>{bat-rplp-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12317/bat-rplp-1/igt@i915_selftest@live@uncore.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/bat-rplp-1/igt@i915_selftest@live@uncore.html">INCOMPLETE</a></p>
</li>
<li>
<p>{bat-adln-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12317/bat-adln-1/igt@i915_selftest@live@uncore.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/bat-adln-1/igt@i915_selftest@live@uncore.html">INCOMPLETE</a></p>
</li>
<li>
<p>{bat-adlm-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12317/bat-adlm-1/igt@i915_selftest@live@uncore.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/bat-adlm-1/igt@i915_selftest@live@uncore.html">INCOMPLETE</a></p>
</li>
<li>
<p>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12317/fi-jsl-1/igt@i915_selftest@live@uncore.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-jsl-1/igt@i915_selftest@live@uncore.html">INCOMPLETE</a></p>
</li>
<li>
<p>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12317/bat-adlp-6/igt@i915_selftest@live@uncore.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/bat-adlp-6/igt@i915_selftest@live@uncore.html">INCOMPLETE</a></p>
</li>
<li>
<p>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12317/fi-ehl-2/igt@i915_selftest@live@uncore.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-ehl-2/igt@i915_selftest@live@uncore.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>
<p>{bat-dg2-9}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12317/bat-dg2-9/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/bat-dg2-9/igt@i915_selftest@live@workarounds.html">INCOMPLETE</a></p>
</li>
<li>
<p>{bat-jsl-1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12317/bat-jsl-1/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/bat-jsl-1/igt@i915_selftest@live@workarounds.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_110277v1 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12317/fi-ilk-650/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7350">i915#7350</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-ilk-650/boot.html">PASS</a></li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-kbl-soraka/igt@gem_exec_gttfill@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +9 similar issues</p>
</li>
<li>
<p>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-pnv-d510/igt@gem_exec_gttfill@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7229">i915#7229</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>fi-ilk-650:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-ilk-650/igt@i915_pm_rpm@basic-pci-d3-state.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +19 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@sanitycheck:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-kbl-soraka/igt@i915_selftest@live@sanitycheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7262">i915#7262</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12317/fi-icl-u2/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-icl-u2/igt@i915_selftest@live@workarounds.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4890">i915#4890</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-edid-read:</p>
<ul>
<li>fi-ilk-650:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-ilk-650/igt@kms_chamelium@hdmi-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-fast:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-kbl-soraka/igt@kms_chamelium@hdmi-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_page_flip:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-pnv-d510/igt@kms_psr@primary_page_flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +42 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-hsw-4770/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5594">i915#5594</a>)</p>
</li>
<li>
<p>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-skl-6700k2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-cfl-8109u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/bat-adlp-4/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-ivb-3770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-ivb-3770/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-elk-e7500:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-elk-e7500/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-ilk-650:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-ilk-650/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-bxt-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-bxt-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-blb-e6850:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-blb-e6850/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-apl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-pnv-d510/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-snb-2520m:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-snb-2520m/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-glk-j4005/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-rkl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-skl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4991">i915#4991</a>)</p>
</li>
<li>
<p>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-kbl-7567u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-bsw-nick/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-rkl-11600/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-hsw-g3258:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-hsw-g3258/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4991">i915#4991</a>)</p>
</li>
<li>
<p>fi-bdw-gvtdvm:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-bdw-gvtdvm/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-bsw-kefka/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-adl-ddr5:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-adl-ddr5/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/fi-cfl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12317 -&gt; Patchwork_110277v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12317: 0f9cbc285f7d3d1860f7f903663933f33ff9ae25 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7029: c32cb1e614017f14274d335ac571383799e6c786 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_110277v1: 0f9cbc285f7d3d1860f7f903663933f33ff9ae25 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>e2554db0bcc4 drm/i915: Set PROBE_PREFER_ASYNCHRONOUS</p>

</body>
</html>

--===============1469973021915590268==--
